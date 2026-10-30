module CLK_DIV (
    input ref_clk,            //Reference Frequency
    input RST,                //Active Low Asynchronous Reset
    input clk_en,             //Clock Divider Block Enable
    input [7:0] div_ratio,    //The divided ratio (integer value)

    output div_clk            //Output generated clock
);

reg [7:0] counter_even, counter_odd;
reg divided_clk_gen,odd_phase;          // Internal sequential clock output

wire odd;    
wire [7:0] half_div_ratio;

assign odd = div_ratio[0];
assign half_div_ratio = div_ratio >> 1;

// If ratio is 0 or 1, instantly bypass to ref_clk. Otherwise, use divided_clk_gen.
assign div_clk =  !clk_en ? ref_clk : (div_ratio == 0 || div_ratio == 1) ? ref_clk : divided_clk_gen;

always @(posedge ref_clk or negedge RST) begin
   if(!RST) begin
        divided_clk_gen <= 1;
        counter_even    <= 0;
        counter_odd     <= 0;
        odd_phase       <= 0;
    end else begin
        if (clk_en && div_ratio != 0 && div_ratio != 1) begin
            if (odd) begin
                if (!odd_phase) begin
                    // short half 
                    if (counter_odd == half_div_ratio-1) begin
                        divided_clk_gen <= ~divided_clk_gen;
                        counter_odd <= 0;
                        odd_phase <= 1;
                    end
                    else begin
                        counter_odd <= counter_odd + 1;
                    end
                end
                else begin
                    // long half 
                    if (counter_odd == half_div_ratio) begin
                        divided_clk_gen <= ~divided_clk_gen;
                        counter_odd <= 0;
                        odd_phase <= 0;
                    end
                    else begin
                        counter_odd <= counter_odd + 1;
                    end
                end
            end else begin //even division ratio
                if(counter_even != half_div_ratio - 1) begin
                    counter_even <= counter_even + 1;
                end else begin
                    divided_clk_gen <= ~divided_clk_gen;
                    counter_even <= 0; 
                end
            end
        end else begin
            // Keeps internal logic clean when disabled or bypassed
            counter_even    <= 0;
            counter_odd     <= 0;
            odd_phase       <= 0;
        end
    end
end

endmodule
