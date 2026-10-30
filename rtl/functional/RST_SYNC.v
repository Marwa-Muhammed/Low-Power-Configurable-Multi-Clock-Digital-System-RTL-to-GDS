module RST_SYNC #(
    parameter SYNC_STAGES = 2
) (
    input  CLK,
    input  RST,        
    output SYNC_RST
);

    reg [SYNC_STAGES-1:0] sync_ff;

    always @(posedge CLK or negedge RST) begin
        if (!RST)
            sync_ff <= 0;
        else
            sync_ff <= {1'b1, sync_ff[SYNC_STAGES-1:1]};
    end

    assign SYNC_RST = sync_ff[0];

endmodule