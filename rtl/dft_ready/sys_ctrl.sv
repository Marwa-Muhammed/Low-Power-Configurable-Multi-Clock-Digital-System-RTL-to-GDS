module sys_ctrl (
    input  wire        CLK,
    input  wire        RST,           

    // ---------------- Register File interface ----------------
    input  wire [7:0]  RdData,
    input  wire        RdData_valid,

    output reg  [3:0]  Address,
    output reg  [7:0]  WrData,
    output reg         WrEn,
    output reg         RdEn,

    // ---------------- UART_RX / Data Synchronizer -------------
    input  wire [7:0]  RX_P_DATA,
    input  wire        RX_D_VLD,

    // ---------------- ALU interface ----------------------------
    input  wire [15:0] ALU_OUT,
    input  wire        OUT_valid,

    output reg         ALU_CLK_EN,     // drives CLK_GATE's CLK_EN
    output reg         ALU_EN,         // ALU Enable: high ONLY in the cycle the function frame arrives
    output reg  [3:0]  ALU_FUNC,

    // ---------------- ASYNC_FIFO interface ----------------------
    input  wire        fifo_full,

    output reg  [7:0]  Wr_Data_fifo,
    output reg         Wr_inc

);

    // Command opcodes (frame 0 of every incoming command)
    localparam RF_WR_CMD        = 8'hAA; // Register File Write   (3 frames)
    localparam RF_RD_CMD        = 8'hBB; // Register File Read    (2 frames)
    localparam ALU_OP_W_OP_CMD  = 8'hCC; // ALU op with operand   (4 frames)
    localparam ALU_OP_W_NOP_CMD = 8'hDD; // ALU op without operand (2 frames)

    typedef enum bit [3:0] {
        IDLE            = 4'b0000,   
        RF_ADDR         = 4'b0001,  
        RF_WR_DATA      = 4'b0010,   
        RF_RD_WAIT      = 4'b0011,
        OPERAND_A       = 4'b0100,
        OPERAND_B       = 4'b0101,
        ALU_FUN_WAIT    = 4'b0110,
        ALU_EXEC        = 4'b0111,
        FIFO_WRITE_LOW  = 4'b1000,
        FIFO_WRITE_HIGH = 4'b1001
    } state_e;

    state_e current_state, next_state; 

    // Internal Registers
    reg [7:0]  CMD;
    reg [3:0]  latched_address;
    reg [15:0] latched_alu_out;
    reg [3:0]  latched_alu_func;


    // Synchronous State & Register Updating
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            current_state    <= IDLE;
            CMD              <= 8'b0;
            latched_address  <= 4'b0;
            latched_alu_out  <= 16'b0;
            latched_alu_func <= 4'b0;
        end
        else begin
            current_state <= next_state;  

            // Store command opcode frame
            if ((current_state == IDLE) && RX_D_VLD)
                CMD <= RX_P_DATA;

            // Store Register File Address frame
            if ((current_state == RF_ADDR) && RX_D_VLD)
                latched_address <= RX_P_DATA[3:0];

            // Latch ALU function opcode on valid frame pulse during ALU_FUN_WAIT
            if ((current_state == ALU_FUN_WAIT) && RX_D_VLD)
                latched_alu_func <= RX_P_DATA[3:0];    

if (current_state == ALU_EXEC)
    latched_alu_out <= ALU_OUT;
        end
    end

    // Combinational Next-State and Output Logic
    always @(*) begin
        // Default Signal Assignments
        Address      = 4'b0;
        WrData       = 8'b0;
        WrEn         = 1'b0;
        RdEn         = 1'b0;

        ALU_CLK_EN   = 1'b0;
        ALU_EN       = 1'b0;
        ALU_FUNC     = 4'b0;

        Wr_Data_fifo = 8'b0;
        Wr_inc       = 1'b0;

        next_state   = current_state;

        case (current_state)

            IDLE: begin
                if (RX_D_VLD) begin
                    case (RX_P_DATA)
                        RF_WR_CMD:        next_state = RF_ADDR;
                        RF_RD_CMD:        next_state = RF_ADDR;
                        ALU_OP_W_OP_CMD:  next_state = OPERAND_A;
                        ALU_OP_W_NOP_CMD: next_state = ALU_FUN_WAIT;
                        default:          next_state = IDLE;
                    endcase
                end
            end

            // ------------------ REGISTER FILE COMMANDS ------------------
            RF_ADDR: begin
                if (RX_D_VLD) begin
                    if (CMD == RF_WR_CMD)
                        next_state = RF_WR_DATA;
                    else
                        next_state = RF_RD_WAIT;
                end
            end

            RF_WR_DATA: begin
                Address = latched_address;
                if (RX_D_VLD) begin
                    WrData     = RX_P_DATA;
                    WrEn       = 1'b1;
                    next_state = IDLE;  
                end
            end

            RF_RD_WAIT: begin
                Address = latched_address;
                RdEn    = 1'b1;
                if (RdData_valid) begin
                    Wr_Data_fifo = RdData;
                    Wr_inc       = 1'b1;
                    next_state   = IDLE;
                end
            end

            // ------------------ ALU WITH OPERANDS (0xCC) ------------------
            OPERAND_A: begin
                Address = 4'h0; // REG0 is ALU Operand A per spec
                if (RX_D_VLD) begin
                    WrData     = RX_P_DATA;
                    WrEn       = 1'b1;
                    next_state = OPERAND_B;
                end
            end

            OPERAND_B: begin
                Address = 4'h1; // REG1 is ALU Operand B per spec
                if (RX_D_VLD) begin
                    WrData     = RX_P_DATA;
                    WrEn       = 1'b1;
                    next_state = ALU_FUN_WAIT;
                end
            end

            // ------------------ ALU FUNCTION & EXECUTION ------------------
            ALU_FUN_WAIT: begin
                ALU_CLK_EN = 1'b1; // Keep clock gate enabled
                if (RX_D_VLD) begin
                    ALU_FUNC   = RX_P_DATA[3:0]; // Combinational drive for cycle 0
                    ALU_EN     = 1'b1;           // start the operation (one cycle only)
                    next_state = ALU_EXEC;
                end else begin
                    next_state = ALU_FUN_WAIT;   // Wait until function frame arrives
                end
            end

            ALU_EXEC: begin
                ALU_CLK_EN = 1'b1;             // Keep clock gate enabled during execution
                ALU_FUNC   = latched_alu_func; // Hold latched function code during execution
                // OUT_valid is a 1-cycle pulse and appears in the FIRST ALU_EXEC cycle.
                // No pulse => no correct result (e.g. divide by zero): abort, send nothing.
                if (OUT_valid)
                    next_state = FIFO_WRITE_LOW;
                else
                    next_state = IDLE;
            end

            // Send Low Byte of ALU Result via Async FIFO
            FIFO_WRITE_LOW: begin
                if (!fifo_full) begin
                    Wr_Data_fifo = latched_alu_out[7:0];
                    Wr_inc       = 1'b1;
                    next_state   = FIFO_WRITE_HIGH;
                end
            end

            // Send High Byte of ALU Result via Async FIFO
            FIFO_WRITE_HIGH: begin
                if (!fifo_full) begin
                    Wr_Data_fifo = latched_alu_out[15:8];
                    Wr_inc       = 1'b1;
                    next_state   = IDLE;
                end
            end

            default: next_state = IDLE;

        endcase
    end

endmodule