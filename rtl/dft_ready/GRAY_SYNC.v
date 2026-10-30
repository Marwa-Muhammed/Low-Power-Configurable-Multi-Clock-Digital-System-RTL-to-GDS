module GRAY_SYNC #(
    parameter SYNC_STAGES = 2,     // number of flip-flop stages in each synchronizer chain
              PTR_WIDTH = 4        // width of the pointer bus being synchronized
) (
    input  [PTR_WIDTH - 1 : 0] gray_ptr_in,     // source-domain pointer 
    input  dest_clk,          // destination clock domain
    input  dest_rst,        // active-low asynchronous reset (destination domain)

    output reg [PTR_WIDTH - 1 : 0] gray_ptr_sync  // synchronized pointer, still Gray-coded
);
    // one flop-chain per pointer bit: sync_chain[bit_index][stage_index]
    // sync_chain[i] is the SYNC_STAGES-deep shift chain dedicated to pointer bit i
    reg  [SYNC_STAGES - 1 : 0] sync_chain [0 : PTR_WIDTH - 1];


    integer bit_idx, rst_idx;
    always @(posedge dest_clk or negedge dest_rst) begin

        if (!dest_rst) begin
            gray_ptr_sync <= 0;
            for (rst_idx = 0 ; rst_idx < PTR_WIDTH ; rst_idx = rst_idx + 1 ) begin
                sync_chain[rst_idx] <= 0;
            end

        end else begin
            // for each pointer bit, shift its own SYNC_STAGES-deep chain
            for (bit_idx = 0 ; bit_idx < PTR_WIDTH ; bit_idx = bit_idx + 1 ) begin
                // shift left-to-right: new Gray-coded bit enters at the MSB,
                // existing bits move down toward the LSB, oldest bit is dropped off
                sync_chain[bit_idx] <= {gray_ptr_in[bit_idx] , sync_chain[bit_idx][SYNC_STAGES - 1 : 1]};

                // output bit is taken from the last (synchronized) stage
                gray_ptr_sync[bit_idx] <= sync_chain[bit_idx][0];

            end
        end

    end

endmodule