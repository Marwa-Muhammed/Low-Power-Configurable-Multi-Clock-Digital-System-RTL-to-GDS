// Shift_unit

module Shift_unit #(
    parameter INPUT_A_WIDTH = 8,
    parameter INPUT_B_WIDTH = 8,
    parameter ALU_UNIT_SELECTION_WIDTH = 2,
    parameter OUTPUT_WIDTH = 9
)
(
input [INPUT_A_WIDTH - 1 : 0] A,
input [INPUT_B_WIDTH - 1 : 0] B,
input [ALU_UNIT_SELECTION_WIDTH - 1 : 0] ALU_FUN,
input Shift_Enable,
input CLK,
input RST,
output reg shift_flag,
output reg [OUTPUT_WIDTH - 1 : 0] shift_OUT
);


always @(posedge CLK or negedge RST) begin
    //  Asynchronous active low reset
	if (!RST) begin
		shift_OUT <= 0;
        shift_flag <= 1'b0;
    end
    else if (Shift_Enable) begin
        shift_flag <= 1'b1;
        case (ALU_FUN)
            2'b00: shift_OUT <= A >> 1;
            2'b01: shift_OUT <= A << 1;
			2'b10: shift_OUT <= B >> 1;
            2'b11: shift_OUT <= B << 1;
            default: shift_OUT <= 0;
        endcase
    end
    else begin
		shift_OUT <= 0;
        shift_flag <= 1'b0;
    end
end
endmodule
