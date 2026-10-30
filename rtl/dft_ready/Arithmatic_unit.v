// Arithmatic_unit 
module Arithmatic_unit #(
    parameter INPUT_A_WIDTH = 8,
    parameter INPUT_B_WIDTH = 8,
    parameter ALU_UNIT_SELECTION_WIDTH = 2,
    parameter OUTPUT_WIDTH = 16
)
(
input signed [INPUT_A_WIDTH - 1 : 0] A,
input signed [INPUT_B_WIDTH - 1 : 0] B,
input [ALU_UNIT_SELECTION_WIDTH - 1 : 0] ALU_FUN,
input Arith_Enable,
input CLK,
input RST,
output reg arith_flag,
output reg signed [OUTPUT_WIDTH - 1 : 0] arith_OUT
);


always @(posedge CLK or negedge RST) begin
    //  Asynchronous active low reset
	if (!RST) begin
		arith_OUT <= 0;
        arith_flag <= 1'b0;
    end
	//arihmatic logic
    else if (Arith_Enable) begin
        arith_flag <= 1'b1;
        case (ALU_FUN)
            2'b00: arith_OUT <= A + B;
            2'b01: arith_OUT <= A - B;
            2'b10: arith_OUT <= A * B;
            2'b11: arith_OUT <= A / B;
            default: arith_OUT <= 0;
        endcase
    end
    else begin
		arith_OUT <= 0;
        arith_flag <= 1'b0;
    end
end
endmodule
