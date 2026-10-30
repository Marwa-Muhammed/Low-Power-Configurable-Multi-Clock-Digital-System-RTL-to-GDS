// logic_unit

module Logic_unit #(
    parameter INPUT_A_WIDTH = 8,
    parameter INPUT_B_WIDTH = 8,
    parameter ALU_UNIT_SELECTION_WIDTH = 2,
    parameter OUTPUT_WIDTH = 8
)
(
input [INPUT_A_WIDTH - 1 : 0] A,
input [INPUT_B_WIDTH - 1 : 0] B,
input [ALU_UNIT_SELECTION_WIDTH - 1 : 0] ALU_FUN,
input Logic_Enable,
input CLK,
input RST,
output reg logic_flag,
output reg [OUTPUT_WIDTH - 1 : 0] logic_OUT,
output reg valid

);


always @(posedge CLK or negedge RST) begin
    //  Asynchronous active low reset
	if (!RST) begin
		logic_OUT <= 0;
        logic_flag <= 1'b0;
    end
    else if (Logic_Enable) begin
        logic_flag <= 1'b1;
        case (ALU_FUN)
            2'b00: logic_OUT <= A & B;
            2'b01: logic_OUT <= A | B;
            2'b10: logic_OUT <= ~(A & B);
            2'b11: logic_OUT <= ~(A | B);
            default: logic_OUT <= 0;
        endcase
    end
    else begin
		logic_OUT <= 0;
        logic_flag <= 1'b0;
    end
end
endmodule
