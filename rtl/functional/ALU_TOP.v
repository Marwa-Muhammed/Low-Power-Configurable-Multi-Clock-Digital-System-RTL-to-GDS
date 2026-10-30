module ALU_TOP #(
    parameter INPUT_A_WIDTH = 8,
    parameter INPUT_B_WIDTH = 8,
    parameter ALU_UNIT_SELECTION_WIDTH = 4,
    parameter OUTPUT_WIDTH = 8
) (
    input  wire [INPUT_A_WIDTH-1:0]              A_top, B_top,
    input  wire [ALU_UNIT_SELECTION_WIDTH-1:0]   ALU_FUN_top,
    input  wire                                  Enable_top,   // starts an operation
    input  wire                                  CLK_top,
    input  wire                                  RST_top,      // active low

    output wire signed [2*OUTPUT_WIDTH - 1 : 0]  arith_OUT_top,
    output wire [OUTPUT_WIDTH - 1 : 0]           logic_OUT_top,
    output wire [OUTPUT_WIDTH - 1 : 0]           cmp_OUT_top,
    output wire [OUTPUT_WIDTH - 1 : 0]           shift_OUT_top,

    output wire                                  OUT_valid     // 1 cycle, only for a correct result
);

    // Internal Enable / flag wires
    wire Arith_Enable_top, Logic_Enable_top, CMP_Enable_top, Shift_Enable_top;
    wire arith_flag_top, logic_flag_top, cmp_flag_top, shift_flag_top;

    // Decoder Instantiation (gated by Enable_top)
    DECODER_2X4 #(
        .ALU_UNIT_SELECTION_WIDTH(2)
    ) u_decoder (
        .Enable       (Enable_top),
        .ALU_FUN      (ALU_FUN_top[3:2]),
        .Arith_Enable (Arith_Enable_top),
        .Logic_Enable (Logic_Enable_top),
        .CMP_Enable   (CMP_Enable_top),
        .Shift_Enable (Shift_Enable_top)
    );

    // Arithmetic Unit Instantiation
    Arithmatic_unit #(
        .INPUT_A_WIDTH            (INPUT_A_WIDTH),
        .INPUT_B_WIDTH            (INPUT_B_WIDTH),
        .ALU_UNIT_SELECTION_WIDTH (2),
        .OUTPUT_WIDTH             (2*OUTPUT_WIDTH)
    ) u_Arithmatic_unit (
        .A            (A_top),
        .B            (B_top),
        .ALU_FUN      (ALU_FUN_top[1:0]),
        .Arith_Enable (Arith_Enable_top),
        .CLK          (CLK_top),
        .RST          (RST_top),
        .arith_flag   (arith_flag_top),
        .arith_OUT    (arith_OUT_top)
    );

    // Logic Unit Instantiation
    Logic_unit #(
        .INPUT_A_WIDTH            (INPUT_A_WIDTH),
        .INPUT_B_WIDTH            (INPUT_B_WIDTH),
        .ALU_UNIT_SELECTION_WIDTH (2),
        .OUTPUT_WIDTH             (OUTPUT_WIDTH)
    ) u_Logic_unit (
        .A            (A_top),
        .B            (B_top),
        .ALU_FUN      (ALU_FUN_top[1:0]),
        .Logic_Enable (Logic_Enable_top),
        .CLK          (CLK_top),
        .RST          (RST_top),
        .logic_flag   (logic_flag_top),
        .logic_OUT    (logic_OUT_top)
    );

    // Compare Unit Instantiation
    CMP_unit #(
        .INPUT_A_WIDTH            (INPUT_A_WIDTH),
        .INPUT_B_WIDTH            (INPUT_B_WIDTH),
        .ALU_UNIT_SELECTION_WIDTH (2),
        .OUTPUT_WIDTH             (OUTPUT_WIDTH)
    ) u_CMP_unit (
        .A          (A_top),
        .B          (B_top),
        .ALU_FUN    (ALU_FUN_top[1:0]),
        .CMP_Enable (CMP_Enable_top),
        .CLK        (CLK_top),
        .RST        (RST_top),
        .cmp_flag   (cmp_flag_top),
        .cmp_OUT    (cmp_OUT_top)
    );

    // Shift Unit Instantiation
    Shift_unit #(
        .INPUT_A_WIDTH            (INPUT_A_WIDTH),
        .INPUT_B_WIDTH            (INPUT_B_WIDTH),
        .ALU_UNIT_SELECTION_WIDTH (2),
        .OUTPUT_WIDTH             (OUTPUT_WIDTH)
    ) u_Shift_unit (
        .A            (A_top),
        .B            (B_top),
        .ALU_FUN      (ALU_FUN_top[1:0]),
        .Shift_Enable (Shift_Enable_top),
        .CLK          (CLK_top),
        .RST          (RST_top),
        .shift_flag   (shift_flag_top),
        .shift_OUT    (shift_OUT_top)
    );

    // ------------------------------------------------------------------
    // OUT_valid: one clock cycle, only when the result is correct
    //  - "result ready"  : any unit flag, rising edge only (1 cycle even if
    //                      Enable_top is held high)
    //  - "result correct": the only illegal operation is divide by zero
    //                      (arith, ALU_FUN[1:0]=11, B==0) -> no valid pulse
    // div0_q is registered on the same edge as the unit flags so it lines up
    // with the result.
    // ------------------------------------------------------------------
    wire any_flag = arith_flag_top | logic_flag_top | cmp_flag_top | shift_flag_top;
    reg  any_flag_d, div0_q;

    always @(posedge CLK_top or negedge RST_top) begin
        if (!RST_top) begin
            any_flag_d <= 1'b0;
            div0_q     <= 1'b0;
        end
        else begin
            any_flag_d <= any_flag;
            div0_q     <= Arith_Enable_top && (ALU_FUN_top[1:0] == 2'b11) && (B_top == 0);
        end
    end

    assign OUT_valid = any_flag & ~any_flag_d & ~div0_q;

endmodule