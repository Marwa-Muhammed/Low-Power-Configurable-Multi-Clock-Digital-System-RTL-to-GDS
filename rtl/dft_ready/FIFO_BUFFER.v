module FIFO_BUFFER #(
    parameter DATA_WIDTH = 8,             // width of each data word stored in the FIFO
              DEPTH = 8                   // number of storage locations in the FIFO
) (
    input [DATA_WIDTH - 1 : 0] wr_data,        // data to be written into the FIFO
    input write_enable,
    input fifo_full,   
    input write_clk,      // write-domain clock
    input write_rst,

    input  [$clog2(DEPTH)-1:0] write_addr,     // write address (lower bits of write pointer, excluding wrap-detect MSB)
    input  [$clog2(DEPTH)-1:0] read_addr,      // read address (lower bits of read pointer, excluding wrap-detect MSB)

    output [DATA_WIDTH - 1 : 0] rd_data    // data read out of the FIFO
);

    // dual-port style memory: written in the write-clock domain,
    // read in the read-clock domain
    reg [DATA_WIDTH - 1 : 0] mem_array [0 : DEPTH - 1];

    integer rst_idx;

    // write port 
    always @(posedge write_clk or negedge write_rst) begin
            if (!write_rst) begin
                for (rst_idx = 0 ; rst_idx < DEPTH ; rst_idx = rst_idx + 1 ) begin
                    mem_array[rst_idx] <= 0;
                end
            end else begin       
            // write only if a write is legal (not full)
                if (!fifo_full && write_enable) begin
                    mem_array[write_addr] <= wr_data;
                end
            end
    end


    assign rd_data = mem_array[read_addr];

endmodule
