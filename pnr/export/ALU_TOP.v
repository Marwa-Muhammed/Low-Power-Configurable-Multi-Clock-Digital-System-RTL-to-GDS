module SYS_TOP (
	REF_CLK, 
	UART_CLK, 
	RST, 
	RX_IN, 
	TX_OUT, 
	PAR_ERR, 
	STP_ERR, 
	SE, 
	SI, 
	test_mode, 
	scan_clk, 
	scan_rst, 
	SO, 
	test_si2, 
	test_so2, 
	test_si3, 
	test_so3, 
	test_si4, 
	test_so4, 
	test_si5, 
	test_so5);
   input REF_CLK;
   input UART_CLK;
   input RST;
   input RX_IN;
   output TX_OUT;
   output PAR_ERR;
   output STP_ERR;
   input SE;
   input SI;
   input test_mode;
   input scan_clk;
   input scan_rst;
   output SO;
   input test_si2;
   output test_so2;
   input test_si3;
   output test_so3;
   input test_si4;
   output test_so4;
   input test_si5;
   output test_so5;

   // Internal wires
   wire scan_clk__L12_N0;
   wire scan_clk__L11_N0;
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire REF_MUXED_CLK__L9_N15;
   wire REF_MUXED_CLK__L9_N14;
   wire REF_MUXED_CLK__L9_N13;
   wire REF_MUXED_CLK__L9_N12;
   wire REF_MUXED_CLK__L9_N11;
   wire REF_MUXED_CLK__L9_N10;
   wire REF_MUXED_CLK__L9_N9;
   wire REF_MUXED_CLK__L9_N8;
   wire REF_MUXED_CLK__L9_N7;
   wire REF_MUXED_CLK__L9_N6;
   wire REF_MUXED_CLK__L9_N5;
   wire REF_MUXED_CLK__L9_N4;
   wire REF_MUXED_CLK__L9_N3;
   wire REF_MUXED_CLK__L9_N2;
   wire REF_MUXED_CLK__L9_N1;
   wire REF_MUXED_CLK__L9_N0;
   wire REF_MUXED_CLK__L8_N7;
   wire REF_MUXED_CLK__L8_N6;
   wire REF_MUXED_CLK__L8_N5;
   wire REF_MUXED_CLK__L8_N4;
   wire REF_MUXED_CLK__L8_N3;
   wire REF_MUXED_CLK__L8_N2;
   wire REF_MUXED_CLK__L8_N1;
   wire REF_MUXED_CLK__L8_N0;
   wire REF_MUXED_CLK__L7_N3;
   wire REF_MUXED_CLK__L7_N2;
   wire REF_MUXED_CLK__L7_N1;
   wire REF_MUXED_CLK__L7_N0;
   wire REF_MUXED_CLK__L6_N1;
   wire REF_MUXED_CLK__L6_N0;
   wire REF_MUXED_CLK__L5_N0;
   wire REF_MUXED_CLK__L4_N0;
   wire REF_MUXED_CLK__L3_N1;
   wire REF_MUXED_CLK__L3_N0;
   wire REF_MUXED_CLK__L2_N1;
   wire REF_MUXED_CLK__L2_N0;
   wire REF_MUXED_CLK__L1_N0;
   wire gated_clk__L4_N2;
   wire gated_clk__L4_N1;
   wire gated_clk__L4_N0;
   wire gated_clk__L3_N0;
   wire gated_clk__L2_N0;
   wire gated_clk__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire UART_MUXED_CLK__L12_N1;
   wire UART_MUXED_CLK__L12_N0;
   wire UART_MUXED_CLK__L11_N0;
   wire UART_MUXED_CLK__L10_N0;
   wire UART_MUXED_CLK__L9_N0;
   wire UART_MUXED_CLK__L8_N0;
   wire UART_MUXED_CLK__L7_N0;
   wire UART_MUXED_CLK__L6_N1;
   wire UART_MUXED_CLK__L6_N0;
   wire UART_MUXED_CLK__L5_N1;
   wire UART_MUXED_CLK__L5_N0;
   wire UART_MUXED_CLK__L4_N0;
   wire UART_MUXED_CLK__L3_N0;
   wire UART_MUXED_CLK__L2_N0;
   wire UART_MUXED_CLK__L1_N0;
   wire div_clk_1__L1_N0;
   wire TX_MUXED_CLK__L4_N1;
   wire TX_MUXED_CLK__L4_N0;
   wire TX_MUXED_CLK__L3_N0;
   wire TX_MUXED_CLK__L2_N0;
   wire TX_MUXED_CLK__L1_N0;
   wire RX_MUXED_CLK__L4_N1;
   wire RX_MUXED_CLK__L4_N0;
   wire RX_MUXED_CLK__L3_N0;
   wire RX_MUXED_CLK__L2_N0;
   wire RX_MUXED_CLK__L1_N0;
   wire FE_OFN11_SE;
   wire FE_OFN10_ALU_FUNC_0_;
   wire FE_OFN9_ALU_FUNC_1_;
   wire FE_OFN4_muxed_rst_sync_2;
   wire FE_OFN3_muxed_rst_sync_1;
   wire FE_OFN2_muxed_rst_sync_1;
   wire FE_OFN0_muxed_rst_sync_1;
   wire clk_gating_en;
   wire clk_gating_en_dft;
   wire div_clk_1;
   wire TX_MUXED_CLK;
   wire div_clk_2;
   wire RX_MUXED_CLK;
   wire REF_MUXED_CLK;
   wire UART_MUXED_CLK;
   wire MUXED_RST;
   wire sync_rst_1;
   wire muxed_rst_sync_1;
   wire sync_rst_2;
   wire muxed_rst_sync_2;
   wire WrEn;
   wire RdEn;
   wire RdData_valid;
   wire ALU_EN;
   wire gated_clk;
   wire OUT_valid;
   wire RX_SYNC_VALID;
   wire fifo_full;
   wire Wr_inc;
   wire RX_DATA_VALID;
   wire TX_BUSY;
   wire fifo_empty;
   wire RD_INC;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n30;
   wire n31;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n42;
   wire n45;
   wire n46;
   wire n51;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire [1:0] REG2_config;
   wire [5:0] Prescale;
   wire [7:0] div_ratio;
   wire [5:0] prescale_factor;
   wire [3:0] rx_div_ratio;
   wire [7:0] WrData;
   wire [3:0] addr;
   wire [7:0] RdData;
   wire [7:0] A_top;
   wire [7:0] B_top;
   wire [3:0] ALU_FUNC;
   wire [15:0] arith_OUT;
   wire [7:0] logic_OUT;
   wire [7:0] cmp_OUT;
   wire [7:0] shift_OUT;
   wire [15:0] ALU_OUT;
   wire [7:0] RX_SYNC_DATA;
   wire [7:0] Wr_Data_fifo;
   wire [7:0] RX_P_DATA;
   wire [7:0] rd_data;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;
   wire SYNOPSYS_UNCONNECTED__4;
   wire SYNOPSYS_UNCONNECTED__5;
   wire SYNOPSYS_UNCONNECTED__6;
   wire SYNOPSYS_UNCONNECTED__7;
   wire SYNOPSYS_UNCONNECTED__8;
   wire SYNOPSYS_UNCONNECTED__9;
   wire SYNOPSYS_UNCONNECTED__10;

   CLKINVX32M scan_clk__L12_I0 (.Y(scan_clk__L12_N0), 
	.A(scan_clk__L11_N0));
   CLKINVX40M scan_clk__L11_I0 (.Y(scan_clk__L11_N0), 
	.A(scan_clk__L10_N0));
   CLKBUFX40M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N0));
   CLKBUFX24M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N0));
   CLKBUFX24M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N0));
   CLKBUFX24M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKBUFX24M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX24M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX24M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX24M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N0));
   CLKINVX40M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX40M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX32M REF_MUXED_CLK__L9_I15 (.Y(REF_MUXED_CLK__L9_N15), 
	.A(REF_MUXED_CLK__L8_N7));
   CLKINVX32M REF_MUXED_CLK__L9_I14 (.Y(REF_MUXED_CLK__L9_N14), 
	.A(REF_MUXED_CLK__L8_N7));
   CLKINVX32M REF_MUXED_CLK__L9_I13 (.Y(REF_MUXED_CLK__L9_N13), 
	.A(REF_MUXED_CLK__L8_N6));
   CLKINVX32M REF_MUXED_CLK__L9_I12 (.Y(REF_MUXED_CLK__L9_N12), 
	.A(REF_MUXED_CLK__L8_N6));
   CLKINVX32M REF_MUXED_CLK__L9_I11 (.Y(REF_MUXED_CLK__L9_N11), 
	.A(REF_MUXED_CLK__L8_N5));
   CLKINVX32M REF_MUXED_CLK__L9_I10 (.Y(REF_MUXED_CLK__L9_N10), 
	.A(REF_MUXED_CLK__L8_N5));
   CLKINVX32M REF_MUXED_CLK__L9_I9 (.Y(REF_MUXED_CLK__L9_N9), 
	.A(REF_MUXED_CLK__L8_N4));
   CLKINVX32M REF_MUXED_CLK__L9_I8 (.Y(REF_MUXED_CLK__L9_N8), 
	.A(REF_MUXED_CLK__L8_N4));
   CLKINVX32M REF_MUXED_CLK__L9_I7 (.Y(REF_MUXED_CLK__L9_N7), 
	.A(REF_MUXED_CLK__L8_N3));
   CLKINVX32M REF_MUXED_CLK__L9_I6 (.Y(REF_MUXED_CLK__L9_N6), 
	.A(REF_MUXED_CLK__L8_N3));
   CLKINVX32M REF_MUXED_CLK__L9_I5 (.Y(REF_MUXED_CLK__L9_N5), 
	.A(REF_MUXED_CLK__L8_N2));
   CLKINVX32M REF_MUXED_CLK__L9_I4 (.Y(REF_MUXED_CLK__L9_N4), 
	.A(REF_MUXED_CLK__L8_N2));
   CLKINVX32M REF_MUXED_CLK__L9_I3 (.Y(REF_MUXED_CLK__L9_N3), 
	.A(REF_MUXED_CLK__L8_N1));
   CLKINVX32M REF_MUXED_CLK__L9_I2 (.Y(REF_MUXED_CLK__L9_N2), 
	.A(REF_MUXED_CLK__L8_N1));
   CLKINVX32M REF_MUXED_CLK__L9_I1 (.Y(REF_MUXED_CLK__L9_N1), 
	.A(REF_MUXED_CLK__L8_N0));
   CLKINVX32M REF_MUXED_CLK__L9_I0 (.Y(REF_MUXED_CLK__L9_N0), 
	.A(REF_MUXED_CLK__L8_N0));
   CLKINVX40M REF_MUXED_CLK__L8_I7 (.Y(REF_MUXED_CLK__L8_N7), 
	.A(REF_MUXED_CLK__L7_N3));
   CLKINVX40M REF_MUXED_CLK__L8_I6 (.Y(REF_MUXED_CLK__L8_N6), 
	.A(REF_MUXED_CLK__L7_N3));
   CLKINVX40M REF_MUXED_CLK__L8_I5 (.Y(REF_MUXED_CLK__L8_N5), 
	.A(REF_MUXED_CLK__L7_N2));
   CLKINVX40M REF_MUXED_CLK__L8_I4 (.Y(REF_MUXED_CLK__L8_N4), 
	.A(REF_MUXED_CLK__L7_N2));
   CLKINVX40M REF_MUXED_CLK__L8_I3 (.Y(REF_MUXED_CLK__L8_N3), 
	.A(REF_MUXED_CLK__L7_N1));
   CLKINVX40M REF_MUXED_CLK__L8_I2 (.Y(REF_MUXED_CLK__L8_N2), 
	.A(REF_MUXED_CLK__L7_N1));
   CLKINVX40M REF_MUXED_CLK__L8_I1 (.Y(REF_MUXED_CLK__L8_N1), 
	.A(REF_MUXED_CLK__L7_N0));
   CLKINVX40M REF_MUXED_CLK__L8_I0 (.Y(REF_MUXED_CLK__L8_N0), 
	.A(REF_MUXED_CLK__L7_N0));
   CLKINVX40M REF_MUXED_CLK__L7_I3 (.Y(REF_MUXED_CLK__L7_N3), 
	.A(REF_MUXED_CLK__L6_N1));
   CLKINVX40M REF_MUXED_CLK__L7_I2 (.Y(REF_MUXED_CLK__L7_N2), 
	.A(REF_MUXED_CLK__L6_N1));
   CLKINVX40M REF_MUXED_CLK__L7_I1 (.Y(REF_MUXED_CLK__L7_N1), 
	.A(REF_MUXED_CLK__L6_N0));
   CLKINVX40M REF_MUXED_CLK__L7_I0 (.Y(REF_MUXED_CLK__L7_N0), 
	.A(REF_MUXED_CLK__L6_N0));
   CLKINVX40M REF_MUXED_CLK__L6_I1 (.Y(REF_MUXED_CLK__L6_N1), 
	.A(REF_MUXED_CLK__L5_N0));
   CLKINVX40M REF_MUXED_CLK__L6_I0 (.Y(REF_MUXED_CLK__L6_N0), 
	.A(REF_MUXED_CLK__L5_N0));
   CLKINVX40M REF_MUXED_CLK__L5_I0 (.Y(REF_MUXED_CLK__L5_N0), 
	.A(REF_MUXED_CLK__L4_N0));
   CLKINVX40M REF_MUXED_CLK__L4_I0 (.Y(REF_MUXED_CLK__L4_N0), 
	.A(REF_MUXED_CLK__L3_N0));
   CLKINVX32M REF_MUXED_CLK__L3_I1 (.Y(REF_MUXED_CLK__L3_N1), 
	.A(REF_MUXED_CLK__L2_N1));
   CLKBUFX20M REF_MUXED_CLK__L3_I0 (.Y(REF_MUXED_CLK__L3_N0), 
	.A(REF_MUXED_CLK__L2_N0));
   CLKINVX24M REF_MUXED_CLK__L2_I1 (.Y(REF_MUXED_CLK__L2_N1), 
	.A(REF_MUXED_CLK__L1_N0));
   CLKBUFX24M REF_MUXED_CLK__L2_I0 (.Y(REF_MUXED_CLK__L2_N0), 
	.A(REF_MUXED_CLK__L1_N0));
   CLKBUFX20M REF_MUXED_CLK__L1_I0 (.Y(REF_MUXED_CLK__L1_N0), 
	.A(REF_MUXED_CLK));
   CLKINVX40M gated_clk__L4_I2 (.Y(gated_clk__L4_N2), 
	.A(gated_clk__L3_N0));
   CLKINVX40M gated_clk__L4_I1 (.Y(gated_clk__L4_N1), 
	.A(gated_clk__L3_N0));
   CLKINVX40M gated_clk__L4_I0 (.Y(gated_clk__L4_N0), 
	.A(gated_clk__L3_N0));
   CLKINVX40M gated_clk__L3_I0 (.Y(gated_clk__L3_N0), 
	.A(gated_clk__L2_N0));
   CLKBUFX12M gated_clk__L2_I0 (.Y(gated_clk__L2_N0), 
	.A(gated_clk__L1_N0));
   CLKBUFX12M gated_clk__L1_I0 (.Y(gated_clk__L1_N0), 
	.A(gated_clk));
   CLKINVX40M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX40M UART_MUXED_CLK__L12_I1 (.Y(UART_MUXED_CLK__L12_N1), 
	.A(UART_MUXED_CLK__L11_N0));
   CLKINVX40M UART_MUXED_CLK__L12_I0 (.Y(UART_MUXED_CLK__L12_N0), 
	.A(UART_MUXED_CLK__L11_N0));
   CLKINVX32M UART_MUXED_CLK__L11_I0 (.Y(UART_MUXED_CLK__L11_N0), 
	.A(UART_MUXED_CLK__L10_N0));
   CLKBUFX40M UART_MUXED_CLK__L10_I0 (.Y(UART_MUXED_CLK__L10_N0), 
	.A(UART_MUXED_CLK__L9_N0));
   CLKBUFX24M UART_MUXED_CLK__L9_I0 (.Y(UART_MUXED_CLK__L9_N0), 
	.A(UART_MUXED_CLK__L8_N0));
   CLKBUFX24M UART_MUXED_CLK__L8_I0 (.Y(UART_MUXED_CLK__L8_N0), 
	.A(UART_MUXED_CLK__L7_N0));
   CLKBUFX24M UART_MUXED_CLK__L7_I0 (.Y(UART_MUXED_CLK__L7_N0), 
	.A(UART_MUXED_CLK__L6_N1));
   CLKBUFX24M UART_MUXED_CLK__L6_I1 (.Y(UART_MUXED_CLK__L6_N1), 
	.A(UART_MUXED_CLK__L5_N1));
   CLKINVX32M UART_MUXED_CLK__L6_I0 (.Y(UART_MUXED_CLK__L6_N0), 
	.A(UART_MUXED_CLK__L5_N0));
   CLKBUFX24M UART_MUXED_CLK__L5_I1 (.Y(UART_MUXED_CLK__L5_N1), 
	.A(UART_MUXED_CLK__L4_N0));
   CLKINVX40M UART_MUXED_CLK__L5_I0 (.Y(UART_MUXED_CLK__L5_N0), 
	.A(UART_MUXED_CLK__L4_N0));
   CLKBUFX20M UART_MUXED_CLK__L4_I0 (.Y(UART_MUXED_CLK__L4_N0), 
	.A(UART_MUXED_CLK__L3_N0));
   CLKBUFX24M UART_MUXED_CLK__L3_I0 (.Y(UART_MUXED_CLK__L3_N0), 
	.A(UART_MUXED_CLK__L2_N0));
   CLKBUFX24M UART_MUXED_CLK__L2_I0 (.Y(UART_MUXED_CLK__L2_N0), 
	.A(UART_MUXED_CLK__L1_N0));
   CLKBUFX12M UART_MUXED_CLK__L1_I0 (.Y(UART_MUXED_CLK__L1_N0), 
	.A(UART_MUXED_CLK));
   CLKBUFX12M div_clk_1__L1_I0 (.Y(div_clk_1__L1_N0), 
	.A(div_clk_1));
   CLKINVX40M TX_MUXED_CLK__L4_I1 (.Y(TX_MUXED_CLK__L4_N1), 
	.A(TX_MUXED_CLK__L3_N0));
   CLKINVX40M TX_MUXED_CLK__L4_I0 (.Y(TX_MUXED_CLK__L4_N0), 
	.A(TX_MUXED_CLK__L3_N0));
   CLKINVX40M TX_MUXED_CLK__L3_I0 (.Y(TX_MUXED_CLK__L3_N0), 
	.A(TX_MUXED_CLK__L2_N0));
   CLKBUFX40M TX_MUXED_CLK__L2_I0 (.Y(TX_MUXED_CLK__L2_N0), 
	.A(TX_MUXED_CLK__L1_N0));
   CLKBUFX12M TX_MUXED_CLK__L1_I0 (.Y(TX_MUXED_CLK__L1_N0), 
	.A(TX_MUXED_CLK));
   CLKINVX40M RX_MUXED_CLK__L4_I1 (.Y(RX_MUXED_CLK__L4_N1), 
	.A(RX_MUXED_CLK__L3_N0));
   CLKINVX40M RX_MUXED_CLK__L4_I0 (.Y(RX_MUXED_CLK__L4_N0), 
	.A(RX_MUXED_CLK__L3_N0));
   CLKINVX20M RX_MUXED_CLK__L3_I0 (.Y(RX_MUXED_CLK__L3_N0), 
	.A(RX_MUXED_CLK__L2_N0));
   CLKBUFX40M RX_MUXED_CLK__L2_I0 (.Y(RX_MUXED_CLK__L2_N0), 
	.A(RX_MUXED_CLK__L1_N0));
   CLKBUFX12M RX_MUXED_CLK__L1_I0 (.Y(RX_MUXED_CLK__L1_N0), 
	.A(RX_MUXED_CLK));
   BUFX4M FE_OFC11_SE (.Y(FE_OFN11_SE), 
	.A(SE));
   BUFX2M FE_OFC10_ALU_FUNC_0_ (.Y(FE_OFN10_ALU_FUNC_0_), 
	.A(ALU_FUNC[0]));
   BUFX2M FE_OFC9_ALU_FUNC_1_ (.Y(FE_OFN9_ALU_FUNC_1_), 
	.A(ALU_FUNC[1]));
   BUFX4M FE_OFC4_muxed_rst_sync_2 (.Y(FE_OFN4_muxed_rst_sync_2), 
	.A(muxed_rst_sync_2));
   BUFX8M FE_OFC3_muxed_rst_sync_1 (.Y(FE_OFN3_muxed_rst_sync_1), 
	.A(FE_OFN2_muxed_rst_sync_1));
   CLKBUFX8M FE_OFC2_muxed_rst_sync_1 (.Y(FE_OFN2_muxed_rst_sync_1), 
	.A(FE_OFN0_muxed_rst_sync_1));
   BUFX4M FE_OFC0_muxed_rst_sync_1 (.Y(FE_OFN0_muxed_rst_sync_1), 
	.A(muxed_rst_sync_1));
   NOR3X2M U49 (.Y(n9), 
	.C(n10), 
	.B(n6), 
	.A(n11));
   NOR2X2M U50 (.Y(n6), 
	.B(ALU_FUNC[2]), 
	.A(ALU_FUNC[3]));
   NOR2BX2M U51 (.Y(n11), 
	.B(ALU_FUNC[3]), 
	.AN(ALU_FUNC[2]));
   NOR2BX2M U52 (.Y(n10), 
	.B(ALU_FUNC[2]), 
	.AN(ALU_FUNC[3]));
   NOR2X2M U53 (.Y(rx_div_ratio[3]), 
	.B(n30), 
	.A(n31));
   INVX2M U54 (.Y(n30), 
	.A(n4));
   INVX2M U55 (.Y(n31), 
	.A(n5));
   NOR2X2M U56 (.Y(rx_div_ratio[1]), 
	.B(n5), 
	.A(n30));
   NOR2X2M U57 (.Y(rx_div_ratio[2]), 
	.B(n4), 
	.A(n31));
   NOR2X2M U58 (.Y(rx_div_ratio[0]), 
	.B(n4), 
	.A(n5));
   OR2X2M U59 (.Y(clk_gating_en_dft), 
	.B(n26), 
	.A(clk_gating_en));
   NOR2X2M U60 (.Y(n5), 
	.B(Prescale[5]), 
	.A(Prescale[4]));
   NOR2X2M U61 (.Y(n4), 
	.B(Prescale[5]), 
	.A(Prescale[3]));
   NAND2X2M U62 (.Y(ALU_OUT[0]), 
	.B(n25), 
	.A(n24));
   AOI22X1M U63 (.Y(n24), 
	.B1(n6), 
	.B0(arith_OUT[0]), 
	.A1(n11), 
	.A0(logic_OUT[0]));
   AOI22X1M U64 (.Y(n25), 
	.B1(n10), 
	.B0(cmp_OUT[0]), 
	.A1(n9), 
	.A0(shift_OUT[0]));
   NAND2X2M U65 (.Y(ALU_OUT[1]), 
	.B(n23), 
	.A(n22));
   AOI22X1M U66 (.Y(n22), 
	.B1(n6), 
	.B0(arith_OUT[1]), 
	.A1(n11), 
	.A0(logic_OUT[1]));
   AOI22X1M U67 (.Y(n23), 
	.B1(n10), 
	.B0(cmp_OUT[1]), 
	.A1(n9), 
	.A0(shift_OUT[1]));
   NAND2X2M U68 (.Y(ALU_OUT[2]), 
	.B(n21), 
	.A(n20));
   AOI22X1M U69 (.Y(n20), 
	.B1(n6), 
	.B0(arith_OUT[2]), 
	.A1(n11), 
	.A0(logic_OUT[2]));
   NAND2X2M U70 (.Y(n21), 
	.B(n9), 
	.A(shift_OUT[2]));
   NAND2X2M U71 (.Y(ALU_OUT[3]), 
	.B(n19), 
	.A(n18));
   AOI22X1M U72 (.Y(n18), 
	.B1(n6), 
	.B0(arith_OUT[3]), 
	.A1(n11), 
	.A0(logic_OUT[3]));
   NAND2X2M U73 (.Y(n19), 
	.B(n9), 
	.A(shift_OUT[3]));
   NAND2X2M U74 (.Y(ALU_OUT[4]), 
	.B(n17), 
	.A(n16));
   AOI22X1M U75 (.Y(n16), 
	.B1(n6), 
	.B0(arith_OUT[4]), 
	.A1(n11), 
	.A0(logic_OUT[4]));
   NAND2X2M U76 (.Y(n17), 
	.B(n9), 
	.A(shift_OUT[4]));
   NAND2X2M U77 (.Y(ALU_OUT[5]), 
	.B(n15), 
	.A(n14));
   AOI22X1M U78 (.Y(n14), 
	.B1(n6), 
	.B0(arith_OUT[5]), 
	.A1(n11), 
	.A0(logic_OUT[5]));
   NAND2X2M U79 (.Y(n15), 
	.B(n9), 
	.A(shift_OUT[5]));
   NAND2X2M U80 (.Y(ALU_OUT[6]), 
	.B(n13), 
	.A(n12));
   AOI22X1M U81 (.Y(n12), 
	.B1(n6), 
	.B0(arith_OUT[6]), 
	.A1(n11), 
	.A0(logic_OUT[6]));
   NAND2X2M U82 (.Y(n13), 
	.B(n9), 
	.A(shift_OUT[6]));
   NAND2X2M U83 (.Y(ALU_OUT[7]), 
	.B(n8), 
	.A(n7));
   AOI22X1M U84 (.Y(n7), 
	.B1(n6), 
	.B0(arith_OUT[7]), 
	.A1(n11), 
	.A0(logic_OUT[7]));
   NAND2X2M U85 (.Y(n8), 
	.B(n9), 
	.A(shift_OUT[7]));
   AND2X2M U86 (.Y(ALU_OUT[8]), 
	.B(n6), 
	.A(arith_OUT[8]));
   AND2X2M U87 (.Y(ALU_OUT[9]), 
	.B(n6), 
	.A(arith_OUT[9]));
   AND2X2M U88 (.Y(ALU_OUT[10]), 
	.B(n6), 
	.A(arith_OUT[10]));
   AND2X2M U89 (.Y(ALU_OUT[11]), 
	.B(n6), 
	.A(arith_OUT[11]));
   AND2X2M U90 (.Y(ALU_OUT[12]), 
	.B(n6), 
	.A(arith_OUT[12]));
   AND2X2M U91 (.Y(ALU_OUT[13]), 
	.B(n6), 
	.A(arith_OUT[13]));
   AND2X2M U92 (.Y(ALU_OUT[14]), 
	.B(n6), 
	.A(arith_OUT[14]));
   AND2X2M U93 (.Y(ALU_OUT[15]), 
	.B(n6), 
	.A(arith_OUT[15]));
   BUFX2M U97 (.Y(n26), 
	.A(test_mode));
   INVXLM U100 (.Y(n53), 
	.A(n63));
   DLY1X4M U101 (.Y(n54), 
	.A(n56));
   DLY1X4M U102 (.Y(n55), 
	.A(n66));
   INVXLM U103 (.Y(n56), 
	.A(n63));
   CLKINVX2M U104 (.Y(n57), 
	.A(n63));
   DLY1X4M U105 (.Y(n58), 
	.A(n53));
   INVXLM U106 (.Y(n59), 
	.A(n64));
   CLKINVX2M U107 (.Y(n60), 
	.A(n59));
   CLKINVX2M U108 (.Y(n61), 
	.A(n59));
   INVXLM U109 (.Y(n62), 
	.A(n59));
   INVXLM U110 (.Y(n63), 
	.A(FE_OFN11_SE));
   INVXLM U111 (.Y(n64), 
	.A(n63));
   INVXLM U112 (.Y(n65), 
	.A(n63));
   INVXLM U113 (.Y(n66), 
	.A(n63));
   mux2x1_1 TX_CLK_mux (.IN0(div_clk_1__L1_N0), 
	.IN1(scan_clk__L12_N0), 
	.SEL(n26), 
	.MUX_OUT(TX_MUXED_CLK));
   mux2x1_4 RX_CLK_mux (.IN0(div_clk_2), 
	.IN1(scan_clk__L12_N0), 
	.SEL(n26), 
	.MUX_OUT(RX_MUXED_CLK));
   mux2x1_3 REF_CLK_mux (.IN0(REF_CLK__L2_N0), 
	.IN1(scan_clk__L7_N0), 
	.SEL(n26), 
	.MUX_OUT(REF_MUXED_CLK));
   mux2x1_2 UART_CLK_mux (.IN0(UART_CLK__L2_N0), 
	.IN1(scan_clk__L2_N0), 
	.SEL(n26), 
	.MUX_OUT(UART_MUXED_CLK));
   mux2x1_0 u_rst_mux (.IN0(RST), 
	.IN1(scan_rst), 
	.SEL(n26), 
	.MUX_OUT(MUXED_RST));
   mux2x1_6 u_rst_sync_1_mux (.IN0(sync_rst_1), 
	.IN1(scan_rst), 
	.SEL(n26), 
	.MUX_OUT(muxed_rst_sync_1));
   mux2x1_5 u_rst_sync_2_mux (.IN0(sync_rst_2), 
	.IN1(scan_rst), 
	.SEL(n26), 
	.MUX_OUT(muxed_rst_sync_2));
   RST_SYNC_SYNC_STAGES2_test_0 u_rst_sync_1 (.CLK(REF_MUXED_CLK__L9_N3), 
	.RST(MUXED_RST), 
	.SYNC_RST(sync_rst_1), 
	.test_si(n36), 
	.test_so(n35), 
	.test_se(n62));
   RST_SYNC_SYNC_STAGES2_test_1 u_rst_sync_2 (.CLK(UART_MUXED_CLK__L12_N1), 
	.RST(MUXED_RST), 
	.SYNC_RST(sync_rst_2), 
	.test_si(n35), 
	.test_so(n34), 
	.test_se(n65));
   CLK_DIV_test_0 u_clk_div_1 (.ref_clk(UART_MUXED_CLK__L12_N0), 
	.RST(muxed_rst_sync_2), 
	.clk_en(1'b1), 
	.div_ratio({ div_ratio[7],
		div_ratio[6],
		div_ratio[5],
		div_ratio[4],
		div_ratio[3],
		div_ratio[2],
		div_ratio[1],
		div_ratio[0] }), 
	.div_clk(div_clk_1), 
	.test_si2(test_si5), 
	.test_si1(n42), 
	.test_so2(n39), 
	.test_so1(test_so4), 
	.test_se(n57), 
	.UART_MUXED_CLK__L12_N1(UART_MUXED_CLK__L12_N1), 
	.UART_MUXED_CLK__L1_N0(UART_MUXED_CLK__L1_N0), 
	.UART_MUXED_CLK__L6_N0(UART_MUXED_CLK__L6_N0));
   prescale_mux u_prescale_mux (.prescale_sel({ n31,
		n30 }), 
	.prescale({ prescale_factor[5],
		prescale_factor[4],
		prescale_factor[3],
		prescale_factor[2],
		SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1 }));
   CLK_DIV_test_1 u_clk_div_2 (.ref_clk(UART_MUXED_CLK__L12_N0), 
	.RST(muxed_rst_sync_2), 
	.clk_en(1'b1), 
	.div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		rx_div_ratio[3],
		rx_div_ratio[2],
		rx_div_ratio[1],
		rx_div_ratio[0] }), 
	.div_clk(div_clk_2), 
	.test_si(n39), 
	.test_so(n38), 
	.test_se(n60), 
	.UART_MUXED_CLK__L12_N1(UART_MUXED_CLK__L12_N1), 
	.UART_MUXED_CLK__L1_N0(UART_MUXED_CLK__L1_N0), 
	.UART_MUXED_CLK__L6_N0(UART_MUXED_CLK__L6_N0));
   Reg_File_W8_D16_addr_W4_test_1 RF (.WrData({ WrData[7],
		WrData[6],
		WrData[5],
		WrData[4],
		WrData[3],
		WrData[2],
		WrData[1],
		WrData[0] }), 
	.Address({ addr[3],
		addr[2],
		addr[1],
		addr[0] }), 
	.WrEn(WrEn), 
	.RdEn(RdEn), 
	.CLK(REF_MUXED_CLK__L9_N0), 
	.RST(muxed_rst_sync_1), 
	.RdData({ RdData[7],
		RdData[6],
		RdData[5],
		RdData[4],
		RdData[3],
		RdData[2],
		RdData[1],
		RdData[0] }), 
	.RdData_valid(RdData_valid), 
	.REG0({ A_top[7],
		A_top[6],
		A_top[5],
		A_top[4],
		A_top[3],
		A_top[2],
		A_top[1],
		A_top[0] }), 
	.REG1({ B_top[7],
		B_top[6],
		B_top[5],
		B_top[4],
		B_top[3],
		B_top[2],
		B_top[1],
		B_top[0] }), 
	.REG2({ Prescale[5],
		Prescale[4],
		Prescale[3],
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		SYNOPSYS_UNCONNECTED__4,
		REG2_config[1],
		REG2_config[0] }), 
	.REG3({ div_ratio[7],
		div_ratio[6],
		div_ratio[5],
		div_ratio[4],
		div_ratio[3],
		div_ratio[2],
		div_ratio[1],
		div_ratio[0] }), 
	.test_si3(test_si3), 
	.test_si2(test_si2), 
	.test_si1(n51), 
	.test_so3(n46), 
	.test_so2(test_so2), 
	.test_so1(SO), 
	.test_se(FE_OFN11_SE), 
	.FE_OFN0_muxed_rst_sync_1(FE_OFN0_muxed_rst_sync_1), 
	.FE_OFN3_muxed_rst_sync_1(FE_OFN3_muxed_rst_sync_1), 
	.REF_MUXED_CLK__L9_N1(REF_MUXED_CLK__L9_N1), 
	.REF_MUXED_CLK__L9_N13(REF_MUXED_CLK__L9_N13), 
	.REF_MUXED_CLK__L9_N2(REF_MUXED_CLK__L9_N2), 
	.REF_MUXED_CLK__L9_N3(REF_MUXED_CLK__L9_N3), 
	.REF_MUXED_CLK__L9_N4(REF_MUXED_CLK__L9_N4), 
	.REF_MUXED_CLK__L9_N5(REF_MUXED_CLK__L9_N5), 
	.REF_MUXED_CLK__L9_N6(REF_MUXED_CLK__L9_N6), 
	.REF_MUXED_CLK__L9_N7(REF_MUXED_CLK__L9_N7));
   ALU_TOP_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH4_OUTPUT_WIDTH8_test_1 ALU (.A_top({ A_top[7],
		A_top[6],
		A_top[5],
		A_top[4],
		A_top[3],
		A_top[2],
		A_top[1],
		A_top[0] }), 
	.B_top({ B_top[7],
		B_top[6],
		B_top[5],
		B_top[4],
		B_top[3],
		B_top[2],
		B_top[1],
		B_top[0] }), 
	.ALU_FUN_top({ ALU_FUNC[3],
		ALU_FUNC[2],
		FE_OFN9_ALU_FUNC_1_,
		FE_OFN10_ALU_FUNC_0_ }), 
	.Enable_top(ALU_EN), 
	.CLK_top(gated_clk__L4_N0), 
	.RST_top(FE_OFN0_muxed_rst_sync_1), 
	.arith_OUT_top({ arith_OUT[15],
		arith_OUT[14],
		arith_OUT[13],
		arith_OUT[12],
		arith_OUT[11],
		arith_OUT[10],
		arith_OUT[9],
		arith_OUT[8],
		arith_OUT[7],
		arith_OUT[6],
		arith_OUT[5],
		arith_OUT[4],
		arith_OUT[3],
		arith_OUT[2],
		arith_OUT[1],
		arith_OUT[0] }), 
	.logic_OUT_top({ logic_OUT[7],
		logic_OUT[6],
		logic_OUT[5],
		logic_OUT[4],
		logic_OUT[3],
		logic_OUT[2],
		logic_OUT[1],
		logic_OUT[0] }), 
	.cmp_OUT_top({ SYNOPSYS_UNCONNECTED__5,
		SYNOPSYS_UNCONNECTED__6,
		SYNOPSYS_UNCONNECTED__7,
		SYNOPSYS_UNCONNECTED__8,
		SYNOPSYS_UNCONNECTED__9,
		SYNOPSYS_UNCONNECTED__10,
		cmp_OUT[1],
		cmp_OUT[0] }), 
	.shift_OUT_top({ shift_OUT[7],
		shift_OUT[6],
		shift_OUT[5],
		shift_OUT[4],
		shift_OUT[3],
		shift_OUT[2],
		shift_OUT[1],
		shift_OUT[0] }), 
	.OUT_valid(OUT_valid), 
	.test_si(SI), 
	.test_so(n51), 
	.test_se(n55), 
	.FE_OFN3_muxed_rst_sync_1(FE_OFN3_muxed_rst_sync_1), 
	.gated_clk__L4_N1(gated_clk__L4_N1), 
	.gated_clk__L4_N2(gated_clk__L4_N2));
   CLK_GATE u_clk_gating (.CLK_EN(clk_gating_en_dft), 
	.CLK(REF_MUXED_CLK__L3_N1), 
	.GATED_CLK(gated_clk));
   sys_ctrl_test_1 u_sys_ctrl (.CLK(REF_MUXED_CLK__L9_N12), 
	.RST(muxed_rst_sync_1), 
	.RdData({ RdData[7],
		RdData[6],
		RdData[5],
		RdData[4],
		RdData[3],
		RdData[2],
		RdData[1],
		RdData[0] }), 
	.RdData_valid(RdData_valid), 
	.Address({ addr[3],
		addr[2],
		addr[1],
		addr[0] }), 
	.WrData({ WrData[7],
		WrData[6],
		WrData[5],
		WrData[4],
		WrData[3],
		WrData[2],
		WrData[1],
		WrData[0] }), 
	.WrEn(WrEn), 
	.RdEn(RdEn), 
	.RX_P_DATA({ RX_SYNC_DATA[7],
		RX_SYNC_DATA[6],
		RX_SYNC_DATA[5],
		RX_SYNC_DATA[4],
		RX_SYNC_DATA[3],
		RX_SYNC_DATA[2],
		RX_SYNC_DATA[1],
		RX_SYNC_DATA[0] }), 
	.RX_D_VLD(RX_SYNC_VALID), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_valid(OUT_valid), 
	.ALU_CLK_EN(clk_gating_en), 
	.ALU_EN(ALU_EN), 
	.ALU_FUNC({ ALU_FUNC[3],
		ALU_FUNC[2],
		ALU_FUNC[1],
		ALU_FUNC[0] }), 
	.fifo_full(fifo_full), 
	.Wr_Data_fifo({ Wr_Data_fifo[7],
		Wr_Data_fifo[6],
		Wr_Data_fifo[5],
		Wr_Data_fifo[4],
		Wr_Data_fifo[3],
		Wr_Data_fifo[2],
		Wr_Data_fifo[1],
		Wr_Data_fifo[0] }), 
	.Wr_inc(Wr_inc), 
	.test_si(n34), 
	.test_so(test_so5), 
	.test_se(n54), 
	.FE_OFN0_muxed_rst_sync_1(FE_OFN0_muxed_rst_sync_1), 
	.FE_OFN2_muxed_rst_sync_1(FE_OFN2_muxed_rst_sync_1), 
	.FE_OFN3_muxed_rst_sync_1(FE_OFN3_muxed_rst_sync_1), 
	.REF_MUXED_CLK__L9_N13(REF_MUXED_CLK__L9_N13), 
	.REF_MUXED_CLK__L9_N2(REF_MUXED_CLK__L9_N2), 
	.REF_MUXED_CLK__L9_N3(REF_MUXED_CLK__L9_N3), 
	.REF_MUXED_CLK__L9_N8(REF_MUXED_CLK__L9_N8), 
	.REF_MUXED_CLK__L9_N9(REF_MUXED_CLK__L9_N9));
   DATA_SYNC_BUS_WIDTH8_NUM_STAGES2_test_1 u_data_sync (.unsync_bus({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.bus_en(RX_DATA_VALID), 
	.CLK(REF_MUXED_CLK__L9_N3), 
	.RST(muxed_rst_sync_1), 
	.sync_bus({ RX_SYNC_DATA[7],
		RX_SYNC_DATA[6],
		RX_SYNC_DATA[5],
		RX_SYNC_DATA[4],
		RX_SYNC_DATA[3],
		RX_SYNC_DATA[2],
		RX_SYNC_DATA[1],
		RX_SYNC_DATA[0] }), 
	.enable_pulse(RX_SYNC_VALID), 
	.test_si(n38), 
	.test_so(n37), 
	.test_se(n61), 
	.REF_MUXED_CLK__L9_N9(REF_MUXED_CLK__L9_N9));
   uart_top_DATA_WIDTH8_test_1 UART (.tx_clk(TX_MUXED_CLK__L4_N0), 
	.rx_clk(RX_MUXED_CLK__L4_N0), 
	.RST(muxed_rst_sync_2), 
	.Prescale({ prescale_factor[5],
		prescale_factor[4],
		prescale_factor[3],
		prescale_factor[2],
		1'b0,
		1'b0 }), 
	.PAR_EN(REG2_config[0]), 
	.PAR_TYP(REG2_config[1]), 
	.TX_P_DATA({ rd_data[7],
		rd_data[6],
		rd_data[5],
		rd_data[4],
		rd_data[3],
		rd_data[2],
		rd_data[1],
		rd_data[0] }), 
	.TX_DATA_VALID(fifo_empty), 
	.TX_OUT(TX_OUT), 
	.TX_BUSY(TX_BUSY), 
	.RX_IN(RX_IN), 
	.RX_P_DATA({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.RX_DATA_VALID(RX_DATA_VALID), 
	.RX_PARITY_ERROR(PAR_ERR), 
	.RX_STOP_ERROR(STP_ERR), 
	.test_si(n46), 
	.test_so(n45), 
	.test_se(n58), 
	.FE_OFN4_muxed_rst_sync_2(FE_OFN4_muxed_rst_sync_2), 
	.RX_MUXED_CLK__L4_N1(RX_MUXED_CLK__L4_N1), 
	.TX_MUXED_CLK__L4_N1(TX_MUXED_CLK__L4_N1));
   ASYNC_FIFO_DATA_WIDTH8_PTR_WIDTH4_DEPTH8_SYNC_STAGES2_test_1 u_async_fifo (.read_enable(RD_INC), 
	.read_clk(TX_MUXED_CLK__L4_N0), 
	.read_rst(FE_OFN4_muxed_rst_sync_2), 
	.write_enable(Wr_inc), 
	.write_clk(REF_MUXED_CLK__L9_N10), 
	.write_rst(FE_OFN2_muxed_rst_sync_1), 
	.wr_data({ Wr_Data_fifo[7],
		Wr_Data_fifo[6],
		Wr_Data_fifo[5],
		Wr_Data_fifo[4],
		Wr_Data_fifo[3],
		Wr_Data_fifo[2],
		Wr_Data_fifo[1],
		Wr_Data_fifo[0] }), 
	.rd_data({ rd_data[7],
		rd_data[6],
		rd_data[5],
		rd_data[4],
		rd_data[3],
		rd_data[2],
		rd_data[1],
		rd_data[0] }), 
	.fifo_full(fifo_full), 
	.fifo_empty(fifo_empty), 
	.test_si2(test_si4), 
	.test_si1(n45), 
	.test_so2(n42), 
	.test_so1(test_so3), 
	.test_se(FE_OFN11_SE), 
	.FE_OFN3_muxed_rst_sync_1(FE_OFN3_muxed_rst_sync_1), 
	.TX_MUXED_CLK__L4_N1(TX_MUXED_CLK__L4_N1), 
	.REF_MUXED_CLK__L9_N11(REF_MUXED_CLK__L9_N11), 
	.REF_MUXED_CLK__L9_N12(REF_MUXED_CLK__L9_N12), 
	.REF_MUXED_CLK__L9_N14(REF_MUXED_CLK__L9_N14), 
	.REF_MUXED_CLK__L9_N15(REF_MUXED_CLK__L9_N15), 
	.REF_MUXED_CLK__L9_N8(REF_MUXED_CLK__L9_N8));
   PULSE_GEN_test_1 u_pulse_gen (.CLK(TX_MUXED_CLK__L4_N1), 
	.RST(FE_OFN4_muxed_rst_sync_2), 
	.LVL_SIG(TX_BUSY), 
	.PULSE_SIG(RD_INC), 
	.test_si(n37), 
	.test_so(n36), 
	.test_se(n64));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Wed Oct 14 09:45:53 2026
/////////////////////////////////////////////////////////////
module mux2x1_1 (
	IN0, 
	IN1, 
	SEL, 
	MUX_OUT);
   input IN0;
   input IN1;
   input SEL;
   output MUX_OUT;

   MX2X2M U1 (.Y(MUX_OUT), 
	.S0(SEL), 
	.B(IN1), 
	.A(IN0));
endmodule

module mux2x1_4 (
	IN0, 
	IN1, 
	SEL, 
	MUX_OUT);
   input IN0;
   input IN1;
   input SEL;
   output MUX_OUT;

   MX2X2M U1 (.Y(MUX_OUT), 
	.S0(SEL), 
	.B(IN1), 
	.A(IN0));
endmodule

module mux2x1_3 (
	IN0, 
	IN1, 
	SEL, 
	MUX_OUT);
   input IN0;
   input IN1;
   input SEL;
   output MUX_OUT;

   MX2X6M U1 (.Y(MUX_OUT), 
	.S0(SEL), 
	.B(IN1), 
	.A(IN0));
endmodule

module mux2x1_2 (
	IN0, 
	IN1, 
	SEL, 
	MUX_OUT);
   input IN0;
   input IN1;
   input SEL;
   output MUX_OUT;

   MX2X2M U1 (.Y(MUX_OUT), 
	.S0(SEL), 
	.B(IN1), 
	.A(IN0));
endmodule

module mux2x1_0 (
	IN0, 
	IN1, 
	SEL, 
	MUX_OUT);
   input IN0;
   input IN1;
   input SEL;
   output MUX_OUT;

   // Internal wires
   wire FE_PHN16_RST;
   wire FE_PHN15_RST;
   wire FE_PHN13_scan_rst;
   wire FE_PHN10_scan_rst;

   DLY4X1M FE_PHC16_RST (.Y(FE_PHN16_RST), 
	.A(FE_PHN15_RST));
   DLY4X1M FE_PHC15_RST (.Y(FE_PHN15_RST), 
	.A(IN0));
   DLY4X1M FE_PHC13_scan_rst (.Y(FE_PHN13_scan_rst), 
	.A(FE_PHN10_scan_rst));
   DLY4X1M FE_PHC10_scan_rst (.Y(FE_PHN10_scan_rst), 
	.A(IN1));
   MX2X2M U1 (.Y(MUX_OUT), 
	.S0(SEL), 
	.B(FE_PHN13_scan_rst), 
	.A(FE_PHN16_RST));
endmodule

module mux2x1_6 (
	IN0, 
	IN1, 
	SEL, 
	MUX_OUT);
   input IN0;
   input IN1;
   input SEL;
   output MUX_OUT;

   // Internal wires
   wire FE_PHN14_scan_rst;
   wire FE_PHN12_scan_rst;

   DLY4X1M FE_PHC14_scan_rst (.Y(FE_PHN14_scan_rst), 
	.A(FE_PHN12_scan_rst));
   DLY4X1M FE_PHC12_scan_rst (.Y(FE_PHN12_scan_rst), 
	.A(IN1));
   MX2X8M U1 (.Y(MUX_OUT), 
	.S0(SEL), 
	.B(FE_PHN14_scan_rst), 
	.A(IN0));
endmodule

module mux2x1_5 (
	IN0, 
	IN1, 
	SEL, 
	MUX_OUT);
   input IN0;
   input IN1;
   input SEL;
   output MUX_OUT;

   // Internal wires
   wire FE_PHN11_scan_rst;

   DLY4X1M FE_PHC11_scan_rst (.Y(FE_PHN11_scan_rst), 
	.A(IN1));
   MX2X8M U1 (.Y(MUX_OUT), 
	.S0(SEL), 
	.B(FE_PHN11_scan_rst), 
	.A(IN0));
endmodule

module RST_SYNC_SYNC_STAGES2_test_0 (
	CLK, 
	RST, 
	SYNC_RST, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   output SYNC_RST;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_ff[1] ;

   assign test_so = \sync_ff[1]  ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_ff_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\sync_ff[1] ), 
	.CK(CLK));
   SDFFRQX2M \sync_ff_reg[1]  (.SI(SYNC_RST), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_ff[1] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

module RST_SYNC_SYNC_STAGES2_test_1 (
	CLK, 
	RST, 
	SYNC_RST, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   output SYNC_RST;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_ff[1] ;

   assign test_so = \sync_ff[1]  ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_ff_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\sync_ff[1] ), 
	.CK(CLK));
   SDFFRQX2M \sync_ff_reg[1]  (.SI(SYNC_RST), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_ff[1] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

module CLK_DIV_0_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   INVX2M U1 (.Y(SUM[0]), 
	.A(A[0]));
   CLKXOR2X2M U2 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
endmodule

module CLK_DIV_0_DW01_inc_1 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U2 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
endmodule

module CLK_DIV_test_0 (
	ref_clk, 
	RST, 
	clk_en, 
	div_ratio, 
	div_clk, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	UART_MUXED_CLK__L12_N1, 
	UART_MUXED_CLK__L1_N0, 
	UART_MUXED_CLK__L6_N0);
   input ref_clk;
   input RST;
   input clk_en;
   input [7:0] div_ratio;
   output div_clk;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input UART_MUXED_CLK__L12_N1;
   input UART_MUXED_CLK__L1_N0;
   input UART_MUXED_CLK__L6_N0;

   // Internal wires
   wire FE_PHN18_divided_clk_gen__Exclude_0_NET;
   wire FE_PHN1_test_si5;
   wire FE_PHN0_test_si5;
   wire divided_clk_gen__Exclude_0_NET;
   wire FE_UNCONNECTED_0;
   wire HTIE_LTIEHI_NET;
   wire divided_clk_gen;
   wire odd_phase;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N44;
   wire N45;
   wire N46;
   wire N47;
   wire N48;
   wire N49;
   wire N50;
   wire N77;
   wire N78;
   wire N79;
   wire N80;
   wire N81;
   wire N82;
   wire N83;
   wire N84;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire [7:0] counter_odd;
   wire [7:0] counter_even;

   assign test_so1 = counter_even[6] ;
   assign test_so2 = odd_phase ;

   DLY3X1M FE_PHC18_divided_clk_gen__Exclude_0_NET (.Y(FE_PHN18_divided_clk_gen__Exclude_0_NET), 
	.A(divided_clk_gen__Exclude_0_NET));
   DLY4X1M FE_PHC1_test_si5 (.Y(FE_PHN1_test_si5), 
	.A(FE_PHN0_test_si5));
   DLY4X1M FE_PHC0_test_si5 (.Y(FE_PHN0_test_si5), 
	.A(test_si2));
   BUFX8M divided_clk_gen__Exclude_0 (.Y(divided_clk_gen__Exclude_0_NET), 
	.A(divided_clk_gen));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFSQX2M divided_clk_gen_reg (.SN(RST), 
	.SI(counter_odd[7]), 
	.SE(test_se), 
	.Q(divided_clk_gen), 
	.D(n44), 
	.CK(UART_MUXED_CLK__L1_N0));
   SDFFRQX2M \counter_even_reg[7]  (.SI(FE_PHN1_test_si5), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[7]), 
	.D(n60), 
	.CK(ref_clk));
   SDFFRQX2M odd_phase_reg (.SI(FE_PHN18_divided_clk_gen__Exclude_0_NET), 
	.SE(test_se), 
	.RN(RST), 
	.Q(odd_phase), 
	.D(n53), 
	.CK(ref_clk));
   SDFFRQX2M \counter_odd_reg[7]  (.SI(counter_odd[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[7]), 
	.D(n45), 
	.CK(ref_clk));
   SDFFRQX2M \counter_even_reg[2]  (.SI(counter_even[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[2]), 
	.D(n58), 
	.CK(UART_MUXED_CLK__L12_N1));
   SDFFRQX2M \counter_even_reg[4]  (.SI(counter_even[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[4]), 
	.D(n56), 
	.CK(UART_MUXED_CLK__L12_N1));
   SDFFRQX2M \counter_even_reg[3]  (.SI(counter_even[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[3]), 
	.D(n57), 
	.CK(UART_MUXED_CLK__L12_N1));
   SDFFRQX2M \counter_odd_reg[0]  (.SI(counter_even[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[0]), 
	.D(n52), 
	.CK(ref_clk));
   SDFFRQX2M \counter_even_reg[0]  (.SI(test_si1), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[0]), 
	.D(n61), 
	.CK(UART_MUXED_CLK__L12_N1));
   SDFFRQX2M \counter_even_reg[1]  (.SI(counter_even[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[1]), 
	.D(n59), 
	.CK(UART_MUXED_CLK__L12_N1));
   SDFFRQX2M \counter_odd_reg[2]  (.SI(counter_odd[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[2]), 
	.D(n50), 
	.CK(ref_clk));
   SDFFRQX2M \counter_even_reg[6]  (.SI(counter_even[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[6]), 
	.D(n54), 
	.CK(UART_MUXED_CLK__L12_N1));
   SDFFRQX2M \counter_even_reg[5]  (.SI(counter_even[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[5]), 
	.D(n55), 
	.CK(UART_MUXED_CLK__L12_N1));
   SDFFRQX2M \counter_odd_reg[1]  (.SI(counter_odd[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[1]), 
	.D(n51), 
	.CK(ref_clk));
   SDFFRQX2M \counter_odd_reg[3]  (.SI(counter_odd[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[3]), 
	.D(n49), 
	.CK(ref_clk));
   SDFFRQX2M \counter_odd_reg[4]  (.SI(counter_odd[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[4]), 
	.D(n48), 
	.CK(ref_clk));
   SDFFRQX2M \counter_odd_reg[5]  (.SI(counter_odd[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[5]), 
	.D(n47), 
	.CK(ref_clk));
   SDFFRQX2M \counter_odd_reg[6]  (.SI(counter_odd[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[6]), 
	.D(n46), 
	.CK(ref_clk));
   INVX2M U8 (.Y(n6), 
	.A(n34));
   INVX2M U9 (.Y(N16), 
	.A(div_ratio[1]));
   NAND2BX1M U10 (.Y(n1), 
	.B(N16), 
	.AN(div_ratio[2]));
   OAI2BB1X1M U11 (.Y(N17), 
	.B0(n1), 
	.A1N(div_ratio[2]), 
	.A0N(div_ratio[1]));
   OR2X1M U25 (.Y(n2), 
	.B(div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U26 (.Y(N18), 
	.B0(n2), 
	.A1N(div_ratio[3]), 
	.A0N(n1));
   OR2X1M U27 (.Y(n3), 
	.B(div_ratio[4]), 
	.A(n2));
   OAI2BB1X1M U28 (.Y(N19), 
	.B0(n3), 
	.A1N(div_ratio[4]), 
	.A0N(n2));
   OR2X1M U29 (.Y(n4), 
	.B(div_ratio[5]), 
	.A(n3));
   OAI2BB1X1M U30 (.Y(N20), 
	.B0(n4), 
	.A1N(div_ratio[5]), 
	.A0N(n3));
   XNOR2X1M U31 (.Y(N21), 
	.B(n4), 
	.A(div_ratio[6]));
   NOR3X1M U32 (.Y(N23), 
	.C(n4), 
	.B(div_ratio[7]), 
	.A(div_ratio[6]));
   OAI21X1M U33 (.Y(n5), 
	.B0(div_ratio[7]), 
	.A1(n4), 
	.A0(div_ratio[6]));
   NAND2BX1M U34 (.Y(N22), 
	.B(n5), 
	.AN(N23));
   AO22X1M U35 (.Y(n61), 
	.B1(n7), 
	.B0(N77), 
	.A1(n6), 
	.A0(counter_even[0]));
   AO22X1M U36 (.Y(n60), 
	.B1(n7), 
	.B0(N84), 
	.A1(counter_even[7]), 
	.A0(n6));
   AO22X1M U37 (.Y(n59), 
	.B1(n7), 
	.B0(N78), 
	.A1(n6), 
	.A0(counter_even[1]));
   AO22X1M U38 (.Y(n58), 
	.B1(n7), 
	.B0(N79), 
	.A1(n6), 
	.A0(counter_even[2]));
   AO22X1M U39 (.Y(n57), 
	.B1(n7), 
	.B0(N80), 
	.A1(n6), 
	.A0(counter_even[3]));
   AO22X1M U40 (.Y(n56), 
	.B1(n7), 
	.B0(N81), 
	.A1(n6), 
	.A0(counter_even[4]));
   AO22X1M U41 (.Y(n55), 
	.B1(n7), 
	.B0(N82), 
	.A1(n6), 
	.A0(counter_even[5]));
   AO22X1M U42 (.Y(n54), 
	.B1(n7), 
	.B0(N83), 
	.A1(n6), 
	.A0(counter_even[6]));
   NOR2BX1M U43 (.Y(n7), 
	.B(n9), 
	.AN(n8));
   MXI2X1M U44 (.Y(n53), 
	.S0(odd_phase), 
	.B(n29), 
	.A(n28));
   AOI21X1M U45 (.Y(n29), 
	.B0(n32), 
	.A1(n31), 
	.A0(n30));
   CLKNAND2X2M U46 (.Y(n28), 
	.B(n33), 
	.A(n6));
   OAI2BB2X1M U47 (.Y(n52), 
	.B1(n35), 
	.B0(n9), 
	.A1N(n36), 
	.A0N(n35));
   AO22X1M U48 (.Y(n51), 
	.B1(n36), 
	.B0(N44), 
	.A1(counter_odd[1]), 
	.A0(n32));
   OAI2BB2X1M U49 (.Y(n50), 
	.B1(n37), 
	.B0(n9), 
	.A1N(n36), 
	.A0N(N45));
   AO22X1M U50 (.Y(n49), 
	.B1(n36), 
	.B0(N46), 
	.A1(counter_odd[3]), 
	.A0(n32));
   AO22X1M U51 (.Y(n48), 
	.B1(n36), 
	.B0(N47), 
	.A1(counter_odd[4]), 
	.A0(n32));
   AO22X1M U52 (.Y(n47), 
	.B1(n36), 
	.B0(N48), 
	.A1(counter_odd[5]), 
	.A0(n32));
   AO22X1M U53 (.Y(n46), 
	.B1(n36), 
	.B0(N49), 
	.A1(counter_odd[6]), 
	.A0(n32));
   AO22X1M U54 (.Y(n45), 
	.B1(n36), 
	.B0(N50), 
	.A1(counter_odd[7]), 
	.A0(n32));
   NOR3BX1M U55 (.Y(n36), 
	.C(n32), 
	.B(n33), 
	.AN(n30));
   CLKINVX1M U56 (.Y(n32), 
	.A(n9));
   CLKXOR2X2M U57 (.Y(n44), 
	.B(divided_clk_gen__Exclude_0_NET), 
	.A(n38));
   OAI22X1M U58 (.Y(n38), 
	.B1(n31), 
	.B0(n34), 
	.A1(n8), 
	.A0(n9));
   CLKINVX1M U59 (.Y(n31), 
	.A(n33));
   MXI2X1M U60 (.Y(n33), 
	.S0(odd_phase), 
	.B(n40), 
	.A(n39));
   CLKNAND2X2M U61 (.Y(n40), 
	.B(n42), 
	.A(n41));
   NOR4X1M U62 (.Y(n42), 
	.D(n63), 
	.C(n62), 
	.B(n43), 
	.A(counter_odd[7]));
   CLKXOR2X2M U63 (.Y(n63), 
	.B(counter_odd[2]), 
	.A(div_ratio[3]));
   CLKXOR2X2M U64 (.Y(n62), 
	.B(counter_odd[1]), 
	.A(div_ratio[2]));
   CLKXOR2X2M U65 (.Y(n43), 
	.B(counter_odd[0]), 
	.A(div_ratio[1]));
   NOR4X1M U66 (.Y(n41), 
	.D(n67), 
	.C(n66), 
	.B(n65), 
	.A(n64));
   CLKXOR2X2M U67 (.Y(n67), 
	.B(counter_odd[6]), 
	.A(div_ratio[7]));
   CLKXOR2X2M U68 (.Y(n66), 
	.B(counter_odd[5]), 
	.A(div_ratio[6]));
   CLKXOR2X2M U69 (.Y(n65), 
	.B(counter_odd[4]), 
	.A(div_ratio[5]));
   CLKXOR2X2M U70 (.Y(n64), 
	.B(counter_odd[3]), 
	.A(div_ratio[4]));
   NAND4X1M U71 (.Y(n39), 
	.D(n71), 
	.C(n70), 
	.B(n69), 
	.A(n68));
   NOR4X1M U72 (.Y(n71), 
	.D(n75), 
	.C(n74), 
	.B(n73), 
	.A(n72));
   CLKXOR2X2M U73 (.Y(n75), 
	.B(N22), 
	.A(counter_odd[6]));
   CLKXOR2X2M U74 (.Y(n74), 
	.B(N21), 
	.A(counter_odd[5]));
   CLKXOR2X2M U75 (.Y(n73), 
	.B(N20), 
	.A(counter_odd[4]));
   CLKXOR2X2M U76 (.Y(n72), 
	.B(N17), 
	.A(counter_odd[1]));
   NOR3X1M U77 (.Y(n70), 
	.C(N23), 
	.B(counter_odd[7]), 
	.A(n76));
   CLKXOR2X2M U78 (.Y(n76), 
	.B(N19), 
	.A(counter_odd[3]));
   CLKXOR2X2M U79 (.Y(n69), 
	.B(n37), 
	.A(N18));
   CLKINVX1M U80 (.Y(n37), 
	.A(counter_odd[2]));
   CLKXOR2X2M U81 (.Y(n68), 
	.B(n35), 
	.A(N16));
   CLKINVX1M U82 (.Y(n35), 
	.A(counter_odd[0]));
   CLKNAND2X2M U83 (.Y(n34), 
	.B(n30), 
	.A(div_ratio[0]));
   NAND4X1M U84 (.Y(n8), 
	.D(n80), 
	.C(n79), 
	.B(n78), 
	.A(n77));
   NOR4X1M U85 (.Y(n80), 
	.D(n84), 
	.C(n83), 
	.B(n82), 
	.A(n81));
   CLKXOR2X2M U86 (.Y(n84), 
	.B(N22), 
	.A(counter_even[6]));
   CLKXOR2X2M U87 (.Y(n83), 
	.B(N21), 
	.A(counter_even[5]));
   CLKXOR2X2M U88 (.Y(n82), 
	.B(N20), 
	.A(counter_even[4]));
   CLKXOR2X2M U89 (.Y(n81), 
	.B(N19), 
	.A(counter_even[3]));
   NOR3X1M U90 (.Y(n79), 
	.C(N23), 
	.B(counter_even[7]), 
	.A(n85));
   CLKXOR2X2M U91 (.Y(n85), 
	.B(N16), 
	.A(counter_even[0]));
   XNOR2X1M U92 (.Y(n78), 
	.B(counter_even[1]), 
	.A(N17));
   XNOR2X1M U93 (.Y(n77), 
	.B(counter_even[2]), 
	.A(N18));
   NAND2BX1M U94 (.Y(n9), 
	.B(n30), 
	.AN(div_ratio[0]));
   CLKMX2X2M U95 (.Y(div_clk), 
	.S0(n30), 
	.B(divided_clk_gen), 
	.A(UART_MUXED_CLK__L6_N0));
   OA21X1M U96 (.Y(n30), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n87), 
	.A0(n86));
   OR3X1M U97 (.Y(n87), 
	.C(div_ratio[1]), 
	.B(div_ratio[3]), 
	.A(div_ratio[2]));
   OR4X1M U98 (.Y(n86), 
	.D(div_ratio[7]), 
	.C(div_ratio[6]), 
	.B(div_ratio[5]), 
	.A(div_ratio[4]));
   CLK_DIV_0_DW01_inc_0 add_55 (.A({ counter_even[7],
		counter_even[6],
		counter_even[5],
		counter_even[4],
		counter_even[3],
		counter_even[2],
		counter_even[1],
		counter_even[0] }), 
	.SUM({ N84,
		N83,
		N82,
		N81,
		N80,
		N79,
		N78,
		N77 }));
   CLK_DIV_0_DW01_inc_1 r85 (.A({ counter_odd[7],
		counter_odd[6],
		counter_odd[5],
		counter_odd[4],
		counter_odd[3],
		counter_odd[2],
		counter_odd[1],
		counter_odd[0] }), 
	.SUM({ N50,
		N49,
		N48,
		N47,
		N46,
		N45,
		N44,
		FE_UNCONNECTED_0 }));
endmodule

module prescale_mux (
	prescale_sel, 
	prescale);
   input [1:0] prescale_sel;
   output [5:0] prescale;

   // Internal wires
   wire n2;
   wire n1;

   assign prescale[0] = 1'b0 ;
   assign prescale[1] = 1'b0 ;

   NOR2X2M U3 (.Y(prescale[3]), 
	.B(prescale_sel[1]), 
	.A(n1));
   NOR2X2M U4 (.Y(prescale[2]), 
	.B(n2), 
	.A(prescale_sel[0]));
   OR2X2M U5 (.Y(n2), 
	.B(prescale[3]), 
	.A(prescale[4]));
   NOR2X2M U6 (.Y(prescale[5]), 
	.B(n2), 
	.A(n1));
   AND2X2M U7 (.Y(prescale[4]), 
	.B(n1), 
	.A(prescale_sel[1]));
   INVX2M U8 (.Y(n1), 
	.A(prescale_sel[0]));
endmodule

module CLK_DIV_1_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   INVX2M U1 (.Y(SUM[0]), 
	.A(A[0]));
   CLKXOR2X2M U2 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
endmodule

module CLK_DIV_1_DW01_inc_1 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U2 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
endmodule

module CLK_DIV_test_1 (
	ref_clk, 
	RST, 
	clk_en, 
	div_ratio, 
	div_clk, 
	test_si, 
	test_so, 
	test_se, 
	UART_MUXED_CLK__L12_N1, 
	UART_MUXED_CLK__L1_N0, 
	UART_MUXED_CLK__L6_N0);
   input ref_clk;
   input RST;
   input clk_en;
   input [7:0] div_ratio;
   output div_clk;
   input test_si;
   output test_so;
   input test_se;
   input UART_MUXED_CLK__L12_N1;
   input UART_MUXED_CLK__L1_N0;
   input UART_MUXED_CLK__L6_N0;

   // Internal wires
   wire FE_PHN17_divided_clk_gen__Exclude_0_NET;
   wire divided_clk_gen__Exclude_0_NET;
   wire FE_UNCONNECTED_0;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire divided_clk_gen;
   wire odd_phase;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N44;
   wire N45;
   wire N46;
   wire N47;
   wire N48;
   wire N49;
   wire N50;
   wire N77;
   wire N78;
   wire N79;
   wire N80;
   wire N81;
   wire N82;
   wire N83;
   wire N84;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire [7:0] counter_odd;
   wire [7:0] counter_even;

   assign test_so = odd_phase ;

   DLY3X1M FE_PHC17_divided_clk_gen__Exclude_0_NET (.Y(FE_PHN17_divided_clk_gen__Exclude_0_NET), 
	.A(divided_clk_gen__Exclude_0_NET));
   BUFX8M divided_clk_gen__Exclude_0 (.Y(divided_clk_gen__Exclude_0_NET), 
	.A(divided_clk_gen));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFSQX2M divided_clk_gen_reg (.SN(RST), 
	.SI(counter_odd[7]), 
	.SE(test_se), 
	.Q(divided_clk_gen), 
	.D(n105), 
	.CK(UART_MUXED_CLK__L1_N0));
   SDFFRQX2M \counter_even_reg[7]  (.SI(counter_even[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[7]), 
	.D(n89), 
	.CK(ref_clk));
   SDFFRQX2M odd_phase_reg (.SI(FE_PHN17_divided_clk_gen__Exclude_0_NET), 
	.SE(test_se), 
	.RN(RST), 
	.Q(odd_phase), 
	.D(n96), 
	.CK(UART_MUXED_CLK__L12_N1));
   SDFFRQX2M \counter_odd_reg[7]  (.SI(counter_odd[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[7]), 
	.D(n104), 
	.CK(UART_MUXED_CLK__L12_N1));
   SDFFRQX2M \counter_even_reg[2]  (.SI(counter_even[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[2]), 
	.D(n91), 
	.CK(ref_clk));
   SDFFRQX2M \counter_even_reg[4]  (.SI(counter_even[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[4]), 
	.D(n93), 
	.CK(ref_clk));
   SDFFRQX2M \counter_even_reg[3]  (.SI(counter_even[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[3]), 
	.D(n92), 
	.CK(ref_clk));
   SDFFRQX2M \counter_odd_reg[0]  (.SI(counter_even[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[0]), 
	.D(n97), 
	.CK(UART_MUXED_CLK__L12_N1));
   SDFFRQX2M \counter_even_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[0]), 
	.D(n88), 
	.CK(ref_clk));
   SDFFRQX2M \counter_even_reg[1]  (.SI(counter_even[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[1]), 
	.D(n90), 
	.CK(ref_clk));
   SDFFRQX2M \counter_odd_reg[2]  (.SI(counter_odd[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[2]), 
	.D(n99), 
	.CK(UART_MUXED_CLK__L12_N1));
   SDFFRQX2M \counter_even_reg[6]  (.SI(counter_even[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[6]), 
	.D(n95), 
	.CK(ref_clk));
   SDFFRQX2M \counter_even_reg[5]  (.SI(counter_even[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_even[5]), 
	.D(n94), 
	.CK(ref_clk));
   SDFFRQX2M \counter_odd_reg[1]  (.SI(counter_odd[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[1]), 
	.D(n98), 
	.CK(UART_MUXED_CLK__L12_N1));
   SDFFRQX2M \counter_odd_reg[3]  (.SI(counter_odd[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[3]), 
	.D(n100), 
	.CK(UART_MUXED_CLK__L12_N1));
   SDFFRQX2M \counter_odd_reg[4]  (.SI(counter_odd[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[4]), 
	.D(n101), 
	.CK(UART_MUXED_CLK__L12_N1));
   SDFFRQX2M \counter_odd_reg[5]  (.SI(counter_odd[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[5]), 
	.D(n102), 
	.CK(UART_MUXED_CLK__L12_N1));
   SDFFRQX2M \counter_odd_reg[6]  (.SI(counter_odd[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter_odd[6]), 
	.D(n103), 
	.CK(UART_MUXED_CLK__L12_N1));
   INVX2M U8 (.Y(N16), 
	.A(div_ratio[1]));
   INVX2M U9 (.Y(n6), 
	.A(n34));
   NAND2BX1M U10 (.Y(n1), 
	.B(N16), 
	.AN(div_ratio[2]));
   OAI2BB1X1M U11 (.Y(N17), 
	.B0(n1), 
	.A1N(div_ratio[2]), 
	.A0N(div_ratio[1]));
   OR2X1M U25 (.Y(n2), 
	.B(div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U26 (.Y(N18), 
	.B0(n2), 
	.A1N(div_ratio[3]), 
	.A0N(n1));
   OR2X1M U27 (.Y(n3), 
	.B(LTIE_LTIELO_NET), 
	.A(n2));
   OAI2BB1X1M U28 (.Y(N19), 
	.B0(n3), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n2));
   OR2X1M U29 (.Y(n4), 
	.B(LTIE_LTIELO_NET), 
	.A(n3));
   OAI2BB1X1M U30 (.Y(N20), 
	.B0(n4), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n3));
   XNOR2X1M U31 (.Y(N21), 
	.B(n4), 
	.A(LTIE_LTIELO_NET));
   NOR3X1M U32 (.Y(N23), 
	.C(n4), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   OAI21X1M U33 (.Y(n5), 
	.B0(LTIE_LTIELO_NET), 
	.A1(n4), 
	.A0(LTIE_LTIELO_NET));
   NAND2BX1M U34 (.Y(N22), 
	.B(n5), 
	.AN(N23));
   AO22X1M U35 (.Y(n88), 
	.B1(n7), 
	.B0(N77), 
	.A1(n6), 
	.A0(counter_even[0]));
   AO22X1M U36 (.Y(n89), 
	.B1(n7), 
	.B0(N84), 
	.A1(counter_even[7]), 
	.A0(n6));
   AO22X1M U37 (.Y(n90), 
	.B1(n7), 
	.B0(N78), 
	.A1(n6), 
	.A0(counter_even[1]));
   AO22X1M U38 (.Y(n91), 
	.B1(n7), 
	.B0(N79), 
	.A1(n6), 
	.A0(counter_even[2]));
   AO22X1M U39 (.Y(n92), 
	.B1(n7), 
	.B0(N80), 
	.A1(n6), 
	.A0(counter_even[3]));
   AO22X1M U40 (.Y(n93), 
	.B1(n7), 
	.B0(N81), 
	.A1(n6), 
	.A0(counter_even[4]));
   AO22X1M U41 (.Y(n94), 
	.B1(n7), 
	.B0(N82), 
	.A1(n6), 
	.A0(counter_even[5]));
   AO22X1M U42 (.Y(n95), 
	.B1(n7), 
	.B0(N83), 
	.A1(n6), 
	.A0(counter_even[6]));
   NOR2BX1M U43 (.Y(n7), 
	.B(n9), 
	.AN(n8));
   MXI2X1M U44 (.Y(n96), 
	.S0(odd_phase), 
	.B(n29), 
	.A(n28));
   AOI21X1M U45 (.Y(n29), 
	.B0(n32), 
	.A1(n31), 
	.A0(n30));
   CLKNAND2X2M U46 (.Y(n28), 
	.B(n33), 
	.A(n6));
   OAI2BB2X1M U47 (.Y(n97), 
	.B1(n35), 
	.B0(n9), 
	.A1N(n36), 
	.A0N(n35));
   AO22X1M U48 (.Y(n98), 
	.B1(n36), 
	.B0(N44), 
	.A1(counter_odd[1]), 
	.A0(n32));
   OAI2BB2X1M U49 (.Y(n99), 
	.B1(n37), 
	.B0(n9), 
	.A1N(n36), 
	.A0N(N45));
   AO22X1M U50 (.Y(n100), 
	.B1(n36), 
	.B0(N46), 
	.A1(counter_odd[3]), 
	.A0(n32));
   AO22X1M U51 (.Y(n101), 
	.B1(n36), 
	.B0(N47), 
	.A1(counter_odd[4]), 
	.A0(n32));
   AO22X1M U52 (.Y(n102), 
	.B1(n36), 
	.B0(N48), 
	.A1(counter_odd[5]), 
	.A0(n32));
   AO22X1M U53 (.Y(n103), 
	.B1(n36), 
	.B0(N49), 
	.A1(counter_odd[6]), 
	.A0(n32));
   AO22X1M U54 (.Y(n104), 
	.B1(n36), 
	.B0(N50), 
	.A1(counter_odd[7]), 
	.A0(n32));
   NOR3BX1M U55 (.Y(n36), 
	.C(n32), 
	.B(n33), 
	.AN(n30));
   CLKINVX1M U56 (.Y(n32), 
	.A(n9));
   CLKXOR2X2M U57 (.Y(n105), 
	.B(divided_clk_gen__Exclude_0_NET), 
	.A(n38));
   OAI22X1M U58 (.Y(n38), 
	.B1(n31), 
	.B0(n34), 
	.A1(n8), 
	.A0(n9));
   CLKINVX1M U59 (.Y(n31), 
	.A(n33));
   MXI2X1M U60 (.Y(n33), 
	.S0(odd_phase), 
	.B(n40), 
	.A(n39));
   CLKNAND2X2M U61 (.Y(n40), 
	.B(n42), 
	.A(n41));
   NOR4X1M U62 (.Y(n42), 
	.D(n63), 
	.C(n62), 
	.B(n43), 
	.A(counter_odd[7]));
   CLKXOR2X2M U63 (.Y(n63), 
	.B(counter_odd[2]), 
	.A(div_ratio[3]));
   CLKXOR2X2M U64 (.Y(n62), 
	.B(counter_odd[1]), 
	.A(div_ratio[2]));
   CLKXOR2X2M U65 (.Y(n43), 
	.B(counter_odd[0]), 
	.A(div_ratio[1]));
   NOR4X1M U66 (.Y(n41), 
	.D(n67), 
	.C(n66), 
	.B(n65), 
	.A(n64));
   CLKXOR2X2M U67 (.Y(n67), 
	.B(counter_odd[6]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U68 (.Y(n66), 
	.B(counter_odd[5]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U69 (.Y(n65), 
	.B(counter_odd[4]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U70 (.Y(n64), 
	.B(counter_odd[3]), 
	.A(LTIE_LTIELO_NET));
   NAND4X1M U71 (.Y(n39), 
	.D(n71), 
	.C(n70), 
	.B(n69), 
	.A(n68));
   NOR4X1M U72 (.Y(n71), 
	.D(n75), 
	.C(n74), 
	.B(n73), 
	.A(n72));
   CLKXOR2X2M U73 (.Y(n75), 
	.B(N22), 
	.A(counter_odd[6]));
   CLKXOR2X2M U74 (.Y(n74), 
	.B(N21), 
	.A(counter_odd[5]));
   CLKXOR2X2M U75 (.Y(n73), 
	.B(N20), 
	.A(counter_odd[4]));
   CLKXOR2X2M U76 (.Y(n72), 
	.B(N17), 
	.A(counter_odd[1]));
   NOR3X1M U77 (.Y(n70), 
	.C(N23), 
	.B(counter_odd[7]), 
	.A(n76));
   CLKXOR2X2M U78 (.Y(n76), 
	.B(N19), 
	.A(counter_odd[3]));
   CLKXOR2X2M U79 (.Y(n69), 
	.B(n37), 
	.A(N18));
   CLKINVX1M U80 (.Y(n37), 
	.A(counter_odd[2]));
   CLKXOR2X2M U81 (.Y(n68), 
	.B(n35), 
	.A(N16));
   CLKINVX1M U82 (.Y(n35), 
	.A(counter_odd[0]));
   CLKNAND2X2M U83 (.Y(n34), 
	.B(n30), 
	.A(div_ratio[0]));
   NAND4X1M U84 (.Y(n8), 
	.D(n80), 
	.C(n79), 
	.B(n78), 
	.A(n77));
   NOR4X1M U85 (.Y(n80), 
	.D(n84), 
	.C(n83), 
	.B(n82), 
	.A(n81));
   CLKXOR2X2M U86 (.Y(n84), 
	.B(N22), 
	.A(counter_even[6]));
   CLKXOR2X2M U87 (.Y(n83), 
	.B(N21), 
	.A(counter_even[5]));
   CLKXOR2X2M U88 (.Y(n82), 
	.B(N20), 
	.A(counter_even[4]));
   CLKXOR2X2M U89 (.Y(n81), 
	.B(N19), 
	.A(counter_even[3]));
   NOR3X1M U90 (.Y(n79), 
	.C(N23), 
	.B(counter_even[7]), 
	.A(n85));
   CLKXOR2X2M U91 (.Y(n85), 
	.B(N16), 
	.A(counter_even[0]));
   XNOR2X1M U92 (.Y(n78), 
	.B(counter_even[1]), 
	.A(N17));
   XNOR2X1M U93 (.Y(n77), 
	.B(counter_even[2]), 
	.A(N18));
   NAND2BX1M U94 (.Y(n9), 
	.B(n30), 
	.AN(div_ratio[0]));
   CLKMX2X2M U95 (.Y(div_clk), 
	.S0(n30), 
	.B(divided_clk_gen), 
	.A(UART_MUXED_CLK__L6_N0));
   OA21X1M U96 (.Y(n30), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n87), 
	.A0(n86));
   OR3X1M U97 (.Y(n87), 
	.C(div_ratio[1]), 
	.B(div_ratio[3]), 
	.A(div_ratio[2]));
   OR4X1M U98 (.Y(n86), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   CLK_DIV_1_DW01_inc_0 add_55 (.A({ counter_even[7],
		counter_even[6],
		counter_even[5],
		counter_even[4],
		counter_even[3],
		counter_even[2],
		counter_even[1],
		counter_even[0] }), 
	.SUM({ N84,
		N83,
		N82,
		N81,
		N80,
		N79,
		N78,
		N77 }));
   CLK_DIV_1_DW01_inc_1 r85 (.A({ counter_odd[7],
		counter_odd[6],
		counter_odd[5],
		counter_odd[4],
		counter_odd[3],
		counter_odd[2],
		counter_odd[1],
		counter_odd[0] }), 
	.SUM({ N50,
		N49,
		N48,
		N47,
		N46,
		N45,
		N44,
		FE_UNCONNECTED_0 }));
endmodule

module Reg_File_W8_D16_addr_W4_test_1 (
	WrData, 
	Address, 
	WrEn, 
	RdEn, 
	CLK, 
	RST, 
	RdData, 
	RdData_valid, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si3, 
	test_si2, 
	test_si1, 
	test_so3, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_muxed_rst_sync_1, 
	FE_OFN3_muxed_rst_sync_1, 
	REF_MUXED_CLK__L9_N1, 
	REF_MUXED_CLK__L9_N13, 
	REF_MUXED_CLK__L9_N2, 
	REF_MUXED_CLK__L9_N3, 
	REF_MUXED_CLK__L9_N4, 
	REF_MUXED_CLK__L9_N5, 
	REF_MUXED_CLK__L9_N6, 
	REF_MUXED_CLK__L9_N7);
   input [7:0] WrData;
   input [3:0] Address;
   input WrEn;
   input RdEn;
   input CLK;
   input RST;
   output [7:0] RdData;
   output RdData_valid;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si3;
   input test_si2;
   input test_si1;
   output test_so3;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_muxed_rst_sync_1;
   input FE_OFN3_muxed_rst_sync_1;
   input REF_MUXED_CLK__L9_N1;
   input REF_MUXED_CLK__L9_N13;
   input REF_MUXED_CLK__L9_N2;
   input REF_MUXED_CLK__L9_N3;
   input REF_MUXED_CLK__L9_N4;
   input REF_MUXED_CLK__L9_N5;
   input REF_MUXED_CLK__L9_N6;
   input REF_MUXED_CLK__L9_N7;

   // Internal wires
   wire FE_PHN9_test_si2;
   wire FE_PHN8_test_si2;
   wire FE_PHN7_test_si2;
   wire FE_PHN6_test_si3;
   wire FE_PHN5_test_si3;
   wire FE_OFN27_B_top_4_;
   wire FE_OFN26_B_top_1_;
   wire FE_OFN25_B_top_5_;
   wire FE_OFN24_B_top_3_;
   wire FE_OFN23_A_top_5_;
   wire FE_OFN22_B_top_2_;
   wire FE_OFN21_A_top_4_;
   wire FE_OFN20_A_top_3_;
   wire FE_OFN19_A_top_2_;
   wire FE_OFN18_B_top_0_;
   wire FE_OFN17_B_top_6_;
   wire FE_OFN16_A_top_1_;
   wire FE_OFN15_A_top_0_;
   wire FE_OFN14_A_top_6_;
   wire FE_OFN13_B_top_7_;
   wire FE_OFN12_A_top_7_;
   wire FE_OFN1_muxed_rst_sync_1;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire \u_Reg_File[4][7] ;
   wire \u_Reg_File[4][6] ;
   wire \u_Reg_File[4][5] ;
   wire \u_Reg_File[4][4] ;
   wire \u_Reg_File[4][3] ;
   wire \u_Reg_File[4][2] ;
   wire \u_Reg_File[4][1] ;
   wire \u_Reg_File[4][0] ;
   wire \u_Reg_File[5][7] ;
   wire \u_Reg_File[5][6] ;
   wire \u_Reg_File[5][5] ;
   wire \u_Reg_File[5][4] ;
   wire \u_Reg_File[5][3] ;
   wire \u_Reg_File[5][2] ;
   wire \u_Reg_File[5][1] ;
   wire \u_Reg_File[5][0] ;
   wire \u_Reg_File[6][7] ;
   wire \u_Reg_File[6][6] ;
   wire \u_Reg_File[6][5] ;
   wire \u_Reg_File[6][4] ;
   wire \u_Reg_File[6][3] ;
   wire \u_Reg_File[6][2] ;
   wire \u_Reg_File[6][1] ;
   wire \u_Reg_File[6][0] ;
   wire \u_Reg_File[7][7] ;
   wire \u_Reg_File[7][6] ;
   wire \u_Reg_File[7][5] ;
   wire \u_Reg_File[7][4] ;
   wire \u_Reg_File[7][3] ;
   wire \u_Reg_File[7][2] ;
   wire \u_Reg_File[7][1] ;
   wire \u_Reg_File[7][0] ;
   wire \u_Reg_File[8][7] ;
   wire \u_Reg_File[8][6] ;
   wire \u_Reg_File[8][5] ;
   wire \u_Reg_File[8][4] ;
   wire \u_Reg_File[8][3] ;
   wire \u_Reg_File[8][2] ;
   wire \u_Reg_File[8][1] ;
   wire \u_Reg_File[8][0] ;
   wire \u_Reg_File[9][7] ;
   wire \u_Reg_File[9][6] ;
   wire \u_Reg_File[9][5] ;
   wire \u_Reg_File[9][4] ;
   wire \u_Reg_File[9][3] ;
   wire \u_Reg_File[9][2] ;
   wire \u_Reg_File[9][1] ;
   wire \u_Reg_File[9][0] ;
   wire \u_Reg_File[10][7] ;
   wire \u_Reg_File[10][6] ;
   wire \u_Reg_File[10][5] ;
   wire \u_Reg_File[10][4] ;
   wire \u_Reg_File[10][3] ;
   wire \u_Reg_File[10][2] ;
   wire \u_Reg_File[10][1] ;
   wire \u_Reg_File[10][0] ;
   wire \u_Reg_File[11][7] ;
   wire \u_Reg_File[11][6] ;
   wire \u_Reg_File[11][5] ;
   wire \u_Reg_File[11][4] ;
   wire \u_Reg_File[11][3] ;
   wire \u_Reg_File[11][2] ;
   wire \u_Reg_File[11][1] ;
   wire \u_Reg_File[11][0] ;
   wire \u_Reg_File[12][7] ;
   wire \u_Reg_File[12][6] ;
   wire \u_Reg_File[12][5] ;
   wire \u_Reg_File[12][4] ;
   wire \u_Reg_File[12][3] ;
   wire \u_Reg_File[12][2] ;
   wire \u_Reg_File[12][1] ;
   wire \u_Reg_File[12][0] ;
   wire \u_Reg_File[13][7] ;
   wire \u_Reg_File[13][6] ;
   wire \u_Reg_File[13][5] ;
   wire \u_Reg_File[13][4] ;
   wire \u_Reg_File[13][3] ;
   wire \u_Reg_File[13][2] ;
   wire \u_Reg_File[13][1] ;
   wire \u_Reg_File[13][0] ;
   wire \u_Reg_File[14][7] ;
   wire \u_Reg_File[14][6] ;
   wire \u_Reg_File[14][5] ;
   wire \u_Reg_File[14][4] ;
   wire \u_Reg_File[14][3] ;
   wire \u_Reg_File[14][2] ;
   wire \u_Reg_File[14][1] ;
   wire \u_Reg_File[14][0] ;
   wire \u_Reg_File[15][7] ;
   wire \u_Reg_File[15][6] ;
   wire \u_Reg_File[15][5] ;
   wire \u_Reg_File[15][4] ;
   wire \u_Reg_File[15][3] ;
   wire \u_Reg_File[15][2] ;
   wire \u_Reg_File[15][1] ;
   wire \u_Reg_File[15][0] ;
   wire N68;
   wire N69;
   wire N70;
   wire N71;
   wire N72;
   wire N73;
   wire N74;
   wire N75;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n315;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n393;
   wire n394;
   wire n395;
   wire n396;
   wire n397;
   wire n398;
   wire n399;
   wire n400;
   wire n401;
   wire n402;
   wire n403;
   wire n404;
   wire n405;
   wire n406;
   wire n407;
   wire n408;
   wire n409;
   wire n410;
   wire n411;
   wire n412;
   wire n413;
   wire n432;
   wire n433;
   wire n434;
   wire n435;
   wire n436;
   wire n437;
   wire n438;
   wire n439;
   wire n440;
   wire n442;
   wire n447;
   wire n448;
   wire n449;
   wire n450;

   assign N13 = Address[0] ;
   assign N14 = Address[1] ;
   assign N15 = Address[2] ;
   assign N16 = Address[3] ;
   assign test_so1 = \u_Reg_File[4][1]  ;
   assign test_so2 = \u_Reg_File[14][4]  ;
   assign test_so3 = \u_Reg_File[15][7]  ;

   DLY4X1M FE_PHC9_test_si2 (.Y(FE_PHN9_test_si2), 
	.A(FE_PHN8_test_si2));
   DLY4X1M FE_PHC8_test_si2 (.Y(FE_PHN8_test_si2), 
	.A(FE_PHN7_test_si2));
   DLY4X1M FE_PHC7_test_si2 (.Y(FE_PHN7_test_si2), 
	.A(test_si2));
   DLY4X1M FE_PHC6_test_si3 (.Y(FE_PHN6_test_si3), 
	.A(FE_PHN5_test_si3));
   DLY4X1M FE_PHC5_test_si3 (.Y(FE_PHN5_test_si3), 
	.A(test_si3));
   BUFX10M FE_OFC27_B_top_4_ (.Y(REG1[4]), 
	.A(FE_OFN27_B_top_4_));
   BUFX6M FE_OFC26_B_top_1_ (.Y(REG1[1]), 
	.A(FE_OFN26_B_top_1_));
   BUFX10M FE_OFC25_B_top_5_ (.Y(REG1[5]), 
	.A(FE_OFN25_B_top_5_));
   BUFX10M FE_OFC24_B_top_3_ (.Y(REG1[3]), 
	.A(FE_OFN24_B_top_3_));
   BUFX10M FE_OFC23_A_top_5_ (.Y(REG0[5]), 
	.A(FE_OFN23_A_top_5_));
   BUFX5M FE_OFC22_B_top_2_ (.Y(REG1[2]), 
	.A(FE_OFN22_B_top_2_));
   BUFX10M FE_OFC21_A_top_4_ (.Y(REG0[4]), 
	.A(FE_OFN21_A_top_4_));
   BUFX10M FE_OFC20_A_top_3_ (.Y(REG0[3]), 
	.A(FE_OFN20_A_top_3_));
   BUFX10M FE_OFC19_A_top_2_ (.Y(REG0[2]), 
	.A(FE_OFN19_A_top_2_));
   BUFX5M FE_OFC18_B_top_0_ (.Y(REG1[0]), 
	.A(FE_OFN18_B_top_0_));
   BUFX10M FE_OFC17_B_top_6_ (.Y(REG1[6]), 
	.A(FE_OFN17_B_top_6_));
   BUFX10M FE_OFC16_A_top_1_ (.Y(REG0[1]), 
	.A(FE_OFN16_A_top_1_));
   BUFX5M FE_OFC15_A_top_0_ (.Y(REG0[0]), 
	.A(FE_OFN15_A_top_0_));
   BUFX10M FE_OFC14_A_top_6_ (.Y(REG0[6]), 
	.A(FE_OFN14_A_top_6_));
   CLKBUFX32M FE_OFC13_B_top_7_ (.Y(REG1[7]), 
	.A(FE_OFN13_B_top_7_));
   BUFX10M FE_OFC12_A_top_7_ (.Y(REG0[7]), 
	.A(FE_OFN12_A_top_7_));
   BUFX8M FE_OFC1_muxed_rst_sync_1 (.Y(FE_OFN1_muxed_rst_sync_1), 
	.A(FE_OFN0_muxed_rst_sync_1));
   SDFFRQX2M \u_Reg_File_reg[5][7]  (.SI(\u_Reg_File[5][6] ), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[5][7] ), 
	.D(n266), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[5][6]  (.SI(\u_Reg_File[5][5] ), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[5][6] ), 
	.D(n265), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[5][5]  (.SI(\u_Reg_File[5][4] ), 
	.SE(n447), 
	.RN(RST), 
	.Q(\u_Reg_File[5][5] ), 
	.D(n264), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[5][4]  (.SI(\u_Reg_File[5][3] ), 
	.SE(n450), 
	.RN(RST), 
	.Q(\u_Reg_File[5][4] ), 
	.D(n263), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[5][3]  (.SI(\u_Reg_File[5][2] ), 
	.SE(n449), 
	.RN(RST), 
	.Q(\u_Reg_File[5][3] ), 
	.D(n262), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[5][2]  (.SI(\u_Reg_File[5][1] ), 
	.SE(n448), 
	.RN(RST), 
	.Q(\u_Reg_File[5][2] ), 
	.D(n261), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[5][1]  (.SI(\u_Reg_File[5][0] ), 
	.SE(n447), 
	.RN(RST), 
	.Q(\u_Reg_File[5][1] ), 
	.D(n260), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[5][0]  (.SI(\u_Reg_File[4][7] ), 
	.SE(n450), 
	.RN(RST), 
	.Q(\u_Reg_File[5][0] ), 
	.D(n259), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[7][7]  (.SI(\u_Reg_File[7][6] ), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[7][7] ), 
	.D(n250), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[7][6]  (.SI(\u_Reg_File[7][5] ), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[7][6] ), 
	.D(n249), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[7][5]  (.SI(\u_Reg_File[7][4] ), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[7][5] ), 
	.D(n248), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[7][4]  (.SI(\u_Reg_File[7][3] ), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[7][4] ), 
	.D(n247), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[7][3]  (.SI(\u_Reg_File[7][2] ), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[7][3] ), 
	.D(n246), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[7][2]  (.SI(\u_Reg_File[7][1] ), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[7][2] ), 
	.D(n245), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[7][1]  (.SI(\u_Reg_File[7][0] ), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[7][1] ), 
	.D(n244), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[7][0]  (.SI(\u_Reg_File[6][7] ), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[7][0] ), 
	.D(n243), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[9][7]  (.SI(\u_Reg_File[9][6] ), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[9][7] ), 
	.D(n234), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRQX2M \u_Reg_File_reg[9][6]  (.SI(\u_Reg_File[9][5] ), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[9][6] ), 
	.D(n233), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRQX2M \u_Reg_File_reg[9][5]  (.SI(\u_Reg_File[9][4] ), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[9][5] ), 
	.D(n232), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[9][4]  (.SI(\u_Reg_File[9][3] ), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[9][4] ), 
	.D(n231), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[9][3]  (.SI(\u_Reg_File[9][2] ), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[9][3] ), 
	.D(n230), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[9][2]  (.SI(\u_Reg_File[9][1] ), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[9][2] ), 
	.D(n229), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[9][1]  (.SI(\u_Reg_File[9][0] ), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[9][1] ), 
	.D(n228), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[9][0]  (.SI(\u_Reg_File[8][7] ), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[9][0] ), 
	.D(n227), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[11][7]  (.SI(\u_Reg_File[11][6] ), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[11][7] ), 
	.D(n218), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRQX2M \u_Reg_File_reg[11][6]  (.SI(\u_Reg_File[11][5] ), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[11][6] ), 
	.D(n217), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRQX2M \u_Reg_File_reg[11][5]  (.SI(\u_Reg_File[11][4] ), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[11][5] ), 
	.D(n216), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRQX2M \u_Reg_File_reg[11][4]  (.SI(\u_Reg_File[11][3] ), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[11][4] ), 
	.D(n215), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[11][3]  (.SI(\u_Reg_File[11][2] ), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[11][3] ), 
	.D(n214), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[11][2]  (.SI(\u_Reg_File[11][1] ), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[11][2] ), 
	.D(n213), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRQX2M \u_Reg_File_reg[11][1]  (.SI(\u_Reg_File[11][0] ), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[11][1] ), 
	.D(n212), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRQX2M \u_Reg_File_reg[11][0]  (.SI(\u_Reg_File[10][7] ), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[11][0] ), 
	.D(n211), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRQX2M \u_Reg_File_reg[13][7]  (.SI(\u_Reg_File[13][6] ), 
	.SE(n449), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[13][7] ), 
	.D(n202), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \u_Reg_File_reg[13][6]  (.SI(\u_Reg_File[13][5] ), 
	.SE(n448), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[13][6] ), 
	.D(n201), 
	.CK(REF_MUXED_CLK__L9_N4));
   SDFFRQX2M \u_Reg_File_reg[13][5]  (.SI(\u_Reg_File[13][4] ), 
	.SE(n447), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[13][5] ), 
	.D(n200), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRQX2M \u_Reg_File_reg[13][4]  (.SI(\u_Reg_File[13][3] ), 
	.SE(n450), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[13][4] ), 
	.D(n199), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRQX2M \u_Reg_File_reg[13][3]  (.SI(\u_Reg_File[13][2] ), 
	.SE(n449), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[13][3] ), 
	.D(n198), 
	.CK(REF_MUXED_CLK__L9_N4));
   SDFFRQX2M \u_Reg_File_reg[13][2]  (.SI(\u_Reg_File[13][1] ), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[13][2] ), 
	.D(n197), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \u_Reg_File_reg[13][1]  (.SI(\u_Reg_File[13][0] ), 
	.SE(n447), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[13][1] ), 
	.D(n196), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[13][0]  (.SI(\u_Reg_File[12][7] ), 
	.SE(n450), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[13][0] ), 
	.D(n195), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \u_Reg_File_reg[15][7]  (.SI(\u_Reg_File[15][6] ), 
	.SE(n449), 
	.RN(RST), 
	.Q(\u_Reg_File[15][7] ), 
	.D(n186), 
	.CK(REF_MUXED_CLK__L9_N3));
   SDFFRQX2M \u_Reg_File_reg[15][6]  (.SI(\u_Reg_File[15][5] ), 
	.SE(n448), 
	.RN(RST), 
	.Q(\u_Reg_File[15][6] ), 
	.D(n185), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \u_Reg_File_reg[15][5]  (.SI(\u_Reg_File[15][4] ), 
	.SE(n447), 
	.RN(RST), 
	.Q(\u_Reg_File[15][5] ), 
	.D(n184), 
	.CK(REF_MUXED_CLK__L9_N3));
   SDFFRQX2M \u_Reg_File_reg[15][4]  (.SI(\u_Reg_File[15][3] ), 
	.SE(n450), 
	.RN(RST), 
	.Q(\u_Reg_File[15][4] ), 
	.D(n183), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[15][3]  (.SI(\u_Reg_File[15][2] ), 
	.SE(n449), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[15][3] ), 
	.D(n182), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \u_Reg_File_reg[15][2]  (.SI(\u_Reg_File[15][1] ), 
	.SE(n448), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[15][2] ), 
	.D(n181), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \u_Reg_File_reg[15][1]  (.SI(\u_Reg_File[15][0] ), 
	.SE(n447), 
	.RN(RST), 
	.Q(\u_Reg_File[15][1] ), 
	.D(n180), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[15][0]  (.SI(\u_Reg_File[14][7] ), 
	.SE(n450), 
	.RN(RST), 
	.Q(\u_Reg_File[15][0] ), 
	.D(n179), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[2][4]  (.SI(REG2[3]), 
	.SE(n449), 
	.RN(RST), 
	.Q(REG2[4]), 
	.D(n287), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[2][3]  (.SI(REG2[2]), 
	.SE(n448), 
	.RN(RST), 
	.Q(REG2[3]), 
	.D(n286), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[2][2]  (.SI(REG2[1]), 
	.SE(n447), 
	.RN(RST), 
	.Q(REG2[2]), 
	.D(n285), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[4][7]  (.SI(\u_Reg_File[4][6] ), 
	.SE(n450), 
	.RN(RST), 
	.Q(\u_Reg_File[4][7] ), 
	.D(n274), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[4][6]  (.SI(\u_Reg_File[4][5] ), 
	.SE(n449), 
	.RN(RST), 
	.Q(\u_Reg_File[4][6] ), 
	.D(n273), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[4][5]  (.SI(\u_Reg_File[4][4] ), 
	.SE(n448), 
	.RN(RST), 
	.Q(\u_Reg_File[4][5] ), 
	.D(n272), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[4][4]  (.SI(\u_Reg_File[4][3] ), 
	.SE(n447), 
	.RN(RST), 
	.Q(\u_Reg_File[4][4] ), 
	.D(n271), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[4][3]  (.SI(\u_Reg_File[4][2] ), 
	.SE(n450), 
	.RN(RST), 
	.Q(\u_Reg_File[4][3] ), 
	.D(n270), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[4][2]  (.SI(FE_PHN9_test_si2), 
	.SE(n449), 
	.RN(RST), 
	.Q(\u_Reg_File[4][2] ), 
	.D(n269), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[4][1]  (.SI(\u_Reg_File[4][0] ), 
	.SE(n448), 
	.RN(RST), 
	.Q(\u_Reg_File[4][1] ), 
	.D(n268), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[4][0]  (.SI(REG3[7]), 
	.SE(n447), 
	.RN(RST), 
	.Q(\u_Reg_File[4][0] ), 
	.D(n267), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[6][7]  (.SI(\u_Reg_File[6][6] ), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[6][7] ), 
	.D(n258), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[6][6]  (.SI(\u_Reg_File[6][5] ), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[6][6] ), 
	.D(n257), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[6][5]  (.SI(\u_Reg_File[6][4] ), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[6][5] ), 
	.D(n256), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[6][4]  (.SI(\u_Reg_File[6][3] ), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[6][4] ), 
	.D(n255), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[6][3]  (.SI(\u_Reg_File[6][2] ), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[6][3] ), 
	.D(n254), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[6][2]  (.SI(\u_Reg_File[6][1] ), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[6][2] ), 
	.D(n253), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[6][1]  (.SI(\u_Reg_File[6][0] ), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[6][1] ), 
	.D(n252), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[6][0]  (.SI(\u_Reg_File[5][7] ), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[6][0] ), 
	.D(n251), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[8][7]  (.SI(\u_Reg_File[8][6] ), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[8][7] ), 
	.D(n242), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[8][6]  (.SI(\u_Reg_File[8][5] ), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[8][6] ), 
	.D(n241), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[8][5]  (.SI(\u_Reg_File[8][4] ), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[8][5] ), 
	.D(n240), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[8][4]  (.SI(\u_Reg_File[8][3] ), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[8][4] ), 
	.D(n239), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[8][3]  (.SI(\u_Reg_File[8][2] ), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[8][3] ), 
	.D(n238), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[8][2]  (.SI(\u_Reg_File[8][1] ), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[8][2] ), 
	.D(n237), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[8][1]  (.SI(\u_Reg_File[8][0] ), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[8][1] ), 
	.D(n236), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[8][0]  (.SI(\u_Reg_File[7][7] ), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[8][0] ), 
	.D(n235), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRQX2M \u_Reg_File_reg[10][7]  (.SI(\u_Reg_File[10][6] ), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[10][7] ), 
	.D(n226), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[10][6]  (.SI(\u_Reg_File[10][5] ), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[10][6] ), 
	.D(n225), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRQX2M \u_Reg_File_reg[10][5]  (.SI(\u_Reg_File[10][4] ), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[10][5] ), 
	.D(n224), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRQX2M \u_Reg_File_reg[10][4]  (.SI(\u_Reg_File[10][3] ), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[10][4] ), 
	.D(n223), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRQX2M \u_Reg_File_reg[10][3]  (.SI(\u_Reg_File[10][2] ), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[10][3] ), 
	.D(n222), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[10][2]  (.SI(\u_Reg_File[10][1] ), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[10][2] ), 
	.D(n221), 
	.CK(REF_MUXED_CLK__L9_N6));
   SDFFRQX2M \u_Reg_File_reg[10][1]  (.SI(\u_Reg_File[10][0] ), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[10][1] ), 
	.D(n220), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRQX2M \u_Reg_File_reg[10][0]  (.SI(\u_Reg_File[9][7] ), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[10][0] ), 
	.D(n219), 
	.CK(REF_MUXED_CLK__L9_N5));
   SDFFRQX2M \u_Reg_File_reg[12][7]  (.SI(\u_Reg_File[12][6] ), 
	.SE(n450), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[12][7] ), 
	.D(n210), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \u_Reg_File_reg[12][6]  (.SI(\u_Reg_File[12][5] ), 
	.SE(n449), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[12][6] ), 
	.D(n209), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \u_Reg_File_reg[12][5]  (.SI(\u_Reg_File[12][4] ), 
	.SE(n448), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[12][5] ), 
	.D(n208), 
	.CK(REF_MUXED_CLK__L9_N4));
   SDFFRQX2M \u_Reg_File_reg[12][4]  (.SI(\u_Reg_File[12][3] ), 
	.SE(n447), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[12][4] ), 
	.D(n207), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \u_Reg_File_reg[12][3]  (.SI(\u_Reg_File[12][2] ), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[12][3] ), 
	.D(n206), 
	.CK(REF_MUXED_CLK__L9_N4));
   SDFFRQX2M \u_Reg_File_reg[12][2]  (.SI(\u_Reg_File[12][1] ), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[12][2] ), 
	.D(n205), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[12][1]  (.SI(\u_Reg_File[12][0] ), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[12][1] ), 
	.D(n204), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[12][0]  (.SI(\u_Reg_File[11][7] ), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(\u_Reg_File[12][0] ), 
	.D(n203), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[14][7]  (.SI(\u_Reg_File[14][6] ), 
	.SE(n450), 
	.RN(RST), 
	.Q(\u_Reg_File[14][7] ), 
	.D(n194), 
	.CK(REF_MUXED_CLK__L9_N3));
   SDFFRQX2M \u_Reg_File_reg[14][6]  (.SI(\u_Reg_File[14][5] ), 
	.SE(n449), 
	.RN(RST), 
	.Q(\u_Reg_File[14][6] ), 
	.D(n193), 
	.CK(REF_MUXED_CLK__L9_N3));
   SDFFRQX2M \u_Reg_File_reg[14][5]  (.SI(FE_PHN6_test_si3), 
	.SE(n448), 
	.RN(RST), 
	.Q(\u_Reg_File[14][5] ), 
	.D(n192), 
	.CK(REF_MUXED_CLK__L9_N3));
   SDFFRQX2M \u_Reg_File_reg[14][4]  (.SI(\u_Reg_File[14][3] ), 
	.SE(n447), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[14][4] ), 
	.D(n191), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[14][3]  (.SI(\u_Reg_File[14][2] ), 
	.SE(n450), 
	.RN(RST), 
	.Q(\u_Reg_File[14][3] ), 
	.D(n190), 
	.CK(REF_MUXED_CLK__L9_N3));
   SDFFRQX2M \u_Reg_File_reg[14][2]  (.SI(\u_Reg_File[14][1] ), 
	.SE(n449), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[14][2] ), 
	.D(n189), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \u_Reg_File_reg[14][1]  (.SI(\u_Reg_File[14][0] ), 
	.SE(n448), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[14][1] ), 
	.D(n188), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \u_Reg_File_reg[14][0]  (.SI(\u_Reg_File[13][7] ), 
	.SE(n447), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(\u_Reg_File[14][0] ), 
	.D(n187), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \u_Reg_File_reg[3][0]  (.SI(REG2[7]), 
	.SE(n450), 
	.RN(RST), 
	.Q(REG3[0]), 
	.D(n275), 
	.CK(REF_MUXED_CLK__L9_N3));
   SDFFRQX2M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(n449), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(RdData[7]), 
	.D(n314), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(n448), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(RdData[6]), 
	.D(n313), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRQX2M \RdData_reg[5]  (.SI(RdData[4]), 
	.SE(n447), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(RdData[5]), 
	.D(n312), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRQX2M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(n450), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(RdData[4]), 
	.D(n311), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRQX2M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(n449), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(RdData[3]), 
	.D(n310), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRQX2M \RdData_reg[2]  (.SI(RdData[1]), 
	.SE(n448), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(RdData[2]), 
	.D(n309), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRQX2M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(n447), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(RdData[1]), 
	.D(n308), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRQX2M \RdData_reg[0]  (.SI(test_si1), 
	.SE(n450), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(RdData[0]), 
	.D(n307), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRQX2M \u_Reg_File_reg[2][1]  (.SI(REG2[0]), 
	.SE(n449), 
	.RN(RST), 
	.Q(REG2[1]), 
	.D(n284), 
	.CK(REF_MUXED_CLK__L9_N3));
   SDFFRQX2M RdData_valid_reg (.SI(RdData[7]), 
	.SE(n448), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(RdData_valid), 
	.D(n315), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFSQX2M \u_Reg_File_reg[2][0]  (.SN(FE_OFN0_muxed_rst_sync_1), 
	.SI(REG1[7]), 
	.SE(test_se), 
	.Q(REG2[0]), 
	.D(n283), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRHQX4M \u_Reg_File_reg[1][4]  (.SI(REG1[3]), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(FE_OFN27_B_top_4_), 
	.D(n295), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRHQX4M \u_Reg_File_reg[1][1]  (.SI(REG1[0]), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(FE_OFN26_B_top_1_), 
	.D(n292), 
	.CK(REF_MUXED_CLK__L9_N4));
   SDFFRHQX4M \u_Reg_File_reg[1][5]  (.SI(REG1[4]), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(FE_OFN25_B_top_5_), 
	.D(n296), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRHQX4M \u_Reg_File_reg[1][3]  (.SI(REG1[2]), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(FE_OFN24_B_top_3_), 
	.D(n294), 
	.CK(REF_MUXED_CLK__L9_N4));
   SDFFRHQX4M \u_Reg_File_reg[0][5]  (.SI(REG0[4]), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(FE_OFN23_A_top_5_), 
	.D(n304), 
	.CK(REF_MUXED_CLK__L9_N4));
   SDFFRHQX4M \u_Reg_File_reg[1][2]  (.SI(REG1[1]), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(FE_OFN22_B_top_2_), 
	.D(n293), 
	.CK(REF_MUXED_CLK__L9_N4));
   SDFFRHQX4M \u_Reg_File_reg[0][4]  (.SI(REG0[3]), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(FE_OFN21_A_top_4_), 
	.D(n303), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRHQX4M \u_Reg_File_reg[0][3]  (.SI(REG0[2]), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(FE_OFN20_A_top_3_), 
	.D(n302), 
	.CK(REF_MUXED_CLK__L9_N7));
   SDFFRHQX4M \u_Reg_File_reg[0][2]  (.SI(REG0[1]), 
	.SE(n447), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(FE_OFN19_A_top_2_), 
	.D(n301), 
	.CK(REF_MUXED_CLK__L9_N4));
   SDFFRHQX4M \u_Reg_File_reg[1][0]  (.SI(REG0[7]), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(FE_OFN18_B_top_0_), 
	.D(n291), 
	.CK(REF_MUXED_CLK__L9_N4));
   SDFFSQX2M \u_Reg_File_reg[3][5]  (.SN(RST), 
	.SI(REG3[4]), 
	.SE(n447), 
	.Q(REG3[5]), 
	.D(n280), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[3][7]  (.SI(REG3[6]), 
	.SE(n449), 
	.RN(RST), 
	.Q(REG3[7]), 
	.D(n282), 
	.CK(CLK));
   SDFFRQX2M \u_Reg_File_reg[3][6]  (.SI(REG3[5]), 
	.SE(n448), 
	.RN(RST), 
	.Q(REG3[6]), 
	.D(n281), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[3][2]  (.SI(REG3[1]), 
	.SE(n447), 
	.RN(RST), 
	.Q(REG3[2]), 
	.D(n277), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[3][3]  (.SI(REG3[2]), 
	.SE(n450), 
	.RN(RST), 
	.Q(REG3[3]), 
	.D(n278), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[3][4]  (.SI(REG3[3]), 
	.SE(n449), 
	.RN(RST), 
	.Q(REG3[4]), 
	.D(n279), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[3][1]  (.SI(REG3[0]), 
	.SE(n448), 
	.RN(RST), 
	.Q(REG3[1]), 
	.D(n276), 
	.CK(REF_MUXED_CLK__L9_N1));
   SDFFRQX2M \u_Reg_File_reg[2][6]  (.SI(REG2[5]), 
	.SE(n447), 
	.RN(RST), 
	.Q(REG2[6]), 
	.D(n289), 
	.CK(REF_MUXED_CLK__L9_N3));
   SDFFRQX2M \u_Reg_File_reg[2][5]  (.SI(REG2[4]), 
	.SE(n450), 
	.RN(RST), 
	.Q(REG2[5]), 
	.D(n288), 
	.CK(CLK));
   SDFFSQX2M \u_Reg_File_reg[2][7]  (.SN(RST), 
	.SI(REG2[6]), 
	.SE(n450), 
	.Q(REG2[7]), 
	.D(n290), 
	.CK(REF_MUXED_CLK__L9_N3));
   SDFFRHQX4M \u_Reg_File_reg[1][6]  (.SI(REG1[5]), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(FE_OFN17_B_top_6_), 
	.D(n297), 
	.CK(REF_MUXED_CLK__L9_N4));
   SDFFRHQX4M \u_Reg_File_reg[0][1]  (.SI(REG0[0]), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(FE_OFN16_A_top_1_), 
	.D(n300), 
	.CK(REF_MUXED_CLK__L9_N4));
   SDFFRHQX4M \u_Reg_File_reg[0][0]  (.SI(RdData_valid), 
	.SE(n447), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(FE_OFN15_A_top_0_), 
	.D(n299), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRHQX4M \u_Reg_File_reg[0][6]  (.SI(REG0[5]), 
	.SE(n450), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(FE_OFN14_A_top_6_), 
	.D(n305), 
	.CK(REF_MUXED_CLK__L9_N4));
   SDFFRHQX4M \u_Reg_File_reg[1][7]  (.SI(REG1[6]), 
	.SE(n449), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(FE_OFN13_B_top_7_), 
	.D(n298), 
	.CK(REF_MUXED_CLK__L9_N4));
   SDFFRHQX4M \u_Reg_File_reg[0][7]  (.SI(REG0[6]), 
	.SE(n448), 
	.RN(FE_OFN1_muxed_rst_sync_1), 
	.Q(FE_OFN12_A_top_7_), 
	.D(n306), 
	.CK(REF_MUXED_CLK__L9_N13));
   NOR2X2M U140 (.Y(n157), 
	.B(N14), 
	.A(n408));
   NOR2X2M U141 (.Y(n162), 
	.B(N15), 
	.A(N14));
   INVX2M U142 (.Y(n410), 
	.A(n138));
   NAND2X2M U143 (.Y(n166), 
	.B(n152), 
	.A(n167));
   NAND2X2M U144 (.Y(n151), 
	.B(n153), 
	.A(n152));
   OR2X2M U145 (.Y(n138), 
	.B(n409), 
	.A(n442));
   INVX2M U146 (.Y(n413), 
	.A(n139));
   INVX2M U147 (.Y(n411), 
	.A(n140));
   INVX2M U148 (.Y(n412), 
	.A(n141));
   NOR2BX2M U149 (.Y(n153), 
	.B(n409), 
	.AN(n163));
   NOR2X2M U150 (.Y(n152), 
	.B(n442), 
	.A(n408));
   NAND2X2M U151 (.Y(n170), 
	.B(n157), 
	.A(n167));
   NAND2X2M U152 (.Y(n171), 
	.B(n157), 
	.A(n169));
   NAND2X2M U153 (.Y(n175), 
	.B(n162), 
	.A(n167));
   NAND2X2M U154 (.Y(n177), 
	.B(n162), 
	.A(n169));
   NAND2X2M U155 (.Y(n156), 
	.B(n153), 
	.A(n157));
   NAND2X2M U156 (.Y(n158), 
	.B(n155), 
	.A(n157));
   NAND2X2M U157 (.Y(n161), 
	.B(n153), 
	.A(n162));
   NAND2X2M U158 (.Y(n164), 
	.B(n155), 
	.A(n162));
   NAND2X2M U159 (.Y(n154), 
	.B(n152), 
	.A(n155));
   NAND2X2M U160 (.Y(n168), 
	.B(n152), 
	.A(n169));
   NOR2BX2M U161 (.Y(n167), 
	.B(n409), 
	.AN(n176));
   OR2X2M U162 (.Y(n139), 
	.B(N14), 
	.A(N13));
   OR2X2M U163 (.Y(n140), 
	.B(N13), 
	.A(n442));
   OR2X2M U164 (.Y(n141), 
	.B(N14), 
	.A(n409));
   INVX2M U165 (.Y(n409), 
	.A(N13));
   NOR3X2M U166 (.Y(n173), 
	.C(n442), 
	.B(N16), 
	.A(N15));
   NAND3X2M U167 (.Y(n174), 
	.C(n173), 
	.B(n409), 
	.A(n165));
   NOR2BX2M U168 (.Y(n155), 
	.B(N13), 
	.AN(n163));
   NOR2BX2M U169 (.Y(n169), 
	.B(N13), 
	.AN(n176));
   INVX2M U170 (.Y(n442), 
	.A(N14));
   NOR2BX2M U171 (.Y(n176), 
	.B(N16), 
	.AN(n165));
   NAND3X2M U173 (.Y(n160), 
	.C(n155), 
	.B(n408), 
	.A(N14));
   NAND3X2M U175 (.Y(n159), 
	.C(n153), 
	.B(n408), 
	.A(N14));
   NAND3X2M U177 (.Y(n172), 
	.C(n173), 
	.B(n165), 
	.A(N13));
   INVX2M U178 (.Y(n440), 
	.A(n178));
   INVX2M U179 (.Y(n408), 
	.A(N15));
   INVX2M U180 (.Y(n407), 
	.A(N16));
   AND2X2M U181 (.Y(n163), 
	.B(N16), 
	.A(n165));
   INVX2M U192 (.Y(n439), 
	.A(WrData[0]));
   INVX2M U193 (.Y(n438), 
	.A(WrData[1]));
   INVX2M U194 (.Y(n437), 
	.A(WrData[2]));
   INVX2M U195 (.Y(n436), 
	.A(WrData[3]));
   INVX2M U196 (.Y(n435), 
	.A(WrData[4]));
   INVX2M U197 (.Y(n434), 
	.A(WrData[5]));
   INVX2M U198 (.Y(n433), 
	.A(WrData[6]));
   INVX2M U199 (.Y(n432), 
	.A(WrData[7]));
   NOR2X2M U200 (.Y(n165), 
	.B(RdEn), 
	.A(WrEn));
   NAND2X2M U201 (.Y(n178), 
	.B(WrEn), 
	.A(RdEn));
   AO22X1M U208 (.Y(n307), 
	.B1(n178), 
	.B0(RdData[0]), 
	.A1(n440), 
	.A0(N75));
   AO22X1M U209 (.Y(n308), 
	.B1(n178), 
	.B0(RdData[1]), 
	.A1(n440), 
	.A0(N74));
   AO22X1M U210 (.Y(n309), 
	.B1(n178), 
	.B0(RdData[2]), 
	.A1(n440), 
	.A0(N73));
   AO22X1M U211 (.Y(n310), 
	.B1(n178), 
	.B0(RdData[3]), 
	.A1(n440), 
	.A0(N72));
   AO22X1M U212 (.Y(n311), 
	.B1(n178), 
	.B0(RdData[4]), 
	.A1(n440), 
	.A0(N71));
   AO22X1M U213 (.Y(n312), 
	.B1(n178), 
	.B0(RdData[5]), 
	.A1(n440), 
	.A0(N70));
   AO22X1M U214 (.Y(n313), 
	.B1(n178), 
	.B0(RdData[6]), 
	.A1(n440), 
	.A0(N69));
   AO22X1M U215 (.Y(n314), 
	.B1(n178), 
	.B0(RdData[7]), 
	.A1(n440), 
	.A0(N68));
   OAI2BB2X1M U216 (.Y(n284), 
	.B1(n174), 
	.B0(n438), 
	.A1N(n174), 
	.A0N(REG2[1]));
   OAI2BB2X1M U217 (.Y(n285), 
	.B1(n174), 
	.B0(n437), 
	.A1N(n174), 
	.A0N(REG2[2]));
   OAI2BB2X1M U218 (.Y(n286), 
	.B1(n174), 
	.B0(n436), 
	.A1N(n174), 
	.A0N(REG2[3]));
   OAI2BB2X1M U219 (.Y(n287), 
	.B1(n174), 
	.B0(n435), 
	.A1N(n174), 
	.A0N(REG2[4]));
   OAI2BB2X1M U220 (.Y(n288), 
	.B1(n174), 
	.B0(n434), 
	.A1N(n174), 
	.A0N(REG2[5]));
   OAI2BB2X1M U221 (.Y(n289), 
	.B1(n174), 
	.B0(n433), 
	.A1N(n174), 
	.A0N(REG2[6]));
   OAI2BB2X1M U222 (.Y(n283), 
	.B1(n174), 
	.B0(n439), 
	.A1N(n174), 
	.A0N(REG2[0]));
   OAI2BB2X1M U223 (.Y(n290), 
	.B1(n174), 
	.B0(n432), 
	.A1N(n174), 
	.A0N(REG2[7]));
   OAI2BB2X1M U224 (.Y(n179), 
	.B1(n439), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\u_Reg_File[15][0] ));
   OAI2BB2X1M U225 (.Y(n180), 
	.B1(n438), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\u_Reg_File[15][1] ));
   OAI2BB2X1M U226 (.Y(n181), 
	.B1(n437), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\u_Reg_File[15][2] ));
   OAI2BB2X1M U227 (.Y(n182), 
	.B1(n436), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\u_Reg_File[15][3] ));
   OAI2BB2X1M U228 (.Y(n183), 
	.B1(n435), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\u_Reg_File[15][4] ));
   OAI2BB2X1M U229 (.Y(n184), 
	.B1(n434), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\u_Reg_File[15][5] ));
   OAI2BB2X1M U230 (.Y(n185), 
	.B1(n433), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\u_Reg_File[15][6] ));
   OAI2BB2X1M U231 (.Y(n186), 
	.B1(n432), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\u_Reg_File[15][7] ));
   OAI2BB2X1M U232 (.Y(n187), 
	.B1(n154), 
	.B0(n439), 
	.A1N(n154), 
	.A0N(\u_Reg_File[14][0] ));
   OAI2BB2X1M U233 (.Y(n188), 
	.B1(n154), 
	.B0(n438), 
	.A1N(n154), 
	.A0N(\u_Reg_File[14][1] ));
   OAI2BB2X1M U234 (.Y(n189), 
	.B1(n154), 
	.B0(n437), 
	.A1N(n154), 
	.A0N(\u_Reg_File[14][2] ));
   OAI2BB2X1M U235 (.Y(n190), 
	.B1(n154), 
	.B0(n436), 
	.A1N(n154), 
	.A0N(\u_Reg_File[14][3] ));
   OAI2BB2X1M U236 (.Y(n191), 
	.B1(n154), 
	.B0(n435), 
	.A1N(n154), 
	.A0N(\u_Reg_File[14][4] ));
   OAI2BB2X1M U237 (.Y(n192), 
	.B1(n154), 
	.B0(n434), 
	.A1N(n154), 
	.A0N(\u_Reg_File[14][5] ));
   OAI2BB2X1M U238 (.Y(n193), 
	.B1(n154), 
	.B0(n433), 
	.A1N(n154), 
	.A0N(\u_Reg_File[14][6] ));
   OAI2BB2X1M U239 (.Y(n194), 
	.B1(n154), 
	.B0(n432), 
	.A1N(n154), 
	.A0N(\u_Reg_File[14][7] ));
   OAI2BB2X1M U240 (.Y(n195), 
	.B1(n156), 
	.B0(n439), 
	.A1N(n156), 
	.A0N(\u_Reg_File[13][0] ));
   OAI2BB2X1M U241 (.Y(n196), 
	.B1(n156), 
	.B0(n438), 
	.A1N(n156), 
	.A0N(\u_Reg_File[13][1] ));
   OAI2BB2X1M U242 (.Y(n197), 
	.B1(n156), 
	.B0(n437), 
	.A1N(n156), 
	.A0N(\u_Reg_File[13][2] ));
   OAI2BB2X1M U243 (.Y(n198), 
	.B1(n156), 
	.B0(n436), 
	.A1N(n156), 
	.A0N(\u_Reg_File[13][3] ));
   OAI2BB2X1M U244 (.Y(n199), 
	.B1(n156), 
	.B0(n435), 
	.A1N(n156), 
	.A0N(\u_Reg_File[13][4] ));
   OAI2BB2X1M U245 (.Y(n200), 
	.B1(n156), 
	.B0(n434), 
	.A1N(n156), 
	.A0N(\u_Reg_File[13][5] ));
   OAI2BB2X1M U246 (.Y(n201), 
	.B1(n156), 
	.B0(n433), 
	.A1N(n156), 
	.A0N(\u_Reg_File[13][6] ));
   OAI2BB2X1M U247 (.Y(n202), 
	.B1(n156), 
	.B0(n432), 
	.A1N(n156), 
	.A0N(\u_Reg_File[13][7] ));
   OAI2BB2X1M U248 (.Y(n203), 
	.B1(n158), 
	.B0(n439), 
	.A1N(n158), 
	.A0N(\u_Reg_File[12][0] ));
   OAI2BB2X1M U249 (.Y(n204), 
	.B1(n158), 
	.B0(n438), 
	.A1N(n158), 
	.A0N(\u_Reg_File[12][1] ));
   OAI2BB2X1M U250 (.Y(n205), 
	.B1(n158), 
	.B0(n437), 
	.A1N(n158), 
	.A0N(\u_Reg_File[12][2] ));
   OAI2BB2X1M U251 (.Y(n206), 
	.B1(n158), 
	.B0(n436), 
	.A1N(n158), 
	.A0N(\u_Reg_File[12][3] ));
   OAI2BB2X1M U252 (.Y(n207), 
	.B1(n158), 
	.B0(n435), 
	.A1N(n158), 
	.A0N(\u_Reg_File[12][4] ));
   OAI2BB2X1M U253 (.Y(n208), 
	.B1(n158), 
	.B0(n434), 
	.A1N(n158), 
	.A0N(\u_Reg_File[12][5] ));
   OAI2BB2X1M U254 (.Y(n209), 
	.B1(n158), 
	.B0(n433), 
	.A1N(n158), 
	.A0N(\u_Reg_File[12][6] ));
   OAI2BB2X1M U255 (.Y(n210), 
	.B1(n158), 
	.B0(n432), 
	.A1N(n158), 
	.A0N(\u_Reg_File[12][7] ));
   OAI2BB2X1M U256 (.Y(n227), 
	.B1(n161), 
	.B0(n439), 
	.A1N(n161), 
	.A0N(\u_Reg_File[9][0] ));
   OAI2BB2X1M U257 (.Y(n228), 
	.B1(n161), 
	.B0(n438), 
	.A1N(n161), 
	.A0N(\u_Reg_File[9][1] ));
   OAI2BB2X1M U258 (.Y(n229), 
	.B1(n161), 
	.B0(n437), 
	.A1N(n161), 
	.A0N(\u_Reg_File[9][2] ));
   OAI2BB2X1M U259 (.Y(n230), 
	.B1(n161), 
	.B0(n436), 
	.A1N(n161), 
	.A0N(\u_Reg_File[9][3] ));
   OAI2BB2X1M U260 (.Y(n231), 
	.B1(n161), 
	.B0(n435), 
	.A1N(n161), 
	.A0N(\u_Reg_File[9][4] ));
   OAI2BB2X1M U261 (.Y(n232), 
	.B1(n161), 
	.B0(n434), 
	.A1N(n161), 
	.A0N(\u_Reg_File[9][5] ));
   OAI2BB2X1M U262 (.Y(n233), 
	.B1(n161), 
	.B0(n433), 
	.A1N(n161), 
	.A0N(\u_Reg_File[9][6] ));
   OAI2BB2X1M U263 (.Y(n234), 
	.B1(n161), 
	.B0(n432), 
	.A1N(n161), 
	.A0N(\u_Reg_File[9][7] ));
   OAI2BB2X1M U264 (.Y(n235), 
	.B1(n164), 
	.B0(n439), 
	.A1N(n164), 
	.A0N(\u_Reg_File[8][0] ));
   OAI2BB2X1M U265 (.Y(n236), 
	.B1(n164), 
	.B0(n438), 
	.A1N(n164), 
	.A0N(\u_Reg_File[8][1] ));
   OAI2BB2X1M U266 (.Y(n237), 
	.B1(n164), 
	.B0(n437), 
	.A1N(n164), 
	.A0N(\u_Reg_File[8][2] ));
   OAI2BB2X1M U267 (.Y(n238), 
	.B1(n164), 
	.B0(n436), 
	.A1N(n164), 
	.A0N(\u_Reg_File[8][3] ));
   OAI2BB2X1M U268 (.Y(n239), 
	.B1(n164), 
	.B0(n435), 
	.A1N(n164), 
	.A0N(\u_Reg_File[8][4] ));
   OAI2BB2X1M U269 (.Y(n240), 
	.B1(n164), 
	.B0(n434), 
	.A1N(n164), 
	.A0N(\u_Reg_File[8][5] ));
   OAI2BB2X1M U270 (.Y(n241), 
	.B1(n164), 
	.B0(n433), 
	.A1N(n164), 
	.A0N(\u_Reg_File[8][6] ));
   OAI2BB2X1M U271 (.Y(n242), 
	.B1(n164), 
	.B0(n432), 
	.A1N(n164), 
	.A0N(\u_Reg_File[8][7] ));
   OAI2BB2X1M U272 (.Y(n243), 
	.B1(n166), 
	.B0(n439), 
	.A1N(n166), 
	.A0N(\u_Reg_File[7][0] ));
   OAI2BB2X1M U273 (.Y(n244), 
	.B1(n166), 
	.B0(n438), 
	.A1N(n166), 
	.A0N(\u_Reg_File[7][1] ));
   OAI2BB2X1M U274 (.Y(n245), 
	.B1(n166), 
	.B0(n437), 
	.A1N(n166), 
	.A0N(\u_Reg_File[7][2] ));
   OAI2BB2X1M U275 (.Y(n246), 
	.B1(n166), 
	.B0(n436), 
	.A1N(n166), 
	.A0N(\u_Reg_File[7][3] ));
   OAI2BB2X1M U276 (.Y(n247), 
	.B1(n166), 
	.B0(n435), 
	.A1N(n166), 
	.A0N(\u_Reg_File[7][4] ));
   OAI2BB2X1M U277 (.Y(n248), 
	.B1(n166), 
	.B0(n434), 
	.A1N(n166), 
	.A0N(\u_Reg_File[7][5] ));
   OAI2BB2X1M U278 (.Y(n249), 
	.B1(n166), 
	.B0(n433), 
	.A1N(n166), 
	.A0N(\u_Reg_File[7][6] ));
   OAI2BB2X1M U279 (.Y(n250), 
	.B1(n166), 
	.B0(n432), 
	.A1N(n166), 
	.A0N(\u_Reg_File[7][7] ));
   OAI2BB2X1M U280 (.Y(n251), 
	.B1(n168), 
	.B0(n439), 
	.A1N(n168), 
	.A0N(\u_Reg_File[6][0] ));
   OAI2BB2X1M U281 (.Y(n252), 
	.B1(n168), 
	.B0(n438), 
	.A1N(n168), 
	.A0N(\u_Reg_File[6][1] ));
   OAI2BB2X1M U282 (.Y(n253), 
	.B1(n168), 
	.B0(n437), 
	.A1N(n168), 
	.A0N(\u_Reg_File[6][2] ));
   OAI2BB2X1M U283 (.Y(n254), 
	.B1(n168), 
	.B0(n436), 
	.A1N(n168), 
	.A0N(\u_Reg_File[6][3] ));
   OAI2BB2X1M U284 (.Y(n255), 
	.B1(n168), 
	.B0(n435), 
	.A1N(n168), 
	.A0N(\u_Reg_File[6][4] ));
   OAI2BB2X1M U285 (.Y(n256), 
	.B1(n168), 
	.B0(n434), 
	.A1N(n168), 
	.A0N(\u_Reg_File[6][5] ));
   OAI2BB2X1M U286 (.Y(n257), 
	.B1(n168), 
	.B0(n433), 
	.A1N(n168), 
	.A0N(\u_Reg_File[6][6] ));
   OAI2BB2X1M U287 (.Y(n258), 
	.B1(n168), 
	.B0(n432), 
	.A1N(n168), 
	.A0N(\u_Reg_File[6][7] ));
   OAI2BB2X1M U288 (.Y(n259), 
	.B1(n170), 
	.B0(n439), 
	.A1N(n170), 
	.A0N(\u_Reg_File[5][0] ));
   OAI2BB2X1M U289 (.Y(n260), 
	.B1(n170), 
	.B0(n438), 
	.A1N(n170), 
	.A0N(\u_Reg_File[5][1] ));
   OAI2BB2X1M U290 (.Y(n261), 
	.B1(n170), 
	.B0(n437), 
	.A1N(n170), 
	.A0N(\u_Reg_File[5][2] ));
   OAI2BB2X1M U291 (.Y(n262), 
	.B1(n170), 
	.B0(n436), 
	.A1N(n170), 
	.A0N(\u_Reg_File[5][3] ));
   OAI2BB2X1M U292 (.Y(n263), 
	.B1(n170), 
	.B0(n435), 
	.A1N(n170), 
	.A0N(\u_Reg_File[5][4] ));
   OAI2BB2X1M U293 (.Y(n264), 
	.B1(n170), 
	.B0(n434), 
	.A1N(n170), 
	.A0N(\u_Reg_File[5][5] ));
   OAI2BB2X1M U294 (.Y(n265), 
	.B1(n170), 
	.B0(n433), 
	.A1N(n170), 
	.A0N(\u_Reg_File[5][6] ));
   OAI2BB2X1M U295 (.Y(n266), 
	.B1(n170), 
	.B0(n432), 
	.A1N(n170), 
	.A0N(\u_Reg_File[5][7] ));
   OAI2BB2X1M U296 (.Y(n267), 
	.B1(n171), 
	.B0(n439), 
	.A1N(n171), 
	.A0N(\u_Reg_File[4][0] ));
   OAI2BB2X1M U297 (.Y(n268), 
	.B1(n171), 
	.B0(n438), 
	.A1N(n171), 
	.A0N(\u_Reg_File[4][1] ));
   OAI2BB2X1M U298 (.Y(n269), 
	.B1(n171), 
	.B0(n437), 
	.A1N(n171), 
	.A0N(\u_Reg_File[4][2] ));
   OAI2BB2X1M U299 (.Y(n270), 
	.B1(n171), 
	.B0(n436), 
	.A1N(n171), 
	.A0N(\u_Reg_File[4][3] ));
   OAI2BB2X1M U300 (.Y(n271), 
	.B1(n171), 
	.B0(n435), 
	.A1N(n171), 
	.A0N(\u_Reg_File[4][4] ));
   OAI2BB2X1M U301 (.Y(n272), 
	.B1(n171), 
	.B0(n434), 
	.A1N(n171), 
	.A0N(\u_Reg_File[4][5] ));
   OAI2BB2X1M U302 (.Y(n273), 
	.B1(n171), 
	.B0(n433), 
	.A1N(n171), 
	.A0N(\u_Reg_File[4][6] ));
   OAI2BB2X1M U303 (.Y(n274), 
	.B1(n171), 
	.B0(n432), 
	.A1N(n171), 
	.A0N(\u_Reg_File[4][7] ));
   OAI2BB2X1M U304 (.Y(n291), 
	.B1(n175), 
	.B0(n439), 
	.A1N(n175), 
	.A0N(REG1[0]));
   OAI2BB2X1M U305 (.Y(n292), 
	.B1(n175), 
	.B0(n438), 
	.A1N(n175), 
	.A0N(REG1[1]));
   OAI2BB2X1M U306 (.Y(n293), 
	.B1(n175), 
	.B0(n437), 
	.A1N(n175), 
	.A0N(REG1[2]));
   OAI2BB2X1M U307 (.Y(n294), 
	.B1(n175), 
	.B0(n436), 
	.A1N(n175), 
	.A0N(REG1[3]));
   OAI2BB2X1M U308 (.Y(n295), 
	.B1(n175), 
	.B0(n435), 
	.A1N(n175), 
	.A0N(REG1[4]));
   OAI2BB2X1M U309 (.Y(n296), 
	.B1(n175), 
	.B0(n434), 
	.A1N(n175), 
	.A0N(REG1[5]));
   OAI2BB2X1M U310 (.Y(n297), 
	.B1(n175), 
	.B0(n433), 
	.A1N(n175), 
	.A0N(REG1[6]));
   OAI2BB2X1M U311 (.Y(n298), 
	.B1(n175), 
	.B0(n432), 
	.A1N(n175), 
	.A0N(REG1[7]));
   OAI2BB2X1M U312 (.Y(n299), 
	.B1(n177), 
	.B0(n439), 
	.A1N(n177), 
	.A0N(REG0[0]));
   OAI2BB2X1M U313 (.Y(n300), 
	.B1(n177), 
	.B0(n438), 
	.A1N(n177), 
	.A0N(REG0[1]));
   OAI2BB2X1M U314 (.Y(n301), 
	.B1(n177), 
	.B0(n437), 
	.A1N(n177), 
	.A0N(REG0[2]));
   OAI2BB2X1M U315 (.Y(n302), 
	.B1(n177), 
	.B0(n436), 
	.A1N(n177), 
	.A0N(REG0[3]));
   OAI2BB2X1M U316 (.Y(n303), 
	.B1(n177), 
	.B0(n435), 
	.A1N(n177), 
	.A0N(REG0[4]));
   OAI2BB2X1M U317 (.Y(n304), 
	.B1(n177), 
	.B0(n434), 
	.A1N(n177), 
	.A0N(REG0[5]));
   OAI2BB2X1M U318 (.Y(n305), 
	.B1(n177), 
	.B0(n433), 
	.A1N(n177), 
	.A0N(REG0[6]));
   OAI2BB2X1M U319 (.Y(n306), 
	.B1(n177), 
	.B0(n432), 
	.A1N(n177), 
	.A0N(REG0[7]));
   OAI2BB2X1M U320 (.Y(n211), 
	.B1(n159), 
	.B0(n439), 
	.A1N(n159), 
	.A0N(\u_Reg_File[11][0] ));
   OAI2BB2X1M U321 (.Y(n212), 
	.B1(n159), 
	.B0(n438), 
	.A1N(n159), 
	.A0N(\u_Reg_File[11][1] ));
   OAI2BB2X1M U322 (.Y(n213), 
	.B1(n159), 
	.B0(n437), 
	.A1N(n159), 
	.A0N(\u_Reg_File[11][2] ));
   OAI2BB2X1M U323 (.Y(n214), 
	.B1(n159), 
	.B0(n436), 
	.A1N(n159), 
	.A0N(\u_Reg_File[11][3] ));
   OAI2BB2X1M U324 (.Y(n215), 
	.B1(n159), 
	.B0(n435), 
	.A1N(n159), 
	.A0N(\u_Reg_File[11][4] ));
   OAI2BB2X1M U325 (.Y(n216), 
	.B1(n159), 
	.B0(n434), 
	.A1N(n159), 
	.A0N(\u_Reg_File[11][5] ));
   OAI2BB2X1M U326 (.Y(n217), 
	.B1(n159), 
	.B0(n433), 
	.A1N(n159), 
	.A0N(\u_Reg_File[11][6] ));
   OAI2BB2X1M U327 (.Y(n218), 
	.B1(n159), 
	.B0(n432), 
	.A1N(n159), 
	.A0N(\u_Reg_File[11][7] ));
   OAI2BB2X1M U328 (.Y(n219), 
	.B1(n160), 
	.B0(n439), 
	.A1N(n160), 
	.A0N(\u_Reg_File[10][0] ));
   OAI2BB2X1M U329 (.Y(n220), 
	.B1(n160), 
	.B0(n438), 
	.A1N(n160), 
	.A0N(\u_Reg_File[10][1] ));
   OAI2BB2X1M U330 (.Y(n221), 
	.B1(n160), 
	.B0(n437), 
	.A1N(n160), 
	.A0N(\u_Reg_File[10][2] ));
   OAI2BB2X1M U331 (.Y(n222), 
	.B1(n160), 
	.B0(n436), 
	.A1N(n160), 
	.A0N(\u_Reg_File[10][3] ));
   OAI2BB2X1M U332 (.Y(n223), 
	.B1(n160), 
	.B0(n435), 
	.A1N(n160), 
	.A0N(\u_Reg_File[10][4] ));
   OAI2BB2X1M U333 (.Y(n224), 
	.B1(n160), 
	.B0(n434), 
	.A1N(n160), 
	.A0N(\u_Reg_File[10][5] ));
   OAI2BB2X1M U334 (.Y(n225), 
	.B1(n160), 
	.B0(n433), 
	.A1N(n160), 
	.A0N(\u_Reg_File[10][6] ));
   OAI2BB2X1M U335 (.Y(n226), 
	.B1(n160), 
	.B0(n432), 
	.A1N(n160), 
	.A0N(\u_Reg_File[10][7] ));
   OAI2BB2X1M U336 (.Y(n275), 
	.B1(n172), 
	.B0(n439), 
	.A1N(n172), 
	.A0N(REG3[0]));
   OAI2BB2X1M U337 (.Y(n276), 
	.B1(n172), 
	.B0(n438), 
	.A1N(n172), 
	.A0N(REG3[1]));
   OAI2BB2X1M U338 (.Y(n277), 
	.B1(n172), 
	.B0(n437), 
	.A1N(n172), 
	.A0N(REG3[2]));
   OAI2BB2X1M U339 (.Y(n278), 
	.B1(n172), 
	.B0(n436), 
	.A1N(n172), 
	.A0N(REG3[3]));
   OAI2BB2X1M U340 (.Y(n279), 
	.B1(n172), 
	.B0(n435), 
	.A1N(n172), 
	.A0N(REG3[4]));
   OAI2BB2X1M U341 (.Y(n281), 
	.B1(n172), 
	.B0(n433), 
	.A1N(n172), 
	.A0N(REG3[6]));
   OAI2BB2X1M U342 (.Y(n282), 
	.B1(n172), 
	.B0(n432), 
	.A1N(n172), 
	.A0N(REG3[7]));
   OAI2BB2X1M U343 (.Y(n280), 
	.B1(n172), 
	.B0(n434), 
	.A1N(n172), 
	.A0N(REG3[5]));
   OAI2BB1X2M U344 (.Y(n315), 
	.B0(n178), 
	.A1N(n165), 
	.A0N(RdData_valid));
   AOI22X1M U345 (.Y(n143), 
	.B1(n410), 
	.B0(\u_Reg_File[11][0] ), 
	.A1(n411), 
	.A0(\u_Reg_File[10][0] ));
   AOI22X1M U346 (.Y(n142), 
	.B1(n412), 
	.B0(\u_Reg_File[9][0] ), 
	.A1(n413), 
	.A0(\u_Reg_File[8][0] ));
   CLKNAND2X2M U347 (.Y(n391), 
	.B(n408), 
	.A(N16));
   AOI21X1M U348 (.Y(n318), 
	.B0(n391), 
	.A1(n142), 
	.A0(n143));
   AOI22X1M U349 (.Y(n145), 
	.B1(n410), 
	.B0(\u_Reg_File[15][0] ), 
	.A1(n411), 
	.A0(\u_Reg_File[14][0] ));
   AOI22X1M U350 (.Y(n144), 
	.B1(n412), 
	.B0(\u_Reg_File[13][0] ), 
	.A1(n413), 
	.A0(\u_Reg_File[12][0] ));
   CLKNAND2X2M U351 (.Y(n394), 
	.B(N15), 
	.A(N16));
   AOI21X1M U352 (.Y(n317), 
	.B0(n394), 
	.A1(n144), 
	.A0(n145));
   AOI22X1M U353 (.Y(n147), 
	.B1(n410), 
	.B0(REG3[0]), 
	.A1(n411), 
	.A0(REG2[0]));
   AOI22X1M U354 (.Y(n146), 
	.B1(n412), 
	.B0(REG1[0]), 
	.A1(n413), 
	.A0(REG0[0]));
   CLKNAND2X2M U355 (.Y(n397), 
	.B(n407), 
	.A(n408));
   AOI21X1M U356 (.Y(n316), 
	.B0(n397), 
	.A1(n146), 
	.A0(n147));
   AOI22X1M U357 (.Y(n149), 
	.B1(n410), 
	.B0(\u_Reg_File[7][0] ), 
	.A1(n411), 
	.A0(\u_Reg_File[6][0] ));
   AOI22X1M U358 (.Y(n148), 
	.B1(n412), 
	.B0(\u_Reg_File[5][0] ), 
	.A1(n413), 
	.A0(\u_Reg_File[4][0] ));
   CLKNAND2X2M U359 (.Y(n400), 
	.B(n407), 
	.A(N15));
   AOI21X1M U360 (.Y(n150), 
	.B0(n400), 
	.A1(n148), 
	.A0(n149));
   OR4X1M U361 (.Y(N75), 
	.D(n150), 
	.C(n316), 
	.B(n317), 
	.A(n318));
   AOI22X1M U362 (.Y(n320), 
	.B1(n410), 
	.B0(\u_Reg_File[11][1] ), 
	.A1(n411), 
	.A0(\u_Reg_File[10][1] ));
   AOI22X1M U363 (.Y(n319), 
	.B1(n412), 
	.B0(\u_Reg_File[9][1] ), 
	.A1(n413), 
	.A0(\u_Reg_File[8][1] ));
   AOI21X1M U364 (.Y(n330), 
	.B0(n391), 
	.A1(n319), 
	.A0(n320));
   AOI22X1M U365 (.Y(n322), 
	.B1(n410), 
	.B0(\u_Reg_File[15][1] ), 
	.A1(n411), 
	.A0(\u_Reg_File[14][1] ));
   AOI22X1M U366 (.Y(n321), 
	.B1(n412), 
	.B0(\u_Reg_File[13][1] ), 
	.A1(n413), 
	.A0(\u_Reg_File[12][1] ));
   AOI21X1M U367 (.Y(n329), 
	.B0(n394), 
	.A1(n321), 
	.A0(n322));
   AOI22X1M U368 (.Y(n324), 
	.B1(n410), 
	.B0(REG3[1]), 
	.A1(n411), 
	.A0(REG2[1]));
   AOI22X1M U369 (.Y(n323), 
	.B1(n412), 
	.B0(REG1[1]), 
	.A1(n413), 
	.A0(REG0[1]));
   AOI21X1M U370 (.Y(n328), 
	.B0(n397), 
	.A1(n323), 
	.A0(n324));
   AOI22X1M U371 (.Y(n326), 
	.B1(n410), 
	.B0(\u_Reg_File[7][1] ), 
	.A1(n411), 
	.A0(\u_Reg_File[6][1] ));
   AOI22X1M U372 (.Y(n325), 
	.B1(n412), 
	.B0(\u_Reg_File[5][1] ), 
	.A1(n413), 
	.A0(\u_Reg_File[4][1] ));
   AOI21X1M U373 (.Y(n327), 
	.B0(n400), 
	.A1(n325), 
	.A0(n326));
   OR4X1M U374 (.Y(N74), 
	.D(n327), 
	.C(n328), 
	.B(n329), 
	.A(n330));
   AOI22X1M U375 (.Y(n332), 
	.B1(n410), 
	.B0(\u_Reg_File[11][2] ), 
	.A1(n411), 
	.A0(\u_Reg_File[10][2] ));
   AOI22X1M U376 (.Y(n331), 
	.B1(n412), 
	.B0(\u_Reg_File[9][2] ), 
	.A1(n413), 
	.A0(\u_Reg_File[8][2] ));
   AOI21X1M U377 (.Y(n342), 
	.B0(n391), 
	.A1(n331), 
	.A0(n332));
   AOI22X1M U378 (.Y(n334), 
	.B1(n410), 
	.B0(\u_Reg_File[15][2] ), 
	.A1(n411), 
	.A0(\u_Reg_File[14][2] ));
   AOI22X1M U379 (.Y(n333), 
	.B1(n412), 
	.B0(\u_Reg_File[13][2] ), 
	.A1(n413), 
	.A0(\u_Reg_File[12][2] ));
   AOI21X1M U380 (.Y(n341), 
	.B0(n394), 
	.A1(n333), 
	.A0(n334));
   AOI22X1M U381 (.Y(n336), 
	.B1(n410), 
	.B0(REG3[2]), 
	.A1(n411), 
	.A0(REG2[2]));
   AOI22X1M U382 (.Y(n335), 
	.B1(n412), 
	.B0(REG1[2]), 
	.A1(n413), 
	.A0(REG0[2]));
   AOI21X1M U383 (.Y(n340), 
	.B0(n397), 
	.A1(n335), 
	.A0(n336));
   AOI22X1M U384 (.Y(n338), 
	.B1(n410), 
	.B0(\u_Reg_File[7][2] ), 
	.A1(n411), 
	.A0(\u_Reg_File[6][2] ));
   AOI22X1M U385 (.Y(n337), 
	.B1(n412), 
	.B0(\u_Reg_File[5][2] ), 
	.A1(n413), 
	.A0(\u_Reg_File[4][2] ));
   AOI21X1M U386 (.Y(n339), 
	.B0(n400), 
	.A1(n337), 
	.A0(n338));
   OR4X1M U387 (.Y(N73), 
	.D(n339), 
	.C(n340), 
	.B(n341), 
	.A(n342));
   AOI22X1M U388 (.Y(n344), 
	.B1(n410), 
	.B0(\u_Reg_File[11][3] ), 
	.A1(n411), 
	.A0(\u_Reg_File[10][3] ));
   AOI22X1M U389 (.Y(n343), 
	.B1(n412), 
	.B0(\u_Reg_File[9][3] ), 
	.A1(n413), 
	.A0(\u_Reg_File[8][3] ));
   AOI21X1M U390 (.Y(n354), 
	.B0(n391), 
	.A1(n343), 
	.A0(n344));
   AOI22X1M U391 (.Y(n346), 
	.B1(n410), 
	.B0(\u_Reg_File[15][3] ), 
	.A1(n411), 
	.A0(\u_Reg_File[14][3] ));
   AOI22X1M U392 (.Y(n345), 
	.B1(n412), 
	.B0(\u_Reg_File[13][3] ), 
	.A1(n413), 
	.A0(\u_Reg_File[12][3] ));
   AOI21X1M U393 (.Y(n353), 
	.B0(n394), 
	.A1(n345), 
	.A0(n346));
   AOI22X1M U394 (.Y(n348), 
	.B1(n410), 
	.B0(REG3[3]), 
	.A1(n411), 
	.A0(REG2[3]));
   AOI22X1M U395 (.Y(n347), 
	.B1(n412), 
	.B0(REG1[3]), 
	.A1(n413), 
	.A0(REG0[3]));
   AOI21X1M U396 (.Y(n352), 
	.B0(n397), 
	.A1(n347), 
	.A0(n348));
   AOI22X1M U397 (.Y(n350), 
	.B1(n410), 
	.B0(\u_Reg_File[7][3] ), 
	.A1(n411), 
	.A0(\u_Reg_File[6][3] ));
   AOI22X1M U398 (.Y(n349), 
	.B1(n412), 
	.B0(\u_Reg_File[5][3] ), 
	.A1(n413), 
	.A0(\u_Reg_File[4][3] ));
   AOI21X1M U399 (.Y(n351), 
	.B0(n400), 
	.A1(n349), 
	.A0(n350));
   OR4X1M U400 (.Y(N72), 
	.D(n351), 
	.C(n352), 
	.B(n353), 
	.A(n354));
   AOI22X1M U401 (.Y(n356), 
	.B1(n410), 
	.B0(\u_Reg_File[11][4] ), 
	.A1(n411), 
	.A0(\u_Reg_File[10][4] ));
   AOI22X1M U402 (.Y(n355), 
	.B1(n412), 
	.B0(\u_Reg_File[9][4] ), 
	.A1(n413), 
	.A0(\u_Reg_File[8][4] ));
   AOI21X1M U403 (.Y(n366), 
	.B0(n391), 
	.A1(n355), 
	.A0(n356));
   AOI22X1M U404 (.Y(n358), 
	.B1(n410), 
	.B0(\u_Reg_File[15][4] ), 
	.A1(n411), 
	.A0(\u_Reg_File[14][4] ));
   AOI22X1M U405 (.Y(n357), 
	.B1(n412), 
	.B0(\u_Reg_File[13][4] ), 
	.A1(n413), 
	.A0(\u_Reg_File[12][4] ));
   AOI21X1M U406 (.Y(n365), 
	.B0(n394), 
	.A1(n357), 
	.A0(n358));
   AOI22X1M U407 (.Y(n360), 
	.B1(n410), 
	.B0(REG3[4]), 
	.A1(n411), 
	.A0(REG2[4]));
   AOI22X1M U408 (.Y(n359), 
	.B1(n412), 
	.B0(REG1[4]), 
	.A1(n413), 
	.A0(REG0[4]));
   AOI21X1M U409 (.Y(n364), 
	.B0(n397), 
	.A1(n359), 
	.A0(n360));
   AOI22X1M U410 (.Y(n362), 
	.B1(n410), 
	.B0(\u_Reg_File[7][4] ), 
	.A1(n411), 
	.A0(\u_Reg_File[6][4] ));
   AOI22X1M U411 (.Y(n361), 
	.B1(n412), 
	.B0(\u_Reg_File[5][4] ), 
	.A1(n413), 
	.A0(\u_Reg_File[4][4] ));
   AOI21X1M U412 (.Y(n363), 
	.B0(n400), 
	.A1(n361), 
	.A0(n362));
   OR4X1M U413 (.Y(N71), 
	.D(n363), 
	.C(n364), 
	.B(n365), 
	.A(n366));
   AOI22X1M U414 (.Y(n368), 
	.B1(n410), 
	.B0(\u_Reg_File[11][5] ), 
	.A1(n411), 
	.A0(\u_Reg_File[10][5] ));
   AOI22X1M U415 (.Y(n367), 
	.B1(n412), 
	.B0(\u_Reg_File[9][5] ), 
	.A1(n413), 
	.A0(\u_Reg_File[8][5] ));
   AOI21X1M U416 (.Y(n378), 
	.B0(n391), 
	.A1(n367), 
	.A0(n368));
   AOI22X1M U417 (.Y(n370), 
	.B1(n410), 
	.B0(\u_Reg_File[15][5] ), 
	.A1(n411), 
	.A0(\u_Reg_File[14][5] ));
   AOI22X1M U418 (.Y(n369), 
	.B1(n412), 
	.B0(\u_Reg_File[13][5] ), 
	.A1(n413), 
	.A0(\u_Reg_File[12][5] ));
   AOI21X1M U419 (.Y(n377), 
	.B0(n394), 
	.A1(n369), 
	.A0(n370));
   AOI22X1M U420 (.Y(n372), 
	.B1(n410), 
	.B0(REG3[5]), 
	.A1(n411), 
	.A0(REG2[5]));
   AOI22X1M U421 (.Y(n371), 
	.B1(n412), 
	.B0(REG1[5]), 
	.A1(n413), 
	.A0(REG0[5]));
   AOI21X1M U422 (.Y(n376), 
	.B0(n397), 
	.A1(n371), 
	.A0(n372));
   AOI22X1M U423 (.Y(n374), 
	.B1(n410), 
	.B0(\u_Reg_File[7][5] ), 
	.A1(n411), 
	.A0(\u_Reg_File[6][5] ));
   AOI22X1M U424 (.Y(n373), 
	.B1(n412), 
	.B0(\u_Reg_File[5][5] ), 
	.A1(n413), 
	.A0(\u_Reg_File[4][5] ));
   AOI21X1M U425 (.Y(n375), 
	.B0(n400), 
	.A1(n373), 
	.A0(n374));
   OR4X1M U426 (.Y(N70), 
	.D(n375), 
	.C(n376), 
	.B(n377), 
	.A(n378));
   AOI22X1M U427 (.Y(n380), 
	.B1(n410), 
	.B0(\u_Reg_File[11][6] ), 
	.A1(n411), 
	.A0(\u_Reg_File[10][6] ));
   AOI22X1M U428 (.Y(n379), 
	.B1(n412), 
	.B0(\u_Reg_File[9][6] ), 
	.A1(n413), 
	.A0(\u_Reg_File[8][6] ));
   AOI21X1M U429 (.Y(n390), 
	.B0(n391), 
	.A1(n379), 
	.A0(n380));
   AOI22X1M U430 (.Y(n382), 
	.B1(n410), 
	.B0(\u_Reg_File[15][6] ), 
	.A1(n411), 
	.A0(\u_Reg_File[14][6] ));
   AOI22X1M U431 (.Y(n381), 
	.B1(n412), 
	.B0(\u_Reg_File[13][6] ), 
	.A1(n413), 
	.A0(\u_Reg_File[12][6] ));
   AOI21X1M U432 (.Y(n389), 
	.B0(n394), 
	.A1(n381), 
	.A0(n382));
   AOI22X1M U433 (.Y(n384), 
	.B1(n410), 
	.B0(REG3[6]), 
	.A1(n411), 
	.A0(REG2[6]));
   AOI22X1M U434 (.Y(n383), 
	.B1(n412), 
	.B0(REG1[6]), 
	.A1(n413), 
	.A0(REG0[6]));
   AOI21X1M U435 (.Y(n388), 
	.B0(n397), 
	.A1(n383), 
	.A0(n384));
   AOI22X1M U436 (.Y(n386), 
	.B1(n410), 
	.B0(\u_Reg_File[7][6] ), 
	.A1(n411), 
	.A0(\u_Reg_File[6][6] ));
   AOI22X1M U437 (.Y(n385), 
	.B1(n412), 
	.B0(\u_Reg_File[5][6] ), 
	.A1(n413), 
	.A0(\u_Reg_File[4][6] ));
   AOI21X1M U438 (.Y(n387), 
	.B0(n400), 
	.A1(n385), 
	.A0(n386));
   OR4X1M U439 (.Y(N69), 
	.D(n387), 
	.C(n388), 
	.B(n389), 
	.A(n390));
   AOI22X1M U440 (.Y(n393), 
	.B1(n410), 
	.B0(\u_Reg_File[11][7] ), 
	.A1(n411), 
	.A0(\u_Reg_File[10][7] ));
   AOI22X1M U441 (.Y(n392), 
	.B1(n412), 
	.B0(\u_Reg_File[9][7] ), 
	.A1(n413), 
	.A0(\u_Reg_File[8][7] ));
   AOI21X1M U442 (.Y(n406), 
	.B0(n391), 
	.A1(n392), 
	.A0(n393));
   AOI22X1M U443 (.Y(n396), 
	.B1(n410), 
	.B0(\u_Reg_File[15][7] ), 
	.A1(n411), 
	.A0(\u_Reg_File[14][7] ));
   AOI22X1M U444 (.Y(n395), 
	.B1(n412), 
	.B0(\u_Reg_File[13][7] ), 
	.A1(n413), 
	.A0(\u_Reg_File[12][7] ));
   AOI21X1M U445 (.Y(n405), 
	.B0(n394), 
	.A1(n395), 
	.A0(n396));
   AOI22X1M U446 (.Y(n399), 
	.B1(n410), 
	.B0(REG3[7]), 
	.A1(n411), 
	.A0(REG2[7]));
   AOI22X1M U447 (.Y(n398), 
	.B1(n412), 
	.B0(REG1[7]), 
	.A1(n413), 
	.A0(REG0[7]));
   AOI21X1M U448 (.Y(n404), 
	.B0(n397), 
	.A1(n398), 
	.A0(n399));
   AOI22X1M U449 (.Y(n402), 
	.B1(n410), 
	.B0(\u_Reg_File[7][7] ), 
	.A1(n411), 
	.A0(\u_Reg_File[6][7] ));
   AOI22X1M U450 (.Y(n401), 
	.B1(n412), 
	.B0(\u_Reg_File[5][7] ), 
	.A1(n413), 
	.A0(\u_Reg_File[4][7] ));
   AOI21X1M U451 (.Y(n403), 
	.B0(n400), 
	.A1(n401), 
	.A0(n402));
   OR4X1M U452 (.Y(N68), 
	.D(n403), 
	.C(n404), 
	.B(n405), 
	.A(n406));
   DLY1X4M U453 (.Y(n447), 
	.A(test_se));
   DLY1X4M U454 (.Y(n448), 
	.A(test_se));
   DLY1X4M U455 (.Y(n449), 
	.A(test_se));
   DLY1X4M U456 (.Y(n450), 
	.A(test_se));
endmodule

module DECODER_2X4_ALU_UNIT_SELECTION_WIDTH2 (
	Enable, 
	ALU_FUN, 
	Arith_Enable, 
	Logic_Enable, 
	CMP_Enable, 
	Shift_Enable);
   input Enable;
   input [1:0] ALU_FUN;
   output Arith_Enable;
   output Logic_Enable;
   output CMP_Enable;
   output Shift_Enable;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;

   NOR3X2M U3 (.Y(Shift_Enable), 
	.C(n1), 
	.B(n2), 
	.A(n3));
   NOR3X2M U4 (.Y(Logic_Enable), 
	.C(n2), 
	.B(ALU_FUN[1]), 
	.A(n3));
   NOR3X4M U5 (.Y(Arith_Enable), 
	.C(ALU_FUN[0]), 
	.B(ALU_FUN[1]), 
	.A(n3));
   NOR3X2M U6 (.Y(CMP_Enable), 
	.C(n1), 
	.B(ALU_FUN[0]), 
	.A(n3));
   INVX2M U7 (.Y(n1), 
	.A(ALU_FUN[1]));
   INVX2M U8 (.Y(n2), 
	.A(ALU_FUN[0]));
   INVX2M U9 (.Y(n3), 
	.A(Enable));
endmodule

module Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW_div_tc_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0);
   input [8:0] a;
   input [7:0] b;
   output [8:0] quotient;
   output [7:0] remainder;
   output divide_by_0;

   // Internal wires
   wire FE_OFN32_FE_RN_792_0;
   wire FE_OFN31_FE_RN_1170_0;
   wire FE_OFN30_u_div_AIncCry_1_;
   wire FE_RN_2010_0;
   wire FE_RN_2009_0;
   wire FE_RN_2008_0;
   wire FE_RN_2007_0;
   wire FE_RN_2006_0;
   wire FE_RN_2005_0;
   wire FE_RN_2004_0;
   wire FE_RN_1997_0;
   wire FE_RN_1996_0;
   wire FE_RN_1994_0;
   wire FE_RN_1993_0;
   wire FE_RN_1901_0;
   wire FE_RN_1829_0;
   wire FE_RN_1828_0;
   wire FE_RN_1827_0;
   wire FE_RN_1826_0;
   wire FE_RN_1808_0;
   wire FE_RN_1807_0;
   wire FE_RN_1806_0;
   wire FE_RN_1805_0;
   wire FE_RN_1803_0;
   wire FE_RN_1802_0;
   wire FE_RN_1801_0;
   wire FE_RN_1741_0;
   wire FE_RN_1740_0;
   wire FE_RN_1739_0;
   wire FE_RN_1738_0;
   wire FE_RN_1660_0;
   wire FE_RN_1659_0;
   wire FE_RN_1650_0;
   wire FE_RN_1648_0;
   wire FE_RN_1647_0;
   wire FE_RN_1646_0;
   wire FE_RN_1645_0;
   wire FE_RN_1644_0;
   wire FE_RN_1643_0;
   wire FE_RN_1625_0;
   wire FE_RN_1624_0;
   wire FE_RN_1623_0;
   wire FE_RN_1622_0;
   wire FE_RN_1621_0;
   wire FE_RN_1620_0;
   wire FE_RN_1619_0;
   wire FE_RN_1618_0;
   wire FE_RN_1617_0;
   wire FE_RN_1571_0;
   wire FE_RN_1570_0;
   wire FE_RN_1569_0;
   wire FE_RN_1568_0;
   wire FE_RN_1567_0;
   wire FE_RN_1566_0;
   wire FE_RN_1565_0;
   wire FE_RN_1564_0;
   wire FE_RN_1563_0;
   wire FE_RN_1562_0;
   wire FE_RN_1548_0;
   wire FE_RN_1547_0;
   wire FE_RN_1546_0;
   wire FE_RN_1545_0;
   wire FE_RN_1544_0;
   wire FE_RN_1541_0;
   wire FE_RN_1540_0;
   wire FE_RN_1539_0;
   wire FE_RN_1503_0;
   wire FE_RN_1502_0;
   wire FE_RN_1501_0;
   wire FE_RN_1500_0;
   wire FE_RN_1499_0;
   wire FE_RN_1498_0;
   wire FE_RN_1451_0;
   wire FE_RN_1450_0;
   wire FE_RN_1449_0;
   wire FE_RN_1389_0;
   wire FE_RN_1388_0;
   wire FE_RN_1387_0;
   wire FE_RN_1386_0;
   wire FE_RN_1384_0;
   wire FE_RN_1383_0;
   wire FE_RN_1382_0;
   wire FE_RN_1381_0;
   wire FE_RN_1379_0;
   wire FE_RN_1378_0;
   wire FE_RN_1377_0;
   wire FE_RN_1376_0;
   wire FE_RN_1375_0;
   wire FE_RN_1374_0;
   wire FE_RN_1359_0;
   wire FE_RN_1358_0;
   wire FE_RN_1357_0;
   wire FE_RN_1326_0;
   wire FE_RN_1325_0;
   wire FE_RN_1309_0;
   wire FE_RN_1308_0;
   wire FE_RN_1307_0;
   wire FE_RN_1306_0;
   wire FE_RN_1305_0;
   wire FE_RN_1304_0;
   wire FE_RN_1301_0;
   wire FE_RN_1300_0;
   wire FE_RN_1299_0;
   wire FE_RN_1298_0;
   wire FE_RN_1297_0;
   wire FE_RN_1296_0;
   wire FE_RN_1295_0;
   wire FE_RN_1294_0;
   wire FE_RN_1293_0;
   wire FE_RN_1292_0;
   wire FE_RN_1260_0;
   wire FE_RN_1258_0;
   wire FE_RN_1175_0;
   wire FE_RN_1174_0;
   wire FE_RN_1173_0;
   wire FE_RN_1172_0;
   wire FE_RN_1171_0;
   wire FE_RN_1170_0;
   wire FE_RN_1168_0;
   wire FE_RN_1167_0;
   wire FE_RN_1145_0;
   wire FE_RN_1144_0;
   wire FE_RN_1143_0;
   wire FE_RN_1142_0;
   wire FE_RN_1141_0;
   wire FE_RN_1140_0;
   wire FE_RN_1138_0;
   wire FE_RN_1137_0;
   wire FE_RN_1136_0;
   wire FE_RN_1135_0;
   wire FE_RN_1134_0;
   wire FE_RN_1133_0;
   wire FE_RN_1120_0;
   wire FE_RN_1119_0;
   wire FE_RN_1118_0;
   wire FE_RN_1117_0;
   wire FE_RN_1116_0;
   wire FE_RN_1115_0;
   wire FE_RN_1114_0;
   wire FE_RN_1113_0;
   wire FE_RN_1112_0;
   wire FE_RN_1106_0;
   wire FE_RN_1091_0;
   wire FE_RN_1090_0;
   wire FE_RN_1089_0;
   wire FE_RN_1088_0;
   wire FE_RN_1087_0;
   wire FE_RN_1068_0;
   wire FE_RN_1051_0;
   wire FE_RN_1050_0;
   wire FE_RN_1049_0;
   wire FE_RN_1048_0;
   wire FE_RN_1047_0;
   wire FE_RN_1046_0;
   wire FE_RN_1045_0;
   wire FE_RN_1044_0;
   wire FE_RN_1043_0;
   wire FE_RN_1041_0;
   wire FE_RN_1040_0;
   wire FE_RN_1038_0;
   wire FE_RN_1037_0;
   wire FE_RN_1029_0;
   wire FE_RN_1028_0;
   wire FE_RN_1024_0;
   wire FE_RN_1022_0;
   wire FE_RN_1021_0;
   wire FE_RN_1020_0;
   wire FE_RN_1019_0;
   wire FE_RN_1018_0;
   wire FE_RN_1017_0;
   wire FE_RN_1016_0;
   wire FE_RN_1015_0;
   wire FE_RN_1014_0;
   wire FE_RN_1013_0;
   wire FE_RN_1012_0;
   wire FE_RN_1011_0;
   wire FE_RN_1010_0;
   wire FE_RN_1008_0;
   wire FE_RN_1006_0;
   wire FE_RN_1005_0;
   wire FE_RN_976_0;
   wire FE_RN_975_0;
   wire FE_RN_973_0;
   wire FE_RN_972_0;
   wire FE_RN_971_0;
   wire FE_RN_970_0;
   wire FE_RN_969_0;
   wire FE_RN_966_0;
   wire FE_RN_957_0;
   wire FE_RN_956_0;
   wire FE_RN_955_0;
   wire FE_RN_954_0;
   wire FE_RN_952_0;
   wire FE_RN_951_0;
   wire FE_RN_949_0;
   wire FE_RN_948_0;
   wire FE_RN_947_0;
   wire FE_RN_946_0;
   wire FE_RN_943_0;
   wire FE_RN_942_0;
   wire FE_RN_941_0;
   wire FE_RN_939_0;
   wire FE_RN_937_0;
   wire FE_RN_935_0;
   wire FE_RN_934_0;
   wire FE_RN_933_0;
   wire FE_RN_932_0;
   wire FE_RN_930_0;
   wire FE_RN_929_0;
   wire FE_RN_928_0;
   wire FE_RN_925_0;
   wire FE_RN_924_0;
   wire FE_RN_923_0;
   wire FE_RN_922_0;
   wire FE_RN_920_0;
   wire FE_RN_919_0;
   wire FE_RN_918_0;
   wire FE_RN_917_0;
   wire FE_RN_916_0;
   wire FE_RN_915_0;
   wire FE_RN_914_0;
   wire FE_RN_913_0;
   wire FE_RN_912_0;
   wire FE_RN_910_0;
   wire FE_RN_909_0;
   wire FE_RN_907_0;
   wire FE_RN_906_0;
   wire FE_RN_905_0;
   wire FE_RN_904_0;
   wire FE_RN_903_0;
   wire FE_RN_902_0;
   wire FE_RN_901_0;
   wire FE_RN_900_0;
   wire FE_RN_899_0;
   wire FE_RN_898_0;
   wire FE_RN_897_0;
   wire FE_RN_896_0;
   wire FE_RN_895_0;
   wire FE_RN_894_0;
   wire FE_RN_893_0;
   wire FE_RN_892_0;
   wire FE_RN_891_0;
   wire FE_RN_888_0;
   wire FE_RN_887_0;
   wire FE_RN_886_0;
   wire FE_RN_882_0;
   wire FE_RN_881_0;
   wire FE_RN_880_0;
   wire FE_RN_879_0;
   wire FE_RN_878_0;
   wire FE_RN_876_0;
   wire FE_RN_871_0;
   wire FE_RN_870_0;
   wire FE_RN_869_0;
   wire FE_RN_867_0;
   wire FE_RN_866_0;
   wire FE_RN_865_0;
   wire FE_RN_864_0;
   wire FE_RN_863_0;
   wire FE_RN_862_0;
   wire FE_RN_861_0;
   wire FE_RN_860_0;
   wire FE_RN_859_0;
   wire FE_RN_858_0;
   wire FE_RN_857_0;
   wire FE_RN_856_0;
   wire FE_RN_855_0;
   wire FE_RN_853_0;
   wire FE_RN_852_0;
   wire FE_RN_851_0;
   wire FE_RN_850_0;
   wire FE_RN_849_0;
   wire FE_RN_848_0;
   wire FE_RN_844_0;
   wire FE_RN_819_0;
   wire FE_RN_818_0;
   wire FE_RN_816_0;
   wire FE_RN_815_0;
   wire FE_RN_814_0;
   wire FE_RN_813_0;
   wire FE_RN_812_0;
   wire FE_RN_811_0;
   wire FE_RN_809_0;
   wire FE_RN_808_0;
   wire FE_RN_807_0;
   wire FE_RN_806_0;
   wire FE_RN_804_0;
   wire FE_RN_802_0;
   wire FE_RN_801_0;
   wire FE_RN_800_0;
   wire FE_RN_799_0;
   wire FE_RN_798_0;
   wire FE_RN_797_0;
   wire FE_RN_796_0;
   wire FE_RN_795_0;
   wire FE_RN_794_0;
   wire FE_RN_793_0;
   wire FE_RN_792_0;
   wire FE_RN_791_0;
   wire FE_RN_790_0;
   wire FE_RN_789_0;
   wire FE_RN_788_0;
   wire FE_RN_787_0;
   wire FE_RN_786_0;
   wire FE_RN_785_0;
   wire FE_RN_783_0;
   wire FE_RN_782_0;
   wire FE_RN_780_0;
   wire FE_RN_779_0;
   wire FE_RN_778_0;
   wire FE_RN_777_0;
   wire FE_RN_775_0;
   wire FE_RN_774_0;
   wire FE_RN_772_0;
   wire FE_RN_771_0;
   wire FE_RN_770_0;
   wire FE_RN_769_0;
   wire FE_RN_768_0;
   wire FE_RN_767_0;
   wire FE_RN_766_0;
   wire FE_RN_765_0;
   wire FE_RN_764_0;
   wire FE_RN_763_0;
   wire FE_RN_762_0;
   wire FE_RN_761_0;
   wire FE_RN_760_0;
   wire FE_RN_759_0;
   wire FE_RN_758_0;
   wire FE_RN_756_0;
   wire FE_RN_755_0;
   wire FE_RN_754_0;
   wire FE_RN_753_0;
   wire FE_RN_752_0;
   wire FE_RN_751_0;
   wire FE_RN_748_0;
   wire FE_RN_747_0;
   wire FE_RN_746_0;
   wire FE_RN_745_0;
   wire FE_RN_744_0;
   wire FE_RN_743_0;
   wire FE_RN_741_0;
   wire FE_RN_740_0;
   wire FE_RN_739_0;
   wire FE_RN_738_0;
   wire FE_RN_737_0;
   wire FE_RN_736_0;
   wire FE_RN_734_0;
   wire FE_RN_733_0;
   wire FE_RN_732_0;
   wire FE_RN_731_0;
   wire FE_RN_730_0;
   wire FE_RN_729_0;
   wire FE_RN_725_0;
   wire FE_RN_724_0;
   wire FE_RN_723_0;
   wire FE_RN_722_0;
   wire FE_RN_721_0;
   wire FE_RN_720_0;
   wire FE_RN_718_0;
   wire FE_RN_717_0;
   wire FE_RN_716_0;
   wire FE_RN_715_0;
   wire FE_RN_714_0;
   wire FE_RN_711_0;
   wire FE_RN_710_0;
   wire FE_RN_709_0;
   wire FE_RN_706_0;
   wire FE_RN_705_0;
   wire FE_RN_704_0;
   wire FE_RN_700_0;
   wire FE_RN_699_0;
   wire FE_RN_698_0;
   wire FE_RN_697_0;
   wire FE_RN_695_0;
   wire FE_RN_694_0;
   wire FE_RN_693_0;
   wire FE_RN_691_0;
   wire FE_RN_690_0;
   wire FE_RN_689_0;
   wire FE_RN_688_0;
   wire FE_RN_687_0;
   wire FE_RN_685_0;
   wire FE_RN_684_0;
   wire FE_RN_683_0;
   wire FE_RN_682_0;
   wire FE_RN_658_0;
   wire FE_RN_657_0;
   wire FE_RN_656_0;
   wire FE_RN_655_0;
   wire FE_RN_653_0;
   wire FE_RN_651_0;
   wire FE_RN_650_0;
   wire FE_RN_647_0;
   wire FE_RN_646_0;
   wire FE_RN_645_0;
   wire FE_RN_644_0;
   wire FE_RN_643_0;
   wire FE_RN_642_0;
   wire FE_RN_641_0;
   wire FE_RN_640_0;
   wire FE_RN_638_0;
   wire FE_RN_637_0;
   wire FE_RN_635_0;
   wire FE_RN_634_0;
   wire FE_RN_633_0;
   wire FE_RN_631_0;
   wire FE_RN_628_0;
   wire FE_RN_627_0;
   wire FE_RN_626_0;
   wire FE_RN_623_0;
   wire FE_RN_622_0;
   wire FE_RN_621_0;
   wire FE_RN_620_0;
   wire FE_RN_619_0;
   wire FE_RN_618_0;
   wire FE_RN_617_0;
   wire FE_RN_616_0;
   wire FE_RN_614_0;
   wire FE_RN_613_0;
   wire FE_RN_612_0;
   wire FE_RN_611_0;
   wire FE_RN_610_0;
   wire FE_RN_609_0;
   wire FE_RN_608_0;
   wire FE_RN_607_0;
   wire FE_RN_606_0;
   wire FE_RN_605_0;
   wire FE_RN_604_0;
   wire FE_RN_603_0;
   wire FE_RN_602_0;
   wire FE_RN_601_0;
   wire FE_RN_600_0;
   wire FE_RN_599_0;
   wire FE_RN_596_0;
   wire FE_RN_594_0;
   wire FE_RN_593_0;
   wire FE_RN_592_0;
   wire FE_RN_591_0;
   wire FE_RN_589_0;
   wire FE_RN_567_0;
   wire FE_RN_566_0;
   wire FE_RN_565_0;
   wire FE_RN_564_0;
   wire FE_RN_563_0;
   wire FE_RN_562_0;
   wire FE_RN_561_0;
   wire FE_RN_560_0;
   wire FE_RN_558_0;
   wire FE_RN_557_0;
   wire FE_RN_556_0;
   wire FE_RN_555_0;
   wire FE_RN_554_0;
   wire FE_RN_553_0;
   wire FE_RN_552_0;
   wire FE_RN_551_0;
   wire FE_RN_549_0;
   wire FE_RN_548_0;
   wire FE_RN_547_0;
   wire FE_RN_546_0;
   wire FE_RN_544_0;
   wire FE_RN_543_0;
   wire FE_RN_542_0;
   wire FE_RN_541_0;
   wire FE_RN_540_0;
   wire FE_RN_539_0;
   wire FE_RN_538_0;
   wire FE_RN_537_0;
   wire FE_RN_536_0;
   wire FE_RN_534_0;
   wire FE_RN_533_0;
   wire FE_RN_532_0;
   wire FE_RN_531_0;
   wire FE_RN_530_0;
   wire FE_RN_529_0;
   wire FE_RN_527_0;
   wire FE_RN_525_0;
   wire FE_RN_520_0;
   wire FE_RN_519_0;
   wire FE_RN_516_0;
   wire FE_RN_360_0;
   wire FE_RN_359_0;
   wire FE_RN_357_0;
   wire FE_RN_356_0;
   wire FE_RN_354_0;
   wire FE_RN_353_0;
   wire FE_RN_352_0;
   wire FE_RN_350_0;
   wire FE_RN_349_0;
   wire FE_RN_347_0;
   wire FE_RN_343_0;
   wire FE_RN_342_0;
   wire FE_RN_341_0;
   wire FE_RN_340_0;
   wire FE_RN_339_0;
   wire FE_RN_338_0;
   wire FE_RN_337_0;
   wire FE_RN_335_0;
   wire FE_RN_333_0;
   wire FE_RN_332_0;
   wire FE_RN_330_0;
   wire FE_RN_329_0;
   wire FE_RN_327_0;
   wire FE_RN_326_0;
   wire FE_RN_325_0;
   wire FE_RN_324_0;
   wire FE_RN_322_0;
   wire FE_RN_321_0;
   wire FE_RN_320_0;
   wire FE_RN_319_0;
   wire FE_RN_318_0;
   wire FE_RN_317_0;
   wire FE_RN_316_0;
   wire FE_RN_315_0;
   wire FE_RN_314_0;
   wire FE_RN_313_0;
   wire FE_RN_312_0;
   wire FE_RN_311_0;
   wire FE_RN_310_0;
   wire FE_RN_309_0;
   wire FE_RN_308_0;
   wire FE_RN_305_0;
   wire FE_RN_304_0;
   wire FE_RN_303_0;
   wire FE_RN_257_0;
   wire FE_RN_256_0;
   wire FE_RN_255_0;
   wire FE_RN_254_0;
   wire FE_RN_252_0;
   wire FE_RN_251_0;
   wire FE_RN_250_0;
   wire FE_RN_249_0;
   wire FE_RN_248_0;
   wire FE_RN_247_0;
   wire FE_RN_246_0;
   wire FE_RN_245_0;
   wire FE_RN_242_0;
   wire FE_RN_241_0;
   wire FE_RN_240_0;
   wire FE_RN_238_0;
   wire FE_RN_236_0;
   wire FE_RN_206_0;
   wire FE_RN_205_0;
   wire FE_RN_204_0;
   wire FE_RN_202_0;
   wire FE_RN_201_0;
   wire FE_RN_199_0;
   wire FE_RN_198_0;
   wire FE_RN_197_0;
   wire FE_RN_196_0;
   wire FE_RN_195_0;
   wire FE_RN_194_0;
   wire FE_RN_193_0;
   wire FE_RN_192_0;
   wire FE_RN_191_0;
   wire FE_RN_188_0;
   wire FE_RN_187_0;
   wire FE_RN_185_0;
   wire FE_RN_184_0;
   wire FE_RN_183_0;
   wire FE_RN_177_0;
   wire FE_RN_176_0;
   wire FE_RN_174_0;
   wire FE_RN_172_0;
   wire FE_RN_138_0;
   wire FE_RN_137_0;
   wire FE_RN_136_0;
   wire FE_RN_135_0;
   wire FE_RN_134_0;
   wire FE_RN_133_0;
   wire FE_RN_132_0;
   wire FE_RN_131_0;
   wire FE_RN_130_0;
   wire FE_RN_129_0;
   wire FE_RN_128_0;
   wire FE_RN_127_0;
   wire FE_RN_126_0;
   wire FE_RN_125_0;
   wire FE_RN_124_0;
   wire FE_RN_123_0;
   wire FE_RN_122_0;
   wire FE_RN_121_0;
   wire FE_RN_120_0;
   wire FE_RN_119_0;
   wire FE_RN_118_0;
   wire FE_RN_117_0;
   wire FE_RN_116_0;
   wire FE_RN_115_0;
   wire FE_RN_114_0;
   wire FE_RN_112_0;
   wire FE_RN_111_0;
   wire FE_RN_110_0;
   wire FE_RN_107_0;
   wire FE_RN_106_0;
   wire FE_RN_105_0;
   wire FE_RN_102_0;
   wire FE_RN_101_0;
   wire FE_RN_100_0;
   wire FE_RN_99_0;
   wire FE_RN_98_0;
   wire FE_RN_97_0;
   wire FE_RN_91_0;
   wire FE_RN_89_0;
   wire FE_RN_88_0;
   wire FE_RN_87_0;
   wire FE_RN_86_0;
   wire FE_RN_85_0;
   wire FE_RN_84_0;
   wire FE_RN_82_0;
   wire FE_RN_80_0;
   wire FE_RN_79_0;
   wire FE_RN_78_0;
   wire FE_RN_77_0;
   wire FE_RN_76_0;
   wire FE_RN_75_0;
   wire FE_RN_66_0;
   wire FE_RN_65_0;
   wire FE_RN_64_0;
   wire FE_RN_63_0;
   wire FE_RN_62_0;
   wire FE_RN_60_0;
   wire FE_RN_58_0;
   wire FE_RN_57_0;
   wire FE_RN_56_0;
   wire FE_RN_55_0;
   wire FE_RN_54_0;
   wire FE_RN_53_0;
   wire FE_RN_51_0;
   wire FE_RN_50_0;
   wire FE_RN_49_0;
   wire FE_RN_48_0;
   wire FE_RN_47_0;
   wire FE_RN_46_0;
   wire FE_RN_45_0;
   wire FE_RN_44_0;
   wire FE_RN_43_0;
   wire FE_RN_42_0;
   wire FE_RN_41_0;
   wire FE_RN_40_0;
   wire FE_RN_39_0;
   wire FE_RN_38_0;
   wire FE_RN_36_0;
   wire FE_RN_35_0;
   wire FE_RN_31_0;
   wire FE_RN_30_0;
   wire FE_RN_29_0;
   wire FE_RN_26_0;
   wire FE_RN_25_0;
   wire FE_RN_24_0;
   wire FE_RN_23_0;
   wire FE_RN_22_0;
   wire FE_RN_21_0;
   wire FE_RN_20_0;
   wire FE_RN_19_0;
   wire FE_RN_18_0;
   wire FE_RN_16_0;
   wire FE_RN_15_0;
   wire FE_RN_14_0;
   wire FE_RN_13_0;
   wire FE_RN_12_0;
   wire FE_RN_9_0;
   wire FE_RN_5_0;
   wire FE_RN_1_0;
   wire FE_OFN28_u_div_CryTmp_2__7_;
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[2][6] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[3][5] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[4][4] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[5][3] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[6][2] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/SumTmp[8][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][0] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[2][0] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[2][7] ;
   wire \u_div/PartRem[3][0] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[3][6] ;
   wire \u_div/PartRem[4][0] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[4][5] ;
   wire \u_div/PartRem[5][0] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[5][4] ;
   wire \u_div/PartRem[6][0] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[6][3] ;
   wire \u_div/PartRem[7][1] ;
   wire \u_div/PartRem[7][2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire [8:0] \u_div/QIncCry ;
   wire [8:0] \u_div/QInv ;
   wire [1:0] \u_div/QAbs ;
   wire [7:0] \u_div/BInv ;
   wire [8:1] \u_div/AIncCry ;
   wire [7:0] \u_div/AInv ;

   BUFX10M FE_OFC32_FE_RN_792_0 (.Y(FE_OFN32_FE_RN_792_0), 
	.A(FE_RN_792_0));
   BUFX6M FE_OFC31_FE_RN_1170_0 (.Y(FE_OFN31_FE_RN_1170_0), 
	.A(FE_RN_1170_0));
   BUFX4M FE_OFC30_u_div_AIncCry_1_ (.Y(FE_OFN30_u_div_AIncCry_1_), 
	.A(\u_div/AIncCry [1]));
   CLKINVX2M FE_RC_2789_0 (.Y(FE_RN_2010_0), 
	.A(FE_RN_2007_0));
   NAND2BX4M FE_RC_2788_0 (.Y(\u_div/PartRem[3][6] ), 
	.B(FE_RN_2010_0), 
	.AN(FE_RN_2005_0));
   INVX2M FE_RC_2787_0 (.Y(FE_RN_2009_0), 
	.A(FE_RN_2005_0));
   INVX2M FE_RC_2786_0 (.Y(FE_RN_2008_0), 
	.A(\u_div/BInv [6]));
   NAND3BX2M FE_RC_2785_0 (.Y(FE_RN_729_0), 
	.C(FE_RN_2008_0), 
	.B(FE_RN_2009_0), 
	.AN(FE_RN_2007_0));
   AND2X2M FE_RC_2784_0 (.Y(FE_RN_2007_0), 
	.B(n14), 
	.A(\u_div/SumTmp[3][5] ));
   INVX2M FE_RC_2783_0 (.Y(FE_RN_2006_0), 
	.A(FE_RN_2007_0));
   NOR2BX2M FE_RC_2782_0 (.Y(FE_RN_2005_0), 
	.B(n14), 
	.AN(\u_div/PartRem[4][5] ));
   NOR2X2M FE_RC_2781_0 (.Y(FE_RN_2004_0), 
	.B(\u_div/BInv [6]), 
	.A(FE_RN_2005_0));
   AOI21X4M FE_RC_2780_0 (.Y(FE_RN_1567_0), 
	.B0(FE_RN_1568_0), 
	.A1(FE_RN_2004_0), 
	.A0(FE_RN_2006_0));
   INVX2M FE_RC_2770_0 (.Y(FE_RN_1997_0), 
	.A(\u_div/PartRem[4][4] ));
   OAI2BB2X2M FE_RC_2769_0 (.Y(\u_div/PartRem[3][5] ), 
	.B1(n14), 
	.B0(FE_RN_1997_0), 
	.A1N(\u_div/SumTmp[3][4] ), 
	.A0N(n14));
   AND2X2M FE_RC_2768_0 (.Y(FE_RN_721_0), 
	.B(\u_div/BInv [5]), 
	.A(FE_RN_1993_0));
   NAND2BX2M FE_RC_2767_0 (.Y(FE_RN_1996_0), 
	.B(n14), 
	.AN(\u_div/SumTmp[3][4] ));
   OAI211X2M FE_RC_2766_0 (.Y(FE_RN_720_0), 
	.C0(\u_div/BInv [5]), 
	.B0(FE_RN_1996_0), 
	.A1(n14), 
	.A0(\u_div/PartRem[4][4] ));
   NAND2X2M FE_RC_2764_0 (.Y(FE_RN_1994_0), 
	.B(n14), 
	.A(\u_div/SumTmp[3][4] ));
   OAI21X2M FE_RC_2763_0 (.Y(FE_RN_1993_0), 
	.B0(FE_RN_1994_0), 
	.A1(n14), 
	.A0(FE_RN_1997_0));
   AND2X2M FE_RC_2762_0 (.Y(FE_RN_731_0), 
	.B(\u_div/BInv [5]), 
	.A(FE_RN_1993_0));
   CLKNAND2X2M FE_RC_2622_0 (.Y(FE_RN_332_0), 
	.B(FE_RN_247_0), 
	.A(FE_RN_333_0));
   AOI31X2M FE_RC_2621_0 (.Y(FE_RN_1901_0), 
	.B0(FE_RN_303_0), 
	.A2(FE_RN_247_0), 
	.A1(FE_RN_333_0), 
	.A0(FE_RN_309_0));
   NOR2X4M FE_RC_2620_0 (.Y(FE_RN_330_0), 
	.B(FE_RN_340_0), 
	.A(FE_RN_1901_0));
   AND3X6M FE_RC_2505_0 (.Y(FE_RN_80_0), 
	.C(FE_RN_39_0), 
	.B(FE_RN_82_0), 
	.A(FE_RN_54_0));
   CLKNAND2X2M FE_RC_2501_0 (.Y(FE_RN_547_0), 
	.B(FE_RN_1828_0), 
	.A(FE_RN_548_0));
   NAND2X2M FE_RC_2500_0 (.Y(FE_RN_546_0), 
	.B(FE_RN_1827_0), 
	.A(FE_RN_544_0));
   NAND3BX4M FE_RC_2499_0 (.Y(FE_RN_1540_0), 
	.C(FE_RN_1826_0), 
	.B(FE_RN_539_0), 
	.AN(FE_RN_1541_0));
   INVX2M FE_RC_2498_0 (.Y(FE_RN_1829_0), 
	.A(FE_RN_1137_0));
   NAND2BX4M FE_RC_2497_0 (.Y(FE_RN_1828_0), 
	.B(FE_RN_1829_0), 
	.AN(FE_RN_519_0));
   NAND2X4M FE_RC_2496_0 (.Y(FE_RN_1827_0), 
	.B(FE_RN_548_0), 
	.A(FE_RN_1828_0));
   NAND2X2M FE_RC_2495_0 (.Y(FE_RN_1826_0), 
	.B(FE_RN_544_0), 
	.A(FE_RN_1827_0));
   NAND2X4M FE_RC_2493_0 (.Y(FE_RN_1539_0), 
	.B(FE_RN_621_0), 
	.A(FE_RN_1540_0));
   INVX2M FE_RC_2469_0 (.Y(FE_RN_1808_0), 
	.A(\u_div/PartRem[5][3] ));
   INVX2M FE_RC_2468_0 (.Y(FE_RN_1807_0), 
	.A(\u_div/SumTmp[4][3] ));
   MXI2X2M FE_RC_2467_0 (.Y(\u_div/PartRem[4][4] ), 
	.S0(n13), 
	.B(FE_RN_1807_0), 
	.A(FE_RN_1808_0));
   INVX2M FE_RC_2466_0 (.Y(FE_RN_1806_0), 
	.A(\u_div/SumTmp[4][3] ));
   CLKNAND2X2M FE_RC_2465_0 (.Y(FE_RN_1805_0), 
	.B(n13), 
	.A(FE_RN_1806_0));
   OAI211X4M FE_RC_2464_0 (.Y(FE_RN_594_0), 
	.C0(\u_div/BInv [4]), 
	.B0(FE_RN_1805_0), 
	.A1(n13), 
	.A0(\u_div/PartRem[5][3] ));
   INVX2M FE_RC_2462_0 (.Y(FE_RN_1803_0), 
	.A(\u_div/BInv [4]));
   AOI2B1X2M FE_RC_2461_0 (.Y(FE_RN_1802_0), 
	.B0(FE_RN_1803_0), 
	.A1N(\u_div/SumTmp[4][3] ), 
	.A0(n13));
   INVX2M FE_RC_2460_0 (.Y(FE_RN_1801_0), 
	.A(FE_RN_1305_0));
   OAI2B11X2M FE_RC_2459_0 (.Y(FE_RN_596_0), 
	.C0(FE_RN_1801_0), 
	.B0(FE_RN_1802_0), 
	.A1N(FE_RN_1808_0), 
	.A0(n13));
   NAND2X4M FE_RC_2362_0 (.Y(FE_RN_1088_0), 
	.B(FE_RN_199_0), 
	.A(FE_RN_196_0));
   CLKNAND2X8M FE_RC_2361_0 (.Y(FE_RN_202_0), 
	.B(FE_RN_204_0), 
	.A(FE_RN_1740_0));
   CLKINVX2M FE_RC_2360_0 (.Y(n11), 
	.A(FE_RN_1739_0));
   MXI2X6M FE_RC_2359_0 (.Y(FE_RN_240_0), 
	.S0(FE_RN_1739_0), 
	.B(FE_RN_242_0), 
	.A(FE_RN_241_0));
   INVX2M FE_RC_2358_0 (.Y(FE_RN_1741_0), 
	.A(FE_RN_242_0));
   NAND2X4M FE_RC_2357_0 (.Y(FE_RN_1740_0), 
	.B(FE_RN_196_0), 
	.A(FE_RN_199_0));
   NAND2X5M FE_RC_2356_0 (.Y(FE_RN_1739_0), 
	.B(FE_RN_204_0), 
	.A(FE_RN_1740_0));
   NAND2X4M FE_RC_2355_0 (.Y(FE_RN_1738_0), 
	.B(FE_RN_1741_0), 
	.A(FE_RN_1739_0));
   OAI211X8M FE_RC_2354_0 (.Y(FE_RN_238_0), 
	.C0(FE_RN_912_0), 
	.B0(FE_RN_1738_0), 
	.A1(FE_RN_241_0), 
	.A0(FE_RN_1739_0));
   NAND2X2M FE_RC_2229_0 (.Y(FE_RN_1660_0), 
	.B(FE_RN_942_0), 
	.A(FE_RN_946_0));
   NAND2X4M FE_RC_2228_0 (.Y(FE_RN_1659_0), 
	.B(FE_RN_952_0), 
	.A(FE_RN_1660_0));
   NAND3X6M FE_RC_2227_0 (.Y(FE_RN_973_0), 
	.C(FE_RN_969_0), 
	.B(FE_RN_966_0), 
	.A(FE_RN_1659_0));
   NAND3X4M FE_RC_2216_0 (.Y(FE_RN_966_0), 
	.C(FE_RN_937_0), 
	.B(FE_RN_941_0), 
	.A(FE_RN_952_0));
   CLKXOR2X2M FE_RC_2210_0 (.Y(\u_div/QInv [1]), 
	.B(n9), 
	.A(\u_div/QAbs [1]));
   CLKNAND2X2M FE_RC_2209_0 (.Y(FE_RN_1650_0), 
	.B(n9), 
	.A(\u_div/QAbs [1]));
   OAI211X2M FE_RC_2208_0 (.Y(FE_RN_1005_0), 
	.C0(FE_RN_1650_0), 
	.B0(\u_div/QInv [2]), 
	.A1(n9), 
	.A0(\u_div/QAbs [1]));
   NAND4X2M FE_RC_2206_0 (.Y(FE_RN_1015_0), 
	.D(FE_RN_1016_0), 
	.C(\u_div/QInv [3]), 
	.B(\u_div/QInv [2]), 
	.A(\u_div/QInv [1]));
   INVX2M FE_RC_2205_0 (.Y(FE_RN_1648_0), 
	.A(FE_RN_1644_0));
   NOR2X2M FE_RC_2204_0 (.Y(FE_RN_1647_0), 
	.B(\u_div/QAbs [1]), 
	.A(FE_RN_1648_0));
   INVX2M FE_RC_2203_0 (.Y(FE_RN_1646_0), 
	.A(FE_RN_1016_0));
   NOR2BX2M FE_RC_2202_0 (.Y(FE_RN_1645_0), 
	.B(FE_RN_1646_0), 
	.AN(\u_div/QInv [3]));
   AND2X2M FE_RC_2201_0 (.Y(FE_RN_1644_0), 
	.B(\u_div/QInv [2]), 
	.A(FE_RN_1645_0));
   NAND3BX2M FE_RC_2200_0 (.Y(FE_RN_1643_0), 
	.C(FE_RN_1644_0), 
	.B(\u_div/QAbs [1]), 
	.AN(n9));
   OAI2BB1X2M FE_RC_2199_0 (.Y(FE_RN_1014_0), 
	.B0(FE_RN_1643_0), 
	.A1N(FE_RN_1647_0), 
	.A0N(n9));
   INVX2M FE_RC_2170_0 (.Y(FE_RN_1625_0), 
	.A(FE_RN_886_0));
   NAND4X4M FE_RC_2169_0 (.Y(FE_RN_880_0), 
	.D(FE_RN_1625_0), 
	.C(FE_RN_852_0), 
	.B(FE_RN_849_0), 
	.A(FE_RN_881_0));
   NAND2X2M FE_RC_2168_0 (.Y(FE_RN_789_0), 
	.B(FE_RN_790_0), 
	.A(FE_RN_794_0));
   CLKINVX2M FE_RC_2167_0 (.Y(FE_RN_806_0), 
	.A(FE_RN_1621_0));
   INVX2M FE_RC_2166_0 (.Y(FE_RN_1624_0), 
	.A(FE_RN_790_0));
   INVX2M FE_RC_2165_0 (.Y(FE_RN_1623_0), 
	.A(FE_RN_794_0));
   NOR2X3M FE_RC_2164_0 (.Y(FE_RN_1622_0), 
	.B(FE_RN_1624_0), 
	.A(FE_RN_1623_0));
   NAND2X2M FE_RC_2163_0 (.Y(FE_RN_876_0), 
	.B(FE_RN_804_0), 
	.A(FE_RN_1622_0));
   NAND2X4M FE_RC_2162_0 (.Y(FE_RN_904_0), 
	.B(FE_RN_1618_0), 
	.A(FE_RN_882_0));
   CLKNAND2X4M FE_RC_2161_0 (.Y(FE_RN_1621_0), 
	.B(FE_RN_794_0), 
	.A(FE_RN_790_0));
   INVX2M FE_RC_2160_0 (.Y(FE_RN_1620_0), 
	.A(FE_RN_1621_0));
   NAND2X4M FE_RC_2159_0 (.Y(FE_RN_1619_0), 
	.B(FE_RN_804_0), 
	.A(FE_RN_1620_0));
   NAND2X4M FE_RC_2158_0 (.Y(FE_RN_1618_0), 
	.B(FE_RN_807_0), 
	.A(FE_RN_1619_0));
   NAND2X4M FE_RC_2157_0 (.Y(FE_RN_1617_0), 
	.B(FE_RN_882_0), 
	.A(FE_RN_1618_0));
   NAND4X12M FE_RC_2156_0 (.Y(\u_div/QAbs [1]), 
	.D(FE_RN_916_0), 
	.C(FE_RN_849_0), 
	.B(FE_RN_917_0), 
	.A(FE_RN_1617_0));
   INVX2M FE_RC_2079_0 (.Y(FE_RN_1571_0), 
	.A(n14));
   AO22X4M FE_RC_2078_0 (.Y(\u_div/PartRem[3][4] ), 
	.B1(\u_div/SumTmp[3][3] ), 
	.B0(n14), 
	.A1(FE_RN_1571_0), 
	.A0(\u_div/PartRem[4][3] ));
   INVX2M FE_RC_2077_0 (.Y(FE_RN_1570_0), 
	.A(FE_RN_1803_0));
   NAND2BX2M FE_RC_2076_0 (.Y(FE_RN_1569_0), 
	.B(FE_RN_1565_0), 
	.AN(FE_RN_1570_0));
   NAND3BX2M FE_RC_2075_0 (.Y(FE_RN_716_0), 
	.C(FE_RN_1569_0), 
	.B(FE_RN_682_0), 
	.AN(FE_RN_717_0));
   INVX2M FE_RC_2074_0 (.Y(FE_RN_1568_0), 
	.A(FE_RN_718_0));
   INVX2M FE_RC_2072_0 (.Y(FE_RN_1566_0), 
	.A(n14));
   OAI22X1M FE_RC_2071_0 (.Y(FE_RN_1565_0), 
	.B1(\u_div/PartRem[4][3] ), 
	.B0(n14), 
	.A1(FE_RN_1566_0), 
	.A0(\u_div/SumTmp[3][3] ));
   AOI21X3M FE_RC_2070_0 (.Y(FE_RN_1564_0), 
	.B0(FE_RN_717_0), 
	.A1(FE_RN_1803_0), 
	.A0(FE_RN_1565_0));
   NAND2X4M FE_RC_2069_0 (.Y(FE_RN_1563_0), 
	.B(FE_RN_682_0), 
	.A(FE_RN_1564_0));
   NAND2X6M FE_RC_2068_0 (.Y(FE_RN_1562_0), 
	.B(FE_RN_715_0), 
	.A(FE_RN_1563_0));
   NAND2X6M FE_RC_2067_0 (.Y(FE_RN_748_0), 
	.B(FE_RN_1567_0), 
	.A(FE_RN_1562_0));
   INVX2M FE_RC_2048_0 (.Y(FE_RN_1548_0), 
	.A(FE_RN_691_0));
   MXI2X2M FE_RC_2047_0 (.Y(FE_RN_689_0), 
	.S0(FE_RN_690_0), 
	.B(FE_RN_1548_0), 
	.A(\u_div/PartRem[4][2] ));
   NAND2X2M FE_RC_2046_0 (.Y(FE_RN_1547_0), 
	.B(FE_RN_690_0), 
	.A(FE_RN_691_0));
   INVX2M FE_RC_2045_0 (.Y(FE_RN_1546_0), 
	.A(\u_div/PartRem[4][2] ));
   INVX2M FE_RC_2044_0 (.Y(FE_RN_1545_0), 
	.A(FE_RN_690_0));
   NAND2X2M FE_RC_2043_0 (.Y(FE_RN_1544_0), 
	.B(FE_RN_1546_0), 
	.A(FE_RN_1545_0));
   NAND3X4M FE_RC_2042_0 (.Y(FE_RN_695_0), 
	.C(\u_div/BInv [3]), 
	.B(FE_RN_1547_0), 
	.A(FE_RN_1544_0));
   NAND3X2M FE_RC_2038_0 (.Y(FE_RN_591_0), 
	.C(FE_RN_546_0), 
	.B(FE_RN_551_0), 
	.A(FE_RN_539_0));
   NAND2X2M FE_RC_2037_0 (.Y(FE_RN_620_0), 
	.B(FE_RN_1540_0), 
	.A(FE_RN_621_0));
   INVX2M FE_RC_2036_0 (.Y(FE_RN_1541_0), 
	.A(FE_RN_551_0));
   NAND2X8M FE_RC_2033_0 (.Y(n14), 
	.B(FE_RN_617_0), 
	.A(FE_RN_1539_0));
   CLKNAND2X2M FE_RC_1980_0 (.Y(\u_div/CryTmp[4][4] ), 
	.B(FE_RN_1133_0), 
	.A(FE_RN_1140_0));
   NAND2X12M FE_RC_1979_0 (.Y(n13), 
	.B(FE_RN_1499_0), 
	.A(FE_OFN31_FE_RN_1170_0));
   INVX2M FE_RC_1978_0 (.Y(FE_RN_1503_0), 
	.A(\u_div/PartRem[5][1] ));
   INVX2M FE_RC_1977_0 (.Y(FE_RN_1502_0), 
	.A(\u_div/SumTmp[4][1] ));
   NAND2X4M FE_RC_1976_0 (.Y(FE_RN_1501_0), 
	.B(FE_RN_1140_0), 
	.A(FE_RN_1133_0));
   AND2X4M FE_RC_1975_0 (.Y(FE_RN_1500_0), 
	.B(n20), 
	.A(FE_RN_1167_0));
   NAND2X4M FE_RC_1974_0 (.Y(FE_RN_1499_0), 
	.B(FE_RN_1501_0), 
	.A(FE_RN_1500_0));
   NAND2X2M FE_RC_1973_0 (.Y(FE_RN_1498_0), 
	.B(FE_OFN31_FE_RN_1170_0), 
	.A(FE_RN_1499_0));
   MXI2X2M FE_RC_1972_0 (.Y(\u_div/PartRem[4][2] ), 
	.S0(FE_RN_1498_0), 
	.B(FE_RN_1502_0), 
	.A(FE_RN_1503_0));
   NAND2X4M FE_RC_1896_0 (.Y(\u_div/PartRem[6][1] ), 
	.B(FE_RN_1451_0), 
	.A(FE_RN_1090_0));
   NAND2X4M FE_RC_1895_0 (.Y(FE_RN_1451_0), 
	.B(FE_RN_1089_0), 
	.A(FE_RN_1087_0));
   NAND2X4M FE_RC_1894_0 (.Y(FE_RN_1450_0), 
	.B(FE_RN_1090_0), 
	.A(FE_RN_1451_0));
   NAND2X4M FE_RC_1893_0 (.Y(FE_RN_311_0), 
	.B(FE_RN_236_0), 
	.A(FE_RN_1450_0));
   NAND2BX12M FE_RC_1892_0 (.Y(FE_RN_314_0), 
	.B(\u_div/BInv [3]), 
	.AN(FE_RN_305_0));
   INVX2M FE_RC_1891_0 (.Y(FE_RN_1449_0), 
	.A(\u_div/BInv [3]));
   NOR2X2M FE_RC_1890_0 (.Y(FE_RN_313_0), 
	.B(FE_RN_1449_0), 
	.A(FE_RN_305_0));
   XNOR2X2M FE_RC_1795_0 (.Y(FE_RN_1389_0), 
	.B(n7), 
	.A(\u_div/AInv [6]));
   CLKNAND2X2M FE_RC_1794_0 (.Y(FE_RN_1388_0), 
	.B(\u_div/BInv [0]), 
	.A(FE_RN_1389_0));
   OAI21X2M FE_RC_1793_0 (.Y(FE_RN_1387_0), 
	.B0(FE_RN_1388_0), 
	.A1(\u_div/BInv [0]), 
	.A0(FE_RN_1389_0));
   XNOR2X2M FE_RC_1792_0 (.Y(\u_div/SumTmp[6][0] ), 
	.B(FE_RN_1387_0), 
	.A(FE_RN_1383_0));
   CLKNAND2X2M FE_RC_1791_0 (.Y(FE_RN_1386_0), 
	.B(n7), 
	.A(\u_div/BInv [0]));
   NAND2BX2M FE_RC_1789_0 (.Y(FE_RN_1384_0), 
	.B(FE_RN_89_0), 
	.AN(\u_div/BInv [0]));
   CLKNAND2X2M FE_RC_1788_0 (.Y(FE_RN_1383_0), 
	.B(FE_OFN30_u_div_AIncCry_1_), 
	.A(FE_RN_84_0));
   XNOR2X2M FE_RC_1787_0 (.Y(FE_RN_1382_0), 
	.B(\u_div/AInv [6]), 
	.A(FE_RN_1383_0));
   CLKNAND2X2M FE_RC_1786_0 (.Y(FE_RN_1381_0), 
	.B(FE_RN_1384_0), 
	.A(FE_RN_1382_0));
   CLKNAND2X2M FE_RC_1785_0 (.Y(\u_div/CryTmp[6][1] ), 
	.B(FE_RN_1386_0), 
	.A(FE_RN_1381_0));
   CLKBUFX2M FE_RC_1781_0 (.Y(FE_RN_40_0), 
	.A(\u_div/AInv [3]));
   AND2X4M FE_RC_1780_0 (.Y(FE_RN_54_0), 
	.B(\u_div/AInv [4]), 
	.A(\u_div/AInv [3]));
   INVX2M FE_RC_1779_0 (.Y(FE_RN_1379_0), 
	.A(b[0]));
   CLKNAND2X4M FE_RC_1778_0 (.Y(FE_RN_1378_0), 
	.B(n7), 
	.A(FE_RN_1379_0));
   NAND2BX4M FE_RC_1777_0 (.Y(FE_RN_1377_0), 
	.B(b[0]), 
	.AN(n7));
   NAND2X8M FE_RC_1776_0 (.Y(\u_div/BInv [0]), 
	.B(FE_RN_1378_0), 
	.A(FE_RN_1377_0));
   INVX2M FE_RC_1775_0 (.Y(FE_RN_1376_0), 
	.A(b[0]));
   INVX2M FE_RC_1774_0 (.Y(FE_RN_1375_0), 
	.A(b[0]));
   CLKNAND2X2M FE_RC_1773_0 (.Y(FE_RN_1374_0), 
	.B(n7), 
	.A(FE_RN_1375_0));
   OAI211X2M FE_RC_1772_0 (.Y(FE_RN_77_0), 
	.C0(FE_RN_78_0), 
	.B0(FE_RN_1374_0), 
	.A1(n7), 
	.A0(FE_RN_1376_0));
   INVX2M FE_RC_1754_0 (.Y(FE_RN_1359_0), 
	.A(\u_div/QInv [2]));
   NAND3X2M FE_RC_1753_0 (.Y(FE_RN_1358_0), 
	.C(FE_RN_1359_0), 
	.B(\u_div/QIncCry [1]), 
	.A(\u_div/QInv [1]));
   NAND2BX2M FE_RC_1752_0 (.Y(FE_RN_1357_0), 
	.B(\u_div/QInv [2]), 
	.AN(\u_div/QInv [1]));
   OAI2B11X2M FE_RC_1751_0 (.Y(quotient[2]), 
	.C0(FE_RN_1357_0), 
	.B0(FE_RN_1358_0), 
	.A1N(\u_div/QInv [2]), 
	.A0(\u_div/QIncCry [1]));
   CLKNAND2X12M FE_RC_1698_0 (.Y(FE_RN_849_0), 
	.B(FE_RN_850_0), 
	.A(\u_div/BInv [6]));
   INVX2M FE_RC_1697_0 (.Y(FE_RN_1326_0), 
	.A(FE_RN_891_0));
   OAI2BB1X2M FE_RC_1696_0 (.Y(FE_RN_1325_0), 
	.B0(FE_RN_1326_0), 
	.A1N(FE_RN_850_0), 
	.A0N(\u_div/BInv [6]));
   NAND3BX4M FE_RC_1695_0 (.Y(FE_RN_909_0), 
	.C(FE_RN_910_0), 
	.B(FE_RN_904_0), 
	.AN(FE_RN_1325_0));
   NAND2X2M FE_RC_1694_0 (.Y(FE_RN_905_0), 
	.B(FE_RN_876_0), 
	.A(FE_RN_807_0));
   NAND2X5M FE_RC_1668_0 (.Y(FE_RN_851_0), 
	.B(\u_div/PartRem[2][5] ), 
	.A(\u_div/BInv [5]));
   CLKNAND2X2M FE_RC_1667_0 (.Y(FE_RN_853_0), 
	.B(FE_RN_1307_0), 
	.A(FE_RN_2008_0));
   CLKNAND2X2M FE_RC_1666_0 (.Y(FE_RN_852_0), 
	.B(FE_RN_1306_0), 
	.A(\u_div/PartRem[2][6] ));
   INVX2M FE_RC_1665_0 (.Y(FE_RN_1309_0), 
	.A(\u_div/PartRem[2][6] ));
   INVX2M FE_RC_1664_0 (.Y(FE_RN_1308_0), 
	.A(FE_RN_1306_0));
   NOR2X3M FE_RC_1663_0 (.Y(FE_RN_892_0), 
	.B(FE_RN_1309_0), 
	.A(FE_RN_1308_0));
   NAND2X2M FE_RC_1662_0 (.Y(FE_RN_1307_0), 
	.B(\u_div/BInv [5]), 
	.A(\u_div/PartRem[2][5] ));
   NAND2X2M FE_RC_1661_0 (.Y(FE_RN_1306_0), 
	.B(FE_RN_2008_0), 
	.A(FE_RN_1307_0));
   CLKNAND2X2M FE_RC_1660_0 (.Y(FE_RN_916_0), 
	.B(FE_RN_1306_0), 
	.A(\u_div/PartRem[2][6] ));
   INVX2M FE_RC_1659_0 (.Y(FE_RN_1305_0), 
	.A(\u_div/BInv [5]));
   NAND2BX2M FE_RC_1658_0 (.Y(FE_RN_848_0), 
	.B(FE_RN_1305_0), 
	.AN(\u_div/PartRem[2][5] ));
   INVX2M FE_RC_1657_0 (.Y(FE_RN_1304_0), 
	.A(FE_RN_1295_0));
   NAND2BX2M FE_RC_1656_0 (.Y(\u_div/PartRem[2][6] ), 
	.B(FE_RN_1304_0), 
	.AN(FE_RN_1299_0));
   NAND3X2M FE_RC_1653_0 (.Y(FE_RN_844_0), 
	.C(FE_RN_1304_0), 
	.B(FE_RN_1298_0), 
	.A(FE_RN_2008_0));
   NAND2X2M FE_RC_1652_0 (.Y(FE_RN_1301_0), 
	.B(\u_div/BInv [5]), 
	.A(FE_RN_1293_0));
   INVX2M FE_RC_1651_0 (.Y(FE_RN_1300_0), 
	.A(\u_div/SumTmp[2][5] ));
   NOR2BX4M FE_RC_1650_0 (.Y(FE_RN_1299_0), 
	.B(FE_RN_1300_0), 
	.AN(FE_OFN28_u_div_CryTmp_2__7_));
   INVX2M FE_RC_1649_0 (.Y(FE_RN_1298_0), 
	.A(FE_RN_1299_0));
   INVX2M FE_RC_1648_0 (.Y(FE_RN_1297_0), 
	.A(FE_RN_2008_0));
   INVX2M FE_RC_1647_0 (.Y(FE_RN_1296_0), 
	.A(\u_div/PartRem[3][5] ));
   NOR2X2M FE_RC_1646_0 (.Y(FE_RN_1295_0), 
	.B(FE_OFN28_u_div_CryTmp_2__7_), 
	.A(FE_RN_1296_0));
   NOR2X2M FE_RC_1645_0 (.Y(FE_RN_1294_0), 
	.B(FE_RN_1297_0), 
	.A(FE_RN_1295_0));
   NAND2X2M FE_RC_1644_0 (.Y(FE_RN_1293_0), 
	.B(FE_RN_1298_0), 
	.A(FE_RN_1294_0));
   CLKNAND2X2M FE_RC_1643_0 (.Y(FE_RN_1292_0), 
	.B(\u_div/PartRem[2][5] ), 
	.A(FE_RN_1293_0));
   NAND2X2M FE_RC_1642_0 (.Y(FE_RN_882_0), 
	.B(FE_RN_1301_0), 
	.A(FE_RN_1292_0));
   INVX2M FE_RC_1599_0 (.Y(FE_RN_793_0), 
	.A(FE_RN_1260_0));
   OAI2B1X8M FE_RC_1598_0 (.Y(FE_RN_795_0), 
	.B0(\u_div/BInv [3]), 
	.A1N(FE_RN_1260_0), 
	.A0(FE_OFN32_FE_RN_792_0));
   CLKNAND2X12M FE_RC_1597_0 (.Y(FE_RN_1260_0), 
	.B(FE_OFN28_u_div_CryTmp_2__7_), 
	.A(\u_div/SumTmp[2][2] ));
   CLKNAND2X2M FE_RC_1595_0 (.Y(FE_RN_1258_0), 
	.B(\u_div/BInv [3]), 
	.A(FE_OFN32_FE_RN_792_0));
   OAI21X2M FE_RC_1594_0 (.Y(FE_RN_808_0), 
	.B0(FE_RN_1258_0), 
	.A1(FE_RN_1449_0), 
	.A0(FE_RN_1260_0));
   XOR2X2M FE_RC_1457_0 (.Y(FE_RN_1175_0), 
	.B(\u_div/BInv [4]), 
	.A(\u_div/PartRem[5][4] ));
   NAND2BX4M FE_RC_1456_0 (.Y(FE_RN_1174_0), 
	.B(FE_RN_1175_0), 
	.AN(\u_div/CryTmp[4][4] ));
   NAND2X2M FE_RC_1455_0 (.Y(FE_RN_1173_0), 
	.B(\u_div/BInv [4]), 
	.A(\u_div/PartRem[5][4] ));
   CLKNAND2X2M FE_RC_1454_0 (.Y(FE_RN_1172_0), 
	.B(FE_RN_1167_0), 
	.A(FE_RN_1173_0));
   CLKNAND2X2M FE_RC_1453_0 (.Y(FE_RN_1171_0), 
	.B(\u_div/CryTmp[4][4] ), 
	.A(FE_RN_1172_0));
   NAND2X4M FE_RC_1452_0 (.Y(\u_div/SumTmp[4][4] ), 
	.B(FE_RN_1174_0), 
	.A(FE_RN_1171_0));
   NAND3X2M FE_RC_1451_0 (.Y(FE_RN_1170_0), 
	.C(n20), 
	.B(\u_div/BInv [4]), 
	.A(\u_div/PartRem[5][4] ));
   INVX2M FE_RC_1449_0 (.Y(FE_RN_1168_0), 
	.A(\u_div/PartRem[5][4] ));
   NAND2X4M FE_RC_1448_0 (.Y(FE_RN_1167_0), 
	.B(FE_RN_1803_0), 
	.A(FE_RN_1168_0));
   INVX2M FE_RC_1422_0 (.Y(FE_RN_1145_0), 
	.A(\u_div/PartRem[5][3] ));
   INVX2M FE_RC_1421_0 (.Y(FE_RN_1144_0), 
	.A(FE_RN_1141_0));
   OAI2BB1X2M FE_RC_1420_0 (.Y(FE_RN_1143_0), 
	.B0(FE_RN_1144_0), 
	.A1N(FE_RN_1145_0), 
	.A0N(FE_RN_1449_0));
   NOR2BX4M FE_RC_1419_0 (.Y(FE_RN_1142_0), 
	.B(FE_RN_1141_0), 
	.AN(FE_RN_1138_0));
   MXI2X2M FE_RC_1418_0 (.Y(\u_div/SumTmp[4][3] ), 
	.S0(FE_RN_1134_0), 
	.B(FE_RN_1142_0), 
	.A(FE_RN_1143_0));
   AND2X12M FE_RC_1417_0 (.Y(FE_RN_1141_0), 
	.B(\u_div/BInv [3]), 
	.A(\u_div/PartRem[5][3] ));
   INVX2M FE_RC_1416_0 (.Y(FE_RN_1140_0), 
	.A(FE_RN_1141_0));
   NAND2BX8M FE_RC_1414_0 (.Y(FE_RN_1138_0), 
	.B(FE_RN_1449_0), 
	.AN(\u_div/PartRem[5][3] ));
   INVX2M FE_RC_1413_0 (.Y(FE_RN_1137_0), 
	.A(\u_div/BInv [2]));
   NAND3BX4M FE_RC_1412_0 (.Y(FE_RN_1136_0), 
	.C(FE_RN_1137_0), 
	.B(FE_RN_349_0), 
	.AN(FE_RN_347_0));
   NAND2X4M FE_RC_1411_0 (.Y(FE_RN_1135_0), 
	.B(\u_div/CryTmp[4][2] ), 
	.A(FE_RN_1136_0));
   NAND2X4M FE_RC_1410_0 (.Y(FE_RN_1134_0), 
	.B(FE_RN_352_0), 
	.A(FE_RN_1135_0));
   NAND2X4M FE_RC_1409_0 (.Y(FE_RN_1133_0), 
	.B(FE_RN_1138_0), 
	.A(FE_RN_1134_0));
   CLKNAND2X2M FE_RC_1387_0 (.Y(FE_RN_315_0), 
	.B(FE_RN_1119_0), 
	.A(\u_div/SumTmp[5][0] ));
   INVX2M FE_RC_1386_0 (.Y(FE_RN_1120_0), 
	.A(FE_RN_317_0));
   NAND2BX4M FE_RC_1385_0 (.Y(FE_RN_1119_0), 
	.B(FE_RN_1120_0), 
	.AN(FE_RN_316_0));
   NAND2X4M FE_RC_1384_0 (.Y(FE_RN_1118_0), 
	.B(\u_div/SumTmp[5][0] ), 
	.A(FE_RN_1119_0));
   INVX2M FE_RC_1383_0 (.Y(FE_RN_1117_0), 
	.A(FE_RN_335_0));
   OAI211X8M FE_RC_1382_0 (.Y(\u_div/CryTmp[4][2] ), 
	.C0(FE_RN_342_0), 
	.B0(FE_RN_329_0), 
	.A1(FE_RN_1117_0), 
	.A0(FE_RN_1118_0));
   NAND2X8M FE_RC_1381_0 (.Y(n12), 
	.B(FE_RN_1114_0), 
	.A(FE_RN_325_0));
   INVX2M FE_RC_1380_0 (.Y(FE_RN_1116_0), 
	.A(\u_div/PartRem[6][2] ));
   NAND2X2M FE_RC_1379_0 (.Y(FE_RN_1115_0), 
	.B(FE_RN_247_0), 
	.A(FE_RN_1106_0));
   NAND2X4M FE_RC_1378_0 (.Y(FE_RN_1114_0), 
	.B(FE_RN_324_0), 
	.A(FE_RN_1115_0));
   NAND2X4M FE_RC_1377_0 (.Y(FE_RN_1113_0), 
	.B(FE_RN_325_0), 
	.A(FE_RN_1114_0));
   NAND2X1M FE_RC_1376_0 (.Y(FE_RN_1112_0), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(FE_RN_1113_0));
   OAI21X6M FE_RC_1375_0 (.Y(\u_div/PartRem[5][3] ), 
	.B0(FE_RN_1112_0), 
	.A1(FE_RN_1116_0), 
	.A0(FE_RN_1113_0));
   NAND2X4M FE_RC_1366_0 (.Y(FE_RN_309_0), 
	.B(FE_RN_310_0), 
	.A(FE_RN_238_0));
   NAND2X2M FE_RC_1365_0 (.Y(FE_RN_308_0), 
	.B(FE_RN_247_0), 
	.A(FE_RN_1106_0));
   NAND2X4M FE_RC_1364_0 (.Y(FE_RN_1106_0), 
	.B(FE_RN_238_0), 
	.A(FE_RN_310_0));
   INVX2M FE_RC_1333_0 (.Y(FE_RN_1091_0), 
	.A(FE_RN_206_0));
   NAND3X2M FE_RC_1332_0 (.Y(FE_RN_1090_0), 
	.C(FE_RN_204_0), 
	.B(FE_RN_1091_0), 
	.A(FE_RN_1088_0));
   INVX2M FE_RC_1331_0 (.Y(FE_RN_1089_0), 
	.A(FE_RN_205_0));
   CLKNAND2X4M FE_RC_1329_0 (.Y(FE_RN_1087_0), 
	.B(FE_RN_204_0), 
	.A(FE_RN_1088_0));
   AND2X2M FE_RC_1291_0 (.Y(FE_RN_1068_0), 
	.B(n7), 
	.A(\u_div/BInv [0]));
   CLKNAND2X2M FE_RC_1290_0 (.Y(FE_RN_100_0), 
	.B(n15), 
	.A(FE_RN_1068_0));
   AND3X6M FE_RC_1289_0 (.Y(FE_RN_99_0), 
	.C(\u_div/BInv [0]), 
	.B(n7), 
	.A(n15));
   NAND2X2M FE_RC_1281_0 (.Y(FE_RN_31_0), 
	.B(\u_div/AInv [2]), 
	.A(\u_div/AInv [1]));
   AND2X4M FE_RC_1280_0 (.Y(FE_RN_39_0), 
	.B(\u_div/AInv [1]), 
	.A(\u_div/AInv [2]));
   AND3X8M FE_RC_1262_0 (.Y(\u_div/QIncCry [6]), 
	.C(FE_RN_1028_0), 
	.B(\u_div/QInv [5]), 
	.A(FE_RN_1022_0));
   INVX2M FE_RC_1261_0 (.Y(FE_RN_1051_0), 
	.A(\u_div/QInv [8]));
   INVX2M FE_RC_1260_0 (.Y(FE_RN_1050_0), 
	.A(FE_RN_1047_0));
   NAND3X2M FE_RC_1259_0 (.Y(FE_RN_1049_0), 
	.C(FE_RN_1022_0), 
	.B(FE_RN_1051_0), 
	.A(FE_RN_1050_0));
   AND2X2M FE_RC_1258_0 (.Y(FE_RN_1048_0), 
	.B(FE_RN_1037_0), 
	.A(\u_div/QInv [5]));
   NAND2X2M FE_RC_1257_0 (.Y(FE_RN_1047_0), 
	.B(FE_RN_1028_0), 
	.A(FE_RN_1048_0));
   CLKNAND2X2M FE_RC_1256_0 (.Y(FE_RN_1046_0), 
	.B(\u_div/QInv [8]), 
	.A(FE_RN_1047_0));
   OAI2B11X2M FE_RC_1255_0 (.Y(quotient[8]), 
	.C0(FE_RN_1046_0), 
	.B0(FE_RN_1049_0), 
	.A1N(\u_div/QInv [8]), 
	.A0(FE_RN_1022_0));
   INVX2M FE_RC_1254_0 (.Y(FE_RN_1045_0), 
	.A(\u_div/QInv [7]));
   INVX2M FE_RC_1253_0 (.Y(FE_RN_1044_0), 
	.A(\u_div/QInv [6]));
   CLKNAND2X2M FE_RC_1252_0 (.Y(FE_RN_1043_0), 
	.B(FE_RN_1044_0), 
	.A(\u_div/QInv [7]));
   NOR2X2M FE_RC_1250_0 (.Y(FE_RN_1041_0), 
	.B(FE_RN_1044_0), 
	.A(\u_div/QInv [7]));
   NAND2X2M FE_RC_1249_0 (.Y(FE_RN_1040_0), 
	.B(FE_RN_1041_0), 
	.A(\u_div/QIncCry [6]));
   OAI211X4M FE_RC_1248_0 (.Y(quotient[7]), 
	.C0(FE_RN_1040_0), 
	.B0(FE_RN_1043_0), 
	.A1(\u_div/QIncCry [6]), 
	.A0(FE_RN_1045_0));
   NAND2X3M FE_RC_1246_0 (.Y(FE_RN_1038_0), 
	.B(\u_div/QIncCry [6]), 
	.A(FE_RN_1044_0));
   OAI2B1X4M FE_RC_1245_0 (.Y(quotient[6]), 
	.B0(FE_RN_1038_0), 
	.A1N(\u_div/QInv [6]), 
	.A0(\u_div/QIncCry [6]));
   AND2X2M FE_RC_1244_0 (.Y(FE_RN_1037_0), 
	.B(\u_div/QInv [6]), 
	.A(\u_div/QInv [7]));
   XNOR2X8M FE_RC_1233_0 (.Y(FE_RN_972_0), 
	.B(n9), 
	.A(FE_RN_973_0));
   INVX2M FE_RC_1232_0 (.Y(FE_RN_1029_0), 
	.A(\u_div/QInv [5]));
   INVX2M FE_RC_1231_0 (.Y(FE_RN_1028_0), 
	.A(FE_RN_1013_0));
   NAND3X2M FE_RC_1227_0 (.Y(FE_RN_1024_0), 
	.C(FE_RN_1028_0), 
	.B(FE_RN_1029_0), 
	.A(FE_RN_1022_0));
   OAI221X2M FE_RC_1226_0 (.Y(quotient[5]), 
	.C0(FE_RN_1024_0), 
	.B1(FE_RN_1029_0), 
	.B0(FE_RN_1028_0), 
	.A1(FE_RN_1029_0), 
	.A0(FE_RN_1022_0));
   XOR2X8M FE_RC_1224_0 (.Y(FE_RN_1022_0), 
	.B(n9), 
	.A(FE_RN_973_0));
   NOR2X12M FE_RC_1222_0 (.Y(\u_div/QIncCry [1]), 
	.B(FE_RN_976_0), 
	.A(FE_RN_972_0));
   INVX2M FE_RC_1221_0 (.Y(FE_RN_1021_0), 
	.A(\u_div/QInv [4]));
   INVX2M FE_RC_1220_0 (.Y(FE_RN_1020_0), 
	.A(FE_RN_1015_0));
   NAND2X2M FE_RC_1219_0 (.Y(FE_RN_1019_0), 
	.B(FE_RN_1021_0), 
	.A(FE_RN_1020_0));
   CLKNAND2X2M FE_RC_1218_0 (.Y(FE_RN_1018_0), 
	.B(FE_RN_972_0), 
	.A(\u_div/QInv [4]));
   NAND2X2M FE_RC_1217_0 (.Y(FE_RN_1017_0), 
	.B(\u_div/QInv [4]), 
	.A(FE_RN_1015_0));
   OAI211X2M FE_RC_1216_0 (.Y(quotient[4]), 
	.C0(FE_RN_1017_0), 
	.B0(FE_RN_1018_0), 
	.A1(FE_RN_972_0), 
	.A0(FE_RN_1019_0));
   INVX2M FE_RC_1215_0 (.Y(FE_RN_1016_0), 
	.A(FE_RN_976_0));
   NAND2X2M FE_RC_1212_0 (.Y(FE_RN_1013_0), 
	.B(\u_div/QInv [4]), 
	.A(FE_RN_1014_0));
   NOR2X2M FE_RC_1210_0 (.Y(FE_RN_1012_0), 
	.B(\u_div/QInv [3]), 
	.A(FE_RN_1005_0));
   CLKNAND2X2M FE_RC_1209_0 (.Y(FE_RN_1011_0), 
	.B(FE_RN_1012_0), 
	.A(\u_div/QIncCry [1]));
   CLKNAND2X2M FE_RC_1208_0 (.Y(FE_RN_1010_0), 
	.B(\u_div/QInv [3]), 
	.A(FE_RN_1005_0));
   OAI2B11X2M FE_RC_1207_0 (.Y(quotient[3]), 
	.C0(FE_RN_1010_0), 
	.B0(FE_RN_1011_0), 
	.A1N(\u_div/QInv [3]), 
	.A0(\u_div/QIncCry [1]));
   INVX2M FE_RC_1204_0 (.Y(FE_RN_1008_0), 
	.A(\u_div/QInv [1]));
   NAND2X2M FE_RC_1202_0 (.Y(FE_RN_1006_0), 
	.B(\u_div/QIncCry [1]), 
	.A(FE_RN_1008_0));
   OAI21X4M FE_RC_1201_0 (.Y(quotient[1]), 
	.B0(FE_RN_1006_0), 
	.A1(\u_div/QIncCry [1]), 
	.A0(FE_RN_1008_0));
   INVX2M FE_RC_1165_0 (.Y(FE_RN_976_0), 
	.A(\u_div/QIncCry [0]));
   MXI2X1M FE_RC_1164_0 (.Y(FE_RN_975_0), 
	.S0(n9), 
	.B(FE_RN_976_0), 
	.A(\u_div/QIncCry [0]));
   XNOR2X2M FE_RC_1163_0 (.Y(quotient[0]), 
	.B(FE_RN_975_0), 
	.A(FE_RN_973_0));
   INVX2M FE_RC_1158_0 (.Y(FE_RN_971_0), 
	.A(n3));
   INVX2M FE_RC_1157_0 (.Y(FE_RN_970_0), 
	.A(FE_RN_943_0));
   NOR2X2M FE_RC_1156_0 (.Y(FE_RN_969_0), 
	.B(FE_RN_971_0), 
	.A(FE_RN_970_0));
   INVX2M FE_RC_1141_0 (.Y(FE_RN_957_0), 
	.A(FE_RN_951_0));
   CLKINVX2M FE_RC_1140_0 (.Y(FE_RN_956_0), 
	.A(FE_RN_948_0));
   NAND2X1M FE_RC_1139_0 (.Y(\u_div/PartRem[1][5] ), 
	.B(FE_RN_957_0), 
	.A(FE_RN_956_0));
   INVX1M FE_RC_1138_0 (.Y(FE_RN_955_0), 
	.A(FE_RN_951_0));
   CLKINVX2M FE_RC_1137_0 (.Y(FE_RN_954_0), 
	.A(FE_RN_948_0));
   NAND3X2M FE_RC_1136_0 (.Y(FE_RN_937_0), 
	.C(FE_RN_955_0), 
	.B(FE_RN_954_0), 
	.A(FE_RN_1305_0));
   NAND2BX2M FE_RC_1134_0 (.Y(FE_RN_952_0), 
	.B(FE_RN_2008_0), 
	.AN(\u_div/PartRem[1][6] ));
   NOR2BX1M FE_RC_1133_0 (.Y(FE_RN_951_0), 
	.B(\u_div/QAbs [1]), 
	.AN(\u_div/PartRem[2][4] ));
   NAND2X2M FE_RC_1131_0 (.Y(FE_RN_949_0), 
	.B(FE_RN_1305_0), 
	.A(FE_RN_957_0));
   AND2X2M FE_RC_1130_0 (.Y(FE_RN_948_0), 
	.B(\u_div/QAbs [1]), 
	.A(\u_div/SumTmp[1][4] ));
   INVX2M FE_RC_1129_0 (.Y(FE_RN_947_0), 
	.A(FE_RN_939_0));
   OAI211X4M FE_RC_1128_0 (.Y(FE_RN_946_0), 
	.C0(FE_RN_947_0), 
	.B0(\u_div/CryTmp[0][4] ), 
	.A1(FE_RN_948_0), 
	.A0(FE_RN_949_0));
   CLKNAND2X2M FE_RC_1125_0 (.Y(FE_RN_943_0), 
	.B(\u_div/BInv [6]), 
	.A(\u_div/PartRem[1][6] ));
   NAND2X2M FE_RC_1123_0 (.Y(FE_RN_942_0), 
	.B(\u_div/BInv [5]), 
	.A(\u_div/PartRem[1][5] ));
   CLKINVX2M FE_RC_1122_0 (.Y(FE_RN_941_0), 
	.A(FE_RN_932_0));
   CLKINVX2M FE_RC_1120_0 (.Y(FE_RN_939_0), 
	.A(FE_RN_928_0));
   INVX2M FE_RC_1115_0 (.Y(FE_RN_935_0), 
	.A(\u_div/PartRem[2][3] ));
   CLKNAND2X2M FE_RC_1114_0 (.Y(FE_RN_934_0), 
	.B(\u_div/QAbs [1]), 
	.A(\u_div/SumTmp[1][3] ));
   OAI21X2M FE_RC_1113_0 (.Y(FE_RN_933_0), 
	.B0(FE_RN_934_0), 
	.A1(\u_div/QAbs [1]), 
	.A0(FE_RN_935_0));
   NAND2X2M FE_RC_1112_0 (.Y(FE_RN_932_0), 
	.B(\u_div/BInv [4]), 
	.A(FE_RN_933_0));
   INVX2M FE_RC_1110_0 (.Y(FE_RN_930_0), 
	.A(\u_div/SumTmp[1][3] ));
   AOI2B1X4M FE_RC_1109_0 (.Y(FE_RN_929_0), 
	.B0(\u_div/BInv [4]), 
	.A1N(FE_RN_930_0), 
	.A0(\u_div/QAbs [1]));
   OAI21X2M FE_RC_1108_0 (.Y(FE_RN_928_0), 
	.B0(FE_RN_929_0), 
	.A1(\u_div/QAbs [1]), 
	.A0(FE_RN_935_0));
   INVX2M FE_RC_1104_0 (.Y(FE_RN_925_0), 
	.A(\u_div/SumTmp[1][2] ));
   MXI2X2M FE_RC_1103_0 (.Y(FE_RN_924_0), 
	.S0(\u_div/QAbs [1]), 
	.B(FE_RN_925_0), 
	.A(FE_RN_922_0));
   CLKNAND2X4M FE_RC_1102_0 (.Y(FE_RN_923_0), 
	.B(\u_div/BInv [3]), 
	.A(FE_RN_924_0));
   INVX2M FE_RC_1101_0 (.Y(FE_RN_922_0), 
	.A(\u_div/PartRem[2][2] ));
   AOI2B1X8M FE_RC_1099_0 (.Y(FE_RN_920_0), 
	.B0(\u_div/BInv [3]), 
	.A1N(FE_RN_925_0), 
	.A0(\u_div/QAbs [1]));
   OAI21X2M FE_RC_1098_0 (.Y(FE_RN_919_0), 
	.B0(FE_RN_920_0), 
	.A1(\u_div/QAbs [1]), 
	.A0(FE_RN_922_0));
   CLKNAND2X4M FE_RC_1097_0 (.Y(FE_RN_918_0), 
	.B(\u_div/CryTmp[0][3] ), 
	.A(FE_RN_919_0));
   CLKNAND2X4M FE_RC_1096_0 (.Y(\u_div/CryTmp[0][4] ), 
	.B(FE_RN_923_0), 
	.A(FE_RN_918_0));
   NAND2X2M FE_RC_1095_0 (.Y(FE_RN_881_0), 
	.B(FE_RN_882_0), 
	.A(FE_RN_905_0));
   CLKINVX2M FE_RC_1094_0 (.Y(FE_RN_917_0), 
	.A(FE_RN_891_0));
   INVX2M FE_RC_1091_0 (.Y(FE_RN_915_0), 
	.A(\u_div/PartRem[2][1] ));
   NOR2X4M FE_RC_1090_0 (.Y(FE_RN_914_0), 
	.B(FE_RN_915_0), 
	.A(FE_RN_909_0));
   AOI21X4M FE_RC_1089_0 (.Y(FE_RN_913_0), 
	.B0(FE_RN_914_0), 
	.A1(\u_div/SumTmp[1][1] ), 
	.A0(FE_RN_909_0));
   INVX2M FE_RC_1088_0 (.Y(FE_RN_912_0), 
	.A(\u_div/BInv [2]));
   INVX2M FE_RC_1086_0 (.Y(FE_RN_910_0), 
	.A(FE_RN_892_0));
   AOI21X2M FE_RC_1083_0 (.Y(FE_RN_907_0), 
	.B0(\u_div/BInv [2]), 
	.A1(FE_RN_891_0), 
	.A0(\u_div/SumTmp[1][1] ));
   OAI2BB1X2M FE_RC_1082_0 (.Y(FE_RN_906_0), 
	.B0(FE_RN_907_0), 
	.A1N(\u_div/SumTmp[1][1] ), 
	.A0N(FE_RN_892_0));
   INVX2M FE_RC_1079_0 (.Y(FE_RN_903_0), 
	.A(FE_RN_849_0));
   INVX2M FE_RC_1078_0 (.Y(FE_RN_902_0), 
	.A(\u_div/SumTmp[1][1] ));
   AOI2B1X4M FE_RC_1077_0 (.Y(FE_RN_901_0), 
	.B0(FE_RN_902_0), 
	.A1N(FE_RN_903_0), 
	.A0(FE_RN_904_0));
   NOR2X2M FE_RC_1076_0 (.Y(FE_RN_900_0), 
	.B(FE_RN_906_0), 
	.A(FE_RN_901_0));
   OAI21X4M FE_RC_1075_0 (.Y(FE_RN_899_0), 
	.B0(FE_RN_900_0), 
	.A1(FE_RN_915_0), 
	.A0(FE_RN_909_0));
   NAND2X4M FE_RC_1074_0 (.Y(FE_RN_898_0), 
	.B(\u_div/CryTmp[0][2] ), 
	.A(FE_RN_899_0));
   OAI21X4M FE_RC_1073_0 (.Y(\u_div/CryTmp[0][3] ), 
	.B0(FE_RN_898_0), 
	.A1(FE_RN_912_0), 
	.A0(FE_RN_913_0));
   NOR2BX2M FE_RC_1072_0 (.Y(FE_RN_897_0), 
	.B(FE_RN_888_0), 
	.AN(FE_RN_896_0));
   OR2X2M FE_RC_1071_0 (.Y(FE_RN_896_0), 
	.B(\u_div/CryTmp[0][1] ), 
	.A(n1));
   NOR2BX2M FE_RC_1070_0 (.Y(FE_RN_895_0), 
	.B(FE_RN_887_0), 
	.AN(FE_RN_896_0));
   CLKNAND2X2M FE_RC_1069_0 (.Y(FE_RN_894_0), 
	.B(FE_RN_895_0), 
	.A(FE_RN_880_0));
   CLKNAND2X2M FE_RC_1068_0 (.Y(FE_RN_893_0), 
	.B(\u_div/CryTmp[0][1] ), 
	.A(n1));
   OAI2B11X2M FE_RC_1067_0 (.Y(\u_div/CryTmp[0][2] ), 
	.C0(FE_RN_893_0), 
	.B0(FE_RN_894_0), 
	.A1N(FE_RN_897_0), 
	.A0(FE_RN_880_0));
   INVX2M FE_RC_1065_0 (.Y(FE_RN_891_0), 
	.A(FE_RN_878_0));
   INVX2M FE_RC_1061_0 (.Y(FE_RN_888_0), 
	.A(\u_div/PartRem[2][0] ));
   INVX2M FE_RC_1060_0 (.Y(FE_RN_887_0), 
	.A(\u_div/SumTmp[1][0] ));
   INVX2M FE_RC_1059_0 (.Y(FE_RN_886_0), 
	.A(FE_RN_878_0));
   CLKNAND2X2M FE_RC_1051_0 (.Y(FE_RN_879_0), 
	.B(FE_RN_806_0), 
	.A(FE_RN_804_0));
   NAND2X1M FE_RC_1050_0 (.Y(\u_div/CryTmp[1][5] ), 
	.B(FE_RN_807_0), 
	.A(FE_RN_879_0));
   CLKINVX2M FE_RC_1049_0 (.Y(FE_RN_878_0), 
	.A(\u_div/PartRem[2][7] ));
   OAI22X1M FE_RC_1041_0 (.Y(FE_RN_871_0), 
	.B1(\u_div/PartRem[2][6] ), 
	.B0(FE_RN_2008_0), 
	.A1(\u_div/BInv [6]), 
	.A0(FE_RN_866_0));
   INVX2M FE_RC_1040_0 (.Y(FE_RN_870_0), 
	.A(FE_RN_848_0));
   NAND2X2M FE_RC_1039_0 (.Y(FE_RN_869_0), 
	.B(FE_RN_871_0), 
	.A(FE_RN_870_0));
   NOR2X2M FE_RC_1037_0 (.Y(FE_RN_867_0), 
	.B(FE_RN_866_0), 
	.A(FE_RN_853_0));
   INVX2M FE_RC_1036_0 (.Y(FE_RN_866_0), 
	.A(\u_div/PartRem[2][6] ));
   AND3X2M FE_RC_1035_0 (.Y(FE_RN_865_0), 
	.C(\u_div/BInv [6]), 
	.B(FE_RN_866_0), 
	.A(FE_RN_851_0));
   INVX2M FE_RC_1034_0 (.Y(FE_RN_864_0), 
	.A(\u_div/CryTmp[1][5] ));
   OAI21X4M FE_RC_1033_0 (.Y(FE_RN_863_0), 
	.B0(FE_RN_864_0), 
	.A1(FE_RN_865_0), 
	.A0(FE_RN_867_0));
   NAND2X2M FE_RC_1032_0 (.Y(FE_RN_862_0), 
	.B(\u_div/BInv [6]), 
	.A(\u_div/PartRem[2][6] ));
   CLKNAND2X2M FE_RC_1031_0 (.Y(FE_RN_861_0), 
	.B(FE_RN_862_0), 
	.A(FE_RN_844_0));
   CLKNAND2X4M FE_RC_1030_0 (.Y(FE_RN_860_0), 
	.B(\u_div/CryTmp[1][5] ), 
	.A(FE_RN_848_0));
   NAND2X2M FE_RC_1029_0 (.Y(FE_RN_859_0), 
	.B(FE_RN_851_0), 
	.A(FE_RN_860_0));
   CLKNAND2X2M FE_RC_1028_0 (.Y(FE_RN_858_0), 
	.B(FE_RN_861_0), 
	.A(FE_RN_859_0));
   NAND3X3M FE_RC_1027_0 (.Y(\u_div/SumTmp[1][6] ), 
	.C(FE_RN_869_0), 
	.B(FE_RN_863_0), 
	.A(FE_RN_858_0));
   XNOR2X2M FE_RC_1026_0 (.Y(FE_RN_857_0), 
	.B(\u_div/BInv [5]), 
	.A(\u_div/PartRem[2][5] ));
   CLKNAND2X2M FE_RC_1025_0 (.Y(FE_RN_856_0), 
	.B(FE_RN_851_0), 
	.A(FE_RN_848_0));
   CLKNAND2X2M FE_RC_1024_0 (.Y(FE_RN_855_0), 
	.B(\u_div/CryTmp[1][5] ), 
	.A(FE_RN_856_0));
   OAI21X2M FE_RC_1023_0 (.Y(\u_div/SumTmp[1][5] ), 
	.B0(FE_RN_855_0), 
	.A1(FE_RN_857_0), 
	.A0(\u_div/CryTmp[1][5] ));
   INVX2M FE_RC_1018_0 (.Y(FE_RN_850_0), 
	.A(FE_RN_851_0));
   INVX2M FE_RC_982_0 (.Y(FE_RN_819_0), 
	.A(\u_div/PartRem[2][4] ));
   NOR2X2M FE_RC_981_0 (.Y(FE_RN_818_0), 
	.B(FE_RN_819_0), 
	.A(FE_RN_809_0));
   AND3X2M FE_RC_979_0 (.Y(FE_RN_816_0), 
	.C(FE_RN_795_0), 
	.B(\u_div/BInv [4]), 
	.A(FE_RN_819_0));
   OAI21X2M FE_RC_978_0 (.Y(FE_RN_815_0), 
	.B0(FE_RN_789_0), 
	.A1(FE_RN_816_0), 
	.A0(FE_RN_818_0));
   CLKNAND2X2M FE_RC_977_0 (.Y(FE_RN_814_0), 
	.B(FE_RN_795_0), 
	.A(FE_RN_789_0));
   NAND2X2M FE_RC_976_0 (.Y(FE_RN_813_0), 
	.B(\u_div/BInv [4]), 
	.A(\u_div/PartRem[2][4] ));
   CLKNAND2X2M FE_RC_975_0 (.Y(FE_RN_812_0), 
	.B(FE_RN_804_0), 
	.A(FE_RN_813_0));
   CLKNAND2X2M FE_RC_974_0 (.Y(FE_RN_811_0), 
	.B(FE_RN_814_0), 
	.A(FE_RN_812_0));
   CLKNAND2X2M FE_RC_973_0 (.Y(\u_div/SumTmp[1][4] ), 
	.B(FE_RN_815_0), 
	.A(FE_RN_811_0));
   NAND2X4M FE_RC_971_0 (.Y(FE_RN_809_0), 
	.B(FE_RN_795_0), 
	.A(FE_RN_1803_0));
   AOI22X4M FE_RC_969_0 (.Y(FE_RN_807_0), 
	.B1(\u_div/BInv [4]), 
	.B0(FE_RN_808_0), 
	.A1(\u_div/PartRem[2][4] ), 
	.A0(FE_RN_809_0));
   NAND2BX2M FE_RC_966_0 (.Y(FE_RN_804_0), 
	.B(FE_RN_1803_0), 
	.AN(\u_div/PartRem[2][4] ));
   INVX2M FE_RC_963_0 (.Y(FE_RN_802_0), 
	.A(FE_OFN32_FE_RN_792_0));
   INVX2M FE_RC_962_0 (.Y(FE_RN_801_0), 
	.A(FE_RN_793_0));
   CLKNAND2X2M FE_RC_961_0 (.Y(\u_div/PartRem[2][3] ), 
	.B(FE_RN_802_0), 
	.A(FE_RN_801_0));
   OAI2BB2X1M FE_RC_960_0 (.Y(FE_RN_800_0), 
	.B1(\u_div/BInv [3]), 
	.B0(\u_div/PartRem[3][2] ), 
	.A1N(\u_div/PartRem[3][2] ), 
	.A0N(\u_div/BInv [3]));
   OAI2BB2X1M FE_RC_959_0 (.Y(FE_RN_799_0), 
	.B1(\u_div/BInv [3]), 
	.B0(\u_div/SumTmp[2][2] ), 
	.A1N(\u_div/SumTmp[2][2] ), 
	.A0N(\u_div/BInv [3]));
   INVX2M FE_RC_958_0 (.Y(FE_RN_798_0), 
	.A(FE_RN_799_0));
   CLKNAND2X2M FE_RC_957_0 (.Y(FE_RN_797_0), 
	.B(FE_OFN28_u_div_CryTmp_2__7_), 
	.A(FE_RN_798_0));
   OAI21X2M FE_RC_956_0 (.Y(FE_RN_796_0), 
	.B0(FE_RN_797_0), 
	.A1(FE_OFN28_u_div_CryTmp_2__7_), 
	.A0(FE_RN_800_0));
   XOR2X2M FE_RC_955_0 (.Y(\u_div/SumTmp[1][3] ), 
	.B(FE_RN_796_0), 
	.A(FE_RN_794_0));
   NAND2X4M FE_RC_953_0 (.Y(FE_RN_794_0), 
	.B(FE_RN_777_0), 
	.A(FE_RN_769_0));
   NOR2BX4M FE_RC_951_0 (.Y(FE_RN_792_0), 
	.B(FE_OFN28_u_div_CryTmp_2__7_), 
	.AN(\u_div/PartRem[3][2] ));
   NOR2X4M FE_RC_950_0 (.Y(FE_RN_791_0), 
	.B(\u_div/BInv [3]), 
	.A(FE_OFN32_FE_RN_792_0));
   NAND2BX8M FE_RC_949_0 (.Y(FE_RN_790_0), 
	.B(FE_RN_791_0), 
	.AN(FE_RN_793_0));
   INVX2M FE_RC_946_0 (.Y(FE_RN_788_0), 
	.A(FE_RN_775_0));
   INVX2M FE_RC_945_0 (.Y(FE_RN_787_0), 
	.A(FE_RN_772_0));
   CLKNAND2X2M FE_RC_944_0 (.Y(\u_div/PartRem[2][2] ), 
	.B(FE_RN_788_0), 
	.A(FE_RN_787_0));
   INVX2M FE_RC_943_0 (.Y(FE_RN_786_0), 
	.A(\u_div/CryTmp[1][2] ));
   INVX2M FE_RC_942_0 (.Y(FE_RN_785_0), 
	.A(\u_div/PartRem[3][1] ));
   OAI2BB2X1M FE_RC_940_0 (.Y(FE_RN_783_0), 
	.B1(\u_div/BInv [2]), 
	.B0(FE_RN_785_0), 
	.A1N(FE_RN_785_0), 
	.A0N(\u_div/BInv [2]));
   INVX2M FE_RC_939_0 (.Y(FE_RN_782_0), 
	.A(\u_div/SumTmp[2][1] ));
   OAI2BB2X1M FE_RC_937_0 (.Y(FE_RN_780_0), 
	.B1(\u_div/BInv [2]), 
	.B0(FE_RN_782_0), 
	.A1N(FE_RN_782_0), 
	.A0N(\u_div/BInv [2]));
   MXI2X1M FE_RC_936_0 (.Y(FE_RN_779_0), 
	.S0(FE_OFN28_u_div_CryTmp_2__7_), 
	.B(FE_RN_780_0), 
	.A(FE_RN_783_0));
   INVX2M FE_RC_935_0 (.Y(FE_RN_778_0), 
	.A(FE_RN_779_0));
   MXI2X1M FE_RC_934_0 (.Y(\u_div/SumTmp[1][2] ), 
	.S0(FE_RN_778_0), 
	.B(\u_div/CryTmp[1][2] ), 
	.A(FE_RN_786_0));
   OAI21X2M FE_RC_933_0 (.Y(FE_RN_777_0), 
	.B0(\u_div/BInv [2]), 
	.A1(FE_RN_772_0), 
	.A0(FE_RN_775_0));
   NOR2X4M FE_RC_931_0 (.Y(FE_RN_775_0), 
	.B(FE_OFN28_u_div_CryTmp_2__7_), 
	.A(FE_RN_785_0));
   INVX2M FE_RC_930_0 (.Y(FE_RN_774_0), 
	.A(FE_RN_775_0));
   NOR2BX8M FE_RC_928_0 (.Y(FE_RN_772_0), 
	.B(FE_RN_782_0), 
	.AN(FE_OFN28_u_div_CryTmp_2__7_));
   NOR2X4M FE_RC_927_0 (.Y(FE_RN_771_0), 
	.B(\u_div/BInv [2]), 
	.A(FE_RN_772_0));
   NAND2X4M FE_RC_926_0 (.Y(FE_RN_770_0), 
	.B(FE_RN_774_0), 
	.A(FE_RN_771_0));
   NAND2X4M FE_RC_925_0 (.Y(FE_RN_769_0), 
	.B(\u_div/CryTmp[1][2] ), 
	.A(FE_RN_770_0));
   INVX2M FE_RC_923_0 (.Y(FE_RN_768_0), 
	.A(\u_div/SumTmp[2][0] ));
   MXI2X1M FE_RC_922_0 (.Y(\u_div/PartRem[2][1] ), 
	.S0(FE_RN_751_0), 
	.B(FE_RN_768_0), 
	.A(FE_RN_753_0));
   INVX2M FE_RC_921_0 (.Y(FE_RN_767_0), 
	.A(\u_div/CryTmp[1][1] ));
   XNOR2X2M FE_RC_920_0 (.Y(FE_RN_766_0), 
	.B(n1), 
	.A(FE_RN_753_0));
   MXI2X1M FE_RC_919_0 (.Y(FE_RN_765_0), 
	.S0(FE_RN_766_0), 
	.B(\u_div/CryTmp[1][1] ), 
	.A(FE_RN_767_0));
   INVX2M FE_RC_918_0 (.Y(FE_RN_764_0), 
	.A(n1));
   NAND2BX1M FE_RC_917_0 (.Y(FE_RN_763_0), 
	.B(\u_div/CryTmp[1][1] ), 
	.AN(FE_RN_764_0));
   CLKNAND2X2M FE_RC_916_0 (.Y(FE_RN_762_0), 
	.B(FE_RN_756_0), 
	.A(FE_RN_763_0));
   XNOR2X2M FE_RC_915_0 (.Y(FE_RN_761_0), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(FE_RN_762_0));
   NAND2X2M FE_RC_914_0 (.Y(FE_RN_760_0), 
	.B(FE_RN_751_0), 
	.A(FE_RN_761_0));
   OAI2B1X2M FE_RC_913_0 (.Y(\u_div/SumTmp[1][1] ), 
	.B0(FE_RN_760_0), 
	.A1N(FE_RN_765_0), 
	.A0(FE_RN_751_0));
   INVX2M FE_RC_912_0 (.Y(FE_RN_759_0), 
	.A(FE_RN_753_0));
   AND2X2M FE_RC_911_0 (.Y(FE_RN_758_0), 
	.B(FE_RN_759_0), 
	.A(FE_RN_756_0));
   NAND2BX2M FE_RC_909_0 (.Y(FE_RN_756_0), 
	.B(FE_RN_764_0), 
	.AN(\u_div/CryTmp[1][1] ));
   NAND3X2M FE_RC_908_0 (.Y(FE_RN_755_0), 
	.C(\u_div/SumTmp[2][0] ), 
	.B(FE_RN_751_0), 
	.A(FE_RN_756_0));
   NAND2X2M FE_RC_907_0 (.Y(FE_RN_754_0), 
	.B(\u_div/CryTmp[1][1] ), 
	.A(n1));
   OAI2B11X4M FE_RC_906_0 (.Y(\u_div/CryTmp[1][2] ), 
	.C0(FE_RN_754_0), 
	.B0(FE_RN_755_0), 
	.A1N(FE_RN_758_0), 
	.A0(FE_RN_751_0));
   NAND3X12M FE_RC_905_0 (.Y(FE_OFN28_u_div_CryTmp_2__7_), 
	.C(FE_RN_748_0), 
	.B(FE_RN_732_0), 
	.A(FE_RN_730_0));
   INVX2M FE_RC_904_0 (.Y(FE_RN_753_0), 
	.A(\u_div/PartRem[3][0] ));
   INVX2M FE_RC_903_0 (.Y(FE_RN_752_0), 
	.A(FE_RN_732_0));
   NAND3BX4M FE_RC_902_0 (.Y(FE_RN_751_0), 
	.C(FE_RN_730_0), 
	.B(FE_RN_748_0), 
	.AN(FE_RN_752_0));
   NAND2X2M FE_RC_899_0 (.Y(FE_RN_714_0), 
	.B(FE_RN_715_0), 
	.A(FE_RN_716_0));
   INVX2M FE_RC_895_0 (.Y(FE_RN_747_0), 
	.A(FE_RN_720_0));
   CLKNAND2X2M FE_RC_894_0 (.Y(FE_RN_746_0), 
	.B(FE_RN_747_0), 
	.A(FE_RN_744_0));
   INVX2M FE_RC_893_0 (.Y(FE_RN_745_0), 
	.A(FE_RN_733_0));
   NAND2X2M FE_RC_892_0 (.Y(FE_RN_744_0), 
	.B(FE_RN_729_0), 
	.A(FE_RN_745_0));
   NAND3X2M FE_RC_891_0 (.Y(FE_RN_743_0), 
	.C(FE_RN_718_0), 
	.B(FE_RN_714_0), 
	.A(FE_RN_744_0));
   INVX2M FE_RC_889_0 (.Y(FE_RN_741_0), 
	.A(FE_RN_736_0));
   NAND3X2M FE_RC_888_0 (.Y(FE_RN_740_0), 
	.C(FE_RN_720_0), 
	.B(FE_RN_723_0), 
	.A(FE_RN_741_0));
   INVX2M FE_RC_887_0 (.Y(FE_RN_739_0), 
	.A(FE_RN_714_0));
   OR2X2M FE_RC_886_0 (.Y(FE_RN_738_0), 
	.B(\u_div/BInv [6]), 
	.A(\u_div/PartRem[3][6] ));
   INVX2M FE_RC_885_0 (.Y(FE_RN_737_0), 
	.A(FE_RN_733_0));
   CLKNAND2X2M FE_RC_884_0 (.Y(FE_RN_736_0), 
	.B(FE_RN_738_0), 
	.A(FE_RN_737_0));
   NAND3X2M FE_RC_882_0 (.Y(FE_RN_734_0), 
	.C(FE_RN_720_0), 
	.B(FE_RN_739_0), 
	.A(FE_RN_741_0));
   NAND4X2M FE_RC_881_0 (.Y(\u_div/SumTmp[2][6] ), 
	.D(FE_RN_746_0), 
	.C(FE_RN_743_0), 
	.B(FE_RN_740_0), 
	.A(FE_RN_734_0));
   AND2X2M FE_RC_880_0 (.Y(FE_RN_733_0), 
	.B(\u_div/BInv [6]), 
	.A(\u_div/PartRem[3][6] ));
   INVX2M FE_RC_879_0 (.Y(FE_RN_732_0), 
	.A(FE_RN_733_0));
   NAND2X2M FE_RC_877_0 (.Y(FE_RN_730_0), 
	.B(FE_RN_731_0), 
	.A(FE_RN_729_0));
   INVX2M FE_RC_871_0 (.Y(FE_RN_725_0), 
	.A(FE_RN_721_0));
   OAI2BB1X2M FE_RC_870_0 (.Y(FE_RN_724_0), 
	.B0(FE_RN_725_0), 
	.A1N(FE_RN_1296_0), 
	.A0N(FE_RN_1305_0));
   INVX2M FE_RC_869_0 (.Y(FE_RN_723_0), 
	.A(FE_RN_718_0));
   NOR2X2M FE_RC_868_0 (.Y(FE_RN_722_0), 
	.B(FE_RN_723_0), 
	.A(FE_RN_721_0));
   MXI2X1M FE_RC_867_0 (.Y(\u_div/SumTmp[2][5] ), 
	.S0(FE_RN_714_0), 
	.B(FE_RN_722_0), 
	.A(FE_RN_724_0));
   NAND2BX8M FE_RC_863_0 (.Y(FE_RN_718_0), 
	.B(FE_RN_1305_0), 
	.AN(\u_div/PartRem[3][5] ));
   INVX2M FE_RC_862_0 (.Y(FE_RN_717_0), 
	.A(FE_RN_688_0));
   AND2X4M FE_RC_860_0 (.Y(FE_RN_715_0), 
	.B(FE_RN_697_0), 
	.A(FE_RN_693_0));
   OAI2BB2X1M FE_RC_854_0 (.Y(\u_div/PartRem[3][3] ), 
	.B1(FE_RN_1546_0), 
	.B0(FE_RN_690_0), 
	.A1N(FE_RN_690_0), 
	.A0N(\u_div/SumTmp[3][2] ));
   INVX2M FE_RC_853_0 (.Y(FE_RN_711_0), 
	.A(FE_RN_688_0));
   INVX2M FE_RC_852_0 (.Y(FE_RN_710_0), 
	.A(FE_RN_695_0));
   AOI2B1X1M FE_RC_851_0 (.Y(FE_RN_709_0), 
	.B0(FE_RN_710_0), 
	.A1N(FE_RN_711_0), 
	.A0(FE_RN_682_0));
   NOR2X2M FE_RC_848_0 (.Y(FE_RN_706_0), 
	.B(FE_RN_710_0), 
	.A(FE_RN_682_0));
   NOR2X2M FE_RC_847_0 (.Y(FE_RN_705_0), 
	.B(FE_RN_711_0), 
	.A(FE_RN_706_0));
   XOR2X2M FE_RC_846_0 (.Y(FE_RN_704_0), 
	.B(\u_div/BInv [4]), 
	.A(\u_div/PartRem[3][4] ));
   MXI2X1M FE_RC_845_0 (.Y(\u_div/SumTmp[2][4] ), 
	.S0(FE_RN_704_0), 
	.B(FE_RN_705_0), 
	.A(FE_RN_709_0));
   OAI21X2M FE_RC_841_0 (.Y(FE_RN_700_0), 
	.B0(FE_RN_688_0), 
	.A1(FE_RN_1449_0), 
	.A0(FE_RN_689_0));
   AND2X2M FE_RC_840_0 (.Y(FE_RN_699_0), 
	.B(FE_RN_688_0), 
	.A(FE_RN_695_0));
   MXI2X1M FE_RC_839_0 (.Y(\u_div/SumTmp[2][3] ), 
	.S0(FE_RN_682_0), 
	.B(FE_RN_699_0), 
	.A(FE_RN_700_0));
   INVX2M FE_RC_838_0 (.Y(FE_RN_698_0), 
	.A(FE_RN_695_0));
   NAND2X2M FE_RC_837_0 (.Y(FE_RN_697_0), 
	.B(\u_div/BInv [4]), 
	.A(FE_RN_698_0));
   NAND2X2M FE_RC_834_0 (.Y(FE_RN_694_0), 
	.B(FE_RN_1803_0), 
	.A(FE_RN_695_0));
   NAND2X2M FE_RC_833_0 (.Y(FE_RN_693_0), 
	.B(\u_div/PartRem[3][4] ), 
	.A(FE_RN_694_0));
   INVX2M FE_RC_831_0 (.Y(FE_RN_691_0), 
	.A(\u_div/SumTmp[3][2] ));
   NAND2X6M FE_RC_830_0 (.Y(FE_RN_690_0), 
	.B(FE_RN_620_0), 
	.A(FE_RN_617_0));
   NAND2X2M FE_RC_828_0 (.Y(FE_RN_688_0), 
	.B(FE_RN_1449_0), 
	.A(FE_RN_689_0));
   INVX2M FE_RC_827_0 (.Y(FE_RN_687_0), 
	.A(FE_RN_647_0));
   INVX2M FE_RC_825_0 (.Y(FE_RN_685_0), 
	.A(FE_RN_646_0));
   NAND3X4M FE_RC_824_0 (.Y(FE_RN_684_0), 
	.C(FE_RN_687_0), 
	.B(FE_RN_912_0), 
	.A(FE_RN_685_0));
   NAND2X2M FE_RC_823_0 (.Y(FE_RN_683_0), 
	.B(\u_div/CryTmp[2][2] ), 
	.A(FE_RN_684_0));
   NAND2X4M FE_RC_822_0 (.Y(FE_RN_682_0), 
	.B(FE_RN_645_0), 
	.A(FE_RN_683_0));
   INVX2M FE_RC_793_0 (.Y(FE_RN_658_0), 
	.A(FE_RN_647_0));
   INVX2M FE_RC_792_0 (.Y(FE_RN_657_0), 
	.A(FE_RN_646_0));
   NAND2X2M FE_RC_791_0 (.Y(\u_div/PartRem[3][2] ), 
	.B(FE_RN_658_0), 
	.A(FE_RN_657_0));
   INVX2M FE_RC_790_0 (.Y(FE_RN_656_0), 
	.A(\u_div/CryTmp[2][2] ));
   CLKINVX2M FE_RC_789_0 (.Y(FE_RN_655_0), 
	.A(\u_div/PartRem[4][1] ));
   OAI22X1M FE_RC_787_0 (.Y(FE_RN_653_0), 
	.B1(\u_div/PartRem[4][1] ), 
	.B0(FE_RN_1137_0), 
	.A1(\u_div/BInv [2]), 
	.A0(FE_RN_655_0));
   OAI2B2X1M FE_RC_785_0 (.Y(FE_RN_651_0), 
	.B1(\u_div/SumTmp[3][1] ), 
	.B0(FE_RN_1137_0), 
	.A1N(\u_div/SumTmp[3][1] ), 
	.A0(\u_div/BInv [2]));
   MXI2X1M FE_RC_784_0 (.Y(FE_RN_650_0), 
	.S0(n14), 
	.B(FE_RN_651_0), 
	.A(FE_RN_653_0));
   MXI2X1M FE_RC_783_0 (.Y(\u_div/SumTmp[2][2] ), 
	.S0(FE_RN_650_0), 
	.B(FE_RN_656_0), 
	.A(\u_div/CryTmp[2][2] ));
   NOR2X8M FE_RC_780_0 (.Y(FE_RN_647_0), 
	.B(n14), 
	.A(FE_RN_655_0));
   AND2X6M FE_RC_779_0 (.Y(FE_RN_646_0), 
	.B(n14), 
	.A(\u_div/SumTmp[3][1] ));
   OAI21X3M FE_RC_778_0 (.Y(FE_RN_645_0), 
	.B0(\u_div/BInv [2]), 
	.A1(FE_RN_646_0), 
	.A0(FE_RN_647_0));
   INVX2M FE_RC_776_0 (.Y(FE_RN_644_0), 
	.A(FE_RN_623_0));
   INVX2M FE_RC_775_0 (.Y(FE_RN_643_0), 
	.A(FE_RN_622_0));
   CLKNAND2X2M FE_RC_774_0 (.Y(FE_RN_642_0), 
	.B(FE_RN_619_0), 
	.A(FE_RN_643_0));
   OAI2B1X2M FE_RC_773_0 (.Y(\u_div/PartRem[3][1] ), 
	.B0(FE_RN_642_0), 
	.A1N(FE_RN_644_0), 
	.A0(FE_RN_619_0));
   INVX2M FE_RC_772_0 (.Y(FE_RN_641_0), 
	.A(FE_RN_640_0));
   XNOR2X2M FE_RC_771_0 (.Y(FE_RN_640_0), 
	.B(n1), 
	.A(FE_RN_623_0));
   NOR2X1M FE_RC_769_0 (.Y(FE_RN_638_0), 
	.B(\u_div/CryTmp[2][1] ), 
	.A(FE_RN_641_0));
   AOI21X1M FE_RC_768_0 (.Y(FE_RN_637_0), 
	.B0(FE_RN_638_0), 
	.A1(\u_div/CryTmp[2][1] ), 
	.A0(FE_RN_641_0));
   NAND2BX1M FE_RC_766_0 (.Y(FE_RN_635_0), 
	.B(\u_div/CryTmp[2][1] ), 
	.AN(FE_RN_764_0));
   CLKNAND2X2M FE_RC_765_0 (.Y(FE_RN_634_0), 
	.B(FE_RN_628_0), 
	.A(FE_RN_635_0));
   XNOR2X2M FE_RC_764_0 (.Y(FE_RN_633_0), 
	.B(FE_RN_622_0), 
	.A(FE_RN_634_0));
   MXI2X1M FE_RC_763_0 (.Y(\u_div/SumTmp[2][1] ), 
	.S0(FE_RN_619_0), 
	.B(FE_RN_633_0), 
	.A(FE_RN_637_0));
   AND2X2M FE_RC_761_0 (.Y(FE_RN_631_0), 
	.B(FE_RN_644_0), 
	.A(FE_RN_628_0));
   NAND2BX2M FE_RC_758_0 (.Y(FE_RN_628_0), 
	.B(FE_RN_764_0), 
	.AN(\u_div/CryTmp[2][1] ));
   AND2X2M FE_RC_757_0 (.Y(FE_RN_627_0), 
	.B(FE_RN_643_0), 
	.A(FE_RN_628_0));
   NAND2X2M FE_RC_756_0 (.Y(FE_RN_626_0), 
	.B(FE_RN_619_0), 
	.A(FE_RN_627_0));
   OAI2B11X4M FE_RC_753_0 (.Y(\u_div/CryTmp[2][2] ), 
	.C0(FE_RN_635_0), 
	.B0(FE_RN_626_0), 
	.A1N(FE_RN_631_0), 
	.A0(FE_RN_619_0));
   INVX2M FE_RC_751_0 (.Y(FE_RN_623_0), 
	.A(\u_div/PartRem[4][0] ));
   INVX2M FE_RC_750_0 (.Y(FE_RN_622_0), 
	.A(\u_div/SumTmp[3][0] ));
   AND3X4M FE_RC_749_0 (.Y(FE_RN_621_0), 
	.C(FE_RN_589_0), 
	.B(\u_div/BInv [6]), 
	.A(FE_RN_616_0));
   NAND2X2M FE_RC_747_0 (.Y(FE_RN_619_0), 
	.B(FE_RN_617_0), 
	.A(FE_RN_620_0));
   NAND2X2M FE_RC_745_0 (.Y(FE_RN_618_0), 
	.B(FE_RN_596_0), 
	.A(FE_RN_593_0));
   CLKNAND2X12M FE_RC_744_0 (.Y(FE_RN_617_0), 
	.B(\u_div/BInv [6]), 
	.A(FE_RN_618_0));
   INVX2M FE_RC_743_0 (.Y(FE_RN_616_0), 
	.A(FE_RN_592_0));
   INVX2M FE_RC_740_0 (.Y(FE_RN_614_0), 
	.A(FE_RN_603_0));
   INVX2M FE_RC_739_0 (.Y(FE_RN_613_0), 
	.A(FE_RN_539_0));
   NAND2X2M FE_RC_738_0 (.Y(FE_RN_612_0), 
	.B(FE_RN_613_0), 
	.A(FE_RN_589_0));
   NAND2BX2M FE_RC_737_0 (.Y(FE_RN_611_0), 
	.B(FE_RN_589_0), 
	.AN(FE_RN_546_0));
   INVX2M FE_RC_736_0 (.Y(FE_RN_610_0), 
	.A(FE_RN_594_0));
   AOI2B1X1M FE_RC_735_0 (.Y(FE_RN_609_0), 
	.B0(FE_RN_610_0), 
	.A1N(FE_RN_551_0), 
	.A0(FE_RN_589_0));
   NAND3X2M FE_RC_734_0 (.Y(FE_RN_608_0), 
	.C(FE_RN_612_0), 
	.B(FE_RN_611_0), 
	.A(FE_RN_609_0));
   NAND2X2M FE_RC_733_0 (.Y(FE_RN_607_0), 
	.B(FE_RN_614_0), 
	.A(FE_RN_608_0));
   INVX2M FE_RC_732_0 (.Y(FE_RN_606_0), 
	.A(FE_RN_594_0));
   NOR2X3M FE_RC_731_0 (.Y(FE_RN_605_0), 
	.B(FE_RN_606_0), 
	.A(FE_RN_591_0));
   INVX2M FE_RC_730_0 (.Y(FE_RN_604_0), 
	.A(FE_RN_589_0));
   XOR2X2M FE_RC_729_0 (.Y(FE_RN_603_0), 
	.B(\u_div/BInv [5]), 
	.A(\u_div/PartRem[4][5] ));
   OAI21X4M FE_RC_728_0 (.Y(FE_RN_602_0), 
	.B0(FE_RN_603_0), 
	.A1(FE_RN_604_0), 
	.A0(FE_RN_605_0));
   NAND2X2M FE_RC_727_0 (.Y(\u_div/SumTmp[3][5] ), 
	.B(FE_RN_607_0), 
	.A(FE_RN_602_0));
   XNOR2X2M FE_RC_726_0 (.Y(FE_RN_601_0), 
	.B(\u_div/BInv [4]), 
	.A(\u_div/PartRem[4][4] ));
   CLKNAND2X2M FE_RC_725_0 (.Y(FE_RN_600_0), 
	.B(FE_RN_589_0), 
	.A(FE_RN_594_0));
   NAND2X2M FE_RC_724_0 (.Y(FE_RN_599_0), 
	.B(FE_RN_591_0), 
	.A(FE_RN_600_0));
   OAI21X2M FE_RC_723_0 (.Y(\u_div/SumTmp[3][4] ), 
	.B0(FE_RN_599_0), 
	.A1(FE_RN_601_0), 
	.A0(FE_RN_591_0));
   OAI2BB1X2M FE_RC_717_0 (.Y(FE_RN_593_0), 
	.B0(\u_div/PartRem[4][5] ), 
	.A1N(FE_RN_594_0), 
	.A0N(FE_RN_1305_0));
   NOR2X2M FE_RC_716_0 (.Y(FE_RN_592_0), 
	.B(\u_div/BInv [5]), 
	.A(\u_div/PartRem[4][5] ));
   NAND2BX8M FE_RC_713_0 (.Y(FE_RN_589_0), 
	.B(FE_RN_1803_0), 
	.AN(\u_div/PartRem[4][4] ));
   INVX2M FE_RC_688_0 (.Y(FE_RN_567_0), 
	.A(\u_div/CryTmp[3][1] ));
   NAND2BX2M FE_RC_687_0 (.Y(FE_RN_566_0), 
	.B(FE_RN_525_0), 
	.AN(FE_RN_567_0));
   NAND2X2M FE_RC_686_0 (.Y(FE_RN_527_0), 
	.B(FE_RN_519_0), 
	.A(FE_RN_566_0));
   CLKNAND2X2M FE_RC_685_0 (.Y(FE_RN_565_0), 
	.B(FE_RN_562_0), 
	.A(FE_RN_547_0));
   NAND3BX2M FE_RC_684_0 (.Y(FE_RN_564_0), 
	.C(FE_RN_540_0), 
	.B(FE_RN_562_0), 
	.AN(FE_RN_516_0));
   CLKNAND2X2M FE_RC_683_0 (.Y(FE_RN_563_0), 
	.B(\u_div/BInv [3]), 
	.A(\u_div/PartRem[4][3] ));
   CLKNAND2X2M FE_RC_682_0 (.Y(FE_RN_562_0), 
	.B(FE_RN_544_0), 
	.A(FE_RN_563_0));
   INVX2M FE_RC_681_0 (.Y(FE_RN_561_0), 
	.A(FE_RN_562_0));
   INVX2M FE_RC_680_0 (.Y(FE_RN_560_0), 
	.A(FE_RN_519_0));
   AOI2B1X1M FE_RC_678_0 (.Y(FE_RN_558_0), 
	.B0(FE_RN_912_0), 
	.A1N(\u_div/CryTmp[3][1] ), 
	.A0(FE_RN_519_0));
   OAI21X2M FE_RC_677_0 (.Y(FE_RN_557_0), 
	.B0(FE_RN_558_0), 
	.A1(FE_RN_560_0), 
	.A0(FE_RN_525_0));
   CLKNAND2X2M FE_RC_676_0 (.Y(FE_RN_556_0), 
	.B(FE_RN_567_0), 
	.A(FE_RN_549_0));
   NAND2X2M FE_RC_675_0 (.Y(FE_RN_555_0), 
	.B(FE_RN_556_0), 
	.A(FE_RN_525_0));
   NAND2BX2M FE_RC_674_0 (.Y(FE_RN_554_0), 
	.B(FE_RN_555_0), 
	.AN(FE_RN_543_0));
   OAI2BB1X2M FE_RC_673_0 (.Y(FE_RN_553_0), 
	.B0(FE_RN_554_0), 
	.A1N(FE_RN_557_0), 
	.A0N(FE_RN_516_0));
   CLKNAND2X2M FE_RC_672_0 (.Y(FE_RN_552_0), 
	.B(FE_RN_561_0), 
	.A(FE_RN_553_0));
   NAND3X2M FE_RC_671_0 (.Y(\u_div/SumTmp[3][3] ), 
	.C(FE_RN_565_0), 
	.B(FE_RN_564_0), 
	.A(FE_RN_552_0));
   NAND2X2M FE_RC_670_0 (.Y(FE_RN_551_0), 
	.B(\u_div/BInv [3]), 
	.A(\u_div/PartRem[4][3] ));
   NAND2X2M FE_RC_668_0 (.Y(FE_RN_549_0), 
	.B(\u_div/CryTmp[3][1] ), 
	.A(\u_div/BInv [2]));
   NAND2BX4M FE_RC_667_0 (.Y(FE_RN_548_0), 
	.B(FE_RN_525_0), 
	.AN(FE_RN_549_0));
   NAND2BX4M FE_RC_663_0 (.Y(FE_RN_544_0), 
	.B(FE_RN_1449_0), 
	.AN(\u_div/PartRem[4][3] ));
   NAND2X6M FE_RC_662_0 (.Y(FE_RN_543_0), 
	.B(FE_RN_912_0), 
	.A(FE_RN_519_0));
   INVX2M FE_RC_661_0 (.Y(FE_RN_542_0), 
	.A(FE_RN_567_0));
   NAND2X4M FE_RC_660_0 (.Y(FE_RN_541_0), 
	.B(FE_RN_542_0), 
	.A(FE_RN_525_0));
   NAND2BX8M FE_RC_659_0 (.Y(FE_RN_540_0), 
	.B(FE_RN_541_0), 
	.AN(FE_RN_543_0));
   NAND3BX4M FE_RC_658_0 (.Y(FE_RN_539_0), 
	.C(FE_RN_540_0), 
	.B(FE_RN_544_0), 
	.AN(FE_RN_516_0));
   INVX2M FE_RC_656_0 (.Y(FE_RN_538_0), 
	.A(\u_div/PartRem[5][0] ));
   INVX2M FE_RC_655_0 (.Y(FE_RN_537_0), 
	.A(\u_div/SumTmp[4][0] ));
   MXI2X1M FE_RC_654_0 (.Y(\u_div/PartRem[4][1] ), 
	.S0(n13), 
	.B(FE_RN_537_0), 
	.A(FE_RN_538_0));
   INVX2M FE_RC_653_0 (.Y(FE_RN_536_0), 
	.A(FE_RN_527_0));
   CLKNAND2X2M FE_RC_651_0 (.Y(FE_RN_534_0), 
	.B(FE_RN_567_0), 
	.A(FE_RN_519_0));
   XOR2X2M FE_RC_650_0 (.Y(FE_RN_533_0), 
	.B(\u_div/BInv [2]), 
	.A(\u_div/PartRem[4][2] ));
   OAI2BB1X2M FE_RC_649_0 (.Y(FE_RN_532_0), 
	.B0(FE_RN_533_0), 
	.A1N(FE_RN_534_0), 
	.A0N(FE_RN_525_0));
   OAI21X4M FE_RC_648_0 (.Y(\u_div/SumTmp[3][2] ), 
	.B0(FE_RN_532_0), 
	.A1(FE_RN_533_0), 
	.A0(FE_RN_536_0));
   XNOR2X2M FE_RC_647_0 (.Y(FE_RN_531_0), 
	.B(n1), 
	.A(FE_RN_520_0));
   CLKNAND2X2M FE_RC_646_0 (.Y(FE_RN_530_0), 
	.B(FE_RN_519_0), 
	.A(FE_RN_525_0));
   CLKNAND2X2M FE_RC_645_0 (.Y(FE_RN_529_0), 
	.B(\u_div/CryTmp[3][1] ), 
	.A(FE_RN_530_0));
   OAI21X2M FE_RC_644_0 (.Y(\u_div/SumTmp[3][1] ), 
	.B0(FE_RN_529_0), 
	.A1(\u_div/CryTmp[3][1] ), 
	.A0(FE_RN_531_0));
   NAND2BX12M FE_RC_640_0 (.Y(FE_RN_525_0), 
	.B(FE_RN_764_0), 
	.AN(FE_RN_520_0));
   MXI2X12M FE_RC_635_0 (.Y(FE_RN_520_0), 
	.S0(n13), 
	.B(FE_RN_537_0), 
	.A(FE_RN_538_0));
   NAND2X8M FE_RC_634_0 (.Y(FE_RN_519_0), 
	.B(n1), 
	.A(FE_RN_520_0));
   INVX2M FE_RC_631_0 (.Y(FE_RN_516_0), 
	.A(\u_div/PartRem[4][2] ));
   INVX2M FE_RC_452_0 (.Y(FE_RN_360_0), 
	.A(FE_RN_347_0));
   NAND2BX2M FE_RC_451_0 (.Y(\u_div/PartRem[5][2] ), 
	.B(FE_RN_360_0), 
	.AN(FE_RN_350_0));
   INVX2M FE_RC_450_0 (.Y(FE_RN_359_0), 
	.A(\u_div/PartRem[6][1] ));
   OAI2BB2X1M FE_RC_448_0 (.Y(FE_RN_357_0), 
	.B1(\u_div/BInv [2]), 
	.B0(FE_RN_359_0), 
	.A1N(FE_RN_359_0), 
	.A0N(\u_div/BInv [2]));
   INVX2M FE_RC_447_0 (.Y(FE_RN_356_0), 
	.A(\u_div/SumTmp[5][1] ));
   OAI2BB2X1M FE_RC_445_0 (.Y(FE_RN_354_0), 
	.B1(\u_div/BInv [2]), 
	.B0(FE_RN_356_0), 
	.A1N(FE_RN_356_0), 
	.A0N(\u_div/BInv [2]));
   MXI2X1M FE_RC_444_0 (.Y(FE_RN_353_0), 
	.S0(n12), 
	.B(FE_RN_354_0), 
	.A(FE_RN_357_0));
   OAI2BB2X1M FE_RC_443_0 (.Y(\u_div/SumTmp[4][2] ), 
	.B1(\u_div/CryTmp[4][2] ), 
	.B0(FE_RN_353_0), 
	.A1N(FE_RN_353_0), 
	.A0N(\u_div/CryTmp[4][2] ));
   OAI21X4M FE_RC_442_0 (.Y(FE_RN_352_0), 
	.B0(\u_div/BInv [2]), 
	.A1(FE_RN_347_0), 
	.A0(FE_RN_350_0));
   NOR2X6M FE_RC_440_0 (.Y(FE_RN_350_0), 
	.B(n12), 
	.A(FE_RN_359_0));
   INVX2M FE_RC_439_0 (.Y(FE_RN_349_0), 
	.A(FE_RN_350_0));
   NOR2BX8M FE_RC_437_0 (.Y(FE_RN_347_0), 
	.B(FE_RN_356_0), 
	.AN(n12));
   NAND2BX2M FE_RC_431_0 (.Y(\u_div/PartRem[5][1] ), 
	.B(FE_RN_315_0), 
	.AN(FE_RN_330_0));
   CLKNAND2X2M FE_RC_430_0 (.Y(FE_RN_343_0), 
	.B(FE_RN_341_0), 
	.A(FE_RN_330_0));
   NAND2X2M FE_RC_429_0 (.Y(FE_RN_342_0), 
	.B(\u_div/CryTmp[4][1] ), 
	.A(n1));
   CLKNAND2X2M FE_RC_428_0 (.Y(FE_RN_341_0), 
	.B(FE_RN_335_0), 
	.A(FE_RN_342_0));
   INVX2M FE_RC_427_0 (.Y(FE_RN_340_0), 
	.A(\u_div/PartRem[6][0] ));
   AOI2B1X1M FE_RC_426_0 (.Y(FE_RN_339_0), 
	.B0(FE_RN_340_0), 
	.A1N(FE_RN_303_0), 
	.A0(FE_RN_332_0));
   OAI21X2M FE_RC_425_0 (.Y(FE_RN_338_0), 
	.B0(FE_RN_339_0), 
	.A1(FE_RN_303_0), 
	.A0(FE_RN_309_0));
   NAND3BX2M FE_RC_424_0 (.Y(FE_RN_337_0), 
	.C(FE_RN_338_0), 
	.B(FE_RN_315_0), 
	.AN(FE_RN_341_0));
   OAI2B11X2M FE_RC_423_0 (.Y(\u_div/SumTmp[4][1] ), 
	.C0(FE_RN_337_0), 
	.B0(FE_RN_343_0), 
	.A1N(FE_RN_341_0), 
	.A0(FE_RN_315_0));
   NAND2BX2M FE_RC_421_0 (.Y(FE_RN_335_0), 
	.B(FE_RN_764_0), 
	.AN(\u_div/CryTmp[4][1] ));
   INVX2M FE_RC_419_0 (.Y(FE_RN_333_0), 
	.A(FE_RN_313_0));
   NAND2X2M FE_RC_415_0 (.Y(FE_RN_329_0), 
	.B(FE_RN_335_0), 
	.A(FE_RN_330_0));
   CLKNAND2X2M FE_RC_411_0 (.Y(FE_RN_327_0), 
	.B(FE_RN_202_0), 
	.A(\u_div/PartRem[7][2] ));
   OAI2B1X2M FE_RC_410_0 (.Y(\u_div/PartRem[6][3] ), 
	.B0(FE_RN_327_0), 
	.A1N(\u_div/SumTmp[6][2] ), 
	.A0(FE_RN_202_0));
   CLKINVX2M FE_RC_409_0 (.Y(FE_RN_326_0), 
	.A(FE_RN_314_0));
   NAND2X6M FE_RC_408_0 (.Y(FE_RN_325_0), 
	.B(n19), 
	.A(FE_RN_326_0));
   INVX2M FE_RC_407_0 (.Y(FE_RN_324_0), 
	.A(FE_RN_303_0));
   XOR2X2M FE_RC_404_0 (.Y(FE_RN_322_0), 
	.B(\u_div/BInv [3]), 
	.A(FE_RN_305_0));
   INVX2M FE_RC_403_0 (.Y(FE_RN_321_0), 
	.A(FE_RN_304_0));
   INVX2M FE_RC_402_0 (.Y(FE_RN_320_0), 
	.A(FE_RN_314_0));
   NOR2X2M FE_RC_401_0 (.Y(FE_RN_319_0), 
	.B(FE_RN_321_0), 
	.A(FE_RN_320_0));
   MXI2X1M FE_RC_400_0 (.Y(\u_div/SumTmp[5][3] ), 
	.S0(FE_RN_308_0), 
	.B(FE_RN_319_0), 
	.A(FE_RN_322_0));
   INVX2M FE_RC_399_0 (.Y(FE_RN_318_0), 
	.A(n19));
   OAI22X8M FE_RC_398_0 (.Y(FE_RN_317_0), 
	.B1(FE_RN_314_0), 
	.B0(FE_RN_318_0), 
	.A1(FE_RN_247_0), 
	.A0(FE_RN_303_0));
   NOR2X2M FE_RC_397_0 (.Y(FE_RN_316_0), 
	.B(FE_RN_303_0), 
	.A(FE_RN_309_0));
   INVX2M FE_RC_393_0 (.Y(FE_RN_312_0), 
	.A(FE_RN_245_0));
   NAND2X4M FE_RC_391_0 (.Y(FE_RN_310_0), 
	.B(FE_RN_312_0), 
	.A(FE_RN_311_0));
   MXI2X6M FE_RC_386_0 (.Y(FE_RN_305_0), 
	.S0(FE_RN_202_0), 
	.B(\u_div/PartRem[7][2] ), 
	.A(\u_div/SumTmp[6][2] ));
   NAND2X4M FE_RC_385_0 (.Y(FE_RN_304_0), 
	.B(FE_RN_1449_0), 
	.A(FE_RN_305_0));
   NAND2X8M FE_RC_384_0 (.Y(FE_RN_303_0), 
	.B(n19), 
	.A(FE_RN_304_0));
   MXI2X1M FE_RC_330_0 (.Y(\u_div/PartRem[6][2] ), 
	.S0(n11), 
	.B(FE_RN_241_0), 
	.A(FE_RN_242_0));
   OAI2B1X2M FE_RC_329_0 (.Y(FE_RN_257_0), 
	.B0(FE_RN_236_0), 
	.A1N(FE_RN_246_0), 
	.A0(\u_div/PartRem[6][1] ));
   NAND3X2M FE_RC_328_0 (.Y(FE_RN_256_0), 
	.C(\u_div/PartRem[6][1] ), 
	.B(FE_RN_254_0), 
	.A(FE_RN_236_0));
   NAND2X2M FE_RC_327_0 (.Y(FE_RN_255_0), 
	.B(\u_div/BInv [2]), 
	.A(FE_RN_240_0));
   NAND2X2M FE_RC_326_0 (.Y(FE_RN_254_0), 
	.B(FE_RN_238_0), 
	.A(FE_RN_255_0));
   NAND2X2M FE_RC_324_0 (.Y(FE_RN_252_0), 
	.B(FE_RN_254_0), 
	.A(FE_RN_245_0));
   OAI2B11X2M FE_RC_323_0 (.Y(\u_div/SumTmp[5][2] ), 
	.C0(FE_RN_252_0), 
	.B0(FE_RN_256_0), 
	.A1N(FE_RN_257_0), 
	.A0(FE_RN_254_0));
   OAI2BB2X1M FE_RC_322_0 (.Y(FE_RN_251_0), 
	.B1(\u_div/CryTmp[5][1] ), 
	.B0(n1), 
	.A1N(n1), 
	.A0N(\u_div/CryTmp[5][1] ));
   INVX2M FE_RC_321_0 (.Y(FE_RN_250_0), 
	.A(FE_RN_251_0));
   CLKNAND2X2M FE_RC_320_0 (.Y(FE_RN_249_0), 
	.B(FE_RN_246_0), 
	.A(FE_RN_236_0));
   NAND2X2M FE_RC_319_0 (.Y(FE_RN_248_0), 
	.B(\u_div/PartRem[6][1] ), 
	.A(FE_RN_249_0));
   OAI2B1X2M FE_RC_318_0 (.Y(\u_div/SumTmp[5][1] ), 
	.B0(FE_RN_248_0), 
	.A1N(FE_RN_250_0), 
	.A0(\u_div/PartRem[6][1] ));
   NAND2X8M FE_RC_317_0 (.Y(FE_RN_247_0), 
	.B(\u_div/BInv [2]), 
	.A(FE_RN_240_0));
   NAND2X2M FE_RC_316_0 (.Y(FE_RN_246_0), 
	.B(\u_div/CryTmp[5][1] ), 
	.A(n1));
   INVX2M FE_RC_315_0 (.Y(FE_RN_245_0), 
	.A(FE_RN_246_0));
   INVX2M FE_RC_312_0 (.Y(FE_RN_242_0), 
	.A(\u_div/PartRem[7][1] ));
   INVX2M FE_RC_311_0 (.Y(FE_RN_241_0), 
	.A(\u_div/SumTmp[6][1] ));
   NAND2BX2M FE_RC_306_0 (.Y(FE_RN_236_0), 
	.B(FE_RN_764_0), 
	.AN(\u_div/CryTmp[5][1] ));
   INVX2M FE_RC_270_0 (.Y(FE_RN_206_0), 
	.A(\u_div/SumTmp[6][0] ));
   INVX2M FE_RC_269_0 (.Y(FE_RN_205_0), 
	.A(FE_RN_1382_0));
   INVX2M FE_RC_268_0 (.Y(FE_RN_204_0), 
	.A(FE_RN_195_0));
   NAND2X1M FE_RC_264_0 (.Y(FE_RN_201_0), 
	.B(\u_div/CryTmp[6][1] ), 
	.A(FE_RN_174_0));
   CLKNAND2X2M FE_RC_263_0 (.Y(FE_RN_172_0), 
	.B(FE_RN_177_0), 
	.A(FE_RN_201_0));
   OAI2B11X4M FE_RC_261_0 (.Y(FE_RN_199_0), 
	.C0(FE_RN_174_0), 
	.B0(\u_div/CryTmp[6][1] ), 
	.A1N(FE_RN_1137_0), 
	.A0(\u_div/PartRem[7][2] ));
   NAND2X2M FE_RC_260_0 (.Y(FE_RN_198_0), 
	.B(FE_RN_1137_0), 
	.A(FE_RN_177_0));
   INVX2M FE_RC_259_0 (.Y(FE_RN_197_0), 
	.A(FE_RN_177_0));
   AOI22X4M FE_RC_258_0 (.Y(FE_RN_196_0), 
	.B1(\u_div/BInv [2]), 
	.B0(FE_RN_197_0), 
	.A1(\u_div/PartRem[7][2] ), 
	.A0(FE_RN_198_0));
   INVX2M FE_RC_257_0 (.Y(FE_RN_195_0), 
	.A(n18));
   CLKNAND2X2M FE_RC_255_0 (.Y(\u_div/PartRem[7][1] ), 
	.B(FE_RN_117_0), 
	.A(FE_RN_127_0));
   INVX2M FE_RC_254_0 (.Y(FE_RN_194_0), 
	.A(FE_RN_172_0));
   INVX2M FE_RC_253_0 (.Y(FE_RN_193_0), 
	.A(\u_div/CryTmp[6][1] ));
   INVX2M FE_RC_252_0 (.Y(FE_RN_192_0), 
	.A(FE_RN_174_0));
   AOI21X2M FE_RC_251_0 (.Y(FE_RN_191_0), 
	.B0(FE_RN_192_0), 
	.A1(FE_RN_193_0), 
	.A0(FE_RN_177_0));
   NAND2X2M FE_RC_248_0 (.Y(FE_RN_188_0), 
	.B(FE_RN_1137_0), 
	.A(\u_div/PartRem[7][2] ));
   OAI21X4M FE_RC_247_0 (.Y(FE_RN_187_0), 
	.B0(FE_RN_188_0), 
	.A1(FE_RN_1137_0), 
	.A0(\u_div/PartRem[7][2] ));
   MXI2X4M FE_RC_246_0 (.Y(\u_div/SumTmp[6][2] ), 
	.S0(FE_RN_187_0), 
	.B(FE_RN_191_0), 
	.A(FE_RN_194_0));
   CLKNAND2X2M FE_RC_244_0 (.Y(FE_RN_185_0), 
	.B(FE_RN_174_0), 
	.A(FE_RN_177_0));
   CLKNAND2X2M FE_RC_243_0 (.Y(FE_RN_184_0), 
	.B(FE_RN_177_0), 
	.A(FE_RN_174_0));
   CLKNAND2X2M FE_RC_242_0 (.Y(FE_RN_183_0), 
	.B(\u_div/CryTmp[6][1] ), 
	.A(FE_RN_184_0));
   OAI21X2M FE_RC_241_0 (.Y(\u_div/SumTmp[6][1] ), 
	.B0(FE_RN_183_0), 
	.A1(\u_div/CryTmp[6][1] ), 
	.A0(FE_RN_185_0));
   NAND2X8M FE_RC_235_0 (.Y(FE_RN_177_0), 
	.B(n1), 
	.A(FE_RN_176_0));
   NAND2X4M FE_RC_234_0 (.Y(FE_RN_176_0), 
	.B(FE_RN_127_0), 
	.A(FE_RN_117_0));
   NAND2BX4M FE_RC_232_0 (.Y(FE_RN_174_0), 
	.B(FE_RN_764_0), 
	.AN(FE_RN_176_0));
   INVX2M FE_RC_191_0 (.Y(FE_RN_138_0), 
	.A(n2));
   INVX2M FE_RC_190_0 (.Y(FE_RN_137_0), 
	.A(n1));
   NAND2BX1M FE_RC_189_0 (.Y(FE_RN_136_0), 
	.B(FE_RN_105_0), 
	.AN(n1));
   OAI21X2M FE_RC_188_0 (.Y(FE_RN_135_0), 
	.B0(FE_RN_136_0), 
	.A1(FE_RN_137_0), 
	.A0(FE_RN_106_0));
   INVX2M FE_RC_187_0 (.Y(FE_RN_134_0), 
	.A(\u_div/CryTmp[7][1] ));
   AOI2BB2X4M FE_RC_186_0 (.Y(FE_RN_133_0), 
	.B1(n1), 
	.B0(FE_RN_105_0), 
	.A1N(n1), 
	.A0N(FE_RN_106_0));
   INVX2M FE_RC_185_0 (.Y(FE_RN_132_0), 
	.A(\u_div/CryTmp[7][1] ));
   NOR2X3M FE_RC_184_0 (.Y(FE_RN_131_0), 
	.B(FE_RN_133_0), 
	.A(FE_RN_132_0));
   AOI21X4M FE_RC_183_0 (.Y(FE_RN_130_0), 
	.B0(FE_RN_131_0), 
	.A1(FE_RN_134_0), 
	.A0(FE_RN_135_0));
   MXI2X6M FE_RC_182_0 (.Y(\u_div/PartRem[7][2] ), 
	.S0(n10), 
	.B(FE_RN_130_0), 
	.A(FE_RN_138_0));
   NAND2X6M FE_RC_181_0 (.Y(FE_RN_97_0), 
	.B(FE_RN_98_0), 
	.A(FE_RN_99_0));
   NAND2X2M FE_RC_180_0 (.Y(FE_RN_79_0), 
	.B(FE_RN_80_0), 
	.A(FE_OFN30_u_div_AIncCry_1_));
   CLKINVX2M FE_RC_179_0 (.Y(FE_RN_112_0), 
	.A(FE_RN_123_0));
   AND2X8M FE_RC_178_0 (.Y(n10), 
	.B(n17), 
	.A(FE_RN_128_0));
   INVX2M FE_RC_177_0 (.Y(FE_RN_129_0), 
	.A(FE_RN_120_0));
   OAI2BB1X4M FE_RC_176_0 (.Y(FE_RN_128_0), 
	.B0(FE_RN_121_0), 
	.A1N(FE_RN_129_0), 
	.A0N(FE_RN_126_0));
   NAND3X4M FE_RC_175_0 (.Y(FE_RN_127_0), 
	.C(n17), 
	.B(\u_div/SumTmp[7][0] ), 
	.A(FE_RN_128_0));
   CLKNAND2X2M FE_RC_174_0 (.Y(FE_RN_126_0), 
	.B(FE_RN_110_0), 
	.A(FE_RN_123_0));
   INVX2M FE_RC_173_0 (.Y(FE_RN_125_0), 
	.A(FE_RN_115_0));
   NAND2X2M FE_RC_172_0 (.Y(FE_RN_124_0), 
	.B(FE_RN_114_0), 
	.A(FE_RN_125_0));
   NAND3BX4M FE_RC_171_0 (.Y(FE_RN_123_0), 
	.C(FE_OFN30_u_div_AIncCry_1_), 
	.B(FE_RN_80_0), 
	.AN(FE_RN_76_0));
   CLKNAND2X4M FE_RC_170_0 (.Y(FE_RN_122_0), 
	.B(FE_RN_115_0), 
	.A(FE_RN_123_0));
   NAND2X4M FE_RC_169_0 (.Y(FE_RN_121_0), 
	.B(FE_RN_114_0), 
	.A(FE_RN_122_0));
   NAND2X4M FE_RC_168_0 (.Y(FE_RN_120_0), 
	.B(FE_RN_99_0), 
	.A(FE_RN_98_0));
   NAND2X3M FE_RC_167_0 (.Y(FE_RN_119_0), 
	.B(FE_RN_121_0), 
	.A(FE_RN_120_0));
   OAI2B11X4M FE_RC_166_0 (.Y(FE_RN_118_0), 
	.C0(n17), 
	.B0(FE_RN_119_0), 
	.A1N(FE_RN_124_0), 
	.A0(FE_RN_126_0));
   NAND2X4M FE_RC_165_0 (.Y(FE_RN_117_0), 
	.B(\u_div/AIncCry [7]), 
	.A(FE_RN_118_0));
   INVX2M FE_RC_163_0 (.Y(FE_RN_116_0), 
	.A(FE_RN_75_0));
   NAND2BX2M FE_RC_162_0 (.Y(\u_div/CryTmp[7][1] ), 
	.B(FE_RN_116_0), 
	.AN(FE_RN_112_0));
   INVX2M FE_RC_161_0 (.Y(FE_RN_115_0), 
	.A(FE_RN_75_0));
   INVX2M FE_RC_160_0 (.Y(FE_RN_114_0), 
	.A(FE_RN_101_0));
   INVX2M FE_RC_157_0 (.Y(FE_RN_111_0), 
	.A(FE_RN_102_0));
   NOR2X2M FE_RC_156_0 (.Y(FE_RN_110_0), 
	.B(FE_RN_75_0), 
	.A(FE_RN_111_0));
   INVX2M FE_RC_152_0 (.Y(FE_RN_107_0), 
	.A(n16));
   NOR2X2M FE_RC_151_0 (.Y(n8), 
	.B(FE_RN_107_0), 
	.A(FE_RN_100_0));
   CLKINVX2M FE_RC_150_0 (.Y(n2), 
	.A(FE_RN_97_0));
   INVX2M FE_RC_149_0 (.Y(FE_RN_106_0), 
	.A(FE_RN_97_0));
   INVX2M FE_RC_148_0 (.Y(FE_RN_105_0), 
	.A(FE_RN_97_0));
   INVX2M FE_RC_144_0 (.Y(FE_RN_102_0), 
	.A(n1));
   INVX2M FE_RC_143_0 (.Y(FE_RN_101_0), 
	.A(n1));
   AND2X8M FE_RC_140_0 (.Y(FE_RN_98_0), 
	.B(\u_div/SumTmp[8][0] ), 
	.A(n16));
   CLKNAND2X2M FE_RC_129_0 (.Y(FE_RN_53_0), 
	.B(FE_RN_54_0), 
	.A(FE_RN_39_0));
   CLKINVX2M FE_RC_128_0 (.Y(\u_div/AIncCry [7]), 
	.A(FE_RN_79_0));
   NOR2BX2M FE_RC_127_0 (.Y(FE_RN_91_0), 
	.B(FE_RN_75_0), 
	.AN(FE_RN_77_0));
   INVX2M FE_RC_125_0 (.Y(FE_RN_89_0), 
	.A(n7));
   INVX2M FE_RC_124_0 (.Y(FE_RN_88_0), 
	.A(\u_div/BInv [0]));
   CLKNAND2X2M FE_RC_123_0 (.Y(FE_RN_87_0), 
	.B(FE_RN_89_0), 
	.A(FE_RN_88_0));
   CLKNAND2X2M FE_RC_122_0 (.Y(FE_RN_86_0), 
	.B(FE_RN_115_0), 
	.A(FE_RN_87_0));
   MXI2X1M FE_RC_121_0 (.Y(\u_div/SumTmp[7][0] ), 
	.S0(FE_RN_79_0), 
	.B(FE_RN_86_0), 
	.A(FE_RN_91_0));
   NAND2X2M FE_RC_120_0 (.Y(FE_RN_85_0), 
	.B(\u_div/AInv [5]), 
	.A(FE_RN_39_0));
   NOR2BX2M FE_RC_119_0 (.Y(FE_RN_84_0), 
	.B(FE_RN_85_0), 
	.AN(FE_RN_54_0));
   AND2X4M FE_RC_116_0 (.Y(FE_RN_82_0), 
	.B(\u_div/AInv [5]), 
	.A(\u_div/AInv [6]));
   INVX2M FE_RC_112_0 (.Y(FE_RN_78_0), 
	.A(n7));
   INVX2M FE_RC_110_0 (.Y(FE_RN_76_0), 
	.A(FE_RN_77_0));
   AND2X2M FE_RC_109_0 (.Y(FE_RN_75_0), 
	.B(n7), 
	.A(\u_div/BInv [0]));
   INVX2M FE_RC_95_0 (.Y(FE_RN_66_0), 
	.A(b[1]));
   MXI2X4M FE_RC_94_0 (.Y(n1), 
	.S0(n7), 
	.B(b[1]), 
	.A(FE_RN_66_0));
   CLKXOR2X2M FE_RC_93_0 (.Y(FE_RN_65_0), 
	.B(b[1]), 
	.A(n7));
   AND3X6M FE_RC_92_0 (.Y(n16), 
	.C(FE_RN_49_0), 
	.B(FE_RN_48_0), 
	.A(FE_RN_65_0));
   INVX2M FE_RC_91_0 (.Y(FE_RN_64_0), 
	.A(b[1]));
   NAND2X2M FE_RC_90_0 (.Y(FE_RN_63_0), 
	.B(n7), 
	.A(FE_RN_64_0));
   NAND2BX2M FE_RC_89_0 (.Y(FE_RN_62_0), 
	.B(FE_RN_49_0), 
	.AN(FE_RN_63_0));
   NAND3BX4M FE_RC_87_0 (.Y(n15), 
	.C(FE_RN_1375_0), 
	.B(FE_RN_48_0), 
	.AN(FE_RN_62_0));
   NAND2X2M FE_RC_86_0 (.Y(FE_RN_38_0), 
	.B(FE_RN_39_0), 
	.A(FE_RN_40_0));
   CLKNAND2X2M FE_RC_85_0 (.Y(FE_RN_60_0), 
	.B(\u_div/AInv [5]), 
	.A(FE_RN_53_0));
   CLKNAND2X2M FE_RC_83_0 (.Y(FE_RN_58_0), 
	.B(FE_RN_46_0), 
	.A(\u_div/AInv [5]));
   INVX2M FE_RC_82_0 (.Y(FE_RN_57_0), 
	.A(\u_div/AInv [5]));
   INVX2M FE_RC_81_0 (.Y(FE_RN_56_0), 
	.A(FE_RN_53_0));
   NAND3X2M FE_RC_80_0 (.Y(FE_RN_55_0), 
	.C(FE_OFN30_u_div_AIncCry_1_), 
	.B(FE_RN_57_0), 
	.A(FE_RN_56_0));
   NAND3X2M FE_RC_79_0 (.Y(\u_div/PartRem[6][0] ), 
	.C(FE_RN_60_0), 
	.B(FE_RN_58_0), 
	.A(FE_RN_55_0));
   CLKNAND2X2M FE_RC_74_0 (.Y(n18), 
	.B(FE_RN_18_0), 
	.A(FE_RN_21_0));
   INVX2M FE_RC_73_0 (.Y(FE_RN_51_0), 
	.A(b[2]));
   MXI2X4M FE_RC_72_0 (.Y(\u_div/BInv [2]), 
	.S0(n7), 
	.B(b[2]), 
	.A(FE_RN_51_0));
   INVX2M FE_RC_71_0 (.Y(FE_RN_50_0), 
	.A(FE_RN_49_0));
   NOR2BX2M FE_RC_70_0 (.Y(n17), 
	.B(FE_RN_50_0), 
	.AN(FE_RN_48_0));
   XOR2X4M FE_RC_69_0 (.Y(FE_RN_49_0), 
	.B(b[2]), 
	.A(n7));
   CLKNAND2X4M FE_RC_68_0 (.Y(FE_RN_48_0), 
	.B(FE_RN_21_0), 
	.A(FE_RN_18_0));
   INVX2M FE_RC_66_0 (.Y(FE_RN_47_0), 
	.A(FE_RN_31_0));
   CLKNAND2X2M FE_RC_65_0 (.Y(FE_RN_30_0), 
	.B(FE_RN_47_0), 
	.A(FE_OFN30_u_div_AIncCry_1_));
   INVX2M FE_RC_64_0 (.Y(FE_RN_46_0), 
	.A(FE_OFN30_u_div_AIncCry_1_));
   NAND2X2M FE_RC_63_0 (.Y(FE_RN_45_0), 
	.B(FE_RN_46_0), 
	.A(\u_div/AInv [4]));
   CLKNAND2X2M FE_RC_62_0 (.Y(FE_RN_44_0), 
	.B(\u_div/AInv [4]), 
	.A(FE_RN_38_0));
   INVX2M FE_RC_61_0 (.Y(FE_RN_43_0), 
	.A(\u_div/AInv [4]));
   INVX2M FE_RC_60_0 (.Y(FE_RN_42_0), 
	.A(FE_RN_38_0));
   NAND3X2M FE_RC_59_0 (.Y(FE_RN_41_0), 
	.C(FE_OFN30_u_div_AIncCry_1_), 
	.B(FE_RN_43_0), 
	.A(FE_RN_42_0));
   NAND3X2M FE_RC_58_0 (.Y(\u_div/PartRem[5][0] ), 
	.C(FE_RN_45_0), 
	.B(FE_RN_44_0), 
	.A(FE_RN_41_0));
   XNOR2X2M FE_RC_52_0 (.Y(\u_div/PartRem[4][0] ), 
	.B(\u_div/AInv [3]), 
	.A(FE_RN_30_0));
   INVX2M FE_RC_51_0 (.Y(FE_RN_36_0), 
	.A(\u_div/AInv [1]));
   NAND2BX2M FE_RC_50_0 (.Y(FE_RN_35_0), 
	.B(FE_OFN30_u_div_AIncCry_1_), 
	.AN(FE_RN_36_0));
   XNOR2X2M FE_RC_49_0 (.Y(\u_div/PartRem[3][0] ), 
	.B(\u_div/AInv [2]), 
	.A(FE_RN_35_0));
   MXI2X1M FE_RC_46_0 (.Y(\u_div/PartRem[2][0] ), 
	.S0(FE_RN_36_0), 
	.B(FE_RN_46_0), 
	.A(FE_OFN30_u_div_AIncCry_1_));
   CLKINVX2M FE_RC_41_0 (.Y(FE_RN_1_0), 
	.A(b[6]));
   NAND4BX1M FE_RC_40_0 (.Y(FE_RN_29_0), 
	.D(FE_RN_12_0), 
	.C(FE_RN_5_0), 
	.B(n7), 
	.AN(b[6]));
   AND3X2M FE_RC_37_0 (.Y(FE_RN_26_0), 
	.C(b[6]), 
	.B(b[4]), 
	.A(FE_RN_20_0));
   NAND2X2M FE_RC_36_0 (.Y(FE_RN_25_0), 
	.B(FE_RN_89_0), 
	.A(FE_RN_26_0));
   CLKNAND2X2M FE_RC_35_0 (.Y(n19), 
	.B(FE_RN_29_0), 
	.A(FE_RN_25_0));
   INVX2M FE_RC_34_0 (.Y(FE_RN_24_0), 
	.A(b[3]));
   MXI2X6M FE_RC_33_0 (.Y(\u_div/BInv [3]), 
	.S0(n7), 
	.B(b[3]), 
	.A(FE_RN_24_0));
   INVX2M FE_RC_32_0 (.Y(FE_RN_23_0), 
	.A(b[3]));
   NOR2BX8M FE_RC_31_0 (.Y(FE_RN_22_0), 
	.B(b[6]), 
	.AN(FE_RN_12_0));
   NAND4X8M FE_RC_30_0 (.Y(FE_RN_21_0), 
	.D(FE_RN_23_0), 
	.C(n7), 
	.B(FE_RN_5_0), 
	.A(FE_RN_22_0));
   INVX2M FE_RC_29_0 (.Y(FE_RN_20_0), 
	.A(FE_RN_9_0));
   AND3X6M FE_RC_28_0 (.Y(FE_RN_19_0), 
	.C(b[6]), 
	.B(b[4]), 
	.A(FE_RN_20_0));
   NAND3BX4M FE_RC_27_0 (.Y(FE_RN_18_0), 
	.C(b[3]), 
	.B(FE_RN_19_0), 
	.AN(n7));
   INVX2M FE_RC_24_0 (.Y(FE_RN_16_0), 
	.A(b[5]));
   NOR2X2M FE_RC_23_0 (.Y(FE_RN_15_0), 
	.B(FE_RN_16_0), 
	.A(FE_RN_1_0));
   NAND3BX2M FE_RC_22_0 (.Y(FE_RN_14_0), 
	.C(FE_RN_5_0), 
	.B(n7), 
	.AN(b[6]));
   OAI2BB1X2M FE_RC_21_0 (.Y(n20), 
	.B0(FE_RN_14_0), 
	.A1N(FE_RN_15_0), 
	.A0N(FE_RN_89_0));
   INVX2M FE_RC_20_0 (.Y(FE_RN_13_0), 
	.A(b[4]));
   MXI2X3M FE_RC_19_0 (.Y(\u_div/BInv [4]), 
	.S0(n7), 
	.B(b[4]), 
	.A(FE_RN_13_0));
   INVX2M FE_RC_18_0 (.Y(FE_RN_12_0), 
	.A(b[4]));
   INVX2M FE_RC_15_0 (.Y(FE_RN_9_0), 
	.A(b[5]));
   MXI2X3M FE_RC_11_0 (.Y(\u_div/BInv [6]), 
	.S0(n7), 
	.B(b[6]), 
	.A(FE_RN_1_0));
   MXI2X3M FE_RC_9_0 (.Y(\u_div/BInv [5]), 
	.S0(n7), 
	.B(b[5]), 
	.A(FE_RN_16_0));
   INVX2M FE_RC_8_0 (.Y(FE_RN_5_0), 
	.A(b[5]));
   ADDHX1M \u_div/u_ha_AInc_0  (.S(\u_div/PartRem[1][0] ), 
	.CO(\u_div/AIncCry [1]), 
	.B(a[8]), 
	.A(\u_div/AInv [0]));
   ADDFX2M \u_div/u_fa_PartRem_1_0_0  (.CO(\u_div/CryTmp[0][1] ), 
	.CI(n7), 
	.B(\u_div/BInv [0]), 
	.A(\u_div/PartRem[1][0] ));
   ADDFX2M \u_div/u_fa_PartRem_1_1_0  (.S(\u_div/SumTmp[1][0] ), 
	.CO(\u_div/CryTmp[1][1] ), 
	.CI(n7), 
	.B(\u_div/BInv [0]), 
	.A(\u_div/PartRem[2][0] ));
   ADDFX2M \u_div/u_fa_PartRem_1_2_0  (.S(\u_div/SumTmp[2][0] ), 
	.CO(\u_div/CryTmp[2][1] ), 
	.CI(n7), 
	.B(\u_div/BInv [0]), 
	.A(\u_div/PartRem[3][0] ));
   ADDFX2M \u_div/u_fa_PartRem_1_3_0  (.S(\u_div/SumTmp[3][0] ), 
	.CO(\u_div/CryTmp[3][1] ), 
	.CI(n7), 
	.B(\u_div/BInv [0]), 
	.A(\u_div/PartRem[4][0] ));
   ADDFX2M \u_div/u_fa_PartRem_1_4_0  (.S(\u_div/SumTmp[4][0] ), 
	.CO(\u_div/CryTmp[4][1] ), 
	.CI(n7), 
	.B(\u_div/BInv [0]), 
	.A(\u_div/PartRem[5][0] ));
   ADDFX2M \u_div/u_fa_PartRem_1_5_0  (.S(\u_div/SumTmp[5][0] ), 
	.CO(\u_div/CryTmp[5][1] ), 
	.CI(n7), 
	.B(\u_div/BInv [0]), 
	.A(\u_div/PartRem[6][0] ));
   CLKINVX40M U3 (.Y(n7), 
	.A(b[7]));
   MXI2X1M U6 (.Y(n3), 
	.S0(\u_div/QAbs [1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   XNOR2X2M U9 (.Y(\u_div/SumTmp[8][0] ), 
	.B(b[7]), 
	.A(\u_div/BInv [0]));
   CLKXOR2X2M U11 (.Y(n9), 
	.B(b[7]), 
	.A(a[8]));
   XOR2X1M U13 (.Y(\u_div/QInv [8]), 
	.B(n9), 
	.A(n8));
   XOR2X1M U14 (.Y(\u_div/QInv [7]), 
	.B(n9), 
	.A(n10));
   XOR2X1M U15 (.Y(\u_div/QInv [6]), 
	.B(n9), 
	.A(n11));
   XOR2X1M U16 (.Y(\u_div/QInv [5]), 
	.B(n9), 
	.A(n12));
   XOR2X1M U17 (.Y(\u_div/QInv [4]), 
	.B(n9), 
	.A(n13));
   CLKXOR2X2M U18 (.Y(\u_div/QInv [3]), 
	.B(n9), 
	.A(n14));
   XOR2X2M U19 (.Y(\u_div/QInv [2]), 
	.B(n9), 
	.A(FE_OFN28_u_div_CryTmp_2__7_));
   AND2X1M U22 (.Y(\u_div/QIncCry [0]), 
	.B(n9), 
	.A(n15));
   CLKMX2X2M U23 (.Y(\u_div/PartRem[2][7] ), 
	.S0(FE_OFN28_u_div_CryTmp_2__7_), 
	.B(\u_div/SumTmp[2][6] ), 
	.A(\u_div/PartRem[3][6] ));
   CLKMX2X2M U25 (.Y(\u_div/PartRem[4][5] ), 
	.S0(n13), 
	.B(\u_div/SumTmp[4][4] ), 
	.A(\u_div/PartRem[5][4] ));
   MX2X2M U26 (.Y(\u_div/PartRem[5][4] ), 
	.S0(n12), 
	.B(\u_div/SumTmp[5][3] ), 
	.A(\u_div/PartRem[6][3] ));
   CLKMX2X2M U40 (.Y(\u_div/PartRem[1][6] ), 
	.S0(\u_div/QAbs [1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   CLKMX2X6M U41 (.Y(\u_div/PartRem[2][5] ), 
	.S0(FE_OFN28_u_div_CryTmp_2__7_), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   MX2X3M U43 (.Y(\u_div/PartRem[4][3] ), 
	.S0(n13), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   MX2X2M U49 (.Y(\u_div/PartRem[2][4] ), 
	.S0(FE_OFN28_u_div_CryTmp_2__7_), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   XOR2X2M U73 (.Y(\u_div/AInv [6]), 
	.B(a[6]), 
	.A(a[8]));
   XOR2X2M U74 (.Y(\u_div/AInv [5]), 
	.B(a[5]), 
	.A(a[8]));
   XOR2X2M U75 (.Y(\u_div/AInv [4]), 
	.B(a[4]), 
	.A(a[8]));
   XOR2X2M U76 (.Y(\u_div/AInv [3]), 
	.B(a[3]), 
	.A(a[8]));
   XOR2X2M U77 (.Y(\u_div/AInv [2]), 
	.B(a[2]), 
	.A(a[8]));
   XOR2X2M U78 (.Y(\u_div/AInv [1]), 
	.B(a[1]), 
	.A(a[8]));
   XOR2X2M U79 (.Y(\u_div/AInv [0]), 
	.B(a[0]), 
	.A(a[8]));
endmodule

module Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire [9:0] carry;

   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n8), 
	.A(A[1]));
   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n2), 
	.A(A[7]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n3), 
	.A(A[6]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n4), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n5), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n6), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n7), 
	.A(A[2]));
   XOR3XLM U2_8 (.Y(DIFF[8]), 
	.C(carry[8]), 
	.B(n2), 
	.A(A[8]));
   XNOR2X2M U1 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n9));
   INVX2M U2 (.Y(n2), 
	.A(B[8]));
   INVX2M U3 (.Y(n9), 
	.A(B[0]));
   INVX2M U4 (.Y(n1), 
	.A(A[0]));
   INVX2M U5 (.Y(n7), 
	.A(B[2]));
   INVX2M U6 (.Y(n6), 
	.A(B[3]));
   INVX2M U7 (.Y(n5), 
	.A(B[4]));
   INVX2M U8 (.Y(n4), 
	.A(B[5]));
   INVX2M U9 (.Y(n3), 
	.A(B[6]));
   NAND2X2M U10 (.Y(carry[1]), 
	.B(n1), 
	.A(B[0]));
   INVX2M U11 (.Y(n8), 
	.A(B[1]));
endmodule

module Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire n2;
   wire [8:1] carry;

   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   XOR3XLM U1_8 (.Y(SUM[8]), 
	.C(carry[8]), 
	.B(B[8]), 
	.A(A[8]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   XNOR2X2M U2 (.Y(SUM[0]), 
	.B(n2), 
	.A(B[0]));
   INVX2M U3 (.Y(n2), 
	.A(A[0]));
endmodule

module Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire \A[5] ;
   wire \A[4] ;
   wire \A[3] ;
   wire \A[2] ;
   wire \A[1] ;
   wire \A[0] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;

   assign SUM[5] = \A[5]  ;
   assign \A[5]  = A[5] ;
   assign SUM[4] = \A[4]  ;
   assign \A[4]  = A[4] ;
   assign SUM[3] = \A[3]  ;
   assign \A[3]  = A[3] ;
   assign SUM[2] = \A[2]  ;
   assign \A[2]  = A[2] ;
   assign SUM[1] = \A[1]  ;
   assign \A[1]  = A[1] ;
   assign SUM[0] = \A[0]  ;
   assign \A[0]  = A[0] ;

   INVX2M U2 (.Y(n1), 
	.A(A[6]));
   INVX2M U3 (.Y(n2), 
	.A(B[6]));
   XNOR2X1M U4 (.Y(SUM[9]), 
	.B(n4), 
	.A(n3));
   NOR2X1M U5 (.Y(n4), 
	.B(n6), 
	.A(n5));
   CLKXOR2X2M U6 (.Y(SUM[8]), 
	.B(n8), 
	.A(n7));
   NAND2BX1M U7 (.Y(n7), 
	.B(n10), 
	.AN(n9));
   XOR3XLM U8 (.Y(SUM[7]), 
	.C(n11), 
	.B(A[7]), 
	.A(B[7]));
   AOI21X1M U9 (.Y(SUM[6]), 
	.B0(n11), 
	.A1(n1), 
	.A0(n2));
   XOR3XLM U10 (.Y(SUM[13]), 
	.C(n12), 
	.B(A[13]), 
	.A(B[13]));
   OAI2BB1X1M U11 (.Y(n12), 
	.B0(n14), 
	.A1N(A[12]), 
	.A0N(n13));
   OAI21X1M U12 (.Y(n14), 
	.B0(B[12]), 
	.A1(n13), 
	.A0(A[12]));
   XOR3XLM U13 (.Y(SUM[12]), 
	.C(n13), 
	.B(A[12]), 
	.A(B[12]));
   OAI21BX1M U14 (.Y(n13), 
	.B0N(n17), 
	.A1(n16), 
	.A0(n15));
   XNOR2X1M U15 (.Y(SUM[11]), 
	.B(n18), 
	.A(n16));
   NOR2X1M U16 (.Y(n18), 
	.B(n15), 
	.A(n17));
   NOR2X1M U17 (.Y(n15), 
	.B(A[11]), 
	.A(B[11]));
   AND2X1M U18 (.Y(n17), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U19 (.Y(n16), 
	.B0(n21), 
	.A1(n20), 
	.A0(n19));
   CLKXOR2X2M U20 (.Y(SUM[10]), 
	.B(n20), 
	.A(n22));
   AOI2BB1X1M U21 (.Y(n20), 
	.B0(n5), 
	.A1N(n6), 
	.A0N(n3));
   AND2X1M U22 (.Y(n5), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X1M U23 (.Y(n6), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U24 (.Y(n3), 
	.B0(n10), 
	.A1(n9), 
	.A0(n8));
   CLKNAND2X2M U25 (.Y(n10), 
	.B(A[8]), 
	.A(B[8]));
   NOR2X1M U26 (.Y(n9), 
	.B(A[8]), 
	.A(B[8]));
   AOI21BX1M U27 (.Y(n8), 
	.B0N(n23), 
	.A1(A[7]), 
	.A0(n11));
   OAI21X1M U28 (.Y(n23), 
	.B0(B[7]), 
	.A1(A[7]), 
	.A0(n11));
   NOR2X1M U29 (.Y(n11), 
	.B(n1), 
	.A(n2));
   NAND2BX1M U30 (.Y(n22), 
	.B(n21), 
	.AN(n19));
   CLKNAND2X2M U31 (.Y(n21), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X1M U32 (.Y(n19), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][7] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][7] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire ZA;
   wire ZB;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[5] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire \A2[6] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;

   assign ZA = A[7] ;
   assign ZB = B[7] ;

   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n3), 
	.A(\ab[2][6] ));
   ADDFX2M S14_7_0 (.S(\A1[5] ), 
	.CO(\A2[6] ), 
	.CI(\SUMB[7][0] ), 
	.B(ZB), 
	.A(ZA));
   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n9), 
	.A(\ab[2][0] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n8), 
	.A(\ab[2][1] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n7), 
	.A(\ab[2][2] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n6), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n5), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n4), 
	.A(\ab[2][5] ));
   ADDFX2M S14_7 (.S(\SUMB[7][7] ), 
	.CO(\CARRYB[7][7] ), 
	.CI(\ab[7][7] ), 
	.B(n34), 
	.A(n26));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   AND2X2M U9 (.Y(n10), 
	.B(\SUMB[7][7] ), 
	.A(\CARRYB[7][6] ));
   INVX2M U10 (.Y(n22), 
	.A(\ab[0][5] ));
   INVX2M U11 (.Y(n21), 
	.A(\ab[0][4] ));
   INVX2M U12 (.Y(n23), 
	.A(\ab[0][6] ));
   INVX2M U13 (.Y(n20), 
	.A(\ab[0][3] ));
   INVX2M U14 (.Y(n19), 
	.A(\ab[0][2] ));
   CLKXOR2X2M U15 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U16 (.Y(\A1[12] ), 
	.B(\SUMB[7][7] ), 
	.A(\CARRYB[7][6] ));
   CLKXOR2X2M U17 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U18 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U19 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKXOR2X2M U20 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   INVX2M U21 (.Y(n24), 
	.A(\ab[0][7] ));
   XNOR2X2M U22 (.Y(PRODUCT[1]), 
	.B(n18), 
	.A(\ab[1][0] ));
   INVX2M U23 (.Y(n18), 
	.A(\ab[0][1] ));
   XNOR2X2M U24 (.Y(\SUMB[1][6] ), 
	.B(n24), 
	.A(\ab[1][6] ));
   XNOR2X2M U25 (.Y(\SUMB[1][5] ), 
	.B(n23), 
	.A(\ab[1][5] ));
   XNOR2X2M U26 (.Y(\SUMB[1][4] ), 
	.B(n22), 
	.A(\ab[1][4] ));
   XNOR2X2M U27 (.Y(\SUMB[1][3] ), 
	.B(n21), 
	.A(\ab[1][3] ));
   XNOR2X2M U28 (.Y(\SUMB[1][2] ), 
	.B(n20), 
	.A(\ab[1][2] ));
   XNOR2X2M U29 (.Y(\SUMB[1][1] ), 
	.B(n19), 
	.A(\ab[1][1] ));
   INVX2M U30 (.Y(n25), 
	.A(\CARRYB[7][7] ));
   XNOR2X2M U31 (.Y(\A1[6] ), 
	.B(n17), 
	.A(\CARRYB[7][0] ));
   INVX2M U32 (.Y(n17), 
	.A(\SUMB[7][1] ));
   AND2X2M U33 (.Y(n11), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   AND2X2M U34 (.Y(n12), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U35 (.Y(n13), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   AND2X2M U36 (.Y(n14), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   AND2X2M U37 (.Y(n15), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U38 (.Y(n16), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   INVX2M U39 (.Y(n26), 
	.A(ZA));
   INVX2M U40 (.Y(n34), 
	.A(ZB));
   INVX2M U41 (.Y(n27), 
	.A(A[6]));
   INVX2M U42 (.Y(n33), 
	.A(A[0]));
   INVX2M U43 (.Y(n35), 
	.A(B[6]));
   INVX2M U44 (.Y(n32), 
	.A(A[1]));
   INVX2M U45 (.Y(n41), 
	.A(B[0]));
   INVX2M U46 (.Y(n39), 
	.A(B[2]));
   INVX2M U47 (.Y(n38), 
	.A(B[3]));
   INVX2M U48 (.Y(n31), 
	.A(A[2]));
   INVX2M U49 (.Y(n30), 
	.A(A[3]));
   INVX2M U50 (.Y(n29), 
	.A(A[4]));
   INVX2M U51 (.Y(n28), 
	.A(A[5]));
   INVX2M U52 (.Y(n36), 
	.A(B[5]));
   INVX2M U53 (.Y(n40), 
	.A(B[1]));
   INVX2M U54 (.Y(n37), 
	.A(B[4]));
   NOR2X1M U55 (.Y(\ab[7][7] ), 
	.B(n26), 
	.A(n34));
   NOR2X1M U56 (.Y(\ab[7][6] ), 
	.B(n26), 
	.A(B[6]));
   NOR2X1M U57 (.Y(\ab[7][5] ), 
	.B(n26), 
	.A(B[5]));
   NOR2X1M U58 (.Y(\ab[7][4] ), 
	.B(n26), 
	.A(B[4]));
   NOR2X1M U59 (.Y(\ab[7][3] ), 
	.B(n26), 
	.A(B[3]));
   NOR2X1M U60 (.Y(\ab[7][2] ), 
	.B(n26), 
	.A(B[2]));
   NOR2X1M U61 (.Y(\ab[7][1] ), 
	.B(n26), 
	.A(B[1]));
   NOR2X1M U62 (.Y(\ab[7][0] ), 
	.B(n26), 
	.A(B[0]));
   NOR2X1M U63 (.Y(\ab[6][7] ), 
	.B(n34), 
	.A(A[6]));
   NOR2X1M U64 (.Y(\ab[6][6] ), 
	.B(n35), 
	.A(n27));
   NOR2X1M U65 (.Y(\ab[6][5] ), 
	.B(n36), 
	.A(n27));
   NOR2X1M U66 (.Y(\ab[6][4] ), 
	.B(n37), 
	.A(n27));
   NOR2X1M U67 (.Y(\ab[6][3] ), 
	.B(n38), 
	.A(n27));
   NOR2X1M U68 (.Y(\ab[6][2] ), 
	.B(n39), 
	.A(n27));
   NOR2X1M U69 (.Y(\ab[6][1] ), 
	.B(n40), 
	.A(n27));
   NOR2X1M U70 (.Y(\ab[6][0] ), 
	.B(n41), 
	.A(n27));
   NOR2X1M U71 (.Y(\ab[5][7] ), 
	.B(n34), 
	.A(A[5]));
   NOR2X1M U72 (.Y(\ab[5][6] ), 
	.B(n28), 
	.A(n35));
   NOR2X1M U73 (.Y(\ab[5][5] ), 
	.B(n28), 
	.A(n36));
   NOR2X1M U74 (.Y(\ab[5][4] ), 
	.B(n28), 
	.A(n37));
   NOR2X1M U75 (.Y(\ab[5][3] ), 
	.B(n28), 
	.A(n38));
   NOR2X1M U76 (.Y(\ab[5][2] ), 
	.B(n28), 
	.A(n39));
   NOR2X1M U77 (.Y(\ab[5][1] ), 
	.B(n28), 
	.A(n40));
   NOR2X1M U78 (.Y(\ab[5][0] ), 
	.B(n28), 
	.A(n41));
   NOR2X1M U79 (.Y(\ab[4][7] ), 
	.B(n34), 
	.A(A[4]));
   NOR2X1M U80 (.Y(\ab[4][6] ), 
	.B(n29), 
	.A(n35));
   NOR2X1M U81 (.Y(\ab[4][5] ), 
	.B(n29), 
	.A(n36));
   NOR2X1M U82 (.Y(\ab[4][4] ), 
	.B(n29), 
	.A(n37));
   NOR2X1M U83 (.Y(\ab[4][3] ), 
	.B(n29), 
	.A(n38));
   NOR2X1M U84 (.Y(\ab[4][2] ), 
	.B(n29), 
	.A(n39));
   NOR2X1M U85 (.Y(\ab[4][1] ), 
	.B(n29), 
	.A(n40));
   NOR2X1M U86 (.Y(\ab[4][0] ), 
	.B(n29), 
	.A(n41));
   NOR2X1M U87 (.Y(\ab[3][7] ), 
	.B(n34), 
	.A(A[3]));
   NOR2X1M U88 (.Y(\ab[3][6] ), 
	.B(n30), 
	.A(n35));
   NOR2X1M U89 (.Y(\ab[3][5] ), 
	.B(n30), 
	.A(n36));
   NOR2X1M U90 (.Y(\ab[3][4] ), 
	.B(n30), 
	.A(n37));
   NOR2X1M U91 (.Y(\ab[3][3] ), 
	.B(n30), 
	.A(n38));
   NOR2X1M U92 (.Y(\ab[3][2] ), 
	.B(n30), 
	.A(n39));
   NOR2X1M U93 (.Y(\ab[3][1] ), 
	.B(n30), 
	.A(n40));
   NOR2X1M U94 (.Y(\ab[3][0] ), 
	.B(n30), 
	.A(n41));
   NOR2X1M U95 (.Y(\ab[2][7] ), 
	.B(n34), 
	.A(A[2]));
   NOR2X1M U96 (.Y(\ab[2][6] ), 
	.B(n31), 
	.A(n35));
   NOR2X1M U97 (.Y(\ab[2][5] ), 
	.B(n31), 
	.A(n36));
   NOR2X1M U98 (.Y(\ab[2][4] ), 
	.B(n31), 
	.A(n37));
   NOR2X1M U99 (.Y(\ab[2][3] ), 
	.B(n31), 
	.A(n38));
   NOR2X1M U100 (.Y(\ab[2][2] ), 
	.B(n31), 
	.A(n39));
   NOR2X1M U101 (.Y(\ab[2][1] ), 
	.B(n31), 
	.A(n40));
   NOR2X1M U102 (.Y(\ab[2][0] ), 
	.B(n31), 
	.A(n41));
   NOR2X1M U103 (.Y(\ab[1][7] ), 
	.B(n34), 
	.A(A[1]));
   NOR2X1M U104 (.Y(\ab[1][6] ), 
	.B(n32), 
	.A(n35));
   NOR2X1M U105 (.Y(\ab[1][5] ), 
	.B(n32), 
	.A(n36));
   NOR2X1M U106 (.Y(\ab[1][4] ), 
	.B(n32), 
	.A(n37));
   NOR2X1M U107 (.Y(\ab[1][3] ), 
	.B(n32), 
	.A(n38));
   NOR2X1M U108 (.Y(\ab[1][2] ), 
	.B(n32), 
	.A(n39));
   NOR2X1M U109 (.Y(\ab[1][1] ), 
	.B(n32), 
	.A(n40));
   NOR2X1M U110 (.Y(\ab[1][0] ), 
	.B(n32), 
	.A(n41));
   NOR2X1M U111 (.Y(\ab[0][7] ), 
	.B(n34), 
	.A(A[0]));
   NOR2X1M U112 (.Y(\ab[0][6] ), 
	.B(n33), 
	.A(n35));
   NOR2X1M U113 (.Y(\ab[0][5] ), 
	.B(n33), 
	.A(n36));
   NOR2X1M U114 (.Y(\ab[0][4] ), 
	.B(n33), 
	.A(n37));
   NOR2X1M U115 (.Y(\ab[0][3] ), 
	.B(n33), 
	.A(n38));
   NOR2X1M U116 (.Y(\ab[0][2] ), 
	.B(n33), 
	.A(n39));
   NOR2X1M U117 (.Y(\ab[0][1] ), 
	.B(n33), 
	.A(n40));
   NOR2X1M U118 (.Y(PRODUCT[0]), 
	.B(n33), 
	.A(n41));
   Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW01_add_1 FS_1 (.A({ n25,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\A1[5] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n10,
		n14,
		n16,
		n12,
		n15,
		n11,
		n13,
		\A2[6] ,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_test_1 (
	A, 
	B, 
	ALU_FUN, 
	Arith_Enable, 
	CLK, 
	RST, 
	arith_flag, 
	arith_OUT, 
	test_si, 
	test_se, 
	gated_clk__L4_N1, 
	gated_clk__L4_N2);
   input [7:0] A;
   input [7:0] B;
   input [1:0] ALU_FUN;
   input Arith_Enable;
   input CLK;
   input RST;
   output arith_flag;
   output [15:0] arith_OUT;
   input test_si;
   input test_se;
   input gated_clk__L4_N1;
   input gated_clk__L4_N2;

   // Internal wires
   wire FE_RN_1365_0;
   wire FE_RN_1364_0;
   wire FE_RN_1363_0;
   wire FE_RN_1362_0;
   wire FE_RN_1361_0;
   wire FE_RN_1360_0;
   wire FE_RN_1056_0;
   wire FE_RN_1055_0;
   wire FE_RN_1054_0;
   wire FE_RN_1053_0;
   wire FE_RN_1052_0;
   wire FE_OFN8_n25;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire N32;
   wire N33;
   wire N34;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire N44;
   wire N45;
   wire N46;
   wire N47;
   wire N48;
   wire N49;
   wire N50;
   wire N51;
   wire N52;
   wire N53;
   wire N54;
   wire N55;
   wire N56;
   wire N57;
   wire N58;
   wire N59;
   wire N60;
   wire N77;
   wire N78;
   wire N79;
   wire N80;
   wire N81;
   wire N82;
   wire N83;
   wire N84;
   wire N85;
   wire N86;
   wire N87;
   wire N88;
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire n25;
   wire n26;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n3;
   wire n4;
   wire n8;
   wire n9;

   INVX2M FE_RC_1761_0 (.Y(FE_RN_1365_0), 
	.A(FE_RN_1055_0));
   INVX2M FE_RC_1760_0 (.Y(FE_RN_1364_0), 
	.A(n29));
   INVX2M FE_RC_1759_0 (.Y(FE_RN_1363_0), 
	.A(FE_RN_1056_0));
   NAND3X2M FE_RC_1758_0 (.Y(FE_RN_1362_0), 
	.C(FE_RN_1365_0), 
	.B(FE_RN_1364_0), 
	.A(FE_RN_1363_0));
   INVX2M FE_RC_1757_0 (.Y(FE_RN_1361_0), 
	.A(FE_RN_1052_0));
   NAND2BX8M FE_RC_1756_0 (.Y(FE_RN_1360_0), 
	.B(FE_RN_1361_0), 
	.AN(N60));
   NAND3X12M FE_RC_1755_0 (.Y(n26), 
	.C(Arith_Enable), 
	.B(FE_RN_1362_0), 
	.A(FE_RN_1360_0));
   INVX2M FE_RC_1268_0 (.Y(FE_RN_1056_0), 
	.A(FE_RN_1053_0));
   INVX2M FE_RC_1267_0 (.Y(FE_RN_1055_0), 
	.A(FE_RN_1054_0));
   CLKNAND2X2M FE_RC_1266_0 (.Y(FE_RN_1054_0), 
	.B(n28), 
	.A(N26));
   CLKNAND2X2M FE_RC_1265_0 (.Y(FE_RN_1053_0), 
	.B(n30), 
	.A(N35));
   NAND2X2M FE_RC_1264_0 (.Y(FE_RN_1052_0), 
	.B(FE_RN_1054_0), 
	.A(FE_RN_1053_0));
   BUFX2M FE_OFC8_n25 (.Y(FE_OFN8_n25), 
	.A(n25));
   SDFFRHQX1M \arith_OUT_reg[7]  (.SI(arith_OUT[6]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[7]), 
	.D(N84), 
	.CK(gated_clk__L4_N2));
   SDFFRHQX1M \arith_OUT_reg[6]  (.SI(arith_OUT[5]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[6]), 
	.D(N83), 
	.CK(gated_clk__L4_N1));
   SDFFRHQX1M \arith_OUT_reg[5]  (.SI(arith_OUT[4]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[5]), 
	.D(N82), 
	.CK(gated_clk__L4_N1));
   SDFFRHQX1M \arith_OUT_reg[4]  (.SI(arith_OUT[3]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[4]), 
	.D(N81), 
	.CK(gated_clk__L4_N1));
   SDFFRHQX1M \arith_OUT_reg[3]  (.SI(arith_OUT[2]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[3]), 
	.D(N80), 
	.CK(gated_clk__L4_N1));
   SDFFRHQX1M \arith_OUT_reg[2]  (.SI(arith_OUT[1]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[2]), 
	.D(N79), 
	.CK(gated_clk__L4_N1));
   SDFFRHQX1M \arith_OUT_reg[1]  (.SI(arith_OUT[0]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[1]), 
	.D(N78), 
	.CK(gated_clk__L4_N1));
   SDFFRHQX4M \arith_OUT_reg[0]  (.SI(test_si), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[0]), 
	.D(N77), 
	.CK(gated_clk__L4_N1));
   SDFFRHQX1M \arith_OUT_reg[15]  (.SI(arith_OUT[14]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[15]), 
	.D(N92), 
	.CK(gated_clk__L4_N2));
   SDFFRHQX1M \arith_OUT_reg[14]  (.SI(arith_OUT[13]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[14]), 
	.D(N91), 
	.CK(gated_clk__L4_N2));
   SDFFRHQX1M \arith_OUT_reg[13]  (.SI(arith_OUT[12]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[13]), 
	.D(N90), 
	.CK(gated_clk__L4_N2));
   SDFFRHQX1M \arith_OUT_reg[12]  (.SI(arith_OUT[11]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[12]), 
	.D(N89), 
	.CK(gated_clk__L4_N2));
   SDFFRHQX1M \arith_OUT_reg[11]  (.SI(arith_OUT[10]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[11]), 
	.D(N88), 
	.CK(gated_clk__L4_N2));
   SDFFRHQX1M \arith_OUT_reg[10]  (.SI(arith_OUT[9]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[10]), 
	.D(N87), 
	.CK(gated_clk__L4_N2));
   SDFFRHQX1M \arith_OUT_reg[9]  (.SI(arith_OUT[8]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[9]), 
	.D(N86), 
	.CK(gated_clk__L4_N2));
   SDFFRHQX1M \arith_OUT_reg[8]  (.SI(arith_OUT[7]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_OUT[8]), 
	.D(N85), 
	.CK(gated_clk__L4_N2));
   SDFFRQX2M arith_flag_reg (.SI(arith_OUT[15]), 
	.SE(n9), 
	.RN(RST), 
	.Q(arith_flag), 
	.D(Arith_Enable), 
	.CK(CLK));
   INVX2M U22 (.Y(n3), 
	.A(Arith_Enable));
   NOR3X2M U23 (.Y(n25), 
	.C(n3), 
	.B(ALU_FUN[0]), 
	.A(n4));
   NOR2X2M U24 (.Y(n28), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[0]));
   INVX2M U25 (.Y(n4), 
	.A(ALU_FUN[1]));
   AND2X2M U26 (.Y(n30), 
	.B(n4), 
	.A(ALU_FUN[0]));
   AND2X2M U27 (.Y(n29), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[0]));
   OAI2BB2X2M U28 (.Y(N78), 
	.B1(n3), 
	.B0(n37), 
	.A1N(FE_OFN8_n25), 
	.A0N(N37));
   AOI222X2M U29 (.Y(n37), 
	.C1(n30), 
	.C0(N28), 
	.B1(n29), 
	.B0(N53), 
	.A1(n28), 
	.A0(N19));
   OAI2BB2X2M U30 (.Y(N79), 
	.B1(n3), 
	.B0(n36), 
	.A1N(FE_OFN8_n25), 
	.A0N(N38));
   AOI222X2M U31 (.Y(n36), 
	.C1(n30), 
	.C0(N29), 
	.B1(n29), 
	.B0(N54), 
	.A1(n28), 
	.A0(N20));
   OAI2BB2X4M U32 (.Y(N80), 
	.B1(n3), 
	.B0(n35), 
	.A1N(FE_OFN8_n25), 
	.A0N(N39));
   AOI222X4M U33 (.Y(n35), 
	.C1(n30), 
	.C0(N30), 
	.B1(n29), 
	.B0(N55), 
	.A1(n28), 
	.A0(N21));
   OAI2BB2X1M U34 (.Y(N81), 
	.B1(n3), 
	.B0(n34), 
	.A1N(FE_OFN8_n25), 
	.A0N(N40));
   AOI222X2M U35 (.Y(n34), 
	.C1(n30), 
	.C0(N31), 
	.B1(n29), 
	.B0(N56), 
	.A1(n28), 
	.A0(N22));
   OAI2BB2X2M U36 (.Y(N82), 
	.B1(n3), 
	.B0(n33), 
	.A1N(FE_OFN8_n25), 
	.A0N(N41));
   AOI222X2M U37 (.Y(n33), 
	.C1(n30), 
	.C0(N32), 
	.B1(n29), 
	.B0(N57), 
	.A1(n28), 
	.A0(N23));
   OAI2BB2X2M U38 (.Y(N83), 
	.B1(n3), 
	.B0(n32), 
	.A1N(FE_OFN8_n25), 
	.A0N(N42));
   AOI222X4M U39 (.Y(n32), 
	.C1(n30), 
	.C0(N33), 
	.B1(n29), 
	.B0(N58), 
	.A1(n28), 
	.A0(N24));
   OAI2BB2X2M U40 (.Y(N84), 
	.B1(n3), 
	.B0(n31), 
	.A1N(FE_OFN8_n25), 
	.A0N(N43));
   AOI222X4M U41 (.Y(n31), 
	.C1(n30), 
	.C0(N34), 
	.B1(n29), 
	.B0(N59), 
	.A1(n28), 
	.A0(N25));
   OAI2BB1X2M U42 (.Y(N85), 
	.B0(n26), 
	.A1N(FE_OFN8_n25), 
	.A0N(N44));
   OAI2BB1X2M U43 (.Y(N86), 
	.B0(n26), 
	.A1N(FE_OFN8_n25), 
	.A0N(N45));
   OAI2BB1X2M U44 (.Y(N87), 
	.B0(n26), 
	.A1N(FE_OFN8_n25), 
	.A0N(N46));
   OAI2BB1X2M U45 (.Y(N88), 
	.B0(n26), 
	.A1N(FE_OFN8_n25), 
	.A0N(N47));
   OAI2BB1X2M U46 (.Y(N89), 
	.B0(n26), 
	.A1N(FE_OFN8_n25), 
	.A0N(N48));
   OAI2BB1X2M U47 (.Y(N90), 
	.B0(n26), 
	.A1N(FE_OFN8_n25), 
	.A0N(N49));
   OAI2BB1X2M U48 (.Y(N91), 
	.B0(n26), 
	.A1N(FE_OFN8_n25), 
	.A0N(N50));
   OAI2BB1X2M U49 (.Y(N92), 
	.B0(n26), 
	.A1N(FE_OFN8_n25), 
	.A0N(N51));
   OAI2BB2X1M U50 (.Y(N77), 
	.B1(n3), 
	.B0(n38), 
	.A1N(FE_OFN8_n25), 
	.A0N(N36));
   AOI222X1M U51 (.Y(n38), 
	.C1(n30), 
	.C0(N27), 
	.B1(n29), 
	.B0(N52), 
	.A1(n28), 
	.A0(N18));
   INVXLM U55 (.Y(n8), 
	.A(test_se));
   INVX2M U56 (.Y(n9), 
	.A(n8));
   Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW_div_tc_0 div_33 (.a({ A[7],
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N60,
		N59,
		N58,
		N57,
		N56,
		N55,
		N54,
		N53,
		N52 }));
   Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW01_sub_0 sub_31 (.A({ A[7],
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N35,
		N34,
		N33,
		N32,
		N31,
		N30,
		N29,
		N28,
		N27 }));
   Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW01_add_0 add_30 (.A({ A[7],
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N26,
		N25,
		N24,
		N23,
		N22,
		N21,
		N20,
		N19,
		N18 }));
   Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_DW02_mult_0 mult_32 (.A({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b1), 
	.PRODUCT({ N51,
		N50,
		N49,
		N48,
		N47,
		N46,
		N45,
		N44,
		N43,
		N42,
		N41,
		N40,
		N39,
		N38,
		N37,
		N36 }));
endmodule

module Logic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH8_test_1 (
	A, 
	B, 
	ALU_FUN, 
	Logic_Enable, 
	CLK, 
	RST, 
	logic_flag, 
	logic_OUT, 
	test_si, 
	test_se, 
	gated_clk__L4_N1);
   input [7:0] A;
   input [7:0] B;
   input [1:0] ALU_FUN;
   input Logic_Enable;
   input CLK;
   input RST;
   output logic_flag;
   output [7:0] logic_OUT;
   input test_si;
   input test_se;
   input gated_clk__L4_N1;

   // Internal wires
   wire N56;
   wire N57;
   wire N58;
   wire N59;
   wire N60;
   wire N61;
   wire N62;
   wire N63;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n53;
   wire n54;

   SDFFRQX2M \logic_OUT_reg[7]  (.SI(logic_OUT[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(logic_OUT[7]), 
	.D(N63), 
	.CK(CLK));
   SDFFRQX2M \logic_OUT_reg[6]  (.SI(logic_OUT[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(logic_OUT[6]), 
	.D(N62), 
	.CK(gated_clk__L4_N1));
   SDFFRQX2M \logic_OUT_reg[5]  (.SI(logic_OUT[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(logic_OUT[5]), 
	.D(N61), 
	.CK(gated_clk__L4_N1));
   SDFFRQX2M \logic_OUT_reg[4]  (.SI(logic_OUT[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(logic_OUT[4]), 
	.D(N60), 
	.CK(gated_clk__L4_N1));
   SDFFRQX2M \logic_OUT_reg[3]  (.SI(logic_OUT[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(logic_OUT[3]), 
	.D(N59), 
	.CK(gated_clk__L4_N1));
   SDFFRQX2M \logic_OUT_reg[2]  (.SI(logic_OUT[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(logic_OUT[2]), 
	.D(N58), 
	.CK(CLK));
   SDFFRQX2M \logic_OUT_reg[1]  (.SI(logic_OUT[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(logic_OUT[1]), 
	.D(N57), 
	.CK(CLK));
   SDFFRQX2M \logic_OUT_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(logic_OUT[0]), 
	.D(N56), 
	.CK(CLK));
   SDFFRQX2M logic_flag_reg (.SI(logic_OUT[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(logic_flag), 
	.D(Logic_Enable), 
	.CK(CLK));
   NAND2X2M U12 (.Y(n33), 
	.B(n12), 
	.A(Logic_Enable));
   NAND2X2M U13 (.Y(n34), 
	.B(ALU_FUN[1]), 
	.A(Logic_Enable));
   INVX2M U14 (.Y(n12), 
	.A(ALU_FUN[1]));
   NAND3X2M U16 (.Y(n29), 
	.C(Logic_Enable), 
	.B(n12), 
	.A(ALU_FUN[0]));
   NAND3BX2M U18 (.Y(n28), 
	.C(Logic_Enable), 
	.B(ALU_FUN[1]), 
	.AN(ALU_FUN[0]));
   OAI221X1M U19 (.Y(N56), 
	.C0(n50), 
	.B1(n19), 
	.B0(n29), 
	.A1(n28), 
	.A0(A[0]));
   AOI22X1M U20 (.Y(n50), 
	.B1(n52), 
	.B0(B[0]), 
	.A1(n54), 
	.A0(n51));
   INVX2M U21 (.Y(n54), 
	.A(B[0]));
   OAI21X2M U22 (.Y(n52), 
	.B0(n29), 
	.A1(n19), 
	.A0(n33));
   OAI221X1M U23 (.Y(N57), 
	.C0(n47), 
	.B1(n18), 
	.B0(n29), 
	.A1(n28), 
	.A0(A[1]));
   AOI22X1M U24 (.Y(n47), 
	.B1(n49), 
	.B0(B[1]), 
	.A1(n53), 
	.A0(n48));
   INVX2M U25 (.Y(n53), 
	.A(B[1]));
   OAI21X2M U26 (.Y(n49), 
	.B0(n29), 
	.A1(n18), 
	.A0(n33));
   OAI221X1M U27 (.Y(N58), 
	.C0(n44), 
	.B1(n17), 
	.B0(n29), 
	.A1(n28), 
	.A0(A[2]));
   AOI22X1M U28 (.Y(n44), 
	.B1(n46), 
	.B0(B[2]), 
	.A1(n24), 
	.A0(n45));
   INVX2M U29 (.Y(n24), 
	.A(B[2]));
   OAI21X2M U30 (.Y(n46), 
	.B0(n29), 
	.A1(n17), 
	.A0(n33));
   OAI221X1M U31 (.Y(N59), 
	.C0(n41), 
	.B1(n16), 
	.B0(n29), 
	.A1(n28), 
	.A0(A[3]));
   AOI22X1M U32 (.Y(n41), 
	.B1(n43), 
	.B0(B[3]), 
	.A1(n23), 
	.A0(n42));
   INVX2M U33 (.Y(n23), 
	.A(B[3]));
   OAI21X2M U34 (.Y(n43), 
	.B0(n29), 
	.A1(n16), 
	.A0(n33));
   OAI221X1M U35 (.Y(N60), 
	.C0(n38), 
	.B1(n15), 
	.B0(n29), 
	.A1(n28), 
	.A0(A[4]));
   AOI22X1M U36 (.Y(n38), 
	.B1(n40), 
	.B0(B[4]), 
	.A1(n22), 
	.A0(n39));
   INVX2M U37 (.Y(n22), 
	.A(B[4]));
   OAI21X2M U38 (.Y(n40), 
	.B0(n29), 
	.A1(n15), 
	.A0(n33));
   OAI221X1M U39 (.Y(N61), 
	.C0(n35), 
	.B1(n14), 
	.B0(n29), 
	.A1(n28), 
	.A0(A[5]));
   AOI22X1M U40 (.Y(n35), 
	.B1(n37), 
	.B0(B[5]), 
	.A1(n21), 
	.A0(n36));
   INVX2M U41 (.Y(n21), 
	.A(B[5]));
   OAI21X2M U42 (.Y(n37), 
	.B0(n29), 
	.A1(n14), 
	.A0(n33));
   OAI221X1M U43 (.Y(N62), 
	.C0(n30), 
	.B1(n29), 
	.B0(n13), 
	.A1(n28), 
	.A0(A[6]));
   AOI22X1M U44 (.Y(n30), 
	.B1(n32), 
	.B0(B[6]), 
	.A1(n20), 
	.A0(n31));
   INVX2M U45 (.Y(n20), 
	.A(B[6]));
   OAI21X2M U46 (.Y(n32), 
	.B0(n29), 
	.A1(n13), 
	.A0(n33));
   OAI21X2M U47 (.Y(n51), 
	.B0(n28), 
	.A1(n34), 
	.A0(A[0]));
   OAI21X2M U48 (.Y(n48), 
	.B0(n28), 
	.A1(n34), 
	.A0(A[1]));
   OAI21X2M U49 (.Y(n45), 
	.B0(n28), 
	.A1(n34), 
	.A0(A[2]));
   OAI21X2M U50 (.Y(n42), 
	.B0(n28), 
	.A1(n34), 
	.A0(A[3]));
   OAI21X2M U51 (.Y(n39), 
	.B0(n28), 
	.A1(n34), 
	.A0(A[4]));
   OAI21X2M U52 (.Y(n36), 
	.B0(n28), 
	.A1(n34), 
	.A0(A[5]));
   OAI21X2M U53 (.Y(n31), 
	.B0(n28), 
	.A1(n34), 
	.A0(A[6]));
   INVX2M U54 (.Y(n13), 
	.A(A[6]));
   INVX2M U55 (.Y(n19), 
	.A(A[0]));
   INVX2M U56 (.Y(n18), 
	.A(A[1]));
   INVX2M U57 (.Y(n17), 
	.A(A[2]));
   INVX2M U58 (.Y(n16), 
	.A(A[3]));
   INVX2M U59 (.Y(n15), 
	.A(A[4]));
   INVX2M U60 (.Y(n14), 
	.A(A[5]));
   NOR2BX2M U61 (.Y(N63), 
	.B(n25), 
	.AN(Logic_Enable));
   XNOR2X2M U62 (.Y(n25), 
	.B(n26), 
	.A(ALU_FUN[1]));
   OAI2BB1X2M U63 (.Y(n26), 
	.B0(n27), 
	.A1N(A[7]), 
	.A0N(ALU_FUN[0]));
   OAI21X1M U64 (.Y(n27), 
	.B0(B[7]), 
	.A1(A[7]), 
	.A0(ALU_FUN[0]));
endmodule

module CMP_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH8_test_1 (
	A, 
	B, 
	ALU_FUN, 
	CMP_Enable, 
	CLK, 
	RST, 
	cmp_flag, 
	cmp_OUT, 
	test_si, 
	test_se);
   input [7:0] A;
   input [7:0] B;
   input [1:0] ALU_FUN;
   input CMP_Enable;
   input CLK;
   input RST;
   output cmp_flag;
   output [7:0] cmp_OUT;
   input test_si;
   input test_se;

   // Internal wires
   wire N18;
   wire N19;
   wire N20;
   wire N23;
   wire N24;
   wire n11;
   wire n12;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n8;
   wire n9;
   wire n10;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;

   assign cmp_OUT[7] = 1'b0 ;
   assign cmp_OUT[6] = 1'b0 ;
   assign cmp_OUT[5] = 1'b0 ;
   assign cmp_OUT[4] = 1'b0 ;
   assign cmp_OUT[3] = 1'b0 ;
   assign cmp_OUT[2] = 1'b0 ;

   SDFFRQX2M \cmp_OUT_reg[1]  (.SI(cmp_OUT[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(cmp_OUT[1]), 
	.D(N24), 
	.CK(CLK));
   SDFFRQX2M \cmp_OUT_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(cmp_OUT[0]), 
	.D(N23), 
	.CK(CLK));
   SDFFRQX2M cmp_flag_reg (.SI(cmp_OUT[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(cmp_flag), 
	.D(CMP_Enable), 
	.CK(CLK));
   INVX2M U5 (.Y(n41), 
	.A(CMP_Enable));
   INVX2M U13 (.Y(n42), 
	.A(ALU_FUN[1]));
   INVX2M U14 (.Y(n43), 
	.A(ALU_FUN[0]));
   INVX2M U15 (.Y(n38), 
	.A(n17));
   NOR3X2M U16 (.Y(N23), 
	.C(n43), 
	.B(n12), 
	.A(n41));
   AOI22X1M U17 (.Y(n12), 
	.B1(N20), 
	.B0(ALU_FUN[1]), 
	.A1(n42), 
	.A0(N18));
   NOR3X2M U18 (.Y(N24), 
	.C(n42), 
	.B(n11), 
	.A(n41));
   AOI22X1M U19 (.Y(n11), 
	.B1(ALU_FUN[0]), 
	.B0(N20), 
	.A1(n43), 
	.A0(N19));
   INVX2M U20 (.Y(n39), 
	.A(A[6]));
   INVX2M U21 (.Y(n36), 
	.A(n1));
   INVX2M U22 (.Y(n40), 
	.A(A[7]));
   INVX2M U23 (.Y(N19), 
	.A(n31));
   INVX2M U24 (.Y(n35), 
	.A(B[6]));
   INVX2M U25 (.Y(n37), 
	.A(A[1]));
   INVX2M U26 (.Y(n32), 
	.A(B[0]));
   INVX2M U27 (.Y(n33), 
	.A(B[2]));
   INVX2M U28 (.Y(n34), 
	.A(B[3]));
   NOR2X1M U29 (.Y(n28), 
	.B(B[7]), 
	.A(n40));
   NAND2BX1M U30 (.Y(n21), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U31 (.Y(n8), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U32 (.Y(n23), 
	.B(n8), 
	.A(n21));
   NOR2X1M U33 (.Y(n18), 
	.B(A[3]), 
	.A(n34));
   NOR2X1M U34 (.Y(n4), 
	.B(A[2]), 
	.A(n33));
   NOR2X1M U35 (.Y(n1), 
	.B(A[0]), 
	.A(n32));
   CLKNAND2X2M U36 (.Y(n20), 
	.B(n33), 
	.A(A[2]));
   NAND2BX1M U37 (.Y(n15), 
	.B(n20), 
	.AN(n4));
   AOI21X1M U38 (.Y(n2), 
	.B0(B[1]), 
	.A1(n37), 
	.A0(n1));
   AOI211X1M U39 (.Y(n3), 
	.C0(n2), 
	.B0(n15), 
	.A1(n36), 
	.A0(A[1]));
   CLKNAND2X2M U40 (.Y(n19), 
	.B(n34), 
	.A(A[3]));
   OAI31X1M U41 (.Y(n9), 
	.B0(n19), 
	.A2(n3), 
	.A1(n4), 
	.A0(n18));
   NAND2BX1M U42 (.Y(n26), 
	.B(B[5]), 
	.AN(A[5]));
   OAI211X1M U43 (.Y(n10), 
	.C0(n26), 
	.B0(n8), 
	.A1(n9), 
	.A0(n23));
   NAND2BX1M U44 (.Y(n22), 
	.B(A[5]), 
	.AN(B[5]));
   XNOR2X1M U45 (.Y(n25), 
	.B(B[6]), 
	.A(A[6]));
   AOI32X1M U46 (.Y(n13), 
	.B1(n39), 
	.B0(B[6]), 
	.A2(n25), 
	.A1(n22), 
	.A0(n10));
   CLKNAND2X2M U47 (.Y(n29), 
	.B(n40), 
	.A(B[7]));
   OAI21X1M U48 (.Y(N20), 
	.B0(n29), 
	.A1(n13), 
	.A0(n28));
   CLKNAND2X2M U49 (.Y(n16), 
	.B(n32), 
	.A(A[0]));
   OA21X1M U50 (.Y(n14), 
	.B0(B[1]), 
	.A1(n37), 
	.A0(n16));
   AOI211X1M U51 (.Y(n17), 
	.C0(n14), 
	.B0(n15), 
	.A1(n37), 
	.A0(n16));
   AOI31X1M U52 (.Y(n24), 
	.B0(n18), 
	.A2(n19), 
	.A1(n20), 
	.A0(n38));
   OAI2B11X1M U53 (.Y(n27), 
	.C0(n21), 
	.B0(n22), 
	.A1N(n24), 
	.A0(n23));
   AOI32X1M U54 (.Y(n30), 
	.B1(n35), 
	.B0(A[6]), 
	.A2(n25), 
	.A1(n26), 
	.A0(n27));
   AOI2B1X1M U55 (.Y(n31), 
	.B0(n28), 
	.A1N(n30), 
	.A0(n29));
   NOR2X1M U56 (.Y(N18), 
	.B(N19), 
	.A(N20));
endmodule

module Shift_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH8_test_1 (
	A, 
	B, 
	ALU_FUN, 
	Shift_Enable, 
	CLK, 
	RST, 
	shift_flag, 
	shift_OUT, 
	test_si, 
	test_se, 
	FE_OFN3_muxed_rst_sync_1, 
	gated_clk__L4_N1, 
	gated_clk__L4_N2);
   input [7:0] A;
   input [7:0] B;
   input [1:0] ALU_FUN;
   input Shift_Enable;
   input CLK;
   input RST;
   output shift_flag;
   output [7:0] shift_OUT;
   input test_si;
   input test_se;
   input FE_OFN3_muxed_rst_sync_1;
   input gated_clk__L4_N1;
   input gated_clk__L4_N2;

   // Internal wires
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n10;
   wire n11;
   wire n12;

   SDFFRQX2M \shift_OUT_reg[1]  (.SI(shift_OUT[0]), 
	.SE(test_se), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(shift_OUT[1]), 
	.D(N25), 
	.CK(CLK));
   SDFFRQX2M \shift_OUT_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(shift_OUT[0]), 
	.D(N24), 
	.CK(CLK));
   SDFFRQX2M \shift_OUT_reg[7]  (.SI(shift_OUT[6]), 
	.SE(test_se), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(shift_OUT[7]), 
	.D(N31), 
	.CK(gated_clk__L4_N2));
   SDFFRQX2M \shift_OUT_reg[6]  (.SI(shift_OUT[5]), 
	.SE(test_se), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(shift_OUT[6]), 
	.D(N30), 
	.CK(gated_clk__L4_N2));
   SDFFRQX2M \shift_OUT_reg[5]  (.SI(shift_OUT[4]), 
	.SE(test_se), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(shift_OUT[5]), 
	.D(N29), 
	.CK(gated_clk__L4_N2));
   SDFFRQX2M \shift_OUT_reg[4]  (.SI(shift_OUT[3]), 
	.SE(test_se), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(shift_OUT[4]), 
	.D(N28), 
	.CK(gated_clk__L4_N2));
   SDFFRQX2M \shift_OUT_reg[3]  (.SI(shift_OUT[2]), 
	.SE(test_se), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(shift_OUT[3]), 
	.D(N27), 
	.CK(gated_clk__L4_N2));
   SDFFRQX2M \shift_OUT_reg[2]  (.SI(shift_OUT[1]), 
	.SE(test_se), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(shift_OUT[2]), 
	.D(N26), 
	.CK(gated_clk__L4_N1));
   SDFFRQX2M shift_flag_reg (.SI(shift_OUT[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(shift_flag), 
	.D(Shift_Enable), 
	.CK(CLK));
   INVX2M U12 (.Y(n10), 
	.A(Shift_Enable));
   NOR2X2M U13 (.Y(n14), 
	.B(n12), 
	.A(n11));
   NOR2X2M U14 (.Y(n19), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[0]));
   NOR2X2M U15 (.Y(n15), 
	.B(ALU_FUN[1]), 
	.A(n12));
   NOR2X2M U16 (.Y(n18), 
	.B(ALU_FUN[0]), 
	.A(n11));
   INVX2M U17 (.Y(n11), 
	.A(ALU_FUN[1]));
   INVX2M U18 (.Y(n12), 
	.A(ALU_FUN[0]));
   AOI21X2M U19 (.Y(N30), 
	.B0(n10), 
	.A1(n17), 
	.A0(n16));
   AOI22X1M U20 (.Y(n17), 
	.B1(n18), 
	.B0(B[7]), 
	.A1(n14), 
	.A0(B[5]));
   AOI22X1M U21 (.Y(n16), 
	.B1(n19), 
	.B0(A[7]), 
	.A1(n15), 
	.A0(A[5]));
   AOI21X2M U22 (.Y(N25), 
	.B0(n10), 
	.A1(n29), 
	.A0(n28));
   AOI22X1M U23 (.Y(n29), 
	.B1(n18), 
	.B0(B[2]), 
	.A1(n14), 
	.A0(B[0]));
   AOI22X1M U24 (.Y(n28), 
	.B1(n19), 
	.B0(A[2]), 
	.A1(n15), 
	.A0(A[0]));
   AOI21X2M U25 (.Y(N26), 
	.B0(n10), 
	.A1(n27), 
	.A0(n26));
   AOI22X1M U26 (.Y(n27), 
	.B1(n18), 
	.B0(B[3]), 
	.A1(n14), 
	.A0(B[1]));
   AOI22X1M U27 (.Y(n26), 
	.B1(n19), 
	.B0(A[3]), 
	.A1(n15), 
	.A0(A[1]));
   AOI21X2M U28 (.Y(N27), 
	.B0(n10), 
	.A1(n25), 
	.A0(n24));
   AOI22X1M U29 (.Y(n25), 
	.B1(n18), 
	.B0(B[4]), 
	.A1(n14), 
	.A0(B[2]));
   AOI22X1M U30 (.Y(n24), 
	.B1(n19), 
	.B0(A[4]), 
	.A1(n15), 
	.A0(A[2]));
   AOI21X2M U31 (.Y(N28), 
	.B0(n10), 
	.A1(n23), 
	.A0(n22));
   AOI22X1M U32 (.Y(n23), 
	.B1(B[5]), 
	.B0(n18), 
	.A1(n14), 
	.A0(B[3]));
   AOI22X1M U33 (.Y(n22), 
	.B1(A[5]), 
	.B0(n19), 
	.A1(n15), 
	.A0(A[3]));
   AOI21X2M U34 (.Y(N29), 
	.B0(n10), 
	.A1(n21), 
	.A0(n20));
   AOI22X1M U35 (.Y(n21), 
	.B1(B[6]), 
	.B0(n18), 
	.A1(n14), 
	.A0(B[4]));
   AOI22X1M U36 (.Y(n20), 
	.B1(A[6]), 
	.B0(n19), 
	.A1(n15), 
	.A0(A[4]));
   NOR2X2M U37 (.Y(N31), 
	.B(n10), 
	.A(n13));
   AOI22X1M U38 (.Y(n13), 
	.B1(n15), 
	.B0(A[6]), 
	.A1(n14), 
	.A0(B[6]));
   NOR2X2M U39 (.Y(N24), 
	.B(n10), 
	.A(n30));
   AOI22X1M U40 (.Y(n30), 
	.B1(n19), 
	.B0(A[1]), 
	.A1(n18), 
	.A0(B[1]));
endmodule

module ALU_TOP_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH4_OUTPUT_WIDTH8_test_1 (
	A_top, 
	B_top, 
	ALU_FUN_top, 
	Enable_top, 
	CLK_top, 
	RST_top, 
	arith_OUT_top, 
	logic_OUT_top, 
	cmp_OUT_top, 
	shift_OUT_top, 
	OUT_valid, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN3_muxed_rst_sync_1, 
	gated_clk__L4_N1, 
	gated_clk__L4_N2);
   input [7:0] A_top;
   input [7:0] B_top;
   input [3:0] ALU_FUN_top;
   input Enable_top;
   input CLK_top;
   input RST_top;
   output [15:0] arith_OUT_top;
   output [7:0] logic_OUT_top;
   output [7:0] cmp_OUT_top;
   output [7:0] shift_OUT_top;
   output OUT_valid;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN3_muxed_rst_sync_1;
   input gated_clk__L4_N1;
   input gated_clk__L4_N2;

   // Internal wires
   wire Arith_Enable_top;
   wire Logic_Enable_top;
   wire CMP_Enable_top;
   wire Shift_Enable_top;
   wire arith_flag_top;
   wire logic_flag_top;
   wire cmp_flag_top;
   wire shift_flag_top;
   wire any_flag_d;
   wire div0_q;
   wire N1;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n9;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;
   wire SYNOPSYS_UNCONNECTED__4;
   wire SYNOPSYS_UNCONNECTED__5;

   assign cmp_OUT_top[7] = 1'b0 ;
   assign cmp_OUT_top[6] = 1'b0 ;
   assign cmp_OUT_top[5] = 1'b0 ;
   assign cmp_OUT_top[4] = 1'b0 ;
   assign cmp_OUT_top[3] = 1'b0 ;
   assign cmp_OUT_top[2] = 1'b0 ;
   assign test_so = shift_flag_top ;

   SDFFRQX2M div0_q_reg (.SI(any_flag_d), 
	.SE(test_se), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(div0_q), 
	.D(N1), 
	.CK(gated_clk__L4_N2));
   SDFFRQX2M any_flag_d_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(any_flag_d), 
	.D(n9), 
	.CK(gated_clk__L4_N2));
   INVX2M U5 (.Y(n9), 
	.A(n4));
   NOR4X1M U8 (.Y(n4), 
	.D(logic_flag_top), 
	.C(shift_flag_top), 
	.B(arith_flag_top), 
	.A(cmp_flag_top));
   NOR3X2M U9 (.Y(OUT_valid), 
	.C(any_flag_d), 
	.B(div0_q), 
	.A(n4));
   AND4X2M U10 (.Y(N1), 
	.D(n6), 
	.C(n5), 
	.B(ALU_FUN_top[1]), 
	.A(Arith_Enable_top));
   NOR4BX1M U11 (.Y(n6), 
	.D(B_top[3]), 
	.C(B_top[2]), 
	.B(B_top[4]), 
	.AN(n7));
   NOR3BX2M U12 (.Y(n5), 
	.C(B_top[0]), 
	.B(B_top[1]), 
	.AN(ALU_FUN_top[0]));
   NOR3X1M U13 (.Y(n7), 
	.C(B_top[6]), 
	.B(B_top[7]), 
	.A(B_top[5]));
   DECODER_2X4_ALU_UNIT_SELECTION_WIDTH2 u_decoder (.Enable(Enable_top), 
	.ALU_FUN({ ALU_FUN_top[3],
		ALU_FUN_top[2] }), 
	.Arith_Enable(Arith_Enable_top), 
	.Logic_Enable(Logic_Enable_top), 
	.CMP_Enable(CMP_Enable_top), 
	.Shift_Enable(Shift_Enable_top));
   Arithmatic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH16_test_1 u_Arithmatic_unit (.A({ A_top[7],
		A_top[6],
		A_top[5],
		A_top[4],
		A_top[3],
		A_top[2],
		A_top[1],
		A_top[0] }), 
	.B({ B_top[7],
		B_top[6],
		B_top[5],
		B_top[4],
		B_top[3],
		B_top[2],
		B_top[1],
		B_top[0] }), 
	.ALU_FUN({ ALU_FUN_top[1],
		ALU_FUN_top[0] }), 
	.Arith_Enable(Arith_Enable_top), 
	.CLK(CLK_top), 
	.RST(FE_OFN3_muxed_rst_sync_1), 
	.arith_flag(arith_flag_top), 
	.arith_OUT({ arith_OUT_top[15],
		arith_OUT_top[14],
		arith_OUT_top[13],
		arith_OUT_top[12],
		arith_OUT_top[11],
		arith_OUT_top[10],
		arith_OUT_top[9],
		arith_OUT_top[8],
		arith_OUT_top[7],
		arith_OUT_top[6],
		arith_OUT_top[5],
		arith_OUT_top[4],
		arith_OUT_top[3],
		arith_OUT_top[2],
		arith_OUT_top[1],
		arith_OUT_top[0] }), 
	.test_si(div0_q), 
	.test_se(test_se), 
	.gated_clk__L4_N1(gated_clk__L4_N1), 
	.gated_clk__L4_N2(gated_clk__L4_N2));
   Logic_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH8_test_1 u_Logic_unit (.A({ A_top[7],
		A_top[6],
		A_top[5],
		A_top[4],
		A_top[3],
		A_top[2],
		A_top[1],
		A_top[0] }), 
	.B({ B_top[7],
		B_top[6],
		B_top[5],
		B_top[4],
		B_top[3],
		B_top[2],
		B_top[1],
		B_top[0] }), 
	.ALU_FUN({ ALU_FUN_top[1],
		ALU_FUN_top[0] }), 
	.Logic_Enable(Logic_Enable_top), 
	.CLK(CLK_top), 
	.RST(FE_OFN3_muxed_rst_sync_1), 
	.logic_flag(logic_flag_top), 
	.logic_OUT({ logic_OUT_top[7],
		logic_OUT_top[6],
		logic_OUT_top[5],
		logic_OUT_top[4],
		logic_OUT_top[3],
		logic_OUT_top[2],
		logic_OUT_top[1],
		logic_OUT_top[0] }), 
	.test_si(cmp_flag_top), 
	.test_se(test_se), 
	.gated_clk__L4_N1(gated_clk__L4_N1));
   CMP_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH8_test_1 u_CMP_unit (.A({ A_top[7],
		A_top[6],
		A_top[5],
		A_top[4],
		A_top[3],
		A_top[2],
		A_top[1],
		A_top[0] }), 
	.B({ B_top[7],
		B_top[6],
		B_top[5],
		B_top[4],
		B_top[3],
		B_top[2],
		B_top[1],
		B_top[0] }), 
	.ALU_FUN({ ALU_FUN_top[1],
		ALU_FUN_top[0] }), 
	.CMP_Enable(CMP_Enable_top), 
	.CLK(CLK_top), 
	.RST(RST_top), 
	.cmp_flag(cmp_flag_top), 
	.cmp_OUT({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		SYNOPSYS_UNCONNECTED__4,
		SYNOPSYS_UNCONNECTED__5,
		cmp_OUT_top[1],
		cmp_OUT_top[0] }), 
	.test_si(arith_flag_top), 
	.test_se(test_se));
   Shift_unit_INPUT_A_WIDTH8_INPUT_B_WIDTH8_ALU_UNIT_SELECTION_WIDTH2_OUTPUT_WIDTH8_test_1 u_Shift_unit (.A({ A_top[7],
		A_top[6],
		A_top[5],
		A_top[4],
		A_top[3],
		A_top[2],
		A_top[1],
		A_top[0] }), 
	.B({ B_top[7],
		B_top[6],
		B_top[5],
		B_top[4],
		B_top[3],
		B_top[2],
		B_top[1],
		B_top[0] }), 
	.ALU_FUN({ ALU_FUN_top[1],
		ALU_FUN_top[0] }), 
	.Shift_Enable(Shift_Enable_top), 
	.CLK(CLK_top), 
	.RST(RST_top), 
	.shift_flag(shift_flag_top), 
	.shift_OUT({ shift_OUT_top[7],
		shift_OUT_top[6],
		shift_OUT_top[5],
		shift_OUT_top[4],
		shift_OUT_top[3],
		shift_OUT_top[2],
		shift_OUT_top[1],
		shift_OUT_top[0] }), 
	.test_si(logic_flag_top), 
	.test_se(test_se), 
	.FE_OFN3_muxed_rst_sync_1(FE_OFN3_muxed_rst_sync_1), 
	.gated_clk__L4_N1(gated_clk__L4_N1), 
	.gated_clk__L4_N2(gated_clk__L4_N2));
endmodule

module CLK_GATE (
	CLK_EN, 
	CLK, 
	GATED_CLK);
   input CLK_EN;
   input CLK;
   output GATED_CLK;

   TLATNCAX4M CG (.ECK(GATED_CLK), 
	.E(CLK_EN), 
	.CK(CLK));
endmodule

module sys_ctrl_test_1 (
	CLK, 
	RST, 
	RdData, 
	RdData_valid, 
	Address, 
	WrData, 
	WrEn, 
	RdEn, 
	RX_P_DATA, 
	RX_D_VLD, 
	ALU_OUT, 
	OUT_valid, 
	ALU_CLK_EN, 
	ALU_EN, 
	ALU_FUNC, 
	fifo_full, 
	Wr_Data_fifo, 
	Wr_inc, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN0_muxed_rst_sync_1, 
	FE_OFN2_muxed_rst_sync_1, 
	FE_OFN3_muxed_rst_sync_1, 
	REF_MUXED_CLK__L9_N13, 
	REF_MUXED_CLK__L9_N2, 
	REF_MUXED_CLK__L9_N3, 
	REF_MUXED_CLK__L9_N8, 
	REF_MUXED_CLK__L9_N9);
   input CLK;
   input RST;
   input [7:0] RdData;
   input RdData_valid;
   output [3:0] Address;
   output [7:0] WrData;
   output WrEn;
   output RdEn;
   input [7:0] RX_P_DATA;
   input RX_D_VLD;
   input [15:0] ALU_OUT;
   input OUT_valid;
   output ALU_CLK_EN;
   output ALU_EN;
   output [3:0] ALU_FUNC;
   input fifo_full;
   output [7:0] Wr_Data_fifo;
   output Wr_inc;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN0_muxed_rst_sync_1;
   input FE_OFN2_muxed_rst_sync_1;
   input FE_OFN3_muxed_rst_sync_1;
   input REF_MUXED_CLK__L9_N13;
   input REF_MUXED_CLK__L9_N2;
   input REF_MUXED_CLK__L9_N3;
   input REF_MUXED_CLK__L9_N8;
   input REF_MUXED_CLK__L9_N9;

   // Internal wires
   wire N25;
   wire n10;
   wire n11;
   wire n22;
   wire n28;
   wire n38;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n49;
   wire n50;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n70;
   wire n71;
   wire n72;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n93;
   wire n95;
   wire n97;
   wire n99;
   wire n101;
   wire n103;
   wire n105;
   wire n107;
   wire n109;
   wire n111;
   wire n113;
   wire n115;
   wire n117;
   wire n119;
   wire n121;
   wire n123;
   wire n125;
   wire n127;
   wire n129;
   wire n131;
   wire n133;
   wire n135;
   wire n137;
   wire n139;
   wire n141;
   wire n143;
   wire n145;
   wire n147;
   wire n149;
   wire n151;
   wire n153;
   wire n159;
   wire n162;
   wire n163;
   wire n164;
   wire n1;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n40;
   wire n41;
   wire n47;
   wire n48;
   wire n51;
   wire n56;
   wire n68;
   wire n69;
   wire n73;
   wire n79;
   wire n80;
   wire n160;
   wire n161;
   wire n165;
   wire n166;
   wire n169;
   wire n170;
   wire [3:0] current_state;
   wire [7:0] CMD;
   wire [3:0] latched_address;
   wire [15:0] latched_alu_out;
   wire [3:0] latched_alu_func;

   assign test_so = latched_alu_out[15] ;
   assign ALU_EN = N25 ;

   SDFFRQX2M \latched_alu_func_reg[0]  (.SI(latched_address[3]), 
	.SE(n170), 
	.RN(RST), 
	.Q(latched_alu_func[0]), 
	.D(n139), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \latched_alu_func_reg[1]  (.SI(latched_alu_func[0]), 
	.SE(n170), 
	.RN(RST), 
	.Q(latched_alu_func[1]), 
	.D(n133), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRQX2M \latched_alu_out_reg[15]  (.SI(latched_alu_out[14]), 
	.SE(test_se), 
	.RN(FE_OFN2_muxed_rst_sync_1), 
	.Q(latched_alu_out[15]), 
	.D(n123), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \latched_alu_out_reg[14]  (.SI(latched_alu_out[13]), 
	.SE(test_se), 
	.RN(FE_OFN2_muxed_rst_sync_1), 
	.Q(latched_alu_out[14]), 
	.D(n121), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \latched_alu_out_reg[13]  (.SI(latched_alu_out[12]), 
	.SE(test_se), 
	.RN(FE_OFN2_muxed_rst_sync_1), 
	.Q(latched_alu_out[13]), 
	.D(n119), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \latched_alu_out_reg[12]  (.SI(latched_alu_out[11]), 
	.SE(test_se), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(latched_alu_out[12]), 
	.D(n117), 
	.CK(CLK));
   SDFFRQX2M \latched_alu_out_reg[11]  (.SI(latched_alu_out[10]), 
	.SE(test_se), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(latched_alu_out[11]), 
	.D(n115), 
	.CK(CLK));
   SDFFRQX2M \latched_alu_out_reg[10]  (.SI(latched_alu_out[9]), 
	.SE(test_se), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(latched_alu_out[10]), 
	.D(n113), 
	.CK(CLK));
   SDFFRQX2M \latched_alu_out_reg[9]  (.SI(latched_alu_out[8]), 
	.SE(test_se), 
	.RN(FE_OFN2_muxed_rst_sync_1), 
	.Q(latched_alu_out[9]), 
	.D(n111), 
	.CK(CLK));
   SDFFRQX2M \latched_alu_out_reg[8]  (.SI(latched_alu_out[7]), 
	.SE(test_se), 
	.RN(FE_OFN2_muxed_rst_sync_1), 
	.Q(latched_alu_out[8]), 
	.D(n109), 
	.CK(CLK));
   SDFFRQX2M \CMD_reg[7]  (.SI(CMD[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(CMD[7]), 
	.D(n153), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \CMD_reg[5]  (.SI(CMD[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(CMD[5]), 
	.D(n149), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \CMD_reg[3]  (.SI(CMD[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(CMD[3]), 
	.D(n145), 
	.CK(REF_MUXED_CLK__L9_N3));
   SDFFRQX2M \CMD_reg[1]  (.SI(CMD[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(CMD[1]), 
	.D(n141), 
	.CK(REF_MUXED_CLK__L9_N3));
   SDFFRQX2M \latched_address_reg[3]  (.SI(latched_address[2]), 
	.SE(test_se), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(latched_address[3]), 
	.D(n131), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \latched_address_reg[2]  (.SI(latched_address[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(latched_address[2]), 
	.D(n129), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \latched_alu_out_reg[7]  (.SI(latched_alu_out[6]), 
	.SE(test_se), 
	.RN(FE_OFN2_muxed_rst_sync_1), 
	.Q(latched_alu_out[7]), 
	.D(n107), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \latched_alu_out_reg[6]  (.SI(latched_alu_out[5]), 
	.SE(test_se), 
	.RN(FE_OFN2_muxed_rst_sync_1), 
	.Q(latched_alu_out[6]), 
	.D(n105), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \latched_alu_out_reg[5]  (.SI(latched_alu_out[4]), 
	.SE(test_se), 
	.RN(FE_OFN2_muxed_rst_sync_1), 
	.Q(latched_alu_out[5]), 
	.D(n103), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \latched_alu_out_reg[4]  (.SI(latched_alu_out[3]), 
	.SE(test_se), 
	.RN(FE_OFN2_muxed_rst_sync_1), 
	.Q(latched_alu_out[4]), 
	.D(n101), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \latched_alu_out_reg[3]  (.SI(latched_alu_out[2]), 
	.SE(test_se), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(latched_alu_out[3]), 
	.D(n99), 
	.CK(CLK));
   SDFFRQX2M \latched_alu_out_reg[2]  (.SI(latched_alu_out[1]), 
	.SE(test_se), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(latched_alu_out[2]), 
	.D(n97), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRQX2M \latched_alu_out_reg[1]  (.SI(latched_alu_out[0]), 
	.SE(test_se), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(latched_alu_out[1]), 
	.D(n95), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRQX2M \latched_alu_out_reg[0]  (.SI(latched_alu_func[3]), 
	.SE(test_se), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(latched_alu_out[0]), 
	.D(n93), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRQX2M \CMD_reg[4]  (.SI(CMD[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(CMD[4]), 
	.D(n147), 
	.CK(REF_MUXED_CLK__L9_N3));
   SDFFRQX2M \CMD_reg[6]  (.SI(CMD[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(CMD[6]), 
	.D(n151), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \CMD_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(CMD[0]), 
	.D(n159), 
	.CK(REF_MUXED_CLK__L9_N3));
   SDFFRQX2M \CMD_reg[2]  (.SI(CMD[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(CMD[2]), 
	.D(n143), 
	.CK(REF_MUXED_CLK__L9_N3));
   SDFFRQX2M \latched_alu_func_reg[3]  (.SI(latched_alu_func[2]), 
	.SE(test_se), 
	.RN(FE_OFN0_muxed_rst_sync_1), 
	.Q(latched_alu_func[3]), 
	.D(n137), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRQX2M \latched_alu_func_reg[2]  (.SI(latched_alu_func[1]), 
	.SE(test_se), 
	.RN(FE_OFN2_muxed_rst_sync_1), 
	.Q(latched_alu_func[2]), 
	.D(n135), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \latched_address_reg[1]  (.SI(latched_address[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(latched_address[1]), 
	.D(n127), 
	.CK(REF_MUXED_CLK__L9_N2));
   SDFFRQX2M \latched_address_reg[0]  (.SI(current_state[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(latched_address[0]), 
	.D(n125), 
	.CK(REF_MUXED_CLK__L9_N13));
   SDFFRQX2M \current_state_reg[0]  (.SI(CMD[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(n164), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(n163), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(n162), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \current_state_reg[3]  (.SI(current_state[2]), 
	.SE(test_se), 
	.RN(FE_OFN2_muxed_rst_sync_1), 
	.Q(current_state[3]), 
	.D(n5), 
	.CK(REF_MUXED_CLK__L9_N8));
   OAI22X1M U3 (.Y(ALU_FUNC[1]), 
	.B1(n47), 
	.B0(n10), 
	.A1(n19), 
	.A0(n16));
   OAI22X1M U4 (.Y(ALU_FUNC[0]), 
	.B1(n37), 
	.B0(n10), 
	.A1(n19), 
	.A0(n17));
   OAI22X1M U5 (.Y(ALU_FUNC[3]), 
	.B1(n40), 
	.B0(n10), 
	.A1(n19), 
	.A0(n14));
   OAI22X1M U6 (.Y(ALU_FUNC[2]), 
	.B1(n41), 
	.B0(n10), 
	.A1(n19), 
	.A0(n15));
   NOR2X2M U7 (.Y(Address[1]), 
	.B(n56), 
	.A(n90));
   OAI21X2M U8 (.Y(Address[0]), 
	.B0(n52), 
	.A1(n68), 
	.A0(n90));
   NOR2X2M U9 (.Y(Address[2]), 
	.B(n51), 
	.A(n90));
   NOR2X2M U10 (.Y(Address[3]), 
	.B(n48), 
	.A(n90));
   NOR4X1M U11 (.Y(RdEn), 
	.D(current_state[3]), 
	.C(current_state[2]), 
	.B(n30), 
	.A(n29));
   NAND2X2M U12 (.Y(WrEn), 
	.B(n71), 
	.A(RX_D_VLD));
   OAI221X1M U13 (.Y(n43), 
	.C0(n70), 
	.B1(n26), 
	.B0(RdData_valid), 
	.A1(n7), 
	.A0(n67));
   NOR4X1M U14 (.Y(n59), 
	.D(current_state[2]), 
	.C(current_state[1]), 
	.B(current_state[0]), 
	.A(n31));
   INVX2M U15 (.Y(n19), 
	.A(N25));
   INVX2M U16 (.Y(n18), 
	.A(n11));
   INVX2M U17 (.Y(n7), 
	.A(fifo_full));
   INVX2M U18 (.Y(n24), 
	.A(n22));
   INVX2M U19 (.Y(n25), 
	.A(n65));
   INVX2M U20 (.Y(n1), 
	.A(n10));
   NOR2X2M U22 (.Y(N25), 
	.B(n20), 
	.A(n53));
   NAND2X2M U23 (.Y(n53), 
	.B(n29), 
	.A(n91));
   AND2X2M U24 (.Y(n90), 
	.B(n26), 
	.A(n88));
   INVX2M U25 (.Y(n26), 
	.A(RdEn));
   NOR2X2M U26 (.Y(n11), 
	.B(n22), 
	.A(n20));
   NOR2X2M U27 (.Y(WrData[0]), 
	.B(WrEn), 
	.A(n17));
   NOR2X2M U28 (.Y(WrData[1]), 
	.B(WrEn), 
	.A(n16));
   NOR2X2M U29 (.Y(WrData[2]), 
	.B(WrEn), 
	.A(n15));
   NOR2X2M U30 (.Y(WrData[3]), 
	.B(WrEn), 
	.A(n14));
   NOR2X2M U31 (.Y(WrData[4]), 
	.B(WrEn), 
	.A(n13));
   NOR2X2M U32 (.Y(WrData[5]), 
	.B(WrEn), 
	.A(n12));
   NOR2X2M U33 (.Y(WrData[6]), 
	.B(WrEn), 
	.A(n9));
   NOR2X2M U34 (.Y(WrData[7]), 
	.B(WrEn), 
	.A(n8));
   NAND2X2M U35 (.Y(n76), 
	.B(n7), 
	.A(n59));
   OAI22X1M U36 (.Y(n162), 
	.B1(n43), 
	.B0(n42), 
	.A1(n32), 
	.A0(n4));
   AOI211X2M U37 (.Y(n42), 
	.C0(n25), 
	.B0(n46), 
	.A1(n45), 
	.A0(n44));
   OAI22X1M U38 (.Y(n163), 
	.B1(n43), 
	.B0(n49), 
	.A1(n30), 
	.A0(n4));
   AOI211X2M U39 (.Y(n49), 
	.C0(n24), 
	.B0(n46), 
	.A1(n44), 
	.A0(n50));
   NOR2X2M U40 (.Y(n50), 
	.B(n13), 
	.A(n17));
   OAI22X1M U41 (.Y(n164), 
	.B1(n43), 
	.B0(n57), 
	.A1(n29), 
	.A0(n4));
   NOR4X1M U42 (.Y(n57), 
	.D(n60), 
	.C(n59), 
	.B(n58), 
	.A(n25));
   AOI21X2M U43 (.Y(n60), 
	.B0(n22), 
	.A1(n62), 
	.A0(n61));
   NAND2X2M U44 (.Y(n58), 
	.B(n19), 
	.A(n63));
   OAI22X1M U45 (.Y(n131), 
	.B1(n14), 
	.B0(n18), 
	.A1(n48), 
	.A0(n11));
   OAI22X1M U46 (.Y(n133), 
	.B1(n47), 
	.B0(N25), 
	.A1(n19), 
	.A0(n16));
   OAI22X1M U47 (.Y(n135), 
	.B1(n41), 
	.B0(N25), 
	.A1(n19), 
	.A0(n15));
   OAI22X1M U48 (.Y(n137), 
	.B1(n40), 
	.B0(N25), 
	.A1(n19), 
	.A0(n14));
   OAI22X1M U49 (.Y(n139), 
	.B1(n37), 
	.B0(N25), 
	.A1(n19), 
	.A0(n17));
   OAI22X1M U50 (.Y(n125), 
	.B1(n17), 
	.B0(n18), 
	.A1(n68), 
	.A0(n11));
   OAI22X1M U51 (.Y(n127), 
	.B1(n16), 
	.B0(n18), 
	.A1(n56), 
	.A0(n11));
   OAI22X1M U52 (.Y(n129), 
	.B1(n15), 
	.B0(n18), 
	.A1(n51), 
	.A0(n11));
   INVX2M U53 (.Y(n4), 
	.A(n43));
   NAND2X2M U54 (.Y(n22), 
	.B(n31), 
	.A(n72));
   NAND2X2M U55 (.Y(n65), 
	.B(n29), 
	.A(n89));
   NAND3X2M U56 (.Y(Wr_inc), 
	.C(n77), 
	.B(n76), 
	.A(n75));
   NAND3X2M U57 (.Y(n71), 
	.C(n65), 
	.B(n88), 
	.A(n52));
   INVX2M U58 (.Y(n6), 
	.A(n75));
   INVX2M U59 (.Y(n27), 
	.A(n77));
   AND2X2M U60 (.Y(n38), 
	.B(n30), 
	.A(n74));
   NOR4X1M U62 (.Y(n61), 
	.D(n33), 
	.C(n34), 
	.B(n35), 
	.A(n36));
   OAI22X1M U63 (.Y(n141), 
	.B1(n36), 
	.B0(n21), 
	.A1(n28), 
	.A0(n16));
   OAI22X1M U64 (.Y(n145), 
	.B1(n35), 
	.B0(n21), 
	.A1(n28), 
	.A0(n14));
   OAI22X1M U65 (.Y(n149), 
	.B1(n34), 
	.B0(n21), 
	.A1(n12), 
	.A0(n28));
   OAI22X1M U66 (.Y(n153), 
	.B1(n33), 
	.B0(n21), 
	.A1(n8), 
	.A0(n28));
   INVX2M U67 (.Y(n21), 
	.A(n28));
   NAND2X2M U68 (.Y(n46), 
	.B(n53), 
	.A(n52));
   NAND2X2M U70 (.Y(ALU_CLK_EN), 
	.B(n53), 
	.A(n10));
   NOR3X2M U71 (.Y(n89), 
	.C(n32), 
	.B(current_state[3]), 
	.A(current_state[1]));
   NOR3X2M U72 (.Y(n91), 
	.C(n32), 
	.B(current_state[3]), 
	.A(n30));
   NOR3X2M U73 (.Y(n74), 
	.C(current_state[0]), 
	.B(current_state[3]), 
	.A(current_state[2]));
   NAND2X2M U74 (.Y(n10), 
	.B(n91), 
	.A(current_state[0]));
   NAND2X2M U75 (.Y(n52), 
	.B(current_state[0]), 
	.A(n89));
   INVX2M U76 (.Y(n29), 
	.A(current_state[0]));
   INVX2M U77 (.Y(n30), 
	.A(current_state[1]));
   OAI2BB2X1M U78 (.Y(n93), 
	.B1(n166), 
	.B0(n1), 
	.A1N(n1), 
	.A0N(ALU_OUT[0]));
   OAI2BB2X1M U79 (.Y(n95), 
	.B1(n165), 
	.B0(n1), 
	.A1N(n1), 
	.A0N(ALU_OUT[1]));
   OAI2BB2X1M U80 (.Y(n97), 
	.B1(n161), 
	.B0(n1), 
	.A1N(n1), 
	.A0N(ALU_OUT[2]));
   OAI2BB2X1M U81 (.Y(n99), 
	.B1(n160), 
	.B0(n1), 
	.A1N(n1), 
	.A0N(ALU_OUT[3]));
   OAI2BB2X1M U82 (.Y(n101), 
	.B1(n80), 
	.B0(n1), 
	.A1N(n1), 
	.A0N(ALU_OUT[4]));
   OAI2BB2X1M U83 (.Y(n103), 
	.B1(n79), 
	.B0(n1), 
	.A1N(n1), 
	.A0N(ALU_OUT[5]));
   OAI2BB2X1M U84 (.Y(n105), 
	.B1(n73), 
	.B0(n1), 
	.A1N(n1), 
	.A0N(ALU_OUT[6]));
   OAI2BB2X1M U85 (.Y(n107), 
	.B1(n69), 
	.B0(n1), 
	.A1N(n1), 
	.A0N(ALU_OUT[7]));
   INVX2M U86 (.Y(n32), 
	.A(current_state[2]));
   NAND2X2M U87 (.Y(n88), 
	.B(current_state[1]), 
	.A(n74));
   AO22X1M U88 (.Y(n109), 
	.B1(n1), 
	.B0(ALU_OUT[8]), 
	.A1(latched_alu_out[8]), 
	.A0(n10));
   AO22X1M U89 (.Y(n111), 
	.B1(n1), 
	.B0(ALU_OUT[9]), 
	.A1(latched_alu_out[9]), 
	.A0(n10));
   AO22X1M U90 (.Y(n113), 
	.B1(n1), 
	.B0(ALU_OUT[10]), 
	.A1(latched_alu_out[10]), 
	.A0(n10));
   AO22X1M U91 (.Y(n115), 
	.B1(n1), 
	.B0(ALU_OUT[11]), 
	.A1(latched_alu_out[11]), 
	.A0(n10));
   AO22X1M U92 (.Y(n117), 
	.B1(n1), 
	.B0(ALU_OUT[12]), 
	.A1(latched_alu_out[12]), 
	.A0(n10));
   AO22X1M U93 (.Y(n119), 
	.B1(n1), 
	.B0(ALU_OUT[13]), 
	.A1(latched_alu_out[13]), 
	.A0(n10));
   AO22X1M U94 (.Y(n121), 
	.B1(n1), 
	.B0(ALU_OUT[14]), 
	.A1(latched_alu_out[14]), 
	.A0(n10));
   AO22X1M U95 (.Y(n123), 
	.B1(n1), 
	.B0(ALU_OUT[15]), 
	.A1(latched_alu_out[15]), 
	.A0(n10));
   AOI21X2M U96 (.Y(n67), 
	.B0(n59), 
	.A1(n72), 
	.A0(current_state[3]));
   OAI31X1M U97 (.Y(n70), 
	.B0(n20), 
	.A2(n24), 
	.A1(n38), 
	.A0(n71));
   NOR3X2M U98 (.Y(n72), 
	.C(n29), 
	.B(current_state[2]), 
	.A(current_state[1]));
   OAI21X2M U99 (.Y(Wr_Data_fifo[0]), 
	.B0(n87), 
	.A1(n76), 
	.A0(n166));
   AOI22X1M U100 (.Y(n87), 
	.B1(n27), 
	.B0(RdData[0]), 
	.A1(latched_alu_out[8]), 
	.A0(n6));
   OAI21X2M U101 (.Y(Wr_Data_fifo[1]), 
	.B0(n86), 
	.A1(n76), 
	.A0(n165));
   AOI22X1M U102 (.Y(n86), 
	.B1(n27), 
	.B0(RdData[1]), 
	.A1(latched_alu_out[9]), 
	.A0(n6));
   OAI21X2M U103 (.Y(Wr_Data_fifo[2]), 
	.B0(n85), 
	.A1(n76), 
	.A0(n161));
   AOI22X1M U104 (.Y(n85), 
	.B1(n27), 
	.B0(RdData[2]), 
	.A1(latched_alu_out[10]), 
	.A0(n6));
   OAI21X2M U105 (.Y(Wr_Data_fifo[3]), 
	.B0(n84), 
	.A1(n76), 
	.A0(n160));
   AOI22X1M U106 (.Y(n84), 
	.B1(n27), 
	.B0(RdData[3]), 
	.A1(latched_alu_out[11]), 
	.A0(n6));
   OAI21X2M U107 (.Y(Wr_Data_fifo[4]), 
	.B0(n83), 
	.A1(n76), 
	.A0(n80));
   AOI22X1M U108 (.Y(n83), 
	.B1(n27), 
	.B0(RdData[4]), 
	.A1(latched_alu_out[12]), 
	.A0(n6));
   OAI21X2M U109 (.Y(Wr_Data_fifo[5]), 
	.B0(n82), 
	.A1(n76), 
	.A0(n79));
   AOI22X1M U110 (.Y(n82), 
	.B1(n27), 
	.B0(RdData[5]), 
	.A1(latched_alu_out[13]), 
	.A0(n6));
   OAI21X2M U111 (.Y(Wr_Data_fifo[6]), 
	.B0(n81), 
	.A1(n76), 
	.A0(n73));
   AOI22X1M U112 (.Y(n81), 
	.B1(n27), 
	.B0(RdData[6]), 
	.A1(latched_alu_out[14]), 
	.A0(n6));
   OAI21X2M U113 (.Y(Wr_Data_fifo[7]), 
	.B0(n78), 
	.A1(n76), 
	.A0(n69));
   AOI22X1M U114 (.Y(n78), 
	.B1(n27), 
	.B0(RdData[7]), 
	.A1(latched_alu_out[15]), 
	.A0(n6));
   NAND3X2M U115 (.Y(n75), 
	.C(current_state[3]), 
	.B(n7), 
	.A(n72));
   NAND2X2M U116 (.Y(n77), 
	.B(RdEn), 
	.A(RdData_valid));
   INVX2M U117 (.Y(n31), 
	.A(current_state[3]));
   INVX2M U118 (.Y(n15), 
	.A(RX_P_DATA[2]));
   INVX2M U119 (.Y(n14), 
	.A(RX_P_DATA[3]));
   INVX2M U120 (.Y(n20), 
	.A(RX_D_VLD));
   INVX2M U121 (.Y(n5), 
	.A(n66));
   AOI221XLM U122 (.Y(n66), 
	.C0(n59), 
	.B1(n43), 
	.B0(current_state[3]), 
	.A1(n1), 
	.A0(OUT_valid));
   INVX2M U123 (.Y(n56), 
	.A(latched_address[1]));
   INVX2M U124 (.Y(n68), 
	.A(latched_address[0]));
   INVX2M U125 (.Y(n40), 
	.A(latched_alu_func[3]));
   INVX2M U126 (.Y(n41), 
	.A(latched_alu_func[2]));
   NAND2X2M U127 (.Y(n28), 
	.B(RX_D_VLD), 
	.A(n38));
   XNOR2X2M U128 (.Y(n45), 
	.B(RX_P_DATA[0]), 
	.A(RX_P_DATA[4]));
   NOR4X1M U129 (.Y(n62), 
	.D(CMD[0]), 
	.C(CMD[2]), 
	.B(CMD[4]), 
	.A(CMD[6]));
   NAND4X2M U130 (.Y(n63), 
	.D(n64), 
	.C(n45), 
	.B(RX_P_DATA[5]), 
	.A(n54));
   NOR3X2M U131 (.Y(n64), 
	.C(RX_P_DATA[2]), 
	.B(RX_P_DATA[6]), 
	.A(n16));
   OAI2BB2X1M U132 (.Y(n143), 
	.B1(n28), 
	.B0(n15), 
	.A1N(CMD[2]), 
	.A0N(n28));
   OAI2BB2X1M U133 (.Y(n159), 
	.B1(n28), 
	.B0(n17), 
	.A1N(CMD[0]), 
	.A0N(n28));
   OAI2BB2X1M U134 (.Y(n147), 
	.B1(n13), 
	.B0(n28), 
	.A1N(CMD[4]), 
	.A0N(n28));
   OAI2BB2X1M U135 (.Y(n151), 
	.B1(n9), 
	.B0(n28), 
	.A1N(CMD[6]), 
	.A0N(n28));
   INVX2M U136 (.Y(n16), 
	.A(RX_P_DATA[1]));
   INVX2M U137 (.Y(n17), 
	.A(RX_P_DATA[0]));
   AND3X2M U138 (.Y(n54), 
	.C(RX_P_DATA[7]), 
	.B(RX_P_DATA[3]), 
	.A(n38));
   INVX2M U139 (.Y(n13), 
	.A(RX_P_DATA[4]));
   INVX2M U140 (.Y(n12), 
	.A(RX_P_DATA[5]));
   INVX2M U141 (.Y(n9), 
	.A(RX_P_DATA[6]));
   AND3X2M U142 (.Y(n44), 
	.C(n55), 
	.B(RX_P_DATA[6]), 
	.A(n54));
   NOR3X2M U143 (.Y(n55), 
	.C(RX_P_DATA[1]), 
	.B(RX_P_DATA[5]), 
	.A(n15));
   INVX2M U144 (.Y(n34), 
	.A(CMD[5]));
   INVX2M U145 (.Y(n33), 
	.A(CMD[7]));
   INVX2M U146 (.Y(n36), 
	.A(CMD[1]));
   INVX2M U147 (.Y(n35), 
	.A(CMD[3]));
   INVX2M U148 (.Y(n8), 
	.A(RX_P_DATA[7]));
   INVX2M U149 (.Y(n51), 
	.A(latched_address[2]));
   INVX2M U150 (.Y(n48), 
	.A(latched_address[3]));
   INVX2M U151 (.Y(n166), 
	.A(latched_alu_out[0]));
   INVX2M U152 (.Y(n165), 
	.A(latched_alu_out[1]));
   INVX2M U153 (.Y(n161), 
	.A(latched_alu_out[2]));
   INVX2M U154 (.Y(n160), 
	.A(latched_alu_out[3]));
   INVX2M U155 (.Y(n80), 
	.A(latched_alu_out[4]));
   INVX2M U156 (.Y(n79), 
	.A(latched_alu_out[5]));
   INVX2M U157 (.Y(n73), 
	.A(latched_alu_out[6]));
   INVX2M U158 (.Y(n69), 
	.A(latched_alu_out[7]));
   INVX2M U195 (.Y(n47), 
	.A(latched_alu_func[1]));
   INVX2M U196 (.Y(n37), 
	.A(latched_alu_func[0]));
   INVXLM U197 (.Y(n169), 
	.A(test_se));
   INVXLM U198 (.Y(n170), 
	.A(n169));
endmodule

module DATA_SYNC_BUS_WIDTH8_NUM_STAGES2_test_1 (
	unsync_bus, 
	bus_en, 
	CLK, 
	RST, 
	sync_bus, 
	enable_pulse, 
	test_si, 
	test_so, 
	test_se, 
	REF_MUXED_CLK__L9_N9);
   input [7:0] unsync_bus;
   input bus_en;
   input CLK;
   input RST;
   output [7:0] sync_bus;
   output enable_pulse;
   input test_si;
   output test_so;
   input test_se;
   input REF_MUXED_CLK__L9_N9;

   // Internal wires
   wire pulse_gen;
   wire n1;
   wire n4;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n22;
   wire [1:0] syncronizer;

   assign test_so = syncronizer[1] ;

   SDFFRQX2M pulse_gen_reg (.SI(enable_pulse), 
	.SE(test_se), 
	.RN(RST), 
	.Q(pulse_gen), 
	.D(syncronizer[0]), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \syncronizer_reg[0]  (.SI(sync_bus[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(syncronizer[0]), 
	.D(syncronizer[1]), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[7]), 
	.D(n18), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \sync_bus_reg[4]  (.SI(sync_bus[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[4]), 
	.D(n12), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \sync_bus_reg[0]  (.SI(pulse_gen), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[0]), 
	.D(n4), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[1]), 
	.D(n6), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \sync_bus_reg[6]  (.SI(sync_bus[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[6]), 
	.D(n16), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \sync_bus_reg[5]  (.SI(sync_bus[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[5]), 
	.D(n14), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \sync_bus_reg[3]  (.SI(sync_bus[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[3]), 
	.D(n10), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M \sync_bus_reg[2]  (.SI(sync_bus[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[2]), 
	.D(n8), 
	.CK(REF_MUXED_CLK__L9_N9));
   SDFFRQX2M enable_pulse_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(enable_pulse), 
	.D(n22), 
	.CK(CLK));
   SDFFRQX2M \syncronizer_reg[1]  (.SI(syncronizer[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(syncronizer[1]), 
	.D(bus_en), 
	.CK(REF_MUXED_CLK__L9_N9));
   INVX2M U3 (.Y(n22), 
	.A(n1));
   NAND2BX2M U4 (.Y(n1), 
	.B(syncronizer[0]), 
	.AN(pulse_gen));
   AO22X1M U5 (.Y(n4), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n22), 
	.A0(unsync_bus[0]));
   AO22X1M U6 (.Y(n6), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n22), 
	.A0(unsync_bus[1]));
   AO22X1M U7 (.Y(n8), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n22), 
	.A0(unsync_bus[2]));
   AO22X1M U8 (.Y(n10), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n22), 
	.A0(unsync_bus[3]));
   AO22X1M U9 (.Y(n12), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n22), 
	.A0(unsync_bus[4]));
   AO22X1M U10 (.Y(n14), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n22), 
	.A0(unsync_bus[5]));
   AO22X1M U11 (.Y(n16), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n22), 
	.A0(unsync_bus[6]));
   AO22X1M U12 (.Y(n18), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n22), 
	.A0(unsync_bus[7]));
endmodule

module Tx_FSM_test_1 (
	DATA_VALID, 
	PAR_EN, 
	ser_done, 
	CLK, 
	RST, 
	serializer_out, 
	parity_calc_out, 
	TX_OUT, 
	ser_en, 
	parity_calc_en, 
	Busy, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN4_muxed_rst_sync_2, 
	TX_MUXED_CLK__L4_N1);
   input DATA_VALID;
   input PAR_EN;
   input ser_done;
   input CLK;
   input RST;
   input serializer_out;
   input parity_calc_out;
   output TX_OUT;
   output ser_en;
   output parity_calc_en;
   output Busy;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN4_muxed_rst_sync_2;
   input TX_MUXED_CLK__L4_N1;

   // Internal wires
   wire FE_OFN7_TX_OUT;
   wire n7;
   wire n10;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n4;
   wire n5;
   wire n9;
   wire [2:0] current_state;

   BUFX2M FE_OFC7_TX_OUT (.Y(TX_OUT), 
	.A(FE_OFN7_TX_OUT));
   OAI2B11X2M U14 (.Y(FE_OFN7_TX_OUT), 
	.C0(n18), 
	.B0(n7), 
	.A1N(serializer_out), 
	.A0(n15));
   SDFFRQX2M \current_state_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(n23), 
	.CK(TX_MUXED_CLK__L4_N1));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(FE_OFN4_muxed_rst_sync_2), 
	.Q(current_state[1]), 
	.D(n22), 
	.CK(CLK));
   SDFFRX1M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(test_se), 
	.RN(FE_OFN4_muxed_rst_sync_2), 
	.QN(n7), 
	.Q(test_so), 
	.D(n21), 
	.CK(CLK));
   NOR2X2M U6 (.Y(n14), 
	.B(n9), 
	.A(n5));
   OAI211X2M U7 (.Y(n22), 
	.C0(parity_calc_en), 
	.B0(n16), 
	.A1(n9), 
	.A0(n4));
   INVX2M U8 (.Y(n4), 
	.A(n13));
   INVX2M U9 (.Y(ser_en), 
	.A(n10));
   OAI21X2M U11 (.Y(Busy), 
	.B0(n10), 
	.A1(n20), 
	.A0(n19));
   CLKXOR2X2M U12 (.Y(n19), 
	.B(n7), 
	.A(n14));
   INVX2M U13 (.Y(n9), 
	.A(current_state[1]));
   INVX2M U15 (.Y(n5), 
	.A(current_state[0]));
   OAI22X1M U16 (.Y(n13), 
	.B1(DATA_VALID), 
	.B0(current_state[1]), 
	.A1(n15), 
	.A0(ser_done));
   NAND3BX2M U17 (.Y(n16), 
	.C(PAR_EN), 
	.B(n4), 
	.AN(n15));
   NAND3X2M U18 (.Y(parity_calc_en), 
	.C(current_state[0]), 
	.B(n7), 
	.A(n9));
   NAND3X2M U19 (.Y(n15), 
	.C(current_state[1]), 
	.B(n7), 
	.A(n5));
   NAND2X2M U20 (.Y(n10), 
	.B(n7), 
	.A(n20));
   CLKXOR2X2M U21 (.Y(n20), 
	.B(current_state[1]), 
	.A(current_state[0]));
   NOR2X2M U22 (.Y(n21), 
	.B(n13), 
	.A(n12));
   AOI2BB2XLM U23 (.Y(n12), 
	.B1(n7), 
	.B0(n14), 
	.A1N(PAR_EN), 
	.A0N(n15));
   NAND2X2M U24 (.Y(n23), 
	.B(n16), 
	.A(n17));
   NAND4X2M U25 (.Y(n17), 
	.D(n7), 
	.C(n9), 
	.B(n5), 
	.A(n4));
   AOI22X1M U26 (.Y(n18), 
	.B1(n9), 
	.B0(n5), 
	.A1(n14), 
	.A0(parity_calc_out));
endmodule

module serializer_DATA_WIDTH8_test_1 (
	P_DATA, 
	ser_en, 
	CLK, 
	RST, 
	serial_data, 
	ser_done, 
	test_si, 
	test_se);
   input [7:0] P_DATA;
   input ser_en;
   input CLK;
   input RST;
   output serial_data;
   output ser_done;
   input test_si;
   input test_se;

   // Internal wires
   wire N5;
   wire N6;
   wire N7;
   wire N12;
   wire N13;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n50;
   wire n51;
   wire [7:0] data_reg;

   SDFFSQX2M serial_data_reg (.SN(RST), 
	.SI(ser_done), 
	.SE(n51), 
	.Q(serial_data), 
	.D(N23), 
	.CK(CLK));
   SDFFRQX2M \data_reg_reg[4]  (.SI(data_reg[3]), 
	.SE(n51), 
	.RN(RST), 
	.Q(data_reg[4]), 
	.D(n28), 
	.CK(CLK));
   SDFFRQX2M \data_reg_reg[0]  (.SI(N7), 
	.SE(n51), 
	.RN(RST), 
	.Q(data_reg[0]), 
	.D(n32), 
	.CK(CLK));
   SDFFRQX2M \data_reg_reg[2]  (.SI(data_reg[1]), 
	.SE(n51), 
	.RN(RST), 
	.Q(data_reg[2]), 
	.D(n26), 
	.CK(CLK));
   SDFFRQX2M \data_reg_reg[6]  (.SI(data_reg[5]), 
	.SE(n51), 
	.RN(RST), 
	.Q(data_reg[6]), 
	.D(n30), 
	.CK(CLK));
   SDFFRQX2M \data_reg_reg[3]  (.SI(data_reg[2]), 
	.SE(n51), 
	.RN(RST), 
	.Q(data_reg[3]), 
	.D(n27), 
	.CK(CLK));
   SDFFRQX2M \data_reg_reg[7]  (.SI(data_reg[6]), 
	.SE(n51), 
	.RN(RST), 
	.Q(data_reg[7]), 
	.D(n31), 
	.CK(CLK));
   SDFFRQX2M \data_reg_reg[1]  (.SI(data_reg[0]), 
	.SE(n51), 
	.RN(RST), 
	.Q(data_reg[1]), 
	.D(n25), 
	.CK(CLK));
   SDFFRQX2M \data_reg_reg[5]  (.SI(data_reg[4]), 
	.SE(n51), 
	.RN(RST), 
	.Q(data_reg[5]), 
	.D(n29), 
	.CK(CLK));
   SDFFRQX2M ser_done_reg (.SI(data_reg[7]), 
	.SE(n51), 
	.RN(RST), 
	.Q(ser_done), 
	.D(N24), 
	.CK(CLK));
   SDFFRQX2M \counter_reg[2]  (.SI(N6), 
	.SE(n51), 
	.RN(RST), 
	.Q(N7), 
	.D(n46), 
	.CK(CLK));
   SDFFRQX2M \counter_reg[1]  (.SI(N5), 
	.SE(n51), 
	.RN(RST), 
	.Q(N6), 
	.D(N26), 
	.CK(CLK));
   SDFFRQX2M \counter_reg[0]  (.SI(test_si), 
	.SE(n51), 
	.RN(RST), 
	.Q(N5), 
	.D(N25), 
	.CK(CLK));
   NOR3X2M U16 (.Y(n19), 
	.C(N5), 
	.B(N7), 
	.A(N6));
   INVX2M U17 (.Y(n45), 
	.A(n18));
   NAND2X2M U18 (.Y(n18), 
	.B(n19), 
	.A(ser_en));
   NAND2X2M U19 (.Y(n21), 
	.B(n23), 
	.A(ser_en));
   NOR2BX2M U20 (.Y(N24), 
	.B(n23), 
	.AN(ser_en));
   NAND2X2M U21 (.Y(N23), 
	.B(ser_en), 
	.A(n24));
   AOI22X1M U22 (.Y(n24), 
	.B1(n44), 
	.B0(N13), 
	.A1(n19), 
	.A0(N12));
   INVX2M U23 (.Y(n44), 
	.A(n19));
   AO22X1M U24 (.Y(n31), 
	.B1(n18), 
	.B0(data_reg[7]), 
	.A1(n45), 
	.A0(P_DATA[7]));
   AO22X1M U25 (.Y(n30), 
	.B1(n18), 
	.B0(data_reg[6]), 
	.A1(n45), 
	.A0(P_DATA[6]));
   INVX2M U26 (.Y(n43), 
	.A(N5));
   AO22X1M U27 (.Y(n26), 
	.B1(n18), 
	.B0(data_reg[2]), 
	.A1(n45), 
	.A0(P_DATA[2]));
   AO22X1M U28 (.Y(n27), 
	.B1(n18), 
	.B0(data_reg[3]), 
	.A1(n45), 
	.A0(P_DATA[3]));
   AO22X1M U29 (.Y(n32), 
	.B1(n18), 
	.B0(data_reg[0]), 
	.A1(n45), 
	.A0(P_DATA[0]));
   AO22X1M U30 (.Y(n29), 
	.B1(n18), 
	.B0(data_reg[5]), 
	.A1(n45), 
	.A0(P_DATA[5]));
   AO22X1M U31 (.Y(n28), 
	.B1(n18), 
	.B0(data_reg[4]), 
	.A1(n45), 
	.A0(P_DATA[4]));
   AO22X1M U32 (.Y(n25), 
	.B1(n18), 
	.B0(data_reg[1]), 
	.A1(n45), 
	.A0(P_DATA[1]));
   NAND3X2M U33 (.Y(n23), 
	.C(N7), 
	.B(N5), 
	.A(N6));
   NOR2X2M U34 (.Y(N25), 
	.B(n21), 
	.A(N5));
   NOR2X2M U35 (.Y(N26), 
	.B(n21), 
	.A(n22));
   XNOR2X2M U36 (.Y(n22), 
	.B(N5), 
	.A(N6));
   INVX2M U37 (.Y(n46), 
	.A(n20));
   AOI32X1M U38 (.Y(n20), 
	.B1(n47), 
	.B0(N7), 
	.A2(N6), 
	.A1(N5), 
	.A0(n47));
   INVX2M U39 (.Y(n47), 
	.A(n21));
   INVX2M U40 (.Y(n42), 
	.A(N6));
   INVX2M U41 (.Y(n41), 
	.A(N7));
   NOR2X1M U42 (.Y(n38), 
	.B(N5), 
	.A(n42));
   NOR2X1M U43 (.Y(n37), 
	.B(n43), 
	.A(n42));
   NOR2X1M U44 (.Y(n35), 
	.B(N6), 
	.A(n43));
   NOR2X1M U45 (.Y(n34), 
	.B(N6), 
	.A(N5));
   AO22X1M U46 (.Y(n14), 
	.B1(n34), 
	.B0(data_reg[4]), 
	.A1(n35), 
	.A0(data_reg[5]));
   AOI221XLM U47 (.Y(n17), 
	.C0(n14), 
	.B1(n37), 
	.B0(data_reg[7]), 
	.A1(n38), 
	.A0(data_reg[6]));
   AO22X1M U48 (.Y(n15), 
	.B1(n34), 
	.B0(data_reg[0]), 
	.A1(n35), 
	.A0(data_reg[1]));
   AOI221XLM U49 (.Y(n16), 
	.C0(n15), 
	.B1(n37), 
	.B0(data_reg[3]), 
	.A1(n38), 
	.A0(data_reg[2]));
   OAI22X1M U50 (.Y(N13), 
	.B1(n16), 
	.B0(N7), 
	.A1(n17), 
	.A0(n41));
   AO22X1M U51 (.Y(n33), 
	.B1(n34), 
	.B0(P_DATA[4]), 
	.A1(n35), 
	.A0(P_DATA[5]));
   AOI221XLM U52 (.Y(n40), 
	.C0(n33), 
	.B1(n37), 
	.B0(P_DATA[7]), 
	.A1(n38), 
	.A0(P_DATA[6]));
   AO22X1M U53 (.Y(n36), 
	.B1(n34), 
	.B0(P_DATA[0]), 
	.A1(n35), 
	.A0(P_DATA[1]));
   AOI221XLM U54 (.Y(n39), 
	.C0(n36), 
	.B1(n37), 
	.B0(P_DATA[3]), 
	.A1(n38), 
	.A0(P_DATA[2]));
   OAI22X1M U55 (.Y(N12), 
	.B1(n39), 
	.B0(N7), 
	.A1(n41), 
	.A0(n40));
   INVXLM U56 (.Y(n50), 
	.A(test_se));
   CLKINVX2M U57 (.Y(n51), 
	.A(n50));
endmodule

module parity_calc_DATA_WIDTH8_test_1 (
	P_DATA, 
	PAR_TYPE, 
	parity_calc_en, 
	CLK, 
	RST, 
	parity_bit, 
	test_si, 
	test_se);
   input [7:0] P_DATA;
   input PAR_TYPE;
   input parity_calc_en;
   input CLK;
   input RST;
   output parity_bit;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n8;

   SDFFRQX2M parity_bit_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(parity_bit), 
	.D(n8), 
	.CK(CLK));
   XOR3XLM U2 (.Y(n3), 
	.C(n6), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   CLKXOR2X2M U3 (.Y(n6), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
   XOR3XLM U4 (.Y(n4), 
	.C(n5), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
   XNOR2X2M U5 (.Y(n5), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
   OAI2BB2X1M U6 (.Y(n8), 
	.B1(parity_calc_en), 
	.B0(n1), 
	.A1N(parity_calc_en), 
	.A0N(parity_bit));
   XOR3XLM U8 (.Y(n1), 
	.C(n4), 
	.B(PAR_TYPE), 
	.A(n3));
endmodule

module UART_Tx_DATA_WIDTH8_test_1 (
	P_DATA, 
	DATA_VALID, 
	PAR_EN, 
	PAR_TYP, 
	CLK, 
	RST, 
	Tx_out, 
	Busy, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN4_muxed_rst_sync_2, 
	TX_MUXED_CLK__L4_N1);
   input [7:0] P_DATA;
   input DATA_VALID;
   input PAR_EN;
   input PAR_TYP;
   input CLK;
   input RST;
   output Tx_out;
   output Busy;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN4_muxed_rst_sync_2;
   input TX_MUXED_CLK__L4_N1;

   // Internal wires
   wire ser_done;
   wire serializer_out;
   wire parity_calc_out;
   wire ser_en;
   wire parity_calc_en;
   wire n2;

   assign test_so = serializer_out ;

   Tx_FSM_test_1 u_Tx_FSM (.DATA_VALID(DATA_VALID), 
	.PAR_EN(PAR_EN), 
	.ser_done(ser_done), 
	.CLK(CLK), 
	.RST(RST), 
	.serializer_out(serializer_out), 
	.parity_calc_out(parity_calc_out), 
	.TX_OUT(Tx_out), 
	.ser_en(ser_en), 
	.parity_calc_en(parity_calc_en), 
	.Busy(Busy), 
	.test_si(test_si), 
	.test_so(n2), 
	.test_se(test_se), 
	.FE_OFN4_muxed_rst_sync_2(FE_OFN4_muxed_rst_sync_2), 
	.TX_MUXED_CLK__L4_N1(TX_MUXED_CLK__L4_N1));
   serializer_DATA_WIDTH8_test_1 u_serializer (.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.ser_en(ser_en), 
	.CLK(TX_MUXED_CLK__L4_N1), 
	.RST(FE_OFN4_muxed_rst_sync_2), 
	.serial_data(serializer_out), 
	.ser_done(ser_done), 
	.test_si(parity_calc_out), 
	.test_se(test_se));
   parity_calc_DATA_WIDTH8_test_1 u_parity_calc (.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.PAR_TYPE(PAR_TYP), 
	.parity_calc_en(parity_calc_en), 
	.CLK(CLK), 
	.RST(FE_OFN4_muxed_rst_sync_2), 
	.parity_bit(parity_calc_out), 
	.test_si(n2), 
	.test_se(test_se));
endmodule

module Rx_FSM_test_1 (
	RX_IN, 
	sampler_out, 
	Prescale, 
	bit_counter_out, 
	edge_counter_out, 
	parity_checker_out, 
	PAR_EN, 
	CLK, 
	RST, 
	sampler_en, 
	parity_checker_en, 
	bit_counter_en, 
	deserializer_en, 
	deserializer_in, 
	parity_error, 
	stop_error, 
	data_valid, 
	test_si, 
	test_so, 
	test_se);
   input RX_IN;
   input sampler_out;
   input [5:0] Prescale;
   input [3:0] bit_counter_out;
   input [5:0] edge_counter_out;
   input parity_checker_out;
   input PAR_EN;
   input CLK;
   input RST;
   output sampler_en;
   output parity_checker_en;
   output bit_counter_en;
   output deserializer_en;
   output deserializer_in;
   output parity_error;
   output stop_error;
   output data_valid;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire FE_OFN6_STP_ERR;
   wire FE_OFN5_PAR_ERR;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n21;
   wire n38;
   wire n39;
   wire n40;
   wire [2:0] current_state;
   wire [2:0] next_state;

   assign test_so = current_state[2] ;
   assign deserializer_en = bit_counter_en ;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   BUFX2M FE_OFC6_STP_ERR (.Y(stop_error), 
	.A(FE_OFN6_STP_ERR));
   BUFX2M FE_OFC5_PAR_ERR (.Y(parity_error), 
	.A(FE_OFN5_PAR_ERR));
   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK));
   INVX2M U4 (.Y(n19), 
	.A(N42));
   INVX2M U5 (.Y(n18), 
	.A(n34));
   INVX2M U8 (.Y(n38), 
	.A(n26));
   INVX2M U9 (.Y(bit_counter_en), 
	.A(n23));
   INVX2M U10 (.Y(parity_checker_en), 
	.A(n27));
   NOR3X2M U11 (.Y(FE_OFN5_PAR_ERR), 
	.C(n19), 
	.B(n28), 
	.A(n27));
   OAI221XLM U12 (.Y(next_state[0]), 
	.C0(n36), 
	.B1(n25), 
	.B0(N42), 
	.A1(n35), 
	.A0(RX_IN));
   AOI21X2M U13 (.Y(n35), 
	.B0(data_valid), 
	.A1(n21), 
	.A0(n33));
   AOI33X2M U14 (.Y(n36), 
	.B2(sampler_out), 
	.B1(n26), 
	.B0(N42), 
	.A2(PAR_EN), 
	.A1(bit_counter_en), 
	.A0(n18));
   OAI211XLM U15 (.Y(next_state[1]), 
	.C0(n32), 
	.B0(n31), 
	.A1(n27), 
	.A0(N42));
   NAND4XLM U16 (.Y(n32), 
	.D(n17), 
	.C(N42), 
	.B(n33), 
	.A(current_state[0]));
   OAI21X2M U17 (.Y(n31), 
	.B0(bit_counter_en), 
	.A1(n34), 
	.A0(PAR_EN));
   NAND4X2M U18 (.Y(n34), 
	.D(bit_counter_out[0]), 
	.C(n37), 
	.B(bit_counter_out[1]), 
	.A(bit_counter_out[2]));
   NOR2X2M U19 (.Y(n37), 
	.B(n19), 
	.A(LTIE_LTIELO_NET));
   NAND2X2M U20 (.Y(next_state[2]), 
	.B(n30), 
	.A(n29));
   OAI21X2M U21 (.Y(n30), 
	.B0(n26), 
	.A1(n19), 
	.A0(sampler_out));
   AOI33XLM U22 (.Y(n29), 
	.B2(n18), 
	.B1(n40), 
	.B0(bit_counter_en), 
	.A2(n28), 
	.A1(N42), 
	.A0(parity_checker_en));
   INVX2M U23 (.Y(n40), 
	.A(PAR_EN));
   NOR2X2M U24 (.Y(deserializer_in), 
	.B(n23), 
	.A(n17));
   NOR3X2M U25 (.Y(n26), 
	.C(n39), 
	.B(current_state[1]), 
	.A(current_state[0]));
   NOR3X2M U26 (.Y(data_valid), 
	.C(n21), 
	.B(current_state[1]), 
	.A(n39));
   NOR2X2M U27 (.Y(n33), 
	.B(current_state[2]), 
	.A(current_state[1]));
   NAND3X2M U28 (.Y(n23), 
	.C(current_state[1]), 
	.B(n39), 
	.A(n21));
   NAND3X2M U29 (.Y(n27), 
	.C(current_state[0]), 
	.B(n39), 
	.A(current_state[1]));
   AOI21X2M U30 (.Y(n25), 
	.B0(parity_checker_en), 
	.A1(current_state[0]), 
	.A0(n33));
   INVX2M U31 (.Y(n21), 
	.A(current_state[0]));
   INVX2M U32 (.Y(n17), 
	.A(sampler_out));
   INVX2M U33 (.Y(n39), 
	.A(current_state[2]));
   NAND3X2M U34 (.Y(sampler_en), 
	.C(n24), 
	.B(n38), 
	.A(n23));
   OA21X2M U35 (.Y(n24), 
	.B0(n25), 
	.A1(current_state[1]), 
	.A0(RX_IN));
   CLKXOR2X2M U36 (.Y(n28), 
	.B(parity_checker_out), 
	.A(n17));
   NOR3X2M U37 (.Y(FE_OFN6_STP_ERR), 
	.C(n38), 
	.B(sampler_out), 
	.A(n19));
   INVX2M U38 (.Y(N35), 
	.A(LTIE_LTIELO_NET));
   NAND2BX1M U39 (.Y(n1), 
	.B(N35), 
	.AN(LTIE_LTIELO_NET));
   OAI2BB1X1M U40 (.Y(N36), 
	.B0(n1), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(LTIE_LTIELO_NET));
   OR2X1M U41 (.Y(n2), 
	.B(Prescale[2]), 
	.A(n1));
   OAI2BB1X1M U42 (.Y(N37), 
	.B0(n2), 
	.A1N(Prescale[2]), 
	.A0N(n1));
   OR2X1M U43 (.Y(n3), 
	.B(Prescale[3]), 
	.A(n2));
   OAI2BB1X1M U44 (.Y(N38), 
	.B0(n3), 
	.A1N(Prescale[3]), 
	.A0N(n2));
   OR2X1M U45 (.Y(n4), 
	.B(Prescale[4]), 
	.A(n3));
   OAI2BB1X1M U46 (.Y(N39), 
	.B0(n4), 
	.A1N(Prescale[4]), 
	.A0N(n3));
   NOR2X1M U47 (.Y(N41), 
	.B(Prescale[5]), 
	.A(n4));
   AO21XLM U48 (.Y(N40), 
	.B0(N41), 
	.A1(Prescale[5]), 
	.A0(n4));
   NOR2BX1M U49 (.Y(n5), 
	.B(edge_counter_out[0]), 
	.AN(N35));
   OAI2B2X1M U50 (.Y(n9), 
	.B1(n5), 
	.B0(N36), 
	.A1N(edge_counter_out[1]), 
	.A0(n5));
   XNOR2X1M U51 (.Y(n8), 
	.B(edge_counter_out[5]), 
	.A(N40));
   NOR2BX1M U52 (.Y(n6), 
	.B(N35), 
	.AN(edge_counter_out[0]));
   OAI2B2X1M U53 (.Y(n7), 
	.B1(n6), 
	.B0(edge_counter_out[1]), 
	.A1N(N36), 
	.A0(n6));
   NAND4BX1M U54 (.Y(n16), 
	.D(n7), 
	.C(n8), 
	.B(n9), 
	.AN(N41));
   CLKXOR2X2M U55 (.Y(n15), 
	.B(edge_counter_out[4]), 
	.A(N39));
   CLKXOR2X2M U56 (.Y(n14), 
	.B(edge_counter_out[2]), 
	.A(N37));
   CLKXOR2X2M U57 (.Y(n10), 
	.B(edge_counter_out[3]), 
	.A(N38));
   NOR4X1M U58 (.Y(N42), 
	.D(n10), 
	.C(n14), 
	.B(n15), 
	.A(n16));
endmodule

module deserializer_test_1 (
	deserializer_en, 
	deserializer_in, 
	Prescale, 
	edge_counter_out, 
	CLK, 
	RST, 
	P_DATA, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN4_muxed_rst_sync_2, 
	RX_MUXED_CLK__L4_N1);
   input deserializer_en;
   input deserializer_in;
   input [5:0] Prescale;
   input [5:0] edge_counter_out;
   input CLK;
   input RST;
   output [7:0] P_DATA;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN4_muxed_rst_sync_2;
   input RX_MUXED_CLK__L4_N1;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire N5;
   wire N6;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n20;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;

   assign test_so = n13 ;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRX1M \P_DATA_reg[5]  (.SI(n16), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n15), 
	.Q(P_DATA[5]), 
	.D(n27), 
	.CK(RX_MUXED_CLK__L4_N1));
   SDFFRX1M \P_DATA_reg[1]  (.SI(P_DATA[0]), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n19), 
	.Q(P_DATA[1]), 
	.D(n23), 
	.CK(CLK));
   SDFFRX1M \P_DATA_reg[4]  (.SI(n17), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n16), 
	.Q(P_DATA[4]), 
	.D(n26), 
	.CK(RX_MUXED_CLK__L4_N1));
   SDFFRQX2M \P_DATA_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN4_muxed_rst_sync_2), 
	.Q(P_DATA[0]), 
	.D(n22), 
	.CK(CLK));
   SDFFRX1M \P_DATA_reg[7]  (.SI(n14), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n13), 
	.Q(P_DATA[7]), 
	.D(n29), 
	.CK(RX_MUXED_CLK__L4_N1));
   SDFFRX1M \P_DATA_reg[3]  (.SI(n18), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n17), 
	.Q(P_DATA[3]), 
	.D(n25), 
	.CK(RX_MUXED_CLK__L4_N1));
   SDFFRX1M \P_DATA_reg[6]  (.SI(n15), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n14), 
	.Q(P_DATA[6]), 
	.D(n28), 
	.CK(RX_MUXED_CLK__L4_N1));
   SDFFRX1M \P_DATA_reg[2]  (.SI(n19), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n18), 
	.Q(P_DATA[2]), 
	.D(n24), 
	.CK(RX_MUXED_CLK__L4_N1));
   INVX2M U5 (.Y(n38), 
	.A(n21));
   NAND2X2M U6 (.Y(n21), 
	.B(N12), 
	.A(deserializer_en));
   OAI22X1M U13 (.Y(n23), 
	.B1(n19), 
	.B0(n38), 
	.A1(n18), 
	.A0(n21));
   OAI22X1M U14 (.Y(n24), 
	.B1(n18), 
	.B0(n38), 
	.A1(n17), 
	.A0(n21));
   OAI22X1M U15 (.Y(n25), 
	.B1(n17), 
	.B0(n38), 
	.A1(n16), 
	.A0(n21));
   OAI22X1M U16 (.Y(n26), 
	.B1(n16), 
	.B0(n38), 
	.A1(n15), 
	.A0(n21));
   OAI22X1M U17 (.Y(n27), 
	.B1(n15), 
	.B0(n38), 
	.A1(n14), 
	.A0(n21));
   OAI22X1M U18 (.Y(n28), 
	.B1(n14), 
	.B0(n38), 
	.A1(n13), 
	.A0(n21));
   OAI2BB2X1M U19 (.Y(n29), 
	.B1(n13), 
	.B0(n38), 
	.A1N(n38), 
	.A0N(deserializer_in));
   OAI2BB2X1M U20 (.Y(n22), 
	.B1(n19), 
	.B0(n21), 
	.A1N(n21), 
	.A0N(P_DATA[0]));
   INVX2M U21 (.Y(N5), 
	.A(LTIE_LTIELO_NET));
   NAND2BX1M U22 (.Y(n1), 
	.B(N5), 
	.AN(LTIE_LTIELO_NET));
   OAI2BB1X1M U23 (.Y(N6), 
	.B0(n1), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(LTIE_LTIELO_NET));
   OR2X1M U24 (.Y(n2), 
	.B(Prescale[2]), 
	.A(n1));
   OAI2BB1X1M U25 (.Y(N7), 
	.B0(n2), 
	.A1N(Prescale[2]), 
	.A0N(n1));
   OR2X1M U26 (.Y(n3), 
	.B(Prescale[3]), 
	.A(n2));
   OAI2BB1X1M U27 (.Y(N8), 
	.B0(n3), 
	.A1N(Prescale[3]), 
	.A0N(n2));
   OR2X1M U28 (.Y(n4), 
	.B(Prescale[4]), 
	.A(n3));
   OAI2BB1X1M U29 (.Y(N9), 
	.B0(n4), 
	.A1N(Prescale[4]), 
	.A0N(n3));
   NOR2X1M U30 (.Y(N11), 
	.B(Prescale[5]), 
	.A(n4));
   AO21XLM U31 (.Y(N10), 
	.B0(N11), 
	.A1(Prescale[5]), 
	.A0(n4));
   NOR2BX1M U32 (.Y(n20), 
	.B(edge_counter_out[0]), 
	.AN(N5));
   OAI2B2X1M U33 (.Y(n33), 
	.B1(n20), 
	.B0(N6), 
	.A1N(edge_counter_out[1]), 
	.A0(n20));
   XNOR2X1M U34 (.Y(n32), 
	.B(edge_counter_out[5]), 
	.A(N10));
   NOR2BX1M U35 (.Y(n30), 
	.B(N5), 
	.AN(edge_counter_out[0]));
   OAI2B2X1M U36 (.Y(n31), 
	.B1(n30), 
	.B0(edge_counter_out[1]), 
	.A1N(N6), 
	.A0(n30));
   NAND4BX1M U37 (.Y(n37), 
	.D(n31), 
	.C(n32), 
	.B(n33), 
	.AN(N11));
   CLKXOR2X2M U38 (.Y(n36), 
	.B(edge_counter_out[4]), 
	.A(N9));
   CLKXOR2X2M U39 (.Y(n35), 
	.B(edge_counter_out[2]), 
	.A(N7));
   CLKXOR2X2M U40 (.Y(n34), 
	.B(edge_counter_out[3]), 
	.A(N8));
   NOR4X1M U41 (.Y(N12), 
	.D(n34), 
	.C(n35), 
	.B(n36), 
	.A(n37));
endmodule

module parity_checker_test_1 (
	parity_checker_en, 
	PAR_TYP, 
	P_DATA, 
	CLK, 
	RST, 
	parity_checker_out, 
	test_si, 
	test_se);
   input parity_checker_en;
   input PAR_TYP;
   input [7:0] P_DATA;
   input CLK;
   input RST;
   output parity_checker_out;
   input test_si;
   input test_se;

   // Internal wires
   wire N10;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;

   SDFFRQX2M parity_checker_out_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(parity_checker_out), 
	.D(N10), 
	.CK(CLK));
   XNOR2X2M U4 (.Y(n6), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
   XNOR2X2M U5 (.Y(n5), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
   AND2X2M U6 (.Y(N10), 
	.B(n2), 
	.A(parity_checker_en));
   XOR3XLM U7 (.Y(n2), 
	.C(n4), 
	.B(n3), 
	.A(PAR_TYP));
   XOR3XLM U8 (.Y(n4), 
	.C(n5), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
   XOR3XLM U9 (.Y(n3), 
	.C(n6), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
endmodule

module edge_bit_counter_test_1 (
	bit_counter_en, 
	Prescale, 
	CLK, 
	RST, 
	bit_counter_out, 
	edge_counter_out, 
	test_si, 
	test_se, 
	RX_MUXED_CLK__L4_N1);
   input bit_counter_en;
   input [5:0] Prescale;
   input CLK;
   input RST;
   output [3:0] bit_counter_out;
   output [5:0] edge_counter_out;
   input test_si;
   input test_se;
   input RX_MUXED_CLK__L4_N1;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire N5;
   wire N6;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N30;
   wire N31;
   wire N32;
   wire N33;
   wire N34;
   wire N35;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire \add_40/carry[5] ;
   wire \add_40/carry[4] ;
   wire \add_40/carry[3] ;
   wire \add_40/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n14;
   wire n15;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;

   assign bit_counter_out[3] = 1'b0 ;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M \bit_counter_out_reg[2]  (.SI(bit_counter_out[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_counter_out[2]), 
	.D(n20), 
	.CK(CLK));
   SDFFRQX2M \bit_counter_out_reg[1]  (.SI(bit_counter_out[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_counter_out[1]), 
	.D(n21), 
	.CK(RX_MUXED_CLK__L4_N1));
   SDFFRQX2M \bit_counter_out_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_counter_out[0]), 
	.D(n22), 
	.CK(RX_MUXED_CLK__L4_N1));
   SDFFRQX2M \edge_counter_out_reg[5]  (.SI(edge_counter_out[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_counter_out[5]), 
	.D(N35), 
	.CK(CLK));
   SDFFRQX2M \edge_counter_out_reg[3]  (.SI(edge_counter_out[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_counter_out[3]), 
	.D(N33), 
	.CK(CLK));
   SDFFRQX2M \edge_counter_out_reg[2]  (.SI(edge_counter_out[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_counter_out[2]), 
	.D(N32), 
	.CK(CLK));
   SDFFRQX2M \edge_counter_out_reg[4]  (.SI(edge_counter_out[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_counter_out[4]), 
	.D(N34), 
	.CK(CLK));
   SDFFRQX2M \edge_counter_out_reg[1]  (.SI(edge_counter_out[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_counter_out[1]), 
	.D(N31), 
	.CK(CLK));
   SDFFRQX2M \edge_counter_out_reg[0]  (.SI(bit_counter_out[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_counter_out[0]), 
	.D(N30), 
	.CK(CLK));
   NAND2X2M U6 (.Y(n19), 
	.B(N12), 
	.A(bit_counter_en));
   NOR2BXLM U7 (.Y(N31), 
	.B(N12), 
	.AN(N25));
   NOR2BXLM U15 (.Y(N32), 
	.B(N12), 
	.AN(N26));
   NOR2BXLM U16 (.Y(N33), 
	.B(N12), 
	.AN(N27));
   NOR2BXLM U17 (.Y(N34), 
	.B(N12), 
	.AN(N28));
   OAI32X1M U18 (.Y(n20), 
	.B1(n32), 
	.B0(n16), 
	.A2(n31), 
	.A1(bit_counter_out[2]), 
	.A0(n17));
   INVX2M U19 (.Y(n32), 
	.A(bit_counter_out[2]));
   NOR2BX2M U20 (.Y(n16), 
	.B(n31), 
	.AN(n18));
   XNOR2X2M U21 (.Y(n22), 
	.B(n19), 
	.A(bit_counter_out[0]));
   NOR2BX2M U22 (.Y(n18), 
	.B(n19), 
	.AN(bit_counter_out[0]));
   OAI22X1M U23 (.Y(n21), 
	.B1(n17), 
	.B0(bit_counter_out[1]), 
	.A1(n31), 
	.A0(n18));
   NAND2BX2M U24 (.Y(n17), 
	.B(bit_counter_out[0]), 
	.AN(n19));
   NOR2X2M U25 (.Y(N35), 
	.B(N12), 
	.A(n1));
   XNOR2X2M U26 (.Y(n1), 
	.B(edge_counter_out[5]), 
	.A(\add_40/carry[5] ));
   NOR2X2M U27 (.Y(N30), 
	.B(N12), 
	.A(edge_counter_out[0]));
   INVX2M U28 (.Y(n31), 
	.A(bit_counter_out[1]));
   ADDHX1M U29 (.S(N25), 
	.CO(\add_40/carry[2] ), 
	.B(edge_counter_out[0]), 
	.A(edge_counter_out[1]));
   ADDHX1M U30 (.S(N26), 
	.CO(\add_40/carry[3] ), 
	.B(\add_40/carry[2] ), 
	.A(edge_counter_out[2]));
   ADDHX1M U31 (.S(N27), 
	.CO(\add_40/carry[4] ), 
	.B(\add_40/carry[3] ), 
	.A(edge_counter_out[3]));
   ADDHX1M U32 (.S(N28), 
	.CO(\add_40/carry[5] ), 
	.B(\add_40/carry[4] ), 
	.A(edge_counter_out[4]));
   INVX2M U33 (.Y(N5), 
	.A(LTIE_LTIELO_NET));
   NAND2BX1M U34 (.Y(n2), 
	.B(N5), 
	.AN(LTIE_LTIELO_NET));
   OAI2BB1X1M U35 (.Y(N6), 
	.B0(n2), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(LTIE_LTIELO_NET));
   OR2X1M U36 (.Y(n3), 
	.B(Prescale[2]), 
	.A(n2));
   OAI2BB1X1M U37 (.Y(N7), 
	.B0(n3), 
	.A1N(Prescale[2]), 
	.A0N(n2));
   OR2X1M U38 (.Y(n4), 
	.B(Prescale[3]), 
	.A(n3));
   OAI2BB1X1M U39 (.Y(N8), 
	.B0(n4), 
	.A1N(Prescale[3]), 
	.A0N(n3));
   OR2X1M U40 (.Y(n14), 
	.B(Prescale[4]), 
	.A(n4));
   OAI2BB1X1M U41 (.Y(N9), 
	.B0(n14), 
	.A1N(Prescale[4]), 
	.A0N(n4));
   NOR2X1M U42 (.Y(N11), 
	.B(Prescale[5]), 
	.A(n14));
   AO21XLM U43 (.Y(N10), 
	.B0(N11), 
	.A1(Prescale[5]), 
	.A0(n14));
   NOR2BX1M U44 (.Y(n15), 
	.B(edge_counter_out[0]), 
	.AN(N5));
   OAI2B2X1M U45 (.Y(n26), 
	.B1(n15), 
	.B0(N6), 
	.A1N(edge_counter_out[1]), 
	.A0(n15));
   XNOR2X1M U46 (.Y(n25), 
	.B(edge_counter_out[5]), 
	.A(N10));
   NOR2BX1M U47 (.Y(n23), 
	.B(N5), 
	.AN(edge_counter_out[0]));
   OAI2B2X1M U48 (.Y(n24), 
	.B1(n23), 
	.B0(edge_counter_out[1]), 
	.A1N(N6), 
	.A0(n23));
   NAND4BX1M U49 (.Y(n30), 
	.D(n24), 
	.C(n25), 
	.B(n26), 
	.AN(N11));
   CLKXOR2X2M U50 (.Y(n29), 
	.B(edge_counter_out[4]), 
	.A(N9));
   CLKXOR2X2M U51 (.Y(n28), 
	.B(edge_counter_out[2]), 
	.A(N7));
   CLKXOR2X2M U52 (.Y(n27), 
	.B(edge_counter_out[3]), 
	.A(N8));
   NOR4X1M U53 (.Y(N12), 
	.D(n27), 
	.C(n28), 
	.B(n29), 
	.A(n30));
endmodule

module sampler_test_1 (
	RX_IN, 
	Prescale, 
	sampler_en, 
	edge_counter_out, 
	CLK, 
	RST, 
	sampler_out, 
	test_si, 
	test_so, 
	test_se);
   input RX_IN;
   input [5:0] Prescale;
   input sampler_en;
   input [5:0] edge_counter_out;
   input CLK;
   input RST;
   output sampler_out;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire first_sample;
   wire second_sample;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;

   assign test_so = second_sample ;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M second_sample_reg (.SI(sampler_out), 
	.SE(test_se), 
	.RN(RST), 
	.Q(second_sample), 
	.D(n42), 
	.CK(CLK));
   SDFFRQX2M first_sample_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(first_sample), 
	.D(n41), 
	.CK(CLK));
   SDFFRQX2M sampler_out_reg (.SI(first_sample), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sampler_out), 
	.D(n40), 
	.CK(CLK));
   NAND4X2M U6 (.Y(n23), 
	.D(n14), 
	.C(n12), 
	.B(n13), 
	.A(Prescale[5]));
   NOR4BX1M U7 (.Y(n16), 
	.D(n26), 
	.C(n25), 
	.B(n24), 
	.AN(n23));
   INVX2M U8 (.Y(n11), 
	.A(n26));
   NOR4X1M U9 (.Y(n24), 
	.D(Prescale[5]), 
	.C(Prescale[3]), 
	.B(Prescale[2]), 
	.A(n14));
   NOR4X1M U10 (.Y(n25), 
	.D(Prescale[5]), 
	.C(Prescale[4]), 
	.B(Prescale[2]), 
	.A(n12));
   INVX2M U11 (.Y(n13), 
	.A(Prescale[2]));
   NOR4X1M U12 (.Y(n26), 
	.D(Prescale[5]), 
	.C(Prescale[4]), 
	.B(Prescale[3]), 
	.A(n13));
   INVX2M U13 (.Y(n12), 
	.A(Prescale[3]));
   INVX2M U14 (.Y(n14), 
	.A(Prescale[4]));
   NAND2X2M U15 (.Y(n36), 
	.B(n8), 
	.A(n9));
   OAI31X1M U16 (.Y(n40), 
	.B0(n18), 
	.A2(n17), 
	.A1(n16), 
	.A0(n4));
   INVX2M U17 (.Y(n4), 
	.A(n27));
   NAND2X2M U18 (.Y(n18), 
	.B(n17), 
	.A(sampler_out));
   OAI31X1M U19 (.Y(n17), 
	.B0(sampler_en), 
	.A2(LTIE_LTIELO_NET), 
	.A1(LTIE_LTIELO_NET), 
	.A0(n19));
   OAI32X1M U20 (.Y(n22), 
	.B1(n39), 
	.B0(edge_counter_out[4]), 
	.A2(n23), 
	.A1(n36), 
	.A0(n6));
   AOI33X2M U21 (.Y(n39), 
	.B2(edge_counter_out[2]), 
	.B1(n8), 
	.B0(n25), 
	.A2(edge_counter_out[3]), 
	.A1(n9), 
	.A0(n24));
   OAI21BX1M U22 (.Y(n19), 
	.B0N(n16), 
	.A1(n20), 
	.A0(edge_counter_out[5]));
   AOI33X2M U23 (.Y(n20), 
	.B2(edge_counter_out[0]), 
	.B1(n10), 
	.B0(n22), 
	.A2(edge_counter_out[1]), 
	.A1(n5), 
	.A0(n21));
   OAI2BB2X1M U24 (.Y(n41), 
	.B1(n30), 
	.B0(n15), 
	.A1N(first_sample), 
	.A0N(n30));
   OAI211X2M U25 (.Y(n30), 
	.C0(n33), 
	.B0(n6), 
	.A1(n32), 
	.A0(n31));
   NOR4X1M U26 (.Y(n31), 
	.D(n36), 
	.C(n11), 
	.B(edge_counter_out[0]), 
	.A(edge_counter_out[1]));
   NOR3X2M U27 (.Y(n32), 
	.C(n10), 
	.B(n34), 
	.A(n5));
   NOR3X2M U28 (.Y(n21), 
	.C(n36), 
	.B(edge_counter_out[4]), 
	.A(n11));
   AOI22X1M U29 (.Y(n34), 
	.B1(n7), 
	.B0(n25), 
	.A1(n35), 
	.A0(edge_counter_out[2]));
   INVX2M U30 (.Y(n7), 
	.A(n36));
   OAI2BB2X1M U31 (.Y(n35), 
	.B1(n8), 
	.B0(n23), 
	.A1N(n24), 
	.A0N(n8));
   OAI2BB2X1M U32 (.Y(n42), 
	.B1(n37), 
	.B0(n15), 
	.A1N(second_sample), 
	.A0N(n37));
   NAND3X2M U33 (.Y(n37), 
	.C(n33), 
	.B(n10), 
	.A(n38));
   AO22X1M U34 (.Y(n38), 
	.B1(edge_counter_out[0]), 
	.B0(n21), 
	.A1(n22), 
	.A0(n5));
   INVX2M U35 (.Y(n8), 
	.A(edge_counter_out[3]));
   INVX2M U36 (.Y(n9), 
	.A(edge_counter_out[2]));
   INVX2M U37 (.Y(n6), 
	.A(edge_counter_out[4]));
   NOR4BX1M U38 (.Y(n33), 
	.D(edge_counter_out[5]), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.AN(sampler_en));
   NOR3BX2M U39 (.Y(n27), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.AN(n28));
   OAI2BB1X2M U40 (.Y(n28), 
	.B0(n29), 
	.A1N(first_sample), 
	.A0N(RX_IN));
   OAI21X2M U41 (.Y(n29), 
	.B0(second_sample), 
	.A1(first_sample), 
	.A0(RX_IN));
   INVX2M U42 (.Y(n10), 
	.A(edge_counter_out[1]));
   INVX2M U43 (.Y(n5), 
	.A(edge_counter_out[0]));
   INVX2M U44 (.Y(n15), 
	.A(RX_IN));
endmodule

module uart_rx_DATA_WIDTH8_test_1 (
	RX_IN, 
	Prescale, 
	PAR_EN, 
	PAR_TYP, 
	CLK, 
	RST, 
	P_DATA, 
	data_valid, 
	parity_error, 
	stop_error, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN4_muxed_rst_sync_2, 
	RX_MUXED_CLK__L4_N1);
   input RX_IN;
   input [5:0] Prescale;
   input PAR_EN;
   input PAR_TYP;
   input CLK;
   input RST;
   output [7:0] P_DATA;
   output data_valid;
   output parity_error;
   output stop_error;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN4_muxed_rst_sync_2;
   input RX_MUXED_CLK__L4_N1;

   // Internal wires
   wire data_valid_comb;
   wire sampler_out;
   wire parity_checker_out;
   wire sampler_en;
   wire parity_checker_en;
   wire bit_counter_en;
   wire deserializer_en;
   wire deserializer_in;
   wire n6;
   wire n7;
   wire [5:0] edge_counter_out;
   wire [3:0] bit_counter_out;
   wire SYNOPSYS_UNCONNECTED__0;

   SDFFRQX2M data_valid_reg (.SI(edge_counter_out[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(data_valid), 
	.D(data_valid_comb), 
	.CK(CLK));
   Rx_FSM_test_1 fsm_inst (.RX_IN(RX_IN), 
	.sampler_out(sampler_out), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.bit_counter_out({ 1'b0,
		bit_counter_out[2],
		bit_counter_out[1],
		bit_counter_out[0] }), 
	.edge_counter_out({ edge_counter_out[5],
		edge_counter_out[4],
		edge_counter_out[3],
		edge_counter_out[2],
		edge_counter_out[1],
		edge_counter_out[0] }), 
	.parity_checker_out(parity_checker_out), 
	.PAR_EN(PAR_EN), 
	.CLK(RX_MUXED_CLK__L4_N1), 
	.RST(RST), 
	.sampler_en(sampler_en), 
	.parity_checker_en(parity_checker_en), 
	.bit_counter_en(bit_counter_en), 
	.deserializer_en(deserializer_en), 
	.deserializer_in(deserializer_in), 
	.parity_error(parity_error), 
	.stop_error(stop_error), 
	.data_valid(data_valid_comb), 
	.test_si(n7), 
	.test_so(n6), 
	.test_se(test_se));
   deserializer_test_1 deser_inst (.deserializer_en(deserializer_en), 
	.deserializer_in(deserializer_in), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.edge_counter_out({ edge_counter_out[5],
		edge_counter_out[4],
		edge_counter_out[3],
		edge_counter_out[2],
		edge_counter_out[1],
		edge_counter_out[0] }), 
	.CLK(CLK), 
	.RST(RST), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_si(data_valid), 
	.test_so(n7), 
	.test_se(test_se), 
	.FE_OFN4_muxed_rst_sync_2(FE_OFN4_muxed_rst_sync_2), 
	.RX_MUXED_CLK__L4_N1(RX_MUXED_CLK__L4_N1));
   parity_checker_test_1 par_inst (.parity_checker_en(parity_checker_en), 
	.PAR_TYP(PAR_TYP), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.CLK(RX_MUXED_CLK__L4_N1), 
	.RST(RST), 
	.parity_checker_out(parity_checker_out), 
	.test_si(n6), 
	.test_se(test_se));
   edge_bit_counter_test_1 cnt_inst (.bit_counter_en(bit_counter_en), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.CLK(CLK), 
	.RST(RST), 
	.bit_counter_out({ SYNOPSYS_UNCONNECTED__0,
		bit_counter_out[2],
		bit_counter_out[1],
		bit_counter_out[0] }), 
	.edge_counter_out({ edge_counter_out[5],
		edge_counter_out[4],
		edge_counter_out[3],
		edge_counter_out[2],
		edge_counter_out[1],
		edge_counter_out[0] }), 
	.test_si(test_si), 
	.test_se(test_se), 
	.RX_MUXED_CLK__L4_N1(RX_MUXED_CLK__L4_N1));
   sampler_test_1 samp_inst (.RX_IN(RX_IN), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.sampler_en(sampler_en), 
	.edge_counter_out({ edge_counter_out[5],
		edge_counter_out[4],
		edge_counter_out[3],
		edge_counter_out[2],
		edge_counter_out[1],
		edge_counter_out[0] }), 
	.CLK(CLK), 
	.RST(RST), 
	.sampler_out(sampler_out), 
	.test_si(parity_checker_out), 
	.test_so(test_so), 
	.test_se(test_se));
endmodule

module uart_top_DATA_WIDTH8_test_1 (
	tx_clk, 
	rx_clk, 
	RST, 
	Prescale, 
	PAR_EN, 
	PAR_TYP, 
	TX_P_DATA, 
	TX_DATA_VALID, 
	TX_OUT, 
	TX_BUSY, 
	RX_IN, 
	RX_P_DATA, 
	RX_DATA_VALID, 
	RX_PARITY_ERROR, 
	RX_STOP_ERROR, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN4_muxed_rst_sync_2, 
	RX_MUXED_CLK__L4_N1, 
	TX_MUXED_CLK__L4_N1);
   input tx_clk;
   input rx_clk;
   input RST;
   input [5:0] Prescale;
   input PAR_EN;
   input PAR_TYP;
   input [7:0] TX_P_DATA;
   input TX_DATA_VALID;
   output TX_OUT;
   output TX_BUSY;
   input RX_IN;
   output [7:0] RX_P_DATA;
   output RX_DATA_VALID;
   output RX_PARITY_ERROR;
   output RX_STOP_ERROR;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN4_muxed_rst_sync_2;
   input RX_MUXED_CLK__L4_N1;
   input TX_MUXED_CLK__L4_N1;

   // Internal wires
   wire n3;

   UART_Tx_DATA_WIDTH8_test_1 u_uart_tx (.P_DATA({ TX_P_DATA[7],
		TX_P_DATA[6],
		TX_P_DATA[5],
		TX_P_DATA[4],
		TX_P_DATA[3],
		TX_P_DATA[2],
		TX_P_DATA[1],
		TX_P_DATA[0] }), 
	.DATA_VALID(TX_DATA_VALID), 
	.PAR_EN(PAR_EN), 
	.PAR_TYP(PAR_TYP), 
	.CLK(tx_clk), 
	.RST(RST), 
	.Tx_out(TX_OUT), 
	.Busy(TX_BUSY), 
	.test_si(n3), 
	.test_so(test_so), 
	.test_se(test_se), 
	.FE_OFN4_muxed_rst_sync_2(FE_OFN4_muxed_rst_sync_2), 
	.TX_MUXED_CLK__L4_N1(TX_MUXED_CLK__L4_N1));
   uart_rx_DATA_WIDTH8_test_1 u_uart_rx (.RX_IN(RX_IN), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.PAR_EN(PAR_EN), 
	.PAR_TYP(PAR_TYP), 
	.CLK(rx_clk), 
	.RST(RST), 
	.P_DATA({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.data_valid(RX_DATA_VALID), 
	.parity_error(RX_PARITY_ERROR), 
	.stop_error(RX_STOP_ERROR), 
	.test_si(test_si), 
	.test_so(n3), 
	.test_se(test_se), 
	.FE_OFN4_muxed_rst_sync_2(FE_OFN4_muxed_rst_sync_2), 
	.RX_MUXED_CLK__L4_N1(RX_MUXED_CLK__L4_N1));
endmodule

module SOURCE_DOMAIN_PTR_WIDTH4_test_1 (
	write_enable, 
	sync_read_ptr, 
	write_clk, 
	write_rst, 
	write_addr, 
	gray_write_ptr, 
	fifo_full, 
	test_si, 
	test_so, 
	test_se, 
	REF_MUXED_CLK__L9_N11);
   input write_enable;
   input [3:0] sync_read_ptr;
   input write_clk;
   input write_rst;
   output [2:0] write_addr;
   output [3:0] gray_write_ptr;
   output fifo_full;
   input test_si;
   output test_so;
   input test_se;
   input REF_MUXED_CLK__L9_N11;

   // Internal wires
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire n11;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n1;
   wire n12;
   wire n13;

   SDFFRX1M \write_ptr_reg[3]  (.SI(write_addr[2]), 
	.SE(test_se), 
	.RN(write_rst), 
	.QN(n11), 
	.Q(test_so), 
	.D(N27), 
	.CK(REF_MUXED_CLK__L9_N11));
   SDFFRQX2M \write_ptr_reg[2]  (.SI(write_addr[1]), 
	.SE(test_se), 
	.RN(write_rst), 
	.Q(write_addr[2]), 
	.D(n32), 
	.CK(REF_MUXED_CLK__L9_N11));
   SDFFRQX2M \gray_write_ptr_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(write_rst), 
	.Q(gray_write_ptr[0]), 
	.D(N24), 
	.CK(write_clk));
   SDFFRQX2M \gray_write_ptr_reg[1]  (.SI(gray_write_ptr[0]), 
	.SE(test_se), 
	.RN(write_rst), 
	.Q(gray_write_ptr[1]), 
	.D(N25), 
	.CK(write_clk));
   SDFFRQX2M \gray_write_ptr_reg[3]  (.SI(gray_write_ptr[2]), 
	.SE(test_se), 
	.RN(write_rst), 
	.Q(gray_write_ptr[3]), 
	.D(N27), 
	.CK(write_clk));
   SDFFRQX2M \gray_write_ptr_reg[2]  (.SI(gray_write_ptr[1]), 
	.SE(test_se), 
	.RN(write_rst), 
	.Q(gray_write_ptr[2]), 
	.D(N26), 
	.CK(write_clk));
   SDFFRQX2M \write_ptr_reg[1]  (.SI(write_addr[0]), 
	.SE(test_se), 
	.RN(write_rst), 
	.Q(write_addr[1]), 
	.D(n33), 
	.CK(REF_MUXED_CLK__L9_N11));
   SDFFRQX2M \write_ptr_reg[0]  (.SI(gray_write_ptr[3]), 
	.SE(test_se), 
	.RN(write_rst), 
	.Q(write_addr[0]), 
	.D(n34), 
	.CK(REF_MUXED_CLK__L9_N11));
   INVX2M U11 (.Y(n1), 
	.A(n17));
   NAND2X2M U12 (.Y(n17), 
	.B(n19), 
	.A(write_enable));
   INVX2M U13 (.Y(fifo_full), 
	.A(n19));
   OAI22X1M U14 (.Y(n32), 
	.B1(n13), 
	.B0(n1), 
	.A1(n17), 
	.A0(n16));
   OAI22X1M U15 (.Y(N27), 
	.B1(n11), 
	.B0(n1), 
	.A1(n17), 
	.A0(n20));
   NAND4X2M U16 (.Y(n19), 
	.D(n31), 
	.C(n30), 
	.B(n29), 
	.A(n28));
   XNOR2X2M U17 (.Y(n29), 
	.B(gray_write_ptr[0]), 
	.A(sync_read_ptr[0]));
   XNOR2X2M U18 (.Y(n28), 
	.B(gray_write_ptr[1]), 
	.A(sync_read_ptr[1]));
   CLKXOR2X2M U19 (.Y(n30), 
	.B(gray_write_ptr[3]), 
	.A(sync_read_ptr[3]));
   CLKXOR2X2M U20 (.Y(n31), 
	.B(gray_write_ptr[2]), 
	.A(sync_read_ptr[2]));
   AO22X1M U21 (.Y(n33), 
	.B1(n1), 
	.B0(n18), 
	.A1(write_addr[1]), 
	.A0(n17));
   CLKXOR2X2M U22 (.Y(n34), 
	.B(n1), 
	.A(write_addr[0]));
   CLKXOR2X2M U23 (.Y(N24), 
	.B(n18), 
	.A(n27));
   NOR2X2M U24 (.Y(n27), 
	.B(n17), 
	.A(write_addr[0]));
   OAI22X1M U25 (.Y(N25), 
	.B1(n26), 
	.B0(n1), 
	.A1(n17), 
	.A0(n25));
   CLKXOR2X2M U26 (.Y(n26), 
	.B(n13), 
	.A(write_addr[1]));
   CLKXOR2X2M U27 (.Y(n25), 
	.B(n18), 
	.A(n16));
   OAI22X1M U28 (.Y(N26), 
	.B1(n22), 
	.B0(n1), 
	.A1(n17), 
	.A0(n21));
   CLKXOR2X2M U29 (.Y(n22), 
	.B(write_addr[2]), 
	.A(n11));
   CLKXOR2X2M U30 (.Y(n21), 
	.B(n12), 
	.A(n20));
   INVX2M U31 (.Y(n12), 
	.A(n16));
   NAND2X2M U32 (.Y(n24), 
	.B(write_addr[0]), 
	.A(write_addr[1]));
   CLKXOR2X2M U33 (.Y(n16), 
	.B(write_addr[2]), 
	.A(n24));
   INVX2M U34 (.Y(n13), 
	.A(write_addr[2]));
   CLKXOR2X2M U35 (.Y(n18), 
	.B(write_addr[1]), 
	.A(write_addr[0]));
   CLKXOR2X2M U36 (.Y(n20), 
	.B(n23), 
	.A(n11));
   NOR2X2M U37 (.Y(n23), 
	.B(n13), 
	.A(n24));
endmodule

module GRAY_SYNC_SYNC_STAGES2_PTR_WIDTH4_test_1 (
	gray_ptr_in, 
	dest_clk, 
	dest_rst, 
	gray_ptr_sync, 
	test_si, 
	test_so, 
	test_se);
   input [3:0] gray_ptr_in;
   input dest_clk;
   input dest_rst;
   output [3:0] gray_ptr_sync;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire \sync_chain[0][1] ;
   wire \sync_chain[0][0] ;
   wire \sync_chain[1][1] ;
   wire \sync_chain[1][0] ;
   wire \sync_chain[2][1] ;
   wire \sync_chain[2][0] ;
   wire \sync_chain[3][1] ;
   wire \sync_chain[3][0] ;

   assign test_so = \sync_chain[3][1]  ;

   SDFFRQX2M \gray_ptr_sync_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(gray_ptr_sync[0]), 
	.D(\sync_chain[0][0] ), 
	.CK(dest_clk));
   SDFFRQX2M \gray_ptr_sync_reg[1]  (.SI(gray_ptr_sync[0]), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(gray_ptr_sync[1]), 
	.D(\sync_chain[1][0] ), 
	.CK(dest_clk));
   SDFFRQX2M \gray_ptr_sync_reg[2]  (.SI(gray_ptr_sync[1]), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(gray_ptr_sync[2]), 
	.D(\sync_chain[2][0] ), 
	.CK(dest_clk));
   SDFFRQX2M \gray_ptr_sync_reg[3]  (.SI(gray_ptr_sync[2]), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(gray_ptr_sync[3]), 
	.D(\sync_chain[3][0] ), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[0][1]  (.SI(\sync_chain[0][0] ), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[0][1] ), 
	.D(gray_ptr_in[0]), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[0][0]  (.SI(gray_ptr_sync[3]), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[0][0] ), 
	.D(\sync_chain[0][1] ), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[1][1]  (.SI(\sync_chain[1][0] ), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[1][1] ), 
	.D(gray_ptr_in[1]), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[1][0]  (.SI(\sync_chain[0][1] ), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[1][0] ), 
	.D(\sync_chain[1][1] ), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[2][1]  (.SI(\sync_chain[2][0] ), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[2][1] ), 
	.D(gray_ptr_in[2]), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[2][0]  (.SI(\sync_chain[1][1] ), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[2][0] ), 
	.D(\sync_chain[2][1] ), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[3][1]  (.SI(\sync_chain[3][0] ), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[3][1] ), 
	.D(gray_ptr_in[3]), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[3][0]  (.SI(\sync_chain[2][1] ), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[3][0] ), 
	.D(\sync_chain[3][1] ), 
	.CK(dest_clk));
endmodule

module DESTINATION_DOMAIN_PTR_WIDTH4_test_1 (
	read_enable, 
	sync_write_ptr, 
	read_clk, 
	read_rst, 
	read_addr, 
	gray_read_ptr, 
	fifo_empty, 
	test_si, 
	test_so, 
	test_se, 
	TX_MUXED_CLK__L4_N1);
   input read_enable;
   input [3:0] sync_write_ptr;
   input read_clk;
   input read_rst;
   output [2:0] read_addr;
   output [3:0] gray_read_ptr;
   output fifo_empty;
   input test_si;
   output test_so;
   input test_se;
   input TX_MUXED_CLK__L4_N1;

   // Internal wires
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire n11;
   wire n16;
   wire n17;
   wire n18;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n1;
   wire n12;
   wire n13;

   SDFFRQX2M \gray_read_ptr_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(read_rst), 
	.Q(gray_read_ptr[0]), 
	.D(N22), 
	.CK(read_clk));
   SDFFRQX2M \gray_read_ptr_reg[3]  (.SI(gray_read_ptr[2]), 
	.SE(test_se), 
	.RN(read_rst), 
	.Q(gray_read_ptr[3]), 
	.D(N25), 
	.CK(read_clk));
   SDFFRQX2M \gray_read_ptr_reg[2]  (.SI(gray_read_ptr[1]), 
	.SE(test_se), 
	.RN(read_rst), 
	.Q(gray_read_ptr[2]), 
	.D(N24), 
	.CK(read_clk));
   SDFFRQX2M \gray_read_ptr_reg[1]  (.SI(gray_read_ptr[0]), 
	.SE(test_se), 
	.RN(read_rst), 
	.Q(gray_read_ptr[1]), 
	.D(N23), 
	.CK(read_clk));
   SDFFRX1M \read_ptr_reg[3]  (.SI(read_addr[2]), 
	.SE(test_se), 
	.RN(read_rst), 
	.QN(n11), 
	.Q(test_so), 
	.D(N25), 
	.CK(read_clk));
   SDFFRQX2M \read_ptr_reg[0]  (.SI(gray_read_ptr[3]), 
	.SE(test_se), 
	.RN(read_rst), 
	.Q(read_addr[0]), 
	.D(n34), 
	.CK(TX_MUXED_CLK__L4_N1));
   SDFFRQX2M \read_ptr_reg[2]  (.SI(read_addr[1]), 
	.SE(test_se), 
	.RN(read_rst), 
	.Q(read_addr[2]), 
	.D(n32), 
	.CK(TX_MUXED_CLK__L4_N1));
   SDFFRQX2M \read_ptr_reg[1]  (.SI(read_addr[0]), 
	.SE(test_se), 
	.RN(read_rst), 
	.Q(read_addr[1]), 
	.D(n33), 
	.CK(TX_MUXED_CLK__L4_N1));
   INVX2M U11 (.Y(n1), 
	.A(n17));
   OAI22X1M U12 (.Y(n32), 
	.B1(n13), 
	.B0(n1), 
	.A1(n17), 
	.A0(n16));
   OAI22X1M U13 (.Y(N25), 
	.B1(n11), 
	.B0(n1), 
	.A1(n17), 
	.A0(n20));
   NAND2X2M U14 (.Y(n17), 
	.B(fifo_empty), 
	.A(read_enable));
   CLKXOR2X2M U15 (.Y(n34), 
	.B(n1), 
	.A(read_addr[0]));
   CLKXOR2X2M U16 (.Y(N22), 
	.B(n18), 
	.A(n27));
   NOR2X2M U17 (.Y(n27), 
	.B(n17), 
	.A(read_addr[0]));
   XNOR2X2M U19 (.Y(n31), 
	.B(gray_read_ptr[2]), 
	.A(sync_write_ptr[2]));
   OAI22X1M U20 (.Y(N23), 
	.B1(n26), 
	.B0(n1), 
	.A1(n17), 
	.A0(n25));
   CLKXOR2X2M U21 (.Y(n26), 
	.B(n13), 
	.A(read_addr[1]));
   CLKXOR2X2M U22 (.Y(n25), 
	.B(n18), 
	.A(n16));
   OAI22X1M U23 (.Y(N24), 
	.B1(n22), 
	.B0(n1), 
	.A1(n17), 
	.A0(n21));
   CLKXOR2X2M U24 (.Y(n22), 
	.B(read_addr[2]), 
	.A(n11));
   CLKXOR2X2M U25 (.Y(n21), 
	.B(n12), 
	.A(n20));
   INVX2M U26 (.Y(n12), 
	.A(n16));
   NAND4X2M U27 (.Y(fifo_empty), 
	.D(n31), 
	.C(n30), 
	.B(n29), 
	.A(n28));
   XNOR2X2M U28 (.Y(n29), 
	.B(gray_read_ptr[0]), 
	.A(sync_write_ptr[0]));
   XNOR2X2M U29 (.Y(n28), 
	.B(gray_read_ptr[1]), 
	.A(sync_write_ptr[1]));
   XNOR2X2M U30 (.Y(n30), 
	.B(gray_read_ptr[3]), 
	.A(sync_write_ptr[3]));
   NAND2X2M U31 (.Y(n24), 
	.B(read_addr[0]), 
	.A(read_addr[1]));
   INVX2M U32 (.Y(n13), 
	.A(read_addr[2]));
   CLKXOR2X2M U33 (.Y(n16), 
	.B(read_addr[2]), 
	.A(n24));
   CLKXOR2X2M U34 (.Y(n18), 
	.B(read_addr[1]), 
	.A(read_addr[0]));
   CLKXOR2X2M U35 (.Y(n20), 
	.B(n23), 
	.A(n11));
   NOR2X2M U36 (.Y(n23), 
	.B(n13), 
	.A(n24));
   AO22X1M U37 (.Y(n33), 
	.B1(n1), 
	.B0(n18), 
	.A1(read_addr[1]), 
	.A0(n17));
endmodule

module GRAY_SYNC_SYNC_STAGES2_PTR_WIDTH4_test_0 (
	gray_ptr_in, 
	dest_clk, 
	dest_rst, 
	gray_ptr_sync, 
	test_si, 
	test_so, 
	test_se);
   input [3:0] gray_ptr_in;
   input dest_clk;
   input dest_rst;
   output [3:0] gray_ptr_sync;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire \sync_chain[0][1] ;
   wire \sync_chain[0][0] ;
   wire \sync_chain[1][1] ;
   wire \sync_chain[1][0] ;
   wire \sync_chain[2][1] ;
   wire \sync_chain[2][0] ;
   wire \sync_chain[3][1] ;
   wire \sync_chain[3][0] ;

   assign test_so = \sync_chain[3][1]  ;

   SDFFRQX2M \gray_ptr_sync_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(gray_ptr_sync[0]), 
	.D(\sync_chain[0][0] ), 
	.CK(dest_clk));
   SDFFRQX2M \gray_ptr_sync_reg[1]  (.SI(gray_ptr_sync[0]), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(gray_ptr_sync[1]), 
	.D(\sync_chain[1][0] ), 
	.CK(dest_clk));
   SDFFRQX2M \gray_ptr_sync_reg[2]  (.SI(gray_ptr_sync[1]), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(gray_ptr_sync[2]), 
	.D(\sync_chain[2][0] ), 
	.CK(dest_clk));
   SDFFRQX2M \gray_ptr_sync_reg[3]  (.SI(gray_ptr_sync[2]), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(gray_ptr_sync[3]), 
	.D(\sync_chain[3][0] ), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[0][1]  (.SI(\sync_chain[0][0] ), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[0][1] ), 
	.D(gray_ptr_in[0]), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[0][0]  (.SI(gray_ptr_sync[3]), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[0][0] ), 
	.D(\sync_chain[0][1] ), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[1][1]  (.SI(\sync_chain[1][0] ), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[1][1] ), 
	.D(gray_ptr_in[1]), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[1][0]  (.SI(\sync_chain[0][1] ), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[1][0] ), 
	.D(\sync_chain[1][1] ), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[2][1]  (.SI(\sync_chain[2][0] ), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[2][1] ), 
	.D(gray_ptr_in[2]), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[2][0]  (.SI(\sync_chain[1][1] ), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[2][0] ), 
	.D(\sync_chain[2][1] ), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[3][1]  (.SI(\sync_chain[3][0] ), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[3][1] ), 
	.D(gray_ptr_in[3]), 
	.CK(dest_clk));
   SDFFRQX2M \sync_chain_reg[3][0]  (.SI(\sync_chain[2][1] ), 
	.SE(test_se), 
	.RN(dest_rst), 
	.Q(\sync_chain[3][0] ), 
	.D(\sync_chain[3][1] ), 
	.CK(dest_clk));
endmodule

module FIFO_BUFFER_DATA_WIDTH8_DEPTH8_test_1 (
	wr_data, 
	write_enable, 
	fifo_full, 
	write_clk, 
	write_rst, 
	write_addr, 
	read_addr, 
	rd_data, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN3_muxed_rst_sync_1, 
	REF_MUXED_CLK__L9_N12, 
	REF_MUXED_CLK__L9_N14, 
	REF_MUXED_CLK__L9_N15, 
	REF_MUXED_CLK__L9_N8);
   input [7:0] wr_data;
   input write_enable;
   input fifo_full;
   input write_clk;
   input write_rst;
   input [2:0] write_addr;
   input [2:0] read_addr;
   output [7:0] rd_data;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN3_muxed_rst_sync_1;
   input REF_MUXED_CLK__L9_N12;
   input REF_MUXED_CLK__L9_N14;
   input REF_MUXED_CLK__L9_N15;
   input REF_MUXED_CLK__L9_N8;

   // Internal wires
   wire FE_PHN4_test_si4;
   wire FE_PHN3_test_si4;
   wire FE_PHN2_test_si4;
   wire N9;
   wire N10;
   wire N11;
   wire \mem_array[0][7] ;
   wire \mem_array[0][6] ;
   wire \mem_array[0][5] ;
   wire \mem_array[0][4] ;
   wire \mem_array[0][3] ;
   wire \mem_array[0][2] ;
   wire \mem_array[0][1] ;
   wire \mem_array[0][0] ;
   wire \mem_array[1][7] ;
   wire \mem_array[1][6] ;
   wire \mem_array[1][5] ;
   wire \mem_array[1][4] ;
   wire \mem_array[1][3] ;
   wire \mem_array[1][2] ;
   wire \mem_array[1][1] ;
   wire \mem_array[1][0] ;
   wire \mem_array[2][7] ;
   wire \mem_array[2][6] ;
   wire \mem_array[2][5] ;
   wire \mem_array[2][4] ;
   wire \mem_array[2][3] ;
   wire \mem_array[2][2] ;
   wire \mem_array[2][1] ;
   wire \mem_array[2][0] ;
   wire \mem_array[3][7] ;
   wire \mem_array[3][6] ;
   wire \mem_array[3][5] ;
   wire \mem_array[3][4] ;
   wire \mem_array[3][3] ;
   wire \mem_array[3][2] ;
   wire \mem_array[3][1] ;
   wire \mem_array[3][0] ;
   wire \mem_array[4][7] ;
   wire \mem_array[4][6] ;
   wire \mem_array[4][5] ;
   wire \mem_array[4][4] ;
   wire \mem_array[4][3] ;
   wire \mem_array[4][2] ;
   wire \mem_array[4][1] ;
   wire \mem_array[4][0] ;
   wire \mem_array[5][7] ;
   wire \mem_array[5][6] ;
   wire \mem_array[5][5] ;
   wire \mem_array[5][4] ;
   wire \mem_array[5][3] ;
   wire \mem_array[5][2] ;
   wire \mem_array[5][1] ;
   wire \mem_array[5][0] ;
   wire \mem_array[6][7] ;
   wire \mem_array[6][6] ;
   wire \mem_array[6][5] ;
   wire \mem_array[6][4] ;
   wire \mem_array[6][3] ;
   wire \mem_array[6][2] ;
   wire \mem_array[6][1] ;
   wire \mem_array[6][0] ;
   wire \mem_array[7][7] ;
   wire \mem_array[7][6] ;
   wire \mem_array[7][5] ;
   wire \mem_array[7][4] ;
   wire \mem_array[7][3] ;
   wire \mem_array[7][2] ;
   wire \mem_array[7][1] ;
   wire \mem_array[7][0] ;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;

   assign N9 = read_addr[0] ;
   assign N10 = read_addr[1] ;
   assign N11 = read_addr[2] ;
   assign test_so1 = \mem_array[3][4]  ;
   assign test_so2 = \mem_array[7][7]  ;

   DLY4X1M FE_PHC4_test_si4 (.Y(FE_PHN4_test_si4), 
	.A(FE_PHN3_test_si4));
   DLY4X1M FE_PHC3_test_si4 (.Y(FE_PHN3_test_si4), 
	.A(FE_PHN2_test_si4));
   DLY4X1M FE_PHC2_test_si4 (.Y(FE_PHN2_test_si4), 
	.A(test_si2));
   SDFFRQX2M \mem_array_reg[0][7]  (.SI(\mem_array[0][6] ), 
	.SE(n210), 
	.RN(write_rst), 
	.Q(\mem_array[0][7] ), 
	.D(n149), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[0][6]  (.SI(\mem_array[0][5] ), 
	.SE(n209), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[0][6] ), 
	.D(n148), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[0][5]  (.SI(\mem_array[0][4] ), 
	.SE(n208), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[0][5] ), 
	.D(n147), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[0][4]  (.SI(\mem_array[0][3] ), 
	.SE(n207), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[0][4] ), 
	.D(n146), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[0][3]  (.SI(\mem_array[0][2] ), 
	.SE(n210), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[0][3] ), 
	.D(n145), 
	.CK(REF_MUXED_CLK__L9_N12));
   SDFFRQX2M \mem_array_reg[0][2]  (.SI(\mem_array[0][1] ), 
	.SE(n209), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[0][2] ), 
	.D(n144), 
	.CK(REF_MUXED_CLK__L9_N12));
   SDFFRQX2M \mem_array_reg[0][1]  (.SI(\mem_array[0][0] ), 
	.SE(n208), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[0][1] ), 
	.D(n143), 
	.CK(REF_MUXED_CLK__L9_N12));
   SDFFRQX2M \mem_array_reg[0][0]  (.SI(test_si1), 
	.SE(n207), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[0][0] ), 
	.D(n142), 
	.CK(REF_MUXED_CLK__L9_N12));
   SDFFRQX2M \mem_array_reg[1][7]  (.SI(\mem_array[1][6] ), 
	.SE(n210), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[1][7] ), 
	.D(n141), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[1][6]  (.SI(\mem_array[1][5] ), 
	.SE(n209), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[1][6] ), 
	.D(n140), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[1][5]  (.SI(\mem_array[1][4] ), 
	.SE(n208), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[1][5] ), 
	.D(n139), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[1][4]  (.SI(\mem_array[1][3] ), 
	.SE(n207), 
	.RN(write_rst), 
	.Q(\mem_array[1][4] ), 
	.D(n138), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[1][3]  (.SI(\mem_array[1][2] ), 
	.SE(n210), 
	.RN(write_rst), 
	.Q(\mem_array[1][3] ), 
	.D(n137), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[1][2]  (.SI(\mem_array[1][1] ), 
	.SE(n209), 
	.RN(write_rst), 
	.Q(\mem_array[1][2] ), 
	.D(n136), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[1][1]  (.SI(\mem_array[1][0] ), 
	.SE(n208), 
	.RN(write_rst), 
	.Q(\mem_array[1][1] ), 
	.D(n135), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[1][0]  (.SI(\mem_array[0][7] ), 
	.SE(n207), 
	.RN(write_rst), 
	.Q(\mem_array[1][0] ), 
	.D(n134), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[4][7]  (.SI(\mem_array[4][6] ), 
	.SE(n210), 
	.RN(write_rst), 
	.Q(\mem_array[4][7] ), 
	.D(n117), 
	.CK(write_clk));
   SDFFRQX2M \mem_array_reg[4][6]  (.SI(\mem_array[4][5] ), 
	.SE(n209), 
	.RN(write_rst), 
	.Q(\mem_array[4][6] ), 
	.D(n116), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \mem_array_reg[4][5]  (.SI(\mem_array[4][4] ), 
	.SE(n208), 
	.RN(write_rst), 
	.Q(\mem_array[4][5] ), 
	.D(n115), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \mem_array_reg[4][4]  (.SI(\mem_array[4][3] ), 
	.SE(n207), 
	.RN(write_rst), 
	.Q(\mem_array[4][4] ), 
	.D(n114), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \mem_array_reg[4][3]  (.SI(\mem_array[4][2] ), 
	.SE(n210), 
	.RN(write_rst), 
	.Q(\mem_array[4][3] ), 
	.D(n113), 
	.CK(REF_MUXED_CLK__L9_N12));
   SDFFRQX2M \mem_array_reg[4][2]  (.SI(\mem_array[4][1] ), 
	.SE(n209), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[4][2] ), 
	.D(n112), 
	.CK(REF_MUXED_CLK__L9_N12));
   SDFFRQX2M \mem_array_reg[4][1]  (.SI(\mem_array[4][0] ), 
	.SE(n208), 
	.RN(write_rst), 
	.Q(\mem_array[4][1] ), 
	.D(n111), 
	.CK(REF_MUXED_CLK__L9_N12));
   SDFFRQX2M \mem_array_reg[4][0]  (.SI(\mem_array[3][7] ), 
	.SE(n207), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[4][0] ), 
	.D(n110), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[5][7]  (.SI(\mem_array[5][6] ), 
	.SE(n210), 
	.RN(write_rst), 
	.Q(\mem_array[5][7] ), 
	.D(n109), 
	.CK(write_clk));
   SDFFRQX2M \mem_array_reg[5][6]  (.SI(\mem_array[5][5] ), 
	.SE(n209), 
	.RN(write_rst), 
	.Q(\mem_array[5][6] ), 
	.D(n108), 
	.CK(write_clk));
   SDFFRQX2M \mem_array_reg[5][5]  (.SI(\mem_array[5][4] ), 
	.SE(n208), 
	.RN(write_rst), 
	.Q(\mem_array[5][5] ), 
	.D(n107), 
	.CK(write_clk));
   SDFFRQX2M \mem_array_reg[5][4]  (.SI(\mem_array[5][3] ), 
	.SE(n207), 
	.RN(write_rst), 
	.Q(\mem_array[5][4] ), 
	.D(n106), 
	.CK(write_clk));
   SDFFRQX2M \mem_array_reg[5][3]  (.SI(\mem_array[5][2] ), 
	.SE(n210), 
	.RN(write_rst), 
	.Q(\mem_array[5][3] ), 
	.D(n105), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[5][2]  (.SI(\mem_array[5][1] ), 
	.SE(n209), 
	.RN(write_rst), 
	.Q(\mem_array[5][2] ), 
	.D(n104), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[5][1]  (.SI(\mem_array[5][0] ), 
	.SE(n208), 
	.RN(write_rst), 
	.Q(\mem_array[5][1] ), 
	.D(n103), 
	.CK(write_clk));
   SDFFRQX2M \mem_array_reg[5][0]  (.SI(\mem_array[4][7] ), 
	.SE(n207), 
	.RN(write_rst), 
	.Q(\mem_array[5][0] ), 
	.D(n102), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[6][7]  (.SI(\mem_array[6][6] ), 
	.SE(n210), 
	.RN(write_rst), 
	.Q(\mem_array[6][7] ), 
	.D(n101), 
	.CK(write_clk));
   SDFFRQX2M \mem_array_reg[6][6]  (.SI(\mem_array[6][5] ), 
	.SE(n209), 
	.RN(write_rst), 
	.Q(\mem_array[6][6] ), 
	.D(n100), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \mem_array_reg[6][5]  (.SI(\mem_array[6][4] ), 
	.SE(n208), 
	.RN(write_rst), 
	.Q(\mem_array[6][5] ), 
	.D(n99), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \mem_array_reg[6][4]  (.SI(\mem_array[6][3] ), 
	.SE(n207), 
	.RN(write_rst), 
	.Q(\mem_array[6][4] ), 
	.D(n98), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \mem_array_reg[6][3]  (.SI(\mem_array[6][2] ), 
	.SE(n210), 
	.RN(write_rst), 
	.Q(\mem_array[6][3] ), 
	.D(n97), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \mem_array_reg[6][2]  (.SI(\mem_array[6][1] ), 
	.SE(n209), 
	.RN(write_rst), 
	.Q(\mem_array[6][2] ), 
	.D(n96), 
	.CK(REF_MUXED_CLK__L9_N8));
   SDFFRQX2M \mem_array_reg[6][1]  (.SI(\mem_array[6][0] ), 
	.SE(n208), 
	.RN(write_rst), 
	.Q(\mem_array[6][1] ), 
	.D(n95), 
	.CK(write_clk));
   SDFFRQX2M \mem_array_reg[6][0]  (.SI(\mem_array[5][7] ), 
	.SE(n207), 
	.RN(write_rst), 
	.Q(\mem_array[6][0] ), 
	.D(n94), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[7][7]  (.SI(\mem_array[7][6] ), 
	.SE(n210), 
	.RN(write_rst), 
	.Q(\mem_array[7][7] ), 
	.D(n93), 
	.CK(write_clk));
   SDFFRQX2M \mem_array_reg[7][6]  (.SI(\mem_array[7][5] ), 
	.SE(n209), 
	.RN(write_rst), 
	.Q(\mem_array[7][6] ), 
	.D(n92), 
	.CK(write_clk));
   SDFFRQX2M \mem_array_reg[7][5]  (.SI(\mem_array[7][4] ), 
	.SE(n208), 
	.RN(write_rst), 
	.Q(\mem_array[7][5] ), 
	.D(n91), 
	.CK(write_clk));
   SDFFRQX2M \mem_array_reg[7][4]  (.SI(\mem_array[7][3] ), 
	.SE(n207), 
	.RN(write_rst), 
	.Q(\mem_array[7][4] ), 
	.D(n90), 
	.CK(write_clk));
   SDFFRQX2M \mem_array_reg[7][3]  (.SI(\mem_array[7][2] ), 
	.SE(n210), 
	.RN(write_rst), 
	.Q(\mem_array[7][3] ), 
	.D(n89), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[7][2]  (.SI(\mem_array[7][1] ), 
	.SE(n209), 
	.RN(write_rst), 
	.Q(\mem_array[7][2] ), 
	.D(n88), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[7][1]  (.SI(\mem_array[7][0] ), 
	.SE(n208), 
	.RN(write_rst), 
	.Q(\mem_array[7][1] ), 
	.D(n87), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[7][0]  (.SI(\mem_array[6][7] ), 
	.SE(n207), 
	.RN(write_rst), 
	.Q(\mem_array[7][0] ), 
	.D(n86), 
	.CK(write_clk));
   SDFFRQX2M \mem_array_reg[2][7]  (.SI(\mem_array[2][6] ), 
	.SE(n210), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[2][7] ), 
	.D(n133), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[2][6]  (.SI(\mem_array[2][5] ), 
	.SE(n209), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[2][6] ), 
	.D(n132), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[2][5]  (.SI(\mem_array[2][4] ), 
	.SE(n208), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[2][5] ), 
	.D(n131), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[2][4]  (.SI(\mem_array[2][3] ), 
	.SE(n207), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[2][4] ), 
	.D(n130), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[2][3]  (.SI(\mem_array[2][2] ), 
	.SE(n210), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[2][3] ), 
	.D(n129), 
	.CK(REF_MUXED_CLK__L9_N12));
   SDFFRQX2M \mem_array_reg[2][2]  (.SI(\mem_array[2][1] ), 
	.SE(n209), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[2][2] ), 
	.D(n128), 
	.CK(REF_MUXED_CLK__L9_N12));
   SDFFRQX2M \mem_array_reg[2][1]  (.SI(\mem_array[2][0] ), 
	.SE(n208), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[2][1] ), 
	.D(n127), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[2][0]  (.SI(\mem_array[1][7] ), 
	.SE(n207), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[2][0] ), 
	.D(n126), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[3][7]  (.SI(\mem_array[3][6] ), 
	.SE(n210), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[3][7] ), 
	.D(n125), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[3][6]  (.SI(\mem_array[3][5] ), 
	.SE(n209), 
	.RN(write_rst), 
	.Q(\mem_array[3][6] ), 
	.D(n124), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[3][5]  (.SI(FE_PHN4_test_si4), 
	.SE(n208), 
	.RN(write_rst), 
	.Q(\mem_array[3][5] ), 
	.D(n123), 
	.CK(REF_MUXED_CLK__L9_N14));
   SDFFRQX2M \mem_array_reg[3][4]  (.SI(\mem_array[3][3] ), 
	.SE(n207), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[3][4] ), 
	.D(n122), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[3][3]  (.SI(\mem_array[3][2] ), 
	.SE(n210), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[3][3] ), 
	.D(n121), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[3][2]  (.SI(\mem_array[3][1] ), 
	.SE(n209), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[3][2] ), 
	.D(n120), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[3][1]  (.SI(\mem_array[3][0] ), 
	.SE(n208), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[3][1] ), 
	.D(n119), 
	.CK(REF_MUXED_CLK__L9_N15));
   SDFFRQX2M \mem_array_reg[3][0]  (.SI(\mem_array[2][7] ), 
	.SE(n207), 
	.RN(FE_OFN3_muxed_rst_sync_1), 
	.Q(\mem_array[3][0] ), 
	.D(n118), 
	.CK(REF_MUXED_CLK__L9_N15));
   NOR2BX2M U78 (.Y(n80), 
	.B(fifo_full), 
	.AN(write_enable));
   NAND3X2M U81 (.Y(n79), 
	.C(n76), 
	.B(n202), 
	.A(n201));
   NAND3X2M U82 (.Y(n85), 
	.C(n82), 
	.B(n202), 
	.A(n201));
   NOR2X2M U83 (.Y(n172), 
	.B(n177), 
	.A(n176));
   NOR2X2M U84 (.Y(n169), 
	.B(N11), 
	.A(N10));
   NOR2X2M U85 (.Y(n170), 
	.B(N11), 
	.A(n177));
   INVX2M U86 (.Y(n177), 
	.A(N10));
   NOR2BX2M U87 (.Y(n82), 
	.B(write_addr[2]), 
	.AN(n80));
   INVX2M U88 (.Y(n200), 
	.A(wr_data[0]));
   INVX2M U89 (.Y(n199), 
	.A(wr_data[1]));
   INVX2M U90 (.Y(n198), 
	.A(wr_data[2]));
   INVX2M U91 (.Y(n197), 
	.A(wr_data[3]));
   INVX2M U92 (.Y(n196), 
	.A(wr_data[4]));
   INVX2M U93 (.Y(n195), 
	.A(wr_data[5]));
   INVX2M U94 (.Y(n194), 
	.A(wr_data[6]));
   INVX2M U95 (.Y(n193), 
	.A(wr_data[7]));
   NOR2X2M U96 (.Y(n173), 
	.B(N10), 
	.A(n176));
   OAI2BB2X1M U97 (.Y(n142), 
	.B1(n85), 
	.B0(n200), 
	.A1N(n85), 
	.A0N(\mem_array[0][0] ));
   OAI2BB2X1M U98 (.Y(n143), 
	.B1(n85), 
	.B0(n199), 
	.A1N(n85), 
	.A0N(\mem_array[0][1] ));
   OAI2BB2X1M U99 (.Y(n144), 
	.B1(n85), 
	.B0(n198), 
	.A1N(n85), 
	.A0N(\mem_array[0][2] ));
   OAI2BB2X1M U100 (.Y(n145), 
	.B1(n85), 
	.B0(n197), 
	.A1N(n85), 
	.A0N(\mem_array[0][3] ));
   OAI2BB2X1M U101 (.Y(n146), 
	.B1(n85), 
	.B0(n196), 
	.A1N(n85), 
	.A0N(\mem_array[0][4] ));
   OAI2BB2X1M U102 (.Y(n147), 
	.B1(n85), 
	.B0(n195), 
	.A1N(n85), 
	.A0N(\mem_array[0][5] ));
   OAI2BB2X1M U103 (.Y(n148), 
	.B1(n85), 
	.B0(n194), 
	.A1N(n85), 
	.A0N(\mem_array[0][6] ));
   OAI2BB2X1M U104 (.Y(n149), 
	.B1(n85), 
	.B0(n193), 
	.A1N(n85), 
	.A0N(\mem_array[0][7] ));
   OAI2BB2X1M U105 (.Y(n110), 
	.B1(n79), 
	.B0(n200), 
	.A1N(n79), 
	.A0N(\mem_array[4][0] ));
   OAI2BB2X1M U106 (.Y(n111), 
	.B1(n79), 
	.B0(n199), 
	.A1N(n79), 
	.A0N(\mem_array[4][1] ));
   OAI2BB2X1M U107 (.Y(n112), 
	.B1(n79), 
	.B0(n198), 
	.A1N(n79), 
	.A0N(\mem_array[4][2] ));
   OAI2BB2X1M U108 (.Y(n113), 
	.B1(n79), 
	.B0(n197), 
	.A1N(n79), 
	.A0N(\mem_array[4][3] ));
   OAI2BB2X1M U109 (.Y(n114), 
	.B1(n79), 
	.B0(n196), 
	.A1N(n79), 
	.A0N(\mem_array[4][4] ));
   OAI2BB2X1M U110 (.Y(n115), 
	.B1(n79), 
	.B0(n195), 
	.A1N(n79), 
	.A0N(\mem_array[4][5] ));
   OAI2BB2X1M U111 (.Y(n116), 
	.B1(n79), 
	.B0(n194), 
	.A1N(n79), 
	.A0N(\mem_array[4][6] ));
   OAI2BB2X1M U112 (.Y(n117), 
	.B1(n79), 
	.B0(n193), 
	.A1N(n79), 
	.A0N(\mem_array[4][7] ));
   OAI2BB2X1M U113 (.Y(n94), 
	.B1(n77), 
	.B0(n200), 
	.A1N(n77), 
	.A0N(\mem_array[6][0] ));
   OAI2BB2X1M U114 (.Y(n95), 
	.B1(n77), 
	.B0(n199), 
	.A1N(n77), 
	.A0N(\mem_array[6][1] ));
   OAI2BB2X1M U115 (.Y(n96), 
	.B1(n77), 
	.B0(n198), 
	.A1N(n77), 
	.A0N(\mem_array[6][2] ));
   OAI2BB2X1M U116 (.Y(n97), 
	.B1(n77), 
	.B0(n197), 
	.A1N(n77), 
	.A0N(\mem_array[6][3] ));
   OAI2BB2X1M U117 (.Y(n98), 
	.B1(n77), 
	.B0(n196), 
	.A1N(n77), 
	.A0N(\mem_array[6][4] ));
   OAI2BB2X1M U118 (.Y(n99), 
	.B1(n77), 
	.B0(n195), 
	.A1N(n77), 
	.A0N(\mem_array[6][5] ));
   OAI2BB2X1M U119 (.Y(n100), 
	.B1(n77), 
	.B0(n194), 
	.A1N(n77), 
	.A0N(\mem_array[6][6] ));
   OAI2BB2X1M U120 (.Y(n101), 
	.B1(n77), 
	.B0(n193), 
	.A1N(n77), 
	.A0N(\mem_array[6][7] ));
   OAI2BB2X1M U121 (.Y(n102), 
	.B1(n78), 
	.B0(n200), 
	.A1N(n78), 
	.A0N(\mem_array[5][0] ));
   OAI2BB2X1M U122 (.Y(n103), 
	.B1(n78), 
	.B0(n199), 
	.A1N(n78), 
	.A0N(\mem_array[5][1] ));
   OAI2BB2X1M U123 (.Y(n104), 
	.B1(n78), 
	.B0(n198), 
	.A1N(n78), 
	.A0N(\mem_array[5][2] ));
   OAI2BB2X1M U124 (.Y(n105), 
	.B1(n78), 
	.B0(n197), 
	.A1N(n78), 
	.A0N(\mem_array[5][3] ));
   OAI2BB2X1M U125 (.Y(n106), 
	.B1(n78), 
	.B0(n196), 
	.A1N(n78), 
	.A0N(\mem_array[5][4] ));
   OAI2BB2X1M U126 (.Y(n107), 
	.B1(n78), 
	.B0(n195), 
	.A1N(n78), 
	.A0N(\mem_array[5][5] ));
   OAI2BB2X1M U127 (.Y(n108), 
	.B1(n78), 
	.B0(n194), 
	.A1N(n78), 
	.A0N(\mem_array[5][6] ));
   OAI2BB2X1M U128 (.Y(n109), 
	.B1(n78), 
	.B0(n193), 
	.A1N(n78), 
	.A0N(\mem_array[5][7] ));
   OAI2BB2X1M U129 (.Y(n118), 
	.B1(n81), 
	.B0(n200), 
	.A1N(n81), 
	.A0N(\mem_array[3][0] ));
   OAI2BB2X1M U130 (.Y(n119), 
	.B1(n81), 
	.B0(n199), 
	.A1N(n81), 
	.A0N(\mem_array[3][1] ));
   OAI2BB2X1M U131 (.Y(n120), 
	.B1(n81), 
	.B0(n198), 
	.A1N(n81), 
	.A0N(\mem_array[3][2] ));
   OAI2BB2X1M U132 (.Y(n121), 
	.B1(n81), 
	.B0(n197), 
	.A1N(n81), 
	.A0N(\mem_array[3][3] ));
   OAI2BB2X1M U133 (.Y(n122), 
	.B1(n81), 
	.B0(n196), 
	.A1N(n81), 
	.A0N(\mem_array[3][4] ));
   OAI2BB2X1M U134 (.Y(n123), 
	.B1(n81), 
	.B0(n195), 
	.A1N(n81), 
	.A0N(\mem_array[3][5] ));
   OAI2BB2X1M U135 (.Y(n124), 
	.B1(n81), 
	.B0(n194), 
	.A1N(n81), 
	.A0N(\mem_array[3][6] ));
   OAI2BB2X1M U136 (.Y(n125), 
	.B1(n81), 
	.B0(n193), 
	.A1N(n81), 
	.A0N(\mem_array[3][7] ));
   OAI2BB2X1M U137 (.Y(n126), 
	.B1(n83), 
	.B0(n200), 
	.A1N(n83), 
	.A0N(\mem_array[2][0] ));
   OAI2BB2X1M U138 (.Y(n127), 
	.B1(n83), 
	.B0(n199), 
	.A1N(n83), 
	.A0N(\mem_array[2][1] ));
   OAI2BB2X1M U139 (.Y(n128), 
	.B1(n83), 
	.B0(n198), 
	.A1N(n83), 
	.A0N(\mem_array[2][2] ));
   OAI2BB2X1M U140 (.Y(n129), 
	.B1(n83), 
	.B0(n197), 
	.A1N(n83), 
	.A0N(\mem_array[2][3] ));
   OAI2BB2X1M U141 (.Y(n130), 
	.B1(n83), 
	.B0(n196), 
	.A1N(n83), 
	.A0N(\mem_array[2][4] ));
   OAI2BB2X1M U142 (.Y(n131), 
	.B1(n83), 
	.B0(n195), 
	.A1N(n83), 
	.A0N(\mem_array[2][5] ));
   OAI2BB2X1M U143 (.Y(n132), 
	.B1(n83), 
	.B0(n194), 
	.A1N(n83), 
	.A0N(\mem_array[2][6] ));
   OAI2BB2X1M U144 (.Y(n133), 
	.B1(n83), 
	.B0(n193), 
	.A1N(n83), 
	.A0N(\mem_array[2][7] ));
   OAI2BB2X1M U145 (.Y(n134), 
	.B1(n84), 
	.B0(n200), 
	.A1N(n84), 
	.A0N(\mem_array[1][0] ));
   OAI2BB2X1M U146 (.Y(n135), 
	.B1(n84), 
	.B0(n199), 
	.A1N(n84), 
	.A0N(\mem_array[1][1] ));
   OAI2BB2X1M U147 (.Y(n136), 
	.B1(n84), 
	.B0(n198), 
	.A1N(n84), 
	.A0N(\mem_array[1][2] ));
   OAI2BB2X1M U148 (.Y(n137), 
	.B1(n84), 
	.B0(n197), 
	.A1N(n84), 
	.A0N(\mem_array[1][3] ));
   OAI2BB2X1M U149 (.Y(n138), 
	.B1(n84), 
	.B0(n196), 
	.A1N(n84), 
	.A0N(\mem_array[1][4] ));
   OAI2BB2X1M U150 (.Y(n139), 
	.B1(n84), 
	.B0(n195), 
	.A1N(n84), 
	.A0N(\mem_array[1][5] ));
   OAI2BB2X1M U151 (.Y(n140), 
	.B1(n84), 
	.B0(n194), 
	.A1N(n84), 
	.A0N(\mem_array[1][6] ));
   OAI2BB2X1M U152 (.Y(n141), 
	.B1(n84), 
	.B0(n193), 
	.A1N(n84), 
	.A0N(\mem_array[1][7] ));
   OAI2BB2X1M U153 (.Y(n86), 
	.B1(n200), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem_array[7][0] ));
   OAI2BB2X1M U154 (.Y(n87), 
	.B1(n199), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem_array[7][1] ));
   OAI2BB2X1M U155 (.Y(n88), 
	.B1(n198), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem_array[7][2] ));
   OAI2BB2X1M U156 (.Y(n89), 
	.B1(n197), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem_array[7][3] ));
   OAI2BB2X1M U157 (.Y(n90), 
	.B1(n196), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem_array[7][4] ));
   OAI2BB2X1M U158 (.Y(n91), 
	.B1(n195), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem_array[7][5] ));
   OAI2BB2X1M U159 (.Y(n92), 
	.B1(n194), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem_array[7][6] ));
   OAI2BB2X1M U160 (.Y(n93), 
	.B1(n193), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem_array[7][7] ));
   AND2X2M U161 (.Y(n76), 
	.B(n80), 
	.A(write_addr[2]));
   NAND3X2M U162 (.Y(n78), 
	.C(write_addr[0]), 
	.B(n202), 
	.A(n76));
   NAND3X2M U163 (.Y(n81), 
	.C(n82), 
	.B(write_addr[0]), 
	.A(write_addr[1]));
   NAND3X2M U164 (.Y(n84), 
	.C(n82), 
	.B(n202), 
	.A(write_addr[0]));
   NAND3X2M U165 (.Y(n83), 
	.C(n82), 
	.B(n201), 
	.A(write_addr[1]));
   NAND3X2M U166 (.Y(n75), 
	.C(write_addr[1]), 
	.B(n76), 
	.A(write_addr[0]));
   NAND3X2M U167 (.Y(n77), 
	.C(write_addr[1]), 
	.B(n201), 
	.A(n76));
   INVX2M U168 (.Y(n176), 
	.A(N11));
   INVX2M U169 (.Y(n178), 
	.A(N9));
   INVX2M U170 (.Y(n201), 
	.A(write_addr[0]));
   INVX2M U171 (.Y(n202), 
	.A(write_addr[1]));
   AO22X1M U172 (.Y(n65), 
	.B1(n169), 
	.B0(\mem_array[1][0] ), 
	.A1(n170), 
	.A0(\mem_array[3][0] ));
   AOI221XLM U173 (.Y(n68), 
	.C0(n65), 
	.B1(n172), 
	.B0(\mem_array[7][0] ), 
	.A1(n173), 
	.A0(\mem_array[5][0] ));
   AO22X1M U174 (.Y(n66), 
	.B1(n169), 
	.B0(\mem_array[0][0] ), 
	.A1(n170), 
	.A0(\mem_array[2][0] ));
   AOI221XLM U175 (.Y(n67), 
	.C0(n66), 
	.B1(n172), 
	.B0(\mem_array[6][0] ), 
	.A1(n173), 
	.A0(\mem_array[4][0] ));
   OAI22X1M U176 (.Y(rd_data[0]), 
	.B1(n67), 
	.B0(N9), 
	.A1(n68), 
	.A0(n178));
   AO22X1M U177 (.Y(n69), 
	.B1(n169), 
	.B0(\mem_array[1][1] ), 
	.A1(n170), 
	.A0(\mem_array[3][1] ));
   AOI221XLM U178 (.Y(n72), 
	.C0(n69), 
	.B1(n172), 
	.B0(\mem_array[7][1] ), 
	.A1(n173), 
	.A0(\mem_array[5][1] ));
   AO22X1M U179 (.Y(n70), 
	.B1(n169), 
	.B0(\mem_array[0][1] ), 
	.A1(n170), 
	.A0(\mem_array[2][1] ));
   AOI221XLM U180 (.Y(n71), 
	.C0(n70), 
	.B1(n172), 
	.B0(\mem_array[6][1] ), 
	.A1(n173), 
	.A0(\mem_array[4][1] ));
   OAI22X1M U181 (.Y(rd_data[1]), 
	.B1(n71), 
	.B0(N9), 
	.A1(n72), 
	.A0(n178));
   AO22X1M U182 (.Y(n73), 
	.B1(n169), 
	.B0(\mem_array[1][2] ), 
	.A1(n170), 
	.A0(\mem_array[3][2] ));
   AOI221XLM U183 (.Y(n151), 
	.C0(n73), 
	.B1(n172), 
	.B0(\mem_array[7][2] ), 
	.A1(n173), 
	.A0(\mem_array[5][2] ));
   AO22X1M U184 (.Y(n74), 
	.B1(n169), 
	.B0(\mem_array[0][2] ), 
	.A1(n170), 
	.A0(\mem_array[2][2] ));
   AOI221XLM U185 (.Y(n150), 
	.C0(n74), 
	.B1(n172), 
	.B0(\mem_array[6][2] ), 
	.A1(n173), 
	.A0(\mem_array[4][2] ));
   OAI22X1M U186 (.Y(rd_data[2]), 
	.B1(n150), 
	.B0(N9), 
	.A1(n151), 
	.A0(n178));
   AO22X1M U187 (.Y(n152), 
	.B1(n169), 
	.B0(\mem_array[1][3] ), 
	.A1(n170), 
	.A0(\mem_array[3][3] ));
   AOI221XLM U188 (.Y(n155), 
	.C0(n152), 
	.B1(n172), 
	.B0(\mem_array[7][3] ), 
	.A1(n173), 
	.A0(\mem_array[5][3] ));
   AO22X1M U189 (.Y(n153), 
	.B1(n169), 
	.B0(\mem_array[0][3] ), 
	.A1(n170), 
	.A0(\mem_array[2][3] ));
   AOI221XLM U190 (.Y(n154), 
	.C0(n153), 
	.B1(n172), 
	.B0(\mem_array[6][3] ), 
	.A1(n173), 
	.A0(\mem_array[4][3] ));
   OAI22X1M U191 (.Y(rd_data[3]), 
	.B1(n154), 
	.B0(N9), 
	.A1(n155), 
	.A0(n178));
   AO22X1M U192 (.Y(n156), 
	.B1(n169), 
	.B0(\mem_array[1][4] ), 
	.A1(n170), 
	.A0(\mem_array[3][4] ));
   AOI221XLM U193 (.Y(n159), 
	.C0(n156), 
	.B1(n172), 
	.B0(\mem_array[7][4] ), 
	.A1(n173), 
	.A0(\mem_array[5][4] ));
   AO22X1M U194 (.Y(n157), 
	.B1(n169), 
	.B0(\mem_array[0][4] ), 
	.A1(n170), 
	.A0(\mem_array[2][4] ));
   AOI221XLM U195 (.Y(n158), 
	.C0(n157), 
	.B1(n172), 
	.B0(\mem_array[6][4] ), 
	.A1(n173), 
	.A0(\mem_array[4][4] ));
   OAI22X1M U196 (.Y(rd_data[4]), 
	.B1(n158), 
	.B0(N9), 
	.A1(n159), 
	.A0(n178));
   AO22X1M U197 (.Y(n160), 
	.B1(n169), 
	.B0(\mem_array[1][5] ), 
	.A1(n170), 
	.A0(\mem_array[3][5] ));
   AOI221XLM U198 (.Y(n163), 
	.C0(n160), 
	.B1(n172), 
	.B0(\mem_array[7][5] ), 
	.A1(n173), 
	.A0(\mem_array[5][5] ));
   AO22X1M U199 (.Y(n161), 
	.B1(n169), 
	.B0(\mem_array[0][5] ), 
	.A1(n170), 
	.A0(\mem_array[2][5] ));
   AOI221XLM U200 (.Y(n162), 
	.C0(n161), 
	.B1(n172), 
	.B0(\mem_array[6][5] ), 
	.A1(n173), 
	.A0(\mem_array[4][5] ));
   OAI22X1M U201 (.Y(rd_data[5]), 
	.B1(n162), 
	.B0(N9), 
	.A1(n163), 
	.A0(n178));
   AO22X1M U202 (.Y(n164), 
	.B1(n169), 
	.B0(\mem_array[1][6] ), 
	.A1(n170), 
	.A0(\mem_array[3][6] ));
   AOI221XLM U203 (.Y(n167), 
	.C0(n164), 
	.B1(n172), 
	.B0(\mem_array[7][6] ), 
	.A1(n173), 
	.A0(\mem_array[5][6] ));
   AO22X1M U204 (.Y(n165), 
	.B1(n169), 
	.B0(\mem_array[0][6] ), 
	.A1(n170), 
	.A0(\mem_array[2][6] ));
   AOI221XLM U205 (.Y(n166), 
	.C0(n165), 
	.B1(n172), 
	.B0(\mem_array[6][6] ), 
	.A1(n173), 
	.A0(\mem_array[4][6] ));
   OAI22X1M U206 (.Y(rd_data[6]), 
	.B1(n166), 
	.B0(N9), 
	.A1(n167), 
	.A0(n178));
   AO22X1M U207 (.Y(n168), 
	.B1(n169), 
	.B0(\mem_array[1][7] ), 
	.A1(n170), 
	.A0(\mem_array[3][7] ));
   AOI221XLM U208 (.Y(n175), 
	.C0(n168), 
	.B1(n172), 
	.B0(\mem_array[7][7] ), 
	.A1(n173), 
	.A0(\mem_array[5][7] ));
   AO22X1M U209 (.Y(n171), 
	.B1(n169), 
	.B0(\mem_array[0][7] ), 
	.A1(n170), 
	.A0(\mem_array[2][7] ));
   AOI221XLM U210 (.Y(n174), 
	.C0(n171), 
	.B1(n172), 
	.B0(\mem_array[6][7] ), 
	.A1(n173), 
	.A0(\mem_array[4][7] ));
   OAI22X1M U211 (.Y(rd_data[7]), 
	.B1(n174), 
	.B0(N9), 
	.A1(n178), 
	.A0(n175));
   INVXLM U212 (.Y(n206), 
	.A(test_se));
   CLKINVX2M U213 (.Y(n207), 
	.A(n206));
   CLKINVX2M U214 (.Y(n208), 
	.A(n206));
   CLKINVX2M U215 (.Y(n209), 
	.A(n206));
   CLKINVX2M U216 (.Y(n210), 
	.A(n206));
endmodule

module ASYNC_FIFO_DATA_WIDTH8_PTR_WIDTH4_DEPTH8_SYNC_STAGES2_test_1 (
	read_enable, 
	read_clk, 
	read_rst, 
	write_enable, 
	write_clk, 
	write_rst, 
	wr_data, 
	rd_data, 
	fifo_full, 
	fifo_empty, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN3_muxed_rst_sync_1, 
	TX_MUXED_CLK__L4_N1, 
	REF_MUXED_CLK__L9_N11, 
	REF_MUXED_CLK__L9_N12, 
	REF_MUXED_CLK__L9_N14, 
	REF_MUXED_CLK__L9_N15, 
	REF_MUXED_CLK__L9_N8);
   input read_enable;
   input read_clk;
   input read_rst;
   input write_enable;
   input write_clk;
   input write_rst;
   input [7:0] wr_data;
   output [7:0] rd_data;
   output fifo_full;
   output fifo_empty;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN3_muxed_rst_sync_1;
   input TX_MUXED_CLK__L4_N1;
   input REF_MUXED_CLK__L9_N11;
   input REF_MUXED_CLK__L9_N12;
   input REF_MUXED_CLK__L9_N14;
   input REF_MUXED_CLK__L9_N15;
   input REF_MUXED_CLK__L9_N8;

   // Internal wires
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire [3:0] gray_ptr_sync_R2W;
   wire [3:0] gray_ptr_in_W2R;
   wire [2:0] write_addr;
   wire [3:0] gray_ptr_sync_W2R;
   wire [2:0] read_addr;
   wire [3:0] gray_ptr_in_R2W;

   SOURCE_DOMAIN_PTR_WIDTH4_test_1 write_domain (.write_enable(write_enable), 
	.sync_read_ptr({ gray_ptr_sync_R2W[3],
		gray_ptr_sync_R2W[2],
		gray_ptr_sync_R2W[1],
		gray_ptr_sync_R2W[0] }), 
	.write_clk(write_clk), 
	.write_rst(write_rst), 
	.write_addr({ write_addr[2],
		write_addr[1],
		write_addr[0] }), 
	.gray_write_ptr({ gray_ptr_in_W2R[3],
		gray_ptr_in_W2R[2],
		gray_ptr_in_W2R[1],
		gray_ptr_in_W2R[0] }), 
	.fifo_full(fifo_full), 
	.test_si(n7), 
	.test_so(test_so2), 
	.test_se(test_se), 
	.REF_MUXED_CLK__L9_N11(REF_MUXED_CLK__L9_N11));
   GRAY_SYNC_SYNC_STAGES2_PTR_WIDTH4_test_1 wr_2_rd (.gray_ptr_in({ gray_ptr_in_W2R[3],
		gray_ptr_in_W2R[2],
		gray_ptr_in_W2R[1],
		gray_ptr_in_W2R[0] }), 
	.dest_clk(read_clk), 
	.dest_rst(read_rst), 
	.gray_ptr_sync({ gray_ptr_sync_W2R[3],
		gray_ptr_sync_W2R[2],
		gray_ptr_sync_W2R[1],
		gray_ptr_sync_W2R[0] }), 
	.test_si(n8), 
	.test_so(n7), 
	.test_se(test_se));
   DESTINATION_DOMAIN_PTR_WIDTH4_test_1 read_domain (.read_enable(read_enable), 
	.sync_write_ptr({ gray_ptr_sync_W2R[3],
		gray_ptr_sync_W2R[2],
		gray_ptr_sync_W2R[1],
		gray_ptr_sync_W2R[0] }), 
	.read_clk(read_clk), 
	.read_rst(read_rst), 
	.read_addr({ read_addr[2],
		read_addr[1],
		read_addr[0] }), 
	.gray_read_ptr({ gray_ptr_in_R2W[3],
		gray_ptr_in_R2W[2],
		gray_ptr_in_R2W[1],
		gray_ptr_in_R2W[0] }), 
	.fifo_empty(fifo_empty), 
	.test_si(n9), 
	.test_so(n8), 
	.test_se(test_se), 
	.TX_MUXED_CLK__L4_N1(TX_MUXED_CLK__L4_N1));
   GRAY_SYNC_SYNC_STAGES2_PTR_WIDTH4_test_0 rd_2_wr (.gray_ptr_in({ gray_ptr_in_R2W[3],
		gray_ptr_in_R2W[2],
		gray_ptr_in_R2W[1],
		gray_ptr_in_R2W[0] }), 
	.dest_clk(write_clk), 
	.dest_rst(write_rst), 
	.gray_ptr_sync({ gray_ptr_sync_R2W[3],
		gray_ptr_sync_R2W[2],
		gray_ptr_sync_R2W[1],
		gray_ptr_sync_R2W[0] }), 
	.test_si(n10), 
	.test_so(n9), 
	.test_se(test_se));
   FIFO_BUFFER_DATA_WIDTH8_DEPTH8_test_1 MEM (.wr_data({ wr_data[7],
		wr_data[6],
		wr_data[5],
		wr_data[4],
		wr_data[3],
		wr_data[2],
		wr_data[1],
		wr_data[0] }), 
	.write_enable(write_enable), 
	.fifo_full(fifo_full), 
	.write_clk(REF_MUXED_CLK__L9_N11), 
	.write_rst(write_rst), 
	.write_addr({ write_addr[2],
		write_addr[1],
		write_addr[0] }), 
	.read_addr({ read_addr[2],
		read_addr[1],
		read_addr[0] }), 
	.rd_data({ rd_data[7],
		rd_data[6],
		rd_data[5],
		rd_data[4],
		rd_data[3],
		rd_data[2],
		rd_data[1],
		rd_data[0] }), 
	.test_si2(test_si2), 
	.test_si1(test_si1), 
	.test_so2(n10), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.FE_OFN3_muxed_rst_sync_1(FE_OFN3_muxed_rst_sync_1), 
	.REF_MUXED_CLK__L9_N12(REF_MUXED_CLK__L9_N12), 
	.REF_MUXED_CLK__L9_N14(REF_MUXED_CLK__L9_N14), 
	.REF_MUXED_CLK__L9_N15(REF_MUXED_CLK__L9_N15), 
	.REF_MUXED_CLK__L9_N8(REF_MUXED_CLK__L9_N8));
endmodule

module PULSE_GEN_test_1 (
	CLK, 
	RST, 
	LVL_SIG, 
	PULSE_SIG, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input LVL_SIG;
   output PULSE_SIG;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire old_value;

   assign test_so = old_value ;

   SDFFRQX2M old_value_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(old_value), 
	.D(LVL_SIG), 
	.CK(CLK));
   NOR2BX2M U4 (.Y(PULSE_SIG), 
	.B(old_value), 
	.AN(LVL_SIG));
endmodule

