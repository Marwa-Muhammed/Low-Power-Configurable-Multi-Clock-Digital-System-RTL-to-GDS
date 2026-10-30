module DESTINATION_DOMAIN #(
    parameter PTR_WIDTH = 4     // pointer width: N-1 bits for actual address range + 1 extra MSB bit for full/empty disambiguation across wraparound
) (
    input read_enable,                          // request to read 
    input [PTR_WIDTH - 1 : 0] sync_write_ptr,  // write pointer, Gray-coded and synchronized into this (read) clock domain
    input read_clk,                             // read-domain clock
    input read_rst,                             // active-low asynchronous reset

    output [PTR_WIDTH - 2 : 0] read_addr, 
    output reg [PTR_WIDTH - 1 : 0] gray_read_ptr, // Now registered directly from current read_ptr
    output fifo_empty                           // asserted when the FIFO is empty
);

    reg [PTR_WIDTH - 1 : 0] read_ptr;

    // Address output
    assign read_addr = read_ptr[PTR_WIDTH - 2 : 0];

    // FIFO Empty flag comparison
    assign fifo_empty = (gray_read_ptr == sync_write_ptr);

    always @(posedge read_clk or negedge read_rst) begin
        if (!read_rst) begin
            read_ptr      <= {PTR_WIDTH{1'b0}};
            gray_read_ptr <= {PTR_WIDTH{1'b0}};
        end else begin
            // 1. Advance binary read pointer when enabled
            if (read_enable && !fifo_empty) begin
                read_ptr <= read_ptr + 1'b1;
            end
            
            gray_read_ptr <= (read_enable && !fifo_empty) ? 
                             ((read_ptr + 1'b1) ^ ((read_ptr + 1'b1) >> 1)) : 
                             (read_ptr ^ (read_ptr >> 1));
        end
    end

endmodule