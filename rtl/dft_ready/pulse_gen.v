module PULSE_GEN ( 
    input  CLK, 
    input  RST, 
    input  LVL_SIG, 
 
    output PULSE_SIG
); 
 
    reg old_value; 
 
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            old_value <= 1'b0;
        end
        else begin
            old_value <= LVL_SIG;
        end
    end

    assign PULSE_SIG = LVL_SIG & ~old_value;

endmodule