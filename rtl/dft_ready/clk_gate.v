//Option 1: behavioral, for simulation 

module CLK_GATE (
input      CLK_EN,
input      CLK,
output     GATED_CLK
);

//internal connections
reg     Latch_Out ;

//latch (Level Sensitive Device)
always @(CLK or CLK_EN)
 begin
  if(!CLK)      // active low
   begin
    Latch_Out <= CLK_EN ;
   end
 end
 
 
// ANDING
assign  GATED_CLK = CLK && Latch_Out ;

endmodule

/*

//Option 2: ASIC, with the library cell only ---> to remove latch error in lint
module CLK_GATE (
  input  CLK_EN,
  input  CLK,
  output GATED_CLK
);

  TLATNCAX4M CG (
    .E   (CLK_EN),
    .CK  (CLK),
    .ECK (GATED_CLK)
  );

endmodule

*/
