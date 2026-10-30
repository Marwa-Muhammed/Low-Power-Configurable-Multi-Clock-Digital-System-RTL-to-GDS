module SYS_TOP #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4,
    parameter MEM_DEPTH  = 16,
    parameter FIFO_DEPTH = 8,
    parameter PTR_WIDTH  = 4
) (
    input  wire                  REF_CLK,
    input  wire                  UART_CLK,
    input  wire                  RST,
    input  wire                  RX_IN,

    output wire                  TX_OUT,
    output wire                  PAR_ERR,
    output wire                  STP_ERR
);

    // =========================================================================
    // Internal Wires
    // =========================================================================

    // Reset synchronizers
    wire sync_rst_1; // REF_CLK Domain
    wire sync_rst_2; // UART_CLK Domain

    // Clock dividers
    wire [7:0] div_ratio;
    wire       div_clk_1; // TX Clock
    wire       div_clk_2; // RX Clock

    // Register File & Configuration
    wire [7:0] RdData;
    wire       RdData_valid;
    wire [7:0] WrData;
    wire [3:0] addr;
    wire       WrEn;
    wire       RdEn;

    wire [7:0] A_top;
    wire [7:0] B_top;
    wire [7:0] REG2_config;
    wire       PAR_EN   = REG2_config[0];
    wire       PAR_TYP  = REG2_config[1];
    wire [5:0] Prescale = REG2_config[7:2];

    // UART & Data Synchronizer
    wire [7:0] RX_P_DATA;
    wire       RX_DATA_VALID;
    wire [7:0] RX_SYNC_DATA;
    wire       RX_SYNC_VALID;
    wire       TX_BUSY;

    // ALU & Clock Gating
    wire [3:0]  ALU_FUNC;
    wire [15:0] ALU_OUT;
    wire        OUT_valid;      // 1-clock-cycle pulse from ALU_TOP (only for a correct result)
    wire        ALU_EN;         // ALU enable

    wire [15:0] arith_OUT;
    wire [7:0]  logic_OUT;
    wire [7:0]  cmp_OUT;
    wire [7:0]  shift_OUT;

    wire        clk_gating_en;
    wire        gated_clk;

    // Async FIFO & Pulse Generator
    wire        fifo_full;
    wire        fifo_empty;
    wire [7:0]  Wr_Data_fifo;
    wire        Wr_inc;
    wire        RD_INC;
    wire [7:0]  rd_data;


    // =========================================================================
    // Reset Synchronizers
    // =========================================================================

    RST_SYNC #(
        .SYNC_STAGES(2)
    ) u_rst_sync_1 (
        .CLK      (REF_CLK),
        .RST      (RST),
        .SYNC_RST (sync_rst_1)
    );

    RST_SYNC #(
        .SYNC_STAGES(2)
    ) u_rst_sync_2 (
        .CLK      (UART_CLK),
        .RST      (RST),
        .SYNC_RST (sync_rst_2)
    );


    // =========================================================================
    // Clock Dividers
    // =========================================================================

    // EDIT: Tied clk_en back to 1'b1 so clock dividers are always active
    CLK_DIV u_clk_div_1 (
        .ref_clk   (UART_CLK),
        .RST       (sync_rst_2),
        .clk_en    (1'b1),
        .div_ratio (div_ratio),
        .div_clk   (div_clk_1)
    );

    wire [1:0] prescale_sel;
    wire [5:0] prescale_factor;
    wire [7:0] rx_div_ratio;

    // Encode REG2[7:2] (4, 8, 16 or 32) into the mux's 2-bit select
    assign prescale_sel = {Prescale[5] | Prescale[4],
                           Prescale[5] | Prescale[3]};

    prescale_mux u_prescale_mux (
        .prescale_sel (prescale_sel),
        .prescale     (prescale_factor)
    );

    // RX_CLK must run at prescale x baud, so ratio = 32 / prescale
    assign rx_div_ratio = (prescale_factor != 0) ? (8'd32 / prescale_factor) : 8'd1;

    CLK_DIV u_clk_div_2 (
        .ref_clk   (UART_CLK),
        .RST       (sync_rst_2),
        .clk_en    (1'b1),
        .div_ratio (rx_div_ratio),
        .div_clk   (div_clk_2)
    );


    // =========================================================================
    // Register File
    // =========================================================================

    Reg_File #(
        .W      (DATA_WIDTH),
        .D      (MEM_DEPTH),
        .addr_W (ADDR_WIDTH)
    ) RF (
        .WrData       (WrData),
        .Address      (addr),
        .WrEn         (WrEn),
        .RdEn         (RdEn),
        .CLK          (REF_CLK),
        .RST          (sync_rst_1),
        .RdData       (RdData),
        .RdData_valid (RdData_valid),

        .REG0         (A_top),
        .REG1         (B_top),
        .REG2         (REG2_config),
        .REG3         (div_ratio)
    );


    // =========================================================================
    // ALU TOP Instantiation
    // =========================================================================

    ALU_TOP #(
        .INPUT_A_WIDTH            (8),
        .INPUT_B_WIDTH            (8),
        .OUTPUT_WIDTH             (8),
        .ALU_UNIT_SELECTION_WIDTH (4)
    ) ALU (
        .A_top          (A_top),
        .B_top          (B_top),
        .ALU_FUN_top    (ALU_FUNC),
        .Enable_top     (ALU_EN),
        .CLK_top        (gated_clk),
        .RST_top        (sync_rst_1),

        .arith_OUT_top  (arith_OUT),
        .logic_OUT_top  (logic_OUT),
        .cmp_OUT_top    (cmp_OUT),
        .shift_OUT_top  (shift_OUT),

        .OUT_valid      (OUT_valid)
    );


    // =========================================================================
    // ALU Output Multiplexing
    // =========================================================================

    assign ALU_OUT = 
        (ALU_FUNC[3:2] == 2'b00) ? arith_OUT         :
        (ALU_FUNC[3:2] == 2'b01) ? {8'b0, logic_OUT} :
        (ALU_FUNC[3:2] == 2'b10) ? {8'b0, cmp_OUT}   :
                                   {8'b0, shift_OUT};


    // =========================================================================
    // Clock Gating
    // =========================================================================

    CLK_GATE u_clk_gating (
        .CLK_EN    (clk_gating_en),
        .CLK       (REF_CLK),
        .GATED_CLK (gated_clk)
    );


    // =========================================================================
    // System Controller
    // =========================================================================

    // EDIT: Removed .clk_div_en port connection
    sys_ctrl u_sys_ctrl (
        .CLK           (REF_CLK),
        .RST           (sync_rst_1),

        .RdData        (RdData),
        .RdData_valid  (RdData_valid),
        .Address       (addr),
        .WrData        (WrData),
        .WrEn          (WrEn),
        .RdEn          (RdEn),

        .RX_P_DATA     (RX_SYNC_DATA),
        .RX_D_VLD      (RX_SYNC_VALID),

        .ALU_OUT       (ALU_OUT),
        .OUT_valid     (OUT_valid),
        .ALU_CLK_EN    (clk_gating_en),
        .ALU_EN        (ALU_EN),
        .ALU_FUNC      (ALU_FUNC),

        .fifo_full     (fifo_full),
        .Wr_Data_fifo  (Wr_Data_fifo),
        .Wr_inc        (Wr_inc)
    );


    // =========================================================================
    // Data Synchronizer (RX_CLK -> REF_CLK)
    // =========================================================================

    DATA_SYNC #(
        .BUS_WIDTH  (DATA_WIDTH),
        .NUM_STAGES (2)
    ) u_data_sync (
        .unsync_bus   (RX_P_DATA),
        .bus_en       (RX_DATA_VALID),
        .CLK          (REF_CLK),
        .RST          (sync_rst_1),
        .sync_bus     (RX_SYNC_DATA),
        .enable_pulse (RX_SYNC_VALID)
    );


    // =========================================================================
    // UART TOP Module
    // =========================================================================

    uart_top #(
        .DATA_WIDTH(DATA_WIDTH)
    ) UART (
        .tx_clk          (div_clk_1),
        .rx_clk          (div_clk_2),
        .RST             (sync_rst_2),

        .Prescale        (prescale_factor),
        .PAR_EN          (PAR_EN),
        .PAR_TYP         (PAR_TYP),

        .TX_P_DATA       (rd_data),
        .TX_DATA_VALID   (~fifo_empty),
        .TX_OUT          (TX_OUT),
        .TX_BUSY         (TX_BUSY),

        .RX_IN           (RX_IN),
        .RX_P_DATA       (RX_P_DATA),
        .RX_DATA_VALID   (RX_DATA_VALID),
        .RX_PARITY_ERROR (PAR_ERR),
        .RX_STOP_ERROR   (STP_ERR)
    );


    // =========================================================================
    // Async FIFO
    // =========================================================================

    ASYNC_FIFO #(
        .DATA_WIDTH  (DATA_WIDTH),
        .PTR_WIDTH   (PTR_WIDTH),
        .DEPTH       (FIFO_DEPTH),
        .SYNC_STAGES (2)
    ) u_async_fifo (
        .read_enable  (RD_INC),
        .read_clk     (div_clk_1),
        .read_rst     (sync_rst_2),

        .write_enable (Wr_inc),
        .write_clk    (REF_CLK),
        .write_rst    (sync_rst_1),

        .wr_data      (Wr_Data_fifo),

        .rd_data      (rd_data),
        .fifo_full    (fifo_full),
        .fifo_empty   (fifo_empty)
    );


    // =========================================================================
    // Pulse Generator
    // =========================================================================

    PULSE_GEN u_pulse_gen (
        .CLK       (div_clk_1),
        .RST       (sync_rst_2),
        .LVL_SIG   (TX_BUSY),
        .PULSE_SIG (RD_INC)
    );

endmodule