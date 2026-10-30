/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Thu Oct  8 21:33:10 2026
/////////////////////////////////////////////////////////////


module RST_SYNC_SYNC_STAGES2_0 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \sync_ff[1] ;

  DFFRQX2M \sync_ff_reg[0]  ( .D(\sync_ff[1] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \sync_ff_reg[1]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_ff[1] )
         );
endmodule


module RST_SYNC_SYNC_STAGES2_1 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \sync_ff[1] ;

  DFFRQX2M \sync_ff_reg[0]  ( .D(\sync_ff[1] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \sync_ff_reg[1]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_ff[1] )
         );
endmodule


module CLK_DIV_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module CLK_DIV_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module CLK_DIV_0 ( ref_clk, RST, clk_en, div_ratio, div_clk );
  input [7:0] div_ratio;
  input ref_clk, RST, clk_en;
  output div_clk;
  wire   divided_clk_gen, odd_phase, N16, N17, N18, N19, N20, N21, N22, N23,
         N43, N44, N45, N46, N47, N48, N49, N50, N77, N78, N79, N80, N81, N82,
         N83, N84, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69;
  wire   [7:0] counter_odd;
  wire   [7:0] counter_even;

  CLK_DIV_0_DW01_inc_0 add_55 ( .A(counter_even), .SUM({N84, N83, N82, N81, 
        N80, N79, N78, N77}) );
  CLK_DIV_0_DW01_inc_1 r85 ( .A(counter_odd), .SUM({N50, N49, N48, N47, N46, 
        N45, N44, N43}) );
  DFFSQX2M divided_clk_gen_reg ( .D(n26), .CK(ref_clk), .SN(RST), .Q(
        divided_clk_gen) );
  DFFRQX2M \counter_even_reg[7]  ( .D(n42), .CK(ref_clk), .RN(RST), .Q(
        counter_even[7]) );
  DFFRQX2M odd_phase_reg ( .D(n35), .CK(ref_clk), .RN(RST), .Q(odd_phase) );
  DFFRQX2M \counter_odd_reg[7]  ( .D(n27), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[7]) );
  DFFRQX2M \counter_odd_reg[0]  ( .D(n34), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[0]) );
  DFFRQX2M \counter_even_reg[0]  ( .D(n43), .CK(ref_clk), .RN(RST), .Q(
        counter_even[0]) );
  DFFRQX2M \counter_even_reg[2]  ( .D(n40), .CK(ref_clk), .RN(RST), .Q(
        counter_even[2]) );
  DFFRQX2M \counter_even_reg[1]  ( .D(n41), .CK(ref_clk), .RN(RST), .Q(
        counter_even[1]) );
  DFFRQX2M \counter_odd_reg[2]  ( .D(n32), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[2]) );
  DFFRQX2M \counter_even_reg[6]  ( .D(n36), .CK(ref_clk), .RN(RST), .Q(
        counter_even[6]) );
  DFFRQX2M \counter_even_reg[5]  ( .D(n37), .CK(ref_clk), .RN(RST), .Q(
        counter_even[5]) );
  DFFRQX2M \counter_even_reg[4]  ( .D(n38), .CK(ref_clk), .RN(RST), .Q(
        counter_even[4]) );
  DFFRQX2M \counter_even_reg[3]  ( .D(n39), .CK(ref_clk), .RN(RST), .Q(
        counter_even[3]) );
  DFFRQX2M \counter_odd_reg[1]  ( .D(n33), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[1]) );
  DFFRQX2M \counter_odd_reg[3]  ( .D(n31), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[3]) );
  DFFRQX2M \counter_odd_reg[4]  ( .D(n30), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[4]) );
  DFFRQX2M \counter_odd_reg[5]  ( .D(n29), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[5]) );
  DFFRQX2M \counter_odd_reg[6]  ( .D(n28), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[6]) );
  INVX2M U3 ( .A(n16), .Y(n6) );
  INVX2M U4 ( .A(div_ratio[1]), .Y(N16) );
  NAND2BX1M U5 ( .AN(div_ratio[2]), .B(N16), .Y(n1) );
  OAI2BB1X1M U6 ( .A0N(div_ratio[1]), .A1N(div_ratio[2]), .B0(n1), .Y(N17) );
  OR2X1M U7 ( .A(n1), .B(div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U8 ( .A0N(n1), .A1N(div_ratio[3]), .B0(n2), .Y(N18) );
  OR2X1M U9 ( .A(n2), .B(div_ratio[4]), .Y(n3) );
  OAI2BB1X1M U10 ( .A0N(n2), .A1N(div_ratio[4]), .B0(n3), .Y(N19) );
  OR2X1M U11 ( .A(n3), .B(div_ratio[5]), .Y(n4) );
  OAI2BB1X1M U12 ( .A0N(n3), .A1N(div_ratio[5]), .B0(n4), .Y(N20) );
  XNOR2X1M U13 ( .A(div_ratio[6]), .B(n4), .Y(N21) );
  NOR3X1M U14 ( .A(div_ratio[6]), .B(div_ratio[7]), .C(n4), .Y(N23) );
  OAI21X1M U15 ( .A0(div_ratio[6]), .A1(n4), .B0(div_ratio[7]), .Y(n5) );
  NAND2BX1M U16 ( .AN(N23), .B(n5), .Y(N22) );
  AO22X1M U17 ( .A0(counter_even[0]), .A1(n6), .B0(N77), .B1(n7), .Y(n43) );
  AO22X1M U18 ( .A0(n6), .A1(counter_even[7]), .B0(N84), .B1(n7), .Y(n42) );
  AO22X1M U19 ( .A0(counter_even[1]), .A1(n6), .B0(N78), .B1(n7), .Y(n41) );
  AO22X1M U20 ( .A0(counter_even[2]), .A1(n6), .B0(N79), .B1(n7), .Y(n40) );
  AO22X1M U21 ( .A0(counter_even[3]), .A1(n6), .B0(N80), .B1(n7), .Y(n39) );
  AO22X1M U22 ( .A0(counter_even[4]), .A1(n6), .B0(N81), .B1(n7), .Y(n38) );
  AO22X1M U23 ( .A0(counter_even[5]), .A1(n6), .B0(N82), .B1(n7), .Y(n37) );
  AO22X1M U24 ( .A0(counter_even[6]), .A1(n6), .B0(N83), .B1(n7), .Y(n36) );
  NOR2BX1M U25 ( .AN(n8), .B(n9), .Y(n7) );
  MXI2X1M U26 ( .A(n10), .B(n11), .S0(odd_phase), .Y(n35) );
  AOI21X1M U27 ( .A0(n12), .A1(n13), .B0(n14), .Y(n11) );
  CLKNAND2X2M U28 ( .A(n6), .B(n15), .Y(n10) );
  OAI2BB2X1M U29 ( .B0(n9), .B1(n17), .A0N(N43), .A1N(n18), .Y(n34) );
  AO22X1M U30 ( .A0(n14), .A1(counter_odd[1]), .B0(N44), .B1(n18), .Y(n33) );
  OAI2BB2X1M U31 ( .B0(n9), .B1(n19), .A0N(N45), .A1N(n18), .Y(n32) );
  AO22X1M U32 ( .A0(n14), .A1(counter_odd[3]), .B0(N46), .B1(n18), .Y(n31) );
  AO22X1M U33 ( .A0(n14), .A1(counter_odd[4]), .B0(N47), .B1(n18), .Y(n30) );
  AO22X1M U34 ( .A0(n14), .A1(counter_odd[5]), .B0(N48), .B1(n18), .Y(n29) );
  AO22X1M U35 ( .A0(n14), .A1(counter_odd[6]), .B0(N49), .B1(n18), .Y(n28) );
  AO22X1M U36 ( .A0(n14), .A1(counter_odd[7]), .B0(N50), .B1(n18), .Y(n27) );
  NOR3BX1M U37 ( .AN(n12), .B(n15), .C(n14), .Y(n18) );
  CLKINVX1M U38 ( .A(n9), .Y(n14) );
  CLKXOR2X2M U39 ( .A(n20), .B(divided_clk_gen), .Y(n26) );
  OAI22X1M U40 ( .A0(n9), .A1(n8), .B0(n16), .B1(n13), .Y(n20) );
  CLKINVX1M U41 ( .A(n15), .Y(n13) );
  MXI2X1M U42 ( .A(n21), .B(n22), .S0(odd_phase), .Y(n15) );
  CLKNAND2X2M U43 ( .A(n23), .B(n24), .Y(n22) );
  NOR4X1M U44 ( .A(counter_odd[7]), .B(n25), .C(n44), .D(n45), .Y(n24) );
  CLKXOR2X2M U45 ( .A(div_ratio[3]), .B(counter_odd[2]), .Y(n45) );
  CLKXOR2X2M U46 ( .A(div_ratio[2]), .B(counter_odd[1]), .Y(n44) );
  CLKXOR2X2M U47 ( .A(div_ratio[1]), .B(counter_odd[0]), .Y(n25) );
  NOR4X1M U48 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n23) );
  CLKXOR2X2M U49 ( .A(div_ratio[7]), .B(counter_odd[6]), .Y(n49) );
  CLKXOR2X2M U50 ( .A(div_ratio[6]), .B(counter_odd[5]), .Y(n48) );
  CLKXOR2X2M U51 ( .A(div_ratio[5]), .B(counter_odd[4]), .Y(n47) );
  CLKXOR2X2M U52 ( .A(div_ratio[4]), .B(counter_odd[3]), .Y(n46) );
  NAND4X1M U53 ( .A(n50), .B(n51), .C(n52), .D(n53), .Y(n21) );
  NOR4X1M U54 ( .A(n54), .B(n55), .C(n56), .D(n57), .Y(n53) );
  CLKXOR2X2M U55 ( .A(counter_odd[6]), .B(N22), .Y(n57) );
  CLKXOR2X2M U56 ( .A(counter_odd[5]), .B(N21), .Y(n56) );
  CLKXOR2X2M U57 ( .A(counter_odd[4]), .B(N20), .Y(n55) );
  CLKXOR2X2M U58 ( .A(counter_odd[1]), .B(N17), .Y(n54) );
  NOR3X1M U59 ( .A(n58), .B(counter_odd[7]), .C(N23), .Y(n52) );
  CLKXOR2X2M U60 ( .A(counter_odd[3]), .B(N19), .Y(n58) );
  CLKXOR2X2M U61 ( .A(N18), .B(n19), .Y(n51) );
  CLKINVX1M U62 ( .A(counter_odd[2]), .Y(n19) );
  CLKXOR2X2M U63 ( .A(N16), .B(n17), .Y(n50) );
  CLKINVX1M U64 ( .A(counter_odd[0]), .Y(n17) );
  CLKNAND2X2M U65 ( .A(div_ratio[0]), .B(n12), .Y(n16) );
  NAND4X1M U66 ( .A(n59), .B(n60), .C(n61), .D(n62), .Y(n8) );
  NOR4X1M U67 ( .A(n63), .B(n64), .C(n65), .D(n66), .Y(n62) );
  CLKXOR2X2M U68 ( .A(counter_even[6]), .B(N22), .Y(n66) );
  CLKXOR2X2M U69 ( .A(counter_even[5]), .B(N21), .Y(n65) );
  CLKXOR2X2M U70 ( .A(counter_even[4]), .B(N20), .Y(n64) );
  CLKXOR2X2M U71 ( .A(counter_even[3]), .B(N19), .Y(n63) );
  NOR3X1M U72 ( .A(n67), .B(counter_even[7]), .C(N23), .Y(n61) );
  CLKXOR2X2M U73 ( .A(counter_even[0]), .B(N16), .Y(n67) );
  XNOR2X1M U74 ( .A(N17), .B(counter_even[1]), .Y(n60) );
  XNOR2X1M U75 ( .A(N18), .B(counter_even[2]), .Y(n59) );
  NAND2BX1M U76 ( .AN(div_ratio[0]), .B(n12), .Y(n9) );
  CLKMX2X2M U77 ( .A(ref_clk), .B(divided_clk_gen), .S0(n12), .Y(div_clk) );
  OA21X1M U78 ( .A0(n68), .A1(n69), .B0(clk_en), .Y(n12) );
  OR3X1M U79 ( .A(div_ratio[2]), .B(div_ratio[3]), .C(div_ratio[1]), .Y(n69)
         );
  OR4X1M U80 ( .A(div_ratio[4]), .B(div_ratio[5]), .C(div_ratio[6]), .D(
        div_ratio[7]), .Y(n68) );
endmodule


module prescale_mux ( prescale_sel, prescale );
  input [1:0] prescale_sel;
  output [5:0] prescale;
  wire   n2, n1;
  assign prescale[0] = 1'b0;
  assign prescale[1] = 1'b0;

  NOR2X2M U3 ( .A(n1), .B(prescale_sel[1]), .Y(prescale[3]) );
  NOR2X2M U4 ( .A(prescale_sel[0]), .B(n2), .Y(prescale[2]) );
  NOR2X2M U5 ( .A(n1), .B(n2), .Y(prescale[5]) );
  OR2X2M U6 ( .A(prescale[4]), .B(prescale[3]), .Y(n2) );
  AND2X2M U7 ( .A(prescale_sel[1]), .B(n1), .Y(prescale[4]) );
  INVX2M U8 ( .A(prescale_sel[0]), .Y(n1) );
endmodule


module CLK_DIV_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module CLK_DIV_1_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module CLK_DIV_1 ( ref_clk, RST, clk_en, div_ratio, div_clk );
  input [7:0] div_ratio;
  input ref_clk, RST, clk_en;
  output div_clk;
  wire   divided_clk_gen, odd_phase, N16, N17, N18, N19, N20, N21, N22, N23,
         N43, N44, N45, N46, N47, N48, N49, N50, N77, N78, N79, N80, N81, N82,
         N83, N84, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87;
  wire   [7:0] counter_odd;
  wire   [7:0] counter_even;

  CLK_DIV_1_DW01_inc_0 add_55 ( .A(counter_even), .SUM({N84, N83, N82, N81, 
        N80, N79, N78, N77}) );
  CLK_DIV_1_DW01_inc_1 r85 ( .A(counter_odd), .SUM({N50, N49, N48, N47, N46, 
        N45, N44, N43}) );
  DFFSQX2M divided_clk_gen_reg ( .D(n87), .CK(ref_clk), .SN(RST), .Q(
        divided_clk_gen) );
  DFFRQX2M \counter_even_reg[7]  ( .D(n71), .CK(ref_clk), .RN(RST), .Q(
        counter_even[7]) );
  DFFRQX2M odd_phase_reg ( .D(n78), .CK(ref_clk), .RN(RST), .Q(odd_phase) );
  DFFRQX2M \counter_odd_reg[7]  ( .D(n86), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[7]) );
  DFFRQX2M \counter_odd_reg[0]  ( .D(n79), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[0]) );
  DFFRQX2M \counter_even_reg[0]  ( .D(n70), .CK(ref_clk), .RN(RST), .Q(
        counter_even[0]) );
  DFFRQX2M \counter_even_reg[2]  ( .D(n73), .CK(ref_clk), .RN(RST), .Q(
        counter_even[2]) );
  DFFRQX2M \counter_even_reg[1]  ( .D(n72), .CK(ref_clk), .RN(RST), .Q(
        counter_even[1]) );
  DFFRQX2M \counter_odd_reg[2]  ( .D(n81), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[2]) );
  DFFRQX2M \counter_even_reg[6]  ( .D(n77), .CK(ref_clk), .RN(RST), .Q(
        counter_even[6]) );
  DFFRQX2M \counter_even_reg[5]  ( .D(n76), .CK(ref_clk), .RN(RST), .Q(
        counter_even[5]) );
  DFFRQX2M \counter_even_reg[4]  ( .D(n75), .CK(ref_clk), .RN(RST), .Q(
        counter_even[4]) );
  DFFRQX2M \counter_even_reg[3]  ( .D(n74), .CK(ref_clk), .RN(RST), .Q(
        counter_even[3]) );
  DFFRQX2M \counter_odd_reg[1]  ( .D(n80), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[1]) );
  DFFRQX2M \counter_odd_reg[3]  ( .D(n82), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[3]) );
  DFFRQX2M \counter_odd_reg[4]  ( .D(n83), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[4]) );
  DFFRQX2M \counter_odd_reg[5]  ( .D(n84), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[5]) );
  DFFRQX2M \counter_odd_reg[6]  ( .D(n85), .CK(ref_clk), .RN(RST), .Q(
        counter_odd[6]) );
  INVX2M U3 ( .A(div_ratio[1]), .Y(N16) );
  INVX2M U4 ( .A(n16), .Y(n6) );
  NAND2BX1M U5 ( .AN(div_ratio[2]), .B(N16), .Y(n1) );
  OAI2BB1X1M U6 ( .A0N(div_ratio[1]), .A1N(div_ratio[2]), .B0(n1), .Y(N17) );
  OR2X1M U7 ( .A(n1), .B(div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U8 ( .A0N(n1), .A1N(div_ratio[3]), .B0(n2), .Y(N18) );
  OR2X1M U9 ( .A(n2), .B(div_ratio[4]), .Y(n3) );
  OAI2BB1X1M U10 ( .A0N(n2), .A1N(div_ratio[4]), .B0(n3), .Y(N19) );
  OR2X1M U11 ( .A(n3), .B(div_ratio[5]), .Y(n4) );
  OAI2BB1X1M U12 ( .A0N(n3), .A1N(div_ratio[5]), .B0(n4), .Y(N20) );
  XNOR2X1M U13 ( .A(div_ratio[6]), .B(n4), .Y(N21) );
  NOR3X1M U14 ( .A(div_ratio[6]), .B(div_ratio[7]), .C(n4), .Y(N23) );
  OAI21X1M U15 ( .A0(div_ratio[6]), .A1(n4), .B0(div_ratio[7]), .Y(n5) );
  NAND2BX1M U16 ( .AN(N23), .B(n5), .Y(N22) );
  AO22X1M U17 ( .A0(counter_even[0]), .A1(n6), .B0(N77), .B1(n7), .Y(n70) );
  AO22X1M U18 ( .A0(n6), .A1(counter_even[7]), .B0(N84), .B1(n7), .Y(n71) );
  AO22X1M U19 ( .A0(counter_even[1]), .A1(n6), .B0(N78), .B1(n7), .Y(n72) );
  AO22X1M U20 ( .A0(counter_even[2]), .A1(n6), .B0(N79), .B1(n7), .Y(n73) );
  AO22X1M U21 ( .A0(counter_even[3]), .A1(n6), .B0(N80), .B1(n7), .Y(n74) );
  AO22X1M U22 ( .A0(counter_even[4]), .A1(n6), .B0(N81), .B1(n7), .Y(n75) );
  AO22X1M U23 ( .A0(counter_even[5]), .A1(n6), .B0(N82), .B1(n7), .Y(n76) );
  AO22X1M U24 ( .A0(counter_even[6]), .A1(n6), .B0(N83), .B1(n7), .Y(n77) );
  NOR2BX1M U25 ( .AN(n8), .B(n9), .Y(n7) );
  MXI2X1M U26 ( .A(n10), .B(n11), .S0(odd_phase), .Y(n78) );
  AOI21X1M U27 ( .A0(n12), .A1(n13), .B0(n14), .Y(n11) );
  CLKNAND2X2M U28 ( .A(n6), .B(n15), .Y(n10) );
  OAI2BB2X1M U29 ( .B0(n9), .B1(n17), .A0N(N43), .A1N(n18), .Y(n79) );
  AO22X1M U30 ( .A0(n14), .A1(counter_odd[1]), .B0(N44), .B1(n18), .Y(n80) );
  OAI2BB2X1M U31 ( .B0(n9), .B1(n19), .A0N(N45), .A1N(n18), .Y(n81) );
  AO22X1M U32 ( .A0(n14), .A1(counter_odd[3]), .B0(N46), .B1(n18), .Y(n82) );
  AO22X1M U33 ( .A0(n14), .A1(counter_odd[4]), .B0(N47), .B1(n18), .Y(n83) );
  AO22X1M U34 ( .A0(n14), .A1(counter_odd[5]), .B0(N48), .B1(n18), .Y(n84) );
  AO22X1M U35 ( .A0(n14), .A1(counter_odd[6]), .B0(N49), .B1(n18), .Y(n85) );
  AO22X1M U36 ( .A0(n14), .A1(counter_odd[7]), .B0(N50), .B1(n18), .Y(n86) );
  NOR3BX1M U37 ( .AN(n12), .B(n15), .C(n14), .Y(n18) );
  CLKINVX1M U38 ( .A(n9), .Y(n14) );
  CLKXOR2X2M U39 ( .A(n20), .B(divided_clk_gen), .Y(n87) );
  OAI22X1M U40 ( .A0(n9), .A1(n8), .B0(n16), .B1(n13), .Y(n20) );
  CLKINVX1M U41 ( .A(n15), .Y(n13) );
  MXI2X1M U42 ( .A(n21), .B(n22), .S0(odd_phase), .Y(n15) );
  CLKNAND2X2M U43 ( .A(n23), .B(n24), .Y(n22) );
  NOR4X1M U44 ( .A(counter_odd[7]), .B(n25), .C(n44), .D(n45), .Y(n24) );
  CLKXOR2X2M U45 ( .A(div_ratio[3]), .B(counter_odd[2]), .Y(n45) );
  CLKXOR2X2M U46 ( .A(div_ratio[2]), .B(counter_odd[1]), .Y(n44) );
  CLKXOR2X2M U47 ( .A(div_ratio[1]), .B(counter_odd[0]), .Y(n25) );
  NOR4X1M U48 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n23) );
  CLKXOR2X2M U49 ( .A(div_ratio[7]), .B(counter_odd[6]), .Y(n49) );
  CLKXOR2X2M U50 ( .A(div_ratio[6]), .B(counter_odd[5]), .Y(n48) );
  CLKXOR2X2M U51 ( .A(div_ratio[5]), .B(counter_odd[4]), .Y(n47) );
  CLKXOR2X2M U52 ( .A(div_ratio[4]), .B(counter_odd[3]), .Y(n46) );
  NAND4X1M U53 ( .A(n50), .B(n51), .C(n52), .D(n53), .Y(n21) );
  NOR4X1M U54 ( .A(n54), .B(n55), .C(n56), .D(n57), .Y(n53) );
  CLKXOR2X2M U55 ( .A(counter_odd[6]), .B(N22), .Y(n57) );
  CLKXOR2X2M U56 ( .A(counter_odd[5]), .B(N21), .Y(n56) );
  CLKXOR2X2M U57 ( .A(counter_odd[4]), .B(N20), .Y(n55) );
  CLKXOR2X2M U58 ( .A(counter_odd[1]), .B(N17), .Y(n54) );
  NOR3X1M U59 ( .A(n58), .B(counter_odd[7]), .C(N23), .Y(n52) );
  CLKXOR2X2M U60 ( .A(counter_odd[3]), .B(N19), .Y(n58) );
  CLKXOR2X2M U61 ( .A(N18), .B(n19), .Y(n51) );
  CLKINVX1M U62 ( .A(counter_odd[2]), .Y(n19) );
  CLKXOR2X2M U63 ( .A(N16), .B(n17), .Y(n50) );
  CLKINVX1M U64 ( .A(counter_odd[0]), .Y(n17) );
  CLKNAND2X2M U65 ( .A(div_ratio[0]), .B(n12), .Y(n16) );
  NAND4X1M U66 ( .A(n59), .B(n60), .C(n61), .D(n62), .Y(n8) );
  NOR4X1M U67 ( .A(n63), .B(n64), .C(n65), .D(n66), .Y(n62) );
  CLKXOR2X2M U68 ( .A(counter_even[6]), .B(N22), .Y(n66) );
  CLKXOR2X2M U69 ( .A(counter_even[5]), .B(N21), .Y(n65) );
  CLKXOR2X2M U70 ( .A(counter_even[4]), .B(N20), .Y(n64) );
  CLKXOR2X2M U71 ( .A(counter_even[3]), .B(N19), .Y(n63) );
  NOR3X1M U72 ( .A(n67), .B(counter_even[7]), .C(N23), .Y(n61) );
  CLKXOR2X2M U73 ( .A(counter_even[0]), .B(N16), .Y(n67) );
  XNOR2X1M U74 ( .A(N17), .B(counter_even[1]), .Y(n60) );
  XNOR2X1M U75 ( .A(N18), .B(counter_even[2]), .Y(n59) );
  NAND2BX1M U76 ( .AN(div_ratio[0]), .B(n12), .Y(n9) );
  CLKMX2X2M U77 ( .A(ref_clk), .B(divided_clk_gen), .S0(n12), .Y(div_clk) );
  OA21X1M U78 ( .A0(n68), .A1(n69), .B0(clk_en), .Y(n12) );
  OR3X1M U79 ( .A(div_ratio[2]), .B(div_ratio[3]), .C(div_ratio[1]), .Y(n69)
         );
  OR4X1M U80 ( .A(div_ratio[4]), .B(div_ratio[5]), .C(div_ratio[6]), .D(
        div_ratio[7]), .Y(n68) );
endmodule


module Reg_File_W8_D16_addr_W4 ( WrData, Address, WrEn, RdEn, CLK, RST, RdData, 
        RdData_valid, REG0, REG1, REG2, REG3 );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST;
  output RdData_valid;
  wire   N13, N14, N15, N16, \u_Reg_File[4][7] , \u_Reg_File[4][6] ,
         \u_Reg_File[4][5] , \u_Reg_File[4][4] , \u_Reg_File[4][3] ,
         \u_Reg_File[4][2] , \u_Reg_File[4][1] , \u_Reg_File[4][0] ,
         \u_Reg_File[5][7] , \u_Reg_File[5][6] , \u_Reg_File[5][5] ,
         \u_Reg_File[5][4] , \u_Reg_File[5][3] , \u_Reg_File[5][2] ,
         \u_Reg_File[5][1] , \u_Reg_File[5][0] , \u_Reg_File[6][7] ,
         \u_Reg_File[6][6] , \u_Reg_File[6][5] , \u_Reg_File[6][4] ,
         \u_Reg_File[6][3] , \u_Reg_File[6][2] , \u_Reg_File[6][1] ,
         \u_Reg_File[6][0] , \u_Reg_File[7][7] , \u_Reg_File[7][6] ,
         \u_Reg_File[7][5] , \u_Reg_File[7][4] , \u_Reg_File[7][3] ,
         \u_Reg_File[7][2] , \u_Reg_File[7][1] , \u_Reg_File[7][0] ,
         \u_Reg_File[8][7] , \u_Reg_File[8][6] , \u_Reg_File[8][5] ,
         \u_Reg_File[8][4] , \u_Reg_File[8][3] , \u_Reg_File[8][2] ,
         \u_Reg_File[8][1] , \u_Reg_File[8][0] , \u_Reg_File[9][7] ,
         \u_Reg_File[9][6] , \u_Reg_File[9][5] , \u_Reg_File[9][4] ,
         \u_Reg_File[9][3] , \u_Reg_File[9][2] , \u_Reg_File[9][1] ,
         \u_Reg_File[9][0] , \u_Reg_File[10][7] , \u_Reg_File[10][6] ,
         \u_Reg_File[10][5] , \u_Reg_File[10][4] , \u_Reg_File[10][3] ,
         \u_Reg_File[10][2] , \u_Reg_File[10][1] , \u_Reg_File[10][0] ,
         \u_Reg_File[11][7] , \u_Reg_File[11][6] , \u_Reg_File[11][5] ,
         \u_Reg_File[11][4] , \u_Reg_File[11][3] , \u_Reg_File[11][2] ,
         \u_Reg_File[11][1] , \u_Reg_File[11][0] , \u_Reg_File[12][7] ,
         \u_Reg_File[12][6] , \u_Reg_File[12][5] , \u_Reg_File[12][4] ,
         \u_Reg_File[12][3] , \u_Reg_File[12][2] , \u_Reg_File[12][1] ,
         \u_Reg_File[12][0] , \u_Reg_File[13][7] , \u_Reg_File[13][6] ,
         \u_Reg_File[13][5] , \u_Reg_File[13][4] , \u_Reg_File[13][3] ,
         \u_Reg_File[13][2] , \u_Reg_File[13][1] , \u_Reg_File[13][0] ,
         \u_Reg_File[14][7] , \u_Reg_File[14][6] , \u_Reg_File[14][5] ,
         \u_Reg_File[14][4] , \u_Reg_File[14][3] , \u_Reg_File[14][2] ,
         \u_Reg_File[14][1] , \u_Reg_File[14][0] , \u_Reg_File[15][7] ,
         \u_Reg_File[15][6] , \u_Reg_File[15][5] , \u_Reg_File[15][4] ,
         \u_Reg_File[15][3] , \u_Reg_File[15][2] , \u_Reg_File[15][1] ,
         \u_Reg_File[15][0] , N68, N69, N70, N71, N72, N73, N74, N75, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n39, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n38,
         n40, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319;
  assign N13 = Address[0];
  assign N14 = Address[1];
  assign N15 = Address[2];
  assign N16 = Address[3];

  DFFSQX2M \u_Reg_File_reg[3][5]  ( .D(n143), .CK(CLK), .SN(n291), .Q(REG3[5])
         );
  DFFRQX2M \u_Reg_File_reg[5][7]  ( .D(n129), .CK(CLK), .RN(n297), .Q(
        \u_Reg_File[5][7] ) );
  DFFRQX2M \u_Reg_File_reg[5][6]  ( .D(n128), .CK(CLK), .RN(n297), .Q(
        \u_Reg_File[5][6] ) );
  DFFRQX2M \u_Reg_File_reg[5][5]  ( .D(n127), .CK(CLK), .RN(n297), .Q(
        \u_Reg_File[5][5] ) );
  DFFRQX2M \u_Reg_File_reg[5][4]  ( .D(n126), .CK(CLK), .RN(n297), .Q(
        \u_Reg_File[5][4] ) );
  DFFRQX2M \u_Reg_File_reg[5][3]  ( .D(n125), .CK(CLK), .RN(n296), .Q(
        \u_Reg_File[5][3] ) );
  DFFRQX2M \u_Reg_File_reg[5][2]  ( .D(n124), .CK(CLK), .RN(n296), .Q(
        \u_Reg_File[5][2] ) );
  DFFRQX2M \u_Reg_File_reg[5][1]  ( .D(n123), .CK(CLK), .RN(n296), .Q(
        \u_Reg_File[5][1] ) );
  DFFRQX2M \u_Reg_File_reg[5][0]  ( .D(n122), .CK(CLK), .RN(n296), .Q(
        \u_Reg_File[5][0] ) );
  DFFRQX2M \u_Reg_File_reg[7][7]  ( .D(n113), .CK(CLK), .RN(n296), .Q(
        \u_Reg_File[7][7] ) );
  DFFRQX2M \u_Reg_File_reg[7][6]  ( .D(n112), .CK(CLK), .RN(n296), .Q(
        \u_Reg_File[7][6] ) );
  DFFRQX2M \u_Reg_File_reg[7][5]  ( .D(n111), .CK(CLK), .RN(n296), .Q(
        \u_Reg_File[7][5] ) );
  DFFRQX2M \u_Reg_File_reg[7][4]  ( .D(n110), .CK(CLK), .RN(n295), .Q(
        \u_Reg_File[7][4] ) );
  DFFRQX2M \u_Reg_File_reg[7][3]  ( .D(n109), .CK(CLK), .RN(n295), .Q(
        \u_Reg_File[7][3] ) );
  DFFRQX2M \u_Reg_File_reg[7][2]  ( .D(n108), .CK(CLK), .RN(n295), .Q(
        \u_Reg_File[7][2] ) );
  DFFRQX2M \u_Reg_File_reg[7][1]  ( .D(n107), .CK(CLK), .RN(n295), .Q(
        \u_Reg_File[7][1] ) );
  DFFRQX2M \u_Reg_File_reg[7][0]  ( .D(n106), .CK(CLK), .RN(n295), .Q(
        \u_Reg_File[7][0] ) );
  DFFRQX2M \u_Reg_File_reg[9][7]  ( .D(n97), .CK(CLK), .RN(n295), .Q(
        \u_Reg_File[9][7] ) );
  DFFRQX2M \u_Reg_File_reg[9][6]  ( .D(n96), .CK(CLK), .RN(n294), .Q(
        \u_Reg_File[9][6] ) );
  DFFRQX2M \u_Reg_File_reg[9][5]  ( .D(n95), .CK(CLK), .RN(n294), .Q(
        \u_Reg_File[9][5] ) );
  DFFRQX2M \u_Reg_File_reg[9][4]  ( .D(n94), .CK(CLK), .RN(n294), .Q(
        \u_Reg_File[9][4] ) );
  DFFRQX2M \u_Reg_File_reg[9][3]  ( .D(n93), .CK(CLK), .RN(n294), .Q(
        \u_Reg_File[9][3] ) );
  DFFRQX2M \u_Reg_File_reg[9][2]  ( .D(n92), .CK(CLK), .RN(n294), .Q(
        \u_Reg_File[9][2] ) );
  DFFRQX2M \u_Reg_File_reg[9][1]  ( .D(n91), .CK(CLK), .RN(n294), .Q(
        \u_Reg_File[9][1] ) );
  DFFRQX2M \u_Reg_File_reg[9][0]  ( .D(n90), .CK(CLK), .RN(n294), .Q(
        \u_Reg_File[9][0] ) );
  DFFRQX2M \u_Reg_File_reg[11][7]  ( .D(n81), .CK(CLK), .RN(n293), .Q(
        \u_Reg_File[11][7] ) );
  DFFRQX2M \u_Reg_File_reg[11][6]  ( .D(n80), .CK(CLK), .RN(n293), .Q(
        \u_Reg_File[11][6] ) );
  DFFRQX2M \u_Reg_File_reg[11][5]  ( .D(n79), .CK(CLK), .RN(n293), .Q(
        \u_Reg_File[11][5] ) );
  DFFRQX2M \u_Reg_File_reg[11][4]  ( .D(n78), .CK(CLK), .RN(n293), .Q(
        \u_Reg_File[11][4] ) );
  DFFRQX2M \u_Reg_File_reg[11][3]  ( .D(n77), .CK(CLK), .RN(n293), .Q(
        \u_Reg_File[11][3] ) );
  DFFRQX2M \u_Reg_File_reg[11][2]  ( .D(n76), .CK(CLK), .RN(n293), .Q(
        \u_Reg_File[11][2] ) );
  DFFRQX2M \u_Reg_File_reg[11][1]  ( .D(n75), .CK(CLK), .RN(n293), .Q(
        \u_Reg_File[11][1] ) );
  DFFRQX2M \u_Reg_File_reg[11][0]  ( .D(n74), .CK(CLK), .RN(n293), .Q(
        \u_Reg_File[11][0] ) );
  DFFRQX2M \u_Reg_File_reg[13][7]  ( .D(n65), .CK(CLK), .RN(n292), .Q(
        \u_Reg_File[13][7] ) );
  DFFRQX2M \u_Reg_File_reg[13][6]  ( .D(n64), .CK(CLK), .RN(n292), .Q(
        \u_Reg_File[13][6] ) );
  DFFRQX2M \u_Reg_File_reg[13][5]  ( .D(n63), .CK(CLK), .RN(n292), .Q(
        \u_Reg_File[13][5] ) );
  DFFRQX2M \u_Reg_File_reg[13][4]  ( .D(n62), .CK(CLK), .RN(n292), .Q(
        \u_Reg_File[13][4] ) );
  DFFRQX2M \u_Reg_File_reg[13][3]  ( .D(n61), .CK(CLK), .RN(n292), .Q(
        \u_Reg_File[13][3] ) );
  DFFRQX2M \u_Reg_File_reg[13][2]  ( .D(n60), .CK(CLK), .RN(n292), .Q(
        \u_Reg_File[13][2] ) );
  DFFRQX2M \u_Reg_File_reg[13][1]  ( .D(n59), .CK(CLK), .RN(n292), .Q(
        \u_Reg_File[13][1] ) );
  DFFRQX2M \u_Reg_File_reg[13][0]  ( .D(n58), .CK(CLK), .RN(n292), .Q(
        \u_Reg_File[13][0] ) );
  DFFRQX2M \u_Reg_File_reg[15][7]  ( .D(n49), .CK(CLK), .RN(n291), .Q(
        \u_Reg_File[15][7] ) );
  DFFRQX2M \u_Reg_File_reg[15][6]  ( .D(n48), .CK(CLK), .RN(n291), .Q(
        \u_Reg_File[15][6] ) );
  DFFRQX2M \u_Reg_File_reg[15][5]  ( .D(n47), .CK(CLK), .RN(n291), .Q(
        \u_Reg_File[15][5] ) );
  DFFRQX2M \u_Reg_File_reg[15][4]  ( .D(n46), .CK(CLK), .RN(n291), .Q(
        \u_Reg_File[15][4] ) );
  DFFRQX2M \u_Reg_File_reg[15][3]  ( .D(n45), .CK(CLK), .RN(n291), .Q(
        \u_Reg_File[15][3] ) );
  DFFRQX2M \u_Reg_File_reg[15][2]  ( .D(n44), .CK(CLK), .RN(n291), .Q(
        \u_Reg_File[15][2] ) );
  DFFRQX2M \u_Reg_File_reg[15][1]  ( .D(n43), .CK(CLK), .RN(n291), .Q(
        \u_Reg_File[15][1] ) );
  DFFRQX2M \u_Reg_File_reg[15][0]  ( .D(n42), .CK(CLK), .RN(n295), .Q(
        \u_Reg_File[15][0] ) );
  DFFRQX2M \u_Reg_File_reg[2][4]  ( .D(n150), .CK(CLK), .RN(n298), .Q(REG2[4])
         );
  DFFRQX2M \u_Reg_File_reg[2][3]  ( .D(n149), .CK(CLK), .RN(n298), .Q(REG2[3])
         );
  DFFRQX2M \u_Reg_File_reg[2][2]  ( .D(n148), .CK(CLK), .RN(n298), .Q(REG2[2])
         );
  DFFRQX2M \u_Reg_File_reg[4][7]  ( .D(n137), .CK(CLK), .RN(n297), .Q(
        \u_Reg_File[4][7] ) );
  DFFRQX2M \u_Reg_File_reg[4][6]  ( .D(n136), .CK(CLK), .RN(n297), .Q(
        \u_Reg_File[4][6] ) );
  DFFRQX2M \u_Reg_File_reg[4][5]  ( .D(n135), .CK(CLK), .RN(n297), .Q(
        \u_Reg_File[4][5] ) );
  DFFRQX2M \u_Reg_File_reg[4][4]  ( .D(n134), .CK(CLK), .RN(n297), .Q(
        \u_Reg_File[4][4] ) );
  DFFRQX2M \u_Reg_File_reg[4][3]  ( .D(n133), .CK(CLK), .RN(n297), .Q(
        \u_Reg_File[4][3] ) );
  DFFRQX2M \u_Reg_File_reg[4][2]  ( .D(n132), .CK(CLK), .RN(n297), .Q(
        \u_Reg_File[4][2] ) );
  DFFRQX2M \u_Reg_File_reg[4][1]  ( .D(n131), .CK(CLK), .RN(n297), .Q(
        \u_Reg_File[4][1] ) );
  DFFRQX2M \u_Reg_File_reg[4][0]  ( .D(n130), .CK(CLK), .RN(n297), .Q(
        \u_Reg_File[4][0] ) );
  DFFRQX2M \u_Reg_File_reg[6][7]  ( .D(n121), .CK(CLK), .RN(n296), .Q(
        \u_Reg_File[6][7] ) );
  DFFRQX2M \u_Reg_File_reg[6][6]  ( .D(n120), .CK(CLK), .RN(n296), .Q(
        \u_Reg_File[6][6] ) );
  DFFRQX2M \u_Reg_File_reg[6][5]  ( .D(n119), .CK(CLK), .RN(n296), .Q(
        \u_Reg_File[6][5] ) );
  DFFRQX2M \u_Reg_File_reg[6][4]  ( .D(n118), .CK(CLK), .RN(n296), .Q(
        \u_Reg_File[6][4] ) );
  DFFRQX2M \u_Reg_File_reg[6][3]  ( .D(n117), .CK(CLK), .RN(n296), .Q(
        \u_Reg_File[6][3] ) );
  DFFRQX2M \u_Reg_File_reg[6][2]  ( .D(n116), .CK(CLK), .RN(n296), .Q(
        \u_Reg_File[6][2] ) );
  DFFRQX2M \u_Reg_File_reg[6][1]  ( .D(n115), .CK(CLK), .RN(n296), .Q(
        \u_Reg_File[6][1] ) );
  DFFRQX2M \u_Reg_File_reg[6][0]  ( .D(n114), .CK(CLK), .RN(n296), .Q(
        \u_Reg_File[6][0] ) );
  DFFRQX2M \u_Reg_File_reg[8][7]  ( .D(n105), .CK(CLK), .RN(n295), .Q(
        \u_Reg_File[8][7] ) );
  DFFRQX2M \u_Reg_File_reg[8][6]  ( .D(n104), .CK(CLK), .RN(n295), .Q(
        \u_Reg_File[8][6] ) );
  DFFRQX2M \u_Reg_File_reg[8][5]  ( .D(n103), .CK(CLK), .RN(n295), .Q(
        \u_Reg_File[8][5] ) );
  DFFRQX2M \u_Reg_File_reg[8][4]  ( .D(n102), .CK(CLK), .RN(n295), .Q(
        \u_Reg_File[8][4] ) );
  DFFRQX2M \u_Reg_File_reg[8][3]  ( .D(n101), .CK(CLK), .RN(n295), .Q(
        \u_Reg_File[8][3] ) );
  DFFRQX2M \u_Reg_File_reg[8][2]  ( .D(n100), .CK(CLK), .RN(n295), .Q(
        \u_Reg_File[8][2] ) );
  DFFRQX2M \u_Reg_File_reg[8][1]  ( .D(n99), .CK(CLK), .RN(n295), .Q(
        \u_Reg_File[8][1] ) );
  DFFRQX2M \u_Reg_File_reg[8][0]  ( .D(n98), .CK(CLK), .RN(n295), .Q(
        \u_Reg_File[8][0] ) );
  DFFRQX2M \u_Reg_File_reg[10][7]  ( .D(n89), .CK(CLK), .RN(n294), .Q(
        \u_Reg_File[10][7] ) );
  DFFRQX2M \u_Reg_File_reg[10][6]  ( .D(n88), .CK(CLK), .RN(n294), .Q(
        \u_Reg_File[10][6] ) );
  DFFRQX2M \u_Reg_File_reg[10][5]  ( .D(n87), .CK(CLK), .RN(n294), .Q(
        \u_Reg_File[10][5] ) );
  DFFRQX2M \u_Reg_File_reg[10][4]  ( .D(n86), .CK(CLK), .RN(n294), .Q(
        \u_Reg_File[10][4] ) );
  DFFRQX2M \u_Reg_File_reg[10][3]  ( .D(n85), .CK(CLK), .RN(n294), .Q(
        \u_Reg_File[10][3] ) );
  DFFRQX2M \u_Reg_File_reg[10][2]  ( .D(n84), .CK(CLK), .RN(n294), .Q(
        \u_Reg_File[10][2] ) );
  DFFRQX2M \u_Reg_File_reg[10][1]  ( .D(n83), .CK(CLK), .RN(n294), .Q(
        \u_Reg_File[10][1] ) );
  DFFRQX2M \u_Reg_File_reg[10][0]  ( .D(n82), .CK(CLK), .RN(n294), .Q(
        \u_Reg_File[10][0] ) );
  DFFRQX2M \u_Reg_File_reg[12][7]  ( .D(n73), .CK(CLK), .RN(n293), .Q(
        \u_Reg_File[12][7] ) );
  DFFRQX2M \u_Reg_File_reg[12][6]  ( .D(n72), .CK(CLK), .RN(n293), .Q(
        \u_Reg_File[12][6] ) );
  DFFRQX2M \u_Reg_File_reg[12][5]  ( .D(n71), .CK(CLK), .RN(n293), .Q(
        \u_Reg_File[12][5] ) );
  DFFRQX2M \u_Reg_File_reg[12][4]  ( .D(n70), .CK(CLK), .RN(n293), .Q(
        \u_Reg_File[12][4] ) );
  DFFRQX2M \u_Reg_File_reg[12][3]  ( .D(n69), .CK(CLK), .RN(n293), .Q(
        \u_Reg_File[12][3] ) );
  DFFRQX2M \u_Reg_File_reg[12][2]  ( .D(n68), .CK(CLK), .RN(n293), .Q(
        \u_Reg_File[12][2] ) );
  DFFRQX2M \u_Reg_File_reg[12][1]  ( .D(n67), .CK(CLK), .RN(n293), .Q(
        \u_Reg_File[12][1] ) );
  DFFRQX2M \u_Reg_File_reg[12][0]  ( .D(n66), .CK(CLK), .RN(n292), .Q(
        \u_Reg_File[12][0] ) );
  DFFRQX2M \u_Reg_File_reg[14][7]  ( .D(n57), .CK(CLK), .RN(n292), .Q(
        \u_Reg_File[14][7] ) );
  DFFRQX2M \u_Reg_File_reg[14][6]  ( .D(n56), .CK(CLK), .RN(n292), .Q(
        \u_Reg_File[14][6] ) );
  DFFRQX2M \u_Reg_File_reg[14][5]  ( .D(n55), .CK(CLK), .RN(n292), .Q(
        \u_Reg_File[14][5] ) );
  DFFRQX2M \u_Reg_File_reg[14][4]  ( .D(n54), .CK(CLK), .RN(n292), .Q(
        \u_Reg_File[14][4] ) );
  DFFRQX2M \u_Reg_File_reg[14][3]  ( .D(n53), .CK(CLK), .RN(n292), .Q(
        \u_Reg_File[14][3] ) );
  DFFRQX2M \u_Reg_File_reg[14][2]  ( .D(n52), .CK(CLK), .RN(n292), .Q(
        \u_Reg_File[14][2] ) );
  DFFRQX2M \u_Reg_File_reg[14][1]  ( .D(n51), .CK(CLK), .RN(n291), .Q(
        \u_Reg_File[14][1] ) );
  DFFRQX2M \u_Reg_File_reg[14][0]  ( .D(n50), .CK(CLK), .RN(n291), .Q(
        \u_Reg_File[14][0] ) );
  DFFRQX2M \u_Reg_File_reg[3][0]  ( .D(n138), .CK(CLK), .RN(n297), .Q(REG3[0])
         );
  DFFRQX2M \RdData_reg[7]  ( .D(n177), .CK(CLK), .RN(n300), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n176), .CK(CLK), .RN(n300), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n175), .CK(CLK), .RN(n299), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n174), .CK(CLK), .RN(n299), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n173), .CK(CLK), .RN(n299), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n172), .CK(CLK), .RN(n299), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n171), .CK(CLK), .RN(n299), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n170), .CK(CLK), .RN(n299), .Q(RdData[0]) );
  DFFRQX2M \u_Reg_File_reg[2][1]  ( .D(n147), .CK(CLK), .RN(n298), .Q(REG2[1])
         );
  DFFRQX2M \u_Reg_File_reg[3][2]  ( .D(n140), .CK(CLK), .RN(n297), .Q(REG3[2])
         );
  DFFRQX2M \u_Reg_File_reg[3][3]  ( .D(n141), .CK(CLK), .RN(n298), .Q(REG3[3])
         );
  DFFRQX2M \u_Reg_File_reg[3][4]  ( .D(n142), .CK(CLK), .RN(n298), .Q(REG3[4])
         );
  DFFSQX2M \u_Reg_File_reg[2][7]  ( .D(n153), .CK(CLK), .SN(n291), .Q(REG2[7])
         );
  DFFRQX2M \u_Reg_File_reg[2][6]  ( .D(n152), .CK(CLK), .RN(n298), .Q(REG2[6])
         );
  DFFRQX2M \u_Reg_File_reg[2][5]  ( .D(n151), .CK(CLK), .RN(n298), .Q(REG2[5])
         );
  DFFRQX2M \u_Reg_File_reg[3][7]  ( .D(n145), .CK(CLK), .RN(n298), .Q(REG3[7])
         );
  DFFRQX2M \u_Reg_File_reg[3][6]  ( .D(n144), .CK(CLK), .RN(n298), .Q(REG3[6])
         );
  DFFRQX2M RdData_valid_reg ( .D(n178), .CK(CLK), .RN(n291), .Q(RdData_valid)
         );
  DFFRQX2M \u_Reg_File_reg[3][1]  ( .D(n139), .CK(CLK), .RN(n297), .Q(REG3[1])
         );
  DFFSQX2M \u_Reg_File_reg[2][0]  ( .D(n146), .CK(CLK), .SN(n291), .Q(REG2[0])
         );
  DFFRHQX4M \u_Reg_File_reg[1][5]  ( .D(n159), .CK(CLK), .RN(n291), .Q(REG1[5]) );
  DFFRHQX4M \u_Reg_File_reg[1][7]  ( .D(n161), .CK(CLK), .RN(n291), .Q(REG1[7]) );
  DFFRHQX4M \u_Reg_File_reg[0][1]  ( .D(n163), .CK(CLK), .RN(n299), .Q(REG0[1]) );
  DFFRHQX1M \u_Reg_File_reg[0][2]  ( .D(n164), .CK(CLK), .RN(n299), .Q(REG0[2]) );
  DFFRHQX4M \u_Reg_File_reg[0][0]  ( .D(n162), .CK(CLK), .RN(n299), .Q(REG0[0]) );
  DFFRHQX4M \u_Reg_File_reg[0][7]  ( .D(n169), .CK(CLK), .RN(n299), .Q(REG0[7]) );
  DFFRHQX2M \u_Reg_File_reg[0][6]  ( .D(n168), .CK(CLK), .RN(n299), .Q(REG0[6]) );
  DFFRHQX2M \u_Reg_File_reg[0][5]  ( .D(n167), .CK(CLK), .RN(n299), .Q(REG0[5]) );
  DFFRHQX2M \u_Reg_File_reg[0][4]  ( .D(n166), .CK(CLK), .RN(n299), .Q(REG0[4]) );
  DFFRHQX2M \u_Reg_File_reg[1][4]  ( .D(n158), .CK(CLK), .RN(n298), .Q(REG1[4]) );
  DFFRHQX4M \u_Reg_File_reg[1][0]  ( .D(n154), .CK(CLK), .RN(n298), .Q(REG1[0]) );
  DFFRHQX2M \u_Reg_File_reg[0][3]  ( .D(n165), .CK(CLK), .RN(n299), .Q(REG0[3]) );
  DFFRHQX2M \u_Reg_File_reg[1][2]  ( .D(n156), .CK(CLK), .RN(n298), .Q(REG1[2]) );
  DFFRHQX4M \u_Reg_File_reg[1][1]  ( .D(n155), .CK(CLK), .RN(n298), .Q(REG1[1]) );
  DFFRHQX1M \u_Reg_File_reg[1][3]  ( .D(n157), .CK(CLK), .RN(n298), .Q(REG1[3]) );
  DFFRHQX4M \u_Reg_File_reg[1][6]  ( .D(n160), .CK(CLK), .RN(n299), .Q(REG1[6]) );
  INVXLM U3 ( .A(REG0[7]), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(n2) );
  INVXLM U5 ( .A(REG1[5]), .Y(n3) );
  INVX2M U6 ( .A(n3), .Y(n4) );
  INVXLM U7 ( .A(REG0[0]), .Y(n5) );
  INVX2M U8 ( .A(n5), .Y(n6) );
  NOR2X2M U9 ( .A(n308), .B(n306), .Y(n7) );
  NOR2X2M U10 ( .A(n308), .B(n307), .Y(n8) );
  AOI22XLM U11 ( .A0(REG0[3]), .A1(n287), .B0(REG1[3]), .B1(n285), .Y(n218) );
  INVXLM U12 ( .A(REG1[7]), .Y(n9) );
  INVX2M U13 ( .A(n9), .Y(n10) );
  AOI22XLM U14 ( .A0(REG0[2]), .A1(n287), .B0(REG1[2]), .B1(n285), .Y(n206) );
  NOR2X2M U15 ( .A(n279), .B(N14), .Y(n20) );
  INVX2M U16 ( .A(n281), .Y(n282) );
  NAND2X2M U17 ( .A(n15), .B(n16), .Y(n14) );
  BUFX2M U18 ( .A(n11), .Y(n281) );
  INVX2M U19 ( .A(n30), .Y(n307) );
  INVX2M U20 ( .A(n286), .Y(n287) );
  INVX2M U21 ( .A(n284), .Y(n285) );
  NAND2X2M U22 ( .A(n30), .B(n15), .Y(n29) );
  NOR2BX2M U23 ( .AN(n26), .B(n280), .Y(n16) );
  NAND2X2M U24 ( .A(n20), .B(n16), .Y(n19) );
  NAND2X2M U25 ( .A(n20), .B(n18), .Y(n21) );
  NAND2X2M U26 ( .A(n25), .B(n16), .Y(n24) );
  NAND2X2M U27 ( .A(n25), .B(n18), .Y(n27) );
  NAND2X2M U28 ( .A(n18), .B(n15), .Y(n17) );
  NOR2BX2M U29 ( .AN(n39), .B(n280), .Y(n30) );
  OR2X2M U30 ( .A(n319), .B(n280), .Y(n11) );
  INVX2M U31 ( .A(n32), .Y(n306) );
  BUFX2M U32 ( .A(n12), .Y(n286) );
  BUFX2M U33 ( .A(n38), .Y(n284) );
  INVX2M U34 ( .A(n13), .Y(n283) );
  NOR2X2M U35 ( .A(n279), .B(n319), .Y(n15) );
  NAND2X2M U36 ( .A(n30), .B(n20), .Y(n33) );
  NAND2X2M U37 ( .A(n32), .B(n20), .Y(n34) );
  NAND2X2M U38 ( .A(n32), .B(n15), .Y(n31) );
  INVX2M U39 ( .A(n25), .Y(n308) );
  NOR2BX2M U40 ( .AN(n26), .B(N13), .Y(n18) );
  NOR2BX2M U41 ( .AN(n39), .B(N13), .Y(n32) );
  OR2X2M U42 ( .A(N13), .B(N14), .Y(n12) );
  OR2X2M U43 ( .A(n319), .B(N13), .Y(n13) );
  OR2X2M U44 ( .A(n280), .B(N14), .Y(n38) );
  NOR2BX2M U45 ( .AN(n28), .B(N16), .Y(n39) );
  BUFX2M U46 ( .A(n23), .Y(n289) );
  NAND3X2M U47 ( .A(N14), .B(n279), .C(n18), .Y(n23) );
  BUFX2M U48 ( .A(n22), .Y(n290) );
  NAND3X2M U49 ( .A(N14), .B(n279), .C(n16), .Y(n22) );
  INVX2M U50 ( .A(N13), .Y(n280) );
  AND2X2M U51 ( .A(n28), .B(N16), .Y(n26) );
  NOR3X2M U52 ( .A(N15), .B(N16), .C(n319), .Y(n36) );
  NAND3X2M U53 ( .A(n28), .B(n280), .C(n36), .Y(n37) );
  INVX2M U54 ( .A(WrData[0]), .Y(n316) );
  INVX2M U55 ( .A(WrData[1]), .Y(n315) );
  INVX2M U56 ( .A(WrData[2]), .Y(n314) );
  INVX2M U57 ( .A(WrData[3]), .Y(n313) );
  INVX2M U58 ( .A(WrData[4]), .Y(n312) );
  INVX2M U59 ( .A(WrData[5]), .Y(n311) );
  INVX2M U60 ( .A(WrData[6]), .Y(n310) );
  INVX2M U61 ( .A(WrData[7]), .Y(n309) );
  NOR2X2M U62 ( .A(N14), .B(N15), .Y(n25) );
  INVX2M U63 ( .A(N14), .Y(n319) );
  BUFX2M U64 ( .A(n35), .Y(n288) );
  NAND3X2M U65 ( .A(N13), .B(n28), .C(n36), .Y(n35) );
  INVX2M U66 ( .A(n41), .Y(n317) );
  INVX2M U67 ( .A(N15), .Y(n279) );
  INVX2M U68 ( .A(N16), .Y(n278) );
  BUFX2M U69 ( .A(n305), .Y(n291) );
  BUFX2M U70 ( .A(n301), .Y(n299) );
  BUFX2M U71 ( .A(n305), .Y(n292) );
  BUFX2M U72 ( .A(n304), .Y(n293) );
  BUFX2M U73 ( .A(n304), .Y(n294) );
  BUFX2M U74 ( .A(n303), .Y(n295) );
  BUFX2M U75 ( .A(n303), .Y(n296) );
  BUFX2M U76 ( .A(n302), .Y(n297) );
  BUFX2M U77 ( .A(n302), .Y(n298) );
  BUFX2M U78 ( .A(n301), .Y(n300) );
  NOR2X2M U79 ( .A(n318), .B(RdEn), .Y(n28) );
  INVX2M U80 ( .A(WrEn), .Y(n318) );
  NAND2X2M U81 ( .A(RdEn), .B(n318), .Y(n41) );
  BUFX2M U82 ( .A(RST), .Y(n304) );
  BUFX2M U83 ( .A(RST), .Y(n303) );
  BUFX2M U84 ( .A(RST), .Y(n302) );
  BUFX2M U85 ( .A(RST), .Y(n301) );
  BUFX2M U86 ( .A(RST), .Y(n305) );
  AO22X1M U87 ( .A0(N74), .A1(n317), .B0(RdData[1]), .B1(n41), .Y(n171) );
  AO22X1M U88 ( .A0(N72), .A1(n317), .B0(RdData[3]), .B1(n41), .Y(n173) );
  AO22X1M U89 ( .A0(N70), .A1(n317), .B0(RdData[5]), .B1(n41), .Y(n175) );
  OAI2BB2X1M U90 ( .B0(n14), .B1(n316), .A0N(\u_Reg_File[15][0] ), .A1N(n14), 
        .Y(n42) );
  OAI2BB2X1M U91 ( .B0(n14), .B1(n315), .A0N(\u_Reg_File[15][1] ), .A1N(n14), 
        .Y(n43) );
  OAI2BB2X1M U92 ( .B0(n14), .B1(n314), .A0N(\u_Reg_File[15][2] ), .A1N(n14), 
        .Y(n44) );
  OAI2BB2X1M U93 ( .B0(n14), .B1(n313), .A0N(\u_Reg_File[15][3] ), .A1N(n14), 
        .Y(n45) );
  OAI2BB2X1M U94 ( .B0(n14), .B1(n312), .A0N(\u_Reg_File[15][4] ), .A1N(n14), 
        .Y(n46) );
  OAI2BB2X1M U95 ( .B0(n14), .B1(n311), .A0N(\u_Reg_File[15][5] ), .A1N(n14), 
        .Y(n47) );
  OAI2BB2X1M U96 ( .B0(n14), .B1(n310), .A0N(\u_Reg_File[15][6] ), .A1N(n14), 
        .Y(n48) );
  OAI2BB2X1M U97 ( .B0(n14), .B1(n309), .A0N(\u_Reg_File[15][7] ), .A1N(n14), 
        .Y(n49) );
  OAI2BB2X1M U98 ( .B0(n316), .B1(n17), .A0N(\u_Reg_File[14][0] ), .A1N(n17), 
        .Y(n50) );
  OAI2BB2X1M U99 ( .B0(n315), .B1(n17), .A0N(\u_Reg_File[14][1] ), .A1N(n17), 
        .Y(n51) );
  OAI2BB2X1M U100 ( .B0(n314), .B1(n17), .A0N(\u_Reg_File[14][2] ), .A1N(n17), 
        .Y(n52) );
  OAI2BB2X1M U101 ( .B0(n313), .B1(n17), .A0N(\u_Reg_File[14][3] ), .A1N(n17), 
        .Y(n53) );
  OAI2BB2X1M U102 ( .B0(n312), .B1(n17), .A0N(\u_Reg_File[14][4] ), .A1N(n17), 
        .Y(n54) );
  OAI2BB2X1M U103 ( .B0(n311), .B1(n17), .A0N(\u_Reg_File[14][5] ), .A1N(n17), 
        .Y(n55) );
  OAI2BB2X1M U104 ( .B0(n310), .B1(n17), .A0N(\u_Reg_File[14][6] ), .A1N(n17), 
        .Y(n56) );
  OAI2BB2X1M U105 ( .B0(n309), .B1(n17), .A0N(\u_Reg_File[14][7] ), .A1N(n17), 
        .Y(n57) );
  OAI2BB2X1M U106 ( .B0(n316), .B1(n19), .A0N(\u_Reg_File[13][0] ), .A1N(n19), 
        .Y(n58) );
  OAI2BB2X1M U107 ( .B0(n315), .B1(n19), .A0N(\u_Reg_File[13][1] ), .A1N(n19), 
        .Y(n59) );
  OAI2BB2X1M U108 ( .B0(n314), .B1(n19), .A0N(\u_Reg_File[13][2] ), .A1N(n19), 
        .Y(n60) );
  OAI2BB2X1M U109 ( .B0(n313), .B1(n19), .A0N(\u_Reg_File[13][3] ), .A1N(n19), 
        .Y(n61) );
  OAI2BB2X1M U110 ( .B0(n312), .B1(n19), .A0N(\u_Reg_File[13][4] ), .A1N(n19), 
        .Y(n62) );
  OAI2BB2X1M U111 ( .B0(n311), .B1(n19), .A0N(\u_Reg_File[13][5] ), .A1N(n19), 
        .Y(n63) );
  OAI2BB2X1M U112 ( .B0(n310), .B1(n19), .A0N(\u_Reg_File[13][6] ), .A1N(n19), 
        .Y(n64) );
  OAI2BB2X1M U113 ( .B0(n309), .B1(n19), .A0N(\u_Reg_File[13][7] ), .A1N(n19), 
        .Y(n65) );
  OAI2BB2X1M U114 ( .B0(n316), .B1(n21), .A0N(\u_Reg_File[12][0] ), .A1N(n21), 
        .Y(n66) );
  OAI2BB2X1M U115 ( .B0(n315), .B1(n21), .A0N(\u_Reg_File[12][1] ), .A1N(n21), 
        .Y(n67) );
  OAI2BB2X1M U116 ( .B0(n314), .B1(n21), .A0N(\u_Reg_File[12][2] ), .A1N(n21), 
        .Y(n68) );
  OAI2BB2X1M U117 ( .B0(n313), .B1(n21), .A0N(\u_Reg_File[12][3] ), .A1N(n21), 
        .Y(n69) );
  OAI2BB2X1M U118 ( .B0(n312), .B1(n21), .A0N(\u_Reg_File[12][4] ), .A1N(n21), 
        .Y(n70) );
  OAI2BB2X1M U119 ( .B0(n311), .B1(n21), .A0N(\u_Reg_File[12][5] ), .A1N(n21), 
        .Y(n71) );
  OAI2BB2X1M U120 ( .B0(n310), .B1(n21), .A0N(\u_Reg_File[12][6] ), .A1N(n21), 
        .Y(n72) );
  OAI2BB2X1M U121 ( .B0(n309), .B1(n21), .A0N(\u_Reg_File[12][7] ), .A1N(n21), 
        .Y(n73) );
  OAI2BB2X1M U122 ( .B0(n316), .B1(n24), .A0N(\u_Reg_File[9][0] ), .A1N(n24), 
        .Y(n90) );
  OAI2BB2X1M U123 ( .B0(n315), .B1(n24), .A0N(\u_Reg_File[9][1] ), .A1N(n24), 
        .Y(n91) );
  OAI2BB2X1M U124 ( .B0(n314), .B1(n24), .A0N(\u_Reg_File[9][2] ), .A1N(n24), 
        .Y(n92) );
  OAI2BB2X1M U125 ( .B0(n313), .B1(n24), .A0N(\u_Reg_File[9][3] ), .A1N(n24), 
        .Y(n93) );
  OAI2BB2X1M U126 ( .B0(n312), .B1(n24), .A0N(\u_Reg_File[9][4] ), .A1N(n24), 
        .Y(n94) );
  OAI2BB2X1M U127 ( .B0(n311), .B1(n24), .A0N(\u_Reg_File[9][5] ), .A1N(n24), 
        .Y(n95) );
  OAI2BB2X1M U128 ( .B0(n310), .B1(n24), .A0N(\u_Reg_File[9][6] ), .A1N(n24), 
        .Y(n96) );
  OAI2BB2X1M U129 ( .B0(n309), .B1(n24), .A0N(\u_Reg_File[9][7] ), .A1N(n24), 
        .Y(n97) );
  OAI2BB2X1M U130 ( .B0(n316), .B1(n27), .A0N(\u_Reg_File[8][0] ), .A1N(n27), 
        .Y(n98) );
  OAI2BB2X1M U131 ( .B0(n315), .B1(n27), .A0N(\u_Reg_File[8][1] ), .A1N(n27), 
        .Y(n99) );
  OAI2BB2X1M U132 ( .B0(n314), .B1(n27), .A0N(\u_Reg_File[8][2] ), .A1N(n27), 
        .Y(n100) );
  OAI2BB2X1M U133 ( .B0(n313), .B1(n27), .A0N(\u_Reg_File[8][3] ), .A1N(n27), 
        .Y(n101) );
  OAI2BB2X1M U134 ( .B0(n312), .B1(n27), .A0N(\u_Reg_File[8][4] ), .A1N(n27), 
        .Y(n102) );
  OAI2BB2X1M U135 ( .B0(n311), .B1(n27), .A0N(\u_Reg_File[8][5] ), .A1N(n27), 
        .Y(n103) );
  OAI2BB2X1M U136 ( .B0(n310), .B1(n27), .A0N(\u_Reg_File[8][6] ), .A1N(n27), 
        .Y(n104) );
  OAI2BB2X1M U137 ( .B0(n309), .B1(n27), .A0N(\u_Reg_File[8][7] ), .A1N(n27), 
        .Y(n105) );
  OAI2BB2X1M U138 ( .B0(n316), .B1(n290), .A0N(\u_Reg_File[11][0] ), .A1N(n290), .Y(n74) );
  OAI2BB2X1M U139 ( .B0(n315), .B1(n290), .A0N(\u_Reg_File[11][1] ), .A1N(n290), .Y(n75) );
  OAI2BB2X1M U140 ( .B0(n314), .B1(n290), .A0N(\u_Reg_File[11][2] ), .A1N(n290), .Y(n76) );
  OAI2BB2X1M U141 ( .B0(n313), .B1(n290), .A0N(\u_Reg_File[11][3] ), .A1N(n290), .Y(n77) );
  OAI2BB2X1M U142 ( .B0(n312), .B1(n290), .A0N(\u_Reg_File[11][4] ), .A1N(n290), .Y(n78) );
  OAI2BB2X1M U143 ( .B0(n311), .B1(n290), .A0N(\u_Reg_File[11][5] ), .A1N(n290), .Y(n79) );
  OAI2BB2X1M U144 ( .B0(n310), .B1(n290), .A0N(\u_Reg_File[11][6] ), .A1N(n290), .Y(n80) );
  OAI2BB2X1M U145 ( .B0(n309), .B1(n290), .A0N(\u_Reg_File[11][7] ), .A1N(n290), .Y(n81) );
  OAI2BB2X1M U146 ( .B0(n316), .B1(n289), .A0N(\u_Reg_File[10][0] ), .A1N(n289), .Y(n82) );
  OAI2BB2X1M U147 ( .B0(n315), .B1(n289), .A0N(\u_Reg_File[10][1] ), .A1N(n289), .Y(n83) );
  OAI2BB2X1M U148 ( .B0(n314), .B1(n289), .A0N(\u_Reg_File[10][2] ), .A1N(n289), .Y(n84) );
  OAI2BB2X1M U149 ( .B0(n313), .B1(n289), .A0N(\u_Reg_File[10][3] ), .A1N(n289), .Y(n85) );
  OAI2BB2X1M U150 ( .B0(n312), .B1(n289), .A0N(\u_Reg_File[10][4] ), .A1N(n289), .Y(n86) );
  OAI2BB2X1M U151 ( .B0(n311), .B1(n289), .A0N(\u_Reg_File[10][5] ), .A1N(n289), .Y(n87) );
  OAI2BB2X1M U152 ( .B0(n310), .B1(n289), .A0N(\u_Reg_File[10][6] ), .A1N(n289), .Y(n88) );
  OAI2BB2X1M U153 ( .B0(n309), .B1(n289), .A0N(\u_Reg_File[10][7] ), .A1N(n289), .Y(n89) );
  MX2XLM U154 ( .A(REG1[0]), .B(WrData[0]), .S0(n8), .Y(n154) );
  MX2XLM U155 ( .A(REG1[1]), .B(WrData[1]), .S0(n8), .Y(n155) );
  MX2XLM U156 ( .A(REG1[2]), .B(WrData[2]), .S0(n8), .Y(n156) );
  MX2XLM U157 ( .A(REG1[3]), .B(WrData[3]), .S0(n8), .Y(n157) );
  MX2XLM U158 ( .A(REG1[4]), .B(WrData[4]), .S0(n8), .Y(n158) );
  MX2XLM U159 ( .A(REG0[2]), .B(WrData[2]), .S0(n7), .Y(n164) );
  MX2XLM U160 ( .A(REG0[3]), .B(WrData[3]), .S0(n7), .Y(n165) );
  MX2XLM U161 ( .A(REG0[4]), .B(WrData[4]), .S0(n7), .Y(n166) );
  MX2XLM U162 ( .A(REG0[5]), .B(WrData[5]), .S0(n7), .Y(n167) );
  MX2XLM U163 ( .A(REG0[6]), .B(WrData[6]), .S0(n7), .Y(n168) );
  MX2XLM U164 ( .A(REG0[1]), .B(WrData[1]), .S0(n7), .Y(n163) );
  AO22X1M U165 ( .A0(N75), .A1(n317), .B0(RdData[0]), .B1(n41), .Y(n170) );
  AO22X1M U166 ( .A0(N73), .A1(n317), .B0(RdData[2]), .B1(n41), .Y(n172) );
  AO22X1M U167 ( .A0(N71), .A1(n317), .B0(RdData[4]), .B1(n41), .Y(n174) );
  AO22X1M U168 ( .A0(N69), .A1(n317), .B0(RdData[6]), .B1(n41), .Y(n176) );
  AO22X1M U169 ( .A0(N68), .A1(n317), .B0(RdData[7]), .B1(n41), .Y(n177) );
  OAI2BB2X1M U170 ( .B0(n315), .B1(n37), .A0N(REG2[1]), .A1N(n37), .Y(n147) );
  OAI2BB2X1M U171 ( .B0(n314), .B1(n37), .A0N(REG2[2]), .A1N(n37), .Y(n148) );
  OAI2BB2X1M U172 ( .B0(n313), .B1(n37), .A0N(REG2[3]), .A1N(n37), .Y(n149) );
  OAI2BB2X1M U173 ( .B0(n312), .B1(n37), .A0N(REG2[4]), .A1N(n37), .Y(n150) );
  OAI2BB2X1M U174 ( .B0(n311), .B1(n37), .A0N(REG2[5]), .A1N(n37), .Y(n151) );
  OAI2BB2X1M U175 ( .B0(n310), .B1(n37), .A0N(REG2[6]), .A1N(n37), .Y(n152) );
  OAI2BB2X1M U176 ( .B0(n316), .B1(n37), .A0N(REG2[0]), .A1N(n37), .Y(n146) );
  OAI2BB2X1M U177 ( .B0(n309), .B1(n37), .A0N(REG2[7]), .A1N(n37), .Y(n153) );
  OAI2BB2X1M U178 ( .B0(n316), .B1(n29), .A0N(\u_Reg_File[7][0] ), .A1N(n29), 
        .Y(n106) );
  OAI2BB2X1M U179 ( .B0(n315), .B1(n29), .A0N(\u_Reg_File[7][1] ), .A1N(n29), 
        .Y(n107) );
  OAI2BB2X1M U180 ( .B0(n314), .B1(n29), .A0N(\u_Reg_File[7][2] ), .A1N(n29), 
        .Y(n108) );
  OAI2BB2X1M U181 ( .B0(n313), .B1(n29), .A0N(\u_Reg_File[7][3] ), .A1N(n29), 
        .Y(n109) );
  OAI2BB2X1M U182 ( .B0(n312), .B1(n29), .A0N(\u_Reg_File[7][4] ), .A1N(n29), 
        .Y(n110) );
  OAI2BB2X1M U183 ( .B0(n311), .B1(n29), .A0N(\u_Reg_File[7][5] ), .A1N(n29), 
        .Y(n111) );
  OAI2BB2X1M U184 ( .B0(n310), .B1(n29), .A0N(\u_Reg_File[7][6] ), .A1N(n29), 
        .Y(n112) );
  OAI2BB2X1M U185 ( .B0(n309), .B1(n29), .A0N(\u_Reg_File[7][7] ), .A1N(n29), 
        .Y(n113) );
  OAI2BB2X1M U186 ( .B0(n316), .B1(n31), .A0N(\u_Reg_File[6][0] ), .A1N(n31), 
        .Y(n114) );
  OAI2BB2X1M U187 ( .B0(n315), .B1(n31), .A0N(\u_Reg_File[6][1] ), .A1N(n31), 
        .Y(n115) );
  OAI2BB2X1M U188 ( .B0(n314), .B1(n31), .A0N(\u_Reg_File[6][2] ), .A1N(n31), 
        .Y(n116) );
  OAI2BB2X1M U189 ( .B0(n313), .B1(n31), .A0N(\u_Reg_File[6][3] ), .A1N(n31), 
        .Y(n117) );
  OAI2BB2X1M U190 ( .B0(n312), .B1(n31), .A0N(\u_Reg_File[6][4] ), .A1N(n31), 
        .Y(n118) );
  OAI2BB2X1M U191 ( .B0(n311), .B1(n31), .A0N(\u_Reg_File[6][5] ), .A1N(n31), 
        .Y(n119) );
  OAI2BB2X1M U192 ( .B0(n310), .B1(n31), .A0N(\u_Reg_File[6][6] ), .A1N(n31), 
        .Y(n120) );
  OAI2BB2X1M U193 ( .B0(n309), .B1(n31), .A0N(\u_Reg_File[6][7] ), .A1N(n31), 
        .Y(n121) );
  OAI2BB2X1M U194 ( .B0(n316), .B1(n33), .A0N(\u_Reg_File[5][0] ), .A1N(n33), 
        .Y(n122) );
  OAI2BB2X1M U195 ( .B0(n315), .B1(n33), .A0N(\u_Reg_File[5][1] ), .A1N(n33), 
        .Y(n123) );
  OAI2BB2X1M U196 ( .B0(n314), .B1(n33), .A0N(\u_Reg_File[5][2] ), .A1N(n33), 
        .Y(n124) );
  OAI2BB2X1M U197 ( .B0(n313), .B1(n33), .A0N(\u_Reg_File[5][3] ), .A1N(n33), 
        .Y(n125) );
  OAI2BB2X1M U198 ( .B0(n312), .B1(n33), .A0N(\u_Reg_File[5][4] ), .A1N(n33), 
        .Y(n126) );
  OAI2BB2X1M U199 ( .B0(n311), .B1(n33), .A0N(\u_Reg_File[5][5] ), .A1N(n33), 
        .Y(n127) );
  OAI2BB2X1M U200 ( .B0(n310), .B1(n33), .A0N(\u_Reg_File[5][6] ), .A1N(n33), 
        .Y(n128) );
  OAI2BB2X1M U201 ( .B0(n309), .B1(n33), .A0N(\u_Reg_File[5][7] ), .A1N(n33), 
        .Y(n129) );
  OAI2BB2X1M U202 ( .B0(n316), .B1(n34), .A0N(\u_Reg_File[4][0] ), .A1N(n34), 
        .Y(n130) );
  OAI2BB2X1M U203 ( .B0(n315), .B1(n34), .A0N(\u_Reg_File[4][1] ), .A1N(n34), 
        .Y(n131) );
  OAI2BB2X1M U204 ( .B0(n314), .B1(n34), .A0N(\u_Reg_File[4][2] ), .A1N(n34), 
        .Y(n132) );
  OAI2BB2X1M U205 ( .B0(n313), .B1(n34), .A0N(\u_Reg_File[4][3] ), .A1N(n34), 
        .Y(n133) );
  OAI2BB2X1M U206 ( .B0(n312), .B1(n34), .A0N(\u_Reg_File[4][4] ), .A1N(n34), 
        .Y(n134) );
  OAI2BB2X1M U207 ( .B0(n311), .B1(n34), .A0N(\u_Reg_File[4][5] ), .A1N(n34), 
        .Y(n135) );
  OAI2BB2X1M U208 ( .B0(n310), .B1(n34), .A0N(\u_Reg_File[4][6] ), .A1N(n34), 
        .Y(n136) );
  OAI2BB2X1M U209 ( .B0(n309), .B1(n34), .A0N(\u_Reg_File[4][7] ), .A1N(n34), 
        .Y(n137) );
  OAI2BB2X1M U210 ( .B0(n316), .B1(n288), .A0N(REG3[0]), .A1N(n288), .Y(n138)
         );
  OAI2BB2X1M U211 ( .B0(n315), .B1(n288), .A0N(REG3[1]), .A1N(n288), .Y(n139)
         );
  OAI2BB2X1M U212 ( .B0(n314), .B1(n288), .A0N(REG3[2]), .A1N(n288), .Y(n140)
         );
  OAI2BB2X1M U213 ( .B0(n313), .B1(n288), .A0N(REG3[3]), .A1N(n288), .Y(n141)
         );
  OAI2BB2X1M U214 ( .B0(n312), .B1(n288), .A0N(REG3[4]), .A1N(n288), .Y(n142)
         );
  OAI2BB2X1M U215 ( .B0(n310), .B1(n288), .A0N(REG3[6]), .A1N(n288), .Y(n144)
         );
  OAI2BB2X1M U216 ( .B0(n309), .B1(n288), .A0N(REG3[7]), .A1N(n288), .Y(n145)
         );
  OAI2BB2X1M U217 ( .B0(n311), .B1(n288), .A0N(REG3[5]), .A1N(n288), .Y(n143)
         );
  OAI2BB1X2M U218 ( .A0N(RdData_valid), .A1N(n28), .B0(n41), .Y(n178) );
  AOI22X1M U219 ( .A0(\u_Reg_File[10][0] ), .A1(n283), .B0(\u_Reg_File[11][0] ), .B1(n282), .Y(n179) );
  AOI22X1M U220 ( .A0(\u_Reg_File[8][0] ), .A1(n287), .B0(\u_Reg_File[9][0] ), 
        .B1(n285), .Y(n40) );
  CLKNAND2X2M U221 ( .A(N16), .B(n279), .Y(n262) );
  AOI21X1M U222 ( .A0(n179), .A1(n40), .B0(n262), .Y(n189) );
  AOI22X1M U223 ( .A0(\u_Reg_File[14][0] ), .A1(n283), .B0(\u_Reg_File[15][0] ), .B1(n282), .Y(n181) );
  AOI22X1M U224 ( .A0(\u_Reg_File[12][0] ), .A1(n287), .B0(\u_Reg_File[13][0] ), .B1(n285), .Y(n180) );
  CLKNAND2X2M U225 ( .A(N16), .B(N15), .Y(n265) );
  AOI21X1M U226 ( .A0(n181), .A1(n180), .B0(n265), .Y(n188) );
  AOI22X1M U227 ( .A0(REG2[0]), .A1(n283), .B0(REG3[0]), .B1(n282), .Y(n183)
         );
  CLKNAND2X2M U228 ( .A(n279), .B(n278), .Y(n268) );
  AOI21X1M U229 ( .A0(n183), .A1(n182), .B0(n268), .Y(n187) );
  AOI22X1M U230 ( .A0(\u_Reg_File[6][0] ), .A1(n283), .B0(\u_Reg_File[7][0] ), 
        .B1(n282), .Y(n185) );
  AOI22X1M U231 ( .A0(\u_Reg_File[4][0] ), .A1(n287), .B0(\u_Reg_File[5][0] ), 
        .B1(n285), .Y(n184) );
  CLKNAND2X2M U232 ( .A(N15), .B(n278), .Y(n271) );
  AOI21X1M U233 ( .A0(n185), .A1(n184), .B0(n271), .Y(n186) );
  OR4X1M U234 ( .A(n189), .B(n188), .C(n187), .D(n186), .Y(N75) );
  AOI22X1M U235 ( .A0(\u_Reg_File[10][1] ), .A1(n283), .B0(\u_Reg_File[11][1] ), .B1(n282), .Y(n191) );
  AOI22X1M U236 ( .A0(\u_Reg_File[8][1] ), .A1(n287), .B0(\u_Reg_File[9][1] ), 
        .B1(n285), .Y(n190) );
  AOI21X1M U237 ( .A0(n191), .A1(n190), .B0(n262), .Y(n201) );
  AOI22X1M U238 ( .A0(\u_Reg_File[14][1] ), .A1(n283), .B0(\u_Reg_File[15][1] ), .B1(n282), .Y(n193) );
  AOI22X1M U239 ( .A0(\u_Reg_File[12][1] ), .A1(n287), .B0(\u_Reg_File[13][1] ), .B1(n285), .Y(n192) );
  AOI21X1M U240 ( .A0(n193), .A1(n192), .B0(n265), .Y(n200) );
  AOI22X1M U241 ( .A0(REG2[1]), .A1(n283), .B0(REG3[1]), .B1(n282), .Y(n195)
         );
  AOI21X1M U242 ( .A0(n195), .A1(n194), .B0(n268), .Y(n199) );
  AOI22X1M U243 ( .A0(\u_Reg_File[6][1] ), .A1(n283), .B0(\u_Reg_File[7][1] ), 
        .B1(n282), .Y(n197) );
  AOI22X1M U244 ( .A0(\u_Reg_File[4][1] ), .A1(n287), .B0(\u_Reg_File[5][1] ), 
        .B1(n285), .Y(n196) );
  AOI21X1M U245 ( .A0(n197), .A1(n196), .B0(n271), .Y(n198) );
  OR4X1M U246 ( .A(n201), .B(n200), .C(n199), .D(n198), .Y(N74) );
  AOI22X1M U247 ( .A0(\u_Reg_File[10][2] ), .A1(n283), .B0(\u_Reg_File[11][2] ), .B1(n282), .Y(n203) );
  AOI22X1M U248 ( .A0(\u_Reg_File[8][2] ), .A1(n287), .B0(\u_Reg_File[9][2] ), 
        .B1(n285), .Y(n202) );
  AOI21X1M U249 ( .A0(n203), .A1(n202), .B0(n262), .Y(n213) );
  AOI22X1M U250 ( .A0(\u_Reg_File[14][2] ), .A1(n283), .B0(\u_Reg_File[15][2] ), .B1(n282), .Y(n205) );
  AOI22X1M U251 ( .A0(\u_Reg_File[12][2] ), .A1(n287), .B0(\u_Reg_File[13][2] ), .B1(n285), .Y(n204) );
  AOI21X1M U252 ( .A0(n205), .A1(n204), .B0(n265), .Y(n212) );
  AOI22X1M U253 ( .A0(REG2[2]), .A1(n283), .B0(REG3[2]), .B1(n282), .Y(n207)
         );
  AOI21X1M U254 ( .A0(n207), .A1(n206), .B0(n268), .Y(n211) );
  AOI22X1M U255 ( .A0(\u_Reg_File[6][2] ), .A1(n283), .B0(\u_Reg_File[7][2] ), 
        .B1(n282), .Y(n209) );
  AOI22X1M U256 ( .A0(\u_Reg_File[4][2] ), .A1(n287), .B0(\u_Reg_File[5][2] ), 
        .B1(n285), .Y(n208) );
  AOI21X1M U257 ( .A0(n209), .A1(n208), .B0(n271), .Y(n210) );
  OR4X1M U258 ( .A(n213), .B(n212), .C(n211), .D(n210), .Y(N73) );
  AOI22X1M U259 ( .A0(\u_Reg_File[10][3] ), .A1(n283), .B0(\u_Reg_File[11][3] ), .B1(n282), .Y(n215) );
  AOI22X1M U260 ( .A0(\u_Reg_File[8][3] ), .A1(n287), .B0(\u_Reg_File[9][3] ), 
        .B1(n285), .Y(n214) );
  AOI21X1M U261 ( .A0(n215), .A1(n214), .B0(n262), .Y(n225) );
  AOI22X1M U262 ( .A0(\u_Reg_File[14][3] ), .A1(n283), .B0(\u_Reg_File[15][3] ), .B1(n282), .Y(n217) );
  AOI22X1M U263 ( .A0(\u_Reg_File[12][3] ), .A1(n287), .B0(\u_Reg_File[13][3] ), .B1(n285), .Y(n216) );
  AOI21X1M U264 ( .A0(n217), .A1(n216), .B0(n265), .Y(n224) );
  AOI22X1M U265 ( .A0(REG2[3]), .A1(n283), .B0(REG3[3]), .B1(n282), .Y(n219)
         );
  AOI21X1M U266 ( .A0(n219), .A1(n218), .B0(n268), .Y(n223) );
  AOI22X1M U267 ( .A0(\u_Reg_File[6][3] ), .A1(n283), .B0(\u_Reg_File[7][3] ), 
        .B1(n282), .Y(n221) );
  AOI22X1M U268 ( .A0(\u_Reg_File[4][3] ), .A1(n287), .B0(\u_Reg_File[5][3] ), 
        .B1(n285), .Y(n220) );
  AOI21X1M U269 ( .A0(n221), .A1(n220), .B0(n271), .Y(n222) );
  OR4X1M U270 ( .A(n225), .B(n224), .C(n223), .D(n222), .Y(N72) );
  AOI22X1M U271 ( .A0(\u_Reg_File[10][4] ), .A1(n283), .B0(\u_Reg_File[11][4] ), .B1(n282), .Y(n227) );
  AOI22X1M U272 ( .A0(\u_Reg_File[8][4] ), .A1(n287), .B0(\u_Reg_File[9][4] ), 
        .B1(n285), .Y(n226) );
  AOI21X1M U273 ( .A0(n227), .A1(n226), .B0(n262), .Y(n237) );
  AOI22X1M U274 ( .A0(\u_Reg_File[14][4] ), .A1(n283), .B0(\u_Reg_File[15][4] ), .B1(n282), .Y(n229) );
  AOI22X1M U275 ( .A0(\u_Reg_File[12][4] ), .A1(n287), .B0(\u_Reg_File[13][4] ), .B1(n285), .Y(n228) );
  AOI21X1M U276 ( .A0(n229), .A1(n228), .B0(n265), .Y(n236) );
  AOI22X1M U277 ( .A0(REG2[4]), .A1(n283), .B0(REG3[4]), .B1(n282), .Y(n231)
         );
  AOI22X1M U278 ( .A0(REG0[4]), .A1(n287), .B0(REG1[4]), .B1(n285), .Y(n230)
         );
  AOI21X1M U279 ( .A0(n231), .A1(n230), .B0(n268), .Y(n235) );
  AOI22X1M U280 ( .A0(\u_Reg_File[6][4] ), .A1(n283), .B0(\u_Reg_File[7][4] ), 
        .B1(n282), .Y(n233) );
  AOI22X1M U281 ( .A0(\u_Reg_File[4][4] ), .A1(n287), .B0(\u_Reg_File[5][4] ), 
        .B1(n285), .Y(n232) );
  AOI21X1M U282 ( .A0(n233), .A1(n232), .B0(n271), .Y(n234) );
  OR4X1M U283 ( .A(n237), .B(n236), .C(n235), .D(n234), .Y(N71) );
  AOI22X1M U284 ( .A0(\u_Reg_File[10][5] ), .A1(n283), .B0(\u_Reg_File[11][5] ), .B1(n282), .Y(n239) );
  AOI22X1M U285 ( .A0(\u_Reg_File[8][5] ), .A1(n287), .B0(\u_Reg_File[9][5] ), 
        .B1(n285), .Y(n238) );
  AOI21X1M U286 ( .A0(n239), .A1(n238), .B0(n262), .Y(n249) );
  AOI22X1M U287 ( .A0(\u_Reg_File[14][5] ), .A1(n283), .B0(\u_Reg_File[15][5] ), .B1(n282), .Y(n241) );
  AOI22X1M U288 ( .A0(\u_Reg_File[12][5] ), .A1(n287), .B0(\u_Reg_File[13][5] ), .B1(n285), .Y(n240) );
  AOI21X1M U289 ( .A0(n241), .A1(n240), .B0(n265), .Y(n248) );
  AOI22X1M U290 ( .A0(REG2[5]), .A1(n283), .B0(REG3[5]), .B1(n282), .Y(n243)
         );
  AOI21X1M U291 ( .A0(n243), .A1(n242), .B0(n268), .Y(n247) );
  AOI22X1M U292 ( .A0(\u_Reg_File[6][5] ), .A1(n283), .B0(\u_Reg_File[7][5] ), 
        .B1(n282), .Y(n245) );
  AOI22X1M U293 ( .A0(\u_Reg_File[4][5] ), .A1(n287), .B0(\u_Reg_File[5][5] ), 
        .B1(n285), .Y(n244) );
  AOI21X1M U294 ( .A0(n245), .A1(n244), .B0(n271), .Y(n246) );
  OR4X1M U295 ( .A(n249), .B(n248), .C(n247), .D(n246), .Y(N70) );
  AOI22X1M U296 ( .A0(\u_Reg_File[10][6] ), .A1(n283), .B0(\u_Reg_File[11][6] ), .B1(n282), .Y(n251) );
  AOI22X1M U297 ( .A0(\u_Reg_File[8][6] ), .A1(n287), .B0(\u_Reg_File[9][6] ), 
        .B1(n285), .Y(n250) );
  AOI21X1M U298 ( .A0(n251), .A1(n250), .B0(n262), .Y(n261) );
  AOI22X1M U299 ( .A0(\u_Reg_File[14][6] ), .A1(n283), .B0(\u_Reg_File[15][6] ), .B1(n282), .Y(n253) );
  AOI22X1M U300 ( .A0(\u_Reg_File[12][6] ), .A1(n287), .B0(\u_Reg_File[13][6] ), .B1(n285), .Y(n252) );
  AOI21X1M U301 ( .A0(n253), .A1(n252), .B0(n265), .Y(n260) );
  AOI22X1M U302 ( .A0(REG2[6]), .A1(n283), .B0(REG3[6]), .B1(n282), .Y(n255)
         );
  AOI21X1M U303 ( .A0(n255), .A1(n254), .B0(n268), .Y(n259) );
  AOI22X1M U304 ( .A0(\u_Reg_File[6][6] ), .A1(n283), .B0(\u_Reg_File[7][6] ), 
        .B1(n282), .Y(n257) );
  AOI22X1M U305 ( .A0(\u_Reg_File[4][6] ), .A1(n287), .B0(\u_Reg_File[5][6] ), 
        .B1(n285), .Y(n256) );
  AOI21X1M U306 ( .A0(n257), .A1(n256), .B0(n271), .Y(n258) );
  OR4X1M U307 ( .A(n261), .B(n260), .C(n259), .D(n258), .Y(N69) );
  AOI22X1M U308 ( .A0(\u_Reg_File[10][7] ), .A1(n283), .B0(\u_Reg_File[11][7] ), .B1(n282), .Y(n264) );
  AOI22X1M U309 ( .A0(\u_Reg_File[8][7] ), .A1(n287), .B0(\u_Reg_File[9][7] ), 
        .B1(n285), .Y(n263) );
  AOI21X1M U310 ( .A0(n264), .A1(n263), .B0(n262), .Y(n277) );
  AOI22X1M U311 ( .A0(\u_Reg_File[14][7] ), .A1(n283), .B0(\u_Reg_File[15][7] ), .B1(n282), .Y(n267) );
  AOI22X1M U312 ( .A0(\u_Reg_File[12][7] ), .A1(n287), .B0(\u_Reg_File[13][7] ), .B1(n285), .Y(n266) );
  AOI21X1M U313 ( .A0(n267), .A1(n266), .B0(n265), .Y(n276) );
  AOI22X1M U314 ( .A0(REG2[7]), .A1(n283), .B0(REG3[7]), .B1(n282), .Y(n270)
         );
  AOI21X1M U315 ( .A0(n270), .A1(n269), .B0(n268), .Y(n275) );
  AOI22X1M U316 ( .A0(\u_Reg_File[6][7] ), .A1(n283), .B0(\u_Reg_File[7][7] ), 
        .B1(n282), .Y(n273) );
  AOI22X1M U317 ( .A0(\u_Reg_File[4][7] ), .A1(n287), .B0(\u_Reg_File[5][7] ), 
        .B1(n285), .Y(n272) );
  AOI21X1M U318 ( .A0(n273), .A1(n272), .B0(n271), .Y(n274) );
  OR4X1M U319 ( .A(n277), .B(n276), .C(n275), .D(n274), .Y(N68) );
  AOI22XLM U320 ( .A0(n2), .A1(n287), .B0(n10), .B1(n285), .Y(n269) );
  AOI22XLM U321 ( .A0(REG0[5]), .A1(n287), .B0(n4), .B1(n285), .Y(n242) );
  AOI22XLM U322 ( .A0(n6), .A1(n287), .B0(REG1[0]), .B1(n285), .Y(n182) );
  AOI22XLM U323 ( .A0(REG0[1]), .A1(n287), .B0(REG1[1]), .B1(n285), .Y(n194)
         );
  AOI22XLM U324 ( .A0(REG0[6]), .A1(n287), .B0(REG1[6]), .B1(n285), .Y(n254)
         );
  MX2XLM U325 ( .A(n4), .B(WrData[5]), .S0(n8), .Y(n159) );
  MX2XLM U326 ( .A(n2), .B(WrData[7]), .S0(n7), .Y(n169) );
  MX2XLM U327 ( .A(REG1[6]), .B(WrData[6]), .S0(n8), .Y(n160) );
  MX2XLM U328 ( .A(n6), .B(WrData[0]), .S0(n7), .Y(n162) );
  MX2XLM U329 ( .A(n10), .B(WrData[7]), .S0(n8), .Y(n161) );
endmodule


module DECODER_2X4_ALU_UNIT_SELECTION_WIDTH2 ( Enable, ALU_FUN, Arith_Enable, 
        Logic_Enable, CMP_Enable, Shift_Enable );
  input [1:0] ALU_FUN;
  input Enable;
  output Arith_Enable, Logic_Enable, CMP_Enable, Shift_Enable;
  wire   n1, n2, n3;

  NOR3X2M U3 ( .A(n3), .B(n2), .C(n1), .Y(Shift_Enable) );
  NOR3X2M U4 ( .A(n3), .B(ALU_FUN[1]), .C(n2), .Y(Logic_Enable) );
  NOR3X2M U5 ( .A(n3), .B(ALU_FUN[1]), .C(ALU_FUN[0]), .Y(Arith_Enable) );
  NOR3X2M U6 ( .A(n3), .B(ALU_FUN[0]), .C(n1), .Y(CMP_Enable) );
  INVX2M U7 ( .A(ALU_FUN[1]), .Y(n1) );
  INVX2M U8 ( .A(ALU_FUN[0]), .Y(n2) );
  INVX2M U9 ( .A(Enable), .Y(n3) );
endmodule



    module Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW01_sub_0 ( 
        A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [9:0] carry;

  XOR3XLM U2_8 ( .A(A[8]), .B(n1), .C(carry[8]), .Y(DIFF[8]) );
  ADDFX2M U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n1), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_0 ( .A(A[0]), .B(n8), .CI(1'b1), .CO(carry[1]), .S(DIFF[0]) );
  INVXLM U1 ( .A(B[1]), .Y(n7) );
  INVXLM U2 ( .A(B[0]), .Y(n8) );
  INVXLM U3 ( .A(B[2]), .Y(n6) );
  INVXLM U4 ( .A(B[3]), .Y(n5) );
  INVXLM U5 ( .A(B[4]), .Y(n4) );
  INVXLM U6 ( .A(B[5]), .Y(n3) );
  INVXLM U7 ( .A(B[6]), .Y(n2) );
  INVXLM U8 ( .A(B[8]), .Y(n1) );
endmodule



    module Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW01_add_0 ( 
        A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  XOR3XLM U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b0), .CO(carry[1]), .S(SUM[0]) );
endmodule



    module Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW01_add_1 ( 
        A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23;
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  INVX2M U2 ( .A(A[6]), .Y(n1) );
  INVX2M U3 ( .A(B[6]), .Y(n2) );
  XNOR2X1M U4 ( .A(n3), .B(n4), .Y(SUM[9]) );
  NOR2X1M U5 ( .A(n5), .B(n6), .Y(n4) );
  CLKXOR2X2M U6 ( .A(n7), .B(n8), .Y(SUM[8]) );
  NAND2BX1M U7 ( .AN(n9), .B(n10), .Y(n7) );
  XOR3XLM U8 ( .A(B[7]), .B(A[7]), .C(n11), .Y(SUM[7]) );
  AOI21X1M U9 ( .A0(n2), .A1(n1), .B0(n11), .Y(SUM[6]) );
  XOR3XLM U10 ( .A(B[13]), .B(A[13]), .C(n12), .Y(SUM[13]) );
  OAI2BB1X1M U11 ( .A0N(n13), .A1N(A[12]), .B0(n14), .Y(n12) );
  OAI21X1M U12 ( .A0(A[12]), .A1(n13), .B0(B[12]), .Y(n14) );
  XOR3XLM U13 ( .A(B[12]), .B(A[12]), .C(n13), .Y(SUM[12]) );
  OAI21BX1M U14 ( .A0(n15), .A1(n16), .B0N(n17), .Y(n13) );
  XNOR2X1M U15 ( .A(n16), .B(n18), .Y(SUM[11]) );
  NOR2X1M U16 ( .A(n17), .B(n15), .Y(n18) );
  NOR2X1M U17 ( .A(B[11]), .B(A[11]), .Y(n15) );
  AND2X1M U18 ( .A(B[11]), .B(A[11]), .Y(n17) );
  OA21X1M U19 ( .A0(n19), .A1(n20), .B0(n21), .Y(n16) );
  CLKXOR2X2M U20 ( .A(n22), .B(n20), .Y(SUM[10]) );
  AOI2BB1X1M U21 ( .A0N(n3), .A1N(n6), .B0(n5), .Y(n20) );
  AND2X1M U22 ( .A(B[9]), .B(A[9]), .Y(n5) );
  NOR2X1M U23 ( .A(B[9]), .B(A[9]), .Y(n6) );
  OA21X1M U24 ( .A0(n8), .A1(n9), .B0(n10), .Y(n3) );
  CLKNAND2X2M U25 ( .A(B[8]), .B(A[8]), .Y(n10) );
  NOR2X1M U26 ( .A(B[8]), .B(A[8]), .Y(n9) );
  AOI21BX1M U27 ( .A0(n11), .A1(A[7]), .B0N(n23), .Y(n8) );
  OAI21X1M U28 ( .A0(n11), .A1(A[7]), .B0(B[7]), .Y(n23) );
  NOR2X1M U29 ( .A(n2), .B(n1), .Y(n11) );
  NAND2BX1M U30 ( .AN(n19), .B(n21), .Y(n22) );
  CLKNAND2X2M U31 ( .A(B[10]), .B(A[10]), .Y(n21) );
  NOR2X1M U32 ( .A(B[10]), .B(A[10]), .Y(n19) );
endmodule



    module Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW02_mult_0 ( 
        A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][7] , \CARRYB[7][6] ,
         \CARRYB[7][5] , \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] ,
         \CARRYB[7][1] , \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] ,
         \CARRYB[6][4] , \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] ,
         \CARRYB[6][0] , \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] ,
         \CARRYB[5][3] , \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] ,
         \CARRYB[4][6] , \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] ,
         \CARRYB[4][2] , \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] ,
         \CARRYB[3][5] , \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] ,
         \CARRYB[3][1] , \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] ,
         \CARRYB[2][4] , \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] ,
         \CARRYB[2][0] , \SUMB[7][7] , \SUMB[7][6] , \SUMB[7][5] ,
         \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[7][0] ,
         \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] ,
         \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] , \SUMB[5][4] , \SUMB[5][3] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][6] ,
         \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] ,
         \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] ,
         \SUMB[1][1] , ZA, ZB, \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] ,
         \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] ,
         \A1[0] , \A2[6] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  assign ZA = A[7];
  assign ZB = B[7];

  Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW01_add_1 FS_1 ( 
        .A({n25, \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , 
        \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({
        n16, n15, n11, n13, n14, n12, n10, \A2[6] , 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n5), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S14_7 ( .A(n26), .B(n34), .CI(\ab[7][7] ), .CO(\CARRYB[7][7] ), .S(
        \SUMB[7][7] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n4), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n9), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n8), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n6), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S14_7_0 ( .A(ZA), .B(ZB), .CI(\SUMB[7][0] ), .CO(\A2[6] ), .S(
        \A1[5] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n9) );
  NOR2XLM U9 ( .A(B[0]), .B(n26), .Y(\ab[7][0] ) );
  NOR2XLM U10 ( .A(B[2]), .B(n26), .Y(\ab[7][2] ) );
  NOR2XLM U11 ( .A(A[3]), .B(n34), .Y(\ab[3][7] ) );
  NOR2XLM U12 ( .A(A[2]), .B(n34), .Y(\ab[2][7] ) );
  NOR2XLM U13 ( .A(A[4]), .B(n34), .Y(\ab[4][7] ) );
  INVX2M U14 ( .A(\CARRYB[7][7] ), .Y(n25) );
  INVX2M U15 ( .A(\ab[0][6] ), .Y(n23) );
  INVX2M U16 ( .A(\ab[0][5] ), .Y(n22) );
  INVX2M U17 ( .A(\ab[0][2] ), .Y(n19) );
  INVX2M U18 ( .A(\ab[0][3] ), .Y(n20) );
  INVX2M U19 ( .A(\ab[0][4] ), .Y(n21) );
  XNOR2X2M U20 ( .A(\ab[1][0] ), .B(n18), .Y(PRODUCT[1]) );
  INVX2M U21 ( .A(\ab[0][1] ), .Y(n18) );
  XNOR2X2M U22 ( .A(\ab[1][6] ), .B(n24), .Y(\SUMB[1][6] ) );
  INVX2M U23 ( .A(\ab[0][7] ), .Y(n24) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U25 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  XNOR2X2M U26 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U27 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U28 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n10) );
  XNOR2X2M U29 ( .A(\ab[1][2] ), .B(n20), .Y(\SUMB[1][2] ) );
  CLKXOR2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U31 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U32 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  XNOR2X2M U33 ( .A(\ab[1][5] ), .B(n23), .Y(\SUMB[1][5] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n21), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][4] ), .B(n22), .Y(\SUMB[1][4] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n19), .Y(\SUMB[1][1] ) );
  AND2X2M U37 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n11) );
  AND2X2M U38 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U39 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U40 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n14) );
  CLKXOR2X2M U41 ( .A(\CARRYB[7][6] ), .B(\SUMB[7][7] ), .Y(\A1[12] ) );
  AND2X2M U42 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n15) );
  AND2X2M U43 ( .A(\CARRYB[7][6] ), .B(\SUMB[7][7] ), .Y(n16) );
  INVXLM U44 ( .A(B[2]), .Y(n39) );
  INVXLM U45 ( .A(B[3]), .Y(n38) );
  INVXLM U46 ( .A(A[2]), .Y(n31) );
  INVXLM U47 ( .A(A[3]), .Y(n30) );
  INVXLM U48 ( .A(B[4]), .Y(n37) );
  INVXLM U49 ( .A(B[0]), .Y(n41) );
  INVXLM U50 ( .A(B[1]), .Y(n40) );
  INVXLM U51 ( .A(A[1]), .Y(n32) );
  INVXLM U52 ( .A(A[4]), .Y(n29) );
  INVXLM U53 ( .A(A[6]), .Y(n27) );
  INVXLM U54 ( .A(A[5]), .Y(n28) );
  INVXLM U55 ( .A(B[5]), .Y(n36) );
  INVXLM U56 ( .A(ZA), .Y(n26) );
  NOR2XLM U57 ( .A(B[6]), .B(n26), .Y(\ab[7][6] ) );
  INVXLM U58 ( .A(B[6]), .Y(n35) );
  INVXLM U59 ( .A(ZB), .Y(n34) );
  INVXLM U60 ( .A(A[0]), .Y(n33) );
  NOR2XLM U61 ( .A(A[1]), .B(n34), .Y(\ab[1][7] ) );
  NOR2XLM U62 ( .A(A[0]), .B(n34), .Y(\ab[0][7] ) );
  NOR2XLM U63 ( .A(B[5]), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U64 ( .A(n34), .B(n26), .Y(\ab[7][7] ) );
  NOR2X1M U65 ( .A(B[4]), .B(n26), .Y(\ab[7][4] ) );
  NOR2X1M U66 ( .A(B[3]), .B(n26), .Y(\ab[7][3] ) );
  NOR2X1M U67 ( .A(B[1]), .B(n26), .Y(\ab[7][1] ) );
  NOR2X1M U68 ( .A(A[6]), .B(n34), .Y(\ab[6][7] ) );
  NOR2X1M U69 ( .A(n27), .B(n35), .Y(\ab[6][6] ) );
  NOR2X1M U70 ( .A(n27), .B(n36), .Y(\ab[6][5] ) );
  NOR2X1M U71 ( .A(n27), .B(n37), .Y(\ab[6][4] ) );
  NOR2X1M U72 ( .A(n27), .B(n38), .Y(\ab[6][3] ) );
  NOR2X1M U73 ( .A(n27), .B(n39), .Y(\ab[6][2] ) );
  NOR2X1M U74 ( .A(n27), .B(n40), .Y(\ab[6][1] ) );
  NOR2X1M U75 ( .A(n27), .B(n41), .Y(\ab[6][0] ) );
  NOR2X1M U76 ( .A(A[5]), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U77 ( .A(n35), .B(n28), .Y(\ab[5][6] ) );
  NOR2X1M U78 ( .A(n36), .B(n28), .Y(\ab[5][5] ) );
  NOR2X1M U79 ( .A(n37), .B(n28), .Y(\ab[5][4] ) );
  NOR2X1M U80 ( .A(n38), .B(n28), .Y(\ab[5][3] ) );
  NOR2X1M U81 ( .A(n39), .B(n28), .Y(\ab[5][2] ) );
  NOR2X1M U82 ( .A(n40), .B(n28), .Y(\ab[5][1] ) );
  NOR2X1M U83 ( .A(n41), .B(n28), .Y(\ab[5][0] ) );
  NOR2X1M U84 ( .A(n35), .B(n29), .Y(\ab[4][6] ) );
  NOR2X1M U85 ( .A(n36), .B(n29), .Y(\ab[4][5] ) );
  NOR2X1M U86 ( .A(n37), .B(n29), .Y(\ab[4][4] ) );
  NOR2X1M U87 ( .A(n38), .B(n29), .Y(\ab[4][3] ) );
  NOR2X1M U88 ( .A(n39), .B(n29), .Y(\ab[4][2] ) );
  NOR2X1M U89 ( .A(n40), .B(n29), .Y(\ab[4][1] ) );
  NOR2X1M U90 ( .A(n41), .B(n29), .Y(\ab[4][0] ) );
  NOR2X1M U91 ( .A(n35), .B(n30), .Y(\ab[3][6] ) );
  NOR2X1M U92 ( .A(n36), .B(n30), .Y(\ab[3][5] ) );
  NOR2X1M U93 ( .A(n37), .B(n30), .Y(\ab[3][4] ) );
  NOR2X1M U94 ( .A(n38), .B(n30), .Y(\ab[3][3] ) );
  NOR2X1M U95 ( .A(n39), .B(n30), .Y(\ab[3][2] ) );
  NOR2X1M U96 ( .A(n40), .B(n30), .Y(\ab[3][1] ) );
  NOR2X1M U97 ( .A(n41), .B(n30), .Y(\ab[3][0] ) );
  NOR2X1M U98 ( .A(n35), .B(n31), .Y(\ab[2][6] ) );
  NOR2X1M U99 ( .A(n36), .B(n31), .Y(\ab[2][5] ) );
  NOR2X1M U100 ( .A(n37), .B(n31), .Y(\ab[2][4] ) );
  NOR2X1M U101 ( .A(n38), .B(n31), .Y(\ab[2][3] ) );
  NOR2X1M U102 ( .A(n39), .B(n31), .Y(\ab[2][2] ) );
  NOR2X1M U103 ( .A(n40), .B(n31), .Y(\ab[2][1] ) );
  NOR2X1M U104 ( .A(n41), .B(n31), .Y(\ab[2][0] ) );
  NOR2X1M U105 ( .A(n35), .B(n32), .Y(\ab[1][6] ) );
  NOR2X1M U106 ( .A(n36), .B(n32), .Y(\ab[1][5] ) );
  NOR2X1M U107 ( .A(n37), .B(n32), .Y(\ab[1][4] ) );
  NOR2X1M U108 ( .A(n38), .B(n32), .Y(\ab[1][3] ) );
  NOR2X1M U109 ( .A(n39), .B(n32), .Y(\ab[1][2] ) );
  NOR2X1M U110 ( .A(n40), .B(n32), .Y(\ab[1][1] ) );
  NOR2X1M U111 ( .A(n41), .B(n32), .Y(\ab[1][0] ) );
  NOR2X1M U112 ( .A(n35), .B(n33), .Y(\ab[0][6] ) );
  NOR2X1M U113 ( .A(n36), .B(n33), .Y(\ab[0][5] ) );
  NOR2X1M U114 ( .A(n37), .B(n33), .Y(\ab[0][4] ) );
  NOR2X1M U115 ( .A(n38), .B(n33), .Y(\ab[0][3] ) );
  NOR2X1M U116 ( .A(n39), .B(n33), .Y(\ab[0][2] ) );
  NOR2X1M U117 ( .A(n40), .B(n33), .Y(\ab[0][1] ) );
  NOR2X1M U118 ( .A(n41), .B(n33), .Y(PRODUCT[0]) );
endmodule



    module Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW_div_tc_1 ( 
        a, b, quotient, remainder, divide_by_0 );
  input [8:0] a;
  input [7:0] b;
  output [8:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/QAbs[1] , \u_div/SumTmp[1][0] , \u_div/SumTmp[1][3] ,
         \u_div/SumTmp[1][5] , \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] ,
         \u_div/SumTmp[2][4] , \u_div/SumTmp[2][5] , \u_div/SumTmp[2][6] ,
         \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] , \u_div/SumTmp[3][2] ,
         \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] , \u_div/SumTmp[3][5] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][2] , \u_div/SumTmp[4][3] ,
         \u_div/SumTmp[4][4] , \u_div/SumTmp[5][1] , \u_div/SumTmp[5][2] ,
         \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] , \u_div/SumTmp[6][2] ,
         \u_div/SumTmp[7][0] , \u_div/SumTmp[8][0] , \u_div/CryTmp[0][1] ,
         \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] ,
         \u_div/CryTmp[0][5] , \u_div/CryTmp[0][6] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[2][2] ,
         \u_div/CryTmp[2][3] , \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] ,
         \u_div/CryTmp[2][6] , \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] ,
         \u_div/CryTmp[3][3] , \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] ,
         \u_div/CryTmp[3][6] , \u_div/CryTmp[4][1] , \u_div/CryTmp[4][2] ,
         \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] , \u_div/CryTmp[5][2] ,
         \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] ,
         \u_div/CryTmp[6][3] , \u_div/CryTmp[7][1] , \u_div/CryTmp[7][2] ,
         \u_div/CryTmp[8][0] , \u_div/CryTmp[8][1] , \u_div/PartRem[1][0] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[2][0] , \u_div/PartRem[2][2] , \u_div/PartRem[2][3] ,
         \u_div/PartRem[2][5] , \u_div/PartRem[2][7] , \u_div/PartRem[4][0] ,
         \u_div/PartRem[5][0] , \u_div/PartRem[6][0] , \u_div/PartRem[7][0] ,
         net8737, net8729, net8724, net8698, net8697, net8694, net8681,
         net8676, net8670, net8669, net8668, net8665, net10263, net10287,
         net10286, net10374, net11782, net11856, net11867, net11948, net11965,
         net11972, net11976, net11982, net11987, net12111, net12110, net12109,
         net12215, net12213, net12212, net12237, net12318, net12316, net12450,
         net12449, net12466, net12474, net12528, net12527, net12620, net12619,
         net12654, net12699, net12698, net12733, net12732, net12809, net12804,
         net12803, net13008, net13007, net13246, net13273, net13272, net13411,
         net13410, net13472, net13527, net13556, net13563,
         \u_div/SumTmp[2][1] , \u_div/SumTmp[2][0] , \u_div/PartRem[3][6] ,
         \u_div/PartRem[3][0] , \u_div/CryTmp[2][7] , \u_div/CryTmp[2][1] ,
         \u_div/SumTmp[5][3] , \u_div/CryTmp[4][5] , net12894, net12596,
         net12458, net14441, net14522, net14533, net14885, net14890, net13339,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306;
  wire   [8:0] \u_div/QIncCry ;
  wire   [8:0] \u_div/QInv ;
  wire   [7:0] \u_div/BInv ;
  wire   [8:1] \u_div/AIncCry ;
  wire   [7:0] \u_div/AInv ;

  ADDFX2M \u_div/u_fa_PartRem_1_1_0  ( .A(\u_div/PartRem[2][0] ), .B(net13527), 
        .CI(net14533), .CO(\u_div/CryTmp[1][1] ), .S(\u_div/SumTmp[1][0] ) );
  ADDHX4M \u_div/u_ha_QInc_7  ( .A(\u_div/QInv [7]), .B(n28), .CO(
        \u_div/QIncCry [8]), .S(quotient[7]) );
  ADDFHX4M \u_div/u_fa_PartRem_1_3_4  ( .A(n284), .B(net10374), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_1_1_5  ( .A(\u_div/PartRem[2][5] ), .B(net10287), .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_1_4_3  ( .A(net11987), .B(n120), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_1_0_0  ( .A(\u_div/PartRem[1][0] ), .B(net13527), 
        .CI(n19), .CO(\u_div/CryTmp[0][1] ) );
  ADDFHX2M \u_div/u_fa_PartRem_1_6_0  ( .A(n19), .B(net13527), .CI(
        \u_div/PartRem[7][0] ), .CO(\u_div/CryTmp[6][1] ), .S(
        \u_div/SumTmp[6][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_1_2_0  ( .A(\u_div/PartRem[3][0] ), .B(net13527), 
        .CI(n19), .CO(\u_div/CryTmp[2][1] ), .S(\u_div/SumTmp[2][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_1_4_0  ( .A(\u_div/PartRem[5][0] ), .B(net13527), 
        .CI(n19), .CO(\u_div/CryTmp[4][1] ), .S(\u_div/SumTmp[4][0] ) );
  ADDFHX2M \u_div/u_fa_PartRem_1_0_4  ( .A(\u_div/PartRem[1][4] ), .B(net10374), .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_1_3_0  ( .A(\u_div/PartRem[4][0] ), .B(net13527), 
        .CI(n19), .CO(\u_div/CryTmp[3][1] ), .S(\u_div/SumTmp[3][0] ) );
  ADDFHX4M \u_div/u_fa_PartRem_1_8_0  ( .A(1'b0), .B(net13339), .CI(n19), .CO(
        \u_div/CryTmp[8][1] ), .S(\u_div/SumTmp[8][0] ) );
  CLKINVX8M U1 ( .A(n90), .Y(n8) );
  OR2X2M U2 ( .A(n46), .B(\u_div/QIncCry [8]), .Y(n186) );
  NAND2X2M U3 ( .A(net12110), .B(net12109), .Y(n269) );
  CLKINVX4M U4 ( .A(b[7]), .Y(net12110) );
  NOR2BX2M U5 ( .AN(n3), .B(n90), .Y(n28) );
  NAND2BX8M U6 ( .AN(n59), .B(n55), .Y(n90) );
  AND2X1M U7 ( .A(n8), .B(n5), .Y(n1) );
  NAND2X2M U8 ( .A(n1), .B(n2), .Y(n187) );
  AND2X2M U9 ( .A(n46), .B(\u_div/QInv [7]), .Y(n2) );
  AND2X2M U10 ( .A(n11), .B(n4), .Y(n3) );
  AND2X2M U11 ( .A(n11), .B(n4), .Y(n5) );
  INVX2M U12 ( .A(n89), .Y(n4) );
  NOR2X4M U13 ( .A(n90), .B(n89), .Y(n192) );
  MX2X2M U14 ( .A(n283), .B(\u_div/SumTmp[3][3] ), .S0(n143), .Y(n286) );
  NAND2X4M U15 ( .A(n8), .B(n162), .Y(n85) );
  XOR2X1M U16 ( .A(\u_div/QInv [1]), .B(n57), .Y(quotient[1]) );
  MX2X4M U17 ( .A(\u_div/SumTmp[1][3] ), .B(\u_div/PartRem[2][3] ), .S0(n165), 
        .Y(\u_div/PartRem[1][4] ) );
  CLKAND2X6M U18 ( .A(n237), .B(n175), .Y(n165) );
  INVX1M U19 ( .A(n165), .Y(n236) );
  XOR2X2M U20 ( .A(n144), .B(\u_div/QInv [2]), .Y(quotient[2]) );
  AND2X1M U21 ( .A(n31), .B(\u_div/CryTmp[1][1] ), .Y(n6) );
  XNOR3X4M U22 ( .A(net13472), .B(net13527), .C(n136), .Y(\u_div/SumTmp[7][0] ) );
  NAND3X4M U23 ( .A(n249), .B(n248), .C(n250), .Y(\u_div/CryTmp[0][2] ) );
  CLKNAND2X4M U24 ( .A(\u_div/PartRem[1][1] ), .B(\u_div/CryTmp[0][1] ), .Y(
        n248) );
  XNOR2X8M U25 ( .A(n68), .B(n7), .Y(n59) );
  CLKINVX40M U26 ( .A(n27), .Y(n7) );
  CLKINVX2M U27 ( .A(\u_div/QAbs[1] ), .Y(n66) );
  NAND2X4M U28 ( .A(n245), .B(n246), .Y(net11867) );
  NAND2X1M U29 ( .A(n237), .B(n175), .Y(\u_div/QAbs[1] ) );
  NAND2X3M U30 ( .A(\u_div/CryTmp[1][6] ), .B(net14522), .Y(n247) );
  NAND2X2M U31 ( .A(\u_div/CryTmp[3][5] ), .B(net10287), .Y(n95) );
  NAND2X3M U32 ( .A(\u_div/CryTmp[3][5] ), .B(net11948), .Y(n94) );
  CLKINVX8M U33 ( .A(\u_div/CryTmp[8][0] ), .Y(n18) );
  NAND2X6M U34 ( .A(\u_div/CryTmp[2][6] ), .B(net14522), .Y(n128) );
  INVX4M U35 ( .A(net8698), .Y(\u_div/PartRem[2][2] ) );
  NOR2X2M U36 ( .A(n64), .B(n59), .Y(n56) );
  AND2X4M U37 ( .A(n56), .B(\u_div/QInv [1]), .Y(n144) );
  INVX3M U38 ( .A(net8669), .Y(net8681) );
  NAND2X4M U39 ( .A(net11856), .B(\u_div/CryTmp[2][1] ), .Y(n9) );
  AND2X1M U40 ( .A(n125), .B(\u_div/CryTmp[3][1] ), .Y(n10) );
  NAND2XLM U41 ( .A(net13411), .B(\u_div/CryTmp[2][1] ), .Y(net12619) );
  CLKMX2X6M U42 ( .A(n281), .B(\u_div/SumTmp[4][2] ), .S0(net8670), .Y(n283)
         );
  NOR2BX2M U43 ( .AN(\u_div/QInv [5]), .B(n226), .Y(n11) );
  INVXLM U44 ( .A(\u_div/CryTmp[2][4] ), .Y(n12) );
  INVX2M U45 ( .A(n12), .Y(n13) );
  INVXLM U46 ( .A(\u_div/CryTmp[1][4] ), .Y(n14) );
  INVX2M U47 ( .A(n14), .Y(n15) );
  INVXLM U48 ( .A(\u_div/CryTmp[2][5] ), .Y(n16) );
  INVX2M U49 ( .A(n16), .Y(n17) );
  NAND2X4M U50 ( .A(\u_div/CryTmp[2][6] ), .B(\u_div/PartRem[3][6] ), .Y(n127)
         );
  NAND2X4M U51 ( .A(n125), .B(\u_div/CryTmp[3][1] ), .Y(net12698) );
  NAND2X8M U52 ( .A(n159), .B(n154), .Y(n232) );
  DLY1X1M U53 ( .A(\u_div/AIncCry [1]), .Y(n20) );
  INVX5M U54 ( .A(n238), .Y(n294) );
  NAND2X4M U55 ( .A(n141), .B(n290), .Y(n161) );
  NAND2XLM U56 ( .A(n237), .B(n51), .Y(n168) );
  CLKINVX3M U57 ( .A(b[5]), .Y(net12109) );
  INVX16M U58 ( .A(n18), .Y(n19) );
  NAND2X6M U59 ( .A(n134), .B(n229), .Y(n292) );
  AND2X1M U60 ( .A(\u_div/AIncCry [3]), .B(\u_div/AInv [3]), .Y(n49) );
  NAND2X1M U61 ( .A(n271), .B(n230), .Y(n277) );
  CLKINVX4M U62 ( .A(n208), .Y(\u_div/AIncCry [1]) );
  CLKMX2X8M U63 ( .A(n149), .B(\u_div/SumTmp[6][1] ), .S0(n294), .Y(net11982)
         );
  CLKMX2X4M U64 ( .A(net11987), .B(\u_div/SumTmp[4][3] ), .S0(net8670), .Y(
        n284) );
  MX2X4M U65 ( .A(net11982), .B(\u_div/SumTmp[5][2] ), .S0(net12596), .Y(
        net11987) );
  CLKINVX1M U66 ( .A(net12449), .Y(net12466) );
  CLKINVX1M U67 ( .A(net12449), .Y(net12450) );
  NAND2BX4M U68 ( .AN(net11782), .B(n107), .Y(n106) );
  CLKINVX6M U69 ( .A(net13563), .Y(n107) );
  NAND2X8M U70 ( .A(n138), .B(n19), .Y(n273) );
  NOR2X8M U71 ( .A(n232), .B(n139), .Y(n138) );
  NAND2X3M U72 ( .A(\u_div/CryTmp[4][4] ), .B(n47), .Y(n122) );
  NAND2X3M U73 ( .A(n41), .B(n270), .Y(n252) );
  CLKINVX6M U74 ( .A(\u_div/CryTmp[5][3] ), .Y(n113) );
  NAND3X4M U75 ( .A(n207), .B(n205), .C(n206), .Y(\u_div/CryTmp[5][3] ) );
  NAND2X1M U76 ( .A(\u_div/CryTmp[0][3] ), .B(\u_div/PartRem[1][3] ), .Y(n254)
         );
  NAND2X3M U77 ( .A(\u_div/CryTmp[2][4] ), .B(n286), .Y(n220) );
  NAND2X3M U78 ( .A(\u_div/CryTmp[2][5] ), .B(n285), .Y(n224) );
  CLKNAND2X4M U79 ( .A(\u_div/PartRem[1][1] ), .B(n41), .Y(n249) );
  MX2X4M U80 ( .A(n24), .B(\u_div/SumTmp[5][1] ), .S0(net8681), .Y(n281) );
  XNOR2X4M U81 ( .A(n111), .B(n108), .Y(n103) );
  NAND2X6M U82 ( .A(\u_div/CryTmp[3][6] ), .B(net12237), .Y(n289) );
  NAND2X4M U83 ( .A(\u_div/CryTmp[2][4] ), .B(net10374), .Y(n221) );
  NAND2X4M U84 ( .A(\u_div/CryTmp[1][4] ), .B(net10374), .Y(n267) );
  NAND2X4M U85 ( .A(\u_div/CryTmp[4][4] ), .B(net10374), .Y(n123) );
  NAND2BX4M U86 ( .AN(n86), .B(n145), .Y(n87) );
  XNOR2X8M U87 ( .A(net12449), .B(a[0]), .Y(\u_div/AInv [0]) );
  MXI2X2M U88 ( .A(net12809), .B(n42), .S0(n168), .Y(\u_div/PartRem[1][2] ) );
  MXI2XLM U89 ( .A(net8698), .B(n44), .S0(\u_div/QAbs[1] ), .Y(
        \u_div/PartRem[1][3] ) );
  XNOR2X4M U90 ( .A(n85), .B(\u_div/QInv [4]), .Y(quotient[4]) );
  BUFX8M U91 ( .A(net14885), .Y(net13527) );
  NAND2X2M U92 ( .A(n279), .B(n120), .Y(n158) );
  NAND2X2M U93 ( .A(\u_div/CryTmp[2][3] ), .B(n279), .Y(n156) );
  CLKINVX1M U94 ( .A(net11782), .Y(net10374) );
  XOR2XLM U95 ( .A(net8668), .B(\u_div/QAbs[1] ), .Y(\u_div/QInv [1]) );
  OAI21X2M U96 ( .A0(net14441), .A1(n110), .B0(n117), .Y(n100) );
  NAND3X4M U97 ( .A(n221), .B(n220), .C(n219), .Y(\u_div/CryTmp[2][5] ) );
  CLKNAND2X2M U98 ( .A(n286), .B(net10374), .Y(n219) );
  NOR2X2M U99 ( .A(n67), .B(net8737), .Y(n72) );
  CLKINVX2M U100 ( .A(n79), .Y(n78) );
  INVXLM U101 ( .A(\u_div/PartRem[1][6] ), .Y(n67) );
  NOR2X2M U102 ( .A(n69), .B(n66), .Y(n71) );
  XNOR2X2M U103 ( .A(net8737), .B(n65), .Y(n69) );
  INVX2M U104 ( .A(n80), .Y(n77) );
  INVX2M U105 ( .A(a[6]), .Y(n302) );
  INVX2M U106 ( .A(a[5]), .Y(n303) );
  INVX2M U107 ( .A(\u_div/SumTmp[2][0] ), .Y(n132) );
  NAND2X4M U108 ( .A(\u_div/AInv [6]), .B(\u_div/AInv [5]), .Y(n139) );
  INVX2M U109 ( .A(\u_div/SumTmp[4][0] ), .Y(net12732) );
  NAND2BX4M U110 ( .AN(n63), .B(net14522), .Y(net8729) );
  INVX2M U111 ( .A(n118), .Y(net11976) );
  NAND2BX2M U112 ( .AN(n99), .B(n100), .Y(net12215) );
  BUFX2M U113 ( .A(n189), .Y(n190) );
  BUFX4M U114 ( .A(\u_div/BInv [2]), .Y(n189) );
  XNOR2X4M U115 ( .A(net13472), .B(b[3]), .Y(\u_div/BInv [3]) );
  INVX2M U116 ( .A(n104), .Y(n120) );
  MXI2XLM U117 ( .A(n286), .B(\u_div/SumTmp[2][4] ), .S0(net13273), .Y(n297)
         );
  INVX2M U118 ( .A(\u_div/PartRem[2][7] ), .Y(n237) );
  XNOR2X4M U119 ( .A(net13246), .B(n300), .Y(net11782) );
  INVX2M U120 ( .A(net10286), .Y(net10287) );
  NOR2X2M U121 ( .A(n64), .B(n54), .Y(n55) );
  AND2X2M U122 ( .A(\u_div/QInv [2]), .B(\u_div/QInv [3]), .Y(n162) );
  INVX4M U123 ( .A(net8724), .Y(net8670) );
  XOR2X2M U124 ( .A(n58), .B(\u_div/QIncCry [0]), .Y(quotient[0]) );
  XNOR2X2M U125 ( .A(n81), .B(net8665), .Y(n58) );
  XNOR2X2M U126 ( .A(n188), .B(n214), .Y(quotient[3]) );
  AND2X4M U127 ( .A(\u_div/AIncCry [1]), .B(\u_div/AInv [1]), .Y(n43) );
  INVX2M U128 ( .A(a[4]), .Y(n304) );
  INVX2M U129 ( .A(a[3]), .Y(n305) );
  INVX2M U130 ( .A(\u_div/PartRem[2][0] ), .Y(n166) );
  INVX2M U131 ( .A(\u_div/SumTmp[1][0] ), .Y(n167) );
  XNOR2X2M U132 ( .A(net13527), .B(net14441), .Y(n116) );
  XNOR2X2M U133 ( .A(n100), .B(n99), .Y(net12212) );
  NOR2X4M U134 ( .A(n139), .B(net14890), .Y(n83) );
  INVX2M U135 ( .A(net13527), .Y(net14890) );
  NAND2X2M U136 ( .A(\u_div/PartRem[2][2] ), .B(n190), .Y(n260) );
  AND2X2M U137 ( .A(\u_div/BInv [2]), .B(n84), .Y(n229) );
  MX2X2M U138 ( .A(n282), .B(\u_div/SumTmp[3][2] ), .S0(n295), .Y(n279) );
  MX2X2M U139 ( .A(n279), .B(\u_div/SumTmp[2][3] ), .S0(net13273), .Y(n146) );
  NAND3X6M U140 ( .A(n224), .B(n225), .C(n223), .Y(\u_div/CryTmp[2][6] ) );
  NAND2X2M U141 ( .A(\u_div/CryTmp[5][2] ), .B(net11982), .Y(n205) );
  INVX2M U142 ( .A(net11972), .Y(n105) );
  INVX4M U143 ( .A(net13246), .Y(\u_div/CryTmp[8][0] ) );
  NOR2X4M U144 ( .A(n292), .B(net10263), .Y(n293) );
  NAND3X2M U145 ( .A(n255), .B(n254), .C(n256), .Y(\u_div/CryTmp[0][4] ) );
  NAND2X2M U146 ( .A(\u_div/CryTmp[0][5] ), .B(\u_div/PartRem[1][5] ), .Y(n233) );
  INVX2M U147 ( .A(n40), .Y(\u_div/PartRem[1][6] ) );
  NAND2X2M U148 ( .A(n38), .B(n39), .Y(n40) );
  NAND2X2M U149 ( .A(n297), .B(n37), .Y(n38) );
  OR2X6M U150 ( .A(n105), .B(n104), .Y(n115) );
  INVX4M U151 ( .A(n106), .Y(net13556) );
  INVX2M U152 ( .A(net8737), .Y(net12237) );
  NOR2X2M U153 ( .A(n291), .B(net8665), .Y(\u_div/QIncCry [0]) );
  INVX2M U154 ( .A(\u_div/QIncCry [0]), .Y(n64) );
  INVX2M U155 ( .A(net8668), .Y(n27) );
  INVX2M U156 ( .A(\u_div/QInv [4]), .Y(n193) );
  XNOR2X2M U157 ( .A(net8670), .B(net8665), .Y(\u_div/QInv [4]) );
  NAND2X4M U158 ( .A(n163), .B(n164), .Y(n270) );
  INVX1M U159 ( .A(net12110), .Y(net13472) );
  INVX1M U160 ( .A(n232), .Y(n195) );
  INVX2M U161 ( .A(n6), .Y(n21) );
  NAND2X4M U162 ( .A(n271), .B(n230), .Y(n22) );
  INVX4M U163 ( .A(a[8]), .Y(net12449) );
  MXI2X6M U164 ( .A(n135), .B(n152), .S0(n280), .Y(n151) );
  AND2X4M U165 ( .A(\u_div/CryTmp[7][2] ), .B(n290), .Y(n280) );
  AND2X4M U166 ( .A(n195), .B(\u_div/AInv [5]), .Y(n202) );
  INVXLM U167 ( .A(net11867), .Y(n23) );
  INVX2M U168 ( .A(n23), .Y(n24) );
  INVXLM U169 ( .A(\u_div/CryTmp[2][3] ), .Y(n25) );
  INVX2M U170 ( .A(n25), .Y(n26) );
  INVX2M U171 ( .A(n236), .Y(n37) );
  NAND2BX8M U172 ( .AN(\u_div/PartRem[1][6] ), .B(net8737), .Y(n79) );
  INVXLM U173 ( .A(n43), .Y(n29) );
  INVX2M U174 ( .A(n29), .Y(n30) );
  INVX2M U175 ( .A(net12809), .Y(n31) );
  MXI2X6M U176 ( .A(n131), .B(n132), .S0(\u_div/CryTmp[2][7] ), .Y(n130) );
  INVX2M U177 ( .A(n10), .Y(n32) );
  NAND2X6M U178 ( .A(n130), .B(\u_div/CryTmp[1][1] ), .Y(net12527) );
  NAND2X1M U179 ( .A(\u_div/CryTmp[0][3] ), .B(n120), .Y(n255) );
  NAND2X4M U180 ( .A(\u_div/CryTmp[2][5] ), .B(net10287), .Y(n225) );
  INVXLM U181 ( .A(\u_div/CryTmp[2][6] ), .Y(n33) );
  INVX2M U182 ( .A(n33), .Y(n34) );
  INVXLM U183 ( .A(\u_div/CryTmp[1][3] ), .Y(n35) );
  INVX2M U184 ( .A(n35), .Y(n36) );
  NAND2X2M U185 ( .A(n299), .B(n236), .Y(n39) );
  XOR2X1M U186 ( .A(n192), .B(\u_div/QInv [5]), .Y(quotient[5]) );
  XNOR2X2M U187 ( .A(net8668), .B(net8669), .Y(\u_div/QInv [5]) );
  NAND2X4M U188 ( .A(n130), .B(n41), .Y(net12528) );
  XOR2XLM U189 ( .A(\u_div/AInv [2]), .B(n30), .Y(\u_div/PartRem[3][0] ) );
  NAND2X3M U190 ( .A(\u_div/CryTmp[4][2] ), .B(n281), .Y(n216) );
  CLKNAND2X2M U191 ( .A(\u_div/CryTmp[0][2] ), .B(\u_div/PartRem[1][2] ), .Y(
        n169) );
  NAND2X2M U192 ( .A(net10287), .B(\u_div/CryTmp[0][5] ), .Y(n234) );
  NAND2X6M U193 ( .A(n43), .B(\u_div/AInv [2]), .Y(n194) );
  CLKNAND2X2M U194 ( .A(\u_div/PartRem[1][2] ), .B(n189), .Y(n170) );
  CLKNAND2X2M U195 ( .A(\u_div/PartRem[1][3] ), .B(n120), .Y(n256) );
  CLKNAND2X2M U196 ( .A(\u_div/CryTmp[0][2] ), .B(n189), .Y(n171) );
  NAND2X4M U197 ( .A(n151), .B(n190), .Y(n178) );
  NAND2X2M U198 ( .A(n160), .B(n141), .Y(n164) );
  NOR2X1M U199 ( .A(n232), .B(n139), .Y(n136) );
  CLKNAND2X4M U200 ( .A(n161), .B(n138), .Y(n163) );
  NOR2X8M U201 ( .A(n293), .B(n137), .Y(n271) );
  XNOR2X8M U202 ( .A(n191), .B(net14533), .Y(n84) );
  INVX6M U203 ( .A(net13246), .Y(net14533) );
  NAND3XLM U204 ( .A(n228), .B(n21), .C(net12528), .Y(n52) );
  NAND2XLM U205 ( .A(net12804), .B(n289), .Y(n97) );
  NAND3X4M U206 ( .A(n92), .B(n101), .C(net13556), .Y(net8669) );
  CLKNAND2X4M U207 ( .A(\u_div/SumTmp[3][1] ), .B(n295), .Y(n98) );
  NAND2X4M U208 ( .A(n97), .B(n98), .Y(net11965) );
  NAND3XLM U209 ( .A(net12620), .B(net12619), .C(n209), .Y(n50) );
  NAND3XLM U210 ( .A(n276), .B(n278), .C(n277), .Y(\u_div/CryTmp[7][2] ) );
  XNOR2X8M U211 ( .A(n191), .B(n19), .Y(n41) );
  XNOR2XLM U212 ( .A(n227), .B(n31), .Y(n42) );
  XNOR2X2M U213 ( .A(n257), .B(n52), .Y(n44) );
  XNOR2XLM U214 ( .A(n264), .B(n15), .Y(n45) );
  INVX2M U215 ( .A(\u_div/CryTmp[4][1] ), .Y(n109) );
  NAND2X1M U216 ( .A(net14522), .B(n82), .Y(net13563) );
  XNOR2XLM U217 ( .A(n294), .B(net8665), .Y(\u_div/QInv [6]) );
  CLKXOR2X2M U218 ( .A(n53), .B(net8665), .Y(n46) );
  XNOR2X1M U219 ( .A(net14441), .B(net12450), .Y(net8665) );
  MX2X2M U220 ( .A(n119), .B(\u_div/SumTmp[5][3] ), .S0(net12458), .Y(n47) );
  INVX2M U221 ( .A(net13272), .Y(net13273) );
  CLKXOR2X2M U222 ( .A(n112), .B(net11976), .Y(n48) );
  INVX2M U223 ( .A(n289), .Y(n295) );
  INVX2M U224 ( .A(n296), .Y(n290) );
  AND3X6M U225 ( .A(n247), .B(net12316), .C(net12318), .Y(n51) );
  INVX2M U226 ( .A(n41), .Y(n99) );
  BUFX2M U227 ( .A(net12596), .Y(net12458) );
  INVX2M U228 ( .A(net14522), .Y(net8737) );
  AND2X2M U229 ( .A(n240), .B(\u_div/CryTmp[8][1] ), .Y(n53) );
  INVX2M U230 ( .A(\u_div/PartRem[5][0] ), .Y(net12733) );
  CLKXOR2X2M U231 ( .A(\u_div/AInv [4]), .B(n49), .Y(\u_div/PartRem[5][0] ) );
  INVX2M U232 ( .A(\u_div/QInv [6]), .Y(n226) );
  INVX2M U233 ( .A(\u_div/PartRem[3][0] ), .Y(n131) );
  INVX2M U234 ( .A(net8665), .Y(net8668) );
  INVX2M U235 ( .A(\u_div/QInv [5]), .Y(n86) );
  INVX2M U236 ( .A(\u_div/QInv [3]), .Y(n214) );
  INVX2M U237 ( .A(\u_div/QInv [1]), .Y(n54) );
  NOR2XLM U238 ( .A(n59), .B(n64), .Y(n57) );
  NAND2X4M U239 ( .A(n76), .B(n61), .Y(n68) );
  NAND2X4M U240 ( .A(\u_div/CryTmp[4][2] ), .B(n189), .Y(n218) );
  XNOR2X1M U241 ( .A(n176), .B(n153), .Y(\u_div/SumTmp[6][2] ) );
  NAND3X2M U242 ( .A(n74), .B(n73), .C(n75), .Y(n60) );
  INVX2M U243 ( .A(n60), .Y(n61) );
  NAND2BX2M U244 ( .AN(n65), .B(n77), .Y(n74) );
  NAND2BX2M U245 ( .AN(n78), .B(n72), .Y(n75) );
  XNOR2X2M U246 ( .A(n87), .B(\u_div/QInv [6]), .Y(quotient[6]) );
  XNOR2X8M U247 ( .A(b[7]), .B(b[6]), .Y(net14522) );
  MXI2X1M U248 ( .A(n70), .B(n71), .S0(net8694), .Y(n73) );
  INVX1M U249 ( .A(net8694), .Y(n62) );
  OAI2B1XLM U250 ( .A1N(n65), .A0(net14522), .B0(\u_div/QAbs[1] ), .Y(n70) );
  INVXLM U251 ( .A(\u_div/CryTmp[1][6] ), .Y(n65) );
  NAND2BX2M U252 ( .AN(net8694), .B(net14522), .Y(net12318) );
  NAND2BXLM U253 ( .AN(net8694), .B(net14522), .Y(n80) );
  NAND2X2M U254 ( .A(b[5]), .B(b[7]), .Y(net12111) );
  NAND4X2M U255 ( .A(n73), .B(n74), .C(n75), .D(n76), .Y(n81) );
  INVX3M U256 ( .A(\u_div/BInv [5]), .Y(n63) );
  INVXLM U257 ( .A(n63), .Y(n82) );
  NAND2X4M U258 ( .A(\u_div/CryTmp[0][6] ), .B(n79), .Y(n76) );
  NAND2X4M U259 ( .A(\u_div/CryTmp[1][6] ), .B(n62), .Y(net12316) );
  XNOR2X8M U260 ( .A(net13246), .B(b[0]), .Y(net13339) );
  BUFX10M U261 ( .A(b[7]), .Y(net13246) );
  XNOR2X2M U262 ( .A(net13246), .B(b[0]), .Y(net14885) );
  OR2X2M U263 ( .A(net13472), .B(b[0]), .Y(net10263) );
  NAND2BX8M U264 ( .AN(n232), .B(n83), .Y(n272) );
  AND2X4M U265 ( .A(n144), .B(\u_div/QInv [2]), .Y(n188) );
  AND2X4M U266 ( .A(n8), .B(n91), .Y(n145) );
  OR2X2M U267 ( .A(n193), .B(n88), .Y(n89) );
  INVX2M U268 ( .A(n162), .Y(n88) );
  NAND2X2M U269 ( .A(n285), .B(net10287), .Y(n223) );
  NOR2BX2M U270 ( .AN(n162), .B(n193), .Y(n91) );
  NAND2X2M U271 ( .A(net11982), .B(n189), .Y(n206) );
  OA21X8M U272 ( .A0(n84), .A1(\u_div/CryTmp[4][1] ), .B0(n114), .Y(
        \u_div/CryTmp[4][2] ) );
  XNOR2X1M U273 ( .A(n41), .B(n109), .Y(n112) );
  NAND2X4M U274 ( .A(net11867), .B(n41), .Y(n268) );
  CLKNAND2X2M U275 ( .A(\u_div/CryTmp[6][1] ), .B(n41), .Y(n253) );
  NAND2X4M U276 ( .A(n294), .B(\u_div/SumTmp[6][0] ), .Y(n245) );
  AND2X8M U277 ( .A(\u_div/CryTmp[8][1] ), .B(\u_div/SumTmp[8][0] ), .Y(n147)
         );
  XOR2X2M U278 ( .A(net13246), .B(n301), .Y(\u_div/BInv [2]) );
  CLKINVX8M U279 ( .A(n194), .Y(n159) );
  CLKNAND2X4M U280 ( .A(n281), .B(n190), .Y(n217) );
  NAND2X2M U281 ( .A(n115), .B(n113), .Y(n92) );
  CLKNAND2X4M U282 ( .A(n113), .B(n115), .Y(n102) );
  NAND2X2M U283 ( .A(n184), .B(n185), .Y(net11972) );
  XOR2XLM U284 ( .A(net10287), .B(net11948), .Y(n93) );
  XOR2XLM U285 ( .A(n93), .B(\u_div/CryTmp[3][5] ), .Y(\u_div/SumTmp[3][5] )
         );
  CLKNAND2X2M U286 ( .A(net11948), .B(net10287), .Y(n96) );
  NAND3X4M U287 ( .A(n95), .B(n94), .C(n96), .Y(\u_div/CryTmp[3][6] ) );
  NAND2X2M U288 ( .A(net11965), .B(n189), .Y(n211) );
  NAND4X4M U289 ( .A(n102), .B(net13556), .C(n101), .D(n116), .Y(n111) );
  XOR2X1M U290 ( .A(n204), .B(net11982), .Y(\u_div/SumTmp[5][2] ) );
  XNOR2XLM U291 ( .A(n119), .B(n104), .Y(net12894) );
  NAND2XLM U292 ( .A(\u_div/PartRem[6][0] ), .B(net13527), .Y(n117) );
  NOR2XLM U293 ( .A(net13527), .B(\u_div/PartRem[6][0] ), .Y(n110) );
  INVXLM U294 ( .A(\u_div/PartRem[6][0] ), .Y(n108) );
  INVXLM U295 ( .A(n103), .Y(n118) );
  INVXLM U296 ( .A(\u_div/BInv [3]), .Y(n104) );
  INVXLM U297 ( .A(n105), .Y(n119) );
  INVXLM U298 ( .A(n19), .Y(net14441) );
  OAI2BB1X4M U299 ( .A0N(n84), .A1N(\u_div/CryTmp[4][1] ), .B0(n103), .Y(n114)
         );
  NAND2X2M U300 ( .A(n104), .B(n105), .Y(n101) );
  NAND2X3M U301 ( .A(net11867), .B(n100), .Y(net12213) );
  MXI2X6M U302 ( .A(net12732), .B(net12733), .S0(n121), .Y(n125) );
  NAND2X4M U303 ( .A(n125), .B(n41), .Y(net12699) );
  INVXLM U304 ( .A(n125), .Y(net12803) );
  NAND2BX8M U305 ( .AN(n126), .B(n107), .Y(n121) );
  NAND2BX4M U306 ( .AN(n126), .B(n107), .Y(net8724) );
  CLKINVX6M U307 ( .A(\u_div/CryTmp[4][5] ), .Y(n126) );
  NAND3X4M U308 ( .A(n123), .B(n122), .C(n124), .Y(\u_div/CryTmp[4][5] ) );
  NAND2X3M U309 ( .A(n47), .B(net10374), .Y(n124) );
  MX2XLM U310 ( .A(n47), .B(\u_div/SumTmp[4][4] ), .S0(net8670), .Y(net11948)
         );
  XOR2XLM U311 ( .A(net10374), .B(n47), .Y(net12654) );
  INVX3M U312 ( .A(net8669), .Y(net12596) );
  XOR2XLM U313 ( .A(net12894), .B(\u_div/CryTmp[5][3] ), .Y(
        \u_div/SumTmp[5][3] ) );
  INVXLM U314 ( .A(n130), .Y(net12809) );
  NAND2XLM U315 ( .A(n41), .B(\u_div/CryTmp[2][1] ), .Y(net12620) );
  XOR3XLM U316 ( .A(net13411), .B(n41), .C(\u_div/CryTmp[2][1] ), .Y(
        \u_div/SumTmp[2][1] ) );
  NAND3X12M U317 ( .A(n127), .B(n128), .C(n129), .Y(\u_div/CryTmp[2][7] ) );
  INVXLM U318 ( .A(\u_div/CryTmp[2][7] ), .Y(net13272) );
  MXI2X1M U319 ( .A(net13411), .B(\u_div/SumTmp[2][1] ), .S0(
        \u_div/CryTmp[2][7] ), .Y(net8698) );
  MXI2XLM U320 ( .A(net11965), .B(\u_div/SumTmp[2][2] ), .S0(
        \u_div/CryTmp[2][7] ), .Y(net8697) );
  CLKNAND2X2M U321 ( .A(\u_div/PartRem[3][6] ), .B(net14522), .Y(n129) );
  CLKINVX2M U322 ( .A(net8676), .Y(\u_div/PartRem[3][6] ) );
  XOR3XLM U323 ( .A(net14522), .B(\u_div/PartRem[3][6] ), .C(n34), .Y(
        \u_div/SumTmp[2][6] ) );
  CLKNAND2X4M U324 ( .A(net12111), .B(n269), .Y(\u_div/BInv [5]) );
  NAND2X2M U325 ( .A(net13527), .B(n19), .Y(n274) );
  AND2X4M U326 ( .A(n182), .B(\u_div/BInv [3]), .Y(n134) );
  NAND2X2M U327 ( .A(net13556), .B(n133), .Y(n296) );
  AND2X2M U328 ( .A(n189), .B(\u_div/BInv [3]), .Y(n133) );
  INVX2M U329 ( .A(b[2]), .Y(n301) );
  OR2X1M U330 ( .A(n293), .B(n137), .Y(n135) );
  NAND2X4M U331 ( .A(n271), .B(n41), .Y(n276) );
  NAND2BX8M U332 ( .AN(n292), .B(n147), .Y(n137) );
  INVXLM U333 ( .A(n151), .Y(n153) );
  INVXLM U334 ( .A(n294), .Y(n183) );
  XNOR2X2M U335 ( .A(net12466), .B(n303), .Y(\u_div/AInv [5]) );
  NAND2X4M U336 ( .A(net11856), .B(n41), .Y(n209) );
  NAND2X2M U337 ( .A(\u_div/SumTmp[6][2] ), .B(n150), .Y(n185) );
  XNOR2X2M U338 ( .A(net12449), .B(a[1]), .Y(\u_div/AInv [1]) );
  NOR2X4M U339 ( .A(net8729), .B(net11782), .Y(n182) );
  AND2X1M U340 ( .A(net13556), .B(n120), .Y(n140) );
  CLKBUFX6M U341 ( .A(n295), .Y(n143) );
  NAND3X4M U342 ( .A(n276), .B(n22), .C(n278), .Y(n141) );
  INVXLM U343 ( .A(net11856), .Y(net13410) );
  INVX1M U344 ( .A(net13410), .Y(net13411) );
  NAND3XLM U345 ( .A(n32), .B(n201), .C(net12699), .Y(n142) );
  MXI2X6M U346 ( .A(n288), .B(n287), .S0(n289), .Y(net11856) );
  XNOR2X2M U347 ( .A(net12450), .B(n302), .Y(\u_div/AInv [6]) );
  NAND2XLM U348 ( .A(n151), .B(n183), .Y(n184) );
  NAND3X4M U349 ( .A(n197), .B(n198), .C(n199), .Y(\u_div/CryTmp[3][4] ) );
  NAND2X3M U350 ( .A(\u_div/CryTmp[3][3] ), .B(n120), .Y(n198) );
  INVX1M U351 ( .A(net8697), .Y(\u_div/PartRem[2][3] ) );
  INVXLM U352 ( .A(n270), .Y(n148) );
  CLKINVX1M U353 ( .A(n148), .Y(n149) );
  INVX1M U354 ( .A(n183), .Y(n150) );
  CLKAND2X2M U355 ( .A(\u_div/SumTmp[7][0] ), .B(n290), .Y(n160) );
  NAND3X4M U356 ( .A(n157), .B(n156), .C(n158), .Y(\u_div/CryTmp[2][4] ) );
  NAND2X2M U357 ( .A(\u_div/CryTmp[2][3] ), .B(n120), .Y(n157) );
  NAND2X2M U358 ( .A(\u_div/CryTmp[3][3] ), .B(n283), .Y(n197) );
  NAND2X2M U359 ( .A(\u_div/PartRem[7][0] ), .B(n238), .Y(n246) );
  CLKINVX2M U360 ( .A(n174), .Y(n175) );
  XNOR2X2M U361 ( .A(n275), .B(n231), .Y(n152) );
  NAND3X4M U362 ( .A(n273), .B(n272), .C(n274), .Y(n230) );
  AND2X4M U363 ( .A(\u_div/AInv [3]), .B(\u_div/AInv [4]), .Y(n154) );
  NAND3XLM U364 ( .A(n272), .B(n274), .C(n273), .Y(n231) );
  NAND3X4M U365 ( .A(n272), .B(n273), .C(n274), .Y(\u_div/CryTmp[7][1] ) );
  NAND2X2M U366 ( .A(n270), .B(\u_div/CryTmp[6][1] ), .Y(n251) );
  NAND3X4M U367 ( .A(n252), .B(n251), .C(n253), .Y(\u_div/CryTmp[6][2] ) );
  XOR2XLM U368 ( .A(n155), .B(n26), .Y(\u_div/SumTmp[2][3] ) );
  XNOR2XLM U369 ( .A(n41), .B(\u_div/CryTmp[6][1] ), .Y(n239) );
  NAND2X3M U370 ( .A(\u_div/CryTmp[1][4] ), .B(n146), .Y(n266) );
  XOR2XLM U371 ( .A(n120), .B(n279), .Y(n155) );
  XNOR2X2M U372 ( .A(n239), .B(n149), .Y(\u_div/SumTmp[6][1] ) );
  NAND3X4M U373 ( .A(n267), .B(n266), .C(n265), .Y(\u_div/CryTmp[1][5] ) );
  NAND3X4M U374 ( .A(n216), .B(n218), .C(n217), .Y(\u_div/CryTmp[4][3] ) );
  INVXLM U375 ( .A(n194), .Y(\u_div/AIncCry [3]) );
  INVXLM U376 ( .A(\u_div/CryTmp[4][2] ), .Y(net13007) );
  CLKINVX1M U377 ( .A(net13007), .Y(net13008) );
  NAND3X2M U378 ( .A(n169), .B(n171), .C(n170), .Y(\u_div/CryTmp[0][3] ) );
  XOR2XLM U379 ( .A(n271), .B(n41), .Y(n275) );
  NAND3X4M U380 ( .A(n212), .B(n213), .C(n211), .Y(\u_div/CryTmp[2][3] ) );
  NAND2X3M U381 ( .A(\u_div/CryTmp[2][2] ), .B(n190), .Y(n213) );
  NAND2X2M U382 ( .A(\u_div/CryTmp[2][2] ), .B(net11965), .Y(n212) );
  MXI2X6M U383 ( .A(n166), .B(n167), .S0(n203), .Y(\u_div/PartRem[1][1] ) );
  NAND2X6M U384 ( .A(n51), .B(n237), .Y(n203) );
  INVXLM U385 ( .A(n292), .Y(n172) );
  INVX2M U386 ( .A(n172), .Y(n173) );
  INVXLM U387 ( .A(n51), .Y(n174) );
  NAND2X4M U388 ( .A(\u_div/CryTmp[6][3] ), .B(n140), .Y(n238) );
  NAND2X3M U389 ( .A(\u_div/CryTmp[6][2] ), .B(n151), .Y(n177) );
  XOR2XLM U390 ( .A(n190), .B(\u_div/CryTmp[6][2] ), .Y(n176) );
  NAND2X2M U391 ( .A(\u_div/CryTmp[6][2] ), .B(n190), .Y(n179) );
  NAND3X4M U392 ( .A(n179), .B(n177), .C(n178), .Y(\u_div/CryTmp[6][3] ) );
  NAND2X4M U393 ( .A(n186), .B(n187), .Y(quotient[8]) );
  INVXLM U394 ( .A(\u_div/AInv [0]), .Y(n180) );
  INVX2M U395 ( .A(n180), .Y(n181) );
  INVX4M U396 ( .A(b[1]), .Y(n191) );
  XNOR2X2M U397 ( .A(net12466), .B(n305), .Y(\u_div/AInv [3]) );
  XOR2XLM U398 ( .A(n20), .B(\u_div/AInv [1]), .Y(\u_div/PartRem[2][0] ) );
  CLKINVX2M U399 ( .A(net12803), .Y(net12804) );
  CLKXOR2X2M U400 ( .A(n190), .B(\u_div/PartRem[2][2] ), .Y(n257) );
  XOR2XLM U401 ( .A(n190), .B(n282), .Y(n241) );
  NAND2X2M U402 ( .A(n282), .B(n190), .Y(n244) );
  XOR2XLM U403 ( .A(\u_div/AInv [5]), .B(n195), .Y(\u_div/PartRem[6][0] ) );
  XOR2X4M U404 ( .A(n202), .B(\u_div/AInv [6]), .Y(\u_div/PartRem[7][0] ) );
  XNOR2X2M U405 ( .A(net12466), .B(n306), .Y(\u_div/AInv [2]) );
  NAND3X4M U406 ( .A(net12699), .B(net12698), .C(n201), .Y(
        \u_div/CryTmp[3][2] ) );
  NAND2X4M U407 ( .A(\u_div/CryTmp[3][2] ), .B(n282), .Y(n242) );
  NAND2X3M U408 ( .A(\u_div/CryTmp[3][2] ), .B(n189), .Y(n243) );
  XOR2XLM U409 ( .A(n241), .B(n142), .Y(\u_div/SumTmp[3][2] ) );
  XOR2XLM U410 ( .A(n200), .B(net12804), .Y(\u_div/SumTmp[3][1] ) );
  XOR2XLM U411 ( .A(n196), .B(\u_div/CryTmp[3][3] ), .Y(\u_div/SumTmp[3][3] )
         );
  XOR2XLM U412 ( .A(n190), .B(net13008), .Y(n215) );
  XOR2X1M U413 ( .A(n120), .B(n283), .Y(n196) );
  NAND2XLM U414 ( .A(n283), .B(n120), .Y(n199) );
  XOR2XLM U415 ( .A(n41), .B(\u_div/CryTmp[3][1] ), .Y(n200) );
  NAND2XLM U416 ( .A(\u_div/CryTmp[3][1] ), .B(n41), .Y(n201) );
  NAND3X4M U417 ( .A(n243), .B(n242), .C(n244), .Y(\u_div/CryTmp[3][3] ) );
  XNOR2XLM U418 ( .A(net8668), .B(n289), .Y(\u_div/QInv [3]) );
  XOR2XLM U419 ( .A(net12654), .B(\u_div/CryTmp[4][4] ), .Y(
        \u_div/SumTmp[4][4] ) );
  XOR2XLM U420 ( .A(\u_div/CryTmp[5][2] ), .B(n189), .Y(n204) );
  NAND2X2M U421 ( .A(\u_div/CryTmp[5][2] ), .B(n190), .Y(n207) );
  NAND3X4M U422 ( .A(net12213), .B(n268), .C(net12215), .Y(
        \u_div/CryTmp[5][2] ) );
  NAND3X4M U423 ( .A(n209), .B(n9), .C(net12620), .Y(\u_div/CryTmp[2][2] ) );
  XOR2XLM U424 ( .A(net12474), .B(n181), .Y(\u_div/PartRem[1][0] ) );
  NAND2X4M U425 ( .A(\u_div/AInv [0]), .B(net12474), .Y(n208) );
  BUFX2M U426 ( .A(a[8]), .Y(net12474) );
  XOR2XLM U427 ( .A(net11965), .B(n190), .Y(n210) );
  XOR2XLM U428 ( .A(n210), .B(n50), .Y(\u_div/SumTmp[2][2] ) );
  XOR2XLM U429 ( .A(n215), .B(n281), .Y(\u_div/SumTmp[4][2] ) );
  XOR3XLM U430 ( .A(n286), .B(net10374), .C(n13), .Y(\u_div/SumTmp[2][4] ) );
  XOR2XLM U431 ( .A(n285), .B(net10287), .Y(n222) );
  XOR2XLM U432 ( .A(n222), .B(n17), .Y(\u_div/SumTmp[2][5] ) );
  NAND2X3M U433 ( .A(\u_div/CryTmp[1][2] ), .B(n189), .Y(n259) );
  CLKNAND2X4M U434 ( .A(\u_div/CryTmp[1][3] ), .B(n120), .Y(n263) );
  XOR2XLM U435 ( .A(n41), .B(\u_div/CryTmp[1][1] ), .Y(n227) );
  NAND2XLM U436 ( .A(\u_div/CryTmp[1][1] ), .B(n41), .Y(n228) );
  NAND3X4M U437 ( .A(net12528), .B(net12527), .C(n228), .Y(
        \u_div/CryTmp[1][2] ) );
  NAND2X2M U438 ( .A(\u_div/CryTmp[1][2] ), .B(\u_div/PartRem[2][2] ), .Y(n258) );
  INVX2M U439 ( .A(a[2]), .Y(n306) );
  XNOR2X2M U440 ( .A(net12450), .B(n304), .Y(\u_div/AInv [4]) );
  NAND2X1M U441 ( .A(\u_div/PartRem[1][5] ), .B(net10287), .Y(n235) );
  NAND3X4M U442 ( .A(n234), .B(n233), .C(n235), .Y(\u_div/CryTmp[0][6] ) );
  NOR2XLM U443 ( .A(n293), .B(n173), .Y(n240) );
  XOR2XLM U444 ( .A(\u_div/AInv [3]), .B(\u_div/AIncCry [3]), .Y(
        \u_div/PartRem[4][0] ) );
  XOR3XLM U445 ( .A(\u_div/PartRem[2][3] ), .B(n120), .C(n36), .Y(
        \u_div/SumTmp[1][3] ) );
  CLKNAND2X2M U446 ( .A(\u_div/CryTmp[1][3] ), .B(\u_div/PartRem[2][3] ), .Y(
        n262) );
  NAND2XLM U447 ( .A(\u_div/CryTmp[0][1] ), .B(n41), .Y(n250) );
  MXI2X6M U448 ( .A(n48), .B(net11976), .S0(net8724), .Y(n282) );
  XOR2XLM U449 ( .A(net12212), .B(n24), .Y(\u_div/SumTmp[5][1] ) );
  NAND3X4M U450 ( .A(n258), .B(n259), .C(n260), .Y(\u_div/CryTmp[1][3] ) );
  NAND2XLM U451 ( .A(\u_div/PartRem[2][3] ), .B(n120), .Y(n261) );
  NAND3X4M U452 ( .A(n262), .B(n263), .C(n261), .Y(\u_div/CryTmp[1][4] ) );
  XOR2XLM U453 ( .A(n146), .B(net10374), .Y(n264) );
  NAND2XLM U454 ( .A(n146), .B(net10374), .Y(n265) );
  NAND2X4M U455 ( .A(\u_div/CryTmp[7][1] ), .B(n41), .Y(n278) );
  CLKINVX2M U456 ( .A(n297), .Y(\u_div/PartRem[2][5] ) );
  INVX2M U457 ( .A(\u_div/SumTmp[3][0] ), .Y(n288) );
  INVXLM U458 ( .A(\u_div/PartRem[4][0] ), .Y(n287) );
  MXI2XLM U459 ( .A(net11948), .B(\u_div/SumTmp[3][5] ), .S0(n143), .Y(net8676) );
  XOR2XLM U460 ( .A(net8668), .B(net13273), .Y(\u_div/QInv [2]) );
  MX2XLM U461 ( .A(\u_div/PartRem[3][6] ), .B(\u_div/SumTmp[2][6] ), .S0(
        net13273), .Y(\u_div/PartRem[2][7] ) );
  INVX3M U462 ( .A(b[4]), .Y(n300) );
  MXI2XLM U463 ( .A(n298), .B(n45), .S0(n236), .Y(\u_div/PartRem[1][5] ) );
  MX2XLM U464 ( .A(n284), .B(\u_div/SumTmp[3][4] ), .S0(n143), .Y(n285) );
  INVX2M U465 ( .A(\u_div/SumTmp[1][5] ), .Y(n299) );
  XNOR2XLM U466 ( .A(net8665), .B(n280), .Y(\u_div/QInv [7]) );
  MXI2XLM U468 ( .A(n285), .B(\u_div/SumTmp[2][5] ), .S0(net13273), .Y(net8694) );
  MXI2XLM U469 ( .A(n279), .B(\u_div/SumTmp[2][3] ), .S0(net13273), .Y(n298)
         );
  INVXLM U470 ( .A(n82), .Y(net10286) );
  NOR2XLM U471 ( .A(net10263), .B(n173), .Y(n291) );
endmodule



    module Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16 ( 
        A, B, ALU_FUN, Arith_Enable, CLK, RST, arith_flag, arith_OUT );
  input [7:0] A;
  input [7:0] B;
  input [1:0] ALU_FUN;
  output [15:0] arith_OUT;
  input Arith_Enable, CLK, RST;
  output arith_flag;
  wire   N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45,
         N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59,
         N60, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89,
         N90, N91, N92, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58;

  Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW01_sub_0 sub_31 ( 
        .A({n27, n27, A[6:1], n29}), .B({n25, n25, n22, B[5:0]}), .CI(1'b0), 
        .DIFF({N35, N34, N33, N32, N31, N30, N29, N28, N27}) );
  Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW01_add_0 add_30 ( 
        .A({n27, n27, A[6:1], n29}), .B({n25, n25, n22, B[5:0]}), .CI(1'b0), 
        .SUM({N26, N25, N24, N23, N22, N21, N20, N19, N18}) );
  Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW02_mult_0 mult_32 ( 
        .A({n27, A[6:1], n29}), .B({n25, n22, B[5:0]}), .TC(1'b1), .PRODUCT({
        N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, 
        N37, N36}) );
  Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW_div_tc_1 div_33 ( 
        .a({A[7], n27, A[6:0]}), .b(B), .quotient({N60, N59, N58, N57, N56, 
        N55, N54, N53, N52}) );
  DFFRQX1M \arith_OUT_reg[4]  ( .D(N81), .CK(CLK), .RN(RST), .Q(arith_OUT[4])
         );
  DFFRQX1M \arith_OUT_reg[5]  ( .D(N82), .CK(CLK), .RN(RST), .Q(arith_OUT[5])
         );
  DFFRQX1M \arith_OUT_reg[2]  ( .D(N79), .CK(CLK), .RN(RST), .Q(arith_OUT[2])
         );
  DFFRQX1M \arith_OUT_reg[0]  ( .D(N77), .CK(CLK), .RN(RST), .Q(arith_OUT[0])
         );
  DFFRQX2M arith_flag_reg ( .D(Arith_Enable), .CK(CLK), .RN(RST), .Q(
        arith_flag) );
  DFFRHQX1M \arith_OUT_reg[8]  ( .D(N85), .CK(CLK), .RN(RST), .Q(arith_OUT[8])
         );
  DFFRHQX1M \arith_OUT_reg[9]  ( .D(N86), .CK(CLK), .RN(RST), .Q(arith_OUT[9])
         );
  DFFRHQX1M \arith_OUT_reg[10]  ( .D(N87), .CK(CLK), .RN(RST), .Q(
        arith_OUT[10]) );
  DFFRHQX1M \arith_OUT_reg[11]  ( .D(N88), .CK(CLK), .RN(RST), .Q(
        arith_OUT[11]) );
  DFFRHQX1M \arith_OUT_reg[12]  ( .D(N89), .CK(CLK), .RN(RST), .Q(
        arith_OUT[12]) );
  DFFRHQX1M \arith_OUT_reg[13]  ( .D(N90), .CK(CLK), .RN(RST), .Q(
        arith_OUT[13]) );
  DFFRHQX1M \arith_OUT_reg[14]  ( .D(N91), .CK(CLK), .RN(RST), .Q(
        arith_OUT[14]) );
  DFFRHQX1M \arith_OUT_reg[15]  ( .D(N92), .CK(CLK), .RN(RST), .Q(
        arith_OUT[15]) );
  DFFRHQX1M \arith_OUT_reg[7]  ( .D(N84), .CK(CLK), .RN(RST), .Q(arith_OUT[7])
         );
  DFFRHQX4M \arith_OUT_reg[6]  ( .D(N83), .CK(CLK), .RN(RST), .Q(arith_OUT[6])
         );
  DFFRHQX1M \arith_OUT_reg[3]  ( .D(N80), .CK(CLK), .RN(RST), .Q(arith_OUT[3])
         );
  DFFRHQX1M \arith_OUT_reg[1]  ( .D(N78), .CK(CLK), .RN(RST), .Q(arith_OUT[1])
         );
  OAI2B2XLM U3 ( .A1N(Arith_Enable), .A0(n46), .B0(n9), .B1(n42), .Y(N78) );
  AND2X2M U4 ( .A(N52), .B(n52), .Y(n5) );
  NOR2X4M U7 ( .A(n17), .B(n8), .Y(n51) );
  AOI222X2M U8 ( .A0(N19), .A1(n38), .B0(N28), .B1(n39), .C0(N53), .C1(n52), 
        .Y(n46) );
  OAI2B2X2M U9 ( .A1N(Arith_Enable), .A0(n47), .B0(n19), .B1(n42), .Y(N79) );
  AOI222X2M U10 ( .A0(N20), .A1(n38), .B0(N29), .B1(n39), .C0(N54), .C1(n52), 
        .Y(n47) );
  OAI2B2X2M U11 ( .A1N(Arith_Enable), .A0(n49), .B0(n18), .B1(n42), .Y(N81) );
  OAI2B2X2M U12 ( .A1N(Arith_Enable), .A0(n48), .B0(n20), .B1(n42), .Y(N80) );
  OAI2B2X2M U13 ( .A1N(Arith_Enable), .A0(n51), .B0(n23), .B1(n42), .Y(N83) );
  AOI222X4M U14 ( .A0(N22), .A1(n38), .B0(N31), .B1(n39), .C0(N56), .C1(n52), 
        .Y(n49) );
  INVX2M U15 ( .A(n55), .Y(n52) );
  AND2X2M U16 ( .A(N59), .B(n14), .Y(n54) );
  AO22X1M U17 ( .A0(N25), .A1(n38), .B0(N34), .B1(n39), .Y(n53) );
  INVX2M U18 ( .A(N42), .Y(n23) );
  NOR3X2M U19 ( .A(n5), .B(n4), .C(n3), .Y(n45) );
  INVX2M U20 ( .A(N38), .Y(n19) );
  INVX2M U21 ( .A(N37), .Y(n9) );
  INVX2M U22 ( .A(N41), .Y(n13) );
  INVX2M U23 ( .A(N40), .Y(n18) );
  INVX2M U24 ( .A(N39), .Y(n20) );
  OR2X2M U25 ( .A(n54), .B(n30), .Y(N84) );
  AND2X2M U26 ( .A(N18), .B(n38), .Y(n3) );
  AND2X2M U27 ( .A(N27), .B(n39), .Y(n4) );
  AOI21X2M U28 ( .A0(N51), .A1(n57), .B0(n40), .Y(n6) );
  OR2X2M U29 ( .A(n10), .B(n11), .Y(n7) );
  OR2X2M U30 ( .A(n15), .B(n16), .Y(n8) );
  AO2B2X4M U31 ( .B0(N36), .B1(n57), .A0(Arith_Enable), .A1N(n45), .Y(N77) );
  NOR2X2M U32 ( .A(n7), .B(n12), .Y(n48) );
  AND2X2M U33 ( .A(N21), .B(n38), .Y(n10) );
  AND2X2M U34 ( .A(N30), .B(n39), .Y(n11) );
  AND2X4M U35 ( .A(N55), .B(n52), .Y(n12) );
  AND2X2M U36 ( .A(N33), .B(n39), .Y(n16) );
  OAI2BB1X1M U37 ( .A0N(n58), .A1N(N60), .B0(n33), .Y(N87) );
  OAI2BB1X1M U38 ( .A0N(n58), .A1N(N60), .B0(n36), .Y(N90) );
  OAI2BB1X1M U39 ( .A0N(n58), .A1N(N60), .B0(n31), .Y(N85) );
  OAI2BB1X1M U40 ( .A0N(n58), .A1N(N60), .B0(n34), .Y(N88) );
  OAI2BB1X1M U41 ( .A0N(n58), .A1N(N60), .B0(n35), .Y(N89) );
  OAI2BB1X1M U42 ( .A0N(n58), .A1N(N60), .B0(n37), .Y(N91) );
  OAI2BB1X1M U43 ( .A0N(n58), .A1N(N60), .B0(n32), .Y(N86) );
  AOI222X2M U44 ( .A0(N23), .A1(n38), .B0(N32), .B1(n39), .C0(N57), .C1(n52), 
        .Y(n50) );
  OAI2B2X1M U45 ( .A1N(Arith_Enable), .A0(n50), .B0(n13), .B1(n42), .Y(N82) );
  OAI2BB1X1M U46 ( .A0N(n58), .A1N(N60), .B0(n6), .Y(N92) );
  AND2X2M U47 ( .A(Arith_Enable), .B(n52), .Y(n14) );
  AND2X2M U48 ( .A(N24), .B(n38), .Y(n15) );
  AND2X4M U49 ( .A(N58), .B(n52), .Y(n17) );
  INVXLM U50 ( .A(B[6]), .Y(n21) );
  INVX2M U51 ( .A(n21), .Y(n22) );
  INVXLM U52 ( .A(B[7]), .Y(n24) );
  INVX2M U53 ( .A(n24), .Y(n25) );
  INVXLM U54 ( .A(A[7]), .Y(n26) );
  INVX2M U55 ( .A(n26), .Y(n27) );
  INVXLM U56 ( .A(A[0]), .Y(n28) );
  INVX2M U57 ( .A(n28), .Y(n29) );
  AO22X1M U58 ( .A0(N43), .A1(n57), .B0(Arith_Enable), .B1(n53), .Y(n30) );
  INVX2M U59 ( .A(n42), .Y(n57) );
  NAND3BX2M U60 ( .AN(n44), .B(Arith_Enable), .C(n43), .Y(n42) );
  OR2X2M U61 ( .A(n44), .B(n43), .Y(n55) );
  AOI21X2M U62 ( .A0(N44), .A1(n57), .B0(n40), .Y(n31) );
  AOI21X2M U63 ( .A0(N45), .A1(n57), .B0(n40), .Y(n32) );
  AOI21X2M U64 ( .A0(N46), .A1(n57), .B0(n40), .Y(n33) );
  AOI21X2M U65 ( .A0(N47), .A1(n57), .B0(n40), .Y(n34) );
  AOI21X2M U66 ( .A0(N48), .A1(n57), .B0(n40), .Y(n35) );
  AOI21X2M U67 ( .A0(N49), .A1(n57), .B0(n40), .Y(n36) );
  AOI21X2M U68 ( .A0(N50), .A1(n57), .B0(n40), .Y(n37) );
  NOR2X2M U69 ( .A(ALU_FUN[0]), .B(ALU_FUN[1]), .Y(n38) );
  INVX2M U70 ( .A(n56), .Y(n58) );
  INVX2M U71 ( .A(ALU_FUN[0]), .Y(n43) );
  INVX2M U72 ( .A(ALU_FUN[1]), .Y(n44) );
  NOR2X2M U73 ( .A(ALU_FUN[1]), .B(n43), .Y(n39) );
  OAI2BB1X2M U74 ( .A0N(n41), .A1N(n55), .B0(Arith_Enable), .Y(n56) );
  NOR2X2M U75 ( .A(n41), .B(n56), .Y(n40) );
  AOI22X1M U76 ( .A0(N35), .A1(n39), .B0(N26), .B1(n38), .Y(n41) );
endmodule



    module Logic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH8 ( 
        A, B, ALU_FUN, Logic_Enable, CLK, RST, logic_flag, logic_OUT );
  input [7:0] A;
  input [7:0] B;
  input [1:0] ALU_FUN;
  output [7:0] logic_OUT;
  input Logic_Enable, CLK, RST;
  output logic_flag;
  wire   N56, N57, N58, N59, N60, N61, N62, N63, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n44, n45;

  DFFRQX2M \logic_OUT_reg[6]  ( .D(N62), .CK(CLK), .RN(RST), .Q(logic_OUT[6])
         );
  DFFRQX2M \logic_OUT_reg[1]  ( .D(N57), .CK(CLK), .RN(RST), .Q(logic_OUT[1])
         );
  DFFRQX2M \logic_OUT_reg[7]  ( .D(N63), .CK(CLK), .RN(RST), .Q(logic_OUT[7])
         );
  DFFRQX2M \logic_OUT_reg[5]  ( .D(N61), .CK(CLK), .RN(RST), .Q(logic_OUT[5])
         );
  DFFRQX2M \logic_OUT_reg[4]  ( .D(N60), .CK(CLK), .RN(RST), .Q(logic_OUT[4])
         );
  DFFRQX2M \logic_OUT_reg[3]  ( .D(N59), .CK(CLK), .RN(RST), .Q(logic_OUT[3])
         );
  DFFRQX2M \logic_OUT_reg[2]  ( .D(N58), .CK(CLK), .RN(RST), .Q(logic_OUT[2])
         );
  DFFRQX2M \logic_OUT_reg[0]  ( .D(N56), .CK(CLK), .RN(RST), .Q(logic_OUT[0])
         );
  DFFRQX2M logic_flag_reg ( .D(Logic_Enable), .CK(CLK), .RN(RST), .Q(
        logic_flag) );
  NAND2X2M U3 ( .A(Logic_Enable), .B(n3), .Y(n24) );
  NAND2X2M U4 ( .A(Logic_Enable), .B(ALU_FUN[1]), .Y(n25) );
  BUFX2M U5 ( .A(n19), .Y(n1) );
  NAND3BX2M U6 ( .AN(ALU_FUN[0]), .B(ALU_FUN[1]), .C(Logic_Enable), .Y(n19) );
  INVX2M U7 ( .A(ALU_FUN[1]), .Y(n3) );
  BUFX2M U8 ( .A(n20), .Y(n2) );
  NAND3X2M U9 ( .A(ALU_FUN[0]), .B(n3), .C(Logic_Enable), .Y(n20) );
  OAI21X2M U10 ( .A0(n24), .A1(n8), .B0(n2), .Y(n37) );
  OAI21X2M U11 ( .A0(n24), .A1(n7), .B0(n2), .Y(n34) );
  OAI21X2M U12 ( .A0(n24), .A1(n6), .B0(n2), .Y(n31) );
  OAI21X2M U13 ( .A0(n24), .A1(n5), .B0(n2), .Y(n28) );
  OAI21X2M U14 ( .A0(n24), .A1(n4), .B0(n2), .Y(n23) );
  AOI22XLM U15 ( .A0(n39), .A1(n44), .B0(B[1]), .B1(n40), .Y(n38) );
  INVXLM U16 ( .A(B[1]), .Y(n44) );
  OAI21X2M U17 ( .A0(n24), .A1(n9), .B0(n2), .Y(n40) );
  OAI221XLM U18 ( .A0(A[2]), .A1(n1), .B0(n2), .B1(n8), .C0(n35), .Y(N58) );
  AOI22XLM U19 ( .A0(n36), .A1(n15), .B0(B[2]), .B1(n37), .Y(n35) );
  INVXLM U20 ( .A(B[2]), .Y(n15) );
  OAI21XLM U21 ( .A0(A[2]), .A1(n25), .B0(n1), .Y(n36) );
  OAI221XLM U22 ( .A0(A[3]), .A1(n1), .B0(n2), .B1(n7), .C0(n32), .Y(N59) );
  AOI22XLM U23 ( .A0(n33), .A1(n14), .B0(B[3]), .B1(n34), .Y(n32) );
  INVXLM U24 ( .A(B[3]), .Y(n14) );
  OAI21XLM U25 ( .A0(A[3]), .A1(n25), .B0(n1), .Y(n33) );
  OAI221XLM U26 ( .A0(A[4]), .A1(n1), .B0(n2), .B1(n6), .C0(n29), .Y(N60) );
  AOI22XLM U27 ( .A0(n30), .A1(n13), .B0(B[4]), .B1(n31), .Y(n29) );
  INVXLM U28 ( .A(B[4]), .Y(n13) );
  OAI21XLM U29 ( .A0(A[4]), .A1(n25), .B0(n1), .Y(n30) );
  OAI221XLM U30 ( .A0(A[5]), .A1(n1), .B0(n2), .B1(n5), .C0(n26), .Y(N61) );
  OAI21XLM U31 ( .A0(A[5]), .A1(n25), .B0(n1), .Y(n27) );
  OAI221XLM U32 ( .A0(A[6]), .A1(n1), .B0(n4), .B1(n2), .C0(n21), .Y(N62) );
  OAI21XLM U33 ( .A0(A[6]), .A1(n25), .B0(n1), .Y(n22) );
  OAI21XLM U34 ( .A0(A[1]), .A1(n25), .B0(n1), .Y(n39) );
  AOI22XLM U35 ( .A0(n42), .A1(n45), .B0(B[0]), .B1(n43), .Y(n41) );
  INVXLM U36 ( .A(B[0]), .Y(n45) );
  OAI21X2M U37 ( .A0(n24), .A1(n10), .B0(n2), .Y(n43) );
  NOR2BX2M U38 ( .AN(Logic_Enable), .B(n16), .Y(N63) );
  XNOR2X2M U39 ( .A(ALU_FUN[1]), .B(n17), .Y(n16) );
  INVXLM U40 ( .A(A[4]), .Y(n6) );
  INVXLM U41 ( .A(A[2]), .Y(n8) );
  INVXLM U42 ( .A(A[3]), .Y(n7) );
  INVXLM U43 ( .A(A[6]), .Y(n4) );
  INVXLM U44 ( .A(A[5]), .Y(n5) );
  INVXLM U45 ( .A(A[1]), .Y(n9) );
  INVXLM U46 ( .A(B[5]), .Y(n12) );
  AOI22XLM U47 ( .A0(n22), .A1(n11), .B0(B[6]), .B1(n23), .Y(n21) );
  INVXLM U48 ( .A(B[6]), .Y(n11) );
  OAI21XLM U49 ( .A0(ALU_FUN[0]), .A1(A[7]), .B0(B[7]), .Y(n18) );
  OAI21XLM U50 ( .A0(A[0]), .A1(n25), .B0(n1), .Y(n42) );
  INVXLM U51 ( .A(A[0]), .Y(n10) );
  OAI221XLM U52 ( .A0(A[1]), .A1(n1), .B0(n2), .B1(n9), .C0(n38), .Y(N57) );
  OAI221XLM U53 ( .A0(A[0]), .A1(n1), .B0(n2), .B1(n10), .C0(n41), .Y(N56) );
  AOI22XLM U54 ( .A0(n27), .A1(n12), .B0(B[5]), .B1(n28), .Y(n26) );
  OAI2BB1XLM U55 ( .A0N(ALU_FUN[0]), .A1N(A[7]), .B0(n18), .Y(n17) );
endmodule



    module CMP_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH8 ( 
        A, B, ALU_FUN, CMP_Enable, CLK, RST, cmp_flag, cmp_OUT );
  input [7:0] A;
  input [7:0] B;
  input [1:0] ALU_FUN;
  output [7:0] cmp_OUT;
  input CMP_Enable, CLK, RST;
  output cmp_flag;
  wire   N18, N19, N20, N23, N24, n8, n9, n1, n2, n3, n4, n5, n6, n7, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40;
  assign cmp_OUT[7] = 1'b0;
  assign cmp_OUT[6] = 1'b0;
  assign cmp_OUT[5] = 1'b0;
  assign cmp_OUT[4] = 1'b0;
  assign cmp_OUT[3] = 1'b0;
  assign cmp_OUT[2] = 1'b0;

  DFFRQX2M \cmp_OUT_reg[1]  ( .D(N24), .CK(CLK), .RN(RST), .Q(cmp_OUT[1]) );
  DFFRQX2M \cmp_OUT_reg[0]  ( .D(N23), .CK(CLK), .RN(RST), .Q(cmp_OUT[0]) );
  DFFRQX2M cmp_flag_reg ( .D(CMP_Enable), .CK(CLK), .RN(RST), .Q(cmp_flag) );
  NAND2BX1M U5 ( .AN(B[5]), .B(A[5]), .Y(n19) );
  NAND2X1M U10 ( .A(A[3]), .B(n31), .Y(n16) );
  NOR2XLM U11 ( .A(n31), .B(A[3]), .Y(n15) );
  NAND2XLM U12 ( .A(A[2]), .B(n30), .Y(n17) );
  NOR2XLM U13 ( .A(n30), .B(A[2]), .Y(n4) );
  AOI21XLM U14 ( .A0(n1), .A1(n34), .B0(B[1]), .Y(n2) );
  INVX2M U15 ( .A(CMP_Enable), .Y(n38) );
  INVX2M U16 ( .A(ALU_FUN[1]), .Y(n39) );
  INVX2M U17 ( .A(ALU_FUN[0]), .Y(n40) );
  INVX2M U18 ( .A(n14), .Y(n35) );
  NOR3X2M U19 ( .A(n38), .B(n9), .C(n40), .Y(N23) );
  AOI22X1M U20 ( .A0(N18), .A1(n39), .B0(ALU_FUN[1]), .B1(N20), .Y(n9) );
  NOR3X2M U21 ( .A(n38), .B(n8), .C(n39), .Y(N24) );
  AOI22X1M U22 ( .A0(N19), .A1(n40), .B0(N20), .B1(ALU_FUN[0]), .Y(n8) );
  INVXLM U23 ( .A(A[6]), .Y(n36) );
  INVX2M U24 ( .A(n1), .Y(n33) );
  INVX2M U25 ( .A(n28), .Y(N19) );
  INVXLM U26 ( .A(B[2]), .Y(n30) );
  INVXLM U27 ( .A(B[0]), .Y(n29) );
  INVXLM U28 ( .A(A[1]), .Y(n34) );
  INVXLM U29 ( .A(B[3]), .Y(n31) );
  INVXLM U30 ( .A(A[7]), .Y(n37) );
  AOI32XLM U31 ( .A0(n7), .A1(n19), .A2(n22), .B0(B[6]), .B1(n36), .Y(n10) );
  INVXLM U32 ( .A(B[6]), .Y(n32) );
  XNOR2XLM U33 ( .A(A[6]), .B(B[6]), .Y(n22) );
  NOR2XLM U34 ( .A(n37), .B(B[7]), .Y(n25) );
  NAND2XLM U35 ( .A(B[7]), .B(n37), .Y(n26) );
  NAND2XLM U36 ( .A(A[0]), .B(n29), .Y(n13) );
  AOI211XLM U37 ( .A0(A[1]), .A1(n33), .B0(n12), .C0(n2), .Y(n3) );
  NOR2XLM U38 ( .A(n29), .B(A[0]), .Y(n1) );
  NAND2BXLM U39 ( .AN(A[5]), .B(B[5]), .Y(n23) );
  NAND2BX1M U40 ( .AN(B[4]), .B(A[4]), .Y(n18) );
  NAND2BX1M U41 ( .AN(A[4]), .B(B[4]), .Y(n5) );
  CLKNAND2X2M U42 ( .A(n18), .B(n5), .Y(n20) );
  NAND2BX1M U43 ( .AN(n4), .B(n17), .Y(n12) );
  OAI31X1M U44 ( .A0(n15), .A1(n4), .A2(n3), .B0(n16), .Y(n6) );
  OAI211X1M U45 ( .A0(n20), .A1(n6), .B0(n5), .C0(n23), .Y(n7) );
  OAI21X1M U46 ( .A0(n25), .A1(n10), .B0(n26), .Y(N20) );
  OA21X1M U47 ( .A0(n13), .A1(n34), .B0(B[1]), .Y(n11) );
  AOI211X1M U48 ( .A0(n13), .A1(n34), .B0(n12), .C0(n11), .Y(n14) );
  AOI31X1M U49 ( .A0(n35), .A1(n17), .A2(n16), .B0(n15), .Y(n21) );
  OAI2B11X1M U50 ( .A1N(n21), .A0(n20), .B0(n19), .C0(n18), .Y(n24) );
  AOI32X1M U51 ( .A0(n24), .A1(n23), .A2(n22), .B0(A[6]), .B1(n32), .Y(n27) );
  AOI2B1X1M U52 ( .A1N(n27), .A0(n26), .B0(n25), .Y(n28) );
  NOR2X1M U53 ( .A(N20), .B(N19), .Y(N18) );
endmodule



    module Shift_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH8 ( 
        A, B, ALU_FUN, Shift_Enable, CLK, RST, shift_flag, shift_OUT );
  input [7:0] A;
  input [7:0] B;
  input [1:0] ALU_FUN;
  output [7:0] shift_OUT;
  input Shift_Enable, CLK, RST;
  output shift_flag;
  wire   N24, N25, N26, N27, N28, N29, N30, N31, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n1, n2, n3;

  DFFRQX2M \shift_OUT_reg[7]  ( .D(N31), .CK(CLK), .RN(RST), .Q(shift_OUT[7])
         );
  DFFRQX2M \shift_OUT_reg[6]  ( .D(N30), .CK(CLK), .RN(RST), .Q(shift_OUT[6])
         );
  DFFRQX2M \shift_OUT_reg[5]  ( .D(N29), .CK(CLK), .RN(RST), .Q(shift_OUT[5])
         );
  DFFRQX2M \shift_OUT_reg[4]  ( .D(N28), .CK(CLK), .RN(RST), .Q(shift_OUT[4])
         );
  DFFRQX2M \shift_OUT_reg[3]  ( .D(N27), .CK(CLK), .RN(RST), .Q(shift_OUT[3])
         );
  DFFRQX2M \shift_OUT_reg[2]  ( .D(N26), .CK(CLK), .RN(RST), .Q(shift_OUT[2])
         );
  DFFRQX2M \shift_OUT_reg[1]  ( .D(N25), .CK(CLK), .RN(RST), .Q(shift_OUT[1])
         );
  DFFRQX2M \shift_OUT_reg[0]  ( .D(N24), .CK(CLK), .RN(RST), .Q(shift_OUT[0])
         );
  DFFRQX2M shift_flag_reg ( .D(Shift_Enable), .CK(CLK), .RN(RST), .Q(
        shift_flag) );
  INVX2M U3 ( .A(Shift_Enable), .Y(n1) );
  NOR2X2M U4 ( .A(n2), .B(n3), .Y(n5) );
  INVX2M U5 ( .A(ALU_FUN[1]), .Y(n2) );
  NOR2X2M U6 ( .A(ALU_FUN[0]), .B(ALU_FUN[1]), .Y(n10) );
  NOR2X2M U7 ( .A(n3), .B(ALU_FUN[1]), .Y(n6) );
  INVX2M U8 ( .A(ALU_FUN[0]), .Y(n3) );
  NOR2X2M U9 ( .A(n2), .B(ALU_FUN[0]), .Y(n9) );
  NOR2X2M U10 ( .A(n21), .B(n1), .Y(N24) );
  NOR2X2M U11 ( .A(n4), .B(n1), .Y(N31) );
  AOI21X2M U12 ( .A0(n15), .A1(n16), .B0(n1), .Y(N27) );
  AOI22XLM U13 ( .A0(A[2]), .A1(n6), .B0(A[4]), .B1(n10), .Y(n15) );
  AOI22XLM U14 ( .A0(B[2]), .A1(n5), .B0(B[4]), .B1(n9), .Y(n16) );
  AOI21X2M U15 ( .A0(n19), .A1(n20), .B0(n1), .Y(N25) );
  AOI22XLM U16 ( .A0(B[0]), .A1(n5), .B0(B[2]), .B1(n9), .Y(n20) );
  AOI21X2M U17 ( .A0(n17), .A1(n18), .B0(n1), .Y(N26) );
  AOI22XLM U18 ( .A0(B[1]), .A1(n5), .B0(B[3]), .B1(n9), .Y(n18) );
  AOI21X2M U19 ( .A0(n7), .A1(n8), .B0(n1), .Y(N30) );
  AOI21X2M U20 ( .A0(n13), .A1(n14), .B0(n1), .Y(N28) );
  AOI22XLM U21 ( .A0(A[3]), .A1(n6), .B0(n10), .B1(A[5]), .Y(n13) );
  AOI21X2M U22 ( .A0(n11), .A1(n12), .B0(n1), .Y(N29) );
  AOI22XLM U23 ( .A0(A[4]), .A1(n6), .B0(n10), .B1(A[6]), .Y(n11) );
  AOI22XLM U24 ( .A0(B[6]), .A1(n5), .B0(A[6]), .B1(n6), .Y(n4) );
  AOI22XLM U25 ( .A0(B[4]), .A1(n5), .B0(n9), .B1(B[6]), .Y(n12) );
  AOI22XLM U26 ( .A0(A[1]), .A1(n6), .B0(A[3]), .B1(n10), .Y(n17) );
  AOI22XLM U27 ( .A0(B[1]), .A1(n9), .B0(A[1]), .B1(n10), .Y(n21) );
  AOI22XLM U28 ( .A0(A[0]), .A1(n6), .B0(A[2]), .B1(n10), .Y(n19) );
  AOI22XLM U29 ( .A0(B[5]), .A1(n5), .B0(B[7]), .B1(n9), .Y(n8) );
  AOI22XLM U30 ( .A0(B[3]), .A1(n5), .B0(n9), .B1(B[5]), .Y(n14) );
  AOI22XLM U31 ( .A0(A[5]), .A1(n6), .B0(A[7]), .B1(n10), .Y(n7) );
endmodule



    module ALU_TOP_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH4_OUTPUT_WIDTH8 ( 
        A_top, B_top, ALU_FUN_top, Enable_top, CLK_top, RST_top, arith_OUT_top, 
        logic_OUT_top, cmp_OUT_top, shift_OUT_top, OUT_valid );
  input [7:0] A_top;
  input [7:0] B_top;
  input [3:0] ALU_FUN_top;
  output [15:0] arith_OUT_top;
  output [7:0] logic_OUT_top;
  output [7:0] cmp_OUT_top;
  output [7:0] shift_OUT_top;
  input Enable_top, CLK_top, RST_top;
  output OUT_valid;
  wire   Arith_Enable_top, Logic_Enable_top, CMP_Enable_top, Shift_Enable_top,
         arith_flag_top, logic_flag_top, cmp_flag_top, shift_flag_top,
         any_flag_d, div0_q, N1, n2, n3, n4, n5, n1, n6, n7, n8, n9, n10, n11,
         n12, n13;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;
  assign cmp_OUT_top[7] = 1'b0;
  assign cmp_OUT_top[6] = 1'b0;
  assign cmp_OUT_top[5] = 1'b0;
  assign cmp_OUT_top[4] = 1'b0;
  assign cmp_OUT_top[3] = 1'b0;
  assign cmp_OUT_top[2] = 1'b0;

  DECODER_2X4_ALU_UNIT_SELECTION_WIDTH2 u_decoder ( .Enable(Enable_top), 
        .ALU_FUN(ALU_FUN_top[3:2]), .Arith_Enable(Arith_Enable_top), 
        .Logic_Enable(Logic_Enable_top), .CMP_Enable(CMP_Enable_top), 
        .Shift_Enable(Shift_Enable_top) );
  Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16 u_Arithmatic_unit ( 
        .A(A_top), .B(B_top), .ALU_FUN(ALU_FUN_top[1:0]), .Arith_Enable(
        Arith_Enable_top), .CLK(CLK_top), .RST(n11), .arith_flag(
        arith_flag_top), .arith_OUT(arith_OUT_top) );
  Logic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH8 u_Logic_unit ( 
        .A({A_top[7:3], n10, A_top[1:0]}), .B({n8, n1, B_top[5:0]}), .ALU_FUN(
        ALU_FUN_top[1:0]), .Logic_Enable(Logic_Enable_top), .CLK(CLK_top), 
        .RST(n11), .logic_flag(logic_flag_top), .logic_OUT(logic_OUT_top) );
  CMP_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH8 u_CMP_unit ( 
        .A({A_top[7:3], n10, A_top[1:0]}), .B({n8, n1, B_top[5:0]}), .ALU_FUN(
        ALU_FUN_top[1:0]), .CMP_Enable(CMP_Enable_top), .CLK(CLK_top), .RST(
        n11), .cmp_flag(cmp_flag_top), .cmp_OUT({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, cmp_OUT_top[1:0]}) );
  Shift_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH8 u_Shift_unit ( 
        .A({A_top[7:3], n10, A_top[1:0]}), .B({n8, n1, B_top[5:0]}), .ALU_FUN(
        ALU_FUN_top[1:0]), .Shift_Enable(Shift_Enable_top), .CLK(CLK_top), 
        .RST(n11), .shift_flag(shift_flag_top), .shift_OUT(shift_OUT_top) );
  DFFRQX2M div0_q_reg ( .D(N1), .CK(CLK_top), .RN(n11), .Q(div0_q) );
  DFFRQX2M any_flag_d_reg ( .D(n13), .CK(CLK_top), .RN(n11), .Q(any_flag_d) );
  INVX2M U3 ( .A(n6), .Y(n1) );
  INVXLM U4 ( .A(B_top[6]), .Y(n6) );
  INVXLM U5 ( .A(B_top[7]), .Y(n7) );
  INVX2M U6 ( .A(n7), .Y(n8) );
  INVXLM U7 ( .A(A_top[2]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(n10) );
  NOR4X1M U9 ( .A(cmp_flag_top), .B(arith_flag_top), .C(shift_flag_top), .D(
        logic_flag_top), .Y(n2) );
  INVX2M U10 ( .A(n2), .Y(n13) );
  INVX4M U11 ( .A(n12), .Y(n11) );
  INVX2M U12 ( .A(RST_top), .Y(n12) );
  AND4X2M U13 ( .A(Arith_Enable_top), .B(ALU_FUN_top[1]), .C(n3), .D(n4), .Y(
        N1) );
  NOR4BXLM U14 ( .AN(n5), .B(B_top[4]), .C(B_top[2]), .D(B_top[3]), .Y(n4) );
  NOR3BXLM U15 ( .AN(ALU_FUN_top[0]), .B(B_top[1]), .C(B_top[0]), .Y(n3) );
  NOR3X2M U16 ( .A(n2), .B(div0_q), .C(any_flag_d), .Y(OUT_valid) );
  NOR3XLM U17 ( .A(B_top[5]), .B(n8), .C(n1), .Y(n5) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX4M CG ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module sys_ctrl ( CLK, RST, RdData, RdData_valid, Address, WrData, WrEn, RdEn, 
        RX_P_DATA, RX_D_VLD, ALU_OUT, OUT_valid, ALU_CLK_EN, ALU_EN, ALU_FUNC, 
        fifo_full, Wr_Data_fifo, Wr_inc );
  input [7:0] RdData;
  output [3:0] Address;
  output [7:0] WrData;
  input [7:0] RX_P_DATA;
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUNC;
  output [7:0] Wr_Data_fifo;
  input CLK, RST, RdData_valid, RX_D_VLD, OUT_valid, fifo_full;
  output WrEn, RdEn, ALU_CLK_EN, ALU_EN, Wr_inc;
  wire   N25, n10, n11, n22, n28, n38, n39, n42, n43, n44, n45, n46, n49, n50,
         n52, n53, n54, n55, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n70, n71, n72, n74, n75, n76, n77, n78, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n126, n127, n128, n1, n2, n3, n4, n5, n6, n7, n8, n9, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n23, n24, n26, n27, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n40, n41, n47, n48, n51, n56,
         n68, n69, n73, n79, n80, n124, n125, n129, n130, n131, n132;
  wire   [3:0] current_state;
  wire   [7:0] CMD;
  wire   [3:0] latched_address;
  wire   [15:0] latched_alu_out;
  wire   [3:0] latched_alu_func;
  assign ALU_EN = N25;

  DFFRQX2M \latched_alu_out_reg[15]  ( .D(n107), .CK(CLK), .RN(n3), .Q(
        latched_alu_out[15]) );
  DFFRQX2M \latched_alu_out_reg[14]  ( .D(n106), .CK(CLK), .RN(n3), .Q(
        latched_alu_out[14]) );
  DFFRQX2M \latched_alu_out_reg[13]  ( .D(n105), .CK(CLK), .RN(n3), .Q(
        latched_alu_out[13]) );
  DFFRQX2M \latched_alu_out_reg[12]  ( .D(n104), .CK(CLK), .RN(n3), .Q(
        latched_alu_out[12]) );
  DFFRQX2M \latched_alu_out_reg[11]  ( .D(n103), .CK(CLK), .RN(n3), .Q(
        latched_alu_out[11]) );
  DFFRQX2M \latched_alu_out_reg[10]  ( .D(n102), .CK(CLK), .RN(n3), .Q(
        latched_alu_out[10]) );
  DFFRQX2M \latched_alu_out_reg[9]  ( .D(n101), .CK(CLK), .RN(RST), .Q(
        latched_alu_out[9]) );
  DFFRQX2M \latched_alu_out_reg[8]  ( .D(n100), .CK(CLK), .RN(RST), .Q(
        latched_alu_out[8]) );
  DFFRQX2M \CMD_reg[7]  ( .D(n122), .CK(CLK), .RN(n2), .Q(CMD[7]) );
  DFFRQX2M \CMD_reg[5]  ( .D(n120), .CK(CLK), .RN(n2), .Q(CMD[5]) );
  DFFRQX2M \CMD_reg[3]  ( .D(n118), .CK(CLK), .RN(n2), .Q(CMD[3]) );
  DFFRQX2M \CMD_reg[1]  ( .D(n116), .CK(CLK), .RN(n2), .Q(CMD[1]) );
  DFFRQX2M \latched_alu_out_reg[7]  ( .D(n99), .CK(CLK), .RN(RST), .Q(
        latched_alu_out[7]) );
  DFFRQX2M \latched_alu_out_reg[6]  ( .D(n98), .CK(CLK), .RN(RST), .Q(
        latched_alu_out[6]) );
  DFFRQX2M \latched_alu_out_reg[5]  ( .D(n97), .CK(CLK), .RN(RST), .Q(
        latched_alu_out[5]) );
  DFFRQX2M \latched_alu_out_reg[4]  ( .D(n96), .CK(CLK), .RN(RST), .Q(
        latched_alu_out[4]) );
  DFFRQX2M \latched_alu_out_reg[3]  ( .D(n95), .CK(CLK), .RN(RST), .Q(
        latched_alu_out[3]) );
  DFFRQX2M \latched_alu_out_reg[2]  ( .D(n94), .CK(CLK), .RN(RST), .Q(
        latched_alu_out[2]) );
  DFFRQX2M \latched_alu_out_reg[1]  ( .D(n93), .CK(CLK), .RN(RST), .Q(
        latched_alu_out[1]) );
  DFFRQX2M \latched_alu_out_reg[0]  ( .D(n92), .CK(CLK), .RN(RST), .Q(
        latched_alu_out[0]) );
  DFFRQX2M \CMD_reg[4]  ( .D(n119), .CK(CLK), .RN(n2), .Q(CMD[4]) );
  DFFRQX2M \CMD_reg[6]  ( .D(n121), .CK(CLK), .RN(n2), .Q(CMD[6]) );
  DFFRQX2M \CMD_reg[0]  ( .D(n123), .CK(CLK), .RN(n2), .Q(CMD[0]) );
  DFFRQX2M \CMD_reg[2]  ( .D(n117), .CK(CLK), .RN(n2), .Q(CMD[2]) );
  DFFRQX2M \latched_alu_func_reg[0]  ( .D(n115), .CK(CLK), .RN(n2), .Q(
        latched_alu_func[0]) );
  DFFRQX2M \latched_alu_func_reg[3]  ( .D(n114), .CK(CLK), .RN(n3), .Q(
        latched_alu_func[3]) );
  DFFRQX2M \latched_alu_func_reg[2]  ( .D(n113), .CK(CLK), .RN(n3), .Q(
        latched_alu_func[2]) );
  DFFRQX2M \latched_alu_func_reg[1]  ( .D(n112), .CK(CLK), .RN(n3), .Q(
        latched_alu_func[1]) );
  DFFRQX2M \latched_address_reg[3]  ( .D(n111), .CK(CLK), .RN(n3), .Q(
        latched_address[3]) );
  DFFRQX2M \latched_address_reg[2]  ( .D(n110), .CK(CLK), .RN(n3), .Q(
        latched_address[2]) );
  DFFRQX2M \latched_address_reg[1]  ( .D(n109), .CK(CLK), .RN(n3), .Q(
        latched_address[1]) );
  DFFRQX2M \latched_address_reg[0]  ( .D(n108), .CK(CLK), .RN(n3), .Q(
        latched_address[0]) );
  DFFRQX2M \current_state_reg[0]  ( .D(n128), .CK(CLK), .RN(n2), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(n127), .CK(CLK), .RN(n2), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(n126), .CK(CLK), .RN(n2), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[3]  ( .D(n7), .CK(CLK), .RN(n2), .Q(
        current_state[3]) );
  OAI22X2M U3 ( .A0(n18), .A1(n21), .B0(n10), .B1(n51), .Y(ALU_FUNC[1]) );
  OAI22X1M U4 ( .A0(n19), .A1(n21), .B0(n10), .B1(n41), .Y(ALU_FUNC[0]) );
  OAI22X1M U5 ( .A0(n16), .A1(n21), .B0(n10), .B1(n47), .Y(ALU_FUNC[3]) );
  OAI22X1M U6 ( .A0(n17), .A1(n21), .B0(n10), .B1(n48), .Y(ALU_FUNC[2]) );
  NOR2X2M U7 ( .A(n90), .B(n69), .Y(Address[1]) );
  OAI21X2M U8 ( .A0(n90), .A1(n73), .B0(n52), .Y(Address[0]) );
  NOR2X2M U9 ( .A(n90), .B(n68), .Y(Address[2]) );
  NOR2X2M U10 ( .A(n90), .B(n56), .Y(Address[3]) );
  NOR4X1M U11 ( .A(n31), .B(n32), .C(current_state[2]), .D(current_state[3]), 
        .Y(RdEn) );
  NAND2X2M U12 ( .A(RX_D_VLD), .B(n71), .Y(n39) );
  OAI221X1M U13 ( .A0(n67), .A1(n9), .B0(RdData_valid), .B1(n29), .C0(n70), 
        .Y(n43) );
  NOR4X1M U14 ( .A(n33), .B(current_state[0]), .C(current_state[1]), .D(
        current_state[2]), .Y(n59) );
  INVX2M U15 ( .A(n4), .Y(n3) );
  INVX2M U16 ( .A(N25), .Y(n21) );
  INVX2M U17 ( .A(n11), .Y(n20) );
  INVX2M U18 ( .A(fifo_full), .Y(n9) );
  INVX2M U19 ( .A(n22), .Y(n26) );
  INVX2M U20 ( .A(n10), .Y(n1) );
  INVX2M U21 ( .A(n65), .Y(n27) );
  BUFX2M U22 ( .A(n5), .Y(n4) );
  INVX2M U23 ( .A(n5), .Y(n2) );
  NOR2X2M U24 ( .A(n53), .B(n23), .Y(N25) );
  NAND2X2M U25 ( .A(n91), .B(n31), .Y(n53) );
  NAND2X2M U26 ( .A(n89), .B(n31), .Y(n65) );
  AND2X2M U27 ( .A(n88), .B(n29), .Y(n90) );
  NAND3X2M U28 ( .A(n52), .B(n88), .C(n65), .Y(n71) );
  INVX2M U29 ( .A(RdEn), .Y(n29) );
  INVX2M U30 ( .A(n39), .Y(WrEn) );
  NOR2X2M U31 ( .A(n23), .B(n22), .Y(n11) );
  NAND2X2M U32 ( .A(n59), .B(n9), .Y(n76) );
  OAI22X1M U33 ( .A0(n6), .A1(n34), .B0(n42), .B1(n43), .Y(n126) );
  AOI211X2M U34 ( .A0(n44), .A1(n45), .B0(n46), .C0(n27), .Y(n42) );
  OAI22X1M U35 ( .A0(n6), .A1(n32), .B0(n49), .B1(n43), .Y(n127) );
  AOI211X2M U36 ( .A0(n50), .A1(n44), .B0(n46), .C0(n26), .Y(n49) );
  NOR2X2M U37 ( .A(n19), .B(n15), .Y(n50) );
  OAI22X1M U38 ( .A0(n6), .A1(n31), .B0(n57), .B1(n43), .Y(n128) );
  NOR4X1M U39 ( .A(n27), .B(n58), .C(n59), .D(n60), .Y(n57) );
  AOI21X2M U40 ( .A0(n61), .A1(n62), .B0(n22), .Y(n60) );
  NAND2X2M U41 ( .A(n63), .B(n21), .Y(n58) );
  OAI22X1M U42 ( .A0(n11), .A1(n56), .B0(n20), .B1(n16), .Y(n111) );
  OAI22X1M U43 ( .A0(n18), .A1(n21), .B0(N25), .B1(n51), .Y(n112) );
  OAI22X1M U44 ( .A0(n17), .A1(n21), .B0(N25), .B1(n48), .Y(n113) );
  OAI22X1M U45 ( .A0(n16), .A1(n21), .B0(N25), .B1(n47), .Y(n114) );
  OAI22X1M U46 ( .A0(n19), .A1(n21), .B0(N25), .B1(n41), .Y(n115) );
  OAI22X1M U47 ( .A0(n11), .A1(n73), .B0(n20), .B1(n19), .Y(n108) );
  OAI22X1M U48 ( .A0(n11), .A1(n69), .B0(n20), .B1(n18), .Y(n109) );
  OAI22X1M U49 ( .A0(n11), .A1(n68), .B0(n20), .B1(n17), .Y(n110) );
  INVX2M U50 ( .A(n43), .Y(n6) );
  NAND2X2M U51 ( .A(n72), .B(n33), .Y(n22) );
  NOR2X2M U52 ( .A(n17), .B(n39), .Y(WrData[2]) );
  NOR2X2M U53 ( .A(n16), .B(n39), .Y(WrData[3]) );
  NOR2X2M U54 ( .A(n15), .B(n39), .Y(WrData[4]) );
  NOR2X2M U55 ( .A(n18), .B(n39), .Y(WrData[1]) );
  NOR2X2M U56 ( .A(n19), .B(n39), .Y(WrData[0]) );
  NOR2X2M U57 ( .A(n14), .B(n39), .Y(WrData[5]) );
  NOR2X2M U58 ( .A(n13), .B(n39), .Y(WrData[6]) );
  NOR2X2M U59 ( .A(n12), .B(n39), .Y(WrData[7]) );
  NAND3X2M U60 ( .A(n75), .B(n76), .C(n77), .Y(Wr_inc) );
  INVX2M U61 ( .A(n75), .Y(n8) );
  INVX2M U62 ( .A(n77), .Y(n30) );
  AND2X2M U63 ( .A(n74), .B(n32), .Y(n38) );
  NOR4X1M U64 ( .A(n40), .B(n37), .C(n36), .D(n35), .Y(n61) );
  OAI22X1M U65 ( .A0(n18), .A1(n28), .B0(n24), .B1(n40), .Y(n116) );
  OAI22X1M U66 ( .A0(n16), .A1(n28), .B0(n24), .B1(n37), .Y(n118) );
  OAI22X1M U67 ( .A0(n28), .A1(n14), .B0(n24), .B1(n36), .Y(n120) );
  OAI22X1M U68 ( .A0(n28), .A1(n12), .B0(n24), .B1(n35), .Y(n122) );
  INVX2M U69 ( .A(n28), .Y(n24) );
  NAND2X2M U70 ( .A(n10), .B(n53), .Y(ALU_CLK_EN) );
  NAND2X2M U71 ( .A(n52), .B(n53), .Y(n46) );
  INVX2M U72 ( .A(RST), .Y(n5) );
  NOR3X2M U73 ( .A(n32), .B(current_state[3]), .C(n34), .Y(n91) );
  INVX2M U74 ( .A(current_state[1]), .Y(n32) );
  INVX2M U75 ( .A(current_state[2]), .Y(n34) );
  NOR3X2M U76 ( .A(current_state[1]), .B(current_state[3]), .C(n34), .Y(n89)
         );
  NOR3X2M U77 ( .A(current_state[2]), .B(current_state[3]), .C(
        current_state[0]), .Y(n74) );
  NAND2X2M U78 ( .A(current_state[0]), .B(n91), .Y(n10) );
  NAND2X2M U79 ( .A(n89), .B(current_state[0]), .Y(n52) );
  INVX2M U80 ( .A(current_state[0]), .Y(n31) );
  OAI2BB2X1M U81 ( .B0(n1), .B1(n80), .A0N(ALU_OUT[6]), .A1N(n1), .Y(n98) );
  OAI2BB2X1M U82 ( .B0(n1), .B1(n132), .A0N(ALU_OUT[0]), .A1N(n1), .Y(n92) );
  OAI2BB2X1M U83 ( .B0(n1), .B1(n131), .A0N(ALU_OUT[1]), .A1N(n1), .Y(n93) );
  NAND2X2M U84 ( .A(n74), .B(current_state[1]), .Y(n88) );
  OAI2BB2X1M U85 ( .B0(n1), .B1(n130), .A0N(ALU_OUT[2]), .A1N(n1), .Y(n94) );
  OAI2BB2X1M U86 ( .B0(n1), .B1(n129), .A0N(ALU_OUT[3]), .A1N(n1), .Y(n95) );
  OAI2BB2X1M U87 ( .B0(n1), .B1(n125), .A0N(ALU_OUT[4]), .A1N(n1), .Y(n96) );
  OAI2BB2X1M U88 ( .B0(n1), .B1(n124), .A0N(ALU_OUT[5]), .A1N(n1), .Y(n97) );
  OAI2BB2X1M U89 ( .B0(n1), .B1(n79), .A0N(ALU_OUT[7]), .A1N(n1), .Y(n99) );
  INVX2M U90 ( .A(RX_D_VLD), .Y(n23) );
  AO22X1M U91 ( .A0(n10), .A1(latched_alu_out[8]), .B0(ALU_OUT[8]), .B1(n1), 
        .Y(n100) );
  AO22X1M U92 ( .A0(n10), .A1(latched_alu_out[9]), .B0(ALU_OUT[9]), .B1(n1), 
        .Y(n101) );
  AO22X1M U93 ( .A0(n10), .A1(latched_alu_out[10]), .B0(ALU_OUT[10]), .B1(n1), 
        .Y(n102) );
  AO22X1M U94 ( .A0(n10), .A1(latched_alu_out[11]), .B0(ALU_OUT[11]), .B1(n1), 
        .Y(n103) );
  AO22X1M U95 ( .A0(n10), .A1(latched_alu_out[12]), .B0(ALU_OUT[12]), .B1(n1), 
        .Y(n104) );
  AO22X1M U96 ( .A0(n10), .A1(latched_alu_out[13]), .B0(ALU_OUT[13]), .B1(n1), 
        .Y(n105) );
  AO22X1M U97 ( .A0(n10), .A1(latched_alu_out[14]), .B0(ALU_OUT[14]), .B1(n1), 
        .Y(n106) );
  AO22X1M U98 ( .A0(n10), .A1(latched_alu_out[15]), .B0(ALU_OUT[15]), .B1(n1), 
        .Y(n107) );
  INVX2M U99 ( .A(latched_address[0]), .Y(n73) );
  AOI21X2M U100 ( .A0(current_state[3]), .A1(n72), .B0(n59), .Y(n67) );
  OAI31X1M U101 ( .A0(n71), .A1(n38), .A2(n26), .B0(n23), .Y(n70) );
  NOR3X2M U102 ( .A(current_state[1]), .B(current_state[2]), .C(n31), .Y(n72)
         );
  NAND3X2M U103 ( .A(n72), .B(n9), .C(current_state[3]), .Y(n75) );
  NAND2X2M U104 ( .A(RdData_valid), .B(RdEn), .Y(n77) );
  OAI21X2M U105 ( .A0(n132), .A1(n76), .B0(n87), .Y(Wr_Data_fifo[0]) );
  AOI22X1M U106 ( .A0(n8), .A1(latched_alu_out[8]), .B0(RdData[0]), .B1(n30), 
        .Y(n87) );
  OAI21X2M U107 ( .A0(n131), .A1(n76), .B0(n86), .Y(Wr_Data_fifo[1]) );
  AOI22X1M U108 ( .A0(n8), .A1(latched_alu_out[9]), .B0(RdData[1]), .B1(n30), 
        .Y(n86) );
  OAI21X2M U109 ( .A0(n130), .A1(n76), .B0(n85), .Y(Wr_Data_fifo[2]) );
  AOI22X1M U110 ( .A0(n8), .A1(latched_alu_out[10]), .B0(RdData[2]), .B1(n30), 
        .Y(n85) );
  OAI21X2M U111 ( .A0(n129), .A1(n76), .B0(n84), .Y(Wr_Data_fifo[3]) );
  AOI22X1M U112 ( .A0(n8), .A1(latched_alu_out[11]), .B0(RdData[3]), .B1(n30), 
        .Y(n84) );
  OAI21X2M U113 ( .A0(n125), .A1(n76), .B0(n83), .Y(Wr_Data_fifo[4]) );
  AOI22X1M U114 ( .A0(n8), .A1(latched_alu_out[12]), .B0(RdData[4]), .B1(n30), 
        .Y(n83) );
  OAI21X2M U115 ( .A0(n124), .A1(n76), .B0(n82), .Y(Wr_Data_fifo[5]) );
  AOI22X1M U116 ( .A0(n8), .A1(latched_alu_out[13]), .B0(RdData[5]), .B1(n30), 
        .Y(n82) );
  OAI21X2M U117 ( .A0(n80), .A1(n76), .B0(n81), .Y(Wr_Data_fifo[6]) );
  AOI22X1M U118 ( .A0(n8), .A1(latched_alu_out[14]), .B0(RdData[6]), .B1(n30), 
        .Y(n81) );
  OAI21X2M U119 ( .A0(n79), .A1(n76), .B0(n78), .Y(Wr_Data_fifo[7]) );
  AOI22X1M U120 ( .A0(n8), .A1(latched_alu_out[15]), .B0(RdData[7]), .B1(n30), 
        .Y(n78) );
  INVX2M U121 ( .A(current_state[3]), .Y(n33) );
  INVX2M U122 ( .A(RX_P_DATA[1]), .Y(n18) );
  INVX2M U123 ( .A(RX_P_DATA[2]), .Y(n17) );
  INVX2M U124 ( .A(RX_P_DATA[0]), .Y(n19) );
  INVX2M U125 ( .A(RX_P_DATA[3]), .Y(n16) );
  INVX2M U126 ( .A(n66), .Y(n7) );
  AOI221XLM U127 ( .A0(OUT_valid), .A1(n1), .B0(current_state[3]), .B1(n43), 
        .C0(n59), .Y(n66) );
  INVX2M U128 ( .A(latched_address[1]), .Y(n69) );
  INVX2M U129 ( .A(latched_address[2]), .Y(n68) );
  INVX2M U130 ( .A(latched_address[3]), .Y(n56) );
  INVX2M U131 ( .A(latched_alu_func[1]), .Y(n51) );
  INVX2M U132 ( .A(latched_alu_func[3]), .Y(n47) );
  INVX2M U133 ( .A(latched_alu_func[2]), .Y(n48) );
  INVX2M U134 ( .A(latched_alu_func[0]), .Y(n41) );
  NAND2X2M U135 ( .A(n38), .B(RX_D_VLD), .Y(n28) );
  XNOR2X2M U136 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[0]), .Y(n45) );
  NOR4X1M U137 ( .A(CMD[6]), .B(CMD[4]), .C(CMD[2]), .D(CMD[0]), .Y(n62) );
  NAND4X2M U138 ( .A(n54), .B(RX_P_DATA[5]), .C(n45), .D(n64), .Y(n63) );
  NOR3X2M U139 ( .A(n18), .B(RX_P_DATA[6]), .C(RX_P_DATA[2]), .Y(n64) );
  OAI2BB2X1M U140 ( .B0(n17), .B1(n28), .A0N(n28), .A1N(CMD[2]), .Y(n117) );
  OAI2BB2X1M U141 ( .B0(n19), .B1(n28), .A0N(n28), .A1N(CMD[0]), .Y(n123) );
  OAI2BB2X1M U142 ( .B0(n28), .B1(n15), .A0N(n28), .A1N(CMD[4]), .Y(n119) );
  OAI2BB2X1M U143 ( .B0(n28), .B1(n13), .A0N(n28), .A1N(CMD[6]), .Y(n121) );
  AND3X2M U144 ( .A(n38), .B(RX_P_DATA[3]), .C(RX_P_DATA[7]), .Y(n54) );
  INVX2M U145 ( .A(RX_P_DATA[4]), .Y(n15) );
  INVX2M U146 ( .A(RX_P_DATA[5]), .Y(n14) );
  INVX2M U147 ( .A(RX_P_DATA[6]), .Y(n13) );
  AND3X2M U148 ( .A(n54), .B(RX_P_DATA[6]), .C(n55), .Y(n44) );
  NOR3X2M U149 ( .A(n17), .B(RX_P_DATA[5]), .C(RX_P_DATA[1]), .Y(n55) );
  INVX2M U150 ( .A(CMD[5]), .Y(n36) );
  INVX2M U151 ( .A(CMD[7]), .Y(n35) );
  INVX2M U152 ( .A(CMD[1]), .Y(n40) );
  INVX2M U153 ( .A(CMD[3]), .Y(n37) );
  INVX2M U154 ( .A(RX_P_DATA[7]), .Y(n12) );
  INVX2M U155 ( .A(latched_alu_out[0]), .Y(n132) );
  INVX2M U156 ( .A(latched_alu_out[1]), .Y(n131) );
  INVX2M U157 ( .A(latched_alu_out[2]), .Y(n130) );
  INVX2M U158 ( .A(latched_alu_out[3]), .Y(n129) );
  INVX2M U159 ( .A(latched_alu_out[4]), .Y(n125) );
  INVX2M U160 ( .A(latched_alu_out[5]), .Y(n124) );
  INVX2M U161 ( .A(latched_alu_out[6]), .Y(n80) );
  INVX2M U162 ( .A(latched_alu_out[7]), .Y(n79) );
endmodule


module DATA_SYNC_BUS_WIDTH8_NUM_STAGES2 ( unsync_bus, bus_en, CLK, RST, 
        sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_en, CLK, RST;
  output enable_pulse;
  wire   pulse_gen, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] syncronizer;

  DFFRQX2M pulse_gen_reg ( .D(syncronizer[0]), .CK(CLK), .RN(RST), .Q(
        pulse_gen) );
  DFFRQX2M \syncronizer_reg[0]  ( .D(syncronizer[1]), .CK(CLK), .RN(RST), .Q(
        syncronizer[0]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  DFFRQX2M \syncronizer_reg[1]  ( .D(bus_en), .CK(CLK), .RN(RST), .Q(
        syncronizer[1]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(pulse_gen), .B(syncronizer[0]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module Tx_FSM ( DATA_VALID, PAR_EN, ser_done, CLK, RST, serializer_out, 
        parity_calc_out, TX_OUT, ser_en, parity_calc_en, Busy );
  input DATA_VALID, PAR_EN, ser_done, CLK, RST, serializer_out,
         parity_calc_out;
  output TX_OUT, ser_en, parity_calc_en, Busy;
  wire   n4, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n1, n2, n6;
  wire   [2:0] current_state;

  OAI2B11X4M U11 ( .A1N(serializer_out), .A0(n12), .B0(n4), .C0(n15), .Y(
        TX_OUT) );
  DFFRQX2M \current_state_reg[0]  ( .D(n20), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(n19), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRX1M \current_state_reg[2]  ( .D(n18), .CK(CLK), .RN(RST), .QN(n4) );
  NOR2X2M U3 ( .A(n2), .B(n6), .Y(n11) );
  OAI211X2M U4 ( .A0(n1), .A1(n6), .B0(n13), .C0(n8), .Y(n19) );
  INVX2M U5 ( .A(n10), .Y(n1) );
  INVX2M U6 ( .A(n7), .Y(ser_en) );
  AOI22X1M U7 ( .A0(parity_calc_out), .A1(n11), .B0(n2), .B1(n6), .Y(n15) );
  NAND3X2M U8 ( .A(n2), .B(n4), .C(current_state[1]), .Y(n12) );
  INVX2M U9 ( .A(current_state[1]), .Y(n6) );
  INVX2M U10 ( .A(current_state[0]), .Y(n2) );
  INVX2M U12 ( .A(n8), .Y(parity_calc_en) );
  OAI22X1M U13 ( .A0(ser_done), .A1(n12), .B0(current_state[1]), .B1(
        DATA_VALID), .Y(n10) );
  NAND3BX2M U14 ( .AN(n12), .B(n1), .C(PAR_EN), .Y(n13) );
  OAI21X2M U15 ( .A0(n16), .A1(n17), .B0(n7), .Y(Busy) );
  CLKXOR2X2M U16 ( .A(n11), .B(n4), .Y(n16) );
  NAND2X2M U17 ( .A(n17), .B(n4), .Y(n7) );
  CLKXOR2X2M U18 ( .A(current_state[0]), .B(current_state[1]), .Y(n17) );
  NOR2X2M U19 ( .A(n9), .B(n10), .Y(n18) );
  AOI2BB2XLM U20 ( .B0(n11), .B1(n4), .A0N(n12), .A1N(PAR_EN), .Y(n9) );
  NAND2X2M U21 ( .A(n14), .B(n13), .Y(n20) );
  NAND4X2M U22 ( .A(n1), .B(n2), .C(n6), .D(n4), .Y(n14) );
  NAND3X2M U23 ( .A(n6), .B(n4), .C(current_state[0]), .Y(n8) );
endmodule


module serializer_DATA_WIDTH8 ( P_DATA, ser_en, CLK, RST, serial_data, 
        ser_done );
  input [7:0] P_DATA;
  input ser_en, CLK, RST;
  output serial_data, ser_done;
  wire   N5, N6, N7, N12, N13, N23, N24, N25, N26, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n1, n2, n3, n4, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34;
  wire   [7:0] data_reg;

  DFFRQX2M ser_done_reg ( .D(N24), .CK(CLK), .RN(RST), .Q(ser_done) );
  DFFRQX2M \counter_reg[2]  ( .D(n33), .CK(CLK), .RN(RST), .Q(N7) );
  DFFRQX2M \data_reg_reg[4]  ( .D(n15), .CK(CLK), .RN(RST), .Q(data_reg[4]) );
  DFFRQX2M \data_reg_reg[0]  ( .D(n19), .CK(CLK), .RN(RST), .Q(data_reg[0]) );
  DFFRQX2M \data_reg_reg[2]  ( .D(n13), .CK(CLK), .RN(RST), .Q(data_reg[2]) );
  DFFRQX2M \data_reg_reg[6]  ( .D(n17), .CK(CLK), .RN(RST), .Q(data_reg[6]) );
  DFFRQX2M \data_reg_reg[3]  ( .D(n14), .CK(CLK), .RN(RST), .Q(data_reg[3]) );
  DFFRQX2M \data_reg_reg[7]  ( .D(n18), .CK(CLK), .RN(RST), .Q(data_reg[7]) );
  DFFRQX2M \data_reg_reg[1]  ( .D(n12), .CK(CLK), .RN(RST), .Q(data_reg[1]) );
  DFFRQX2M \data_reg_reg[5]  ( .D(n16), .CK(CLK), .RN(RST), .Q(data_reg[5]) );
  DFFRQX2M \counter_reg[1]  ( .D(N26), .CK(CLK), .RN(RST), .Q(N6) );
  DFFRQX2M \counter_reg[0]  ( .D(N25), .CK(CLK), .RN(RST), .Q(N5) );
  DFFSQX2M serial_data_reg ( .D(N23), .CK(CLK), .SN(RST), .Q(serial_data) );
  NOR3X2M U3 ( .A(N6), .B(N7), .C(N5), .Y(n6) );
  INVX2M U4 ( .A(n5), .Y(n32) );
  NAND2X2M U5 ( .A(ser_en), .B(n6), .Y(n5) );
  NAND2X2M U6 ( .A(ser_en), .B(n10), .Y(n8) );
  NOR2BX2M U7 ( .AN(ser_en), .B(n10), .Y(N24) );
  NAND2X2M U8 ( .A(n11), .B(ser_en), .Y(N23) );
  AOI22X1M U9 ( .A0(N12), .A1(n6), .B0(N13), .B1(n31), .Y(n11) );
  INVX2M U10 ( .A(n6), .Y(n31) );
  INVX2M U11 ( .A(n7), .Y(n33) );
  AOI32X1M U12 ( .A0(n34), .A1(N5), .A2(N6), .B0(N7), .B1(n34), .Y(n7) );
  INVX2M U13 ( .A(n8), .Y(n34) );
  AO22X1M U14 ( .A0(P_DATA[7]), .A1(n32), .B0(data_reg[7]), .B1(n5), .Y(n18)
         );
  AO22X1M U15 ( .A0(P_DATA[6]), .A1(n32), .B0(data_reg[6]), .B1(n5), .Y(n17)
         );
  INVX2M U16 ( .A(N5), .Y(n30) );
  AO22X1M U17 ( .A0(P_DATA[2]), .A1(n32), .B0(data_reg[2]), .B1(n5), .Y(n13)
         );
  AO22X1M U18 ( .A0(P_DATA[3]), .A1(n32), .B0(data_reg[3]), .B1(n5), .Y(n14)
         );
  INVX2M U19 ( .A(N6), .Y(n29) );
  AO22X1M U20 ( .A0(P_DATA[0]), .A1(n32), .B0(data_reg[0]), .B1(n5), .Y(n19)
         );
  AO22X1M U21 ( .A0(P_DATA[5]), .A1(n32), .B0(data_reg[5]), .B1(n5), .Y(n16)
         );
  AO22X1M U22 ( .A0(P_DATA[4]), .A1(n32), .B0(data_reg[4]), .B1(n5), .Y(n15)
         );
  AO22X1M U23 ( .A0(P_DATA[1]), .A1(n32), .B0(data_reg[1]), .B1(n5), .Y(n12)
         );
  NAND3X2M U24 ( .A(N6), .B(N5), .C(N7), .Y(n10) );
  NOR2X2M U25 ( .A(N5), .B(n8), .Y(N25) );
  NOR2X2M U26 ( .A(n9), .B(n8), .Y(N26) );
  XNOR2X2M U27 ( .A(N6), .B(N5), .Y(n9) );
  INVX2M U28 ( .A(N7), .Y(n28) );
  NOR2X1M U29 ( .A(n29), .B(N5), .Y(n25) );
  NOR2X1M U30 ( .A(n29), .B(n30), .Y(n24) );
  NOR2X1M U31 ( .A(n30), .B(N6), .Y(n22) );
  NOR2X1M U32 ( .A(N5), .B(N6), .Y(n21) );
  AO22X1M U33 ( .A0(data_reg[5]), .A1(n22), .B0(data_reg[4]), .B1(n21), .Y(n1)
         );
  AOI221XLM U34 ( .A0(data_reg[6]), .A1(n25), .B0(data_reg[7]), .B1(n24), .C0(
        n1), .Y(n4) );
  AO22X1M U35 ( .A0(data_reg[1]), .A1(n22), .B0(data_reg[0]), .B1(n21), .Y(n2)
         );
  AOI221XLM U36 ( .A0(data_reg[2]), .A1(n25), .B0(data_reg[3]), .B1(n24), .C0(
        n2), .Y(n3) );
  OAI22X1M U37 ( .A0(n28), .A1(n4), .B0(N7), .B1(n3), .Y(N13) );
  AO22X1M U38 ( .A0(P_DATA[5]), .A1(n22), .B0(P_DATA[4]), .B1(n21), .Y(n20) );
  AOI221XLM U39 ( .A0(P_DATA[6]), .A1(n25), .B0(P_DATA[7]), .B1(n24), .C0(n20), 
        .Y(n27) );
  AO22X1M U40 ( .A0(P_DATA[1]), .A1(n22), .B0(P_DATA[0]), .B1(n21), .Y(n23) );
  AOI221XLM U41 ( .A0(P_DATA[2]), .A1(n25), .B0(P_DATA[3]), .B1(n24), .C0(n23), 
        .Y(n26) );
  OAI22X1M U42 ( .A0(n27), .A1(n28), .B0(N7), .B1(n26), .Y(N12) );
endmodule


module parity_calc_DATA_WIDTH8 ( P_DATA, PAR_TYPE, parity_calc_en, CLK, RST, 
        parity_bit );
  input [7:0] P_DATA;
  input PAR_TYPE, parity_calc_en, CLK, RST;
  output parity_bit;
  wire   n1, n3, n4, n5, n6, n7, n2;

  DFFRQX2M parity_bit_reg ( .D(n7), .CK(CLK), .RN(RST), .Q(parity_bit) );
  XOR3XLM U2 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
  XNOR2X2M U3 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  XOR3XLM U4 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U5 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  OAI2BB2X1M U6 ( .B0(n1), .B1(n2), .A0N(parity_bit), .A1N(n2), .Y(n7) );
  INVX2M U7 ( .A(parity_calc_en), .Y(n2) );
  XOR3XLM U8 ( .A(n3), .B(PAR_TYPE), .C(n4), .Y(n1) );
endmodule


module UART_Tx_DATA_WIDTH8 ( P_DATA, DATA_VALID, PAR_EN, PAR_TYP, CLK, RST, 
        Tx_out, Busy );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_EN, PAR_TYP, CLK, RST;
  output Tx_out, Busy;
  wire   ser_done, serializer_out, parity_calc_out, ser_en, parity_calc_en;

  Tx_FSM u_Tx_FSM ( .DATA_VALID(DATA_VALID), .PAR_EN(PAR_EN), .ser_done(
        ser_done), .CLK(CLK), .RST(RST), .serializer_out(serializer_out), 
        .parity_calc_out(parity_calc_out), .TX_OUT(Tx_out), .ser_en(ser_en), 
        .parity_calc_en(parity_calc_en), .Busy(Busy) );
  serializer_DATA_WIDTH8 u_serializer ( .P_DATA(P_DATA), .ser_en(ser_en), 
        .CLK(CLK), .RST(RST), .serial_data(serializer_out), .ser_done(ser_done) );
  parity_calc_DATA_WIDTH8 u_parity_calc ( .P_DATA(P_DATA), .PAR_TYPE(PAR_TYP), 
        .parity_calc_en(parity_calc_en), .CLK(CLK), .RST(RST), .parity_bit(
        parity_calc_out) );
endmodule


module Rx_FSM ( RX_IN, sampler_out, Prescale, bit_counter_out, 
        edge_counter_out, parity_checker_out, PAR_EN, CLK, RST, sampler_en, 
        parity_checker_en, bit_counter_en, deserializer_en, deserializer_in, 
        parity_error, stop_error, data_valid );
  input [5:0] Prescale;
  input [3:0] bit_counter_out;
  input [5:0] edge_counter_out;
  input RX_IN, sampler_out, parity_checker_out, PAR_EN, CLK, RST;
  output sampler_en, parity_checker_en, bit_counter_en, deserializer_en,
         deserializer_in, parity_error, stop_error, data_valid;
  wire   N35, N36, N37, N38, N39, N40, N41, N42, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, bit_counter_en, n18,
         n35, n36, n37;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign deserializer_en = bit_counter_en;

  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  NOR3X6M U3 ( .A(n24), .B(n25), .C(n16), .Y(parity_error) );
  INVX2M U4 ( .A(N42), .Y(n16) );
  INVX2M U5 ( .A(n23), .Y(n35) );
  INVX2M U6 ( .A(n31), .Y(n15) );
  INVX2M U7 ( .A(n20), .Y(bit_counter_en) );
  INVX2M U8 ( .A(n24), .Y(parity_checker_en) );
  NOR3X6M U9 ( .A(n16), .B(sampler_out), .C(n35), .Y(stop_error) );
  NOR3X2M U10 ( .A(current_state[0]), .B(current_state[1]), .C(n36), .Y(n23)
         );
  NAND3X2M U11 ( .A(current_state[1]), .B(n36), .C(current_state[0]), .Y(n24)
         );
  INVX2M U12 ( .A(sampler_out), .Y(n14) );
  INVX2M U13 ( .A(current_state[2]), .Y(n36) );
  NAND3X2M U14 ( .A(n20), .B(n35), .C(n21), .Y(sampler_en) );
  OA21X2M U15 ( .A0(RX_IN), .A1(current_state[1]), .B0(n22), .Y(n21) );
  CLKXOR2X2M U16 ( .A(n14), .B(parity_checker_out), .Y(n25) );
  OAI221XLM U17 ( .A0(RX_IN), .A1(n32), .B0(N42), .B1(n22), .C0(n33), .Y(
        next_state[0]) );
  AOI21X2M U18 ( .A0(n30), .A1(n18), .B0(data_valid), .Y(n32) );
  AOI33X2M U19 ( .A0(n15), .A1(bit_counter_en), .A2(PAR_EN), .B0(N42), .B1(n23), .B2(sampler_out), .Y(n33) );
  OAI211XLM U20 ( .A0(N42), .A1(n24), .B0(n28), .C0(n29), .Y(next_state[1]) );
  NAND4XLM U21 ( .A(current_state[0]), .B(n30), .C(N42), .D(n14), .Y(n29) );
  OAI21X2M U22 ( .A0(PAR_EN), .A1(n31), .B0(bit_counter_en), .Y(n28) );
  NAND4X2M U23 ( .A(bit_counter_out[2]), .B(bit_counter_out[1]), .C(n34), .D(
        bit_counter_out[0]), .Y(n31) );
  NOR2X2M U24 ( .A(bit_counter_out[3]), .B(n16), .Y(n34) );
  NAND2X2M U25 ( .A(n26), .B(n27), .Y(next_state[2]) );
  OAI21X2M U26 ( .A0(sampler_out), .A1(n16), .B0(n23), .Y(n27) );
  AOI33XLM U27 ( .A0(parity_checker_en), .A1(N42), .A2(n25), .B0(
        bit_counter_en), .B1(n37), .B2(n15), .Y(n26) );
  INVX2M U28 ( .A(PAR_EN), .Y(n37) );
  NOR2X2M U29 ( .A(n14), .B(n20), .Y(deserializer_in) );
  NOR3X2M U30 ( .A(n36), .B(current_state[1]), .C(n18), .Y(data_valid) );
  NOR2X2M U31 ( .A(current_state[1]), .B(current_state[2]), .Y(n30) );
  NAND3X2M U32 ( .A(n18), .B(n36), .C(current_state[1]), .Y(n20) );
  AOI21X2M U33 ( .A0(n30), .A1(current_state[0]), .B0(parity_checker_en), .Y(
        n22) );
  INVX2M U34 ( .A(current_state[0]), .Y(n18) );
  INVX2M U35 ( .A(Prescale[0]), .Y(N35) );
  NAND2BX1M U36 ( .AN(Prescale[1]), .B(N35), .Y(n1) );
  OAI2BB1X1M U37 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n1), .Y(N36) );
  OR2X1M U38 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  OAI2BB1X1M U39 ( .A0N(n1), .A1N(Prescale[2]), .B0(n2), .Y(N37) );
  OR2X1M U40 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U41 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N38) );
  OR2X1M U42 ( .A(n3), .B(Prescale[4]), .Y(n4) );
  OAI2BB1X1M U43 ( .A0N(n3), .A1N(Prescale[4]), .B0(n4), .Y(N39) );
  NOR2X1M U44 ( .A(n4), .B(Prescale[5]), .Y(N41) );
  AO21XLM U45 ( .A0(n4), .A1(Prescale[5]), .B0(N41), .Y(N40) );
  NOR2BX1M U46 ( .AN(N35), .B(edge_counter_out[0]), .Y(n5) );
  OAI2B2X1M U47 ( .A1N(edge_counter_out[1]), .A0(n5), .B0(N36), .B1(n5), .Y(n9) );
  XNOR2X1M U48 ( .A(N40), .B(edge_counter_out[5]), .Y(n8) );
  NOR2BX1M U49 ( .AN(edge_counter_out[0]), .B(N35), .Y(n6) );
  OAI2B2X1M U50 ( .A1N(N36), .A0(n6), .B0(edge_counter_out[1]), .B1(n6), .Y(n7) );
  NAND4BX1M U51 ( .AN(N41), .B(n9), .C(n8), .D(n7), .Y(n13) );
  CLKXOR2X2M U52 ( .A(N39), .B(edge_counter_out[4]), .Y(n12) );
  CLKXOR2X2M U53 ( .A(N37), .B(edge_counter_out[2]), .Y(n11) );
  CLKXOR2X2M U54 ( .A(N38), .B(edge_counter_out[3]), .Y(n10) );
  NOR4X1M U55 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(N42) );
endmodule


module deserializer ( deserializer_en, deserializer_in, Prescale, 
        edge_counter_out, CLK, RST, P_DATA );
  input [5:0] Prescale;
  input [5:0] edge_counter_out;
  output [7:0] P_DATA;
  input deserializer_en, deserializer_in, CLK, RST;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, n5, n6, n7, n8, n9, n10, n11, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n1, n2, n3, n4, n12, n22, n23,
         n24, n25, n26, n27, n28, n29, n30;

  DFFRX1M \P_DATA_reg[5]  ( .D(n19), .CK(CLK), .RN(RST), .Q(P_DATA[5]), .QN(n7) );
  DFFRX1M \P_DATA_reg[1]  ( .D(n15), .CK(CLK), .RN(RST), .Q(P_DATA[1]), .QN(
        n11) );
  DFFRX1M \P_DATA_reg[4]  ( .D(n18), .CK(CLK), .RN(RST), .Q(P_DATA[4]), .QN(n8) );
  DFFRQX2M \P_DATA_reg[0]  ( .D(n14), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  DFFRX1M \P_DATA_reg[7]  ( .D(n21), .CK(CLK), .RN(RST), .Q(P_DATA[7]), .QN(n5) );
  DFFRX1M \P_DATA_reg[3]  ( .D(n17), .CK(CLK), .RN(RST), .Q(P_DATA[3]), .QN(n9) );
  DFFRX1M \P_DATA_reg[6]  ( .D(n20), .CK(CLK), .RN(RST), .Q(P_DATA[6]), .QN(n6) );
  DFFRX1M \P_DATA_reg[2]  ( .D(n16), .CK(CLK), .RN(RST), .Q(P_DATA[2]), .QN(
        n10) );
  INVX2M U3 ( .A(n13), .Y(n30) );
  NAND2X2M U4 ( .A(deserializer_en), .B(N12), .Y(n13) );
  OAI22X1M U5 ( .A0(n13), .A1(n10), .B0(n30), .B1(n11), .Y(n15) );
  OAI22X1M U6 ( .A0(n13), .A1(n9), .B0(n30), .B1(n10), .Y(n16) );
  OAI22X1M U7 ( .A0(n13), .A1(n8), .B0(n30), .B1(n9), .Y(n17) );
  OAI22X1M U8 ( .A0(n13), .A1(n7), .B0(n30), .B1(n8), .Y(n18) );
  OAI22X1M U9 ( .A0(n13), .A1(n6), .B0(n30), .B1(n7), .Y(n19) );
  OAI22X1M U10 ( .A0(n13), .A1(n5), .B0(n30), .B1(n6), .Y(n20) );
  OAI2BB2X1M U11 ( .B0(n13), .B1(n11), .A0N(P_DATA[0]), .A1N(n13), .Y(n14) );
  OAI2BB2X1M U12 ( .B0(n30), .B1(n5), .A0N(deserializer_in), .A1N(n30), .Y(n21) );
  INVX2M U13 ( .A(Prescale[0]), .Y(N5) );
  NAND2BX1M U14 ( .AN(Prescale[1]), .B(N5), .Y(n1) );
  OAI2BB1X1M U15 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n1), .Y(N6) );
  OR2X1M U16 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  OAI2BB1X1M U17 ( .A0N(n1), .A1N(Prescale[2]), .B0(n2), .Y(N7) );
  OR2X1M U18 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U19 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N8) );
  OR2X1M U20 ( .A(n3), .B(Prescale[4]), .Y(n4) );
  OAI2BB1X1M U21 ( .A0N(n3), .A1N(Prescale[4]), .B0(n4), .Y(N9) );
  NOR2X1M U22 ( .A(n4), .B(Prescale[5]), .Y(N11) );
  AO21XLM U23 ( .A0(n4), .A1(Prescale[5]), .B0(N11), .Y(N10) );
  NOR2BX1M U24 ( .AN(N5), .B(edge_counter_out[0]), .Y(n12) );
  OAI2B2X1M U25 ( .A1N(edge_counter_out[1]), .A0(n12), .B0(N6), .B1(n12), .Y(
        n25) );
  XNOR2X1M U26 ( .A(N10), .B(edge_counter_out[5]), .Y(n24) );
  NOR2BX1M U27 ( .AN(edge_counter_out[0]), .B(N5), .Y(n22) );
  OAI2B2X1M U28 ( .A1N(N6), .A0(n22), .B0(edge_counter_out[1]), .B1(n22), .Y(
        n23) );
  NAND4BX1M U29 ( .AN(N11), .B(n25), .C(n24), .D(n23), .Y(n29) );
  CLKXOR2X2M U30 ( .A(N9), .B(edge_counter_out[4]), .Y(n28) );
  CLKXOR2X2M U31 ( .A(N7), .B(edge_counter_out[2]), .Y(n27) );
  CLKXOR2X2M U32 ( .A(N8), .B(edge_counter_out[3]), .Y(n26) );
  NOR4X1M U33 ( .A(n29), .B(n28), .C(n27), .D(n26), .Y(N12) );
endmodule


module parity_checker ( parity_checker_en, PAR_TYP, P_DATA, CLK, RST, 
        parity_checker_out );
  input [7:0] P_DATA;
  input parity_checker_en, PAR_TYP, CLK, RST;
  output parity_checker_out;
  wire   N10, n1, n2, n3, n4, n5;

  DFFRQX2M parity_checker_out_reg ( .D(N10), .CK(CLK), .RN(RST), .Q(
        parity_checker_out) );
  XNOR2X2M U3 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n5) );
  XNOR2X2M U4 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n4) );
  AND2X2M U5 ( .A(parity_checker_en), .B(n1), .Y(N10) );
  XOR3XLM U6 ( .A(PAR_TYP), .B(n2), .C(n3), .Y(n1) );
  XOR3XLM U7 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n4), .Y(n3) );
  XOR3XLM U8 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n5), .Y(n2) );
endmodule


module edge_bit_counter ( bit_counter_en, Prescale, CLK, RST, bit_counter_out, 
        edge_counter_out );
  input [5:0] Prescale;
  output [3:0] bit_counter_out;
  output [5:0] edge_counter_out;
  input bit_counter_en, CLK, RST;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, N25, N26, N27, N28, N30, N31, N32,
         N33, N34, N35, n7, n8, n9, n10, n11, n12, n13, \add_40/carry[5] ,
         \add_40/carry[4] , \add_40/carry[3] , \add_40/carry[2] , n1, n2, n3,
         n4, n5, n6, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;
  assign bit_counter_out[3] = 1'b0;

  DFFRQX2M \bit_counter_out_reg[2]  ( .D(n11), .CK(CLK), .RN(RST), .Q(
        bit_counter_out[2]) );
  DFFRQX2M \bit_counter_out_reg[1]  ( .D(n12), .CK(CLK), .RN(RST), .Q(
        bit_counter_out[1]) );
  DFFRQX2M \bit_counter_out_reg[0]  ( .D(n13), .CK(CLK), .RN(RST), .Q(
        bit_counter_out[0]) );
  DFFRQX2M \edge_counter_out_reg[5]  ( .D(N35), .CK(CLK), .RN(RST), .Q(
        edge_counter_out[5]) );
  DFFRQX2M \edge_counter_out_reg[3]  ( .D(N33), .CK(CLK), .RN(RST), .Q(
        edge_counter_out[3]) );
  DFFRQX2M \edge_counter_out_reg[2]  ( .D(N32), .CK(CLK), .RN(RST), .Q(
        edge_counter_out[2]) );
  DFFRQX2M \edge_counter_out_reg[4]  ( .D(N34), .CK(CLK), .RN(RST), .Q(
        edge_counter_out[4]) );
  DFFRQX2M \edge_counter_out_reg[1]  ( .D(N31), .CK(CLK), .RN(RST), .Q(
        edge_counter_out[1]) );
  DFFRQX2M \edge_counter_out_reg[0]  ( .D(N30), .CK(CLK), .RN(RST), .Q(
        edge_counter_out[0]) );
  NAND2X2M U4 ( .A(bit_counter_en), .B(N12), .Y(n10) );
  NOR2BXLM U5 ( .AN(N25), .B(N12), .Y(N31) );
  NOR2BXLM U6 ( .AN(N26), .B(N12), .Y(N32) );
  NOR2BXLM U7 ( .AN(N27), .B(N12), .Y(N33) );
  NOR2BXLM U8 ( .AN(N28), .B(N12), .Y(N34) );
  OAI32X1M U9 ( .A0(n8), .A1(bit_counter_out[2]), .A2(n22), .B0(n7), .B1(n23), 
        .Y(n11) );
  INVX2M U10 ( .A(bit_counter_out[2]), .Y(n23) );
  NOR2BX2M U11 ( .AN(n9), .B(n22), .Y(n7) );
  XNOR2X2M U12 ( .A(bit_counter_out[0]), .B(n10), .Y(n13) );
  NOR2BX2M U13 ( .AN(bit_counter_out[0]), .B(n10), .Y(n9) );
  OAI22X1M U14 ( .A0(n9), .A1(n22), .B0(bit_counter_out[1]), .B1(n8), .Y(n12)
         );
  NAND2BX2M U15 ( .AN(n10), .B(bit_counter_out[0]), .Y(n8) );
  NOR2X2M U16 ( .A(n1), .B(N12), .Y(N35) );
  XNOR2X2M U17 ( .A(\add_40/carry[5] ), .B(edge_counter_out[5]), .Y(n1) );
  NOR2X2M U18 ( .A(edge_counter_out[0]), .B(N12), .Y(N30) );
  ADDHX1M U19 ( .A(edge_counter_out[1]), .B(edge_counter_out[0]), .CO(
        \add_40/carry[2] ), .S(N25) );
  ADDHX1M U20 ( .A(edge_counter_out[2]), .B(\add_40/carry[2] ), .CO(
        \add_40/carry[3] ), .S(N26) );
  ADDHX1M U21 ( .A(edge_counter_out[3]), .B(\add_40/carry[3] ), .CO(
        \add_40/carry[4] ), .S(N27) );
  ADDHX1M U22 ( .A(edge_counter_out[4]), .B(\add_40/carry[4] ), .CO(
        \add_40/carry[5] ), .S(N28) );
  INVX2M U23 ( .A(bit_counter_out[1]), .Y(n22) );
  INVX2M U24 ( .A(Prescale[0]), .Y(N5) );
  NAND2BX1M U25 ( .AN(Prescale[1]), .B(N5), .Y(n2) );
  OAI2BB1X1M U26 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N6) );
  OR2X1M U27 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  OAI2BB1X1M U28 ( .A0N(n2), .A1N(Prescale[2]), .B0(n3), .Y(N7) );
  OR2X1M U29 ( .A(n3), .B(Prescale[3]), .Y(n4) );
  OAI2BB1X1M U30 ( .A0N(n3), .A1N(Prescale[3]), .B0(n4), .Y(N8) );
  OR2X1M U31 ( .A(n4), .B(Prescale[4]), .Y(n5) );
  OAI2BB1X1M U32 ( .A0N(n4), .A1N(Prescale[4]), .B0(n5), .Y(N9) );
  NOR2X1M U33 ( .A(n5), .B(Prescale[5]), .Y(N11) );
  AO21XLM U34 ( .A0(n5), .A1(Prescale[5]), .B0(N11), .Y(N10) );
  NOR2BX1M U35 ( .AN(N5), .B(edge_counter_out[0]), .Y(n6) );
  OAI2B2X1M U36 ( .A1N(edge_counter_out[1]), .A0(n6), .B0(N6), .B1(n6), .Y(n17) );
  XNOR2X1M U37 ( .A(N10), .B(edge_counter_out[5]), .Y(n16) );
  NOR2BX1M U38 ( .AN(edge_counter_out[0]), .B(N5), .Y(n14) );
  OAI2B2X1M U39 ( .A1N(N6), .A0(n14), .B0(edge_counter_out[1]), .B1(n14), .Y(
        n15) );
  NAND4BX1M U40 ( .AN(N11), .B(n17), .C(n16), .D(n15), .Y(n21) );
  CLKXOR2X2M U41 ( .A(N9), .B(edge_counter_out[4]), .Y(n20) );
  CLKXOR2X2M U42 ( .A(N7), .B(edge_counter_out[2]), .Y(n19) );
  CLKXOR2X2M U43 ( .A(N8), .B(edge_counter_out[3]), .Y(n18) );
  NOR4X1M U44 ( .A(n21), .B(n20), .C(n19), .D(n18), .Y(N12) );
endmodule


module sampler ( RX_IN, Prescale, sampler_en, edge_counter_out, CLK, RST, 
        sampler_out );
  input [5:0] Prescale;
  input [5:0] edge_counter_out;
  input RX_IN, sampler_en, CLK, RST;
  output sampler_out;
  wire   first_sample, second_sample, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12;

  DFFRQX2M second_sample_reg ( .D(n39), .CK(CLK), .RN(RST), .Q(second_sample)
         );
  DFFRQX2M first_sample_reg ( .D(n38), .CK(CLK), .RN(RST), .Q(first_sample) );
  DFFRQX2M sampler_out_reg ( .D(n37), .CK(CLK), .RN(RST), .Q(sampler_out) );
  NOR4BX1M U3 ( .AN(n20), .B(n21), .C(n22), .D(n23), .Y(n13) );
  NAND4X2M U4 ( .A(Prescale[5]), .B(n10), .C(n9), .D(n11), .Y(n20) );
  INVX2M U5 ( .A(n23), .Y(n8) );
  NOR4X1M U6 ( .A(n10), .B(Prescale[3]), .C(Prescale[4]), .D(Prescale[5]), .Y(
        n23) );
  NOR4X1M U7 ( .A(n11), .B(Prescale[2]), .C(Prescale[3]), .D(Prescale[5]), .Y(
        n21) );
  NOR4X1M U8 ( .A(n9), .B(Prescale[2]), .C(Prescale[4]), .D(Prescale[5]), .Y(
        n22) );
  INVX2M U9 ( .A(Prescale[3]), .Y(n9) );
  INVX2M U10 ( .A(Prescale[2]), .Y(n10) );
  INVX2M U11 ( .A(Prescale[4]), .Y(n11) );
  NAND2X2M U12 ( .A(n6), .B(n5), .Y(n33) );
  NOR4BX1M U13 ( .AN(sampler_en), .B(Prescale[0]), .C(Prescale[1]), .D(
        edge_counter_out[5]), .Y(n30) );
  NOR3BX2M U14 ( .AN(n25), .B(Prescale[0]), .C(Prescale[1]), .Y(n24) );
  OAI2BB1X2M U15 ( .A0N(RX_IN), .A1N(first_sample), .B0(n26), .Y(n25) );
  OAI21X2M U16 ( .A0(RX_IN), .A1(first_sample), .B0(second_sample), .Y(n26) );
  OAI31X1M U17 ( .A0(n1), .A1(n13), .A2(n14), .B0(n15), .Y(n37) );
  NAND2X2M U18 ( .A(sampler_out), .B(n14), .Y(n15) );
  OAI31X1M U19 ( .A0(n16), .A1(Prescale[1]), .A2(Prescale[0]), .B0(sampler_en), 
        .Y(n14) );
  INVX2M U20 ( .A(n24), .Y(n1) );
  OAI2BB2X1M U21 ( .B0(n12), .B1(n27), .A0N(n27), .A1N(first_sample), .Y(n38)
         );
  OAI211X2M U22 ( .A0(n28), .A1(n29), .B0(n3), .C0(n30), .Y(n27) );
  NOR4X1M U23 ( .A(edge_counter_out[1]), .B(edge_counter_out[0]), .C(n8), .D(
        n33), .Y(n28) );
  NOR3X2M U24 ( .A(n2), .B(n31), .C(n7), .Y(n29) );
  OAI2BB2X1M U25 ( .B0(n12), .B1(n34), .A0N(n34), .A1N(second_sample), .Y(n39)
         );
  NAND3X2M U26 ( .A(n35), .B(n7), .C(n30), .Y(n34) );
  AO22X1M U27 ( .A0(n2), .A1(n19), .B0(n18), .B1(edge_counter_out[0]), .Y(n35)
         );
  INVX2M U28 ( .A(RX_IN), .Y(n12) );
  OAI32X1M U29 ( .A0(n3), .A1(n33), .A2(n20), .B0(edge_counter_out[4]), .B1(
        n36), .Y(n19) );
  AOI33X2M U30 ( .A0(n21), .A1(n6), .A2(edge_counter_out[3]), .B0(n22), .B1(n5), .B2(edge_counter_out[2]), .Y(n36) );
  OAI21BX1M U31 ( .A0(edge_counter_out[5]), .A1(n17), .B0N(n13), .Y(n16) );
  AOI33X2M U32 ( .A0(n18), .A1(n2), .A2(edge_counter_out[1]), .B0(n19), .B1(n7), .B2(edge_counter_out[0]), .Y(n17) );
  INVX2M U33 ( .A(edge_counter_out[3]), .Y(n5) );
  INVX2M U34 ( .A(edge_counter_out[2]), .Y(n6) );
  AOI22X1M U35 ( .A0(edge_counter_out[2]), .A1(n32), .B0(n22), .B1(n4), .Y(n31) );
  OAI2BB2X1M U36 ( .B0(n20), .B1(n5), .A0N(n5), .A1N(n21), .Y(n32) );
  INVX2M U37 ( .A(n33), .Y(n4) );
  NOR3X2M U38 ( .A(n8), .B(edge_counter_out[4]), .C(n33), .Y(n18) );
  INVX2M U39 ( .A(edge_counter_out[1]), .Y(n7) );
  INVX2M U40 ( .A(edge_counter_out[0]), .Y(n2) );
  INVX2M U41 ( .A(edge_counter_out[4]), .Y(n3) );
endmodule


module uart_rx_DATA_WIDTH8 ( RX_IN, Prescale, PAR_EN, PAR_TYP, CLK, RST, 
        P_DATA, data_valid, parity_error, stop_error );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST;
  output data_valid, parity_error, stop_error;
  wire   data_valid_comb, sampler_out, parity_checker_out, sampler_en,
         parity_checker_en, bit_counter_en, deserializer_en, deserializer_in,
         n1, n2;
  wire   [5:0] edge_counter_out;
  wire   [3:0] bit_counter_out;
  wire   SYNOPSYS_UNCONNECTED__0;

  Rx_FSM fsm_inst ( .RX_IN(RX_IN), .sampler_out(sampler_out), .Prescale(
        Prescale), .bit_counter_out({1'b0, bit_counter_out[2:0]}), 
        .edge_counter_out(edge_counter_out), .parity_checker_out(
        parity_checker_out), .PAR_EN(PAR_EN), .CLK(CLK), .RST(n1), 
        .sampler_en(sampler_en), .parity_checker_en(parity_checker_en), 
        .bit_counter_en(bit_counter_en), .deserializer_en(deserializer_en), 
        .deserializer_in(deserializer_in), .parity_error(parity_error), 
        .stop_error(stop_error), .data_valid(data_valid_comb) );
  deserializer deser_inst ( .deserializer_en(deserializer_en), 
        .deserializer_in(deserializer_in), .Prescale(Prescale), 
        .edge_counter_out(edge_counter_out), .CLK(CLK), .RST(n1), .P_DATA(
        P_DATA) );
  parity_checker par_inst ( .parity_checker_en(parity_checker_en), .PAR_TYP(
        PAR_TYP), .P_DATA(P_DATA), .CLK(CLK), .RST(n1), .parity_checker_out(
        parity_checker_out) );
  edge_bit_counter cnt_inst ( .bit_counter_en(bit_counter_en), .Prescale(
        Prescale), .CLK(CLK), .RST(n1), .bit_counter_out({
        SYNOPSYS_UNCONNECTED__0, bit_counter_out[2:0]}), .edge_counter_out(
        edge_counter_out) );
  sampler samp_inst ( .RX_IN(RX_IN), .Prescale(Prescale), .sampler_en(
        sampler_en), .edge_counter_out(edge_counter_out), .CLK(CLK), .RST(n1), 
        .sampler_out(sampler_out) );
  DFFRQX2M data_valid_reg ( .D(data_valid_comb), .CK(CLK), .RN(n1), .Q(
        data_valid) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module uart_top_DATA_WIDTH8 ( tx_clk, rx_clk, RST, Prescale, PAR_EN, PAR_TYP, 
        TX_P_DATA, TX_DATA_VALID, TX_OUT, TX_BUSY, RX_IN, RX_P_DATA, 
        RX_DATA_VALID, RX_PARITY_ERROR, RX_STOP_ERROR );
  input [5:0] Prescale;
  input [7:0] TX_P_DATA;
  output [7:0] RX_P_DATA;
  input tx_clk, rx_clk, RST, PAR_EN, PAR_TYP, TX_DATA_VALID, RX_IN;
  output TX_OUT, TX_BUSY, RX_DATA_VALID, RX_PARITY_ERROR, RX_STOP_ERROR;


  UART_Tx_DATA_WIDTH8 u_uart_tx ( .P_DATA(TX_P_DATA), .DATA_VALID(
        TX_DATA_VALID), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .CLK(tx_clk), 
        .RST(RST), .Tx_out(TX_OUT), .Busy(TX_BUSY) );
  uart_rx_DATA_WIDTH8 u_uart_rx ( .RX_IN(RX_IN), .Prescale(Prescale), .PAR_EN(
        PAR_EN), .PAR_TYP(PAR_TYP), .CLK(rx_clk), .RST(RST), .P_DATA(RX_P_DATA), .data_valid(RX_DATA_VALID), .parity_error(RX_PARITY_ERROR), .stop_error(
        RX_STOP_ERROR) );
endmodule


module SOURCE_DOMAIN_PTR_WIDTH4 ( write_enable, sync_read_ptr, write_clk, 
        write_rst, write_addr, gray_write_ptr, fifo_full );
  input [3:0] sync_read_ptr;
  output [2:0] write_addr;
  output [3:0] gray_write_ptr;
  input write_enable, write_clk, write_rst;
  output fifo_full;
  wire   N24, N25, N26, N27, n3, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n1, n4, n5;

  DFFRQX2M \write_ptr_reg[2]  ( .D(n24), .CK(write_clk), .RN(write_rst), .Q(
        write_addr[2]) );
  DFFRX1M \write_ptr_reg[3]  ( .D(N27), .CK(write_clk), .RN(write_rst), .QN(n3) );
  DFFRQX2M \gray_write_ptr_reg[0]  ( .D(N24), .CK(write_clk), .RN(write_rst), 
        .Q(gray_write_ptr[0]) );
  DFFRQX2M \gray_write_ptr_reg[1]  ( .D(N25), .CK(write_clk), .RN(write_rst), 
        .Q(gray_write_ptr[1]) );
  DFFRQX2M \gray_write_ptr_reg[3]  ( .D(N27), .CK(write_clk), .RN(write_rst), 
        .Q(gray_write_ptr[3]) );
  DFFRQX2M \gray_write_ptr_reg[2]  ( .D(N26), .CK(write_clk), .RN(write_rst), 
        .Q(gray_write_ptr[2]) );
  DFFRQX2M \write_ptr_reg[1]  ( .D(n25), .CK(write_clk), .RN(write_rst), .Q(
        write_addr[1]) );
  DFFRQX2M \write_ptr_reg[0]  ( .D(n26), .CK(write_clk), .RN(write_rst), .Q(
        write_addr[0]) );
  INVX2M U3 ( .A(n9), .Y(n1) );
  NAND2X2M U4 ( .A(write_enable), .B(n11), .Y(n9) );
  OAI22X1M U5 ( .A0(n8), .A1(n9), .B0(n1), .B1(n5), .Y(n24) );
  INVX2M U6 ( .A(n11), .Y(fifo_full) );
  OAI22X1M U7 ( .A0(n12), .A1(n9), .B0(n1), .B1(n3), .Y(N27) );
  OAI22X1M U8 ( .A0(n17), .A1(n9), .B0(n1), .B1(n18), .Y(N25) );
  CLKXOR2X2M U9 ( .A(write_addr[1]), .B(n5), .Y(n18) );
  CLKXOR2X2M U10 ( .A(n8), .B(n10), .Y(n17) );
  OAI22X1M U11 ( .A0(n13), .A1(n9), .B0(n1), .B1(n14), .Y(N26) );
  CLKXOR2X2M U12 ( .A(n3), .B(write_addr[2]), .Y(n14) );
  CLKXOR2X2M U13 ( .A(n12), .B(n4), .Y(n13) );
  INVX2M U14 ( .A(n8), .Y(n4) );
  NAND4X2M U15 ( .A(n20), .B(n21), .C(n22), .D(n23), .Y(n11) );
  XNOR2X2M U16 ( .A(sync_read_ptr[1]), .B(gray_write_ptr[1]), .Y(n20) );
  XNOR2X2M U17 ( .A(sync_read_ptr[0]), .B(gray_write_ptr[0]), .Y(n21) );
  CLKXOR2X2M U18 ( .A(sync_read_ptr[3]), .B(gray_write_ptr[3]), .Y(n22) );
  CLKXOR2X2M U19 ( .A(sync_read_ptr[2]), .B(gray_write_ptr[2]), .Y(n23) );
  AO22X1M U20 ( .A0(n9), .A1(write_addr[1]), .B0(n10), .B1(n1), .Y(n25) );
  CLKXOR2X2M U21 ( .A(write_addr[0]), .B(n1), .Y(n26) );
  CLKXOR2X2M U22 ( .A(n19), .B(n10), .Y(N24) );
  NOR2X2M U23 ( .A(write_addr[0]), .B(n9), .Y(n19) );
  NAND2X2M U24 ( .A(write_addr[1]), .B(write_addr[0]), .Y(n16) );
  CLKXOR2X2M U25 ( .A(n16), .B(write_addr[2]), .Y(n8) );
  INVX2M U26 ( .A(write_addr[2]), .Y(n5) );
  CLKXOR2X2M U27 ( .A(write_addr[0]), .B(write_addr[1]), .Y(n10) );
  CLKXOR2X2M U28 ( .A(n3), .B(n15), .Y(n12) );
  NOR2X2M U29 ( .A(n16), .B(n5), .Y(n15) );
endmodule


module GRAY_SYNC_SYNC_STAGES2_PTR_WIDTH4_0 ( gray_ptr_in, dest_clk, dest_rst, 
        gray_ptr_sync );
  input [3:0] gray_ptr_in;
  output [3:0] gray_ptr_sync;
  input dest_clk, dest_rst;
  wire   \sync_chain[0][1] , \sync_chain[0][0] , \sync_chain[1][1] ,
         \sync_chain[1][0] , \sync_chain[2][1] , \sync_chain[2][0] ,
         \sync_chain[3][1] , \sync_chain[3][0] ;

  DFFRQX2M \gray_ptr_sync_reg[0]  ( .D(\sync_chain[0][0] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(gray_ptr_sync[0]) );
  DFFRQX2M \gray_ptr_sync_reg[1]  ( .D(\sync_chain[1][0] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(gray_ptr_sync[1]) );
  DFFRQX2M \gray_ptr_sync_reg[2]  ( .D(\sync_chain[2][0] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(gray_ptr_sync[2]) );
  DFFRQX2M \gray_ptr_sync_reg[3]  ( .D(\sync_chain[3][0] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(gray_ptr_sync[3]) );
  DFFRQX2M \sync_chain_reg[0][1]  ( .D(gray_ptr_in[0]), .CK(dest_clk), .RN(
        dest_rst), .Q(\sync_chain[0][1] ) );
  DFFRQX2M \sync_chain_reg[0][0]  ( .D(\sync_chain[0][1] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(\sync_chain[0][0] ) );
  DFFRQX2M \sync_chain_reg[1][1]  ( .D(gray_ptr_in[1]), .CK(dest_clk), .RN(
        dest_rst), .Q(\sync_chain[1][1] ) );
  DFFRQX2M \sync_chain_reg[1][0]  ( .D(\sync_chain[1][1] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(\sync_chain[1][0] ) );
  DFFRQX2M \sync_chain_reg[2][1]  ( .D(gray_ptr_in[2]), .CK(dest_clk), .RN(
        dest_rst), .Q(\sync_chain[2][1] ) );
  DFFRQX2M \sync_chain_reg[2][0]  ( .D(\sync_chain[2][1] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(\sync_chain[2][0] ) );
  DFFRQX2M \sync_chain_reg[3][1]  ( .D(gray_ptr_in[3]), .CK(dest_clk), .RN(
        dest_rst), .Q(\sync_chain[3][1] ) );
  DFFRQX2M \sync_chain_reg[3][0]  ( .D(\sync_chain[3][1] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(\sync_chain[3][0] ) );
endmodule


module DESTINATION_DOMAIN_PTR_WIDTH4 ( read_enable, sync_write_ptr, read_clk, 
        read_rst, read_addr, gray_read_ptr, fifo_empty );
  input [3:0] sync_write_ptr;
  output [2:0] read_addr;
  output [3:0] gray_read_ptr;
  input read_enable, read_clk, read_rst;
  output fifo_empty;
  wire   N22, N23, N24, N25, n3, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n1, n4, n5;

  DFFRX1M \read_ptr_reg[3]  ( .D(N25), .CK(read_clk), .RN(read_rst), .QN(n3)
         );
  DFFRQX2M \gray_read_ptr_reg[0]  ( .D(N22), .CK(read_clk), .RN(read_rst), .Q(
        gray_read_ptr[0]) );
  DFFRQX2M \gray_read_ptr_reg[3]  ( .D(N25), .CK(read_clk), .RN(read_rst), .Q(
        gray_read_ptr[3]) );
  DFFRQX2M \gray_read_ptr_reg[2]  ( .D(N24), .CK(read_clk), .RN(read_rst), .Q(
        gray_read_ptr[2]) );
  DFFRQX2M \gray_read_ptr_reg[1]  ( .D(N23), .CK(read_clk), .RN(read_rst), .Q(
        gray_read_ptr[1]) );
  DFFRQX2M \read_ptr_reg[2]  ( .D(n24), .CK(read_clk), .RN(read_rst), .Q(
        read_addr[2]) );
  DFFRQX2M \read_ptr_reg[1]  ( .D(n25), .CK(read_clk), .RN(read_rst), .Q(
        read_addr[1]) );
  DFFRQX2M \read_ptr_reg[0]  ( .D(n26), .CK(read_clk), .RN(read_rst), .Q(
        read_addr[0]) );
  OAI22X1M U3 ( .A0(n8), .A1(n9), .B0(n1), .B1(n5), .Y(n24) );
  INVX2M U4 ( .A(n9), .Y(n1) );
  INVX2M U5 ( .A(n11), .Y(fifo_empty) );
  XNOR2X2M U6 ( .A(sync_write_ptr[1]), .B(gray_read_ptr[1]), .Y(n20) );
  OAI22X1M U7 ( .A0(n12), .A1(n9), .B0(n1), .B1(n3), .Y(N25) );
  OAI22X1M U8 ( .A0(n17), .A1(n9), .B0(n1), .B1(n18), .Y(N23) );
  CLKXOR2X2M U9 ( .A(read_addr[1]), .B(n5), .Y(n18) );
  CLKXOR2X2M U10 ( .A(n8), .B(n10), .Y(n17) );
  OAI22X1M U11 ( .A0(n13), .A1(n9), .B0(n1), .B1(n14), .Y(N24) );
  CLKXOR2X2M U12 ( .A(n3), .B(read_addr[2]), .Y(n14) );
  CLKXOR2X2M U13 ( .A(n12), .B(n4), .Y(n13) );
  INVX2M U14 ( .A(n8), .Y(n4) );
  NAND4X2M U15 ( .A(n20), .B(n21), .C(n22), .D(n23), .Y(n11) );
  XNOR2X2M U16 ( .A(sync_write_ptr[3]), .B(gray_read_ptr[3]), .Y(n22) );
  XNOR2X2M U17 ( .A(sync_write_ptr[2]), .B(gray_read_ptr[2]), .Y(n23) );
  XNOR2X2M U18 ( .A(sync_write_ptr[0]), .B(gray_read_ptr[0]), .Y(n21) );
  NAND2X2M U19 ( .A(read_enable), .B(n11), .Y(n9) );
  NAND2X2M U20 ( .A(read_addr[1]), .B(read_addr[0]), .Y(n16) );
  INVX2M U21 ( .A(read_addr[2]), .Y(n5) );
  CLKXOR2X2M U22 ( .A(n3), .B(n15), .Y(n12) );
  NOR2X2M U23 ( .A(n16), .B(n5), .Y(n15) );
  AO22X1M U24 ( .A0(n9), .A1(read_addr[1]), .B0(n10), .B1(n1), .Y(n25) );
  CLKXOR2X2M U25 ( .A(read_addr[0]), .B(n1), .Y(n26) );
  CLKXOR2X2M U26 ( .A(n19), .B(n10), .Y(N22) );
  NOR2X2M U27 ( .A(read_addr[0]), .B(n9), .Y(n19) );
  CLKXOR2X2M U28 ( .A(n16), .B(read_addr[2]), .Y(n8) );
  CLKXOR2X2M U29 ( .A(read_addr[0]), .B(read_addr[1]), .Y(n10) );
endmodule


module GRAY_SYNC_SYNC_STAGES2_PTR_WIDTH4_1 ( gray_ptr_in, dest_clk, dest_rst, 
        gray_ptr_sync );
  input [3:0] gray_ptr_in;
  output [3:0] gray_ptr_sync;
  input dest_clk, dest_rst;
  wire   \sync_chain[0][1] , \sync_chain[0][0] , \sync_chain[1][1] ,
         \sync_chain[1][0] , \sync_chain[2][1] , \sync_chain[2][0] ,
         \sync_chain[3][1] , \sync_chain[3][0] ;

  DFFRQX2M \gray_ptr_sync_reg[0]  ( .D(\sync_chain[0][0] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(gray_ptr_sync[0]) );
  DFFRQX2M \gray_ptr_sync_reg[1]  ( .D(\sync_chain[1][0] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(gray_ptr_sync[1]) );
  DFFRQX2M \gray_ptr_sync_reg[2]  ( .D(\sync_chain[2][0] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(gray_ptr_sync[2]) );
  DFFRQX2M \gray_ptr_sync_reg[3]  ( .D(\sync_chain[3][0] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(gray_ptr_sync[3]) );
  DFFRQX2M \sync_chain_reg[0][1]  ( .D(gray_ptr_in[0]), .CK(dest_clk), .RN(
        dest_rst), .Q(\sync_chain[0][1] ) );
  DFFRQX2M \sync_chain_reg[0][0]  ( .D(\sync_chain[0][1] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(\sync_chain[0][0] ) );
  DFFRQX2M \sync_chain_reg[1][1]  ( .D(gray_ptr_in[1]), .CK(dest_clk), .RN(
        dest_rst), .Q(\sync_chain[1][1] ) );
  DFFRQX2M \sync_chain_reg[1][0]  ( .D(\sync_chain[1][1] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(\sync_chain[1][0] ) );
  DFFRQX2M \sync_chain_reg[2][1]  ( .D(gray_ptr_in[2]), .CK(dest_clk), .RN(
        dest_rst), .Q(\sync_chain[2][1] ) );
  DFFRQX2M \sync_chain_reg[2][0]  ( .D(\sync_chain[2][1] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(\sync_chain[2][0] ) );
  DFFRQX2M \sync_chain_reg[3][1]  ( .D(gray_ptr_in[3]), .CK(dest_clk), .RN(
        dest_rst), .Q(\sync_chain[3][1] ) );
  DFFRQX2M \sync_chain_reg[3][0]  ( .D(\sync_chain[3][1] ), .CK(dest_clk), 
        .RN(dest_rst), .Q(\sync_chain[3][0] ) );
endmodule


module FIFO_BUFFER_DATA_WIDTH8_DEPTH8 ( wr_data, write_enable, fifo_full, 
        write_clk, write_rst, write_addr, read_addr, rd_data );
  input [7:0] wr_data;
  input [2:0] write_addr;
  input [2:0] read_addr;
  output [7:0] rd_data;
  input write_enable, fifo_full, write_clk, write_rst;
  wire   N9, N10, N11, \mem_array[0][7] , \mem_array[0][6] , \mem_array[0][5] ,
         \mem_array[0][4] , \mem_array[0][3] , \mem_array[0][2] ,
         \mem_array[0][1] , \mem_array[0][0] , \mem_array[1][7] ,
         \mem_array[1][6] , \mem_array[1][5] , \mem_array[1][4] ,
         \mem_array[1][3] , \mem_array[1][2] , \mem_array[1][1] ,
         \mem_array[1][0] , \mem_array[2][7] , \mem_array[2][6] ,
         \mem_array[2][5] , \mem_array[2][4] , \mem_array[2][3] ,
         \mem_array[2][2] , \mem_array[2][1] , \mem_array[2][0] ,
         \mem_array[3][7] , \mem_array[3][6] , \mem_array[3][5] ,
         \mem_array[3][4] , \mem_array[3][3] , \mem_array[3][2] ,
         \mem_array[3][1] , \mem_array[3][0] , \mem_array[4][7] ,
         \mem_array[4][6] , \mem_array[4][5] , \mem_array[4][4] ,
         \mem_array[4][3] , \mem_array[4][2] , \mem_array[4][1] ,
         \mem_array[4][0] , \mem_array[5][7] , \mem_array[5][6] ,
         \mem_array[5][5] , \mem_array[5][4] , \mem_array[5][3] ,
         \mem_array[5][2] , \mem_array[5][1] , \mem_array[5][0] ,
         \mem_array[6][7] , \mem_array[6][6] , \mem_array[6][5] ,
         \mem_array[6][4] , \mem_array[6][3] , \mem_array[6][2] ,
         \mem_array[6][1] , \mem_array[6][0] , \mem_array[7][7] ,
         \mem_array[7][6] , \mem_array[7][5] , \mem_array[7][4] ,
         \mem_array[7][3] , \mem_array[7][2] , \mem_array[7][1] ,
         \mem_array[7][0] , n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137;
  assign N9 = read_addr[0];
  assign N10 = read_addr[1];
  assign N11 = read_addr[2];

  DFFRQX2M \mem_array_reg[0][7]  ( .D(n85), .CK(write_clk), .RN(n123), .Q(
        \mem_array[0][7] ) );
  DFFRQX2M \mem_array_reg[0][6]  ( .D(n84), .CK(write_clk), .RN(n123), .Q(
        \mem_array[0][6] ) );
  DFFRQX2M \mem_array_reg[0][5]  ( .D(n83), .CK(write_clk), .RN(n123), .Q(
        \mem_array[0][5] ) );
  DFFRQX2M \mem_array_reg[0][4]  ( .D(n82), .CK(write_clk), .RN(n123), .Q(
        \mem_array[0][4] ) );
  DFFRQX2M \mem_array_reg[0][3]  ( .D(n81), .CK(write_clk), .RN(n123), .Q(
        \mem_array[0][3] ) );
  DFFRQX2M \mem_array_reg[0][2]  ( .D(n80), .CK(write_clk), .RN(n123), .Q(
        \mem_array[0][2] ) );
  DFFRQX2M \mem_array_reg[0][1]  ( .D(n79), .CK(write_clk), .RN(n123), .Q(
        \mem_array[0][1] ) );
  DFFRQX2M \mem_array_reg[0][0]  ( .D(n78), .CK(write_clk), .RN(n123), .Q(
        \mem_array[0][0] ) );
  DFFRQX2M \mem_array_reg[1][7]  ( .D(n77), .CK(write_clk), .RN(n123), .Q(
        \mem_array[1][7] ) );
  DFFRQX2M \mem_array_reg[1][6]  ( .D(n76), .CK(write_clk), .RN(n123), .Q(
        \mem_array[1][6] ) );
  DFFRQX2M \mem_array_reg[1][5]  ( .D(n75), .CK(write_clk), .RN(n123), .Q(
        \mem_array[1][5] ) );
  DFFRQX2M \mem_array_reg[1][4]  ( .D(n74), .CK(write_clk), .RN(n123), .Q(
        \mem_array[1][4] ) );
  DFFRQX2M \mem_array_reg[1][3]  ( .D(n73), .CK(write_clk), .RN(n123), .Q(
        \mem_array[1][3] ) );
  DFFRQX2M \mem_array_reg[1][2]  ( .D(n72), .CK(write_clk), .RN(n124), .Q(
        \mem_array[1][2] ) );
  DFFRQX2M \mem_array_reg[1][1]  ( .D(n71), .CK(write_clk), .RN(n124), .Q(
        \mem_array[1][1] ) );
  DFFRQX2M \mem_array_reg[1][0]  ( .D(n70), .CK(write_clk), .RN(n124), .Q(
        \mem_array[1][0] ) );
  DFFRQX2M \mem_array_reg[4][7]  ( .D(n53), .CK(write_clk), .RN(n125), .Q(
        \mem_array[4][7] ) );
  DFFRQX2M \mem_array_reg[4][6]  ( .D(n52), .CK(write_clk), .RN(n125), .Q(
        \mem_array[4][6] ) );
  DFFRQX2M \mem_array_reg[4][5]  ( .D(n51), .CK(write_clk), .RN(n125), .Q(
        \mem_array[4][5] ) );
  DFFRQX2M \mem_array_reg[4][4]  ( .D(n50), .CK(write_clk), .RN(n125), .Q(
        \mem_array[4][4] ) );
  DFFRQX2M \mem_array_reg[4][3]  ( .D(n49), .CK(write_clk), .RN(n125), .Q(
        \mem_array[4][3] ) );
  DFFRQX2M \mem_array_reg[4][2]  ( .D(n48), .CK(write_clk), .RN(n125), .Q(
        \mem_array[4][2] ) );
  DFFRQX2M \mem_array_reg[4][1]  ( .D(n47), .CK(write_clk), .RN(n125), .Q(
        \mem_array[4][1] ) );
  DFFRQX2M \mem_array_reg[4][0]  ( .D(n46), .CK(write_clk), .RN(n126), .Q(
        \mem_array[4][0] ) );
  DFFRQX2M \mem_array_reg[5][7]  ( .D(n45), .CK(write_clk), .RN(n126), .Q(
        \mem_array[5][7] ) );
  DFFRQX2M \mem_array_reg[5][6]  ( .D(n44), .CK(write_clk), .RN(n126), .Q(
        \mem_array[5][6] ) );
  DFFRQX2M \mem_array_reg[5][5]  ( .D(n43), .CK(write_clk), .RN(n126), .Q(
        \mem_array[5][5] ) );
  DFFRQX2M \mem_array_reg[5][4]  ( .D(n42), .CK(write_clk), .RN(n126), .Q(
        \mem_array[5][4] ) );
  DFFRQX2M \mem_array_reg[5][3]  ( .D(n41), .CK(write_clk), .RN(n126), .Q(
        \mem_array[5][3] ) );
  DFFRQX2M \mem_array_reg[5][2]  ( .D(n40), .CK(write_clk), .RN(n126), .Q(
        \mem_array[5][2] ) );
  DFFRQX2M \mem_array_reg[5][1]  ( .D(n39), .CK(write_clk), .RN(n126), .Q(
        \mem_array[5][1] ) );
  DFFRQX2M \mem_array_reg[5][0]  ( .D(n38), .CK(write_clk), .RN(n126), .Q(
        \mem_array[5][0] ) );
  DFFRQX2M \mem_array_reg[6][7]  ( .D(n37), .CK(write_clk), .RN(n126), .Q(
        \mem_array[6][7] ) );
  DFFRQX2M \mem_array_reg[6][6]  ( .D(n36), .CK(write_clk), .RN(n126), .Q(
        \mem_array[6][6] ) );
  DFFRQX2M \mem_array_reg[6][5]  ( .D(n35), .CK(write_clk), .RN(n126), .Q(
        \mem_array[6][5] ) );
  DFFRQX2M \mem_array_reg[6][4]  ( .D(n34), .CK(write_clk), .RN(n126), .Q(
        \mem_array[6][4] ) );
  DFFRQX2M \mem_array_reg[6][3]  ( .D(n33), .CK(write_clk), .RN(n127), .Q(
        \mem_array[6][3] ) );
  DFFRQX2M \mem_array_reg[6][2]  ( .D(n32), .CK(write_clk), .RN(n127), .Q(
        \mem_array[6][2] ) );
  DFFRQX2M \mem_array_reg[6][1]  ( .D(n31), .CK(write_clk), .RN(n127), .Q(
        \mem_array[6][1] ) );
  DFFRQX2M \mem_array_reg[6][0]  ( .D(n30), .CK(write_clk), .RN(n127), .Q(
        \mem_array[6][0] ) );
  DFFRQX2M \mem_array_reg[7][7]  ( .D(n29), .CK(write_clk), .RN(n127), .Q(
        \mem_array[7][7] ) );
  DFFRQX2M \mem_array_reg[7][6]  ( .D(n28), .CK(write_clk), .RN(n127), .Q(
        \mem_array[7][6] ) );
  DFFRQX2M \mem_array_reg[7][5]  ( .D(n27), .CK(write_clk), .RN(n127), .Q(
        \mem_array[7][5] ) );
  DFFRQX2M \mem_array_reg[7][4]  ( .D(n26), .CK(write_clk), .RN(n127), .Q(
        \mem_array[7][4] ) );
  DFFRQX2M \mem_array_reg[7][3]  ( .D(n25), .CK(write_clk), .RN(n127), .Q(
        \mem_array[7][3] ) );
  DFFRQX2M \mem_array_reg[7][2]  ( .D(n24), .CK(write_clk), .RN(n127), .Q(
        \mem_array[7][2] ) );
  DFFRQX2M \mem_array_reg[7][1]  ( .D(n23), .CK(write_clk), .RN(n127), .Q(
        \mem_array[7][1] ) );
  DFFRQX2M \mem_array_reg[7][0]  ( .D(n22), .CK(write_clk), .RN(n127), .Q(
        \mem_array[7][0] ) );
  DFFRQX2M \mem_array_reg[2][7]  ( .D(n69), .CK(write_clk), .RN(n124), .Q(
        \mem_array[2][7] ) );
  DFFRQX2M \mem_array_reg[2][6]  ( .D(n68), .CK(write_clk), .RN(n124), .Q(
        \mem_array[2][6] ) );
  DFFRQX2M \mem_array_reg[2][5]  ( .D(n67), .CK(write_clk), .RN(n124), .Q(
        \mem_array[2][5] ) );
  DFFRQX2M \mem_array_reg[2][4]  ( .D(n66), .CK(write_clk), .RN(n124), .Q(
        \mem_array[2][4] ) );
  DFFRQX2M \mem_array_reg[2][3]  ( .D(n65), .CK(write_clk), .RN(n124), .Q(
        \mem_array[2][3] ) );
  DFFRQX2M \mem_array_reg[2][2]  ( .D(n64), .CK(write_clk), .RN(n124), .Q(
        \mem_array[2][2] ) );
  DFFRQX2M \mem_array_reg[2][1]  ( .D(n63), .CK(write_clk), .RN(n124), .Q(
        \mem_array[2][1] ) );
  DFFRQX2M \mem_array_reg[2][0]  ( .D(n62), .CK(write_clk), .RN(n124), .Q(
        \mem_array[2][0] ) );
  DFFRQX2M \mem_array_reg[3][7]  ( .D(n61), .CK(write_clk), .RN(n124), .Q(
        \mem_array[3][7] ) );
  DFFRQX2M \mem_array_reg[3][6]  ( .D(n60), .CK(write_clk), .RN(n124), .Q(
        \mem_array[3][6] ) );
  DFFRQX2M \mem_array_reg[3][5]  ( .D(n59), .CK(write_clk), .RN(n125), .Q(
        \mem_array[3][5] ) );
  DFFRQX2M \mem_array_reg[3][4]  ( .D(n58), .CK(write_clk), .RN(n125), .Q(
        \mem_array[3][4] ) );
  DFFRQX2M \mem_array_reg[3][3]  ( .D(n57), .CK(write_clk), .RN(n125), .Q(
        \mem_array[3][3] ) );
  DFFRQX2M \mem_array_reg[3][2]  ( .D(n56), .CK(write_clk), .RN(n125), .Q(
        \mem_array[3][2] ) );
  DFFRQX2M \mem_array_reg[3][1]  ( .D(n55), .CK(write_clk), .RN(n125), .Q(
        \mem_array[3][1] ) );
  DFFRQX2M \mem_array_reg[3][0]  ( .D(n54), .CK(write_clk), .RN(n125), .Q(
        \mem_array[3][0] ) );
  BUFX2M U2 ( .A(n13), .Y(n119) );
  BUFX2M U3 ( .A(n11), .Y(n120) );
  BUFX2M U4 ( .A(n17), .Y(n117) );
  BUFX2M U5 ( .A(n19), .Y(n116) );
  BUFX2M U6 ( .A(n14), .Y(n118) );
  BUFX2M U7 ( .A(n121), .Y(n125) );
  BUFX2M U8 ( .A(n121), .Y(n124) );
  BUFX2M U9 ( .A(n121), .Y(n123) );
  BUFX2M U10 ( .A(n122), .Y(n126) );
  BUFX2M U11 ( .A(n122), .Y(n127) );
  NOR2BX2M U12 ( .AN(write_enable), .B(fifo_full), .Y(n16) );
  BUFX2M U13 ( .A(write_rst), .Y(n121) );
  BUFX2M U14 ( .A(write_rst), .Y(n122) );
  NAND3X2M U15 ( .A(n136), .B(n137), .C(n12), .Y(n15) );
  NAND3X2M U16 ( .A(n136), .B(n137), .C(n18), .Y(n21) );
  NOR2X2M U17 ( .A(n112), .B(n113), .Y(n108) );
  NOR2BX2M U18 ( .AN(n16), .B(write_addr[2]), .Y(n18) );
  OAI2BB2X1M U19 ( .B0(n135), .B1(n21), .A0N(\mem_array[0][0] ), .A1N(n21), 
        .Y(n78) );
  OAI2BB2X1M U20 ( .B0(n134), .B1(n21), .A0N(\mem_array[0][1] ), .A1N(n21), 
        .Y(n79) );
  OAI2BB2X1M U21 ( .B0(n133), .B1(n21), .A0N(\mem_array[0][2] ), .A1N(n21), 
        .Y(n80) );
  OAI2BB2X1M U22 ( .B0(n132), .B1(n21), .A0N(\mem_array[0][3] ), .A1N(n21), 
        .Y(n81) );
  OAI2BB2X1M U23 ( .B0(n131), .B1(n21), .A0N(\mem_array[0][4] ), .A1N(n21), 
        .Y(n82) );
  OAI2BB2X1M U24 ( .B0(n130), .B1(n21), .A0N(\mem_array[0][5] ), .A1N(n21), 
        .Y(n83) );
  OAI2BB2X1M U25 ( .B0(n129), .B1(n21), .A0N(\mem_array[0][6] ), .A1N(n21), 
        .Y(n84) );
  OAI2BB2X1M U26 ( .B0(n128), .B1(n21), .A0N(\mem_array[0][7] ), .A1N(n21), 
        .Y(n85) );
  OAI2BB2X1M U27 ( .B0(n135), .B1(n15), .A0N(\mem_array[4][0] ), .A1N(n15), 
        .Y(n46) );
  OAI2BB2X1M U28 ( .B0(n134), .B1(n15), .A0N(\mem_array[4][1] ), .A1N(n15), 
        .Y(n47) );
  OAI2BB2X1M U29 ( .B0(n133), .B1(n15), .A0N(\mem_array[4][2] ), .A1N(n15), 
        .Y(n48) );
  OAI2BB2X1M U30 ( .B0(n132), .B1(n15), .A0N(\mem_array[4][3] ), .A1N(n15), 
        .Y(n49) );
  OAI2BB2X1M U31 ( .B0(n131), .B1(n15), .A0N(\mem_array[4][4] ), .A1N(n15), 
        .Y(n50) );
  OAI2BB2X1M U32 ( .B0(n130), .B1(n15), .A0N(\mem_array[4][5] ), .A1N(n15), 
        .Y(n51) );
  OAI2BB2X1M U33 ( .B0(n129), .B1(n15), .A0N(\mem_array[4][6] ), .A1N(n15), 
        .Y(n52) );
  OAI2BB2X1M U34 ( .B0(n128), .B1(n15), .A0N(\mem_array[4][7] ), .A1N(n15), 
        .Y(n53) );
  INVX2M U35 ( .A(wr_data[0]), .Y(n135) );
  INVX2M U36 ( .A(wr_data[1]), .Y(n134) );
  INVX2M U37 ( .A(wr_data[2]), .Y(n133) );
  INVX2M U38 ( .A(wr_data[3]), .Y(n132) );
  INVX2M U39 ( .A(wr_data[4]), .Y(n131) );
  INVX2M U40 ( .A(wr_data[5]), .Y(n130) );
  INVX2M U41 ( .A(wr_data[6]), .Y(n129) );
  INVX2M U42 ( .A(wr_data[7]), .Y(n128) );
  BUFX2M U43 ( .A(n20), .Y(n115) );
  NAND3X2M U44 ( .A(write_addr[0]), .B(n137), .C(n18), .Y(n20) );
  OAI2BB2X1M U45 ( .B0(n135), .B1(n119), .A0N(\mem_array[6][0] ), .A1N(n119), 
        .Y(n30) );
  OAI2BB2X1M U46 ( .B0(n134), .B1(n119), .A0N(\mem_array[6][1] ), .A1N(n119), 
        .Y(n31) );
  OAI2BB2X1M U47 ( .B0(n133), .B1(n119), .A0N(\mem_array[6][2] ), .A1N(n119), 
        .Y(n32) );
  OAI2BB2X1M U48 ( .B0(n132), .B1(n119), .A0N(\mem_array[6][3] ), .A1N(n119), 
        .Y(n33) );
  OAI2BB2X1M U49 ( .B0(n131), .B1(n119), .A0N(\mem_array[6][4] ), .A1N(n119), 
        .Y(n34) );
  OAI2BB2X1M U50 ( .B0(n130), .B1(n119), .A0N(\mem_array[6][5] ), .A1N(n119), 
        .Y(n35) );
  OAI2BB2X1M U51 ( .B0(n129), .B1(n119), .A0N(\mem_array[6][6] ), .A1N(n119), 
        .Y(n36) );
  OAI2BB2X1M U52 ( .B0(n128), .B1(n119), .A0N(\mem_array[6][7] ), .A1N(n119), 
        .Y(n37) );
  OAI2BB2X1M U53 ( .B0(n135), .B1(n118), .A0N(\mem_array[5][0] ), .A1N(n118), 
        .Y(n38) );
  OAI2BB2X1M U54 ( .B0(n134), .B1(n118), .A0N(\mem_array[5][1] ), .A1N(n118), 
        .Y(n39) );
  OAI2BB2X1M U55 ( .B0(n133), .B1(n118), .A0N(\mem_array[5][2] ), .A1N(n118), 
        .Y(n40) );
  OAI2BB2X1M U56 ( .B0(n132), .B1(n118), .A0N(\mem_array[5][3] ), .A1N(n118), 
        .Y(n41) );
  OAI2BB2X1M U57 ( .B0(n131), .B1(n118), .A0N(\mem_array[5][4] ), .A1N(n118), 
        .Y(n42) );
  OAI2BB2X1M U58 ( .B0(n130), .B1(n118), .A0N(\mem_array[5][5] ), .A1N(n118), 
        .Y(n43) );
  OAI2BB2X1M U59 ( .B0(n129), .B1(n118), .A0N(\mem_array[5][6] ), .A1N(n118), 
        .Y(n44) );
  OAI2BB2X1M U60 ( .B0(n128), .B1(n118), .A0N(\mem_array[5][7] ), .A1N(n118), 
        .Y(n45) );
  OAI2BB2X1M U61 ( .B0(n135), .B1(n117), .A0N(\mem_array[3][0] ), .A1N(n117), 
        .Y(n54) );
  OAI2BB2X1M U62 ( .B0(n134), .B1(n117), .A0N(\mem_array[3][1] ), .A1N(n117), 
        .Y(n55) );
  OAI2BB2X1M U63 ( .B0(n133), .B1(n117), .A0N(\mem_array[3][2] ), .A1N(n117), 
        .Y(n56) );
  OAI2BB2X1M U64 ( .B0(n132), .B1(n117), .A0N(\mem_array[3][3] ), .A1N(n117), 
        .Y(n57) );
  OAI2BB2X1M U65 ( .B0(n131), .B1(n117), .A0N(\mem_array[3][4] ), .A1N(n117), 
        .Y(n58) );
  OAI2BB2X1M U66 ( .B0(n130), .B1(n117), .A0N(\mem_array[3][5] ), .A1N(n117), 
        .Y(n59) );
  OAI2BB2X1M U67 ( .B0(n129), .B1(n117), .A0N(\mem_array[3][6] ), .A1N(n117), 
        .Y(n60) );
  OAI2BB2X1M U68 ( .B0(n128), .B1(n117), .A0N(\mem_array[3][7] ), .A1N(n117), 
        .Y(n61) );
  OAI2BB2X1M U69 ( .B0(n135), .B1(n116), .A0N(\mem_array[2][0] ), .A1N(n116), 
        .Y(n62) );
  OAI2BB2X1M U70 ( .B0(n134), .B1(n116), .A0N(\mem_array[2][1] ), .A1N(n116), 
        .Y(n63) );
  OAI2BB2X1M U71 ( .B0(n133), .B1(n116), .A0N(\mem_array[2][2] ), .A1N(n116), 
        .Y(n64) );
  OAI2BB2X1M U72 ( .B0(n132), .B1(n116), .A0N(\mem_array[2][3] ), .A1N(n116), 
        .Y(n65) );
  OAI2BB2X1M U73 ( .B0(n131), .B1(n116), .A0N(\mem_array[2][4] ), .A1N(n116), 
        .Y(n66) );
  OAI2BB2X1M U74 ( .B0(n130), .B1(n116), .A0N(\mem_array[2][5] ), .A1N(n116), 
        .Y(n67) );
  OAI2BB2X1M U75 ( .B0(n129), .B1(n116), .A0N(\mem_array[2][6] ), .A1N(n116), 
        .Y(n68) );
  OAI2BB2X1M U76 ( .B0(n128), .B1(n116), .A0N(\mem_array[2][7] ), .A1N(n116), 
        .Y(n69) );
  OAI2BB2X1M U77 ( .B0(n135), .B1(n115), .A0N(\mem_array[1][0] ), .A1N(n115), 
        .Y(n70) );
  OAI2BB2X1M U78 ( .B0(n134), .B1(n115), .A0N(\mem_array[1][1] ), .A1N(n115), 
        .Y(n71) );
  OAI2BB2X1M U79 ( .B0(n133), .B1(n115), .A0N(\mem_array[1][2] ), .A1N(n115), 
        .Y(n72) );
  OAI2BB2X1M U80 ( .B0(n132), .B1(n115), .A0N(\mem_array[1][3] ), .A1N(n115), 
        .Y(n73) );
  OAI2BB2X1M U81 ( .B0(n131), .B1(n115), .A0N(\mem_array[1][4] ), .A1N(n115), 
        .Y(n74) );
  OAI2BB2X1M U82 ( .B0(n130), .B1(n115), .A0N(\mem_array[1][5] ), .A1N(n115), 
        .Y(n75) );
  OAI2BB2X1M U83 ( .B0(n129), .B1(n115), .A0N(\mem_array[1][6] ), .A1N(n115), 
        .Y(n76) );
  OAI2BB2X1M U84 ( .B0(n128), .B1(n115), .A0N(\mem_array[1][7] ), .A1N(n115), 
        .Y(n77) );
  OAI2BB2X1M U85 ( .B0(n120), .B1(n135), .A0N(\mem_array[7][0] ), .A1N(n120), 
        .Y(n22) );
  OAI2BB2X1M U86 ( .B0(n120), .B1(n134), .A0N(\mem_array[7][1] ), .A1N(n120), 
        .Y(n23) );
  OAI2BB2X1M U87 ( .B0(n120), .B1(n133), .A0N(\mem_array[7][2] ), .A1N(n120), 
        .Y(n24) );
  OAI2BB2X1M U88 ( .B0(n120), .B1(n132), .A0N(\mem_array[7][3] ), .A1N(n120), 
        .Y(n25) );
  OAI2BB2X1M U89 ( .B0(n120), .B1(n131), .A0N(\mem_array[7][4] ), .A1N(n120), 
        .Y(n26) );
  OAI2BB2X1M U90 ( .B0(n120), .B1(n130), .A0N(\mem_array[7][5] ), .A1N(n120), 
        .Y(n27) );
  OAI2BB2X1M U91 ( .B0(n120), .B1(n129), .A0N(\mem_array[7][6] ), .A1N(n120), 
        .Y(n28) );
  OAI2BB2X1M U92 ( .B0(n120), .B1(n128), .A0N(\mem_array[7][7] ), .A1N(n120), 
        .Y(n29) );
  NAND3X2M U93 ( .A(write_addr[1]), .B(write_addr[0]), .C(n18), .Y(n17) );
  NAND3X2M U94 ( .A(write_addr[1]), .B(n136), .C(n18), .Y(n19) );
  AND2X2M U95 ( .A(write_addr[2]), .B(n16), .Y(n12) );
  NAND3X2M U96 ( .A(n12), .B(n137), .C(write_addr[0]), .Y(n14) );
  NAND3X2M U97 ( .A(write_addr[0]), .B(n12), .C(write_addr[1]), .Y(n11) );
  NAND3X2M U98 ( .A(n12), .B(n136), .C(write_addr[1]), .Y(n13) );
  INVX2M U99 ( .A(write_addr[0]), .Y(n136) );
  INVX2M U100 ( .A(write_addr[1]), .Y(n137) );
  NOR2X2M U101 ( .A(n112), .B(N10), .Y(n109) );
  NOR2X2M U102 ( .A(N10), .B(N11), .Y(n105) );
  NOR2X2M U103 ( .A(n113), .B(N11), .Y(n106) );
  INVX2M U104 ( .A(N10), .Y(n113) );
  INVX2M U105 ( .A(N11), .Y(n112) );
  INVX2M U106 ( .A(N9), .Y(n114) );
  AO22X1M U107 ( .A0(\mem_array[3][0] ), .A1(n106), .B0(\mem_array[1][0] ), 
        .B1(n105), .Y(n1) );
  AOI221XLM U108 ( .A0(\mem_array[5][0] ), .A1(n109), .B0(\mem_array[7][0] ), 
        .B1(n108), .C0(n1), .Y(n4) );
  AO22X1M U109 ( .A0(\mem_array[2][0] ), .A1(n106), .B0(\mem_array[0][0] ), 
        .B1(n105), .Y(n2) );
  AOI221XLM U110 ( .A0(\mem_array[4][0] ), .A1(n109), .B0(\mem_array[6][0] ), 
        .B1(n108), .C0(n2), .Y(n3) );
  OAI22X1M U111 ( .A0(n114), .A1(n4), .B0(N9), .B1(n3), .Y(rd_data[0]) );
  AO22X1M U112 ( .A0(\mem_array[3][1] ), .A1(n106), .B0(\mem_array[1][1] ), 
        .B1(n105), .Y(n5) );
  AOI221XLM U113 ( .A0(\mem_array[5][1] ), .A1(n109), .B0(\mem_array[7][1] ), 
        .B1(n108), .C0(n5), .Y(n8) );
  AO22X1M U114 ( .A0(\mem_array[2][1] ), .A1(n106), .B0(\mem_array[0][1] ), 
        .B1(n105), .Y(n6) );
  AOI221XLM U115 ( .A0(\mem_array[4][1] ), .A1(n109), .B0(\mem_array[6][1] ), 
        .B1(n108), .C0(n6), .Y(n7) );
  OAI22X1M U116 ( .A0(n114), .A1(n8), .B0(N9), .B1(n7), .Y(rd_data[1]) );
  AO22X1M U117 ( .A0(\mem_array[3][2] ), .A1(n106), .B0(\mem_array[1][2] ), 
        .B1(n105), .Y(n9) );
  AOI221XLM U118 ( .A0(\mem_array[5][2] ), .A1(n109), .B0(\mem_array[7][2] ), 
        .B1(n108), .C0(n9), .Y(n87) );
  AO22X1M U119 ( .A0(\mem_array[2][2] ), .A1(n106), .B0(\mem_array[0][2] ), 
        .B1(n105), .Y(n10) );
  AOI221XLM U120 ( .A0(\mem_array[4][2] ), .A1(n109), .B0(\mem_array[6][2] ), 
        .B1(n108), .C0(n10), .Y(n86) );
  OAI22X1M U121 ( .A0(n114), .A1(n87), .B0(N9), .B1(n86), .Y(rd_data[2]) );
  AO22X1M U122 ( .A0(\mem_array[3][3] ), .A1(n106), .B0(\mem_array[1][3] ), 
        .B1(n105), .Y(n88) );
  AOI221XLM U123 ( .A0(\mem_array[5][3] ), .A1(n109), .B0(\mem_array[7][3] ), 
        .B1(n108), .C0(n88), .Y(n91) );
  AO22X1M U124 ( .A0(\mem_array[2][3] ), .A1(n106), .B0(\mem_array[0][3] ), 
        .B1(n105), .Y(n89) );
  AOI221XLM U125 ( .A0(\mem_array[4][3] ), .A1(n109), .B0(\mem_array[6][3] ), 
        .B1(n108), .C0(n89), .Y(n90) );
  OAI22X1M U126 ( .A0(n114), .A1(n91), .B0(N9), .B1(n90), .Y(rd_data[3]) );
  AO22X1M U127 ( .A0(\mem_array[3][4] ), .A1(n106), .B0(\mem_array[1][4] ), 
        .B1(n105), .Y(n92) );
  AOI221XLM U128 ( .A0(\mem_array[5][4] ), .A1(n109), .B0(\mem_array[7][4] ), 
        .B1(n108), .C0(n92), .Y(n95) );
  AO22X1M U129 ( .A0(\mem_array[2][4] ), .A1(n106), .B0(\mem_array[0][4] ), 
        .B1(n105), .Y(n93) );
  AOI221XLM U130 ( .A0(\mem_array[4][4] ), .A1(n109), .B0(\mem_array[6][4] ), 
        .B1(n108), .C0(n93), .Y(n94) );
  OAI22X1M U131 ( .A0(n114), .A1(n95), .B0(N9), .B1(n94), .Y(rd_data[4]) );
  AO22X1M U132 ( .A0(\mem_array[3][5] ), .A1(n106), .B0(\mem_array[1][5] ), 
        .B1(n105), .Y(n96) );
  AOI221XLM U133 ( .A0(\mem_array[5][5] ), .A1(n109), .B0(\mem_array[7][5] ), 
        .B1(n108), .C0(n96), .Y(n99) );
  AO22X1M U134 ( .A0(\mem_array[2][5] ), .A1(n106), .B0(\mem_array[0][5] ), 
        .B1(n105), .Y(n97) );
  AOI221XLM U135 ( .A0(\mem_array[4][5] ), .A1(n109), .B0(\mem_array[6][5] ), 
        .B1(n108), .C0(n97), .Y(n98) );
  OAI22X1M U136 ( .A0(n114), .A1(n99), .B0(N9), .B1(n98), .Y(rd_data[5]) );
  AO22X1M U137 ( .A0(\mem_array[3][6] ), .A1(n106), .B0(\mem_array[1][6] ), 
        .B1(n105), .Y(n100) );
  AOI221XLM U138 ( .A0(\mem_array[5][6] ), .A1(n109), .B0(\mem_array[7][6] ), 
        .B1(n108), .C0(n100), .Y(n103) );
  AO22X1M U139 ( .A0(\mem_array[2][6] ), .A1(n106), .B0(\mem_array[0][6] ), 
        .B1(n105), .Y(n101) );
  AOI221XLM U140 ( .A0(\mem_array[4][6] ), .A1(n109), .B0(\mem_array[6][6] ), 
        .B1(n108), .C0(n101), .Y(n102) );
  OAI22X1M U141 ( .A0(n114), .A1(n103), .B0(N9), .B1(n102), .Y(rd_data[6]) );
  AO22X1M U142 ( .A0(\mem_array[3][7] ), .A1(n106), .B0(\mem_array[1][7] ), 
        .B1(n105), .Y(n104) );
  AOI221XLM U143 ( .A0(\mem_array[5][7] ), .A1(n109), .B0(\mem_array[7][7] ), 
        .B1(n108), .C0(n104), .Y(n111) );
  AO22X1M U144 ( .A0(\mem_array[2][7] ), .A1(n106), .B0(\mem_array[0][7] ), 
        .B1(n105), .Y(n107) );
  AOI221XLM U145 ( .A0(\mem_array[4][7] ), .A1(n109), .B0(\mem_array[6][7] ), 
        .B1(n108), .C0(n107), .Y(n110) );
  OAI22X1M U146 ( .A0(n111), .A1(n114), .B0(N9), .B1(n110), .Y(rd_data[7]) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_PTR_WIDTH4_DEPTH8_SYNC_STAGES2 ( read_enable, 
        read_clk, read_rst, write_enable, write_clk, write_rst, wr_data, 
        rd_data, fifo_full, fifo_empty );
  input [7:0] wr_data;
  output [7:0] rd_data;
  input read_enable, read_clk, read_rst, write_enable, write_clk, write_rst;
  output fifo_full, fifo_empty;
  wire   n1, n2, n3, n4;
  wire   [3:0] gray_ptr_sync_R2W;
  wire   [3:0] gray_ptr_in_W2R;
  wire   [2:0] write_addr;
  wire   [3:0] gray_ptr_sync_W2R;
  wire   [2:0] read_addr;
  wire   [3:0] gray_ptr_in_R2W;

  SOURCE_DOMAIN_PTR_WIDTH4 write_domain ( .write_enable(write_enable), 
        .sync_read_ptr(gray_ptr_sync_R2W), .write_clk(write_clk), .write_rst(
        n3), .write_addr(write_addr), .gray_write_ptr(gray_ptr_in_W2R), 
        .fifo_full(fifo_full) );
  GRAY_SYNC_SYNC_STAGES2_PTR_WIDTH4_0 wr_2_rd ( .gray_ptr_in(gray_ptr_in_W2R), 
        .dest_clk(read_clk), .dest_rst(n1), .gray_ptr_sync(gray_ptr_sync_W2R)
         );
  DESTINATION_DOMAIN_PTR_WIDTH4 read_domain ( .read_enable(read_enable), 
        .sync_write_ptr(gray_ptr_sync_W2R), .read_clk(read_clk), .read_rst(n1), 
        .read_addr(read_addr), .gray_read_ptr(gray_ptr_in_R2W), .fifo_empty(
        fifo_empty) );
  GRAY_SYNC_SYNC_STAGES2_PTR_WIDTH4_1 rd_2_wr ( .gray_ptr_in(gray_ptr_in_R2W), 
        .dest_clk(write_clk), .dest_rst(n3), .gray_ptr_sync(gray_ptr_sync_R2W)
         );
  FIFO_BUFFER_DATA_WIDTH8_DEPTH8 MEM ( .wr_data(wr_data), .write_enable(
        write_enable), .fifo_full(fifo_full), .write_clk(write_clk), 
        .write_rst(n3), .write_addr(write_addr), .read_addr(read_addr), 
        .rd_data(rd_data) );
  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(write_rst), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(read_rst), .Y(n2) );
endmodule


module PULSE_GEN ( CLK, RST, LVL_SIG, PULSE_SIG );
  input CLK, RST, LVL_SIG;
  output PULSE_SIG;
  wire   old_value;

  DFFRQX2M old_value_reg ( .D(LVL_SIG), .CK(CLK), .RN(RST), .Q(old_value) );
  NOR2BX2M U3 ( .AN(LVL_SIG), .B(old_value), .Y(PULSE_SIG) );
endmodule


module SYS_TOP_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [5:0] a;
  input [5:0] b;
  output [5:0] quotient;
  output [5:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[2][3] ,
         \u_div/SumTmp[3][2] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[1][4] , \u_div/CryTmp[1][5] , \u_div/CryTmp[2][4] ,
         \u_div/PartRem[1][3] , \u_div/PartRem[1][4] , \u_div/PartRem[1][5] ,
         \u_div/PartRem[2][4] , \u_div/PartRem[3][3] , n1, n2, n3, n5, n6, n7,
         n8;

  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n7), .CI(
        \u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n5), .CI(
        \u_div/CryTmp[0][5] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n6), .CI(
        \u_div/SumTmp[3][2] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n7), .CI(
        \u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n6), .CI(
        \u_div/SumTmp[3][2] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(n1), .B(n6), .CI(
        \u_div/SumTmp[3][2] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  NAND2X2M U1 ( .A(quotient[3]), .B(b[2]), .Y(\u_div/PartRem[3][3] ) );
  INVX2M U2 ( .A(n8), .Y(quotient[1]) );
  INVX2M U3 ( .A(b[5]), .Y(n5) );
  INVX2M U4 ( .A(n3), .Y(quotient[5]) );
  NAND2XLM U5 ( .A(quotient[3]), .B(\u_div/SumTmp[3][2] ), .Y(n3) );
  INVX2M U6 ( .A(n2), .Y(quotient[4]) );
  NAND2XLM U7 ( .A(quotient[3]), .B(\u_div/SumTmp[3][2] ), .Y(n2) );
  NOR2BX2M U8 ( .AN(b[2]), .B(n8), .Y(\u_div/PartRem[1][3] ) );
  NOR2BX2M U9 ( .AN(quotient[2]), .B(\u_div/SumTmp[3][2] ), .Y(n1) );
  INVX2M U10 ( .A(b[2]), .Y(\u_div/SumTmp[3][2] ) );
  INVX2M U11 ( .A(b[3]), .Y(n6) );
  INVX2M U12 ( .A(b[4]), .Y(n7) );
  CLKMX2X2M U13 ( .A(\u_div/SumTmp[1][4] ), .B(\u_div/PartRem[2][4] ), .S0(n8), 
        .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U14 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U15 ( .A(\u_div/SumTmp[1][3] ), .B(n1), .S0(n8), .Y(
        \u_div/PartRem[1][4] ) );
  NOR3X1M U16 ( .A(b[4]), .B(b[5]), .C(b[3]), .Y(quotient[3]) );
  AND3X1M U17 ( .A(\u_div/CryTmp[2][4] ), .B(n7), .C(n5), .Y(quotient[2]) );
  CLKNAND2X2M U18 ( .A(\u_div/CryTmp[1][5] ), .B(n5), .Y(n8) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT, PAR_ERR, STP_ERR );
  input REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT, PAR_ERR, STP_ERR;
  wire   sync_rst_1, sync_rst_2, div_clk_1, N5, N6, N7, N8, N9, N10, div_clk_2,
         WrEn, RdEn, RdData_valid, ALU_EN, gated_clk, OUT_valid, clk_gating_en,
         RX_SYNC_VALID, fifo_full, Wr_inc, RX_DATA_VALID, TX_BUSY, fifo_empty,
         RD_INC, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;
  wire   [1:0] REG2_config;
  wire   [5:0] Prescale;
  wire   [7:0] div_ratio;
  wire   [1:0] prescale_sel;
  wire   [5:0] prescale_factor;
  wire   [5:0] rx_div_ratio;
  wire   [7:0] WrData;
  wire   [3:0] addr;
  wire   [7:0] RdData;
  wire   [7:0] A_top;
  wire   [7:0] B_top;
  wire   [3:0] ALU_FUNC;
  wire   [15:0] arith_OUT;
  wire   [7:0] logic_OUT;
  wire   [7:0] cmp_OUT;
  wire   [7:0] shift_OUT;
  wire   [15:0] ALU_OUT;
  wire   [7:0] RX_SYNC_DATA;
  wire   [7:0] Wr_Data_fifo;
  wire   [7:0] RX_P_DATA;
  wire   [7:0] rd_data;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10;

  RST_SYNC_SYNC_STAGES2_0 u_rst_sync_1 ( .CLK(REF_CLK), .RST(RST), .SYNC_RST(
        sync_rst_1) );
  RST_SYNC_SYNC_STAGES2_1 u_rst_sync_2 ( .CLK(UART_CLK), .RST(RST), .SYNC_RST(
        sync_rst_2) );
  CLK_DIV_0 u_clk_div_1 ( .ref_clk(UART_CLK), .RST(n26), .clk_en(1'b1), 
        .div_ratio(div_ratio), .div_clk(div_clk_1) );
  prescale_mux u_prescale_mux ( .prescale_sel(prescale_sel), .prescale({
        prescale_factor[5:2], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1}) );
  CLK_DIV_1 u_clk_div_2 ( .ref_clk(UART_CLK), .RST(n26), .clk_en(1'b1), 
        .div_ratio({1'b0, 1'b0, rx_div_ratio}), .div_clk(div_clk_2) );
  Reg_File_W8_D16_addr_W4 RF ( .WrData(WrData), .Address(addr), .WrEn(WrEn), 
        .RdEn(RdEn), .CLK(REF_CLK), .RST(sync_rst_1), .RdData(RdData), 
        .RdData_valid(RdData_valid), .REG0(A_top), .REG1(B_top), .REG2({
        Prescale[5:3], SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, REG2_config}), .REG3(div_ratio) );
  ALU_TOP_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH4_OUTPUT_WIDTH8 ALU ( 
        .A_top(A_top), .B_top(B_top), .ALU_FUN_top(ALU_FUNC), .Enable_top(
        ALU_EN), .CLK_top(gated_clk), .RST_top(sync_rst_1), .arith_OUT_top(
        arith_OUT), .logic_OUT_top(logic_OUT), .cmp_OUT_top({
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, cmp_OUT[1:0]}), 
        .shift_OUT_top(shift_OUT), .OUT_valid(OUT_valid) );
  CLK_GATE u_clk_gating ( .CLK_EN(clk_gating_en), .CLK(REF_CLK), .GATED_CLK(
        gated_clk) );
  sys_ctrl u_sys_ctrl ( .CLK(REF_CLK), .RST(sync_rst_1), .RdData(RdData), 
        .RdData_valid(RdData_valid), .Address(addr), .WrData(WrData), .WrEn(
        WrEn), .RdEn(RdEn), .RX_P_DATA(RX_SYNC_DATA), .RX_D_VLD(RX_SYNC_VALID), 
        .ALU_OUT(ALU_OUT), .OUT_valid(OUT_valid), .ALU_CLK_EN(clk_gating_en), 
        .ALU_EN(ALU_EN), .ALU_FUNC(ALU_FUNC), .fifo_full(fifo_full), 
        .Wr_Data_fifo(Wr_Data_fifo), .Wr_inc(Wr_inc) );
  DATA_SYNC_BUS_WIDTH8_NUM_STAGES2 u_data_sync ( .unsync_bus(RX_P_DATA), 
        .bus_en(RX_DATA_VALID), .CLK(REF_CLK), .RST(sync_rst_1), .sync_bus(
        RX_SYNC_DATA), .enable_pulse(RX_SYNC_VALID) );
  uart_top_DATA_WIDTH8 UART ( .tx_clk(div_clk_1), .rx_clk(div_clk_2), .RST(n26), .Prescale({prescale_factor[5:2], 1'b0, 1'b0}), .PAR_EN(REG2_config[0]), 
        .PAR_TYP(REG2_config[1]), .TX_P_DATA(rd_data), .TX_DATA_VALID(n28), 
        .TX_OUT(TX_OUT), .TX_BUSY(TX_BUSY), .RX_IN(RX_IN), .RX_P_DATA(
        RX_P_DATA), .RX_DATA_VALID(RX_DATA_VALID), .RX_PARITY_ERROR(PAR_ERR), 
        .RX_STOP_ERROR(STP_ERR) );
  ASYNC_FIFO_DATA_WIDTH8_PTR_WIDTH4_DEPTH8_SYNC_STAGES2 u_async_fifo ( 
        .read_enable(RD_INC), .read_clk(div_clk_1), .read_rst(n26), 
        .write_enable(Wr_inc), .write_clk(REF_CLK), .write_rst(sync_rst_1), 
        .wr_data(Wr_Data_fifo), .rd_data(rd_data), .fifo_full(fifo_full), 
        .fifo_empty(fifo_empty) );
  PULSE_GEN u_pulse_gen ( .CLK(div_clk_1), .RST(n26), .LVL_SIG(TX_BUSY), 
        .PULSE_SIG(RD_INC) );
  SYS_TOP_DW_div_uns_0 div_124 ( .a({1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .b(
        {prescale_factor[5:2], 1'b0, 1'b0}), .quotient({N10, N9, N8, N7, N6, 
        N5}) );
  NOR2X2M U52 ( .A(prescale_factor[2]), .B(n5), .Y(n4) );
  NOR3X2M U53 ( .A(n11), .B(n6), .C(n10), .Y(n9) );
  NOR2BX2M U54 ( .AN(N6), .B(n4), .Y(rx_div_ratio[1]) );
  NOR2BX2M U55 ( .AN(N8), .B(n4), .Y(rx_div_ratio[3]) );
  NOR2BX2M U56 ( .AN(N10), .B(n4), .Y(rx_div_ratio[5]) );
  NOR2BX2M U57 ( .AN(N9), .B(n4), .Y(rx_div_ratio[4]) );
  NOR2BX2M U58 ( .AN(N7), .B(n4), .Y(rx_div_ratio[2]) );
  OR2X2M U59 ( .A(n4), .B(N5), .Y(rx_div_ratio[0]) );
  NOR2X2M U60 ( .A(ALU_FUNC[3]), .B(ALU_FUNC[2]), .Y(n6) );
  NOR2BX2M U61 ( .AN(ALU_FUNC[2]), .B(ALU_FUNC[3]), .Y(n11) );
  NOR2BX2M U62 ( .AN(ALU_FUNC[3]), .B(ALU_FUNC[2]), .Y(n10) );
  OR3X2M U63 ( .A(prescale_factor[5]), .B(prescale_factor[4]), .C(
        prescale_factor[3]), .Y(n5) );
  NAND2X2M U64 ( .A(n12), .B(n13), .Y(ALU_OUT[6]) );
  NAND2X2M U65 ( .A(shift_OUT[6]), .B(n9), .Y(n13) );
  NAND2X2M U66 ( .A(n24), .B(n25), .Y(ALU_OUT[0]) );
  AOI22X1M U67 ( .A0(logic_OUT[0]), .A1(n11), .B0(arith_OUT[0]), .B1(n6), .Y(
        n24) );
  AOI22X1M U68 ( .A0(shift_OUT[0]), .A1(n9), .B0(cmp_OUT[0]), .B1(n10), .Y(n25) );
  NAND2X2M U69 ( .A(n22), .B(n23), .Y(ALU_OUT[1]) );
  AOI22X1M U70 ( .A0(shift_OUT[1]), .A1(n9), .B0(cmp_OUT[1]), .B1(n10), .Y(n23) );
  NAND2X2M U71 ( .A(n20), .B(n21), .Y(ALU_OUT[2]) );
  AOI22X1M U72 ( .A0(logic_OUT[2]), .A1(n11), .B0(arith_OUT[2]), .B1(n6), .Y(
        n20) );
  NAND2X2M U73 ( .A(shift_OUT[2]), .B(n9), .Y(n21) );
  NAND2X2M U74 ( .A(n18), .B(n19), .Y(ALU_OUT[3]) );
  AOI22X1M U75 ( .A0(logic_OUT[3]), .A1(n11), .B0(arith_OUT[3]), .B1(n6), .Y(
        n18) );
  NAND2X2M U76 ( .A(shift_OUT[3]), .B(n9), .Y(n19) );
  NAND2X2M U77 ( .A(n16), .B(n17), .Y(ALU_OUT[4]) );
  AOI22X1M U78 ( .A0(logic_OUT[4]), .A1(n11), .B0(arith_OUT[4]), .B1(n6), .Y(
        n16) );
  NAND2X2M U79 ( .A(shift_OUT[4]), .B(n9), .Y(n17) );
  NAND2X2M U80 ( .A(n14), .B(n15), .Y(ALU_OUT[5]) );
  AOI22X1M U81 ( .A0(logic_OUT[5]), .A1(n11), .B0(arith_OUT[5]), .B1(n6), .Y(
        n14) );
  NAND2X2M U82 ( .A(shift_OUT[5]), .B(n9), .Y(n15) );
  NAND2X2M U83 ( .A(n7), .B(n8), .Y(ALU_OUT[7]) );
  AOI22X1M U84 ( .A0(logic_OUT[7]), .A1(n11), .B0(arith_OUT[7]), .B1(n6), .Y(
        n7) );
  NAND2X2M U85 ( .A(shift_OUT[7]), .B(n9), .Y(n8) );
  AND2X2M U86 ( .A(arith_OUT[8]), .B(n6), .Y(ALU_OUT[8]) );
  AND2X2M U87 ( .A(arith_OUT[9]), .B(n6), .Y(ALU_OUT[9]) );
  AND2X2M U88 ( .A(arith_OUT[10]), .B(n6), .Y(ALU_OUT[10]) );
  AND2X2M U89 ( .A(arith_OUT[11]), .B(n6), .Y(ALU_OUT[11]) );
  AND2X2M U90 ( .A(arith_OUT[12]), .B(n6), .Y(ALU_OUT[12]) );
  AND2X2M U91 ( .A(arith_OUT[13]), .B(n6), .Y(ALU_OUT[13]) );
  AND2X2M U92 ( .A(arith_OUT[14]), .B(n6), .Y(ALU_OUT[14]) );
  AND2X2M U93 ( .A(arith_OUT[15]), .B(n6), .Y(ALU_OUT[15]) );
  INVX2M U94 ( .A(fifo_empty), .Y(n28) );
  INVX4M U95 ( .A(n27), .Y(n26) );
  INVX2M U96 ( .A(sync_rst_2), .Y(n27) );
  OR2X2M U97 ( .A(Prescale[3]), .B(Prescale[5]), .Y(prescale_sel[0]) );
  OR2X2M U98 ( .A(Prescale[4]), .B(Prescale[5]), .Y(prescale_sel[1]) );
  AOI22X1M U99 ( .A0(logic_OUT[1]), .A1(n11), .B0(arith_OUT[1]), .B1(n6), .Y(
        n22) );
  AOI22X1M U100 ( .A0(logic_OUT[6]), .A1(n11), .B0(arith_OUT[6]), .B1(n6), .Y(
        n12) );
endmodule

