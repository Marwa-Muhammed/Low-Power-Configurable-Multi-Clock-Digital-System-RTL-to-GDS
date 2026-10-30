module prescale_mux (
    input  [1:0] prescale_sel,   // selects which prescale factor to output

    output reg [5:0] prescale    // resulting prescale factor (widened to 6 bits to fit 32)
);

    // Encoding for prescale_sel -> named prescale options
localparam [1:0] PRESCALE_4  = 2'b00;
localparam [1:0] PRESCALE_8  = 2'b01;
localparam [1:0] PRESCALE_16 = 2'b10;
localparam [1:0] PRESCALE_32 = 2'b11;
    always @(*) begin
        case (prescale_sel)
            PRESCALE_4:  prescale = 4;   // sel = 00 -> factor 4
            PRESCALE_8:  prescale = 8;   // sel = 01 -> factor 8
            PRESCALE_16: prescale = 16;  // sel = 10 -> factor 16
            PRESCALE_32: prescale = 32;  // sel = 11 -> factor 32
            default: begin
                prescale = 32;
            end
        endcase
    end

endmodule