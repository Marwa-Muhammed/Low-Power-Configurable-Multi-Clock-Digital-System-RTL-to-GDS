module SOURCE_DOMAIN #(
    parameter PTR_WIDTH = 4     // pointer width: N-1 bits for actual address range + 1 extra MSB bit for full/empty disambiguation across wraparound
) (
    input write_enable,                         
    input [PTR_WIDTH - 1 : 0] sync_read_ptr,   // read pointer, Gray-coded and synchronized into this (write) clock domain
    input write_clk,                           // write-domain clock
    input write_rst,                          // active-low asynchronous reset

    output [PTR_WIDTH - 2 : 0] write_addr,
    output reg [PTR_WIDTH - 1 : 0] gray_write_ptr, // Registered output (Glitch-free for CDC)
    output fifo_full                           // asserted when the FIFO is full
);

    reg [PTR_WIDTH - 1 : 0] write_ptr;

    assign write_addr = write_ptr[PTR_WIDTH - 2 : 0];

    // full-detection using registered gray_write_ptr
    assign fifo_full = ({~gray_write_ptr[PTR_WIDTH-1 : PTR_WIDTH-2], gray_write_ptr[PTR_WIDTH - 3 : 0]} == sync_read_ptr);

    always @(posedge write_clk or negedge write_rst) begin
        if (!write_rst) begin
            write_ptr      <= {PTR_WIDTH{1'b0}};
            gray_write_ptr <= {PTR_WIDTH{1'b0}};
        end else begin
            // 1. Advance binary write pointer when enabled
            if (write_enable && !fifo_full) begin
                write_ptr <= write_ptr + 1'b1;
            end

            gray_write_ptr <= (write_enable && !fifo_full) ? 
                             ((write_ptr + 1'b1) ^ ((write_ptr + 1'b1) >> 1)) : 
                             (write_ptr ^ (write_ptr >> 1));
        end
    end

endmodule