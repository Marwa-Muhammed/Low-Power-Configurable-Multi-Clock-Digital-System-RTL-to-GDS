module ASYNC_FIFO #(
    parameter DATA_WIDTH = 8,
    parameter PTR_WIDTH = 4,
    parameter DEPTH = 8,
    parameter SYNC_STAGES = 2
) (
    input read_enable,                         
    input read_clk,                            
    input read_rst, 
    input write_enable,                        
    input write_clk,                           
    input write_rst, 
    input [DATA_WIDTH - 1 : 0] wr_data,        
 
    output [DATA_WIDTH - 1 : 0] rd_data,    
    output fifo_full,
    output fifo_empty
);

    // Correctly sized internal pointer wires
    wire [PTR_WIDTH - 2 : 0] write_addr;
    wire [PTR_WIDTH - 2 : 0] read_addr;
    
    wire [PTR_WIDTH - 1 : 0] gray_ptr_in_W2R;
    wire [PTR_WIDTH - 1 : 0] gray_ptr_sync_W2R;
    wire [PTR_WIDTH - 1 : 0] gray_ptr_in_R2W;
    wire [PTR_WIDTH - 1 : 0] gray_ptr_sync_R2W;


    SOURCE_DOMAIN #(PTR_WIDTH) write_domain (
        .write_enable(write_enable),
        .write_clk(write_clk),
        .write_rst(write_rst),
        .sync_read_ptr(gray_ptr_sync_R2W),
        .fifo_full(fifo_full),
        .gray_write_ptr(gray_ptr_in_W2R),
        .write_addr(write_addr) 
    );

    GRAY_SYNC #(SYNC_STAGES, PTR_WIDTH) wr_2_rd (
        .gray_ptr_in(gray_ptr_in_W2R),
        .dest_clk(read_clk),
        .dest_rst(read_rst),
        .gray_ptr_sync(gray_ptr_sync_W2R)
    );

    DESTINATION_DOMAIN #(PTR_WIDTH) read_domain (
        .read_enable(read_enable),
        .read_clk(read_clk),
        .read_rst(read_rst),
        .sync_write_ptr(gray_ptr_sync_W2R),
        .fifo_empty(fifo_empty),
        .read_addr(read_addr), 
        .gray_read_ptr(gray_ptr_in_R2W)
    );

    GRAY_SYNC #(SYNC_STAGES, PTR_WIDTH) rd_2_wr (
        .gray_ptr_in(gray_ptr_in_R2W),
        .dest_clk(write_clk),
        .dest_rst(write_rst),
        .gray_ptr_sync(gray_ptr_sync_R2W)
    );

    FIFO_BUFFER #(DATA_WIDTH, DEPTH) MEM (
        .wr_data(wr_data),
        .write_enable(write_enable),
        .write_clk(write_clk),
        .write_rst(write_rst),
        .fifo_full(fifo_full),
        .write_addr(write_addr),
        .read_addr(read_addr),
        .rd_data(rd_data)
    );

endmodule
