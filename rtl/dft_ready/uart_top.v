module uart_top #(
    parameter DATA_WIDTH = 8
) (
    input                       tx_clk,
    input                       rx_clk,
    input                       RST,

    // Shared UART configuration
    input      [5:0]            Prescale,
    input                       PAR_EN,
    input                       PAR_TYP,

    // ---- Transmit side ----
    input      [DATA_WIDTH-1:0] TX_P_DATA,
    input                       TX_DATA_VALID,
    output                      TX_OUT,
    output                      TX_BUSY,

    // ---- Receive side ----
    input                       RX_IN,
    output     [DATA_WIDTH-1:0] RX_P_DATA,
    output                      RX_DATA_VALID,
    output                      RX_PARITY_ERROR,
    output                      RX_STOP_ERROR
);

    UART_Tx #(
        .DATA_WIDTH(DATA_WIDTH)
    ) u_uart_tx (
        .P_DATA     (TX_P_DATA),
        .DATA_VALID (TX_DATA_VALID),
        .PAR_EN     (PAR_EN),
        .PAR_TYP    (PAR_TYP),
        .CLK        (tx_clk),
        .RST        (RST),
        .Tx_out     (TX_OUT),
        .Busy       (TX_BUSY)
    );

    uart_rx #(
        .DATA_WIDTH(DATA_WIDTH)
    ) u_uart_rx (
        .RX_IN         (RX_IN),
        .Prescale      (Prescale),
        .PAR_EN        (PAR_EN),
        .PAR_TYP       (PAR_TYP),
        .CLK           (rx_clk),
        .RST           (RST),
        .P_DATA        (RX_P_DATA),
        .data_valid    (RX_DATA_VALID),
        .parity_error  (RX_PARITY_ERROR),
        .stop_error    (RX_STOP_ERROR)
    );

endmodule