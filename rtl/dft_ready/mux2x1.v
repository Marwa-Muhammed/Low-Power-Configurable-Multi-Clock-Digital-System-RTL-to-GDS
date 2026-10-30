module mux2x1 (
    input IN0,
    input IN1,
    input SEL,
    output MUX_OUT
);
    assign MUX_OUT = SEL ? IN1 : IN0;

endmodule 