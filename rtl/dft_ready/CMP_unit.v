// CMP_unit

module CMP_unit #(
    parameter INPUT_A_WIDTH = 8,
    parameter INPUT_B_WIDTH = 8,
    parameter ALU_UNIT_SELECTION_WIDTH = 2,
    parameter OUTPUT_WIDTH = 2
)
(
input [INPUT_A_WIDTH - 1 : 0] A,
input [INPUT_B_WIDTH - 1 : 0] B,
input [ALU_UNIT_SELECTION_WIDTH - 1 : 0] ALU_FUN,
input CMP_Enable,
input CLK,
input RST,
output reg cmp_flag,
output reg [OUTPUT_WIDTH - 1 : 0] cmp_OUT
);


always @(posedge CLK or negedge RST) begin
    //  Asynchronous active low reset
	if (!RST) begin
		cmp_OUT <= 0;
        cmp_flag <= 1'b0;
    end
    else if (CMP_Enable) begin
        cmp_flag <= 1'b1;
        case (ALU_FUN)
            2'b00: cmp_OUT <= 0;
            2'b01: cmp_OUT <= A == B;
			2'b10: 
                begin
                    if (A>B)
                        cmp_OUT <= 2;
                    else
                        cmp_OUT <= 0;
                end
            2'b11: 
                begin
                    if (A<B)
                        cmp_OUT <= 3;
                    else
                        cmp_OUT <= 0;
                end
            default: cmp_OUT <= 0;
        endcase
    end
    else begin
		cmp_OUT <= 0;
        cmp_flag <= 1'b0;
    end
end
endmodule
