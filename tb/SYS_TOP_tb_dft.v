`timescale 1ns / 1ps

module SYS_TOP_tb ();

    // Clock and Control Signals
    reg  REF_CLK;
    reg  UART_CLK;
    reg  RST;
    reg  RX_IN;

    wire TX_OUT;
    wire PAR_ERR;
    wire STP_ERR;

    // DFT ports (inactive in functional simulation)
    reg  SE = 0, SI = 0, test_mode = 0, scan_clk = 0, scan_rst = 0;
    wire SO;

    // Command Opcodes
    localparam [7:0] CMD_REG_WRITE       = 8'hAA;
    localparam [7:0] CMD_REG_READ        = 8'hBB;
    localparam [7:0] CMD_ALU_OPERANDS    = 8'hCC;
    localparam [7:0] CMD_ALU_NO_OPERANDS = 8'hDD;

    // ALU Function Opcodes (4-bit system opcode mapped to sub-units)
    // Arithmetic Unit
    localparam [3:0] ALU_ADD  = 4'h0;
    localparam [3:0] ALU_SUB  = 4'h1;
    localparam [3:0] ALU_MUL  = 4'h2;
    localparam [3:0] ALU_DIV  = 4'h3;
    
    // Logic Unit (Sub-selection: 00:AND, 01:OR, 10:NAND, 11:NOR)
    localparam [3:0] ALU_AND  = 4'h4;
    localparam [3:0] ALU_OR   = 4'h5;
    localparam [3:0] ALU_NAND = 4'h6;
    localparam [3:0] ALU_NOR  = 4'h7;

    // CMP Unit (Sub-selection: 00:NOP, 01:A==B, 10:A>B, 11:A<B)
    localparam [3:0] ALU_CMP_NOP = 4'h8;
    localparam [3:0] ALU_CMP_EQ  = 4'h9;
    localparam [3:0] ALU_CMP_GT  = 4'hA;
    localparam [3:0] ALU_CMP_LT  = 4'hB;

    // Shift Unit (Sub-selection: 00:A>>1, 01:A<<1, 10:B>>1, 11:B<<1)
    localparam [3:0] ALU_SHR_A = 4'hC;
    localparam [3:0] ALU_SHL_A = 4'hD;
    localparam [3:0] ALU_SHR_B = 4'hE;
    localparam [3:0] ALU_SHL_B = 4'hF;

    // Clock Periods
    parameter REF_CLK_PERIOD  = 10.0;    // 100 MHz
    parameter UART_CLK_PERIOD = 271.267; // ~3.6864 MHz
    real      UART_BIT_PERIOD = UART_CLK_PERIOD * 32.0; // Prescale = 32

    reg  uart_tx_clk_tb; // Testbench bit clock (UART_CLK / 32)

    // Pass / Fail Counters
    integer pass_cnt = 0;
    integer fail_cnt = 0;

    // DUT Instantiation
    SYS_TOP u_dut (
        .REF_CLK (REF_CLK),
        .UART_CLK(UART_CLK),
        .RST     (RST),
        .RX_IN   (RX_IN),
        .TX_OUT  (TX_OUT),
        .PAR_ERR (PAR_ERR),
        .STP_ERR (STP_ERR),
        .SE        (SE),
        .SI        (SI),
        .test_mode (test_mode),
        .scan_clk  (scan_clk),
        .scan_rst  (scan_rst),
        .SO        (SO)
    );

    // -------------------------------------------------------------------------
    // Clock Generators
    // -------------------------------------------------------------------------
    initial begin
        REF_CLK = 0;
        forever #(REF_CLK_PERIOD / 2.0) REF_CLK = ~REF_CLK;
    end

    initial begin
        UART_CLK = 0;
        forever #(UART_CLK_PERIOD / 2.0) UART_CLK = ~UART_CLK;
    end

    initial begin
        uart_tx_clk_tb = 0;
        forever #(UART_BIT_PERIOD / 2.0) uart_tx_clk_tb = ~uart_tx_clk_tb;
    end

    // -------------------------------------------------------------------------
    // Task: Send 1 UART Frame
    // -------------------------------------------------------------------------
    task send_frame(input [7:0] data);
        integer k;
        reg [10:0] frame;
        begin
            frame = {1'b1, ^data, data, 1'b0}; // Stop, Parity, Data, Start
            for (k = 0; k < 11; k = k + 1) begin
                RX_IN = frame[k];
                @(negedge uart_tx_clk_tb);
            end
        end
    endtask

    // -------------------------------------------------------------------------
    // Task: Receive 1 UART Frame from DUT
    // -------------------------------------------------------------------------
    task receive_frame(output [7:0] rx_data);
        integer n;
        begin
            @(negedge TX_OUT); // Wait for Start bit
            #(UART_BIT_PERIOD / 2.0); // Center sampling

            for (n = 0; n < 8; n = n + 1) begin
                #(UART_BIT_PERIOD);
                rx_data[n] = TX_OUT;
            end

            #(UART_BIT_PERIOD * 2); // Skip Parity & Stop bit
        end
    endtask

    // -------------------------------------------------------------------------
    // Automated Verification Tasks
    // -------------------------------------------------------------------------
    task cmd_reg_write(input [7:0] addr, input [7:0] data);
        begin
            $display("[%t us] [TX] REG WRITE -> Addr: 0x%02X | Data: 0x%02X", $realtime, addr, data);
            send_frame(CMD_REG_WRITE);
            send_frame(addr);
            send_frame(data);
        end
    endtask

    task check_reg_read(input [7:0] addr, input [7:0] exp_data);
        reg [7:0] actual_data;
        begin
            $display("\n------------------------------------------------------------------");
            $display("[%t us] [TEST] REGISTER READ | Addr: 0x%02X | Expected: 0x%02X", $realtime, addr, exp_data);
            
            send_frame(CMD_REG_READ);
            send_frame(addr);

            receive_frame(actual_data);

            if (actual_data === exp_data) begin
                $display("[%t us] [PASS] REG READ -> Got: 0x%02X (MATCH)", $realtime, actual_data);
                pass_cnt = pass_cnt + 1;
            end else begin
                $display("[%t us] [FAIL] REG READ -> Got: 0x%02X, Expected: 0x%02X ***", $realtime, actual_data, exp_data);
                fail_cnt = fail_cnt + 1;
            end
        end
    endtask

    task check_alu_operands(input [7:0] a, input [7:0] b, input [3:0] func, input [15:0] exp_result);
        reg [7:0] low_byte, high_byte;
        reg [15:0] actual_result;
        begin
            $display("\n------------------------------------------------------------------");
            $display("[%t us] [TEST] ALU OPERANDS | A: 0x%02X (%0d), B: 0x%02X (%0d), Func: 0x%01X | Exp: 0x%04X (%0d)", 
                     $realtime, a, $signed(a), b, $signed(b), func, exp_result, $signed(exp_result));

            send_frame(CMD_ALU_OPERANDS);
            send_frame(a);
            send_frame(b);
            send_frame({4'b0000, func});

            receive_frame(low_byte);
            receive_frame(high_byte);
            actual_result = {high_byte, low_byte};

            if (actual_result === exp_result) begin
                $display("[%t us] [PASS] ALU OPERANDS -> Got: 0x%04X (%0d) (MATCH)", $realtime, actual_result, $signed(actual_result));
                pass_cnt = pass_cnt + 1;
            end else begin
                $display("[%t us] [FAIL] ALU OPERANDS -> Got: 0x%04X, Expected: 0x%04X ***", $realtime, actual_result, exp_result);
                fail_cnt = fail_cnt + 1;
            end
        end
    endtask

    task check_alu_no_operands(input [3:0] func, input [15:0] exp_result);
        reg [7:0] low_byte, high_byte;
        reg [15:0] actual_result;
        begin
            $display("\n------------------------------------------------------------------");
            $display("[%t us] [TEST] ALU NO OPERANDS | Func: 0x%01X | Exp Result: 0x%04X (%0d)", 
                     $realtime, func, exp_result, $signed(exp_result));

            send_frame(CMD_ALU_NO_OPERANDS);
            send_frame({4'b0000, func});

            receive_frame(low_byte);
            receive_frame(high_byte);
            actual_result = {high_byte, low_byte};

            if (actual_result === exp_result) begin
                $display("[%t us] [PASS] ALU NO OPERANDS -> Got: 0x%04X (%0d) (MATCH)", $realtime, actual_result, $signed(actual_result));
                pass_cnt = pass_cnt + 1;
            end else begin
                $display("[%t us] [FAIL] ALU NO OPERANDS -> Got: 0x%04X, Expected: 0x%04X ***", $realtime, actual_result, exp_result);
                fail_cnt = fail_cnt + 1;
            end
        end
    endtask

    // -------------------------------------------------------------------------
    // Main Test Sequence
    // -------------------------------------------------------------------------
    initial begin
        $timeformat(-6, 2, " us", 10);

        $display("==================================================================");
        $display("             STARTING SYS_TOP AUTOMATED PASS/FAIL TEST           ");
        $display("==================================================================");

        // System Reset
        RX_IN = 1'b1;
        RST   = 1'b0;
        #(REF_CLK_PERIOD * 10);
        RST   = 1'b1;
        #(REF_CLK_PERIOD * 50);

        // ---------------------------------------------------------------------
        // TEST GROUP 1: Register File Verification
        // ---------------------------------------------------------------------
        $display("\n==================================================================");
        $display("                 GROUP 1: REGISTER FILE TESTS                     ");
        $display("==================================================================");
        cmd_reg_write(8'h05, 8'hDE);
        check_reg_read(8'h05, 8'hDE);

        // ---------------------------------------------------------------------
        // TEST GROUP 2: Logic Unit Tests
        // ---------------------------------------------------------------------
        $display("\n==================================================================");
        $display("                 GROUP 2: LOGIC UNIT TESTS                        ");
        $display("==================================================================");
        // AND: 0xF0 & 0xAA = 0x00A0
        check_alu_operands(8'hF0, 8'hAA, ALU_AND, 16'h00A0);
        // OR: 0xF0 | 0x0F = 0x00FF
        check_alu_operands(8'hF0, 8'h0F, ALU_OR, 16'h00FF);
        // NAND: ~(0xF0 & 0xAA) = 0x005F
        check_alu_operands(8'hF0, 8'hAA, ALU_NAND, 16'h005F);
        // NOR: ~(0xF0 | 0x0F) = 0x0000
        check_alu_operands(8'hF0, 8'h0F, ALU_NOR, 16'h0000);

        // Logic Unit with Negative Inputs
        // AND: (-10 = 0xF6) & (15 = 0x0F) = 0x0006
        check_alu_operands(-8'sd10, 8'd15, ALU_AND, 16'h0006);

        // ---------------------------------------------------------------------
        // TEST GROUP 3: CMP Unit Tests
        // ---------------------------------------------------------------------
        $display("\n==================================================================");
        $display("                 GROUP 3: CMP UNIT TESTS                          ");
        $display("==================================================================");
        // Equal Test (A == B): 10 == 10 -> cmp_OUT = 1
        check_alu_operands(8'd10, 8'd10, ALU_CMP_EQ, 16'd1);
        // Greater Than (A > B): 20 > 10 -> cmp_OUT = 2
        check_alu_operands(8'd20, 8'd10, ALU_CMP_GT, 16'd2);
        // Less Than (A < B): 5 < 15 -> cmp_OUT = 3
        check_alu_operands(8'd5, 8'd15, ALU_CMP_LT, 16'd3);
        // NOP Test -> cmp_OUT = 0
        check_alu_operands(8'd20, 8'd10, ALU_CMP_NOP, 16'd0);

        // CMP with Negative Numbers (Unsigned Verilog comparison vs. 2's Complement)
        check_alu_operands(-8'sd5, 8'd10, ALU_CMP_EQ, 16'd0);

        // ---------------------------------------------------------------------
        // TEST GROUP 4: Shift Unit Tests
        // ---------------------------------------------------------------------
        $display("\n==================================================================");
        $display("                 GROUP 4: SHIFT UNIT TESTS                        ");
        $display("==================================================================");
        // A >> 1: 0x80 >> 1 = 0x0040
        check_alu_operands(8'h80, 8'h00, ALU_SHR_A, 16'h0040);
        // A << 1: 0x0F << 1 = 0x001E
        check_alu_operands(8'h0F, 8'h00, ALU_SHL_A, 16'h001E);
        // B >> 1: B = 0xAA >> 1 = 0x0055
        check_alu_operands(8'h00, 8'hAA, ALU_SHR_B, 16'h0055);
        // B << 1: B = 0x55 << 1 = 0x00AA
        check_alu_operands(8'h00, 8'h55, ALU_SHL_B, 16'h00AA);

        // Shift with negative input
        check_alu_operands(-8'sd10, 8'h00, ALU_SHR_A, 16'h007B);

        // ---------------------------------------------------------------------
        // TEST GROUP 5: Signed Arithmetic Tests
        // ---------------------------------------------------------------------
        $display("\n==================================================================");
        $display("             GROUP 5: SIGNED ARITHMETIC TESTS                     ");
        $display("==================================================================");
        // SUB giving negative result: 5 - 10 = -5 (16-bit 2's comp = 0xFFFB)
        check_alu_operands(8'd5, 8'd10, ALU_SUB, 16'hFFFB);

        // ADD with negative operand: (-10) + 25 = 15 (0x000F)
        check_alu_operands(-8'sd10, 8'd25, ALU_ADD, 16'd15);

        // MUL with negative operand: (-5) * 10 = -50 (0xFFCE)
        check_alu_operands(-8'sd5, 8'd10, ALU_MUL, -16'sd50);

        // MUL with two negative operands: (-6) * (-7) = 42 (0x002A)
        check_alu_operands(-8'sd6, -8'sd7, ALU_MUL, 16'd42);

        // ---------------------------------------------------------------------
        // TEST GROUP 6: ALU No-Operands Tests (Uses existing REG0 & REG1)
        // ---------------------------------------------------------------------
        $display("\n==================================================================");
        $display("             GROUP 6: ALU NO-OPERANDS TESTS                       ");
        $display("==================================================================");
        // Load operands into REG0 (0x00) and REG1 (0x01)
        cmd_reg_write(8'h00, 8'd12);  // REG0 (A) = 12
        cmd_reg_write(8'h01, 8'd4);   // REG1 (B) = 4

        // ADD: 12 + 4 = 16 (0x0010)
        check_alu_no_operands(ALU_ADD, 16'd16);

        // SUB: 12 - 4 = 8 (0x0008)
        check_alu_no_operands(ALU_SUB, 16'd8);

        // MUL: 12 * 4 = 48 (0x0030)
        check_alu_no_operands(ALU_MUL, 16'd48);

        // DIV: 12 / 4 = 3 (0x0003)
        check_alu_no_operands(ALU_DIV, 16'd3);

        // AND: 0x0C & 0x04 = 0x0004
        check_alu_no_operands(ALU_AND, 16'h0004);

        // ---------------------------------------------------------------------
        // Final Summary Block
        // ---------------------------------------------------------------------
        $display("\n==================================================================");
        $display("                       VERIFICATION SUMMARY                       ");
        $display("==================================================================");
        $display(" Total Checks Passed : %0d", pass_cnt);
        $display(" Total Checks Failed : %0d", fail_cnt);
        $display("------------------------------------------------------------------");
        if (fail_cnt == 0 && pass_cnt > 0)
            $display(" OVERALL TEST RESULT : >>> PASS <<<");
        else
            $display(" OVERALL TEST RESULT : >>> FAIL <<<");
        $display("==================================================================\n");

        $finish;
    end

endmodule
