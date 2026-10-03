/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun Sep 27 05:27:30 2026
/////////////////////////////////////////////////////////////


module RESET_SYNC_STAGES2_0 ( clk, async_rst_n, sync_rst_n );
  input clk, async_rst_n;
  output sync_rst_n;
  wire   \shift_reg[0] ;

  DFFRQX2M \shift_reg_reg[1]  ( .D(\shift_reg[0] ), .CK(clk), .RN(async_rst_n), 
        .Q(sync_rst_n) );
  DFFRQX2M \shift_reg_reg[0]  ( .D(1'b1), .CK(clk), .RN(async_rst_n), .Q(
        \shift_reg[0] ) );
endmodule


module RESET_SYNC_STAGES2_3 ( clk, async_rst_n, sync_rst_n );
  input clk, async_rst_n;
  output sync_rst_n;
  wire   \shift_reg[0] ;

  DFFRQX2M \shift_reg_reg[1]  ( .D(\shift_reg[0] ), .CK(clk), .RN(async_rst_n), 
        .Q(sync_rst_n) );
  DFFRQX2M \shift_reg_reg[0]  ( .D(1'b1), .CK(clk), .RN(async_rst_n), .Q(
        \shift_reg[0] ) );
endmodule


module CLK_DIV_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLK_DIV_0_DW01_inc_1 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  ADDHX1M U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
endmodule


module CLK_DIV_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N3, t1, t2_pos, N7, N8, N9, N10, N11, N12, N13, N14, N17, N18, N19,
         N20, N21, N22, N23, N24, N36, N37, N38, N39, N40, N41, N42, N43,
         t2_neg, N58, n15, n24, n25, n26, n1, n2, n3, n5, n6, n7, n8, n9, n11,
         n12, n13, n14, n16, n17, n18, n19, n20, n21, n22, n23, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70;
  wire   [7:0] half_ratio_neg;
  wire   [7:0] cnt;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign N3 = i_div_ratio[0];

  DFFNSRHX2M t2_neg_reg ( .D(n24), .CKN(i_ref_clk), .SN(1'b1), .RN(n1), .Q(
        t2_neg) );
  CLK_DIV_0_DW01_inc_0 add_31 ( .A(cnt), .SUM({N24, N23, N22, N21, N20, N19, 
        N18, N17}) );
  CLK_DIV_0_DW01_inc_1 add_20_round ( .A({1'b0, i_div_ratio[7:1], N3}), .SUM({
        half_ratio_neg, SYNOPSYS_UNCONNECTED__0}) );
  DFFRQX2M t2_pos_reg ( .D(n26), .CK(i_ref_clk), .RN(n1), .Q(t2_pos) );
  DFFRQX2M t1_reg ( .D(n25), .CK(i_ref_clk), .RN(n1), .Q(t1) );
  DFFRQX2M \cnt_reg[6]  ( .D(N42), .CK(i_ref_clk), .RN(n1), .Q(cnt[6]) );
  DFFRQX2M \cnt_reg[5]  ( .D(N41), .CK(i_ref_clk), .RN(n1), .Q(cnt[5]) );
  DFFRQX2M \cnt_reg[4]  ( .D(N40), .CK(i_ref_clk), .RN(n1), .Q(cnt[4]) );
  DFFRQX2M \cnt_reg[3]  ( .D(N39), .CK(i_ref_clk), .RN(n1), .Q(cnt[3]) );
  DFFRQX2M \cnt_reg[2]  ( .D(N38), .CK(i_ref_clk), .RN(n1), .Q(cnt[2]) );
  DFFRQX2M \cnt_reg[1]  ( .D(N37), .CK(i_ref_clk), .RN(n1), .Q(cnt[1]) );
  DFFRQX2M \cnt_reg[7]  ( .D(N43), .CK(i_ref_clk), .RN(n1), .Q(cnt[7]) );
  DFFRQX2M \cnt_reg[0]  ( .D(N36), .CK(i_ref_clk), .RN(n1), .Q(cnt[0]) );
  NOR2X4M U4 ( .A(n6), .B(i_div_ratio[4]), .Y(n7) );
  OAI21X6M U5 ( .A0(n12), .A1(n13), .B0(n15), .Y(o_div_clk) );
  OAI21X4M U6 ( .A0(n61), .A1(n62), .B0(i_clk_en), .Y(n13) );
  OAI21X2M U7 ( .A0(n39), .A1(n40), .B0(n38), .Y(n37) );
  OAI21X8M U8 ( .A0(n59), .A1(n60), .B0(n38), .Y(n58) );
  CLKINVX2M U9 ( .A(n13), .Y(n38) );
  NOR3X2M U11 ( .A(i_div_ratio[5]), .B(i_div_ratio[7]), .C(i_div_ratio[6]), 
        .Y(n57) );
  INVX2M U12 ( .A(cnt[0]), .Y(n27) );
  INVX2M U13 ( .A(cnt[4]), .Y(n34) );
  INVX2M U14 ( .A(cnt[1]), .Y(n23) );
  INVX2M U15 ( .A(cnt[5]), .Y(n33) );
  INVX2M U16 ( .A(cnt[2]), .Y(n22) );
  INVX2M U17 ( .A(cnt[6]), .Y(n32) );
  INVX2M U18 ( .A(cnt[3]), .Y(n35) );
  MXI2XLM U19 ( .A(n36), .B(n37), .S0(t1), .Y(n25) );
  NAND2XLM U20 ( .A(n38), .B(n37), .Y(n36) );
  NOR3BX2M U21 ( .AN(i_clk_en), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .Y(n55) );
  OR2X2M U22 ( .A(n5), .B(i_div_ratio[3]), .Y(n6) );
  OR2X2M U23 ( .A(n3), .B(i_div_ratio[2]), .Y(n5) );
  OAI2BB1XLM U24 ( .A0N(n5), .A1N(i_div_ratio[3]), .B0(n6), .Y(N10) );
  INVX6M U25 ( .A(n2), .Y(n1) );
  INVX2M U26 ( .A(i_rst_n), .Y(n2) );
  OR2X2M U27 ( .A(i_div_ratio[1]), .B(N3), .Y(n3) );
  MX2X2M U28 ( .A(t2_pos), .B(t2_neg), .S0(N3), .Y(N58) );
  INVX2M U29 ( .A(i_div_ratio[5]), .Y(n11) );
  CLKINVX1M U30 ( .A(N3), .Y(N7) );
  OAI2BB1X1M U31 ( .A0N(N3), .A1N(i_div_ratio[1]), .B0(n3), .Y(N8) );
  OAI2BB1X1M U32 ( .A0N(n3), .A1N(i_div_ratio[2]), .B0(n5), .Y(N9) );
  AO21XLM U33 ( .A0(n6), .A1(i_div_ratio[4]), .B0(n7), .Y(N11) );
  CLKNAND2X2M U34 ( .A(n7), .B(n11), .Y(n8) );
  OAI21X1M U35 ( .A0(n7), .A1(n11), .B0(n8), .Y(N12) );
  XNOR2X1M U36 ( .A(i_div_ratio[6]), .B(n8), .Y(N13) );
  NOR2X1M U37 ( .A(i_div_ratio[6]), .B(n8), .Y(n9) );
  CLKXOR2X2M U38 ( .A(i_div_ratio[7]), .B(n9), .Y(N14) );
  XNOR2X1M U39 ( .A(t1), .B(N58), .Y(n12) );
  NOR2X1M U40 ( .A(n14), .B(n13), .Y(n26) );
  CLKXOR2X2M U41 ( .A(n16), .B(t2_pos), .Y(n14) );
  CLKNAND2X2M U42 ( .A(n17), .B(n18), .Y(n16) );
  NOR4X1M U43 ( .A(cnt[7]), .B(n19), .C(n20), .D(n21), .Y(n18) );
  XNOR2X1M U44 ( .A(i_div_ratio[3]), .B(n22), .Y(n21) );
  XNOR2X1M U45 ( .A(i_div_ratio[2]), .B(n23), .Y(n20) );
  XNOR2X1M U46 ( .A(i_div_ratio[1]), .B(n27), .Y(n19) );
  NOR4X1M U47 ( .A(n28), .B(n29), .C(n30), .D(n31), .Y(n17) );
  XNOR2X1M U48 ( .A(i_div_ratio[7]), .B(n32), .Y(n31) );
  XNOR2X1M U49 ( .A(i_div_ratio[6]), .B(n33), .Y(n30) );
  XNOR2X1M U50 ( .A(i_div_ratio[5]), .B(n34), .Y(n29) );
  XNOR2X1M U51 ( .A(i_div_ratio[4]), .B(n35), .Y(n28) );
  NAND4X1M U52 ( .A(n27), .B(n23), .C(n22), .D(n35), .Y(n40) );
  NAND4X1M U53 ( .A(n34), .B(n33), .C(n32), .D(n41), .Y(n39) );
  NOR2X1M U54 ( .A(n42), .B(n13), .Y(n24) );
  CLKXOR2X2M U55 ( .A(n43), .B(t2_neg), .Y(n42) );
  CLKNAND2X2M U56 ( .A(n44), .B(n45), .Y(n43) );
  NOR4X1M U57 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  XNOR2X1M U58 ( .A(half_ratio_neg[3]), .B(n35), .Y(n49) );
  XNOR2X1M U59 ( .A(half_ratio_neg[2]), .B(n22), .Y(n48) );
  XNOR2X1M U60 ( .A(half_ratio_neg[1]), .B(n23), .Y(n47) );
  XNOR2X1M U61 ( .A(half_ratio_neg[0]), .B(n27), .Y(n46) );
  NOR4X1M U62 ( .A(n50), .B(n51), .C(n52), .D(n53), .Y(n44) );
  XNOR2X1M U63 ( .A(half_ratio_neg[7]), .B(n41), .Y(n53) );
  CLKINVX1M U64 ( .A(cnt[7]), .Y(n41) );
  XNOR2X1M U65 ( .A(half_ratio_neg[6]), .B(n32), .Y(n52) );
  XNOR2X1M U66 ( .A(half_ratio_neg[5]), .B(n33), .Y(n51) );
  XNOR2X1M U67 ( .A(half_ratio_neg[4]), .B(n34), .Y(n50) );
  NAND4BX1M U68 ( .AN(n54), .B(n55), .C(n56), .D(n57), .Y(n15) );
  NOR2X1M U69 ( .A(i_div_ratio[4]), .B(i_div_ratio[3]), .Y(n56) );
  CLKNAND2X2M U70 ( .A(i_ref_clk), .B(N3), .Y(n54) );
  NOR2BX1M U71 ( .AN(N24), .B(n58), .Y(N43) );
  NOR2BX1M U72 ( .AN(N23), .B(n58), .Y(N42) );
  NOR2BX1M U73 ( .AN(N22), .B(n58), .Y(N41) );
  NOR2BX1M U74 ( .AN(N21), .B(n58), .Y(N40) );
  NOR2BX1M U75 ( .AN(N20), .B(n58), .Y(N39) );
  NOR2BX1M U76 ( .AN(N19), .B(n58), .Y(N38) );
  NOR2BX1M U77 ( .AN(N18), .B(n58), .Y(N37) );
  NOR2BX1M U78 ( .AN(N17), .B(n58), .Y(N36) );
  OR3X1M U79 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n62) );
  OR4X1M U80 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n61) );
  NAND4X1M U81 ( .A(n63), .B(n64), .C(n65), .D(n66), .Y(n60) );
  XNOR2X1M U82 ( .A(cnt[3]), .B(N10), .Y(n66) );
  XNOR2X1M U83 ( .A(cnt[4]), .B(N11), .Y(n65) );
  XNOR2X1M U84 ( .A(cnt[5]), .B(N12), .Y(n64) );
  XNOR2X1M U85 ( .A(cnt[6]), .B(N13), .Y(n63) );
  NAND4X1M U86 ( .A(n67), .B(n68), .C(n69), .D(n70), .Y(n59) );
  XNOR2X1M U87 ( .A(cnt[7]), .B(N14), .Y(n70) );
  XNOR2X1M U88 ( .A(cnt[0]), .B(N7), .Y(n69) );
  XNOR2X1M U89 ( .A(cnt[1]), .B(N8), .Y(n68) );
  XNOR2X1M U90 ( .A(cnt[2]), .B(N9), .Y(n67) );
endmodule


module CLK_DIV_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLK_DIV_1_DW01_inc_1 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  ADDHX1M U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
endmodule


module CLK_DIV_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N3, t1, t2_pos, N7, N8, N9, N10, N11, N12, N13, N14, N17, N18, N19,
         N20, N21, N22, N23, N24, N36, N37, N38, N39, N40, N41, N42, N43,
         t2_neg, N58, n1, n2, n3, n5, n6, n7, n8, n9, n11, n12, n13, n14, n16,
         n17, n18, n19, n20, n21, n22, n23, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;
  wire   [7:0] half_ratio_neg;
  wire   [7:0] cnt;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign N3 = i_div_ratio[0];

  DFFNSRHX2M t2_neg_reg ( .D(n73), .CKN(i_ref_clk), .SN(1'b1), .RN(n1), .Q(
        t2_neg) );
  CLK_DIV_1_DW01_inc_0 add_31 ( .A(cnt), .SUM({N24, N23, N22, N21, N20, N19, 
        N18, N17}) );
  CLK_DIV_1_DW01_inc_1 add_20_round ( .A({1'b0, i_div_ratio[7:1], N3}), .SUM({
        half_ratio_neg, SYNOPSYS_UNCONNECTED__0}) );
  DFFRQX2M t2_pos_reg ( .D(n71), .CK(i_ref_clk), .RN(n1), .Q(t2_pos) );
  DFFRQX2M t1_reg ( .D(n72), .CK(i_ref_clk), .RN(n1), .Q(t1) );
  DFFRQX2M \cnt_reg[6]  ( .D(N42), .CK(i_ref_clk), .RN(n1), .Q(cnt[6]) );
  DFFRQX2M \cnt_reg[5]  ( .D(N41), .CK(i_ref_clk), .RN(n1), .Q(cnt[5]) );
  DFFRQX2M \cnt_reg[4]  ( .D(N40), .CK(i_ref_clk), .RN(n1), .Q(cnt[4]) );
  DFFRQX2M \cnt_reg[3]  ( .D(N39), .CK(i_ref_clk), .RN(n1), .Q(cnt[3]) );
  DFFRQX2M \cnt_reg[2]  ( .D(N38), .CK(i_ref_clk), .RN(n1), .Q(cnt[2]) );
  DFFRQX2M \cnt_reg[1]  ( .D(N37), .CK(i_ref_clk), .RN(n1), .Q(cnt[1]) );
  DFFRQX2M \cnt_reg[7]  ( .D(N43), .CK(i_ref_clk), .RN(n1), .Q(cnt[7]) );
  DFFRQX2M \cnt_reg[0]  ( .D(N36), .CK(i_ref_clk), .RN(n1), .Q(cnt[0]) );
  OAI21X2M U4 ( .A0(n39), .A1(n40), .B0(n38), .Y(n37) );
  NOR2X4M U5 ( .A(n6), .B(i_div_ratio[4]), .Y(n7) );
  OAI21X6M U6 ( .A0(n12), .A1(n13), .B0(n74), .Y(o_div_clk) );
  OAI21X4M U7 ( .A0(n61), .A1(n62), .B0(i_clk_en), .Y(n13) );
  OAI21X8M U8 ( .A0(n59), .A1(n60), .B0(n38), .Y(n58) );
  CLKINVX2M U9 ( .A(n13), .Y(n38) );
  OR2X2M U11 ( .A(n5), .B(i_div_ratio[3]), .Y(n6) );
  OR2X2M U12 ( .A(n3), .B(i_div_ratio[2]), .Y(n5) );
  OAI2BB1XLM U13 ( .A0N(n5), .A1N(i_div_ratio[3]), .B0(n6), .Y(N10) );
  INVX2M U14 ( .A(cnt[0]), .Y(n27) );
  INVX2M U15 ( .A(cnt[4]), .Y(n34) );
  INVX2M U16 ( .A(cnt[1]), .Y(n23) );
  INVX2M U17 ( .A(cnt[5]), .Y(n33) );
  INVX2M U18 ( .A(cnt[2]), .Y(n22) );
  INVX2M U19 ( .A(cnt[6]), .Y(n32) );
  INVX2M U20 ( .A(cnt[3]), .Y(n35) );
  OAI2BB1XLM U21 ( .A0N(n3), .A1N(i_div_ratio[2]), .B0(n5), .Y(N9) );
  MXI2XLM U22 ( .A(n36), .B(n37), .S0(t1), .Y(n72) );
  NAND2XLM U23 ( .A(n38), .B(n37), .Y(n36) );
  NOR3BX2M U24 ( .AN(i_clk_en), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .Y(n55) );
  NOR3X2M U25 ( .A(i_div_ratio[5]), .B(i_div_ratio[7]), .C(i_div_ratio[6]), 
        .Y(n57) );
  OR2X2M U26 ( .A(i_div_ratio[1]), .B(N3), .Y(n3) );
  INVX6M U27 ( .A(n2), .Y(n1) );
  INVX2M U28 ( .A(i_rst_n), .Y(n2) );
  INVX2M U29 ( .A(i_div_ratio[5]), .Y(n11) );
  MX2X2M U30 ( .A(t2_pos), .B(t2_neg), .S0(N3), .Y(N58) );
  CLKINVX1M U31 ( .A(N3), .Y(N7) );
  OAI2BB1X1M U32 ( .A0N(N3), .A1N(i_div_ratio[1]), .B0(n3), .Y(N8) );
  AO21XLM U33 ( .A0(n6), .A1(i_div_ratio[4]), .B0(n7), .Y(N11) );
  CLKNAND2X2M U34 ( .A(n7), .B(n11), .Y(n8) );
  OAI21X1M U35 ( .A0(n7), .A1(n11), .B0(n8), .Y(N12) );
  XNOR2X1M U36 ( .A(i_div_ratio[6]), .B(n8), .Y(N13) );
  NOR2X1M U37 ( .A(i_div_ratio[6]), .B(n8), .Y(n9) );
  CLKXOR2X2M U38 ( .A(i_div_ratio[7]), .B(n9), .Y(N14) );
  XNOR2X1M U39 ( .A(t1), .B(N58), .Y(n12) );
  NOR2X1M U40 ( .A(n14), .B(n13), .Y(n71) );
  CLKXOR2X2M U41 ( .A(n16), .B(t2_pos), .Y(n14) );
  CLKNAND2X2M U42 ( .A(n17), .B(n18), .Y(n16) );
  NOR4X1M U43 ( .A(cnt[7]), .B(n19), .C(n20), .D(n21), .Y(n18) );
  XNOR2X1M U44 ( .A(i_div_ratio[3]), .B(n22), .Y(n21) );
  XNOR2X1M U45 ( .A(i_div_ratio[2]), .B(n23), .Y(n20) );
  XNOR2X1M U46 ( .A(i_div_ratio[1]), .B(n27), .Y(n19) );
  NOR4X1M U47 ( .A(n28), .B(n29), .C(n30), .D(n31), .Y(n17) );
  XNOR2X1M U48 ( .A(i_div_ratio[7]), .B(n32), .Y(n31) );
  XNOR2X1M U49 ( .A(i_div_ratio[6]), .B(n33), .Y(n30) );
  XNOR2X1M U50 ( .A(i_div_ratio[5]), .B(n34), .Y(n29) );
  XNOR2X1M U51 ( .A(i_div_ratio[4]), .B(n35), .Y(n28) );
  NAND4X1M U52 ( .A(n27), .B(n23), .C(n22), .D(n35), .Y(n40) );
  NAND4X1M U53 ( .A(n34), .B(n33), .C(n32), .D(n41), .Y(n39) );
  NOR2X1M U54 ( .A(n42), .B(n13), .Y(n73) );
  CLKXOR2X2M U55 ( .A(n43), .B(t2_neg), .Y(n42) );
  CLKNAND2X2M U56 ( .A(n44), .B(n45), .Y(n43) );
  NOR4X1M U57 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  XNOR2X1M U58 ( .A(half_ratio_neg[3]), .B(n35), .Y(n49) );
  XNOR2X1M U59 ( .A(half_ratio_neg[2]), .B(n22), .Y(n48) );
  XNOR2X1M U60 ( .A(half_ratio_neg[1]), .B(n23), .Y(n47) );
  XNOR2X1M U61 ( .A(half_ratio_neg[0]), .B(n27), .Y(n46) );
  NOR4X1M U62 ( .A(n50), .B(n51), .C(n52), .D(n53), .Y(n44) );
  XNOR2X1M U63 ( .A(half_ratio_neg[7]), .B(n41), .Y(n53) );
  CLKINVX1M U64 ( .A(cnt[7]), .Y(n41) );
  XNOR2X1M U65 ( .A(half_ratio_neg[6]), .B(n32), .Y(n52) );
  XNOR2X1M U66 ( .A(half_ratio_neg[5]), .B(n33), .Y(n51) );
  XNOR2X1M U67 ( .A(half_ratio_neg[4]), .B(n34), .Y(n50) );
  NAND4BX1M U68 ( .AN(n54), .B(n55), .C(n56), .D(n57), .Y(n74) );
  NOR2X1M U69 ( .A(i_div_ratio[4]), .B(i_div_ratio[3]), .Y(n56) );
  CLKNAND2X2M U70 ( .A(i_ref_clk), .B(N3), .Y(n54) );
  NOR2BX1M U71 ( .AN(N24), .B(n58), .Y(N43) );
  NOR2BX1M U72 ( .AN(N23), .B(n58), .Y(N42) );
  NOR2BX1M U73 ( .AN(N22), .B(n58), .Y(N41) );
  NOR2BX1M U74 ( .AN(N21), .B(n58), .Y(N40) );
  NOR2BX1M U75 ( .AN(N20), .B(n58), .Y(N39) );
  NOR2BX1M U76 ( .AN(N19), .B(n58), .Y(N38) );
  NOR2BX1M U77 ( .AN(N18), .B(n58), .Y(N37) );
  NOR2BX1M U78 ( .AN(N17), .B(n58), .Y(N36) );
  OR3X1M U79 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n62) );
  OR4X1M U80 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n61) );
  NAND4X1M U81 ( .A(n63), .B(n64), .C(n65), .D(n66), .Y(n60) );
  XNOR2X1M U82 ( .A(cnt[3]), .B(N10), .Y(n66) );
  XNOR2X1M U83 ( .A(cnt[4]), .B(N11), .Y(n65) );
  XNOR2X1M U84 ( .A(cnt[5]), .B(N12), .Y(n64) );
  XNOR2X1M U85 ( .A(cnt[6]), .B(N13), .Y(n63) );
  NAND4X1M U86 ( .A(n67), .B(n68), .C(n69), .D(n70), .Y(n59) );
  XNOR2X1M U87 ( .A(cnt[7]), .B(N14), .Y(n70) );
  XNOR2X1M U88 ( .A(cnt[0]), .B(N7), .Y(n69) );
  XNOR2X1M U89 ( .A(cnt[1]), .B(N8), .Y(n68) );
  XNOR2X1M U90 ( .A(cnt[2]), .B(N9), .Y(n67) );
endmodule


module SYS_CTRL ( CLK, RST, ALU_OUT, OUT_Valid, RdData, RdData_Valid, 
        RX_P_DATA, RX_D_VLD, FIFO_FULL, ALU_FUN, EN, CLK_EN, Address, WrEn, 
        RdEn, WrData, TX_P_DATA, TX_D_VLD, clk_div_en );
  input [15:0] ALU_OUT;
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_DATA;
  input CLK, RST, OUT_Valid, RdData_Valid, RX_D_VLD, FIFO_FULL;
  output EN, CLK_EN, WrEn, RdEn, TX_D_VLD, clk_div_en;
  wire   n1, n12, n15, n19, n22, n23, n24, n25, n26, n27, n29, n30, n31, n32,
         n34, n36, n38, n39, n40, n41, n44, n46, n47, n48, n49, n50, n52, n53,
         n55, n56, n57, n59, n60, n61, n62, n63, n65, n67, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n5, n6, n7, n8, n9, n10, n11, n13, n14, n16, n17, n18,
         n20, n21, n28, n33, n35, n37, n42, n45, n51, n54, n58, n64, n66, n68,
         n78, n79, n80, n81, n82, n95, n96, n97, n98, n99, n100;
  wire   [3:0] current_state;
  wire   [3:0] alu_fun_reg;

  OAI221X4M U38 ( .A0(RdData_Valid), .A1(n55), .B0(OUT_Valid), .B1(n27), .C0(
        n56), .Y(n41) );
  OAI22X8M U90 ( .A0(n37), .A1(n25), .B0(n77), .B1(n100), .Y(Address[0]) );
  DFFRQX2M \alu_fun_reg_reg[0]  ( .D(n86), .CK(CLK), .RN(n9), .Q(
        alu_fun_reg[0]) );
  DFFRQX2M \alu_fun_reg_reg[3]  ( .D(n85), .CK(CLK), .RN(n9), .Q(
        alu_fun_reg[3]) );
  DFFRQX2M \alu_fun_reg_reg[2]  ( .D(n84), .CK(CLK), .RN(n9), .Q(
        alu_fun_reg[2]) );
  DFFRQX2M \alu_fun_reg_reg[1]  ( .D(n83), .CK(CLK), .RN(n9), .Q(
        alu_fun_reg[1]) );
  DFFRX1M \addr_reg_reg[1]  ( .D(n88), .CK(CLK), .RN(n9), .QN(n99) );
  DFFRX1M \addr_reg_reg[0]  ( .D(n87), .CK(CLK), .RN(n9), .QN(n100) );
  DFFRX1M \addr_reg_reg[3]  ( .D(n90), .CK(CLK), .RN(n9), .QN(n97) );
  DFFRX1M \addr_reg_reg[2]  ( .D(n89), .CK(CLK), .RN(n9), .QN(n98) );
  DFFRQX2M \current_state_reg[3]  ( .D(n91), .CK(CLK), .RN(n9), .Q(
        current_state[3]) );
  DFFRQX4M \current_state_reg[0]  ( .D(n94), .CK(CLK), .RN(n9), .Q(
        current_state[0]) );
  DFFRQX4M \current_state_reg[1]  ( .D(n92), .CK(CLK), .RN(n9), .Q(
        current_state[1]) );
  DFFRQX4M \current_state_reg[2]  ( .D(n93), .CK(CLK), .RN(n9), .Q(
        current_state[2]) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  NOR2X4M U5 ( .A(n96), .B(current_state[2]), .Y(n61) );
  NOR2X8M U6 ( .A(n58), .B(n81), .Y(ALU_FUN[3]) );
  NOR2X8M U7 ( .A(n58), .B(n80), .Y(ALU_FUN[0]) );
  NOR2X6M U8 ( .A(n77), .B(n98), .Y(Address[2]) );
  NOR2X6M U9 ( .A(n77), .B(n99), .Y(Address[1]) );
  NOR2X4M U10 ( .A(n58), .B(n82), .Y(ALU_FUN[2]) );
  NOR2X4M U11 ( .A(n58), .B(n95), .Y(ALU_FUN[1]) );
  NAND2X2M U12 ( .A(n64), .B(n61), .Y(n26) );
  INVX2M U13 ( .A(n15), .Y(n35) );
  INVX2M U14 ( .A(RX_D_VLD), .Y(n37) );
  INVX2M U15 ( .A(RX_P_DATA[1]), .Y(n21) );
  INVX2M U16 ( .A(RX_P_DATA[0]), .Y(n28) );
  INVX4M U17 ( .A(n7), .Y(n8) );
  AOI21X6M U18 ( .A0(n19), .A1(n64), .B0(RdEn), .Y(n77) );
  INVX2M U19 ( .A(n40), .Y(n45) );
  INVX4M U20 ( .A(EN), .Y(n58) );
  INVX6M U21 ( .A(n26), .Y(n54) );
  NOR2X2M U22 ( .A(n8), .B(n59), .Y(TX_D_VLD) );
  INVX2M U23 ( .A(n6), .Y(WrEn) );
  INVX2M U24 ( .A(FIFO_FULL), .Y(n7) );
  INVX2M U25 ( .A(n1), .Y(n33) );
  NOR2X6M U26 ( .A(n77), .B(n97), .Y(Address[3]) );
  NAND3X2M U27 ( .A(n78), .B(n96), .C(n66), .Y(n40) );
  INVX2M U28 ( .A(n55), .Y(RdEn) );
  NAND2X4M U29 ( .A(n79), .B(n96), .Y(n34) );
  NOR2X4M U30 ( .A(n34), .B(n37), .Y(n19) );
  INVX2M U31 ( .A(n63), .Y(n64) );
  INVX4M U32 ( .A(n41), .Y(n11) );
  NOR3X4M U33 ( .A(n54), .B(n5), .C(n68), .Y(n59) );
  OAI211X4M U34 ( .A0(n34), .A1(n63), .B0(n46), .C0(n25), .Y(n60) );
  OAI211X2M U35 ( .A0(n11), .A1(n79), .B0(n36), .C0(n30), .Y(n93) );
  OAI31X2M U36 ( .A0(n44), .A1(RdEn), .A2(n51), .B0(n11), .Y(n36) );
  NOR3X2M U37 ( .A(n78), .B(n34), .C(n66), .Y(n44) );
  INVX2M U39 ( .A(n46), .Y(n51) );
  NAND3X2M U40 ( .A(n28), .B(n17), .C(n23), .Y(n30) );
  NAND3X4M U41 ( .A(n66), .B(n78), .C(n61), .Y(n12) );
  INVX6M U42 ( .A(n76), .Y(n68) );
  BUFX4M U43 ( .A(n62), .Y(n6) );
  NOR2X6M U44 ( .A(n37), .B(n12), .Y(n1) );
  NOR2X2M U45 ( .A(n28), .B(n6), .Y(WrData[0]) );
  NOR2X2M U46 ( .A(n21), .B(n6), .Y(WrData[1]) );
  NOR2X2M U47 ( .A(n20), .B(n6), .Y(WrData[2]) );
  NOR2X2M U48 ( .A(n18), .B(n6), .Y(WrData[3]) );
  NOR2X2M U49 ( .A(n13), .B(n6), .Y(WrData[7]) );
  OAI22X1M U50 ( .A0(n1), .A1(n95), .B0(n33), .B1(n21), .Y(n83) );
  OAI22X1M U51 ( .A0(n1), .A1(n82), .B0(n33), .B1(n20), .Y(n84) );
  OAI22X1M U52 ( .A0(n1), .A1(n81), .B0(n33), .B1(n18), .Y(n85) );
  OAI22X1M U53 ( .A0(n1), .A1(n80), .B0(n33), .B1(n28), .Y(n86) );
  NOR2X2M U54 ( .A(n17), .B(n62), .Y(WrData[4]) );
  NOR2X2M U55 ( .A(n14), .B(n6), .Y(WrData[6]) );
  NOR2X2M U56 ( .A(n16), .B(n6), .Y(WrData[5]) );
  OAI22X1M U57 ( .A0(n35), .A1(n100), .B0(n28), .B1(n15), .Y(n87) );
  OAI22X1M U58 ( .A0(n35), .A1(n99), .B0(n21), .B1(n15), .Y(n88) );
  OAI22X1M U59 ( .A0(n35), .A1(n98), .B0(n20), .B1(n15), .Y(n89) );
  OAI22X1M U60 ( .A0(n35), .A1(n97), .B0(n18), .B1(n15), .Y(n90) );
  INVX6M U61 ( .A(n10), .Y(n9) );
  INVX2M U62 ( .A(RST), .Y(n10) );
  INVX4M U63 ( .A(current_state[0]), .Y(n66) );
  INVX4M U64 ( .A(current_state[1]), .Y(n78) );
  NAND2X2M U65 ( .A(n45), .B(current_state[2]), .Y(n55) );
  INVX4M U66 ( .A(current_state[3]), .Y(n96) );
  NAND3X4M U67 ( .A(n61), .B(n78), .C(current_state[0]), .Y(n27) );
  INVX2M U68 ( .A(current_state[2]), .Y(n79) );
  NAND3X2M U69 ( .A(current_state[0]), .B(n61), .C(current_state[1]), .Y(n76)
         );
  NAND2X2M U70 ( .A(current_state[1]), .B(n66), .Y(n63) );
  NAND4X4M U71 ( .A(current_state[2]), .B(current_state[1]), .C(
        current_state[0]), .D(n96), .Y(n25) );
  AOI22X1M U72 ( .A0(n57), .A1(n37), .B0(n8), .B1(n42), .Y(n56) );
  NAND3BX2M U73 ( .AN(n60), .B(n34), .C(n12), .Y(n57) );
  INVX2M U74 ( .A(n59), .Y(n42) );
  NAND3X2M U75 ( .A(current_state[2]), .B(n96), .C(n64), .Y(n46) );
  OAI211X2M U76 ( .A0(n11), .A1(n78), .B0(n29), .C0(n30), .Y(n92) );
  OAI21X2M U77 ( .A0(n31), .A1(n32), .B0(n11), .Y(n29) );
  OAI31X2M U78 ( .A0(n66), .A1(current_state[1]), .A2(n34), .B0(n27), .Y(n32)
         );
  OAI21X2M U79 ( .A0(n11), .A1(n96), .B0(n22), .Y(n91) );
  AOI32X1M U80 ( .A0(n23), .A1(RX_P_DATA[0]), .A2(RX_P_DATA[4]), .B0(n11), 
        .B1(n24), .Y(n22) );
  NAND4X2M U81 ( .A(n25), .B(n26), .C(n27), .D(n12), .Y(n24) );
  AND4X2M U82 ( .A(RX_P_DATA[3]), .B(RX_P_DATA[2]), .C(n38), .D(n39), .Y(n23)
         );
  NOR3X2M U83 ( .A(RX_P_DATA[1]), .B(current_state[2]), .C(RX_P_DATA[5]), .Y(
        n38) );
  NOR4X1M U84 ( .A(n40), .B(n41), .C(n14), .D(n13), .Y(n39) );
  OAI22X1M U85 ( .A0(n11), .A1(n66), .B0(n47), .B1(n41), .Y(n94) );
  NOR4BX2M U86 ( .AN(n12), .B(RdEn), .C(n48), .D(n31), .Y(n47) );
  NOR3X2M U87 ( .A(n49), .B(RX_P_DATA[4]), .C(RX_P_DATA[0]), .Y(n48) );
  CLKBUFX6M U88 ( .A(n67), .Y(n5) );
  NOR4X2M U89 ( .A(n79), .B(n66), .C(current_state[1]), .D(current_state[3]), 
        .Y(n67) );
  NAND2X2M U91 ( .A(RX_D_VLD), .B(n60), .Y(n62) );
  INVX2M U92 ( .A(alu_fun_reg[1]), .Y(n95) );
  INVX2M U93 ( .A(alu_fun_reg[2]), .Y(n82) );
  INVX2M U94 ( .A(alu_fun_reg[3]), .Y(n81) );
  INVX2M U95 ( .A(alu_fun_reg[0]), .Y(n80) );
  NOR2X2M U96 ( .A(FIFO_FULL), .B(n75), .Y(TX_P_DATA[0]) );
  AOI222X2M U97 ( .A0(ALU_OUT[0]), .A1(n54), .B0(RdData[0]), .B1(n5), .C0(
        ALU_OUT[8]), .C1(n68), .Y(n75) );
  NOR2X2M U98 ( .A(n8), .B(n74), .Y(TX_P_DATA[1]) );
  AOI222X2M U99 ( .A0(ALU_OUT[1]), .A1(n54), .B0(RdData[1]), .B1(n5), .C0(
        ALU_OUT[9]), .C1(n68), .Y(n74) );
  NOR2X2M U100 ( .A(n8), .B(n73), .Y(TX_P_DATA[2]) );
  AOI222X2M U101 ( .A0(ALU_OUT[2]), .A1(n54), .B0(RdData[2]), .B1(n5), .C0(
        ALU_OUT[10]), .C1(n68), .Y(n73) );
  NOR2X2M U102 ( .A(n8), .B(n72), .Y(TX_P_DATA[3]) );
  AOI222X2M U103 ( .A0(ALU_OUT[3]), .A1(n54), .B0(RdData[3]), .B1(n5), .C0(
        ALU_OUT[11]), .C1(n68), .Y(n72) );
  NOR2X2M U104 ( .A(n8), .B(n71), .Y(TX_P_DATA[4]) );
  AOI222X2M U105 ( .A0(ALU_OUT[4]), .A1(n54), .B0(RdData[4]), .B1(n5), .C0(
        ALU_OUT[12]), .C1(n68), .Y(n71) );
  NOR2X2M U106 ( .A(n8), .B(n70), .Y(TX_P_DATA[5]) );
  AOI222X2M U107 ( .A0(ALU_OUT[5]), .A1(n54), .B0(RdData[5]), .B1(n5), .C0(
        ALU_OUT[13]), .C1(n68), .Y(n70) );
  NOR2X2M U108 ( .A(FIFO_FULL), .B(n69), .Y(TX_P_DATA[6]) );
  AOI222X2M U109 ( .A0(ALU_OUT[6]), .A1(n54), .B0(RdData[6]), .B1(n5), .C0(
        ALU_OUT[14]), .C1(n68), .Y(n69) );
  NOR2X2M U110 ( .A(n8), .B(n65), .Y(TX_P_DATA[7]) );
  AOI222X2M U111 ( .A0(ALU_OUT[7]), .A1(n54), .B0(RdData[7]), .B1(n5), .C0(
        ALU_OUT[15]), .C1(n68), .Y(n65) );
  OAI211X4M U112 ( .A0(n49), .A1(n50), .B0(n46), .C0(n26), .Y(n31) );
  NAND2X2M U113 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[0]), .Y(n50) );
  NAND4X2M U114 ( .A(n45), .B(RX_P_DATA[3]), .C(n52), .D(n53), .Y(n49) );
  NOR2X2M U115 ( .A(n13), .B(n16), .Y(n52) );
  NOR4X2M U116 ( .A(current_state[2]), .B(RX_P_DATA[6]), .C(RX_P_DATA[2]), .D(
        n21), .Y(n53) );
  NAND2X4M U117 ( .A(current_state[0]), .B(n19), .Y(n15) );
  INVX2M U118 ( .A(RX_P_DATA[7]), .Y(n13) );
  INVX2M U119 ( .A(RX_P_DATA[2]), .Y(n20) );
  INVX2M U120 ( .A(RX_P_DATA[4]), .Y(n17) );
  INVX2M U121 ( .A(RX_P_DATA[6]), .Y(n14) );
  INVX2M U122 ( .A(RX_P_DATA[5]), .Y(n16) );
  INVX2M U123 ( .A(RX_P_DATA[3]), .Y(n18) );
  BUFX2M U124 ( .A(EN), .Y(CLK_EN) );
  NAND3X4M U125 ( .A(n26), .B(n27), .C(n76), .Y(EN) );
endmodule


module RegisterFile_DATA_WIDTH8_DATA_DEPTH16_ADDR_WIDTH4 ( CLK, RST, Address, 
        WrEn, RdEn, WrData, RdData, RdData_Valid, REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_Valid;
  wire   N9, N10, N11, N12, n350, n351, n352, n353, \mem[4][7] , \mem[4][6] ,
         \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] , \mem[4][1] ,
         \mem[4][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] ,
         \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] ,
         \mem[8][7] , \mem[8][6] , \mem[8][5] , \mem[8][4] , \mem[8][3] ,
         \mem[8][2] , \mem[8][1] , \mem[8][0] , \mem[9][7] , \mem[9][6] ,
         \mem[9][5] , \mem[9][4] , \mem[9][3] , \mem[9][2] , \mem[9][1] ,
         \mem[9][0] , \mem[10][7] , \mem[10][6] , \mem[10][5] , \mem[10][4] ,
         \mem[10][3] , \mem[10][2] , \mem[10][1] , \mem[10][0] , \mem[11][7] ,
         \mem[11][6] , \mem[11][5] , \mem[11][4] , \mem[11][3] , \mem[11][2] ,
         \mem[11][1] , \mem[11][0] , \mem[12][7] , \mem[12][6] , \mem[12][5] ,
         \mem[12][4] , \mem[12][3] , \mem[12][2] , \mem[12][1] , \mem[12][0] ,
         \mem[13][7] , \mem[13][6] , \mem[13][5] , \mem[13][4] , \mem[13][3] ,
         \mem[13][2] , \mem[13][1] , \mem[13][0] , \mem[14][7] , \mem[14][6] ,
         \mem[14][5] , \mem[14][4] , \mem[14][3] , \mem[14][2] , \mem[14][1] ,
         \mem[14][0] , \mem[15][7] , \mem[15][6] , \mem[15][5] , \mem[15][4] ,
         \mem[15][3] , \mem[15][2] , \mem[15][1] , \mem[15][0] , N32, N33, N34,
         N35, N36, N37, N38, N39, N56, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n3, n5, n7, n8, n9, n10, n11, n12, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349;
  assign N9 = Address[0];
  assign N10 = Address[1];
  assign N11 = Address[2];
  assign N12 = Address[3];

  DFFRHQX8M \mem_reg[1][7]  ( .D(n166), .CK(CLK), .RN(n334), .Q(n350) );
  DFFRHQX8M \mem_reg[1][6]  ( .D(n165), .CK(CLK), .RN(n334), .Q(n351) );
  DFFRHQX8M \mem_reg[1][5]  ( .D(n164), .CK(CLK), .RN(n334), .Q(n352) );
  DFFRHQX8M \mem_reg[1][4]  ( .D(n163), .CK(CLK), .RN(n334), .Q(n353) );
  DFFRHQX8M \mem_reg[1][1]  ( .D(n160), .CK(CLK), .RN(n334), .Q(REG1[1]) );
  DFFRHQX8M \mem_reg[1][0]  ( .D(n159), .CK(CLK), .RN(n334), .Q(REG1[0]) );
  DFFRHQX8M \mem_reg[2][7]  ( .D(n158), .CK(CLK), .RN(n334), .Q(REG2[7]) );
  DFFRHQX8M \mem_reg[2][6]  ( .D(n157), .CK(CLK), .RN(n334), .Q(REG2[6]) );
  DFFRHQX8M \mem_reg[2][4]  ( .D(n155), .CK(CLK), .RN(n334), .Q(REG2[4]) );
  DFFRHQX8M \mem_reg[2][3]  ( .D(n154), .CK(CLK), .RN(n334), .Q(REG2[3]) );
  DFFRHQX8M \mem_reg[2][2]  ( .D(n153), .CK(CLK), .RN(n334), .Q(REG2[2]) );
  DFFRHQX8M \mem_reg[3][7]  ( .D(n150), .CK(CLK), .RN(n333), .Q(REG3[7]) );
  DFFRHQX8M \mem_reg[3][6]  ( .D(n149), .CK(CLK), .RN(n333), .Q(REG3[6]) );
  DFFRHQX8M \mem_reg[3][4]  ( .D(n147), .CK(CLK), .RN(n333), .Q(REG3[4]) );
  DFFRHQX8M \mem_reg[3][3]  ( .D(n146), .CK(CLK), .RN(n333), .Q(REG3[3]) );
  DFFRHQX8M \mem_reg[3][2]  ( .D(n145), .CK(CLK), .RN(n333), .Q(REG3[2]) );
  DFFRHQX8M \mem_reg[3][1]  ( .D(n144), .CK(CLK), .RN(n333), .Q(REG3[1]) );
  DFFRHQX8M \mem_reg[3][0]  ( .D(n143), .CK(CLK), .RN(n333), .Q(REG3[0]) );
  DFFRQX2M \RdData_reg[7]  ( .D(n46), .CK(CLK), .RN(n325), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n45), .CK(CLK), .RN(n325), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n44), .CK(CLK), .RN(n325), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n43), .CK(CLK), .RN(n325), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n42), .CK(CLK), .RN(n325), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n41), .CK(CLK), .RN(n325), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n40), .CK(CLK), .RN(n325), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n39), .CK(CLK), .RN(n330), .Q(RdData[0]) );
  DFFRQX2M RdData_Valid_reg ( .D(n292), .CK(CLK), .RN(n325), .Q(RdData_Valid)
         );
  DFFRQX2M \mem_reg[5][7]  ( .D(n134), .CK(CLK), .RN(n332), .Q(\mem[5][7] ) );
  DFFRQX2M \mem_reg[5][6]  ( .D(n133), .CK(CLK), .RN(n332), .Q(\mem[5][6] ) );
  DFFRQX2M \mem_reg[5][5]  ( .D(n132), .CK(CLK), .RN(n332), .Q(\mem[5][5] ) );
  DFFRQX2M \mem_reg[5][4]  ( .D(n131), .CK(CLK), .RN(n332), .Q(\mem[5][4] ) );
  DFFRQX2M \mem_reg[5][3]  ( .D(n130), .CK(CLK), .RN(n332), .Q(\mem[5][3] ) );
  DFFRQX2M \mem_reg[5][2]  ( .D(n129), .CK(CLK), .RN(n332), .Q(\mem[5][2] ) );
  DFFRQX2M \mem_reg[5][1]  ( .D(n128), .CK(CLK), .RN(n332), .Q(\mem[5][1] ) );
  DFFRQX2M \mem_reg[5][0]  ( .D(n127), .CK(CLK), .RN(n332), .Q(\mem[5][0] ) );
  DFFRQX2M \mem_reg[7][7]  ( .D(n118), .CK(CLK), .RN(n331), .Q(\mem[7][7] ) );
  DFFRQX2M \mem_reg[7][6]  ( .D(n117), .CK(CLK), .RN(n331), .Q(\mem[7][6] ) );
  DFFRQX2M \mem_reg[7][5]  ( .D(n116), .CK(CLK), .RN(n331), .Q(\mem[7][5] ) );
  DFFRQX2M \mem_reg[7][4]  ( .D(n115), .CK(CLK), .RN(n331), .Q(\mem[7][4] ) );
  DFFRQX2M \mem_reg[7][3]  ( .D(n114), .CK(CLK), .RN(n331), .Q(\mem[7][3] ) );
  DFFRQX2M \mem_reg[7][2]  ( .D(n113), .CK(CLK), .RN(n331), .Q(\mem[7][2] ) );
  DFFRQX2M \mem_reg[7][1]  ( .D(n112), .CK(CLK), .RN(n331), .Q(\mem[7][1] ) );
  DFFRQX2M \mem_reg[7][0]  ( .D(n111), .CK(CLK), .RN(n330), .Q(\mem[7][0] ) );
  DFFRQX2M \mem_reg[9][7]  ( .D(n102), .CK(CLK), .RN(n330), .Q(\mem[9][7] ) );
  DFFRQX2M \mem_reg[9][6]  ( .D(n101), .CK(CLK), .RN(n330), .Q(\mem[9][6] ) );
  DFFRQX2M \mem_reg[9][5]  ( .D(n100), .CK(CLK), .RN(n330), .Q(\mem[9][5] ) );
  DFFRQX2M \mem_reg[9][4]  ( .D(n99), .CK(CLK), .RN(n329), .Q(\mem[9][4] ) );
  DFFRQX2M \mem_reg[9][3]  ( .D(n98), .CK(CLK), .RN(n329), .Q(\mem[9][3] ) );
  DFFRQX2M \mem_reg[9][2]  ( .D(n97), .CK(CLK), .RN(n329), .Q(\mem[9][2] ) );
  DFFRQX2M \mem_reg[9][1]  ( .D(n96), .CK(CLK), .RN(n329), .Q(\mem[9][1] ) );
  DFFRQX2M \mem_reg[9][0]  ( .D(n95), .CK(CLK), .RN(n329), .Q(\mem[9][0] ) );
  DFFRQX2M \mem_reg[11][7]  ( .D(n86), .CK(CLK), .RN(n328), .Q(\mem[11][7] )
         );
  DFFRQX2M \mem_reg[11][6]  ( .D(n85), .CK(CLK), .RN(n328), .Q(\mem[11][6] )
         );
  DFFRQX2M \mem_reg[11][5]  ( .D(n84), .CK(CLK), .RN(n328), .Q(\mem[11][5] )
         );
  DFFRQX2M \mem_reg[11][4]  ( .D(n83), .CK(CLK), .RN(n328), .Q(\mem[11][4] )
         );
  DFFRQX2M \mem_reg[11][3]  ( .D(n82), .CK(CLK), .RN(n328), .Q(\mem[11][3] )
         );
  DFFRQX2M \mem_reg[11][2]  ( .D(n81), .CK(CLK), .RN(n328), .Q(\mem[11][2] )
         );
  DFFRQX2M \mem_reg[11][1]  ( .D(n80), .CK(CLK), .RN(n328), .Q(\mem[11][1] )
         );
  DFFRQX2M \mem_reg[11][0]  ( .D(n79), .CK(CLK), .RN(n328), .Q(\mem[11][0] )
         );
  DFFRQX2M \mem_reg[13][7]  ( .D(n70), .CK(CLK), .RN(n327), .Q(\mem[13][7] )
         );
  DFFRQX2M \mem_reg[13][6]  ( .D(n69), .CK(CLK), .RN(n327), .Q(\mem[13][6] )
         );
  DFFRQX2M \mem_reg[13][5]  ( .D(n68), .CK(CLK), .RN(n327), .Q(\mem[13][5] )
         );
  DFFRQX2M \mem_reg[13][4]  ( .D(n67), .CK(CLK), .RN(n327), .Q(\mem[13][4] )
         );
  DFFRQX2M \mem_reg[13][3]  ( .D(n66), .CK(CLK), .RN(n327), .Q(\mem[13][3] )
         );
  DFFRQX2M \mem_reg[13][2]  ( .D(n65), .CK(CLK), .RN(n327), .Q(\mem[13][2] )
         );
  DFFRQX2M \mem_reg[13][1]  ( .D(n64), .CK(CLK), .RN(n327), .Q(\mem[13][1] )
         );
  DFFRQX2M \mem_reg[13][0]  ( .D(n63), .CK(CLK), .RN(n327), .Q(\mem[13][0] )
         );
  DFFRQX2M \mem_reg[15][7]  ( .D(n54), .CK(CLK), .RN(n326), .Q(\mem[15][7] )
         );
  DFFRQX2M \mem_reg[15][6]  ( .D(n53), .CK(CLK), .RN(n326), .Q(\mem[15][6] )
         );
  DFFRQX2M \mem_reg[15][5]  ( .D(n52), .CK(CLK), .RN(n326), .Q(\mem[15][5] )
         );
  DFFRQX2M \mem_reg[15][4]  ( .D(n51), .CK(CLK), .RN(n326), .Q(\mem[15][4] )
         );
  DFFRQX2M \mem_reg[15][3]  ( .D(n50), .CK(CLK), .RN(n326), .Q(\mem[15][3] )
         );
  DFFRQX2M \mem_reg[15][2]  ( .D(n49), .CK(CLK), .RN(n326), .Q(\mem[15][2] )
         );
  DFFRQX2M \mem_reg[15][1]  ( .D(n48), .CK(CLK), .RN(n325), .Q(\mem[15][1] )
         );
  DFFRQX2M \mem_reg[15][0]  ( .D(n47), .CK(CLK), .RN(n326), .Q(\mem[15][0] )
         );
  DFFRQX2M \mem_reg[4][7]  ( .D(n142), .CK(CLK), .RN(n333), .Q(\mem[4][7] ) );
  DFFRQX2M \mem_reg[4][6]  ( .D(n141), .CK(CLK), .RN(n333), .Q(\mem[4][6] ) );
  DFFRQX2M \mem_reg[4][5]  ( .D(n140), .CK(CLK), .RN(n333), .Q(\mem[4][5] ) );
  DFFRQX2M \mem_reg[4][4]  ( .D(n139), .CK(CLK), .RN(n333), .Q(\mem[4][4] ) );
  DFFRQX2M \mem_reg[4][3]  ( .D(n138), .CK(CLK), .RN(n333), .Q(\mem[4][3] ) );
  DFFRQX2M \mem_reg[4][2]  ( .D(n137), .CK(CLK), .RN(n332), .Q(\mem[4][2] ) );
  DFFRQX2M \mem_reg[4][1]  ( .D(n136), .CK(CLK), .RN(n332), .Q(\mem[4][1] ) );
  DFFRQX2M \mem_reg[4][0]  ( .D(n135), .CK(CLK), .RN(n332), .Q(\mem[4][0] ) );
  DFFRQX2M \mem_reg[6][7]  ( .D(n126), .CK(CLK), .RN(n332), .Q(\mem[6][7] ) );
  DFFRQX2M \mem_reg[6][6]  ( .D(n125), .CK(CLK), .RN(n332), .Q(\mem[6][6] ) );
  DFFRQX2M \mem_reg[6][5]  ( .D(n124), .CK(CLK), .RN(n331), .Q(\mem[6][5] ) );
  DFFRQX2M \mem_reg[6][4]  ( .D(n123), .CK(CLK), .RN(n331), .Q(\mem[6][4] ) );
  DFFRQX2M \mem_reg[6][3]  ( .D(n122), .CK(CLK), .RN(n331), .Q(\mem[6][3] ) );
  DFFRQX2M \mem_reg[6][2]  ( .D(n121), .CK(CLK), .RN(n331), .Q(\mem[6][2] ) );
  DFFRQX2M \mem_reg[6][1]  ( .D(n120), .CK(CLK), .RN(n331), .Q(\mem[6][1] ) );
  DFFRQX2M \mem_reg[6][0]  ( .D(n119), .CK(CLK), .RN(n331), .Q(\mem[6][0] ) );
  DFFRQX2M \mem_reg[8][7]  ( .D(n110), .CK(CLK), .RN(n330), .Q(\mem[8][7] ) );
  DFFRQX2M \mem_reg[8][6]  ( .D(n109), .CK(CLK), .RN(n330), .Q(\mem[8][6] ) );
  DFFRQX2M \mem_reg[8][5]  ( .D(n108), .CK(CLK), .RN(n330), .Q(\mem[8][5] ) );
  DFFRQX2M \mem_reg[8][4]  ( .D(n107), .CK(CLK), .RN(n330), .Q(\mem[8][4] ) );
  DFFRQX2M \mem_reg[8][3]  ( .D(n106), .CK(CLK), .RN(n330), .Q(\mem[8][3] ) );
  DFFRQX2M \mem_reg[8][2]  ( .D(n105), .CK(CLK), .RN(n330), .Q(\mem[8][2] ) );
  DFFRQX2M \mem_reg[8][1]  ( .D(n104), .CK(CLK), .RN(n330), .Q(\mem[8][1] ) );
  DFFRQX2M \mem_reg[8][0]  ( .D(n103), .CK(CLK), .RN(n330), .Q(\mem[8][0] ) );
  DFFRQX2M \mem_reg[10][7]  ( .D(n94), .CK(CLK), .RN(n329), .Q(\mem[10][7] )
         );
  DFFRQX2M \mem_reg[10][6]  ( .D(n93), .CK(CLK), .RN(n329), .Q(\mem[10][6] )
         );
  DFFRQX2M \mem_reg[10][5]  ( .D(n92), .CK(CLK), .RN(n329), .Q(\mem[10][5] )
         );
  DFFRQX2M \mem_reg[10][4]  ( .D(n91), .CK(CLK), .RN(n329), .Q(\mem[10][4] )
         );
  DFFRQX2M \mem_reg[10][3]  ( .D(n90), .CK(CLK), .RN(n329), .Q(\mem[10][3] )
         );
  DFFRQX2M \mem_reg[10][2]  ( .D(n89), .CK(CLK), .RN(n329), .Q(\mem[10][2] )
         );
  DFFRQX2M \mem_reg[10][1]  ( .D(n88), .CK(CLK), .RN(n329), .Q(\mem[10][1] )
         );
  DFFRQX2M \mem_reg[10][0]  ( .D(n87), .CK(CLK), .RN(n329), .Q(\mem[10][0] )
         );
  DFFRQX2M \mem_reg[12][7]  ( .D(n78), .CK(CLK), .RN(n328), .Q(\mem[12][7] )
         );
  DFFRQX2M \mem_reg[12][6]  ( .D(n77), .CK(CLK), .RN(n328), .Q(\mem[12][6] )
         );
  DFFRQX2M \mem_reg[12][5]  ( .D(n76), .CK(CLK), .RN(n328), .Q(\mem[12][5] )
         );
  DFFRQX2M \mem_reg[12][4]  ( .D(n75), .CK(CLK), .RN(n328), .Q(\mem[12][4] )
         );
  DFFRQX2M \mem_reg[12][3]  ( .D(n74), .CK(CLK), .RN(n328), .Q(\mem[12][3] )
         );
  DFFRQX2M \mem_reg[12][2]  ( .D(n73), .CK(CLK), .RN(n327), .Q(\mem[12][2] )
         );
  DFFRQX2M \mem_reg[12][1]  ( .D(n72), .CK(CLK), .RN(n327), .Q(\mem[12][1] )
         );
  DFFRQX2M \mem_reg[12][0]  ( .D(n71), .CK(CLK), .RN(n327), .Q(\mem[12][0] )
         );
  DFFRQX2M \mem_reg[14][7]  ( .D(n62), .CK(CLK), .RN(n327), .Q(\mem[14][7] )
         );
  DFFRQX2M \mem_reg[14][6]  ( .D(n61), .CK(CLK), .RN(n327), .Q(\mem[14][6] )
         );
  DFFRQX2M \mem_reg[14][5]  ( .D(n60), .CK(CLK), .RN(n326), .Q(\mem[14][5] )
         );
  DFFRQX2M \mem_reg[14][4]  ( .D(n59), .CK(CLK), .RN(n326), .Q(\mem[14][4] )
         );
  DFFRQX2M \mem_reg[14][3]  ( .D(n58), .CK(CLK), .RN(n326), .Q(\mem[14][3] )
         );
  DFFRQX2M \mem_reg[14][2]  ( .D(n57), .CK(CLK), .RN(n326), .Q(\mem[14][2] )
         );
  DFFRQX2M \mem_reg[14][1]  ( .D(n56), .CK(CLK), .RN(n326), .Q(\mem[14][1] )
         );
  DFFRQX2M \mem_reg[14][0]  ( .D(n55), .CK(CLK), .RN(n326), .Q(\mem[14][0] )
         );
  DFFRQX2M \mem_reg[2][1]  ( .D(n152), .CK(CLK), .RN(n333), .Q(REG2[1]) );
  DFFRQX2M \mem_reg[0][2]  ( .D(n169), .CK(CLK), .RN(n335), .Q(REG0[2]) );
  DFFRQX2M \mem_reg[0][0]  ( .D(n167), .CK(CLK), .RN(n335), .Q(REG0[0]) );
  DFFRQX2M \mem_reg[0][1]  ( .D(n168), .CK(CLK), .RN(n335), .Q(REG0[1]) );
  DFFRHQX8M \mem_reg[0][5]  ( .D(n172), .CK(CLK), .RN(n335), .Q(REG0[5]) );
  DFFRQX2M \mem_reg[0][3]  ( .D(n170), .CK(CLK), .RN(n335), .Q(REG0[3]) );
  DFFRQX2M \mem_reg[0][4]  ( .D(n171), .CK(CLK), .RN(n335), .Q(REG0[4]) );
  DFFSHQX8M \mem_reg[2][5]  ( .D(n156), .CK(CLK), .SN(n325), .Q(REG2[5]) );
  DFFSHQX8M \mem_reg[2][0]  ( .D(n151), .CK(CLK), .SN(n325), .Q(REG2[0]) );
  DFFSHQX8M \mem_reg[3][5]  ( .D(n148), .CK(CLK), .SN(n325), .Q(REG3[5]) );
  DFFRQX4M \mem_reg[0][6]  ( .D(n173), .CK(CLK), .RN(n335), .Q(REG0[6]) );
  DFFRQX4M \mem_reg[0][7]  ( .D(n174), .CK(CLK), .RN(n325), .Q(REG0[7]) );
  DFFRHQX8M \mem_reg[1][2]  ( .D(n161), .CK(CLK), .RN(n334), .Q(REG1[2]) );
  DFFRHQX8M \mem_reg[1][3]  ( .D(n162), .CK(CLK), .RN(n334), .Q(REG1[3]) );
  BUFX32M U3 ( .A(n351), .Y(REG1[6]) );
  BUFX32M U4 ( .A(n350), .Y(REG1[7]) );
  CLKINVX32M U5 ( .A(n352), .Y(n3) );
  INVX32M U6 ( .A(n3), .Y(REG1[5]) );
  CLKINVX32M U7 ( .A(n353), .Y(n5) );
  INVX32M U8 ( .A(n5), .Y(REG1[4]) );
  NOR2X2M U9 ( .A(n274), .B(n275), .Y(n262) );
  NOR2X2M U10 ( .A(n274), .B(N9), .Y(n263) );
  NOR2X2M U11 ( .A(n275), .B(N10), .Y(n264) );
  AOI22X1M U12 ( .A0(REG0[6]), .A1(n289), .B0(REG1[6]), .B1(n285), .Y(n245) );
  OAI2BB2X1M U13 ( .B0(n341), .B1(n295), .A0N(REG1[6]), .A1N(n296), .Y(n165)
         );
  AOI22X1M U14 ( .A0(REG2[5]), .A1(n282), .B0(REG3[5]), .B1(n278), .Y(n234) );
  NAND2X4M U15 ( .A(N12), .B(N11), .Y(n256) );
  NAND2X4M U16 ( .A(n348), .B(n273), .Y(n259) );
  NAND2X4M U17 ( .A(N11), .B(n273), .Y(n266) );
  CLKINVX1M U18 ( .A(N12), .Y(n273) );
  NAND2X4M U19 ( .A(N12), .B(n348), .Y(n253) );
  NOR2X4M U20 ( .A(n348), .B(n274), .Y(n14) );
  NOR2X4M U21 ( .A(n348), .B(N10), .Y(n19) );
  NOR2X4M U22 ( .A(n274), .B(N11), .Y(n22) );
  AND2X2M U23 ( .A(n37), .B(N9), .Y(n29) );
  AND2X2M U24 ( .A(n26), .B(N9), .Y(n15) );
  NOR2X4M U25 ( .A(N10), .B(N11), .Y(n25) );
  CLKBUFX6M U26 ( .A(n276), .Y(n278) );
  BUFX4M U27 ( .A(n262), .Y(n277) );
  BUFX4M U28 ( .A(n16), .Y(n322) );
  BUFX4M U29 ( .A(n30), .Y(n306) );
  BUFX4M U30 ( .A(n16), .Y(n321) );
  BUFX4M U31 ( .A(n30), .Y(n305) );
  CLKBUFX6M U32 ( .A(n280), .Y(n282) );
  CLKBUFX6M U33 ( .A(n288), .Y(n290) );
  CLKBUFX6M U34 ( .A(n284), .Y(n286) );
  CLKBUFX6M U35 ( .A(n276), .Y(n279) );
  BUFX2M U36 ( .A(n262), .Y(n276) );
  BUFX4M U37 ( .A(n263), .Y(n281) );
  BUFX4M U38 ( .A(n288), .Y(n289) );
  BUFX4M U39 ( .A(n284), .Y(n285) );
  BUFX4M U40 ( .A(n32), .Y(n304) );
  BUFX4M U41 ( .A(n33), .Y(n302) );
  BUFX4M U42 ( .A(n34), .Y(n300) );
  BUFX4M U43 ( .A(n35), .Y(n298) );
  BUFX4M U44 ( .A(n36), .Y(n296) );
  BUFX4M U45 ( .A(n38), .Y(n294) );
  BUFX4M U46 ( .A(n18), .Y(n320) );
  BUFX4M U47 ( .A(n20), .Y(n318) );
  BUFX4M U48 ( .A(n21), .Y(n316) );
  BUFX4M U49 ( .A(n23), .Y(n314) );
  BUFX4M U50 ( .A(n24), .Y(n312) );
  BUFX4M U51 ( .A(n27), .Y(n310) );
  BUFX4M U52 ( .A(n28), .Y(n308) );
  BUFX4M U53 ( .A(n13), .Y(n324) );
  NAND2X2M U54 ( .A(n17), .B(n14), .Y(n16) );
  NAND2X2M U55 ( .A(n31), .B(n14), .Y(n30) );
  BUFX4M U56 ( .A(n32), .Y(n303) );
  BUFX4M U57 ( .A(n33), .Y(n301) );
  BUFX4M U58 ( .A(n34), .Y(n299) );
  BUFX4M U59 ( .A(n35), .Y(n297) );
  BUFX4M U60 ( .A(n36), .Y(n295) );
  BUFX4M U61 ( .A(n38), .Y(n293) );
  BUFX4M U62 ( .A(n18), .Y(n319) );
  BUFX4M U63 ( .A(n20), .Y(n317) );
  BUFX4M U64 ( .A(n21), .Y(n315) );
  BUFX4M U65 ( .A(n23), .Y(n313) );
  BUFX4M U66 ( .A(n24), .Y(n311) );
  BUFX4M U67 ( .A(n27), .Y(n309) );
  BUFX4M U68 ( .A(n28), .Y(n307) );
  BUFX4M U69 ( .A(n13), .Y(n323) );
  CLKBUFX8M U70 ( .A(n339), .Y(n325) );
  CLKBUFX8M U71 ( .A(n338), .Y(n327) );
  CLKBUFX8M U72 ( .A(n338), .Y(n328) );
  CLKBUFX8M U73 ( .A(n338), .Y(n329) );
  CLKBUFX8M U74 ( .A(n337), .Y(n330) );
  CLKBUFX8M U75 ( .A(n337), .Y(n331) );
  CLKBUFX8M U76 ( .A(n337), .Y(n332) );
  BUFX6M U77 ( .A(n336), .Y(n333) );
  BUFX6M U78 ( .A(n336), .Y(n334) );
  CLKBUFX8M U79 ( .A(n338), .Y(n326) );
  BUFX4M U80 ( .A(n336), .Y(n335) );
  CLKBUFX6M U81 ( .A(n280), .Y(n283) );
  BUFX2M U82 ( .A(n263), .Y(n280) );
  CLKBUFX6M U83 ( .A(n288), .Y(n291) );
  CLKBUFX6M U84 ( .A(n284), .Y(n287) );
  BUFX2M U85 ( .A(n265), .Y(n288) );
  BUFX2M U86 ( .A(n264), .Y(n284) );
  AND2X2M U87 ( .A(n26), .B(n275), .Y(n17) );
  AND2X2M U88 ( .A(n37), .B(n275), .Y(n31) );
  NAND2X2M U89 ( .A(n14), .B(n15), .Y(n13) );
  NAND2X2M U90 ( .A(n19), .B(n15), .Y(n18) );
  NAND2X2M U91 ( .A(n19), .B(n17), .Y(n20) );
  NAND2X2M U92 ( .A(n22), .B(n15), .Y(n21) );
  NAND2X2M U93 ( .A(n22), .B(n17), .Y(n23) );
  NAND2X2M U94 ( .A(n25), .B(n15), .Y(n24) );
  NAND2X2M U95 ( .A(n25), .B(n17), .Y(n27) );
  NAND2X2M U96 ( .A(n29), .B(n14), .Y(n28) );
  NAND2X2M U97 ( .A(n29), .B(n19), .Y(n32) );
  NAND2X2M U98 ( .A(n31), .B(n19), .Y(n33) );
  NAND2X2M U99 ( .A(n29), .B(n22), .Y(n34) );
  NAND2X2M U100 ( .A(n31), .B(n22), .Y(n35) );
  NAND2X2M U101 ( .A(n29), .B(n25), .Y(n36) );
  NAND2X2M U102 ( .A(n31), .B(n25), .Y(n38) );
  BUFX2M U103 ( .A(n339), .Y(n338) );
  BUFX2M U104 ( .A(n339), .Y(n337) );
  BUFX2M U105 ( .A(n339), .Y(n336) );
  INVX2M U106 ( .A(N9), .Y(n275) );
  INVX2M U107 ( .A(N10), .Y(n274) );
  INVX4M U108 ( .A(n292), .Y(n349) );
  NOR2BX2M U109 ( .AN(WrEn), .B(N12), .Y(n37) );
  INVX2M U110 ( .A(N11), .Y(n348) );
  AND2X2M U111 ( .A(WrEn), .B(N12), .Y(n26) );
  CLKBUFX6M U112 ( .A(N56), .Y(n292) );
  NOR2BX2M U113 ( .AN(RdEn), .B(WrEn), .Y(N56) );
  INVX8M U114 ( .A(WrData[0]), .Y(n347) );
  INVX8M U115 ( .A(WrData[1]), .Y(n346) );
  INVX8M U116 ( .A(WrData[2]), .Y(n345) );
  INVX8M U117 ( .A(WrData[3]), .Y(n344) );
  INVX8M U118 ( .A(WrData[7]), .Y(n340) );
  INVX8M U119 ( .A(WrData[4]), .Y(n343) );
  INVX8M U120 ( .A(WrData[6]), .Y(n341) );
  INVX8M U121 ( .A(WrData[5]), .Y(n342) );
  BUFX2M U122 ( .A(RST), .Y(n339) );
  AO22X1M U123 ( .A0(N39), .A1(n292), .B0(RdData[0]), .B1(n349), .Y(n39) );
  AO22X1M U124 ( .A0(N38), .A1(n292), .B0(RdData[1]), .B1(n349), .Y(n40) );
  AO22X1M U125 ( .A0(N37), .A1(n292), .B0(RdData[2]), .B1(n349), .Y(n41) );
  AO22X1M U126 ( .A0(N36), .A1(n292), .B0(RdData[3]), .B1(n349), .Y(n42) );
  AO22X1M U127 ( .A0(N35), .A1(n292), .B0(RdData[4]), .B1(n349), .Y(n43) );
  AO22X1M U128 ( .A0(N34), .A1(n292), .B0(RdData[5]), .B1(n349), .Y(n44) );
  AO22X1M U129 ( .A0(N33), .A1(n292), .B0(RdData[6]), .B1(n349), .Y(n45) );
  AO22X1M U130 ( .A0(N32), .A1(n292), .B0(RdData[7]), .B1(n349), .Y(n46) );
  OAI2BB2X1M U131 ( .B0(n324), .B1(n347), .A0N(\mem[15][0] ), .A1N(n324), .Y(
        n47) );
  OAI2BB2X1M U132 ( .B0(n323), .B1(n346), .A0N(\mem[15][1] ), .A1N(n324), .Y(
        n48) );
  OAI2BB2X1M U133 ( .B0(n323), .B1(n345), .A0N(\mem[15][2] ), .A1N(n324), .Y(
        n49) );
  OAI2BB2X1M U134 ( .B0(n323), .B1(n344), .A0N(\mem[15][3] ), .A1N(n324), .Y(
        n50) );
  OAI2BB2X1M U135 ( .B0(n323), .B1(n343), .A0N(\mem[15][4] ), .A1N(n324), .Y(
        n51) );
  OAI2BB2X1M U136 ( .B0(n323), .B1(n342), .A0N(\mem[15][5] ), .A1N(n324), .Y(
        n52) );
  OAI2BB2X1M U137 ( .B0(n323), .B1(n341), .A0N(\mem[15][6] ), .A1N(n324), .Y(
        n53) );
  OAI2BB2X1M U138 ( .B0(n323), .B1(n340), .A0N(\mem[15][7] ), .A1N(n324), .Y(
        n54) );
  OAI2BB2X1M U139 ( .B0(n347), .B1(n322), .A0N(\mem[14][0] ), .A1N(n322), .Y(
        n55) );
  OAI2BB2X1M U140 ( .B0(n346), .B1(n321), .A0N(\mem[14][1] ), .A1N(n322), .Y(
        n56) );
  OAI2BB2X1M U141 ( .B0(n345), .B1(n321), .A0N(\mem[14][2] ), .A1N(n322), .Y(
        n57) );
  OAI2BB2X1M U142 ( .B0(n344), .B1(n321), .A0N(\mem[14][3] ), .A1N(n322), .Y(
        n58) );
  OAI2BB2X1M U143 ( .B0(n347), .B1(n320), .A0N(\mem[13][0] ), .A1N(n320), .Y(
        n63) );
  OAI2BB2X1M U144 ( .B0(n346), .B1(n319), .A0N(\mem[13][1] ), .A1N(n320), .Y(
        n64) );
  OAI2BB2X1M U145 ( .B0(n346), .B1(n317), .A0N(\mem[12][1] ), .A1N(n318), .Y(
        n72) );
  OAI2BB2X1M U146 ( .B0(n347), .B1(n316), .A0N(\mem[11][0] ), .A1N(n316), .Y(
        n79) );
  OAI2BB2X1M U147 ( .B0(n346), .B1(n315), .A0N(\mem[11][1] ), .A1N(n316), .Y(
        n80) );
  OAI2BB2X1M U148 ( .B0(n345), .B1(n313), .A0N(\mem[10][2] ), .A1N(n314), .Y(
        n89) );
  OAI2BB2X1M U149 ( .B0(n344), .B1(n313), .A0N(\mem[10][3] ), .A1N(n314), .Y(
        n90) );
  OAI2BB2X1M U150 ( .B0(n347), .B1(n312), .A0N(\mem[9][0] ), .A1N(n312), .Y(
        n95) );
  OAI2BB2X1M U151 ( .B0(n347), .B1(n306), .A0N(\mem[6][0] ), .A1N(n306), .Y(
        n119) );
  OAI2BB2X1M U152 ( .B0(n347), .B1(n300), .A0N(REG3[0]), .A1N(n300), .Y(n143)
         );
  OAI2BB2X1M U153 ( .B0(n343), .B1(n321), .A0N(\mem[14][4] ), .A1N(n322), .Y(
        n59) );
  OAI2BB2X1M U154 ( .B0(n343), .B1(n313), .A0N(\mem[10][4] ), .A1N(n314), .Y(
        n91) );
  OAI2BB2X1M U155 ( .B0(n346), .B1(n309), .A0N(\mem[8][1] ), .A1N(n310), .Y(
        n104) );
  OAI2BB2X1M U156 ( .B0(n346), .B1(n305), .A0N(\mem[6][1] ), .A1N(n306), .Y(
        n120) );
  OAI2BB2X1M U157 ( .B0(n342), .B1(n321), .A0N(\mem[14][5] ), .A1N(n322), .Y(
        n60) );
  OAI2BB2X1M U158 ( .B0(n341), .B1(n321), .A0N(\mem[14][6] ), .A1N(n322), .Y(
        n61) );
  OAI2BB2X1M U159 ( .B0(n340), .B1(n321), .A0N(\mem[14][7] ), .A1N(n322), .Y(
        n62) );
  OAI2BB2X1M U160 ( .B0(n345), .B1(n319), .A0N(\mem[13][2] ), .A1N(n320), .Y(
        n65) );
  OAI2BB2X1M U161 ( .B0(n344), .B1(n319), .A0N(\mem[13][3] ), .A1N(n320), .Y(
        n66) );
  OAI2BB2X1M U162 ( .B0(n347), .B1(n318), .A0N(\mem[12][0] ), .A1N(n318), .Y(
        n71) );
  OAI2BB2X1M U163 ( .B0(n343), .B1(n319), .A0N(\mem[13][4] ), .A1N(n320), .Y(
        n67) );
  OAI2BB2X1M U164 ( .B0(n342), .B1(n313), .A0N(\mem[10][5] ), .A1N(n314), .Y(
        n92) );
  OAI2BB2X1M U165 ( .B0(n340), .B1(n313), .A0N(\mem[10][7] ), .A1N(n314), .Y(
        n94) );
  OAI2BB2X1M U166 ( .B0(n346), .B1(n311), .A0N(\mem[9][1] ), .A1N(n312), .Y(
        n96) );
  OAI2BB2X1M U167 ( .B0(n341), .B1(n313), .A0N(\mem[10][6] ), .A1N(n314), .Y(
        n93) );
  OAI2BB2X1M U168 ( .B0(n345), .B1(n311), .A0N(\mem[9][2] ), .A1N(n312), .Y(
        n97) );
  OAI2BB2X1M U169 ( .B0(n344), .B1(n311), .A0N(\mem[9][3] ), .A1N(n312), .Y(
        n98) );
  OAI2BB2X1M U170 ( .B0(n347), .B1(n310), .A0N(\mem[8][0] ), .A1N(n310), .Y(
        n103) );
  OAI2BB2X1M U171 ( .B0(n343), .B1(n311), .A0N(\mem[9][4] ), .A1N(n312), .Y(
        n99) );
  OAI2BB2X1M U172 ( .B0(n342), .B1(n311), .A0N(\mem[9][5] ), .A1N(n312), .Y(
        n100) );
  OAI2BB2X1M U173 ( .B0(n341), .B1(n311), .A0N(\mem[9][6] ), .A1N(n312), .Y(
        n101) );
  OAI2BB2X1M U174 ( .B0(n340), .B1(n311), .A0N(\mem[9][7] ), .A1N(n312), .Y(
        n102) );
  OAI2BB2X1M U175 ( .B0(n345), .B1(n309), .A0N(\mem[8][2] ), .A1N(n310), .Y(
        n105) );
  OAI2BB2X1M U176 ( .B0(n344), .B1(n309), .A0N(\mem[8][3] ), .A1N(n310), .Y(
        n106) );
  OAI2BB2X1M U177 ( .B0(n347), .B1(n308), .A0N(\mem[7][0] ), .A1N(n308), .Y(
        n111) );
  OAI2BB2X1M U178 ( .B0(n343), .B1(n309), .A0N(\mem[8][4] ), .A1N(n310), .Y(
        n107) );
  OAI2BB2X1M U179 ( .B0(n346), .B1(n307), .A0N(\mem[7][1] ), .A1N(n308), .Y(
        n112) );
  OAI2BB2X1M U180 ( .B0(n345), .B1(n305), .A0N(\mem[6][2] ), .A1N(n306), .Y(
        n121) );
  OAI2BB2X1M U181 ( .B0(n344), .B1(n305), .A0N(\mem[6][3] ), .A1N(n306), .Y(
        n122) );
  OAI2BB2X1M U182 ( .B0(n347), .B1(n304), .A0N(\mem[5][0] ), .A1N(n304), .Y(
        n127) );
  OAI2BB2X1M U183 ( .B0(n343), .B1(n305), .A0N(\mem[6][4] ), .A1N(n306), .Y(
        n123) );
  OAI2BB2X1M U184 ( .B0(n346), .B1(n301), .A0N(\mem[4][1] ), .A1N(n302), .Y(
        n136) );
  OAI2BB2X1M U185 ( .B0(n346), .B1(n297), .A0N(REG2[1]), .A1N(n298), .Y(n152)
         );
  OAI2BB2X1M U186 ( .B0(n342), .B1(n319), .A0N(\mem[13][5] ), .A1N(n320), .Y(
        n68) );
  OAI2BB2X1M U187 ( .B0(n341), .B1(n319), .A0N(\mem[13][6] ), .A1N(n320), .Y(
        n69) );
  OAI2BB2X1M U188 ( .B0(n340), .B1(n319), .A0N(\mem[13][7] ), .A1N(n320), .Y(
        n70) );
  OAI2BB2X1M U189 ( .B0(n345), .B1(n317), .A0N(\mem[12][2] ), .A1N(n318), .Y(
        n73) );
  OAI2BB2X1M U190 ( .B0(n344), .B1(n317), .A0N(\mem[12][3] ), .A1N(n318), .Y(
        n74) );
  OAI2BB2X1M U191 ( .B0(n342), .B1(n317), .A0N(\mem[12][5] ), .A1N(n318), .Y(
        n76) );
  OAI2BB2X1M U192 ( .B0(n341), .B1(n317), .A0N(\mem[12][6] ), .A1N(n318), .Y(
        n77) );
  OAI2BB2X1M U193 ( .B0(n345), .B1(n315), .A0N(\mem[11][2] ), .A1N(n316), .Y(
        n81) );
  OAI2BB2X1M U194 ( .B0(n344), .B1(n315), .A0N(\mem[11][3] ), .A1N(n316), .Y(
        n82) );
  OAI2BB2X1M U195 ( .B0(n347), .B1(n314), .A0N(\mem[10][0] ), .A1N(n314), .Y(
        n87) );
  OAI2BB2X1M U196 ( .B0(n343), .B1(n317), .A0N(\mem[12][4] ), .A1N(n318), .Y(
        n75) );
  OAI2BB2X1M U197 ( .B0(n340), .B1(n317), .A0N(\mem[12][7] ), .A1N(n318), .Y(
        n78) );
  OAI2BB2X1M U198 ( .B0(n340), .B1(n315), .A0N(\mem[11][7] ), .A1N(n316), .Y(
        n86) );
  OAI2BB2X1M U199 ( .B0(n346), .B1(n313), .A0N(\mem[10][1] ), .A1N(n314), .Y(
        n88) );
  OAI2BB2X1M U200 ( .B0(n347), .B1(n302), .A0N(\mem[4][0] ), .A1N(n302), .Y(
        n135) );
  OAI2BB2X1M U201 ( .B0(n343), .B1(n315), .A0N(\mem[11][4] ), .A1N(n316), .Y(
        n83) );
  OAI2BB2X1M U202 ( .B0(n342), .B1(n309), .A0N(\mem[8][5] ), .A1N(n310), .Y(
        n108) );
  OAI2BB2X1M U203 ( .B0(n340), .B1(n309), .A0N(\mem[8][7] ), .A1N(n310), .Y(
        n110) );
  OAI2BB2X1M U204 ( .B0(n345), .B1(n307), .A0N(\mem[7][2] ), .A1N(n308), .Y(
        n113) );
  OAI2BB2X1M U205 ( .B0(n344), .B1(n307), .A0N(\mem[7][3] ), .A1N(n308), .Y(
        n114) );
  OAI2BB2X1M U206 ( .B0(n347), .B1(n296), .A0N(REG1[0]), .A1N(n296), .Y(n159)
         );
  OAI2BB2X1M U207 ( .B0(n343), .B1(n307), .A0N(\mem[7][4] ), .A1N(n308), .Y(
        n115) );
  OAI2BB2X1M U208 ( .B0(n342), .B1(n307), .A0N(\mem[7][5] ), .A1N(n308), .Y(
        n116) );
  OAI2BB2X1M U209 ( .B0(n341), .B1(n307), .A0N(\mem[7][6] ), .A1N(n308), .Y(
        n117) );
  OAI2BB2X1M U210 ( .B0(n340), .B1(n307), .A0N(\mem[7][7] ), .A1N(n308), .Y(
        n118) );
  OAI2BB2X1M U211 ( .B0(n342), .B1(n305), .A0N(\mem[6][5] ), .A1N(n306), .Y(
        n124) );
  OAI2BB2X1M U212 ( .B0(n341), .B1(n305), .A0N(\mem[6][6] ), .A1N(n306), .Y(
        n125) );
  OAI2BB2X1M U213 ( .B0(n340), .B1(n305), .A0N(\mem[6][7] ), .A1N(n306), .Y(
        n126) );
  OAI2BB2X1M U214 ( .B0(n346), .B1(n303), .A0N(\mem[5][1] ), .A1N(n304), .Y(
        n128) );
  OAI2BB2X1M U215 ( .B0(n345), .B1(n303), .A0N(\mem[5][2] ), .A1N(n304), .Y(
        n129) );
  OAI2BB2X1M U216 ( .B0(n344), .B1(n303), .A0N(\mem[5][3] ), .A1N(n304), .Y(
        n130) );
  OAI2BB2X1M U217 ( .B0(n347), .B1(n294), .A0N(REG0[0]), .A1N(n294), .Y(n167)
         );
  OAI2BB2X1M U218 ( .B0(n343), .B1(n303), .A0N(\mem[5][4] ), .A1N(n304), .Y(
        n131) );
  OAI2BB2X1M U219 ( .B0(n340), .B1(n303), .A0N(\mem[5][7] ), .A1N(n304), .Y(
        n134) );
  OAI2BB2X1M U220 ( .B0(n345), .B1(n301), .A0N(\mem[4][2] ), .A1N(n302), .Y(
        n137) );
  OAI2BB2X1M U221 ( .B0(n344), .B1(n301), .A0N(\mem[4][3] ), .A1N(n302), .Y(
        n138) );
  OAI2BB2X1M U222 ( .B0(n343), .B1(n301), .A0N(\mem[4][4] ), .A1N(n302), .Y(
        n139) );
  OAI2BB2X1M U223 ( .B0(n346), .B1(n299), .A0N(REG3[1]), .A1N(n300), .Y(n144)
         );
  OAI2BB2X1M U224 ( .B0(n346), .B1(n293), .A0N(REG0[1]), .A1N(n294), .Y(n168)
         );
  OAI2BB2X1M U225 ( .B0(n342), .B1(n315), .A0N(\mem[11][5] ), .A1N(n316), .Y(
        n84) );
  OAI2BB2X1M U226 ( .B0(n341), .B1(n315), .A0N(\mem[11][6] ), .A1N(n316), .Y(
        n85) );
  OAI2BB2X1M U227 ( .B0(n342), .B1(n303), .A0N(\mem[5][5] ), .A1N(n304), .Y(
        n132) );
  OAI2BB2X1M U228 ( .B0(n341), .B1(n303), .A0N(\mem[5][6] ), .A1N(n304), .Y(
        n133) );
  OAI2BB2X1M U229 ( .B0(n342), .B1(n301), .A0N(\mem[4][5] ), .A1N(n302), .Y(
        n140) );
  OAI2BB2X1M U230 ( .B0(n341), .B1(n301), .A0N(\mem[4][6] ), .A1N(n302), .Y(
        n141) );
  OAI2BB2X1M U231 ( .B0(n340), .B1(n301), .A0N(\mem[4][7] ), .A1N(n302), .Y(
        n142) );
  OAI2BB2X1M U232 ( .B0(n345), .B1(n299), .A0N(REG3[2]), .A1N(n300), .Y(n145)
         );
  OAI2BB2X1M U233 ( .B0(n344), .B1(n299), .A0N(REG3[3]), .A1N(n300), .Y(n146)
         );
  OAI2BB2X1M U234 ( .B0(n343), .B1(n299), .A0N(REG3[4]), .A1N(n300), .Y(n147)
         );
  OAI2BB2X1M U235 ( .B0(n341), .B1(n299), .A0N(REG3[6]), .A1N(n300), .Y(n149)
         );
  OAI2BB2X1M U236 ( .B0(n340), .B1(n299), .A0N(REG3[7]), .A1N(n300), .Y(n150)
         );
  OAI2BB2X1M U237 ( .B0(n345), .B1(n297), .A0N(REG2[2]), .A1N(n298), .Y(n153)
         );
  OAI2BB2X1M U238 ( .B0(n344), .B1(n297), .A0N(REG2[3]), .A1N(n298), .Y(n154)
         );
  OAI2BB2X1M U239 ( .B0(n343), .B1(n297), .A0N(REG2[4]), .A1N(n298), .Y(n155)
         );
  OAI2BB2X1M U240 ( .B0(n340), .B1(n297), .A0N(REG2[7]), .A1N(n298), .Y(n158)
         );
  OAI2BB2X1M U241 ( .B0(n346), .B1(n295), .A0N(REG1[1]), .A1N(n296), .Y(n160)
         );
  OAI2BB2X1M U242 ( .B0(n341), .B1(n309), .A0N(\mem[8][6] ), .A1N(n310), .Y(
        n109) );
  OAI2BB2X1M U243 ( .B0(n341), .B1(n297), .A0N(REG2[6]), .A1N(n298), .Y(n157)
         );
  OAI2BB2X1M U244 ( .B0(n345), .B1(n295), .A0N(REG1[2]), .A1N(n296), .Y(n161)
         );
  OAI2BB2X1M U245 ( .B0(n344), .B1(n295), .A0N(REG1[3]), .A1N(n296), .Y(n162)
         );
  OAI2BB2X1M U246 ( .B0(n343), .B1(n295), .A0N(REG1[4]), .A1N(n296), .Y(n163)
         );
  OAI2BB2X1M U247 ( .B0(n342), .B1(n295), .A0N(REG1[5]), .A1N(n296), .Y(n164)
         );
  OAI2BB2X1M U248 ( .B0(n340), .B1(n295), .A0N(REG1[7]), .A1N(n296), .Y(n166)
         );
  OAI2BB2X1M U249 ( .B0(n345), .B1(n293), .A0N(REG0[2]), .A1N(n294), .Y(n169)
         );
  OAI2BB2X1M U250 ( .B0(n344), .B1(n293), .A0N(REG0[3]), .A1N(n294), .Y(n170)
         );
  OAI2BB2X1M U251 ( .B0(n343), .B1(n293), .A0N(REG0[4]), .A1N(n294), .Y(n171)
         );
  OAI2BB2X1M U252 ( .B0(n342), .B1(n293), .A0N(REG0[5]), .A1N(n294), .Y(n172)
         );
  OAI2BB2X1M U253 ( .B0(n341), .B1(n293), .A0N(REG0[6]), .A1N(n294), .Y(n173)
         );
  OAI2BB2X1M U254 ( .B0(n340), .B1(n293), .A0N(REG0[7]), .A1N(n294), .Y(n174)
         );
  OAI2BB2X1M U255 ( .B0(n347), .B1(n298), .A0N(REG2[0]), .A1N(n298), .Y(n151)
         );
  OAI2BB2X1M U256 ( .B0(n342), .B1(n299), .A0N(REG3[5]), .A1N(n300), .Y(n148)
         );
  OAI2BB2X1M U257 ( .B0(n342), .B1(n297), .A0N(REG2[5]), .A1N(n298), .Y(n156)
         );
  AOI22X1M U258 ( .A0(\mem[10][0] ), .A1(n283), .B0(\mem[11][0] ), .B1(n279), 
        .Y(n8) );
  NOR2X1M U259 ( .A(N9), .B(N10), .Y(n265) );
  AOI22X1M U260 ( .A0(\mem[8][0] ), .A1(n291), .B0(\mem[9][0] ), .B1(n287), 
        .Y(n7) );
  AOI21X1M U261 ( .A0(n8), .A1(n7), .B0(n253), .Y(n180) );
  AOI22X1M U262 ( .A0(\mem[14][0] ), .A1(n283), .B0(\mem[15][0] ), .B1(n279), 
        .Y(n10) );
  AOI22X1M U263 ( .A0(\mem[12][0] ), .A1(n291), .B0(\mem[13][0] ), .B1(n287), 
        .Y(n9) );
  AOI21X1M U264 ( .A0(n10), .A1(n9), .B0(n256), .Y(n179) );
  AOI22X1M U265 ( .A0(REG2[0]), .A1(n283), .B0(REG3[0]), .B1(n279), .Y(n12) );
  AOI22X1M U266 ( .A0(REG0[0]), .A1(n291), .B0(REG1[0]), .B1(n287), .Y(n11) );
  AOI21X1M U267 ( .A0(n12), .A1(n11), .B0(n259), .Y(n178) );
  AOI22X1M U268 ( .A0(\mem[6][0] ), .A1(n283), .B0(\mem[7][0] ), .B1(n279), 
        .Y(n176) );
  AOI22X1M U269 ( .A0(\mem[4][0] ), .A1(n291), .B0(\mem[5][0] ), .B1(n287), 
        .Y(n175) );
  AOI21X1M U270 ( .A0(n176), .A1(n175), .B0(n266), .Y(n177) );
  OR4X1M U271 ( .A(n180), .B(n179), .C(n178), .D(n177), .Y(N39) );
  AOI22X1M U272 ( .A0(\mem[10][1] ), .A1(n283), .B0(\mem[11][1] ), .B1(n279), 
        .Y(n182) );
  AOI22X1M U273 ( .A0(\mem[8][1] ), .A1(n291), .B0(\mem[9][1] ), .B1(n287), 
        .Y(n181) );
  AOI21X1M U274 ( .A0(n182), .A1(n181), .B0(n253), .Y(n192) );
  AOI22X1M U275 ( .A0(\mem[14][1] ), .A1(n283), .B0(\mem[15][1] ), .B1(n279), 
        .Y(n184) );
  AOI22X1M U276 ( .A0(\mem[12][1] ), .A1(n291), .B0(\mem[13][1] ), .B1(n287), 
        .Y(n183) );
  AOI21X1M U277 ( .A0(n184), .A1(n183), .B0(n256), .Y(n191) );
  AOI22X1M U278 ( .A0(REG2[1]), .A1(n283), .B0(REG3[1]), .B1(n279), .Y(n186)
         );
  AOI22X1M U279 ( .A0(REG0[1]), .A1(n291), .B0(REG1[1]), .B1(n287), .Y(n185)
         );
  AOI21X1M U280 ( .A0(n186), .A1(n185), .B0(n259), .Y(n190) );
  AOI22X1M U281 ( .A0(\mem[6][1] ), .A1(n283), .B0(\mem[7][1] ), .B1(n279), 
        .Y(n188) );
  AOI22X1M U282 ( .A0(\mem[4][1] ), .A1(n291), .B0(\mem[5][1] ), .B1(n287), 
        .Y(n187) );
  AOI21X1M U283 ( .A0(n188), .A1(n187), .B0(n266), .Y(n189) );
  OR4X1M U284 ( .A(n192), .B(n191), .C(n190), .D(n189), .Y(N38) );
  AOI22X1M U285 ( .A0(\mem[10][2] ), .A1(n283), .B0(\mem[11][2] ), .B1(n279), 
        .Y(n194) );
  AOI22X1M U286 ( .A0(\mem[8][2] ), .A1(n291), .B0(\mem[9][2] ), .B1(n287), 
        .Y(n193) );
  AOI21X1M U287 ( .A0(n194), .A1(n193), .B0(n253), .Y(n204) );
  AOI22X1M U288 ( .A0(\mem[14][2] ), .A1(n283), .B0(\mem[15][2] ), .B1(n279), 
        .Y(n196) );
  AOI22X1M U289 ( .A0(\mem[12][2] ), .A1(n291), .B0(\mem[13][2] ), .B1(n287), 
        .Y(n195) );
  AOI21X1M U290 ( .A0(n196), .A1(n195), .B0(n256), .Y(n203) );
  AOI22X1M U291 ( .A0(REG2[2]), .A1(n283), .B0(REG3[2]), .B1(n279), .Y(n198)
         );
  AOI22X1M U292 ( .A0(REG0[2]), .A1(n291), .B0(REG1[2]), .B1(n287), .Y(n197)
         );
  AOI21X1M U293 ( .A0(n198), .A1(n197), .B0(n259), .Y(n202) );
  AOI22X1M U294 ( .A0(\mem[6][2] ), .A1(n283), .B0(\mem[7][2] ), .B1(n279), 
        .Y(n200) );
  AOI22X1M U295 ( .A0(\mem[4][2] ), .A1(n291), .B0(\mem[5][2] ), .B1(n287), 
        .Y(n199) );
  AOI21X1M U296 ( .A0(n200), .A1(n199), .B0(n266), .Y(n201) );
  OR4X1M U297 ( .A(n204), .B(n203), .C(n202), .D(n201), .Y(N37) );
  AOI22X1M U298 ( .A0(\mem[10][3] ), .A1(n282), .B0(\mem[11][3] ), .B1(n278), 
        .Y(n206) );
  AOI22X1M U299 ( .A0(\mem[8][3] ), .A1(n290), .B0(\mem[9][3] ), .B1(n286), 
        .Y(n205) );
  AOI21X1M U300 ( .A0(n206), .A1(n205), .B0(n253), .Y(n216) );
  AOI22X1M U301 ( .A0(\mem[14][3] ), .A1(n282), .B0(\mem[15][3] ), .B1(n278), 
        .Y(n208) );
  AOI22X1M U302 ( .A0(\mem[12][3] ), .A1(n290), .B0(\mem[13][3] ), .B1(n286), 
        .Y(n207) );
  AOI21X1M U303 ( .A0(n208), .A1(n207), .B0(n256), .Y(n215) );
  AOI22X1M U304 ( .A0(REG2[3]), .A1(n282), .B0(REG3[3]), .B1(n278), .Y(n210)
         );
  AOI22X1M U305 ( .A0(REG0[3]), .A1(n290), .B0(REG1[3]), .B1(n286), .Y(n209)
         );
  AOI21X1M U306 ( .A0(n210), .A1(n209), .B0(n259), .Y(n214) );
  AOI22X1M U307 ( .A0(\mem[6][3] ), .A1(n282), .B0(\mem[7][3] ), .B1(n278), 
        .Y(n212) );
  AOI22X1M U308 ( .A0(\mem[4][3] ), .A1(n290), .B0(\mem[5][3] ), .B1(n286), 
        .Y(n211) );
  AOI21X1M U309 ( .A0(n212), .A1(n211), .B0(n266), .Y(n213) );
  OR4X1M U310 ( .A(n216), .B(n215), .C(n214), .D(n213), .Y(N36) );
  AOI22X1M U311 ( .A0(\mem[10][4] ), .A1(n282), .B0(\mem[11][4] ), .B1(n278), 
        .Y(n218) );
  AOI22X1M U312 ( .A0(\mem[8][4] ), .A1(n290), .B0(\mem[9][4] ), .B1(n286), 
        .Y(n217) );
  AOI21X1M U313 ( .A0(n218), .A1(n217), .B0(n253), .Y(n228) );
  AOI22X1M U314 ( .A0(\mem[14][4] ), .A1(n282), .B0(\mem[15][4] ), .B1(n278), 
        .Y(n220) );
  AOI22X1M U315 ( .A0(\mem[12][4] ), .A1(n290), .B0(\mem[13][4] ), .B1(n286), 
        .Y(n219) );
  AOI21X1M U316 ( .A0(n220), .A1(n219), .B0(n256), .Y(n227) );
  AOI22X1M U317 ( .A0(REG2[4]), .A1(n282), .B0(REG3[4]), .B1(n278), .Y(n222)
         );
  AOI22X1M U318 ( .A0(REG0[4]), .A1(n290), .B0(REG1[4]), .B1(n286), .Y(n221)
         );
  AOI21X1M U319 ( .A0(n222), .A1(n221), .B0(n259), .Y(n226) );
  AOI22X1M U320 ( .A0(\mem[6][4] ), .A1(n282), .B0(\mem[7][4] ), .B1(n278), 
        .Y(n224) );
  AOI22X1M U321 ( .A0(\mem[4][4] ), .A1(n290), .B0(\mem[5][4] ), .B1(n286), 
        .Y(n223) );
  AOI21X1M U322 ( .A0(n224), .A1(n223), .B0(n266), .Y(n225) );
  OR4X1M U323 ( .A(n228), .B(n227), .C(n226), .D(n225), .Y(N35) );
  AOI22X1M U324 ( .A0(\mem[10][5] ), .A1(n282), .B0(\mem[11][5] ), .B1(n278), 
        .Y(n230) );
  AOI22X1M U325 ( .A0(\mem[8][5] ), .A1(n290), .B0(\mem[9][5] ), .B1(n286), 
        .Y(n229) );
  AOI21X1M U326 ( .A0(n230), .A1(n229), .B0(n253), .Y(n240) );
  AOI22X1M U327 ( .A0(\mem[14][5] ), .A1(n282), .B0(\mem[15][5] ), .B1(n278), 
        .Y(n232) );
  AOI22X1M U328 ( .A0(\mem[12][5] ), .A1(n290), .B0(\mem[13][5] ), .B1(n286), 
        .Y(n231) );
  AOI21X1M U329 ( .A0(n232), .A1(n231), .B0(n256), .Y(n239) );
  AOI22X1M U330 ( .A0(REG0[5]), .A1(n290), .B0(REG1[5]), .B1(n286), .Y(n233)
         );
  AOI21X1M U331 ( .A0(n234), .A1(n233), .B0(n259), .Y(n238) );
  AOI22X1M U332 ( .A0(\mem[6][5] ), .A1(n282), .B0(\mem[7][5] ), .B1(n278), 
        .Y(n236) );
  AOI22X1M U333 ( .A0(\mem[4][5] ), .A1(n290), .B0(\mem[5][5] ), .B1(n286), 
        .Y(n235) );
  AOI21X1M U334 ( .A0(n236), .A1(n235), .B0(n266), .Y(n237) );
  OR4X1M U335 ( .A(n240), .B(n239), .C(n238), .D(n237), .Y(N34) );
  AOI22X1M U336 ( .A0(\mem[10][6] ), .A1(n281), .B0(\mem[11][6] ), .B1(n277), 
        .Y(n242) );
  AOI22X1M U337 ( .A0(\mem[8][6] ), .A1(n289), .B0(\mem[9][6] ), .B1(n285), 
        .Y(n241) );
  AOI21X1M U338 ( .A0(n242), .A1(n241), .B0(n253), .Y(n252) );
  AOI22X1M U339 ( .A0(\mem[14][6] ), .A1(n281), .B0(\mem[15][6] ), .B1(n277), 
        .Y(n244) );
  AOI22X1M U340 ( .A0(\mem[12][6] ), .A1(n289), .B0(\mem[13][6] ), .B1(n285), 
        .Y(n243) );
  AOI21X1M U341 ( .A0(n244), .A1(n243), .B0(n256), .Y(n251) );
  AOI22X1M U342 ( .A0(REG2[6]), .A1(n281), .B0(REG3[6]), .B1(n277), .Y(n246)
         );
  AOI21X1M U343 ( .A0(n246), .A1(n245), .B0(n259), .Y(n250) );
  AOI22X1M U344 ( .A0(\mem[6][6] ), .A1(n281), .B0(\mem[7][6] ), .B1(n277), 
        .Y(n248) );
  AOI22X1M U345 ( .A0(\mem[4][6] ), .A1(n289), .B0(\mem[5][6] ), .B1(n285), 
        .Y(n247) );
  AOI21X1M U346 ( .A0(n248), .A1(n247), .B0(n266), .Y(n249) );
  OR4X1M U347 ( .A(n252), .B(n251), .C(n250), .D(n249), .Y(N33) );
  AOI22X1M U348 ( .A0(\mem[10][7] ), .A1(n281), .B0(\mem[11][7] ), .B1(n277), 
        .Y(n255) );
  AOI22X1M U349 ( .A0(\mem[8][7] ), .A1(n289), .B0(\mem[9][7] ), .B1(n285), 
        .Y(n254) );
  AOI21X1M U350 ( .A0(n255), .A1(n254), .B0(n253), .Y(n272) );
  AOI22X1M U351 ( .A0(\mem[14][7] ), .A1(n281), .B0(\mem[15][7] ), .B1(n277), 
        .Y(n258) );
  AOI22X1M U352 ( .A0(\mem[12][7] ), .A1(n289), .B0(\mem[13][7] ), .B1(n285), 
        .Y(n257) );
  AOI21X1M U353 ( .A0(n258), .A1(n257), .B0(n256), .Y(n271) );
  AOI22X1M U354 ( .A0(REG2[7]), .A1(n281), .B0(REG3[7]), .B1(n277), .Y(n261)
         );
  AOI22X1M U355 ( .A0(REG0[7]), .A1(n289), .B0(REG1[7]), .B1(n285), .Y(n260)
         );
  AOI21X1M U356 ( .A0(n261), .A1(n260), .B0(n259), .Y(n270) );
  AOI22X1M U357 ( .A0(\mem[6][7] ), .A1(n281), .B0(\mem[7][7] ), .B1(n277), 
        .Y(n268) );
  AOI22X1M U358 ( .A0(\mem[4][7] ), .A1(n289), .B0(\mem[5][7] ), .B1(n285), 
        .Y(n267) );
  AOI21X1M U359 ( .A0(n268), .A1(n267), .B0(n266), .Y(n269) );
  OR4X1M U360 ( .A(n272), .B(n271), .C(n270), .D(n269), .Y(N32) );
endmodule


module ALU_8B_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n35, \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34;

  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n25), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n27), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n29), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n28), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n28), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n28), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n28), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n30), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n25), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n27), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n26), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n27), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n27), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n24), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n30), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n29), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n30), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_2  ( .A(n4), .B(n29), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n30), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n29), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n29), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_4_3  ( .A(n3), .B(n28), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n26), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n26), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n30), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  NAND2X2M U1 ( .A(\u_div/SumTmp[7][0] ), .B(quotient[7]), .Y(n19) );
  XNOR2X2M U2 ( .A(n31), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  INVX32M U3 ( .A(b[0]), .Y(n31) );
  INVX6M U4 ( .A(b[3]), .Y(n28) );
  INVX8M U5 ( .A(b[2]), .Y(n29) );
  MX2X4M U6 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  MX2X4M U7 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  MX2X4M U8 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  MX2X2M U9 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  MX2X2M U10 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  INVX18M U11 ( .A(b[4]), .Y(n27) );
  INVX20M U12 ( .A(b[5]), .Y(n26) );
  NAND2X2M U13 ( .A(n30), .B(\u_div/CryTmp[5][1] ), .Y(n7) );
  NAND2X6M U14 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/CryTmp[5][1] ), .Y(n6)
         );
  BUFX10M U15 ( .A(\u_div/PartRem[6][2] ), .Y(n12) );
  NAND2X8M U16 ( .A(n29), .B(\u_div/CryTmp[5][2] ), .Y(n11) );
  OR2X6M U17 ( .A(a[6]), .B(n31), .Y(\u_div/CryTmp[6][1] ) );
  NAND2X6M U18 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/CryTmp[6][1] ), .Y(n14)
         );
  NAND2X6M U19 ( .A(\u_div/PartRem[7][1] ), .B(n30), .Y(n15) );
  INVX8M U20 ( .A(b[1]), .Y(n30) );
  MX2X2M U21 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2X2M U22 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  MX2X2M U23 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  INVX2M U24 ( .A(b[6]), .Y(n25) );
  NAND2X4M U25 ( .A(a[7]), .B(n17), .Y(n18) );
  CLKINVX32M U26 ( .A(n35), .Y(n1) );
  INVX32M U27 ( .A(n1), .Y(quotient[2]) );
  BUFX16M U28 ( .A(\u_div/PartRem[5][3] ), .Y(n3) );
  MX2X8M U29 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X12M U30 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  BUFX10M U31 ( .A(\u_div/PartRem[3][2] ), .Y(n4) );
  MX2X1M U32 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  MX2XLM U33 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  INVX32M U34 ( .A(n23), .Y(quotient[1]) );
  NAND2X12M U35 ( .A(\u_div/CryTmp[1][7] ), .B(n24), .Y(n23) );
  XOR3XLM U36 ( .A(\u_div/PartRem[6][1] ), .B(n30), .C(\u_div/CryTmp[5][1] ), 
        .Y(\u_div/SumTmp[5][1] ) );
  NAND2X6M U37 ( .A(\u_div/PartRem[6][1] ), .B(n30), .Y(n5) );
  NAND3X12M U38 ( .A(n5), .B(n6), .C(n7), .Y(\u_div/CryTmp[5][2] ) );
  CLKXOR2X2M U39 ( .A(n12), .B(n29), .Y(n8) );
  CLKXOR2X2M U40 ( .A(n8), .B(\u_div/CryTmp[5][2] ), .Y(\u_div/SumTmp[5][2] )
         );
  NAND2X5M U41 ( .A(n12), .B(n29), .Y(n9) );
  NAND2X12M U42 ( .A(n12), .B(\u_div/CryTmp[5][2] ), .Y(n10) );
  NAND3X12M U43 ( .A(n9), .B(n10), .C(n11), .Y(\u_div/CryTmp[5][3] ) );
  CLKXOR2X2M U44 ( .A(\u_div/CryTmp[6][1] ), .B(n30), .Y(n13) );
  XOR2X2M U45 ( .A(\u_div/PartRem[7][1] ), .B(n13), .Y(\u_div/SumTmp[6][1] )
         );
  CLKNAND2X8M U46 ( .A(\u_div/CryTmp[6][1] ), .B(n30), .Y(n16) );
  NAND3X12M U47 ( .A(n16), .B(n15), .C(n14), .Y(\u_div/CryTmp[6][2] ) );
  NAND2X12M U48 ( .A(n18), .B(n19), .Y(\u_div/PartRem[7][1] ) );
  AND2X12M U49 ( .A(\u_div/CryTmp[6][2] ), .B(n21), .Y(quotient[6]) );
  AND2X12M U50 ( .A(\u_div/CryTmp[5][3] ), .B(n32), .Y(quotient[5]) );
  AND2X8M U51 ( .A(\u_div/CryTmp[2][6] ), .B(n34), .Y(n35) );
  AND4X12M U52 ( .A(\u_div/CryTmp[7][1] ), .B(n32), .C(n30), .D(n29), .Y(
        quotient[7]) );
  AND2X12M U53 ( .A(\u_div/CryTmp[3][5] ), .B(n20), .Y(quotient[3]) );
  MX2X1M U54 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKINVX4M U55 ( .A(quotient[7]), .Y(n17) );
  MX2X8M U56 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKAND2X12M U57 ( .A(n27), .B(n26), .Y(n22) );
  AND2X1M U58 ( .A(n26), .B(n34), .Y(n20) );
  MX2X1M U59 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  AND2X8M U60 ( .A(n34), .B(n22), .Y(n33) );
  AND2X8M U61 ( .A(n33), .B(n28), .Y(n32) );
  AND2X1M U62 ( .A(n32), .B(n29), .Y(n21) );
  MX2X1M U63 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  AND2X8M U64 ( .A(\u_div/CryTmp[4][4] ), .B(n33), .Y(quotient[4]) );
  MX2X2M U65 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  MX2X2M U66 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  OR2X2M U67 ( .A(a[7]), .B(n31), .Y(\u_div/CryTmp[7][1] ) );
  MX2X1M U68 ( .A(n12), .B(\u_div/SumTmp[5][2] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][3] ) );
  MX2X1M U69 ( .A(n4), .B(\u_div/SumTmp[2][2] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][3] ) );
  MX2X1M U70 ( .A(n3), .B(\u_div/SumTmp[4][3] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][4] ) );
  XNOR2X1M U71 ( .A(n31), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X1M U72 ( .A(n31), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X1M U73 ( .A(n31), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X1M U74 ( .A(n31), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X1M U75 ( .A(n31), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X1M U76 ( .A(n31), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NOR2X12M U77 ( .A(b[6]), .B(b[7]), .Y(n34) );
  OR2X2M U78 ( .A(a[2]), .B(n31), .Y(\u_div/CryTmp[2][1] ) );
  OR2X2M U79 ( .A(a[5]), .B(n31), .Y(\u_div/CryTmp[5][1] ) );
  OR2X2M U80 ( .A(a[4]), .B(n31), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U81 ( .A(a[1]), .B(n31), .Y(\u_div/CryTmp[1][1] ) );
  NAND2BX2M U82 ( .AN(a[0]), .B(b[0]), .Y(\u_div/CryTmp[0][1] ) );
  OR2X2M U83 ( .A(a[3]), .B(n31), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U84 ( .A(b[7]), .Y(n24) );
  CLKMX2X2M U85 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U86 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U87 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U88 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U89 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U90 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
endmodule


module ALU_8B_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [9:0] carry;

  ADDFX2M U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n1), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  INVXLM U1 ( .A(B[6]), .Y(n2) );
  INVXLM U2 ( .A(B[1]), .Y(n7) );
  INVXLM U3 ( .A(B[4]), .Y(n4) );
  INVXLM U4 ( .A(B[5]), .Y(n3) );
  INVXLM U5 ( .A(B[2]), .Y(n6) );
  INVXLM U6 ( .A(B[3]), .Y(n5) );
  CLKINVX1M U7 ( .A(B[0]), .Y(n8) );
  XNOR2X2M U8 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U9 ( .A(B[7]), .Y(n1) );
  OR2X2M U10 ( .A(A[0]), .B(n8), .Y(carry[1]) );
  CLKINVX1M U11 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_8B_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_8B_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26;

  OAI21BX4M U2 ( .A0(n19), .A1(n20), .B0N(n21), .Y(n17) );
  AOI2BB1X2M U3 ( .A0N(n8), .A1N(n11), .B0(n10), .Y(n24) );
  NOR2X2M U4 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NOR2X2M U5 ( .A(B[9]), .B(A[9]), .Y(n11) );
  NOR2X2M U6 ( .A(B[10]), .B(A[10]), .Y(n23) );
  NOR2X2M U7 ( .A(B[11]), .B(A[11]), .Y(n19) );
  CLKXOR2X2M U8 ( .A(B[13]), .B(n16), .Y(SUM[13]) );
  NAND2X2M U9 ( .A(A[7]), .B(B[7]), .Y(n13) );
  CLKXOR2X2M U10 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  INVX2M U11 ( .A(n7), .Y(SUM[6]) );
  INVX2M U12 ( .A(A[6]), .Y(n7) );
  BUFX2M U13 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U14 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U15 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U16 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U17 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U18 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U19 ( .A(n8), .B(n9), .Y(SUM[9]) );
  NOR2X1M U20 ( .A(n10), .B(n11), .Y(n9) );
  CLKXOR2X2M U21 ( .A(n12), .B(n13), .Y(SUM[8]) );
  NAND2BX1M U22 ( .AN(n14), .B(n15), .Y(n12) );
  OAI2BB1X1M U23 ( .A0N(n17), .A1N(A[12]), .B0(n18), .Y(n16) );
  OAI21X1M U24 ( .A0(A[12]), .A1(n17), .B0(B[12]), .Y(n18) );
  XOR3XLM U25 ( .A(B[12]), .B(A[12]), .C(n17), .Y(SUM[12]) );
  XNOR2X1M U26 ( .A(n20), .B(n22), .Y(SUM[11]) );
  NOR2X1M U27 ( .A(n21), .B(n19), .Y(n22) );
  AND2X1M U28 ( .A(B[11]), .B(A[11]), .Y(n21) );
  OA21X1M U29 ( .A0(n23), .A1(n24), .B0(n25), .Y(n20) );
  CLKXOR2X2M U30 ( .A(n26), .B(n24), .Y(SUM[10]) );
  AND2X1M U31 ( .A(B[9]), .B(A[9]), .Y(n10) );
  OA21X1M U32 ( .A0(n13), .A1(n14), .B0(n15), .Y(n8) );
  CLKNAND2X2M U33 ( .A(B[8]), .B(A[8]), .Y(n15) );
  NAND2BX1M U34 ( .AN(n23), .B(n25), .Y(n26) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n25) );
endmodule


module ALU_8B_DW02_mult_0 ( A, B, TC, PRODUCT );
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
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32;

  ALU_8B_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n14, n15, n12, n13, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n8), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n6), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n7), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n4), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n3), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  AND2X2M U2 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX4M U10 ( .A(B[6]), .Y(n26) );
  NOR2X2M U11 ( .A(n27), .B(n24), .Y(\ab[0][5] ) );
  NOR2X2M U12 ( .A(n28), .B(n24), .Y(\ab[0][4] ) );
  NOR2X2M U13 ( .A(n29), .B(n24), .Y(\ab[0][3] ) );
  NOR2X2M U14 ( .A(n28), .B(n23), .Y(\ab[1][4] ) );
  NOR2X2M U15 ( .A(n29), .B(n23), .Y(\ab[1][3] ) );
  NOR2X2M U16 ( .A(n30), .B(n23), .Y(\ab[1][2] ) );
  NOR2X2M U17 ( .A(n30), .B(n24), .Y(\ab[0][2] ) );
  NOR2X2M U18 ( .A(n31), .B(n24), .Y(\ab[0][1] ) );
  NOR2X2M U19 ( .A(n27), .B(n23), .Y(\ab[1][5] ) );
  NOR2X2M U20 ( .A(n31), .B(n23), .Y(\ab[1][1] ) );
  NOR2X2M U21 ( .A(n32), .B(n23), .Y(\ab[1][0] ) );
  NOR2X2M U22 ( .A(n25), .B(n24), .Y(\ab[0][7] ) );
  NOR2X2M U23 ( .A(n26), .B(n24), .Y(\ab[0][6] ) );
  NOR2X2M U24 ( .A(n26), .B(n23), .Y(\ab[1][6] ) );
  NOR2X2M U25 ( .A(n17), .B(n25), .Y(\ab[7][7] ) );
  CLKINVX4M U26 ( .A(A[3]), .Y(n21) );
  CLKINVX4M U27 ( .A(A[4]), .Y(n20) );
  CLKINVX4M U28 ( .A(A[5]), .Y(n19) );
  CLKINVX4M U29 ( .A(A[6]), .Y(n18) );
  CLKINVX4M U30 ( .A(A[7]), .Y(n17) );
  CLKINVX4M U31 ( .A(B[2]), .Y(n30) );
  CLKINVX4M U32 ( .A(B[3]), .Y(n29) );
  CLKINVX4M U33 ( .A(B[4]), .Y(n28) );
  CLKINVX4M U34 ( .A(B[5]), .Y(n27) );
  CLKINVX4M U35 ( .A(B[0]), .Y(n32) );
  CLKINVX4M U36 ( .A(B[1]), .Y(n31) );
  CLKXOR2X2M U37 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U38 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U39 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  INVX4M U40 ( .A(A[1]), .Y(n23) );
  AND2X2M U41 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U42 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n12) );
  AND2X2M U43 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n13) );
  INVX4M U44 ( .A(A[2]), .Y(n22) );
  CLKXOR2X2M U45 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U46 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  AND2X2M U47 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n14) );
  AND2X2M U48 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n15) );
  CLKXOR2X2M U49 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U50 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U51 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  XOR2X1M U52 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XOR2X1M U53 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1M U54 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  INVX4M U55 ( .A(A[0]), .Y(n24) );
  XOR2X1M U56 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  XOR2X1M U57 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1M U58 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1M U59 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  INVX4M U60 ( .A(B[7]), .Y(n25) );
  NOR2X1M U62 ( .A(n17), .B(n26), .Y(\ab[7][6] ) );
  NOR2X1M U63 ( .A(n17), .B(n27), .Y(\ab[7][5] ) );
  NOR2X1M U64 ( .A(n17), .B(n28), .Y(\ab[7][4] ) );
  NOR2X1M U65 ( .A(n17), .B(n29), .Y(\ab[7][3] ) );
  NOR2X1M U66 ( .A(n17), .B(n30), .Y(\ab[7][2] ) );
  NOR2X1M U67 ( .A(n17), .B(n31), .Y(\ab[7][1] ) );
  NOR2X1M U68 ( .A(n17), .B(n32), .Y(\ab[7][0] ) );
  NOR2X1M U69 ( .A(n25), .B(n18), .Y(\ab[6][7] ) );
  NOR2X1M U70 ( .A(n26), .B(n18), .Y(\ab[6][6] ) );
  NOR2X1M U71 ( .A(n27), .B(n18), .Y(\ab[6][5] ) );
  NOR2X1M U72 ( .A(n28), .B(n18), .Y(\ab[6][4] ) );
  NOR2X1M U73 ( .A(n29), .B(n18), .Y(\ab[6][3] ) );
  NOR2X1M U74 ( .A(n30), .B(n18), .Y(\ab[6][2] ) );
  NOR2X1M U75 ( .A(n31), .B(n18), .Y(\ab[6][1] ) );
  NOR2X1M U76 ( .A(n32), .B(n18), .Y(\ab[6][0] ) );
  NOR2X1M U77 ( .A(n25), .B(n19), .Y(\ab[5][7] ) );
  NOR2X1M U78 ( .A(n26), .B(n19), .Y(\ab[5][6] ) );
  NOR2X1M U79 ( .A(n27), .B(n19), .Y(\ab[5][5] ) );
  NOR2X1M U80 ( .A(n28), .B(n19), .Y(\ab[5][4] ) );
  NOR2X1M U81 ( .A(n29), .B(n19), .Y(\ab[5][3] ) );
  NOR2X1M U82 ( .A(n30), .B(n19), .Y(\ab[5][2] ) );
  NOR2X1M U83 ( .A(n31), .B(n19), .Y(\ab[5][1] ) );
  NOR2X1M U84 ( .A(n32), .B(n19), .Y(\ab[5][0] ) );
  NOR2X1M U85 ( .A(n25), .B(n20), .Y(\ab[4][7] ) );
  NOR2X1M U86 ( .A(n26), .B(n20), .Y(\ab[4][6] ) );
  NOR2X1M U87 ( .A(n27), .B(n20), .Y(\ab[4][5] ) );
  NOR2X1M U88 ( .A(n28), .B(n20), .Y(\ab[4][4] ) );
  NOR2X1M U89 ( .A(n29), .B(n20), .Y(\ab[4][3] ) );
  NOR2X1M U90 ( .A(n30), .B(n20), .Y(\ab[4][2] ) );
  NOR2X1M U91 ( .A(n31), .B(n20), .Y(\ab[4][1] ) );
  NOR2X1M U92 ( .A(n32), .B(n20), .Y(\ab[4][0] ) );
  NOR2X1M U93 ( .A(n25), .B(n21), .Y(\ab[3][7] ) );
  NOR2X1M U94 ( .A(n26), .B(n21), .Y(\ab[3][6] ) );
  NOR2X1M U95 ( .A(n27), .B(n21), .Y(\ab[3][5] ) );
  NOR2X1M U96 ( .A(n28), .B(n21), .Y(\ab[3][4] ) );
  NOR2X1M U97 ( .A(n29), .B(n21), .Y(\ab[3][3] ) );
  NOR2X1M U98 ( .A(n30), .B(n21), .Y(\ab[3][2] ) );
  NOR2X1M U99 ( .A(n31), .B(n21), .Y(\ab[3][1] ) );
  NOR2X1M U100 ( .A(n32), .B(n21), .Y(\ab[3][0] ) );
  NOR2X1M U101 ( .A(n25), .B(n22), .Y(\ab[2][7] ) );
  NOR2X1M U102 ( .A(n26), .B(n22), .Y(\ab[2][6] ) );
  NOR2X1M U103 ( .A(n27), .B(n22), .Y(\ab[2][5] ) );
  NOR2X1M U104 ( .A(n28), .B(n22), .Y(\ab[2][4] ) );
  NOR2X1M U105 ( .A(n29), .B(n22), .Y(\ab[2][3] ) );
  NOR2X1M U106 ( .A(n30), .B(n22), .Y(\ab[2][2] ) );
  NOR2X1M U107 ( .A(n31), .B(n22), .Y(\ab[2][1] ) );
  NOR2X1M U108 ( .A(n32), .B(n22), .Y(\ab[2][0] ) );
  NOR2X1M U109 ( .A(n25), .B(n23), .Y(\ab[1][7] ) );
  NOR2X1M U110 ( .A(n32), .B(n24), .Y(PRODUCT[0]) );
endmodule


module ALU_8B ( clk, rst, A, B, ALU_EN, ALU_FUN, ALU_OUT, Carry_Flag, 
        Arith_Flag, Logic_Flag, Shift_Flag, Valid, CMP_Flag );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input clk, rst, ALU_EN;
  output Carry_Flag, Arith_Flag, Logic_Flag, Shift_Flag, Valid, CMP_Flag;
  wire   N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80,
         N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94,
         N95, N96, N97, N98, N99, N100, N103, N104, N105, N106, N107, N108,
         N109, N110, N167, N169, n37, n38, n39, n40, n41, n42, n43, n44, n47,
         n48, n49, n50, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n45, n46, n51, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180;
  wire   [15:0] ALU_OUT_comb;

  ALU_8B_DW_div_uns_0 div_49 ( .a({A[7:6], n24, n21, n18, n15, n12, n10}), .b(
        B), .quotient({N110, N109, N108, N107, N106, N105, N104, N103}) );
  ALU_8B_DW01_sub_0 sub_40 ( .A({1'b0, n28, A[6], n24, n21, n18, n15, n12, n10}), .B({1'b0, B}), .CI(1'b0), .DIFF({N84, N83, N82, N81, N80, N79, N78, N77, 
        N76}) );
  ALU_8B_DW01_add_0 add_36 ( .A({1'b0, n28, n26, n24, n21, n18, n15, n12, n10}), .B({1'b0, B}), .CI(1'b0), .SUM({N75, N74, N73, N72, N71, N70, N69, N68, N67}) );
  ALU_8B_DW02_mult_0 mult_44 ( .A({n28, n26, n24, n21, n18, n15, n12, n10}), 
        .B(B), .TC(1'b0), .PRODUCT({N100, N99, N98, N97, N96, N95, N94, N93, 
        N92, N91, N90, N89, N88, N87, N86, N85}) );
  DFFRQX1M \ALU_OUT_reg[15]  ( .D(ALU_OUT_comb[15]), .CK(clk), .RN(n36), .Q(
        ALU_OUT[15]) );
  DFFRQX1M \ALU_OUT_reg[14]  ( .D(ALU_OUT_comb[14]), .CK(clk), .RN(n36), .Q(
        ALU_OUT[14]) );
  DFFRQX1M \ALU_OUT_reg[13]  ( .D(ALU_OUT_comb[13]), .CK(clk), .RN(n36), .Q(
        ALU_OUT[13]) );
  DFFRQX1M \ALU_OUT_reg[12]  ( .D(ALU_OUT_comb[12]), .CK(clk), .RN(n36), .Q(
        ALU_OUT[12]) );
  DFFRQX1M \ALU_OUT_reg[11]  ( .D(ALU_OUT_comb[11]), .CK(clk), .RN(n36), .Q(
        ALU_OUT[11]) );
  DFFRQX1M \ALU_OUT_reg[10]  ( .D(ALU_OUT_comb[10]), .CK(clk), .RN(n36), .Q(
        ALU_OUT[10]) );
  DFFRQX1M \ALU_OUT_reg[9]  ( .D(ALU_OUT_comb[9]), .CK(clk), .RN(n36), .Q(
        ALU_OUT[9]) );
  DFFRQX1M \ALU_OUT_reg[8]  ( .D(ALU_OUT_comb[8]), .CK(clk), .RN(n36), .Q(
        ALU_OUT[8]) );
  DFFRQX1M \ALU_OUT_reg[7]  ( .D(ALU_OUT_comb[7]), .CK(clk), .RN(n36), .Q(
        ALU_OUT[7]) );
  DFFRQX1M \ALU_OUT_reg[6]  ( .D(ALU_OUT_comb[6]), .CK(clk), .RN(n36), .Q(
        ALU_OUT[6]) );
  DFFRQX1M \ALU_OUT_reg[5]  ( .D(ALU_OUT_comb[5]), .CK(clk), .RN(n36), .Q(
        ALU_OUT[5]) );
  DFFRQX1M \ALU_OUT_reg[4]  ( .D(ALU_OUT_comb[4]), .CK(clk), .RN(n36), .Q(
        ALU_OUT[4]) );
  DFFRQX1M \ALU_OUT_reg[3]  ( .D(ALU_OUT_comb[3]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[3]) );
  DFFRQX1M \ALU_OUT_reg[2]  ( .D(ALU_OUT_comb[2]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[2]) );
  DFFRQX1M \ALU_OUT_reg[1]  ( .D(ALU_OUT_comb[1]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[1]) );
  DFFRQX1M \ALU_OUT_reg[0]  ( .D(ALU_OUT_comb[0]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[0]) );
  DFFRQX1M Valid_reg ( .D(1'b1), .CK(clk), .RN(n36), .Q(Valid) );
  NAND2X8M U3 ( .A(n8), .B(n121), .Y(n114) );
  CLKINVX2M U4 ( .A(rst), .Y(n45) );
  INVX2M U5 ( .A(A[7]), .Y(n27) );
  INVX2M U6 ( .A(A[5]), .Y(n23) );
  INVX4M U9 ( .A(A[6]), .Y(n25) );
  NAND2X2M U10 ( .A(n49), .B(n118), .Y(n3) );
  AOI2B1X1M U11 ( .A1N(n148), .A0(n147), .B0(n146), .Y(n149) );
  INVX2M U12 ( .A(n149), .Y(n158) );
  NAND2X2M U13 ( .A(n125), .B(n118), .Y(n4) );
  NAND2X2M U14 ( .A(n125), .B(n124), .Y(n5) );
  INVX4M U15 ( .A(A[4]), .Y(n20) );
  INVX2M U16 ( .A(B[6]), .Y(n153) );
  INVX2M U17 ( .A(B[0]), .Y(n170) );
  AOI32X1M U18 ( .A0(n130), .A1(n140), .A2(n143), .B0(B[6]), .B1(n25), .Y(n131) );
  XNOR2X4M U19 ( .A(n26), .B(B[6]), .Y(n143) );
  AOI211X2M U20 ( .A0(n134), .A1(n155), .B0(n133), .C0(n132), .Y(n135) );
  NAND2BX2M U21 ( .AN(n127), .B(n138), .Y(n133) );
  OAI31X2M U22 ( .A0(n136), .A1(n127), .A2(n126), .B0(n137), .Y(n129) );
  AOI211X2M U23 ( .A0(n13), .A1(n154), .B0(n133), .C0(n51), .Y(n126) );
  AOI32X4M U24 ( .A0(n49), .A1(n109), .A2(N167), .B0(N103), .B1(n60), .Y(n121)
         );
  AND2X2M U25 ( .A(N169), .B(n175), .Y(n6) );
  OR2X12M U26 ( .A(n6), .B(n114), .Y(n9) );
  NOR2X12M U27 ( .A(n9), .B(n115), .Y(n113) );
  AOI31X4M U28 ( .A0(n111), .A1(n112), .A2(n113), .B0(n171), .Y(
        ALU_OUT_comb[0]) );
  NAND2X2M U29 ( .A(n170), .B(n7), .Y(n8) );
  INVX2M U30 ( .A(n120), .Y(n7) );
  OAI22X2M U31 ( .A0(n37), .A1(n162), .B0(n116), .B1(n170), .Y(n115) );
  OAI21X4M U32 ( .A0(n146), .A1(n131), .B0(n147), .Y(N169) );
  NOR2X2M U33 ( .A(n151), .B(n16), .Y(n127) );
  NOR2X2M U34 ( .A(n150), .B(n10), .Y(n46) );
  NOR2X2M U35 ( .A(n152), .B(n19), .Y(n136) );
  INVX2M U36 ( .A(A[3]), .Y(n17) );
  NAND2X4M U37 ( .A(n118), .B(n108), .Y(n62) );
  NOR2X4M U38 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n125) );
  NOR2BX4M U39 ( .AN(ALU_FUN[3]), .B(ALU_FUN[0]), .Y(n109) );
  NOR2X4M U40 ( .A(ALU_FUN[3]), .B(ALU_FUN[0]), .Y(n118) );
  NOR2X4M U41 ( .A(n179), .B(ALU_FUN[1]), .Y(n119) );
  NOR2BX4M U42 ( .AN(ALU_FUN[0]), .B(ALU_FUN[3]), .Y(n124) );
  CLKINVX2M U43 ( .A(n18), .Y(n160) );
  OAI2BB1XLM U44 ( .A0N(N104), .A1N(n60), .B0(n106), .Y(n105) );
  AOI22X1M U45 ( .A0(N84), .A1(n29), .B0(N75), .B1(n32), .Y(n44) );
  BUFX6M U46 ( .A(A[0]), .Y(n10) );
  CLKINVX1M U47 ( .A(B[0]), .Y(n150) );
  CLKINVX1M U48 ( .A(B[2]), .Y(n151) );
  CLKINVX1M U49 ( .A(B[3]), .Y(n152) );
  NOR2X2M U50 ( .A(n157), .B(B[7]), .Y(n146) );
  CLKINVX2M U51 ( .A(B[1]), .Y(n169) );
  CLKINVX2M U52 ( .A(B[4]), .Y(n166) );
  CLKINVX2M U53 ( .A(B[2]), .Y(n168) );
  CLKINVX2M U54 ( .A(B[5]), .Y(n165) );
  CLKINVX2M U55 ( .A(B[3]), .Y(n167) );
  INVX4M U56 ( .A(n110), .Y(n173) );
  INVX4M U57 ( .A(n35), .Y(n176) );
  INVX4M U58 ( .A(n38), .Y(n177) );
  NOR2X4M U59 ( .A(n110), .B(n174), .Y(n39) );
  INVX8M U60 ( .A(n43), .Y(n172) );
  INVX6M U61 ( .A(n62), .Y(n174) );
  INVX2M U62 ( .A(n47), .Y(n175) );
  INVX4M U63 ( .A(n3), .Y(n34) );
  INVX4M U64 ( .A(n3), .Y(n33) );
  INVX4M U65 ( .A(n4), .Y(n31) );
  INVX4M U66 ( .A(n4), .Y(n32) );
  INVX4M U67 ( .A(n5), .Y(n30) );
  INVX4M U68 ( .A(n5), .Y(n29) );
  NOR4X2M U69 ( .A(n31), .B(n29), .C(n33), .D(n52), .Y(n50) );
  AND2X2M U70 ( .A(n42), .B(n43), .Y(n41) );
  OAI2BB1X2M U71 ( .A0N(N100), .A1N(n53), .B0(n54), .Y(ALU_OUT_comb[15]) );
  OAI2BB1X2M U72 ( .A0N(N99), .A1N(n53), .B0(n54), .Y(ALU_OUT_comb[14]) );
  OAI2BB1X2M U73 ( .A0N(N98), .A1N(n53), .B0(n54), .Y(ALU_OUT_comb[13]) );
  OAI2BB1X2M U74 ( .A0N(N97), .A1N(n53), .B0(n54), .Y(ALU_OUT_comb[12]) );
  OAI2BB1X2M U75 ( .A0N(N95), .A1N(n53), .B0(n54), .Y(ALU_OUT_comb[10]) );
  OAI2BB1X2M U76 ( .A0N(N96), .A1N(n53), .B0(n54), .Y(ALU_OUT_comb[11]) );
  OAI2BB1X2M U77 ( .A0N(n108), .A1N(n124), .B0(n117), .Y(n110) );
  NAND2X4M U78 ( .A(n42), .B(n117), .Y(n64) );
  NOR2X4M U79 ( .A(n179), .B(n180), .Y(n108) );
  NAND2X2M U80 ( .A(n118), .B(n119), .Y(n42) );
  OAI2BB1X2M U81 ( .A0N(N94), .A1N(n53), .B0(n54), .Y(ALU_OUT_comb[9]) );
  CLKBUFX6M U82 ( .A(n40), .Y(n35) );
  NAND2X2M U83 ( .A(n125), .B(n109), .Y(n40) );
  NAND2X2M U84 ( .A(n124), .B(n119), .Y(n43) );
  INVX4M U85 ( .A(n37), .Y(n178) );
  NAND2X2M U86 ( .A(n108), .B(n109), .Y(n38) );
  NAND2X2M U87 ( .A(n119), .B(n109), .Y(n47) );
  AND2X2M U88 ( .A(n49), .B(n124), .Y(n52) );
  AOI31X2M U89 ( .A0(n39), .A1(n35), .A2(n41), .B0(n171), .Y(Logic_Flag) );
  AOI21X2M U90 ( .A0(n47), .A1(n48), .B0(n171), .Y(CMP_Flag) );
  AOI21X2M U91 ( .A0(n37), .A1(n38), .B0(n171), .Y(Shift_Flag) );
  NOR2X2M U92 ( .A(n50), .B(n171), .Y(Arith_Flag) );
  INVX2M U93 ( .A(n13), .Y(n155) );
  OAI221X1M U94 ( .A0(n28), .A1(n173), .B0(n157), .B1(n35), .C0(n62), .Y(n61)
         );
  NAND3X2M U95 ( .A(ALU_FUN[0]), .B(ALU_FUN[3]), .C(n125), .Y(n117) );
  OAI2BB2X1M U96 ( .B0(n27), .B1(n43), .A0N(N92), .A1N(n33), .Y(n59) );
  AOI21X2M U97 ( .A0(n55), .A1(n39), .B0(n171), .Y(ALU_OUT_comb[8]) );
  AOI22X1M U98 ( .A0(n28), .A1(n177), .B0(N93), .B1(n34), .Y(n55) );
  INVX2M U99 ( .A(ALU_FUN[2]), .Y(n179) );
  INVX2M U100 ( .A(ALU_FUN[1]), .Y(n180) );
  INVX2M U101 ( .A(n63), .Y(n159) );
  AOI221X2M U102 ( .A0(n64), .A1(n28), .B0(n157), .B1(n176), .C0(n172), .Y(n63) );
  NOR2X6M U103 ( .A(n180), .B(ALU_FUN[2]), .Y(n49) );
  NAND2BX4M U104 ( .AN(n39), .B(ALU_EN), .Y(n54) );
  OAI221X1M U105 ( .A0(n13), .A1(n173), .B0(n35), .B1(n162), .C0(n62), .Y(n103) );
  NAND3X4M U106 ( .A(n119), .B(ALU_FUN[3]), .C(ALU_FUN[0]), .Y(n37) );
  CLKAND2X4M U107 ( .A(n33), .B(ALU_EN), .Y(n53) );
  INVX2M U108 ( .A(n28), .Y(n157) );
  INVX8M U109 ( .A(ALU_EN), .Y(n171) );
  INVX2M U110 ( .A(n13), .Y(n162) );
  INVX2M U111 ( .A(n16), .Y(n161) );
  NAND2X2M U112 ( .A(n49), .B(ALU_FUN[3]), .Y(n48) );
  INVX6M U113 ( .A(n45), .Y(n36) );
  NOR2X2M U114 ( .A(n44), .B(n171), .Y(Carry_Flag) );
  AOI22X1M U115 ( .A0(N76), .A1(n29), .B0(N67), .B1(n32), .Y(n111) );
  AOI222X2M U116 ( .A0(N85), .A1(n33), .B0(n174), .B1(n163), .C0(n10), .C1(
        n172), .Y(n112) );
  AOI31X2M U117 ( .A0(n100), .A1(n101), .A2(n102), .B0(n171), .Y(
        ALU_OUT_comb[1]) );
  AOI222X2M U118 ( .A0(N68), .A1(n31), .B0(N86), .B1(n34), .C0(N77), .C1(n30), 
        .Y(n100) );
  AOI222X2M U119 ( .A0(n13), .A1(n172), .B0(N169), .B1(n175), .C0(n174), .C1(
        n162), .Y(n101) );
  AOI211X2M U120 ( .A0(n103), .A1(n169), .B0(n104), .C0(n105), .Y(n102) );
  NAND4X2M U121 ( .A(n158), .B(n49), .C(ALU_FUN[0]), .D(ALU_FUN[3]), .Y(n106)
         );
  INVX4M U122 ( .A(n23), .Y(n24) );
  AOI31X2M U123 ( .A0(n93), .A1(n94), .A2(n95), .B0(n171), .Y(ALU_OUT_comb[2])
         );
  AOI22X1M U124 ( .A0(N78), .A1(n30), .B0(N69), .B1(n31), .Y(n93) );
  AOI222X2M U125 ( .A0(N87), .A1(n33), .B0(n174), .B1(n161), .C0(n16), .C1(
        n172), .Y(n94) );
  AOI221X2M U126 ( .A0(n13), .A1(n177), .B0(n19), .B1(n178), .C0(n96), .Y(n95)
         );
  OAI21X2M U127 ( .A0(n97), .A1(n168), .B0(n98), .Y(n96) );
  AOI221X2M U128 ( .A0(n176), .A1(n161), .B0(n16), .B1(n64), .C0(n172), .Y(n97) );
  AOI22X1M U129 ( .A0(N105), .A1(n60), .B0(n99), .B1(n168), .Y(n98) );
  OAI221X1M U130 ( .A0(n16), .A1(n173), .B0(n35), .B1(n161), .C0(n62), .Y(n99)
         );
  INVX4M U131 ( .A(n20), .Y(n21) );
  INVX4M U132 ( .A(n11), .Y(n12) );
  INVX4M U133 ( .A(n14), .Y(n15) );
  AOI31X2M U134 ( .A0(n86), .A1(n87), .A2(n88), .B0(n171), .Y(ALU_OUT_comb[3])
         );
  AOI22X1M U135 ( .A0(N79), .A1(n29), .B0(N70), .B1(n32), .Y(n86) );
  AOI222X2M U136 ( .A0(N88), .A1(n34), .B0(n174), .B1(n160), .C0(n19), .C1(
        n172), .Y(n87) );
  AOI221X2M U137 ( .A0(n16), .A1(n177), .B0(n22), .B1(n178), .C0(n89), .Y(n88)
         );
  OAI21X2M U138 ( .A0(n90), .A1(n167), .B0(n91), .Y(n89) );
  AOI221X2M U139 ( .A0(n176), .A1(n160), .B0(n19), .B1(n64), .C0(n172), .Y(n90) );
  AOI22X1M U140 ( .A0(N106), .A1(n60), .B0(n92), .B1(n167), .Y(n91) );
  OAI221X1M U141 ( .A0(n19), .A1(n173), .B0(n35), .B1(n160), .C0(n62), .Y(n92)
         );
  INVX4M U142 ( .A(n17), .Y(n18) );
  INVX4M U143 ( .A(n14), .Y(n16) );
  AOI31X2M U144 ( .A0(n79), .A1(n80), .A2(n81), .B0(n171), .Y(ALU_OUT_comb[4])
         );
  AOI22X1M U145 ( .A0(N80), .A1(n30), .B0(N71), .B1(n31), .Y(n79) );
  AOI222X2M U146 ( .A0(N89), .A1(n34), .B0(n174), .B1(n20), .C0(n22), .C1(n172), .Y(n80) );
  AOI221X2M U147 ( .A0(n19), .A1(n177), .B0(n178), .B1(A[5]), .C0(n82), .Y(n81) );
  OAI21X2M U148 ( .A0(n83), .A1(n166), .B0(n84), .Y(n82) );
  AOI221X2M U149 ( .A0(n176), .A1(n20), .B0(n22), .B1(n64), .C0(n172), .Y(n83)
         );
  AOI22X1M U150 ( .A0(N107), .A1(n60), .B0(n85), .B1(n166), .Y(n84) );
  OAI221X1M U151 ( .A0(n22), .A1(n173), .B0(n35), .B1(n20), .C0(n62), .Y(n85)
         );
  INVX4M U152 ( .A(n11), .Y(n13) );
  INVX4M U153 ( .A(n17), .Y(n19) );
  INVX4M U154 ( .A(n20), .Y(n22) );
  OAI222X1M U155 ( .A0(n38), .A1(n163), .B0(n107), .B1(n169), .C0(n37), .C1(
        n161), .Y(n104) );
  AOI221X2M U156 ( .A0(n176), .A1(n162), .B0(n13), .B1(n64), .C0(n172), .Y(
        n107) );
  AOI31X2M U157 ( .A0(n72), .A1(n73), .A2(n74), .B0(n171), .Y(ALU_OUT_comb[5])
         );
  AOI22X1M U158 ( .A0(N81), .A1(n29), .B0(N72), .B1(n32), .Y(n72) );
  AOI222X2M U159 ( .A0(N90), .A1(n34), .B0(n174), .B1(n23), .C0(A[5]), .C1(
        n172), .Y(n73) );
  AOI221X2M U160 ( .A0(n22), .A1(n177), .B0(n178), .B1(n26), .C0(n75), .Y(n74)
         );
  AOI31X2M U161 ( .A0(n65), .A1(n66), .A2(n67), .B0(n171), .Y(ALU_OUT_comb[6])
         );
  AOI22X1M U162 ( .A0(N82), .A1(n30), .B0(N73), .B1(n31), .Y(n65) );
  AOI222X2M U163 ( .A0(N91), .A1(n34), .B0(n174), .B1(n25), .C0(n172), .C1(n26), .Y(n66) );
  AOI221X2M U164 ( .A0(A[5]), .A1(n177), .B0(n178), .B1(n28), .C0(n68), .Y(n67) );
  AOI221X2M U165 ( .A0(n176), .A1(n163), .B0(n10), .B1(n64), .C0(n172), .Y(
        n116) );
  OAI21X2M U166 ( .A0(n69), .A1(n153), .B0(n70), .Y(n68) );
  AOI221X2M U167 ( .A0(n176), .A1(n25), .B0(n26), .B1(n64), .C0(n172), .Y(n69)
         );
  AOI22X1M U168 ( .A0(N109), .A1(n60), .B0(n71), .B1(n153), .Y(n70) );
  OAI221X1M U169 ( .A0(n26), .A1(n173), .B0(n35), .B1(n25), .C0(n62), .Y(n71)
         );
  OAI21X2M U170 ( .A0(n76), .A1(n165), .B0(n77), .Y(n75) );
  AOI221X2M U171 ( .A0(n176), .A1(n23), .B0(A[5]), .B1(n64), .C0(n172), .Y(n76) );
  AOI22X1M U172 ( .A0(N108), .A1(n60), .B0(n78), .B1(n165), .Y(n77) );
  OAI221X1M U173 ( .A0(A[5]), .A1(n173), .B0(n35), .B1(n23), .C0(n62), .Y(n78)
         );
  INVX4M U174 ( .A(n25), .Y(n26) );
  OA21X4M U175 ( .A0(n122), .A1(n123), .B0(n52), .Y(n60) );
  NAND4X2M U176 ( .A(n170), .B(n169), .C(n168), .D(n167), .Y(n123) );
  NAND4X2M U177 ( .A(n166), .B(n165), .C(n153), .D(n164), .Y(n122) );
  INVX4M U178 ( .A(n27), .Y(n28) );
  INVX2M U179 ( .A(n10), .Y(n163) );
  AOI221X2M U180 ( .A0(n10), .A1(n176), .B0(n110), .B1(n163), .C0(n174), .Y(
        n120) );
  INVX2M U181 ( .A(A[1]), .Y(n11) );
  INVX2M U182 ( .A(A[2]), .Y(n14) );
  INVXLM U183 ( .A(n46), .Y(n154) );
  INVXLM U184 ( .A(n135), .Y(n156) );
  AOI31X2M U185 ( .A0(n56), .A1(n57), .A2(n58), .B0(n171), .Y(ALU_OUT_comb[7])
         );
  AOI22X1M U186 ( .A0(n26), .A1(n177), .B0(n174), .B1(n27), .Y(n56) );
  AOI222X2M U187 ( .A0(B[7]), .A1(n159), .B0(N110), .B1(n60), .C0(n61), .C1(
        n164), .Y(n57) );
  AOI221X2M U188 ( .A0(N83), .A1(n30), .B0(N74), .B1(n32), .C0(n59), .Y(n58)
         );
  INVX2M U189 ( .A(B[7]), .Y(n164) );
  NAND2BX1M U190 ( .AN(B[4]), .B(n22), .Y(n139) );
  NAND2BX1M U191 ( .AN(n22), .B(B[4]), .Y(n128) );
  CLKNAND2X2M U192 ( .A(n139), .B(n128), .Y(n141) );
  CLKNAND2X2M U193 ( .A(n16), .B(n151), .Y(n138) );
  AOI21X1M U194 ( .A0(n46), .A1(n155), .B0(B[1]), .Y(n51) );
  CLKNAND2X2M U195 ( .A(n19), .B(n152), .Y(n137) );
  NAND2BX1M U196 ( .AN(A[5]), .B(B[5]), .Y(n144) );
  OAI211X1M U197 ( .A0(n141), .A1(n129), .B0(n128), .C0(n144), .Y(n130) );
  NAND2BX1M U198 ( .AN(B[5]), .B(A[5]), .Y(n140) );
  CLKNAND2X2M U199 ( .A(B[7]), .B(n157), .Y(n147) );
  CLKNAND2X2M U200 ( .A(n10), .B(n150), .Y(n134) );
  OA21X1M U201 ( .A0(n134), .A1(n155), .B0(B[1]), .Y(n132) );
  AOI31X1M U202 ( .A0(n156), .A1(n138), .A2(n137), .B0(n136), .Y(n142) );
  OAI2B11X1M U203 ( .A1N(n142), .A0(n141), .B0(n140), .C0(n139), .Y(n145) );
  AOI32X1M U204 ( .A0(n145), .A1(n144), .A2(n143), .B0(n26), .B1(n153), .Y(
        n148) );
  NOR2X1M U205 ( .A(N169), .B(n158), .Y(N167) );
endmodule


module DATA_SAMPLING_OVERSAMPLE3 ( RX_IN, DAT_SAMP_EN, PRESCALE, EDGE_CNT, clk, 
        rst, SAMPLED_BIT );
  input [5:0] PRESCALE;
  input [5:0] EDGE_CNT;
  input RX_IN, DAT_SAMP_EN, clk, rst;
  output SAMPLED_BIT;
  wire   N7, N8, N9, N10, N11, N14, N15, N16, N17, N18, N19, n17, n18, n19,
         \add_29/carry[4] , \add_29/carry[3] , \add_29/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36;
  wire   [2:0] samples;

  DFFRQX1M \samples_reg[2]  ( .D(n19), .CK(clk), .RN(n1), .Q(samples[2]) );
  DFFRQX1M \samples_reg[0]  ( .D(n17), .CK(clk), .RN(n1), .Q(samples[0]) );
  DFFRQX1M \samples_reg[1]  ( .D(n18), .CK(clk), .RN(n1), .Q(samples[1]) );
  XNOR2X4M U3 ( .A(EDGE_CNT[3]), .B(PRESCALE[4]), .Y(n14) );
  XNOR2X4M U4 ( .A(EDGE_CNT[4]), .B(PRESCALE[5]), .Y(n15) );
  NOR3X4M U5 ( .A(PRESCALE[4]), .B(PRESCALE[5]), .C(n3), .Y(N11) );
  NOR4X2M U6 ( .A(n24), .B(n25), .C(n13), .D(n12), .Y(n23) );
  NAND3XLM U7 ( .A(n15), .B(n11), .C(n14), .Y(n24) );
  INVX2M U8 ( .A(DAT_SAMP_EN), .Y(n25) );
  MX2XLM U9 ( .A(samples[1]), .B(RX_IN), .S0(n23), .Y(n18) );
  MX2XLM U10 ( .A(samples[2]), .B(RX_IN), .S0(n5), .Y(n19) );
  NAND4X2M U11 ( .A(n30), .B(n31), .C(n32), .D(n33), .Y(n11) );
  XNOR2X2M U12 ( .A(EDGE_CNT[2]), .B(N8), .Y(n32) );
  XNOR2X2M U13 ( .A(EDGE_CNT[3]), .B(N9), .Y(n31) );
  NOR3X2M U14 ( .A(n34), .B(n35), .C(n36), .Y(n33) );
  ADDFX2M U15 ( .A(samples[0]), .B(samples[2]), .CI(samples[1]), .CO(
        SAMPLED_BIT) );
  OR2X2M U16 ( .A(n2), .B(PRESCALE[3]), .Y(n3) );
  OAI2BB1XLM U17 ( .A0N(n2), .A1N(PRESCALE[3]), .B0(n3), .Y(N8) );
  BUFX2M U18 ( .A(rst), .Y(n1) );
  OR2X2M U19 ( .A(PRESCALE[2]), .B(PRESCALE[1]), .Y(n2) );
  ADDHX1M U20 ( .A(PRESCALE[4]), .B(\add_29/carry[3] ), .CO(\add_29/carry[4] ), 
        .S(N17) );
  ADDHX1M U21 ( .A(PRESCALE[2]), .B(PRESCALE[1]), .CO(\add_29/carry[2] ), .S(
        N15) );
  ADDHX1M U22 ( .A(PRESCALE[3]), .B(\add_29/carry[2] ), .CO(\add_29/carry[3] ), 
        .S(N16) );
  ADDHX1M U23 ( .A(PRESCALE[5]), .B(\add_29/carry[4] ), .CO(N19), .S(N18) );
  OAI2BB1X1M U24 ( .A0N(PRESCALE[1]), .A1N(PRESCALE[2]), .B0(n2), .Y(N7) );
  XNOR2X1M U25 ( .A(PRESCALE[4]), .B(n3), .Y(N9) );
  OAI21X1M U26 ( .A0(PRESCALE[4]), .A1(n3), .B0(PRESCALE[5]), .Y(n4) );
  NAND2BX1M U27 ( .AN(N11), .B(n4), .Y(N10) );
  CLKINVX1M U28 ( .A(PRESCALE[1]), .Y(N14) );
  NOR4X1M U29 ( .A(n6), .B(n7), .C(n8), .D(n9), .Y(n5) );
  CLKXOR2X2M U30 ( .A(N15), .B(EDGE_CNT[1]), .Y(n9) );
  CLKXOR2X2M U31 ( .A(N14), .B(EDGE_CNT[0]), .Y(n8) );
  NAND3X1M U32 ( .A(n10), .B(n11), .C(DAT_SAMP_EN), .Y(n7) );
  NAND4BBX1M U33 ( .AN(n12), .BN(n13), .C(n14), .D(n15), .Y(n10) );
  NAND4X1M U34 ( .A(n16), .B(n20), .C(n21), .D(n22), .Y(n6) );
  XNOR2X1M U35 ( .A(EDGE_CNT[2]), .B(N16), .Y(n22) );
  XNOR2X1M U36 ( .A(EDGE_CNT[3]), .B(N17), .Y(n21) );
  XNOR2X1M U37 ( .A(EDGE_CNT[4]), .B(N18), .Y(n20) );
  XNOR2X1M U38 ( .A(EDGE_CNT[5]), .B(N19), .Y(n16) );
  CLKXOR2X2M U39 ( .A(EDGE_CNT[2]), .B(PRESCALE[3]), .Y(n12) );
  NAND3X1M U40 ( .A(n26), .B(n27), .C(n28), .Y(n13) );
  XNOR2X1M U41 ( .A(EDGE_CNT[0]), .B(PRESCALE[1]), .Y(n28) );
  CLKINVX1M U42 ( .A(EDGE_CNT[5]), .Y(n27) );
  XNOR2X1M U43 ( .A(EDGE_CNT[1]), .B(PRESCALE[2]), .Y(n26) );
  CLKMX2X2M U44 ( .A(samples[0]), .B(RX_IN), .S0(n29), .Y(n17) );
  NOR2X1M U45 ( .A(n25), .B(n11), .Y(n29) );
  CLKXOR2X2M U46 ( .A(N10), .B(EDGE_CNT[4]), .Y(n36) );
  CLKXOR2X2M U47 ( .A(N7), .B(EDGE_CNT[1]), .Y(n35) );
  CLKXOR2X2M U48 ( .A(N14), .B(EDGE_CNT[0]), .Y(n34) );
  XNOR2X1M U49 ( .A(EDGE_CNT[5]), .B(N11), .Y(n30) );
endmodule


module DESERIALIZER ( SAMPLED_BIT, DESER_EN, clk, rst, P_DATA );
  output [7:0] P_DATA;
  input SAMPLED_BIT, DESER_EN, clk, rst;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n1, n2, n3, n4, n5, n6, n7, n8,
         n17, n18, n19, n20;

  DFFRX1M \P_DATA_reg[7]  ( .D(n16), .CK(clk), .RN(n3), .Q(P_DATA[7]), .QN(n6)
         );
  DFFRX1M \P_DATA_reg[6]  ( .D(n15), .CK(clk), .RN(n3), .Q(P_DATA[6]), .QN(n7)
         );
  DFFRX1M \P_DATA_reg[5]  ( .D(n14), .CK(clk), .RN(n3), .Q(P_DATA[5]), .QN(n8)
         );
  DFFRX1M \P_DATA_reg[4]  ( .D(n13), .CK(clk), .RN(n3), .Q(P_DATA[4]), .QN(n17) );
  DFFRX1M \P_DATA_reg[3]  ( .D(n12), .CK(clk), .RN(n3), .Q(P_DATA[3]), .QN(n18) );
  DFFRX1M \P_DATA_reg[2]  ( .D(n11), .CK(clk), .RN(n3), .Q(P_DATA[2]), .QN(n19) );
  DFFRX1M \P_DATA_reg[1]  ( .D(n10), .CK(clk), .RN(n3), .Q(P_DATA[1]), .QN(n20) );
  DFFRX4M \P_DATA_reg[0]  ( .D(n9), .CK(clk), .RN(n3), .Q(P_DATA[0]) );
  INVX4M U2 ( .A(DESER_EN), .Y(n5) );
  INVX4M U3 ( .A(n4), .Y(n3) );
  INVX2M U4 ( .A(rst), .Y(n4) );
  OAI22X1M U5 ( .A0(n5), .A1(n19), .B0(n2), .B1(n20), .Y(n10) );
  OAI22X1M U6 ( .A0(n5), .A1(n18), .B0(n2), .B1(n19), .Y(n11) );
  OAI22X1M U7 ( .A0(n5), .A1(n17), .B0(n2), .B1(n18), .Y(n12) );
  OAI22X1M U8 ( .A0(n5), .A1(n8), .B0(n2), .B1(n17), .Y(n13) );
  OAI22X1M U9 ( .A0(n5), .A1(n7), .B0(n2), .B1(n8), .Y(n14) );
  OAI22X1M U10 ( .A0(n5), .A1(n6), .B0(n2), .B1(n7), .Y(n15) );
  OAI2BB2X1M U11 ( .B0(n2), .B1(n6), .A0N(SAMPLED_BIT), .A1N(n2), .Y(n16) );
  INVX4M U12 ( .A(n1), .Y(n2) );
  OAI2BB2X1M U13 ( .B0(n5), .B1(n20), .A0N(P_DATA[0]), .A1N(n5), .Y(n9) );
  INVX2M U14 ( .A(DESER_EN), .Y(n1) );
endmodule


module EDGE_COUNTER_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module EDGE_COUNTER_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module EDGE_COUNTER ( clk, rst, enable, PRESCALE, bit_cnt, edge_cnt );
  input [5:0] PRESCALE;
  output [7:0] bit_cnt;
  output [7:0] edge_cnt;
  input clk, rst, enable;
  wire   n51, n52, N5, N9, N10, bit_sig, N16, N17, N18, N19, N20, N21, N22,
         N23, N24, N25, N26, N27, N28, N29, N30, N31, N49, N50, N51, N52, N53,
         N54, N55, N56, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n2, n3,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n28, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50;

  EDGE_COUNTER_DW01_inc_0 add_24 ( .A(edge_cnt), .SUM({N31, N30, N29, N28, N27, 
        N26, N25, N24}) );
  EDGE_COUNTER_DW01_inc_1 add_21 ( .A({n23, bit_cnt[6], n24, bit_cnt[4:3], n26, 
        n25, bit_cnt[0]}), .SUM({N23, N22, N21, N20, N19, N18, N17, N16}) );
  DFFRQX4M \edge_cnt_reg[7]  ( .D(N56), .CK(clk), .RN(n31), .Q(edge_cnt[7]) );
  DFFRQX4M \edge_cnt_reg[6]  ( .D(N55), .CK(clk), .RN(n31), .Q(edge_cnt[6]) );
  DFFRQX4M \bit_cnt_reg[0]  ( .D(n15), .CK(clk), .RN(n31), .Q(bit_cnt[0]) );
  DFFRQX4M \edge_cnt_reg[5]  ( .D(N54), .CK(clk), .RN(n31), .Q(edge_cnt[5]) );
  DFFRQX4M \edge_cnt_reg[1]  ( .D(N50), .CK(clk), .RN(n31), .Q(edge_cnt[1]) );
  DFFRQX4M \edge_cnt_reg[4]  ( .D(N53), .CK(clk), .RN(n31), .Q(edge_cnt[4]) );
  DFFRQX4M \edge_cnt_reg[2]  ( .D(N51), .CK(clk), .RN(n31), .Q(edge_cnt[2]) );
  DFFRQX4M \edge_cnt_reg[0]  ( .D(N49), .CK(clk), .RN(n31), .Q(edge_cnt[0]) );
  DFFRX1M \bit_cnt_reg[7]  ( .D(n8), .CK(clk), .RN(n32), .Q(bit_cnt[7]), .QN(
        n20) );
  DFFRX1M \bit_cnt_reg[5]  ( .D(n10), .CK(clk), .RN(n32), .Q(bit_cnt[5]), .QN(
        n21) );
  DFFRX1M \bit_cnt_reg[3]  ( .D(n12), .CK(clk), .RN(n31), .Q(n51), .QN(n3) );
  DFFRX1M \bit_cnt_reg[2]  ( .D(n13), .CK(clk), .RN(n31), .Q(bit_cnt[2]), .QN(
        n19) );
  DFFRX1M \bit_cnt_reg[1]  ( .D(n14), .CK(clk), .RN(n31), .Q(bit_cnt[1]), .QN(
        n18) );
  DFFRQX1M \edge_cnt_reg[3]  ( .D(N52), .CK(clk), .RN(n31), .Q(n52) );
  DFFRX4M \bit_cnt_reg[4]  ( .D(n11), .CK(clk), .RN(n32), .Q(bit_cnt[4]) );
  DFFRX4M \bit_cnt_reg[6]  ( .D(n9), .CK(clk), .RN(n32), .Q(bit_cnt[6]) );
  AOI21BX2M U3 ( .A0(n34), .A1(PRESCALE[2]), .B0N(n35), .Y(n2) );
  AOI21BX2M U4 ( .A0(n36), .A1(PRESCALE[4]), .B0N(n37), .Y(n17) );
  AOI21BX2M U5 ( .A0(n35), .A1(PRESCALE[3]), .B0N(n36), .Y(n22) );
  CLKINVX1M U6 ( .A(n20), .Y(n23) );
  CLKINVX1M U7 ( .A(n21), .Y(n24) );
  CLKINVX1M U8 ( .A(n18), .Y(n25) );
  CLKINVX1M U9 ( .A(n19), .Y(n26) );
  INVX2M U10 ( .A(n3), .Y(bit_cnt[3]) );
  INVXLM U11 ( .A(n52), .Y(n28) );
  INVX4M U12 ( .A(n28), .Y(edge_cnt[3]) );
  AO21X2M U13 ( .A0(n37), .A1(PRESCALE[5]), .B0(N10), .Y(N9) );
  NOR3BX2M U14 ( .AN(n48), .B(n47), .C(n46), .Y(bit_sig) );
  OAI32X2M U15 ( .A0(edge_cnt[6]), .A1(edge_cnt[7]), .A2(n41), .B0(n41), .B1(
        n49), .Y(n48) );
  OAI2B11X2M U16 ( .A1N(edge_cnt[5]), .A0(N9), .B0(n40), .C0(n39), .Y(n41) );
  AOI222X2M U17 ( .A0(edge_cnt[4]), .A1(n17), .B0(edge_cnt[2]), .B1(n2), .C0(
        edge_cnt[3]), .C1(n22), .Y(n39) );
  NOR2X2M U18 ( .A(PRESCALE[0]), .B(edge_cnt[0]), .Y(n42) );
  NOR2X2M U19 ( .A(n37), .B(PRESCALE[5]), .Y(N10) );
  OR2X2M U20 ( .A(n36), .B(PRESCALE[4]), .Y(n37) );
  OR2X2M U21 ( .A(n35), .B(PRESCALE[3]), .Y(n36) );
  OR2X2M U22 ( .A(n34), .B(PRESCALE[2]), .Y(n35) );
  INVX6M U23 ( .A(n33), .Y(n31) );
  INVX2M U24 ( .A(n33), .Y(n32) );
  INVX2M U25 ( .A(rst), .Y(n33) );
  CLKAND2X4M U26 ( .A(enable), .B(n50), .Y(n7) );
  INVX2M U27 ( .A(n30), .Y(n50) );
  AND2X2M U28 ( .A(N25), .B(n30), .Y(N50) );
  AND2X2M U29 ( .A(N26), .B(n30), .Y(N51) );
  AND2X2M U30 ( .A(N27), .B(n30), .Y(N52) );
  AND2X2M U31 ( .A(N28), .B(n30), .Y(N53) );
  AND2X2M U32 ( .A(N29), .B(n30), .Y(N54) );
  AND2X2M U33 ( .A(N30), .B(n30), .Y(N55) );
  CLKINVX1M U34 ( .A(N10), .Y(n49) );
  BUFX10M U35 ( .A(n6), .Y(n30) );
  NOR2BX1M U36 ( .AN(enable), .B(bit_sig), .Y(n6) );
  AO22X1M U37 ( .A0(bit_cnt[0]), .A1(n30), .B0(N16), .B1(n7), .Y(n15) );
  AO22X1M U38 ( .A0(n51), .A1(n30), .B0(N19), .B1(n7), .Y(n12) );
  AO22X1M U39 ( .A0(n26), .A1(n30), .B0(N18), .B1(n7), .Y(n13) );
  AO22X1M U40 ( .A0(bit_cnt[4]), .A1(n30), .B0(N20), .B1(n7), .Y(n11) );
  AO22X1M U41 ( .A0(n23), .A1(n30), .B0(N23), .B1(n7), .Y(n8) );
  AO22X1M U42 ( .A0(bit_cnt[6]), .A1(n30), .B0(N22), .B1(n7), .Y(n9) );
  AO22X1M U43 ( .A0(n24), .A1(n30), .B0(N21), .B1(n7), .Y(n10) );
  AO22X1M U44 ( .A0(n25), .A1(n30), .B0(N17), .B1(n7), .Y(n14) );
  AND2X2M U45 ( .A(N24), .B(n30), .Y(N49) );
  AND2X2M U46 ( .A(N31), .B(n30), .Y(N56) );
  OR2X2M U47 ( .A(PRESCALE[1]), .B(PRESCALE[0]), .Y(n34) );
  OAI2BB1X1M U48 ( .A0N(PRESCALE[0]), .A1N(PRESCALE[1]), .B0(n34), .Y(N5) );
  AND2X1M U49 ( .A(edge_cnt[0]), .B(PRESCALE[0]), .Y(n38) );
  OAI2B2X1M U50 ( .A1N(N5), .A0(n38), .B0(edge_cnt[1]), .B1(n38), .Y(n40) );
  OAI2B2X1M U51 ( .A1N(edge_cnt[1]), .A0(n42), .B0(N5), .B1(n42), .Y(n44) );
  OA22X1M U52 ( .A0(n22), .A1(edge_cnt[3]), .B0(n17), .B1(edge_cnt[4]), .Y(n43) );
  OAI211X1M U53 ( .A0(edge_cnt[2]), .A1(n2), .B0(n44), .C0(n43), .Y(n47) );
  AND2X1M U54 ( .A(edge_cnt[6]), .B(edge_cnt[7]), .Y(n45) );
  OAI2B2X1M U55 ( .A1N(N9), .A0(edge_cnt[5]), .B0(n45), .B1(n49), .Y(n46) );
endmodule


module PARITY_CHECKER ( clk, rst, strt_chk_en, P_DATA, SAMPLED_BIT, par_chk_en, 
        PAR_TYP, PAR_ERR );
  input [7:0] P_DATA;
  input clk, rst, strt_chk_en, SAMPLED_BIT, par_chk_en, PAR_TYP;
  output PAR_ERR;
  wire   err_ff, n2, n3, n4, n5, n6, n7, n8, n1;

  DFFRQX1M err_ff_reg ( .D(n8), .CK(clk), .RN(rst), .Q(err_ff) );
  OAI2BB2X2M U3 ( .B0(n2), .B1(n1), .A0N(err_ff), .A1N(n1), .Y(PAR_ERR) );
  NOR2BX2M U4 ( .AN(PAR_ERR), .B(strt_chk_en), .Y(n8) );
  XOR3XLM U5 ( .A(n3), .B(n4), .C(n5), .Y(n2) );
  INVX2M U6 ( .A(par_chk_en), .Y(n1) );
  XOR3XLM U7 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X1M U8 ( .A(SAMPLED_BIT), .B(PAR_TYP), .Y(n5) );
  XNOR2X2M U9 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XOR3XLM U10 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U11 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
endmodule


module START_CHECKER ( SAMPLED_START_BIT, STRT_CHECK_EN, STRT_GLITCH );
  input SAMPLED_START_BIT, STRT_CHECK_EN;
  output STRT_GLITCH;


  AND2X1M U2 ( .A(STRT_CHECK_EN), .B(SAMPLED_START_BIT), .Y(STRT_GLITCH) );
endmodule


module STOP_CHECKER ( clk, rst, strt_chk_en, SAMPLED_STOP_BIT, STOP_CHECK_EN, 
        STOP_ERR );
  input clk, rst, strt_chk_en, SAMPLED_STOP_BIT, STOP_CHECK_EN;
  output STOP_ERR;
  wire   err_ff, n2, n1;

  DFFRQX1M err_ff_reg ( .D(n2), .CK(clk), .RN(rst), .Q(err_ff) );
  NOR2BX1M U3 ( .AN(STOP_ERR), .B(strt_chk_en), .Y(n2) );
  OAI2BB2X2M U4 ( .B0(SAMPLED_STOP_BIT), .B1(n1), .A0N(err_ff), .A1N(n1), .Y(
        STOP_ERR) );
  INVX2M U5 ( .A(STOP_CHECK_EN), .Y(n1) );
endmodule


module RX_FSM ( RX_IN, clk, rst, bit_cnt, edge_cnt, par_err, strt_glitch, 
        stp_err, PAR_EN, PRESCALE, par_chk_en, strt_chk_en, stp_chk_en, enable, 
        data_valid, deser_en, dat_samp_en );
  input [7:0] bit_cnt;
  input [7:0] edge_cnt;
  input [5:0] PRESCALE;
  input RX_IN, clk, rst, par_err, strt_glitch, stp_err, PAR_EN;
  output par_chk_en, strt_chk_en, stp_chk_en, enable, data_valid, deser_en,
         dat_samp_en;
  wire   N35, N39, N40, N41, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  NOR4BX4M U24 ( .AN(n29), .B(bit_cnt[0]), .C(n47), .D(n46), .Y(n19) );
  NOR3X12M U31 ( .A(current_state[0]), .B(current_state[2]), .C(n43), .Y(n18)
         );
  DFFRQX4M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  DFFRX4M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst), .Q(
        current_state[1]), .QN(n43) );
  DFFRX4M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .Q(
        current_state[0]), .QN(n42) );
  AOI21BX2M U3 ( .A0(n5), .A1(PRESCALE[2]), .B0N(n6), .Y(n1) );
  AOI21BX2M U4 ( .A0(n7), .A1(PRESCALE[4]), .B0N(n8), .Y(n2) );
  AOI21BX2M U5 ( .A0(n6), .A1(PRESCALE[3]), .B0N(n7), .Y(n3) );
  NOR3X6M U6 ( .A(bit_cnt[4]), .B(bit_cnt[2]), .C(n32), .Y(n29) );
  OR3X2M U7 ( .A(bit_cnt[7]), .B(bit_cnt[6]), .C(bit_cnt[5]), .Y(n32) );
  NOR3X6M U8 ( .A(n42), .B(current_state[2]), .C(n43), .Y(n24) );
  NAND3X4M U9 ( .A(n42), .B(n43), .C(current_state[2]), .Y(n15) );
  OAI32X2M U10 ( .A0(n31), .A1(n46), .A2(n47), .B0(PAR_EN), .B1(n44), .Y(n16)
         );
  NOR3BX2M U11 ( .AN(n38), .B(n37), .C(n36), .Y(N41) );
  AO21X2M U12 ( .A0(n8), .A1(PRESCALE[5]), .B0(N40), .Y(N39) );
  OAI32X2M U13 ( .A0(edge_cnt[6]), .A1(edge_cnt[7]), .A2(n12), .B0(n12), .B1(
        n39), .Y(n38) );
  OAI2B11X2M U14 ( .A1N(edge_cnt[5]), .A0(N39), .B0(n11), .C0(n10), .Y(n12) );
  AOI222X2M U15 ( .A0(edge_cnt[4]), .A1(n2), .B0(edge_cnt[2]), .B1(n1), .C0(
        edge_cnt[3]), .C1(n3), .Y(n10) );
  BUFX2M U16 ( .A(n16), .Y(n4) );
  NOR2X2M U17 ( .A(PRESCALE[0]), .B(edge_cnt[0]), .Y(n13) );
  NOR2X2M U18 ( .A(n8), .B(PRESCALE[5]), .Y(N40) );
  OR2X2M U19 ( .A(n7), .B(PRESCALE[4]), .Y(n8) );
  OR2X2M U20 ( .A(n6), .B(PRESCALE[3]), .Y(n7) );
  OR2X2M U21 ( .A(n5), .B(PRESCALE[2]), .Y(n6) );
  NOR2BX4M U22 ( .AN(n22), .B(n23), .Y(strt_chk_en) );
  NOR3X6M U23 ( .A(current_state[1]), .B(current_state[2]), .C(n42), .Y(n22)
         );
  NOR2X2M U25 ( .A(n41), .B(n44), .Y(par_chk_en) );
  OAI21X2M U26 ( .A0(n15), .A1(n4), .B0(n30), .Y(enable) );
  INVX2M U27 ( .A(n19), .Y(n44) );
  NOR3X4M U28 ( .A(n24), .B(n22), .C(n18), .Y(n30) );
  NAND2BX2M U29 ( .AN(n15), .B(n4), .Y(n14) );
  NAND2X2M U30 ( .A(n30), .B(n15), .Y(dat_samp_en) );
  INVX2M U32 ( .A(n24), .Y(n41) );
  NAND2X2M U33 ( .A(n28), .B(n47), .Y(n23) );
  INVX2M U34 ( .A(n21), .Y(n45) );
  CLKINVX1M U35 ( .A(N40), .Y(n39) );
  OAI2B11X2M U36 ( .A1N(n25), .A0(RX_IN), .B0(n26), .C0(n27), .Y(next_state[0]) );
  NAND3X2M U37 ( .A(n45), .B(PAR_EN), .C(n18), .Y(n26) );
  AOI22X1M U38 ( .A0(n22), .A1(n23), .B0(n24), .B1(n44), .Y(n27) );
  OAI31X2M U39 ( .A0(current_state[1]), .A1(current_state[2]), .A2(
        current_state[0]), .B0(n14), .Y(n25) );
  AND2X1M U40 ( .A(N41), .B(n18), .Y(deser_en) );
  NAND3X2M U41 ( .A(bit_cnt[0]), .B(n29), .C(PAR_EN), .Y(n31) );
  AOI211X2M U42 ( .A0(par_err), .A1(PAR_EN), .B0(n14), .C0(stp_err), .Y(
        data_valid) );
  INVX2M U43 ( .A(n14), .Y(stp_chk_en) );
  INVX2M U44 ( .A(bit_cnt[3]), .Y(n47) );
  INVX2M U45 ( .A(bit_cnt[1]), .Y(n46) );
  OAI221X1M U46 ( .A0(n19), .A1(n41), .B0(strt_glitch), .B1(n40), .C0(n20), 
        .Y(next_state[1]) );
  OAI21X2M U47 ( .A0(PAR_EN), .A1(n21), .B0(n18), .Y(n20) );
  INVX2M U48 ( .A(strt_chk_en), .Y(n40) );
  OAI21X1M U49 ( .A0(n15), .A1(n4), .B0(n17), .Y(next_state[2]) );
  AOI31X2M U50 ( .A0(n45), .A1(n48), .A2(n18), .B0(par_chk_en), .Y(n17) );
  INVX2M U51 ( .A(PAR_EN), .Y(n48) );
  AND3X2M U52 ( .A(n29), .B(n46), .C(bit_cnt[0]), .Y(n28) );
  NAND2X2M U53 ( .A(bit_cnt[3]), .B(n28), .Y(n21) );
  OR2X2M U54 ( .A(PRESCALE[1]), .B(PRESCALE[0]), .Y(n5) );
  OAI2BB1X1M U55 ( .A0N(PRESCALE[0]), .A1N(PRESCALE[1]), .B0(n5), .Y(N35) );
  AND2X1M U56 ( .A(edge_cnt[0]), .B(PRESCALE[0]), .Y(n9) );
  OAI2B2X1M U57 ( .A1N(N35), .A0(n9), .B0(edge_cnt[1]), .B1(n9), .Y(n11) );
  OAI2B2X1M U58 ( .A1N(edge_cnt[1]), .A0(n13), .B0(N35), .B1(n13), .Y(n34) );
  OA22X1M U59 ( .A0(n3), .A1(edge_cnt[3]), .B0(n2), .B1(edge_cnt[4]), .Y(n33)
         );
  OAI211X1M U60 ( .A0(edge_cnt[2]), .A1(n1), .B0(n34), .C0(n33), .Y(n37) );
  AND2X1M U61 ( .A(edge_cnt[6]), .B(edge_cnt[7]), .Y(n35) );
  OAI2B2X1M U62 ( .A1N(N39), .A0(edge_cnt[5]), .B0(n35), .B1(n39), .Y(n36) );
endmodule


module UART_RX_TOP ( clk, rst, PRESCALE, RX_IN, PAR_EN, PAR_TYP, P_DATA, 
        data_valid, par_err, stp_err );
  input [5:0] PRESCALE;
  output [7:0] P_DATA;
  input clk, rst, RX_IN, PAR_EN, PAR_TYP;
  output data_valid, par_err, stp_err;
  wire   dat_samp_en, sampled_bit, deser_en, enable, strt_chk_en, par_chk_en,
         strt_glitch, stp_chk_en, n1, n2;
  wire   [7:0] edge_cnt;
  wire   [7:0] bit_cnt;

  DATA_SAMPLING_OVERSAMPLE3 u_DATA_SAMPLING ( .RX_IN(RX_IN), .DAT_SAMP_EN(
        dat_samp_en), .PRESCALE(PRESCALE), .EDGE_CNT(edge_cnt[5:0]), .clk(clk), 
        .rst(n1), .SAMPLED_BIT(sampled_bit) );
  DESERIALIZER u_DESERIALIZER ( .SAMPLED_BIT(sampled_bit), .DESER_EN(deser_en), 
        .clk(clk), .rst(n1), .P_DATA(P_DATA) );
  EDGE_COUNTER u_EDGE_COUNTER ( .clk(clk), .rst(n1), .enable(enable), 
        .PRESCALE(PRESCALE), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt) );
  PARITY_CHECKER u_PARITY_CHECKER ( .clk(clk), .rst(n1), .strt_chk_en(
        strt_chk_en), .P_DATA(P_DATA), .SAMPLED_BIT(sampled_bit), .par_chk_en(
        par_chk_en), .PAR_TYP(PAR_TYP), .PAR_ERR(par_err) );
  START_CHECKER u_START_CHECKER ( .SAMPLED_START_BIT(sampled_bit), 
        .STRT_CHECK_EN(strt_chk_en), .STRT_GLITCH(strt_glitch) );
  STOP_CHECKER u_STOP_CHECKER ( .clk(clk), .rst(n1), .strt_chk_en(strt_chk_en), 
        .SAMPLED_STOP_BIT(sampled_bit), .STOP_CHECK_EN(stp_chk_en), .STOP_ERR(
        stp_err) );
  RX_FSM u_RX_FSM ( .RX_IN(RX_IN), .clk(clk), .rst(n1), .bit_cnt(bit_cnt), 
        .edge_cnt(edge_cnt), .par_err(par_err), .strt_glitch(strt_glitch), 
        .stp_err(stp_err), .PAR_EN(PAR_EN), .PRESCALE(PRESCALE), .par_chk_en(
        par_chk_en), .strt_chk_en(strt_chk_en), .stp_chk_en(stp_chk_en), 
        .enable(enable), .data_valid(data_valid), .deser_en(deser_en), 
        .dat_samp_en(dat_samp_en) );
  INVX4M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
endmodule


module DATA_SYNC_STAGES2_BUS_WIDTH8 ( CLK, RST, UNSYNC_BUS, bus_enable, 
        sync_bus, enable_pulse );
  input [7:0] UNSYNC_BUS;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable;
  output enable_pulse;
  wire   en_out_del, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [1:0] shift_reg;

  DFFRQX2M en_out_del_reg ( .D(shift_reg[1]), .CK(CLK), .RN(n11), .Q(
        en_out_del) );
  DFFRQX2M \shift_reg_reg[1]  ( .D(shift_reg[0]), .CK(CLK), .RN(n11), .Q(
        shift_reg[1]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(n11), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(n11), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(n11), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(n11), .Q(sync_bus[6]) );
  DFFRQX4M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(n11), .Q(sync_bus[4]) );
  DFFRQX4M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(n11), .Q(sync_bus[0]) );
  DFFRQX2M enable_pulse_reg ( .D(n13), .CK(CLK), .RN(n11), .Q(enable_pulse) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(n11), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(n11), .Q(sync_bus[2]) );
  DFFRQX2M \shift_reg_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(n11), .Q(
        shift_reg[0]) );
  INVX4M U3 ( .A(n1), .Y(n13) );
  BUFX4M U4 ( .A(n1), .Y(n10) );
  INVX6M U5 ( .A(n12), .Y(n11) );
  INVX2M U6 ( .A(RST), .Y(n12) );
  NAND2BX2M U7 ( .AN(en_out_del), .B(shift_reg[1]), .Y(n1) );
  AO22X1M U8 ( .A0(UNSYNC_BUS[0]), .A1(n13), .B0(sync_bus[0]), .B1(n10), .Y(n2) );
  AO22X1M U9 ( .A0(UNSYNC_BUS[4]), .A1(n13), .B0(sync_bus[4]), .B1(n10), .Y(n6) );
  AO22X1M U10 ( .A0(UNSYNC_BUS[2]), .A1(n13), .B0(sync_bus[2]), .B1(n10), .Y(
        n4) );
  AO22X1M U11 ( .A0(UNSYNC_BUS[3]), .A1(n13), .B0(sync_bus[3]), .B1(n10), .Y(
        n5) );
  AO22X1M U12 ( .A0(UNSYNC_BUS[6]), .A1(n13), .B0(sync_bus[6]), .B1(n10), .Y(
        n8) );
  AO22X1M U13 ( .A0(UNSYNC_BUS[5]), .A1(n13), .B0(sync_bus[5]), .B1(n10), .Y(
        n7) );
  AO22X1M U14 ( .A0(UNSYNC_BUS[1]), .A1(n13), .B0(sync_bus[1]), .B1(n10), .Y(
        n3) );
  AO22X1M U15 ( .A0(UNSYNC_BUS[7]), .A1(n13), .B0(sync_bus[7]), .B1(n10), .Y(
        n9) );
endmodule


module RESET_SYNC_STAGES2_2 ( clk, async_rst_n, sync_rst_n );
  input clk, async_rst_n;
  output sync_rst_n;
  wire   \shift_reg[0] ;

  DFFRQX2M \shift_reg_reg[1]  ( .D(\shift_reg[0] ), .CK(clk), .RN(async_rst_n), 
        .Q(sync_rst_n) );
  DFFRQX2M \shift_reg_reg[0]  ( .D(1'b1), .CK(clk), .RN(async_rst_n), .Q(
        \shift_reg[0] ) );
endmodule


module RESET_SYNC_STAGES2_1 ( clk, async_rst_n, sync_rst_n );
  input clk, async_rst_n;
  output sync_rst_n;
  wire   n3, \shift_reg[0] , n1;

  DFFRQX1M \shift_reg_reg[0]  ( .D(1'b1), .CK(clk), .RN(async_rst_n), .Q(
        \shift_reg[0] ) );
  DFFRQX1M \shift_reg_reg[1]  ( .D(\shift_reg[0] ), .CK(clk), .RN(async_rst_n), 
        .Q(n3) );
  INVXLM U3 ( .A(n3), .Y(n1) );
  INVX8M U4 ( .A(n1), .Y(sync_rst_n) );
endmodule


module FIFO_WR_ADDR8 ( wclk, wrst_n, winc, wq2_rptr_bin, wptr_bin, waddr, 
        wfull );
  input [3:0] wq2_rptr_bin;
  output [3:0] wptr_bin;
  output [2:0] waddr;
  input wclk, wrst_n, winc;
  output wfull;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n18;

  DFFRQX4M \wptr_bin_reg[2]  ( .D(n12), .CK(wclk), .RN(n18), .Q(waddr[2]) );
  DFFRQX2M \wptr_bin_reg[3]  ( .D(n11), .CK(wclk), .RN(n18), .Q(wptr_bin[3])
         );
  DFFRQX4M \wptr_bin_reg[1]  ( .D(n13), .CK(wclk), .RN(n18), .Q(waddr[1]) );
  DFFRX4M \wptr_bin_reg[0]  ( .D(n14), .CK(wclk), .RN(n18), .Q(waddr[0]), .QN(
        n1) );
  INVX2M U3 ( .A(n2), .Y(wfull) );
  NAND2X2M U4 ( .A(winc), .B(n2), .Y(n6) );
  BUFX2M U5 ( .A(wrst_n), .Y(n18) );
  CLKXOR2X2M U6 ( .A(n1), .B(wq2_rptr_bin[0]), .Y(n8) );
  NOR2X2M U7 ( .A(n6), .B(n1), .Y(n5) );
  XNOR2X2M U8 ( .A(wptr_bin[3]), .B(n3), .Y(n11) );
  NAND2BX2M U9 ( .AN(n4), .B(waddr[2]), .Y(n3) );
  XNOR2X2M U10 ( .A(waddr[2]), .B(n4), .Y(n12) );
  NAND4X2M U11 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n2) );
  CLKXOR2X2M U12 ( .A(wq2_rptr_bin[3]), .B(wptr_bin[3]), .Y(n10) );
  XNOR2X2M U13 ( .A(waddr[2]), .B(wq2_rptr_bin[2]), .Y(n9) );
  XNOR2X2M U14 ( .A(waddr[1]), .B(wq2_rptr_bin[1]), .Y(n7) );
  NAND2X2M U15 ( .A(n5), .B(waddr[1]), .Y(n4) );
  CLKXOR2X2M U16 ( .A(waddr[1]), .B(n5), .Y(n13) );
  CLKXOR2X2M U17 ( .A(n1), .B(n6), .Y(n14) );
  BUFX2M U18 ( .A(waddr[2]), .Y(wptr_bin[2]) );
  BUFX2M U19 ( .A(waddr[1]), .Y(wptr_bin[1]) );
  BUFX2M U20 ( .A(waddr[0]), .Y(wptr_bin[0]) );
endmodule


module B2G_DATA_WIDTH4_0 ( BIN_DATA, GRAY_DATA );
  input [3:0] BIN_DATA;
  output [3:0] GRAY_DATA;


  CLKXOR2X2M U1 ( .A(BIN_DATA[2]), .B(BIN_DATA[1]), .Y(GRAY_DATA[1]) );
  CLKXOR2X2M U2 ( .A(BIN_DATA[3]), .B(BIN_DATA[2]), .Y(GRAY_DATA[2]) );
  CLKXOR2X2M U3 ( .A(BIN_DATA[1]), .B(BIN_DATA[0]), .Y(GRAY_DATA[0]) );
  BUFX2M U4 ( .A(BIN_DATA[3]), .Y(GRAY_DATA[3]) );
endmodule


module DFFS_STAGES2_DATA_WIDTH4_0 ( clk, rst, DATA_IN, DATA_OUT );
  input [3:0] DATA_IN;
  output [3:0] DATA_OUT;
  input clk, rst;
  wire   \shift_reg[3][0] , \shift_reg[2][0] , \shift_reg[1][0] ,
         \shift_reg[0][0] , n1, n2;

  DFFRQX2M \shift_reg_reg[2][1]  ( .D(\shift_reg[2][0] ), .CK(clk), .RN(n1), 
        .Q(DATA_OUT[2]) );
  DFFRQX2M \shift_reg_reg[0][1]  ( .D(\shift_reg[0][0] ), .CK(clk), .RN(n1), 
        .Q(DATA_OUT[0]) );
  DFFRQX2M \shift_reg_reg[1][1]  ( .D(\shift_reg[1][0] ), .CK(clk), .RN(n1), 
        .Q(DATA_OUT[1]) );
  DFFRQX2M \shift_reg_reg[3][1]  ( .D(\shift_reg[3][0] ), .CK(clk), .RN(n1), 
        .Q(DATA_OUT[3]) );
  DFFRQX2M \shift_reg_reg[3][0]  ( .D(DATA_IN[3]), .CK(clk), .RN(n1), .Q(
        \shift_reg[3][0] ) );
  DFFRQX2M \shift_reg_reg[2][0]  ( .D(DATA_IN[2]), .CK(clk), .RN(n1), .Q(
        \shift_reg[2][0] ) );
  DFFRQX2M \shift_reg_reg[1][0]  ( .D(DATA_IN[1]), .CK(clk), .RN(n1), .Q(
        \shift_reg[1][0] ) );
  DFFRQX2M \shift_reg_reg[0][0]  ( .D(DATA_IN[0]), .CK(clk), .RN(n1), .Q(
        \shift_reg[0][0] ) );
  INVX4M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(rst), .Y(n2) );
endmodule


module G2B_DATA_WIDTH4_0 ( GRAY_DATA, BIN_DATA );
  input [3:0] GRAY_DATA;
  output [3:0] BIN_DATA;


  CLKXOR2X2M U1 ( .A(BIN_DATA[2]), .B(GRAY_DATA[1]), .Y(BIN_DATA[1]) );
  CLKXOR2X2M U2 ( .A(GRAY_DATA[2]), .B(GRAY_DATA[3]), .Y(BIN_DATA[2]) );
  CLKXOR2X2M U3 ( .A(GRAY_DATA[0]), .B(BIN_DATA[1]), .Y(BIN_DATA[0]) );
  BUFX2M U4 ( .A(GRAY_DATA[3]), .Y(BIN_DATA[3]) );
endmodule


module FIFO_RD_ADDR8 ( rclk, rrst_n, rinc, rq2_wptr_bin, rptr_bin, raddr, 
        rempty );
  input [3:0] rq2_wptr_bin;
  output [3:0] rptr_bin;
  output [2:0] raddr;
  input rclk, rrst_n, rinc;
  output rempty;
  wire   n20, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n1, n19
;

  DFFRQX4M \rptr_bin_reg[0]  ( .D(n14), .CK(rclk), .RN(rrst_n), .Q(raddr[0])
         );
  DFFRQX2M \rptr_bin_reg[3]  ( .D(n11), .CK(rclk), .RN(rrst_n), .Q(rptr_bin[3]) );
  DFFRQX4M \rptr_bin_reg[2]  ( .D(n12), .CK(rclk), .RN(rrst_n), .Q(raddr[2])
         );
  DFFRQX1M \rptr_bin_reg[1]  ( .D(n13), .CK(rclk), .RN(rrst_n), .Q(n20) );
  INVXLM U3 ( .A(n20), .Y(n1) );
  INVX4M U4 ( .A(n1), .Y(raddr[1]) );
  INVX2M U5 ( .A(n2), .Y(rempty) );
  XNOR2X2M U6 ( .A(raddr[0]), .B(rq2_wptr_bin[0]), .Y(n8) );
  NAND4X2M U7 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n2) );
  XNOR2X2M U8 ( .A(rptr_bin[3]), .B(rq2_wptr_bin[3]), .Y(n9) );
  XNOR2X2M U9 ( .A(raddr[2]), .B(rq2_wptr_bin[2]), .Y(n10) );
  XNOR2X2M U10 ( .A(raddr[1]), .B(rq2_wptr_bin[1]), .Y(n7) );
  NOR2X2M U11 ( .A(n6), .B(n19), .Y(n5) );
  INVX2M U12 ( .A(raddr[0]), .Y(n19) );
  CLKXOR2X2M U13 ( .A(raddr[1]), .B(n5), .Y(n13) );
  XNOR2X2M U14 ( .A(raddr[2]), .B(n4), .Y(n12) );
  XNOR2X2M U15 ( .A(raddr[0]), .B(n6), .Y(n14) );
  NAND2X2M U16 ( .A(n5), .B(raddr[1]), .Y(n4) );
  NAND2X2M U17 ( .A(rinc), .B(n2), .Y(n6) );
  XNOR2X2M U18 ( .A(rptr_bin[3]), .B(n3), .Y(n11) );
  NAND2BX2M U19 ( .AN(n4), .B(raddr[2]), .Y(n3) );
  BUFX2M U20 ( .A(raddr[2]), .Y(rptr_bin[2]) );
  BUFX2M U21 ( .A(raddr[1]), .Y(rptr_bin[1]) );
  BUFX2M U22 ( .A(raddr[0]), .Y(rptr_bin[0]) );
endmodule


module B2G_DATA_WIDTH4_1 ( BIN_DATA, GRAY_DATA );
  input [3:0] BIN_DATA;
  output [3:0] GRAY_DATA;


  CLKXOR2X2M U1 ( .A(BIN_DATA[2]), .B(BIN_DATA[1]), .Y(GRAY_DATA[1]) );
  CLKXOR2X2M U2 ( .A(BIN_DATA[3]), .B(BIN_DATA[2]), .Y(GRAY_DATA[2]) );
  CLKXOR2X2M U3 ( .A(BIN_DATA[1]), .B(BIN_DATA[0]), .Y(GRAY_DATA[0]) );
  BUFX2M U4 ( .A(BIN_DATA[3]), .Y(GRAY_DATA[3]) );
endmodule


module DFFS_STAGES2_DATA_WIDTH4_1 ( clk, rst, DATA_IN, DATA_OUT );
  input [3:0] DATA_IN;
  output [3:0] DATA_OUT;
  input clk, rst;
  wire   \shift_reg[3][0] , \shift_reg[2][0] , \shift_reg[1][0] ,
         \shift_reg[0][0] ;

  DFFRQX1M \shift_reg_reg[2][1]  ( .D(\shift_reg[2][0] ), .CK(clk), .RN(rst), 
        .Q(DATA_OUT[2]) );
  DFFRQX1M \shift_reg_reg[0][1]  ( .D(\shift_reg[0][0] ), .CK(clk), .RN(rst), 
        .Q(DATA_OUT[0]) );
  DFFRQX1M \shift_reg_reg[1][1]  ( .D(\shift_reg[1][0] ), .CK(clk), .RN(rst), 
        .Q(DATA_OUT[1]) );
  DFFRQX1M \shift_reg_reg[3][1]  ( .D(\shift_reg[3][0] ), .CK(clk), .RN(rst), 
        .Q(DATA_OUT[3]) );
  DFFRQX1M \shift_reg_reg[3][0]  ( .D(DATA_IN[3]), .CK(clk), .RN(rst), .Q(
        \shift_reg[3][0] ) );
  DFFRQX1M \shift_reg_reg[2][0]  ( .D(DATA_IN[2]), .CK(clk), .RN(rst), .Q(
        \shift_reg[2][0] ) );
  DFFRQX1M \shift_reg_reg[1][0]  ( .D(DATA_IN[1]), .CK(clk), .RN(rst), .Q(
        \shift_reg[1][0] ) );
  DFFRQX1M \shift_reg_reg[0][0]  ( .D(DATA_IN[0]), .CK(clk), .RN(rst), .Q(
        \shift_reg[0][0] ) );
endmodule


module G2B_DATA_WIDTH4_1 ( GRAY_DATA, BIN_DATA );
  input [3:0] GRAY_DATA;
  output [3:0] BIN_DATA;


  CLKXOR2X2M U1 ( .A(BIN_DATA[2]), .B(GRAY_DATA[1]), .Y(BIN_DATA[1]) );
  CLKXOR2X2M U2 ( .A(GRAY_DATA[2]), .B(GRAY_DATA[3]), .Y(BIN_DATA[2]) );
  CLKXOR2X2M U3 ( .A(GRAY_DATA[0]), .B(BIN_DATA[1]), .Y(BIN_DATA[0]) );
  BUFX2M U4 ( .A(GRAY_DATA[3]), .Y(BIN_DATA[3]) );
endmodule


module FIFO_MEM_DATA_WIDTH8_ADDR8 ( wclk, wrst_n, winc, wfull, waddr, raddr, 
        wdata, rdata );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wrst_n, winc, wfull;
  wire   N9, N10, N11, \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] ,
         \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] ,
         \mem[3][7] , \mem[3][6] , \mem[3][5] , \mem[3][4] , \mem[3][3] ,
         \mem[3][2] , \mem[3][1] , \mem[3][0] , \mem[4][7] , \mem[4][6] ,
         \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] , \mem[4][1] ,
         \mem[4][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] ,
         \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , n13,
         n15, n17, n19, n20, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n16, n18, n21, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154;
  assign N9 = raddr[0];
  assign N10 = raddr[1];
  assign N11 = raddr[2];

  DFFRQX2M \mem_reg[0][7]  ( .D(n85), .CK(wclk), .RN(n137), .Q(\mem[0][7] ) );
  DFFRQX2M \mem_reg[0][6]  ( .D(n84), .CK(wclk), .RN(n137), .Q(\mem[0][6] ) );
  DFFRQX2M \mem_reg[0][5]  ( .D(n83), .CK(wclk), .RN(n137), .Q(\mem[0][5] ) );
  DFFRQX2M \mem_reg[0][4]  ( .D(n82), .CK(wclk), .RN(n137), .Q(\mem[0][4] ) );
  DFFRQX2M \mem_reg[0][3]  ( .D(n81), .CK(wclk), .RN(n137), .Q(\mem[0][3] ) );
  DFFRQX2M \mem_reg[0][2]  ( .D(n80), .CK(wclk), .RN(n137), .Q(\mem[0][2] ) );
  DFFRQX2M \mem_reg[0][1]  ( .D(n79), .CK(wclk), .RN(n137), .Q(\mem[0][1] ) );
  DFFRQX2M \mem_reg[0][0]  ( .D(n78), .CK(wclk), .RN(n137), .Q(\mem[0][0] ) );
  DFFRQX2M \mem_reg[1][7]  ( .D(n77), .CK(wclk), .RN(n137), .Q(\mem[1][7] ) );
  DFFRQX2M \mem_reg[1][6]  ( .D(n76), .CK(wclk), .RN(n137), .Q(\mem[1][6] ) );
  DFFRQX2M \mem_reg[1][5]  ( .D(n75), .CK(wclk), .RN(n137), .Q(\mem[1][5] ) );
  DFFRQX2M \mem_reg[1][4]  ( .D(n74), .CK(wclk), .RN(n137), .Q(\mem[1][4] ) );
  DFFRQX2M \mem_reg[1][3]  ( .D(n73), .CK(wclk), .RN(n138), .Q(\mem[1][3] ) );
  DFFRQX2M \mem_reg[1][2]  ( .D(n72), .CK(wclk), .RN(n138), .Q(\mem[1][2] ) );
  DFFRQX2M \mem_reg[1][1]  ( .D(n71), .CK(wclk), .RN(n138), .Q(\mem[1][1] ) );
  DFFRQX2M \mem_reg[1][0]  ( .D(n70), .CK(wclk), .RN(n138), .Q(\mem[1][0] ) );
  DFFRQX2M \mem_reg[4][7]  ( .D(n53), .CK(wclk), .RN(n139), .Q(\mem[4][7] ) );
  DFFRQX2M \mem_reg[4][6]  ( .D(n52), .CK(wclk), .RN(n139), .Q(\mem[4][6] ) );
  DFFRQX2M \mem_reg[4][5]  ( .D(n51), .CK(wclk), .RN(n139), .Q(\mem[4][5] ) );
  DFFRQX2M \mem_reg[4][4]  ( .D(n50), .CK(wclk), .RN(n139), .Q(\mem[4][4] ) );
  DFFRQX2M \mem_reg[4][3]  ( .D(n49), .CK(wclk), .RN(n140), .Q(\mem[4][3] ) );
  DFFRQX2M \mem_reg[4][2]  ( .D(n48), .CK(wclk), .RN(n140), .Q(\mem[4][2] ) );
  DFFRQX2M \mem_reg[4][1]  ( .D(n47), .CK(wclk), .RN(n140), .Q(\mem[4][1] ) );
  DFFRQX2M \mem_reg[4][0]  ( .D(n46), .CK(wclk), .RN(n140), .Q(\mem[4][0] ) );
  DFFRQX2M \mem_reg[5][7]  ( .D(n45), .CK(wclk), .RN(n140), .Q(\mem[5][7] ) );
  DFFRQX2M \mem_reg[5][6]  ( .D(n44), .CK(wclk), .RN(n140), .Q(\mem[5][6] ) );
  DFFRQX2M \mem_reg[5][5]  ( .D(n43), .CK(wclk), .RN(n140), .Q(\mem[5][5] ) );
  DFFRQX2M \mem_reg[5][4]  ( .D(n42), .CK(wclk), .RN(n140), .Q(\mem[5][4] ) );
  DFFRQX2M \mem_reg[5][3]  ( .D(n41), .CK(wclk), .RN(n140), .Q(\mem[5][3] ) );
  DFFRQX2M \mem_reg[5][2]  ( .D(n40), .CK(wclk), .RN(n140), .Q(\mem[5][2] ) );
  DFFRQX2M \mem_reg[5][1]  ( .D(n39), .CK(wclk), .RN(n140), .Q(\mem[5][1] ) );
  DFFRQX2M \mem_reg[5][0]  ( .D(n38), .CK(wclk), .RN(n140), .Q(\mem[5][0] ) );
  DFFRQX2M \mem_reg[6][7]  ( .D(n37), .CK(wclk), .RN(n141), .Q(\mem[6][7] ) );
  DFFRQX2M \mem_reg[6][6]  ( .D(n36), .CK(wclk), .RN(n141), .Q(\mem[6][6] ) );
  DFFRQX2M \mem_reg[6][5]  ( .D(n35), .CK(wclk), .RN(n141), .Q(\mem[6][5] ) );
  DFFRQX2M \mem_reg[6][4]  ( .D(n34), .CK(wclk), .RN(n141), .Q(\mem[6][4] ) );
  DFFRQX2M \mem_reg[6][3]  ( .D(n33), .CK(wclk), .RN(n141), .Q(\mem[6][3] ) );
  DFFRQX2M \mem_reg[6][2]  ( .D(n32), .CK(wclk), .RN(n141), .Q(\mem[6][2] ) );
  DFFRQX2M \mem_reg[6][1]  ( .D(n31), .CK(wclk), .RN(n141), .Q(\mem[6][1] ) );
  DFFRQX2M \mem_reg[6][0]  ( .D(n30), .CK(wclk), .RN(n141), .Q(\mem[6][0] ) );
  DFFRQX2M \mem_reg[7][7]  ( .D(n29), .CK(wclk), .RN(n141), .Q(\mem[7][7] ) );
  DFFRQX2M \mem_reg[7][6]  ( .D(n28), .CK(wclk), .RN(n141), .Q(\mem[7][6] ) );
  DFFRQX2M \mem_reg[7][5]  ( .D(n27), .CK(wclk), .RN(n141), .Q(\mem[7][5] ) );
  DFFRQX2M \mem_reg[7][4]  ( .D(n26), .CK(wclk), .RN(n141), .Q(\mem[7][4] ) );
  DFFRQX2M \mem_reg[7][3]  ( .D(n25), .CK(wclk), .RN(n142), .Q(\mem[7][3] ) );
  DFFRQX2M \mem_reg[7][2]  ( .D(n24), .CK(wclk), .RN(n142), .Q(\mem[7][2] ) );
  DFFRQX2M \mem_reg[7][1]  ( .D(n23), .CK(wclk), .RN(n142), .Q(\mem[7][1] ) );
  DFFRQX2M \mem_reg[7][0]  ( .D(n22), .CK(wclk), .RN(n142), .Q(\mem[7][0] ) );
  DFFRQX2M \mem_reg[2][7]  ( .D(n69), .CK(wclk), .RN(n138), .Q(\mem[2][7] ) );
  DFFRQX2M \mem_reg[2][6]  ( .D(n68), .CK(wclk), .RN(n138), .Q(\mem[2][6] ) );
  DFFRQX2M \mem_reg[2][5]  ( .D(n67), .CK(wclk), .RN(n138), .Q(\mem[2][5] ) );
  DFFRQX2M \mem_reg[2][4]  ( .D(n66), .CK(wclk), .RN(n138), .Q(\mem[2][4] ) );
  DFFRQX2M \mem_reg[2][3]  ( .D(n65), .CK(wclk), .RN(n138), .Q(\mem[2][3] ) );
  DFFRQX2M \mem_reg[2][2]  ( .D(n64), .CK(wclk), .RN(n138), .Q(\mem[2][2] ) );
  DFFRQX2M \mem_reg[2][1]  ( .D(n63), .CK(wclk), .RN(n138), .Q(\mem[2][1] ) );
  DFFRQX2M \mem_reg[2][0]  ( .D(n62), .CK(wclk), .RN(n138), .Q(\mem[2][0] ) );
  DFFRQX2M \mem_reg[3][7]  ( .D(n61), .CK(wclk), .RN(n139), .Q(\mem[3][7] ) );
  DFFRQX2M \mem_reg[3][6]  ( .D(n60), .CK(wclk), .RN(n139), .Q(\mem[3][6] ) );
  DFFRQX2M \mem_reg[3][5]  ( .D(n59), .CK(wclk), .RN(n139), .Q(\mem[3][5] ) );
  DFFRQX2M \mem_reg[3][4]  ( .D(n58), .CK(wclk), .RN(n139), .Q(\mem[3][4] ) );
  DFFRQX2M \mem_reg[3][3]  ( .D(n57), .CK(wclk), .RN(n139), .Q(\mem[3][3] ) );
  DFFRQX2M \mem_reg[3][2]  ( .D(n56), .CK(wclk), .RN(n139), .Q(\mem[3][2] ) );
  DFFRQX2M \mem_reg[3][1]  ( .D(n55), .CK(wclk), .RN(n139), .Q(\mem[3][1] ) );
  DFFRQX2M \mem_reg[3][0]  ( .D(n54), .CK(wclk), .RN(n139), .Q(\mem[3][0] ) );
  NAND3XLM U2 ( .A(waddr[0]), .B(n13), .C(waddr[1]), .Y(n20) );
  AND3X1M U3 ( .A(n15), .B(waddr[0]), .C(waddr[1]), .Y(n6) );
  OAI22X4M U4 ( .A0(n111), .A1(n114), .B0(n115), .B1(n110), .Y(rdata[7]) );
  AOI221X2M U5 ( .A0(\mem[4][7] ), .A1(n116), .B0(\mem[6][7] ), .B1(n118), 
        .C0(n107), .Y(n110) );
  AOI221X2M U6 ( .A0(\mem[5][7] ), .A1(n116), .B0(\mem[7][7] ), .B1(n118), 
        .C0(n104), .Y(n111) );
  OAI22X4M U7 ( .A0(n114), .A1(n10), .B0(n115), .B1(n9), .Y(rdata[0]) );
  AOI221X2M U8 ( .A0(\mem[4][0] ), .A1(n117), .B0(\mem[6][0] ), .B1(n118), 
        .C0(n8), .Y(n9) );
  AOI221X2M U9 ( .A0(\mem[5][0] ), .A1(n117), .B0(\mem[7][0] ), .B1(n118), 
        .C0(n7), .Y(n10) );
  OAI22X4M U10 ( .A0(n114), .A1(n91), .B0(n115), .B1(n90), .Y(rdata[3]) );
  AOI221X2M U11 ( .A0(\mem[4][3] ), .A1(n117), .B0(\mem[6][3] ), .B1(n118), 
        .C0(n89), .Y(n90) );
  AOI221X2M U12 ( .A0(\mem[5][3] ), .A1(n117), .B0(\mem[7][3] ), .B1(n118), 
        .C0(n88), .Y(n91) );
  OAI22X4M U13 ( .A0(n114), .A1(n87), .B0(n115), .B1(n86), .Y(rdata[2]) );
  AOI221X2M U14 ( .A0(\mem[4][2] ), .A1(n117), .B0(\mem[6][2] ), .B1(n118), 
        .C0(n21), .Y(n86) );
  AOI221X2M U15 ( .A0(\mem[5][2] ), .A1(n117), .B0(\mem[7][2] ), .B1(n118), 
        .C0(n18), .Y(n87) );
  OAI22X4M U16 ( .A0(n114), .A1(n103), .B0(n115), .B1(n102), .Y(rdata[6]) );
  AOI221X2M U17 ( .A0(\mem[4][6] ), .A1(n116), .B0(\mem[6][6] ), .B1(n118), 
        .C0(n101), .Y(n102) );
  AOI221X2M U18 ( .A0(\mem[5][6] ), .A1(n116), .B0(\mem[7][6] ), .B1(n118), 
        .C0(n100), .Y(n103) );
  OAI22X4M U19 ( .A0(n114), .A1(n16), .B0(n115), .B1(n14), .Y(rdata[1]) );
  AOI221X2M U20 ( .A0(\mem[4][1] ), .A1(n117), .B0(\mem[6][1] ), .B1(n118), 
        .C0(n12), .Y(n14) );
  AOI221X2M U21 ( .A0(\mem[5][1] ), .A1(n117), .B0(\mem[7][1] ), .B1(n118), 
        .C0(n11), .Y(n16) );
  OAI22X4M U22 ( .A0(n114), .A1(n99), .B0(n115), .B1(n98), .Y(rdata[5]) );
  AOI221X2M U23 ( .A0(\mem[4][5] ), .A1(n116), .B0(\mem[6][5] ), .B1(n118), 
        .C0(n97), .Y(n98) );
  AOI221X2M U24 ( .A0(\mem[5][5] ), .A1(n116), .B0(\mem[7][5] ), .B1(n118), 
        .C0(n96), .Y(n99) );
  OAI22X4M U25 ( .A0(n114), .A1(n95), .B0(n115), .B1(n94), .Y(rdata[4]) );
  AOI221X2M U26 ( .A0(\mem[4][4] ), .A1(n116), .B0(\mem[6][4] ), .B1(n118), 
        .C0(n93), .Y(n94) );
  AOI221X2M U27 ( .A0(\mem[5][4] ), .A1(n116), .B0(\mem[7][4] ), .B1(n118), 
        .C0(n92), .Y(n95) );
  NOR2BX4M U28 ( .AN(n19), .B(waddr[2]), .Y(n13) );
  AND2X2M U29 ( .A(waddr[2]), .B(n19), .Y(n15) );
  INVX4M U30 ( .A(wdata[3]), .Y(n149) );
  INVX4M U31 ( .A(wdata[4]), .Y(n148) );
  INVX4M U32 ( .A(wdata[5]), .Y(n147) );
  INVX4M U33 ( .A(wdata[6]), .Y(n146) );
  INVX4M U34 ( .A(wdata[7]), .Y(n145) );
  INVX4M U35 ( .A(wdata[0]), .Y(n152) );
  INVX4M U36 ( .A(wdata[1]), .Y(n151) );
  INVX4M U37 ( .A(wdata[2]), .Y(n150) );
  INVX2M U38 ( .A(waddr[1]), .Y(n154) );
  INVX2M U39 ( .A(waddr[0]), .Y(n153) );
  NOR2X2M U40 ( .A(n113), .B(N11), .Y(n106) );
  NOR2X2M U41 ( .A(N10), .B(N11), .Y(n105) );
  NOR2X2M U42 ( .A(n112), .B(N10), .Y(n109) );
  BUFX6M U43 ( .A(n144), .Y(n141) );
  BUFX6M U44 ( .A(n143), .Y(n140) );
  BUFX6M U45 ( .A(n143), .Y(n139) );
  BUFX6M U46 ( .A(n144), .Y(n138) );
  BUFX6M U47 ( .A(n144), .Y(n137) );
  BUFX2M U48 ( .A(n143), .Y(n142) );
  NOR2BX2M U49 ( .AN(winc), .B(wfull), .Y(n19) );
  INVX4M U50 ( .A(n2), .Y(n129) );
  INVX4M U51 ( .A(n2), .Y(n128) );
  INVX4M U52 ( .A(n1), .Y(n135) );
  INVX4M U53 ( .A(n1), .Y(n136) );
  BUFX2M U54 ( .A(n144), .Y(n143) );
  AND3X2M U55 ( .A(n153), .B(n154), .C(n13), .Y(n1) );
  INVX4M U56 ( .A(n6), .Y(n134) );
  INVX4M U57 ( .A(n6), .Y(n133) );
  INVX4M U58 ( .A(n5), .Y(n132) );
  INVX4M U59 ( .A(n5), .Y(n131) );
  INVX4M U60 ( .A(n4), .Y(n126) );
  INVX4M U61 ( .A(n4), .Y(n125) );
  INVX4M U62 ( .A(n3), .Y(n123) );
  INVX4M U63 ( .A(n3), .Y(n124) );
  AND3X2M U64 ( .A(n153), .B(n154), .C(n15), .Y(n2) );
  BUFX4M U65 ( .A(n106), .Y(n119) );
  BUFX4M U66 ( .A(n105), .Y(n121) );
  CLKBUFX8M U67 ( .A(n108), .Y(n118) );
  NOR2X2M U68 ( .A(n112), .B(n113), .Y(n108) );
  BUFX4M U69 ( .A(n106), .Y(n120) );
  BUFX4M U70 ( .A(n109), .Y(n116) );
  BUFX4M U71 ( .A(n109), .Y(n117) );
  BUFX4M U72 ( .A(n105), .Y(n122) );
  INVX4M U73 ( .A(n115), .Y(n114) );
  BUFX2M U74 ( .A(wrst_n), .Y(n144) );
  CLKBUFX8M U75 ( .A(n17), .Y(n130) );
  NAND3X2M U76 ( .A(waddr[0]), .B(n154), .C(n15), .Y(n17) );
  CLKBUFX8M U77 ( .A(n20), .Y(n127) );
  OAI2BB2X1M U78 ( .B0(n152), .B1(n134), .A0N(\mem[7][0] ), .A1N(n134), .Y(n22) );
  OAI2BB2X1M U79 ( .B0(n151), .B1(n133), .A0N(\mem[7][1] ), .A1N(n133), .Y(n23) );
  OAI2BB2X1M U80 ( .B0(n150), .B1(n134), .A0N(\mem[7][2] ), .A1N(n134), .Y(n24) );
  OAI2BB2X1M U81 ( .B0(n152), .B1(n132), .A0N(\mem[6][0] ), .A1N(n132), .Y(n30) );
  OAI2BB2X1M U82 ( .B0(n151), .B1(n131), .A0N(\mem[6][1] ), .A1N(n131), .Y(n31) );
  OAI2BB2X1M U83 ( .B0(n150), .B1(n132), .A0N(\mem[6][2] ), .A1N(n132), .Y(n32) );
  OAI2BB2X1M U84 ( .B0(n152), .B1(n130), .A0N(\mem[5][0] ), .A1N(n130), .Y(n38) );
  OAI2BB2X1M U85 ( .B0(n151), .B1(n130), .A0N(\mem[5][1] ), .A1N(n130), .Y(n39) );
  OAI2BB2X1M U86 ( .B0(n150), .B1(n130), .A0N(\mem[5][2] ), .A1N(n130), .Y(n40) );
  OAI2BB2X1M U87 ( .B0(n152), .B1(n129), .A0N(\mem[4][0] ), .A1N(n129), .Y(n46) );
  OAI2BB2X1M U88 ( .B0(n151), .B1(n128), .A0N(\mem[4][1] ), .A1N(n128), .Y(n47) );
  OAI2BB2X1M U89 ( .B0(n150), .B1(n129), .A0N(\mem[4][2] ), .A1N(n129), .Y(n48) );
  OAI2BB2X1M U90 ( .B0(n152), .B1(n127), .A0N(\mem[3][0] ), .A1N(n127), .Y(n54) );
  OAI2BB2X1M U91 ( .B0(n151), .B1(n127), .A0N(\mem[3][1] ), .A1N(n127), .Y(n55) );
  OAI2BB2X1M U92 ( .B0(n150), .B1(n127), .A0N(\mem[3][2] ), .A1N(n127), .Y(n56) );
  OAI2BB2X1M U93 ( .B0(n152), .B1(n126), .A0N(\mem[2][0] ), .A1N(n126), .Y(n62) );
  OAI2BB2X1M U94 ( .B0(n151), .B1(n125), .A0N(\mem[2][1] ), .A1N(n125), .Y(n63) );
  OAI2BB2X1M U95 ( .B0(n150), .B1(n126), .A0N(\mem[2][2] ), .A1N(n126), .Y(n64) );
  OAI2BB2X1M U96 ( .B0(n149), .B1(n133), .A0N(\mem[7][3] ), .A1N(n133), .Y(n25) );
  OAI2BB2X1M U97 ( .B0(n148), .B1(n134), .A0N(\mem[7][4] ), .A1N(n134), .Y(n26) );
  OAI2BB2X1M U98 ( .B0(n147), .B1(n133), .A0N(\mem[7][5] ), .A1N(n133), .Y(n27) );
  OAI2BB2X1M U99 ( .B0(n146), .B1(n134), .A0N(\mem[7][6] ), .A1N(n134), .Y(n28) );
  OAI2BB2X1M U100 ( .B0(n145), .B1(n133), .A0N(\mem[7][7] ), .A1N(n133), .Y(
        n29) );
  OAI2BB2X1M U101 ( .B0(n149), .B1(n131), .A0N(\mem[6][3] ), .A1N(n131), .Y(
        n33) );
  OAI2BB2X1M U102 ( .B0(n148), .B1(n132), .A0N(\mem[6][4] ), .A1N(n132), .Y(
        n34) );
  OAI2BB2X1M U103 ( .B0(n147), .B1(n131), .A0N(\mem[6][5] ), .A1N(n131), .Y(
        n35) );
  OAI2BB2X1M U104 ( .B0(n146), .B1(n132), .A0N(\mem[6][6] ), .A1N(n132), .Y(
        n36) );
  OAI2BB2X1M U105 ( .B0(n145), .B1(n131), .A0N(\mem[6][7] ), .A1N(n131), .Y(
        n37) );
  OAI2BB2X1M U106 ( .B0(n149), .B1(n130), .A0N(\mem[5][3] ), .A1N(n130), .Y(
        n41) );
  OAI2BB2X1M U107 ( .B0(n148), .B1(n130), .A0N(\mem[5][4] ), .A1N(n130), .Y(
        n42) );
  OAI2BB2X1M U108 ( .B0(n147), .B1(n130), .A0N(\mem[5][5] ), .A1N(n130), .Y(
        n43) );
  OAI2BB2X1M U109 ( .B0(n146), .B1(n130), .A0N(\mem[5][6] ), .A1N(n130), .Y(
        n44) );
  OAI2BB2X1M U110 ( .B0(n145), .B1(n130), .A0N(\mem[5][7] ), .A1N(n130), .Y(
        n45) );
  OAI2BB2X1M U111 ( .B0(n149), .B1(n128), .A0N(\mem[4][3] ), .A1N(n128), .Y(
        n49) );
  OAI2BB2X1M U112 ( .B0(n148), .B1(n129), .A0N(\mem[4][4] ), .A1N(n129), .Y(
        n50) );
  OAI2BB2X1M U113 ( .B0(n147), .B1(n128), .A0N(\mem[4][5] ), .A1N(n128), .Y(
        n51) );
  OAI2BB2X1M U114 ( .B0(n146), .B1(n129), .A0N(\mem[4][6] ), .A1N(n129), .Y(
        n52) );
  OAI2BB2X1M U115 ( .B0(n145), .B1(n128), .A0N(\mem[4][7] ), .A1N(n128), .Y(
        n53) );
  OAI2BB2X1M U116 ( .B0(n149), .B1(n127), .A0N(\mem[3][3] ), .A1N(n127), .Y(
        n57) );
  OAI2BB2X1M U117 ( .B0(n148), .B1(n127), .A0N(\mem[3][4] ), .A1N(n127), .Y(
        n58) );
  OAI2BB2X1M U118 ( .B0(n147), .B1(n127), .A0N(\mem[3][5] ), .A1N(n127), .Y(
        n59) );
  OAI2BB2X1M U119 ( .B0(n146), .B1(n127), .A0N(\mem[3][6] ), .A1N(n127), .Y(
        n60) );
  OAI2BB2X1M U120 ( .B0(n145), .B1(n127), .A0N(\mem[3][7] ), .A1N(n127), .Y(
        n61) );
  OAI2BB2X1M U121 ( .B0(n149), .B1(n125), .A0N(\mem[2][3] ), .A1N(n125), .Y(
        n65) );
  OAI2BB2X1M U122 ( .B0(n148), .B1(n126), .A0N(\mem[2][4] ), .A1N(n126), .Y(
        n66) );
  OAI2BB2X1M U123 ( .B0(n147), .B1(n125), .A0N(\mem[2][5] ), .A1N(n125), .Y(
        n67) );
  OAI2BB2X1M U124 ( .B0(n146), .B1(n126), .A0N(\mem[2][6] ), .A1N(n126), .Y(
        n68) );
  OAI2BB2X1M U125 ( .B0(n145), .B1(n125), .A0N(\mem[2][7] ), .A1N(n125), .Y(
        n69) );
  OAI2BB2X1M U126 ( .B0(n149), .B1(n135), .A0N(\mem[0][3] ), .A1N(n135), .Y(
        n81) );
  OAI2BB2X1M U127 ( .B0(n148), .B1(n136), .A0N(\mem[0][4] ), .A1N(n136), .Y(
        n82) );
  OAI2BB2X1M U128 ( .B0(n147), .B1(n135), .A0N(\mem[0][5] ), .A1N(n135), .Y(
        n83) );
  OAI2BB2X1M U129 ( .B0(n146), .B1(n136), .A0N(\mem[0][6] ), .A1N(n136), .Y(
        n84) );
  OAI2BB2X1M U130 ( .B0(n145), .B1(n135), .A0N(\mem[0][7] ), .A1N(n135), .Y(
        n85) );
  OAI2BB2X1M U131 ( .B0(n123), .B1(n152), .A0N(\mem[1][0] ), .A1N(n123), .Y(
        n70) );
  OAI2BB2X1M U132 ( .B0(n124), .B1(n151), .A0N(\mem[1][1] ), .A1N(n124), .Y(
        n71) );
  OAI2BB2X1M U133 ( .B0(n123), .B1(n150), .A0N(\mem[1][2] ), .A1N(n123), .Y(
        n72) );
  OAI2BB2X1M U134 ( .B0(n136), .B1(n152), .A0N(\mem[0][0] ), .A1N(n136), .Y(
        n78) );
  OAI2BB2X1M U135 ( .B0(n135), .B1(n151), .A0N(\mem[0][1] ), .A1N(n135), .Y(
        n79) );
  OAI2BB2X1M U136 ( .B0(n136), .B1(n150), .A0N(\mem[0][2] ), .A1N(n136), .Y(
        n80) );
  OAI2BB2X1M U137 ( .B0(n124), .B1(n149), .A0N(\mem[1][3] ), .A1N(n124), .Y(
        n73) );
  OAI2BB2X1M U138 ( .B0(n123), .B1(n148), .A0N(\mem[1][4] ), .A1N(n123), .Y(
        n74) );
  OAI2BB2X1M U139 ( .B0(n124), .B1(n147), .A0N(\mem[1][5] ), .A1N(n124), .Y(
        n75) );
  OAI2BB2X1M U140 ( .B0(n123), .B1(n146), .A0N(\mem[1][6] ), .A1N(n123), .Y(
        n76) );
  OAI2BB2X1M U141 ( .B0(n124), .B1(n145), .A0N(\mem[1][7] ), .A1N(n124), .Y(
        n77) );
  AND3X2M U142 ( .A(n13), .B(n154), .C(waddr[0]), .Y(n3) );
  AND3X2M U143 ( .A(n13), .B(n153), .C(waddr[1]), .Y(n4) );
  AND3X2M U144 ( .A(n15), .B(n153), .C(waddr[1]), .Y(n5) );
  INVX2M U145 ( .A(N10), .Y(n113) );
  INVX2M U146 ( .A(N11), .Y(n112) );
  CLKBUFX6M U147 ( .A(N9), .Y(n115) );
  AO22X1M U148 ( .A0(\mem[3][0] ), .A1(n120), .B0(\mem[1][0] ), .B1(n122), .Y(
        n7) );
  AO22X1M U149 ( .A0(\mem[2][0] ), .A1(n120), .B0(\mem[0][0] ), .B1(n122), .Y(
        n8) );
  AO22X1M U150 ( .A0(\mem[3][1] ), .A1(n120), .B0(\mem[1][1] ), .B1(n122), .Y(
        n11) );
  AO22X1M U151 ( .A0(\mem[2][1] ), .A1(n120), .B0(\mem[0][1] ), .B1(n122), .Y(
        n12) );
  AO22X1M U152 ( .A0(\mem[3][2] ), .A1(n120), .B0(\mem[1][2] ), .B1(n122), .Y(
        n18) );
  AO22X1M U153 ( .A0(\mem[2][2] ), .A1(n120), .B0(\mem[0][2] ), .B1(n122), .Y(
        n21) );
  AO22X1M U154 ( .A0(\mem[3][3] ), .A1(n120), .B0(\mem[1][3] ), .B1(n122), .Y(
        n88) );
  AO22X1M U155 ( .A0(\mem[2][3] ), .A1(n120), .B0(\mem[0][3] ), .B1(n122), .Y(
        n89) );
  AO22X1M U156 ( .A0(\mem[3][4] ), .A1(n119), .B0(\mem[1][4] ), .B1(n121), .Y(
        n92) );
  AO22X1M U157 ( .A0(\mem[2][4] ), .A1(n119), .B0(\mem[0][4] ), .B1(n121), .Y(
        n93) );
  AO22X1M U158 ( .A0(\mem[3][5] ), .A1(n119), .B0(\mem[1][5] ), .B1(n121), .Y(
        n96) );
  AO22X1M U159 ( .A0(\mem[2][5] ), .A1(n119), .B0(\mem[0][5] ), .B1(n121), .Y(
        n97) );
  AO22X1M U160 ( .A0(\mem[3][6] ), .A1(n119), .B0(\mem[1][6] ), .B1(n121), .Y(
        n100) );
  AO22X1M U161 ( .A0(\mem[2][6] ), .A1(n119), .B0(\mem[0][6] ), .B1(n121), .Y(
        n101) );
  AO22X1M U162 ( .A0(\mem[3][7] ), .A1(n119), .B0(\mem[1][7] ), .B1(n121), .Y(
        n104) );
  AO22X1M U163 ( .A0(\mem[2][7] ), .A1(n119), .B0(\mem[0][7] ), .B1(n121), .Y(
        n107) );
endmodule


module ASYNC_FIFO_TOP_DATA_WIDTH8_ADDR8 ( wclk, wrst_n, winc, wdata, wfull, 
        rclk, rrst_n, rinc, rdata, rempty );
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wrst_n, winc, rclk, rrst_n, rinc;
  output wfull, rempty;
  wire   sync_wrst_n, sync_rrst_n, n1, n2, n3, n4;
  wire   [3:0] wq2_rptr_bin;
  wire   [3:0] wptr_bin;
  wire   [2:0] waddr;
  wire   [3:0] wptr_gray_comb;
  wire   [3:0] wptr_gray;
  wire   [3:0] rptr_gray;
  wire   [3:0] wq2_rptr_gray;
  wire   [3:0] rq2_wptr_bin;
  wire   [3:0] rptr_bin;
  wire   [2:0] raddr;
  wire   [3:0] rptr_gray_comb;
  wire   [3:0] rq2_wptr_gray;

  RESET_SYNC_STAGES2_2 sync_wreset ( .clk(wclk), .async_rst_n(n4), 
        .sync_rst_n(sync_wrst_n) );
  RESET_SYNC_STAGES2_1 sync_rreset ( .clk(rclk), .async_rst_n(n3), 
        .sync_rst_n(sync_rrst_n) );
  FIFO_WR_ADDR8 wr_logic ( .wclk(wclk), .wrst_n(n1), .winc(winc), 
        .wq2_rptr_bin(wq2_rptr_bin), .wptr_bin(wptr_bin), .waddr(waddr), 
        .wfull(wfull) );
  B2G_DATA_WIDTH4_0 b2g_wptr ( .BIN_DATA(wptr_bin), .GRAY_DATA(wptr_gray_comb)
         );
  DFFS_STAGES2_DATA_WIDTH4_0 sync_r2w ( .clk(wclk), .rst(n1), .DATA_IN(
        rptr_gray), .DATA_OUT(wq2_rptr_gray) );
  G2B_DATA_WIDTH4_0 g2b_rptr ( .GRAY_DATA(wq2_rptr_gray), .BIN_DATA(
        wq2_rptr_bin) );
  FIFO_RD_ADDR8 rd_logic ( .rclk(rclk), .rrst_n(sync_rrst_n), .rinc(rinc), 
        .rq2_wptr_bin(rq2_wptr_bin), .rptr_bin(rptr_bin), .raddr(raddr), 
        .rempty(rempty) );
  B2G_DATA_WIDTH4_1 b2g_rptr ( .BIN_DATA(rptr_bin), .GRAY_DATA(rptr_gray_comb)
         );
  DFFS_STAGES2_DATA_WIDTH4_1 sync_w2r ( .clk(rclk), .rst(sync_rrst_n), 
        .DATA_IN(wptr_gray), .DATA_OUT(rq2_wptr_gray) );
  G2B_DATA_WIDTH4_1 g2b_wptr ( .GRAY_DATA(rq2_wptr_gray), .BIN_DATA(
        rq2_wptr_bin) );
  FIFO_MEM_DATA_WIDTH8_ADDR8 memory_core ( .wclk(wclk), .wrst_n(n1), .winc(
        winc), .wfull(wfull), .waddr(waddr), .raddr(raddr), .wdata(wdata), 
        .rdata(rdata) );
  DFFRQX2M \wptr_gray_reg[0]  ( .D(wptr_gray_comb[0]), .CK(wclk), .RN(n1), .Q(
        wptr_gray[0]) );
  DFFRQX2M \wptr_gray_reg[1]  ( .D(wptr_gray_comb[1]), .CK(wclk), .RN(n1), .Q(
        wptr_gray[1]) );
  DFFRQX2M \wptr_gray_reg[2]  ( .D(wptr_gray_comb[2]), .CK(wclk), .RN(n1), .Q(
        wptr_gray[2]) );
  DFFRQX2M \wptr_gray_reg[3]  ( .D(wptr_gray_comb[3]), .CK(wclk), .RN(n1), .Q(
        wptr_gray[3]) );
  DFFRQX1M \rptr_gray_reg[0]  ( .D(rptr_gray_comb[0]), .CK(rclk), .RN(
        sync_rrst_n), .Q(rptr_gray[0]) );
  DFFRQX1M \rptr_gray_reg[2]  ( .D(rptr_gray_comb[2]), .CK(rclk), .RN(
        sync_rrst_n), .Q(rptr_gray[2]) );
  DFFRQX1M \rptr_gray_reg[3]  ( .D(rptr_gray_comb[3]), .CK(rclk), .RN(
        sync_rrst_n), .Q(rptr_gray[3]) );
  DFFRQX1M \rptr_gray_reg[1]  ( .D(rptr_gray_comb[1]), .CK(rclk), .RN(
        sync_rrst_n), .Q(rptr_gray[1]) );
  BUFX2M U3 ( .A(rrst_n), .Y(n3) );
  BUFX2M U4 ( .A(wrst_n), .Y(n4) );
  INVX4M U5 ( .A(n2), .Y(n1) );
  INVX2M U6 ( .A(sync_wrst_n), .Y(n2) );
endmodule


module Serializer ( P_DATA, ser_en, clk, rst, ser_data, ser_done );
  input [7:0] P_DATA;
  input ser_en, clk, rst;
  output ser_data, ser_done;
  wire   N34, N40, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n1, n2, n3, n4, n5, n6, n7;
  wire   [7:0] shift_reg;
  wire   [3:0] count;
  assign ser_done = N40;

  DFFRQX1M \shift_reg_reg[6]  ( .D(n26), .CK(clk), .RN(n2), .Q(shift_reg[6])
         );
  DFFRQX1M \shift_reg_reg[5]  ( .D(n27), .CK(clk), .RN(n2), .Q(shift_reg[5])
         );
  DFFRQX1M \shift_reg_reg[4]  ( .D(n28), .CK(clk), .RN(n2), .Q(shift_reg[4])
         );
  DFFRQX1M \shift_reg_reg[3]  ( .D(n29), .CK(clk), .RN(n2), .Q(shift_reg[3])
         );
  DFFRQX1M \shift_reg_reg[2]  ( .D(n30), .CK(clk), .RN(n2), .Q(shift_reg[2])
         );
  DFFRQX1M \shift_reg_reg[1]  ( .D(n31), .CK(clk), .RN(n2), .Q(shift_reg[1])
         );
  DFFSQX2M \count_reg[3]  ( .D(n32), .CK(clk), .SN(n2), .Q(count[3]) );
  DFFRX1M \shift_reg_reg[0]  ( .D(n25), .CK(clk), .RN(n2), .QN(n8) );
  DFFRQX2M \count_reg[1]  ( .D(n5), .CK(clk), .RN(n2), .Q(count[1]) );
  DFFRQX2M \count_reg[2]  ( .D(n4), .CK(clk), .RN(n2), .Q(count[2]) );
  DFFRQX2M \count_reg[0]  ( .D(n33), .CK(clk), .RN(n2), .Q(count[0]) );
  NOR2X2M U3 ( .A(count[1]), .B(count[0]), .Y(n22) );
  INVX4M U4 ( .A(n23), .Y(n1) );
  AND2X2M U5 ( .A(ser_en), .B(n24), .Y(N34) );
  NAND2X2M U6 ( .A(ser_en), .B(n24), .Y(n23) );
  INVX6M U7 ( .A(n3), .Y(n2) );
  INVX2M U8 ( .A(rst), .Y(n3) );
  INVX2M U9 ( .A(n18), .Y(n6) );
  INVX2M U10 ( .A(n22), .Y(n7) );
  NOR2BX8M U11 ( .AN(n1), .B(n18), .Y(n11) );
  NOR2BX8M U12 ( .AN(n1), .B(n19), .Y(n10) );
  NAND2X2M U13 ( .A(n19), .B(n18), .Y(n24) );
  OAI2BB2X1M U14 ( .B0(n6), .B1(n8), .A0N(P_DATA[0]), .A1N(n6), .Y(ser_data)
         );
  NOR2X6M U15 ( .A(n7), .B(count[2]), .Y(n19) );
  NAND2X2M U16 ( .A(count[3]), .B(n19), .Y(n18) );
  OAI2B1X2M U17 ( .A1N(shift_reg[1]), .A0(n1), .B0(n17), .Y(n31) );
  AOI22X1M U18 ( .A0(shift_reg[2]), .A1(n10), .B0(P_DATA[2]), .B1(n11), .Y(n17) );
  OAI2B1X2M U19 ( .A1N(shift_reg[2]), .A0(N34), .B0(n16), .Y(n30) );
  AOI22X1M U20 ( .A0(shift_reg[3]), .A1(n10), .B0(P_DATA[3]), .B1(n11), .Y(n16) );
  OAI2B1X2M U21 ( .A1N(shift_reg[3]), .A0(N34), .B0(n15), .Y(n29) );
  AOI22X1M U22 ( .A0(shift_reg[4]), .A1(n10), .B0(P_DATA[4]), .B1(n11), .Y(n15) );
  OAI2B1X2M U23 ( .A1N(shift_reg[4]), .A0(N34), .B0(n14), .Y(n28) );
  AOI22X1M U24 ( .A0(shift_reg[5]), .A1(n10), .B0(P_DATA[5]), .B1(n11), .Y(n14) );
  OAI2B1X2M U25 ( .A1N(shift_reg[5]), .A0(n1), .B0(n13), .Y(n27) );
  AOI22X1M U26 ( .A0(shift_reg[6]), .A1(n10), .B0(P_DATA[6]), .B1(n11), .Y(n13) );
  OAI2B1X2M U27 ( .A1N(shift_reg[6]), .A0(n1), .B0(n12), .Y(n26) );
  NAND2XLM U28 ( .A(P_DATA[7]), .B(n11), .Y(n12) );
  OAI21X2M U29 ( .A0(n1), .A1(n8), .B0(n9), .Y(n25) );
  AOI22X1M U30 ( .A0(shift_reg[1]), .A1(n10), .B0(P_DATA[1]), .B1(n11), .Y(n9)
         );
  INVX2M U31 ( .A(n21), .Y(n5) );
  AOI32X1M U32 ( .A0(count[1]), .A1(n1), .A2(count[0]), .B0(n22), .B1(n1), .Y(
        n21) );
  NOR2X2M U33 ( .A(count[0]), .B(n23), .Y(n33) );
  INVX2M U34 ( .A(n20), .Y(n4) );
  AOI32X1M U35 ( .A0(count[2]), .A1(n7), .A2(n1), .B0(n6), .B1(ser_en), .Y(n20) );
  NOR4BX2M U36 ( .AN(count[0]), .B(count[3]), .C(count[2]), .D(count[1]), .Y(
        N40) );
  OAI2B1X2M U37 ( .A1N(count[3]), .A0(n19), .B0(ser_en), .Y(n32) );
endmodule


module MUX ( IO, I1, I2, I3, sel, Op );
  input [1:0] sel;
  input IO, I1, I2, I3;
  output Op;
  wire   n1, n2, n3, n4;

  INVX2M U1 ( .A(sel[0]), .Y(n4) );
  AO2B2X2M U2 ( .B0(n1), .B1(n2), .A0(n3), .A1N(n1), .Y(Op) );
  INVX2M U3 ( .A(sel[1]), .Y(n1) );
  AO22X1M U4 ( .A0(sel[0]), .A1(I1), .B0(IO), .B1(n4), .Y(n2) );
  AO22X1M U5 ( .A0(I2), .A1(n4), .B0(I3), .B1(sel[0]), .Y(n3) );
endmodule


module Parity ( P_DATA, DATA_VALID, PAR_TYP, par_bit );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_TYP;
  output par_bit;
  wire   n1, n2, n3, n4, n5;

  XNOR2X1M U2 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n5) );
  XNOR2X1M U3 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n4) );
  AND2X2M U4 ( .A(DATA_VALID), .B(n1), .Y(par_bit) );
  XOR3XLM U5 ( .A(PAR_TYP), .B(n2), .C(n3), .Y(n1) );
  XOR3XLM U6 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n4), .Y(n3) );
  XOR3XLM U7 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n5), .Y(n2) );
endmodule


module FSM ( DATA_VALID, ser_done, clk, rst, PAR_EN, Busy, ser_en, mux_sel );
  output [1:0] mux_sel;
  input DATA_VALID, ser_done, clk, rst, PAR_EN;
  output Busy, ser_en;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n1, n2, n3, n4, n5;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  DFFRQX1M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  DFFRX4M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst), .Q(
        current_state[1]), .QN(n2) );
  AOI21X2M U3 ( .A0(n2), .A1(n1), .B0(current_state[2]), .Y(n12) );
  INVX2M U4 ( .A(current_state[0]), .Y(n1) );
  NAND2X2M U5 ( .A(n12), .B(n7), .Y(mux_sel[0]) );
  INVX2M U6 ( .A(n6), .Y(ser_en) );
  AND2X2M U7 ( .A(n8), .B(n3), .Y(n11) );
  OAI21X2M U8 ( .A0(n1), .A1(n2), .B0(n12), .Y(mux_sel[1]) );
  NAND3X4M U9 ( .A(n1), .B(n3), .C(current_state[1]), .Y(n7) );
  INVX2M U10 ( .A(current_state[2]), .Y(n3) );
  NAND2X2M U11 ( .A(current_state[0]), .B(n3), .Y(n8) );
  NAND2X2M U12 ( .A(current_state[1]), .B(n11), .Y(n6) );
  OAI31X2M U13 ( .A0(n5), .A1(n4), .A2(n6), .B0(n10), .Y(next_state[0]) );
  INVX2M U14 ( .A(PAR_EN), .Y(n5) );
  NAND3X2M U15 ( .A(n11), .B(n2), .C(DATA_VALID), .Y(n10) );
  NAND3X2M U16 ( .A(n7), .B(n8), .C(n13), .Y(Busy) );
  NAND3X2M U17 ( .A(n1), .B(n2), .C(current_state[2]), .Y(n13) );
  OAI32X2M U18 ( .A0(n4), .A1(PAR_EN), .A2(n7), .B0(n2), .B1(n8), .Y(
        next_state[2]) );
  OAI22X1M U19 ( .A0(current_state[1]), .A1(n8), .B0(n9), .B1(n7), .Y(
        next_state[1]) );
  NOR2X2M U20 ( .A(PAR_EN), .B(n4), .Y(n9) );
  INVX2M U21 ( .A(ser_done), .Y(n4) );
endmodule


module UART_TOP_TX ( P_DATA, Data_Valid, clk, rst, PAR_EN, PAR_TYP, TX_out, 
        Busy );
  input [7:0] P_DATA;
  input Data_Valid, clk, rst, PAR_EN, PAR_TYP;
  output TX_out, Busy;
  wire   ser_en_wire, ser_done_wire, ser_data_wire, par_bit_wire, n1, n2;
  wire   [1:0] mux_sel_wire;

  Serializer Ser ( .P_DATA(P_DATA), .ser_en(ser_en_wire), .clk(clk), .rst(n1), 
        .ser_data(ser_data_wire), .ser_done(ser_done_wire) );
  MUX mux ( .IO(1'b0), .I1(ser_data_wire), .I2(par_bit_wire), .I3(1'b1), .sel(
        mux_sel_wire), .Op(TX_out) );
  Parity par ( .P_DATA(P_DATA), .DATA_VALID(Data_Valid), .PAR_TYP(PAR_TYP), 
        .par_bit(par_bit_wire) );
  FSM fsm ( .DATA_VALID(Data_Valid), .ser_done(ser_done_wire), .clk(clk), 
        .rst(n1), .PAR_EN(PAR_EN), .Busy(Busy), .ser_en(ser_en_wire), 
        .mux_sel(mux_sel_wire) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(rst), .Y(n2) );
endmodule


module PULSE_GEN ( CLK, RST, LVL_SIG, PULSE_SIG );
  input CLK, RST, LVL_SIG;
  output PULSE_SIG;
  wire   lvl_sig_q;

  DFFRQX1M lvl_sig_q_reg ( .D(LVL_SIG), .CK(CLK), .RN(RST), .Q(lvl_sig_q) );
  NOR2BX2M U3 ( .AN(lvl_sig_q), .B(LVL_SIG), .Y(PULSE_SIG) );
endmodule


module SYS_TOP_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [5:0] b;
  output [7:0] quotient;
  output [5:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] , \u_div/SumTmp[2][2] ,
         \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] , \u_div/SumTmp[2][5] ,
         \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] , \u_div/SumTmp[3][2] ,
         \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] , \u_div/SumTmp[4][0] ,
         \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] , \u_div/SumTmp[4][3] ,
         \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] , \u_div/SumTmp[5][2] ,
         \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] , \u_div/SumTmp[7][0] ,
         \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] ,
         \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] , \u_div/CryTmp[0][6] ,
         \u_div/CryTmp[1][1] , \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] ,
         \u_div/CryTmp[1][4] , \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[3][1] ,
         \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] , \u_div/CryTmp[3][4] ,
         \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] , \u_div/CryTmp[4][2] ,
         \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] , \u_div/CryTmp[5][1] ,
         \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] ,
         \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] , \u_div/PartRem[1][1] ,
         \u_div/PartRem[1][2] , \u_div/PartRem[1][3] , \u_div/PartRem[1][4] ,
         \u_div/PartRem[1][5] , \u_div/PartRem[1][6] , \u_div/PartRem[2][1] ,
         \u_div/PartRem[2][2] , \u_div/PartRem[2][3] , \u_div/PartRem[2][4] ,
         \u_div/PartRem[2][5] , \u_div/PartRem[2][6] , \u_div/PartRem[3][1] ,
         \u_div/PartRem[3][2] , \u_div/PartRem[3][3] , \u_div/PartRem[3][4] ,
         \u_div/PartRem[3][5] , \u_div/PartRem[4][1] , \u_div/PartRem[4][2] ,
         \u_div/PartRem[4][3] , \u_div/PartRem[4][4] , \u_div/PartRem[5][1] ,
         \u_div/PartRem[5][2] , \u_div/PartRem[5][3] , \u_div/PartRem[6][1] ,
         \u_div/PartRem[6][2] , \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6,
         n7;

  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n5), .CI(
        \u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n5), .CI(
        \u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n5), .CI(
        \u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n5), .CI(
        \u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n5), .CI(
        \u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n5), .CI(
        \u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n5), .CI(
        \u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n1), .CI(
        \u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n2), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n3), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n4), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n1), .CI(
        \u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n4), .CI(
        \u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n3), .CI(
        \u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n2), .CI(
        \u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n2), .CI(
        \u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n2), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n3), .CI(
        \u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n3), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n3), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n4), .CI(
        \u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n4), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n4), .CI(
        \u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n4), .CI(
        \u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n1), .CI(
        \u_div/CryTmp[2][5] ), .CO(quotient[2]), .S(\u_div/SumTmp[2][5] ) );
  AND3X4M U1 ( .A(\u_div/CryTmp[4][4] ), .B(n2), .C(n1), .Y(quotient[4]) );
  CLKAND2X4M U2 ( .A(\u_div/CryTmp[3][5] ), .B(n1), .Y(quotient[3]) );
  AND3X2M U3 ( .A(n7), .B(n4), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  NOR3X6M U4 ( .A(b[4]), .B(b[5]), .C(b[3]), .Y(n7) );
  MX2X1M U5 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  MX2X1M U6 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  MX2X1M U7 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  MX2X1M U8 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2X1M U9 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKAND2X2M U10 ( .A(\u_div/CryTmp[5][3] ), .B(n7), .Y(quotient[5]) );
  MX2X1M U11 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  MX2X1M U12 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2X1M U13 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2X1M U14 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  OR2X4M U15 ( .A(\u_div/CryTmp[1][6] ), .B(\u_div/PartRem[2][6] ), .Y(
        quotient[1]) );
  OR2X2M U16 ( .A(\u_div/CryTmp[0][6] ), .B(\u_div/PartRem[1][6] ), .Y(
        quotient[0]) );
  INVX4M U17 ( .A(b[2]), .Y(n4) );
  INVX8M U18 ( .A(b[0]), .Y(n6) );
  OR2X2M U19 ( .A(a[7]), .B(n6), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U20 ( .A(n6), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U21 ( .A(n6), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U22 ( .A(n6), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U23 ( .A(n6), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U24 ( .A(n6), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U25 ( .A(n6), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  INVX4M U26 ( .A(b[1]), .Y(n5) );
  INVX4M U27 ( .A(b[4]), .Y(n2) );
  INVX4M U28 ( .A(b[3]), .Y(n3) );
  INVX4M U29 ( .A(b[5]), .Y(n1) );
  XNOR2X2M U30 ( .A(n6), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  OR2X2M U31 ( .A(a[5]), .B(n6), .Y(\u_div/CryTmp[5][1] ) );
  OR2X2M U32 ( .A(a[4]), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U33 ( .A(a[3]), .B(n6), .Y(\u_div/CryTmp[3][1] ) );
  OR2X2M U34 ( .A(a[2]), .B(n6), .Y(\u_div/CryTmp[2][1] ) );
  OR2X2M U35 ( .A(a[1]), .B(n6), .Y(\u_div/CryTmp[1][1] ) );
  NAND2BX2M U36 ( .AN(a[0]), .B(b[0]), .Y(\u_div/CryTmp[0][1] ) );
  OR2X2M U37 ( .A(a[6]), .B(n6), .Y(\u_div/CryTmp[6][1] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U46 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U49 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U52 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U54 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U55 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U56 ( .A(\u_div/CryTmp[7][1] ), .B(n7), .C(n5), .D(n4), .Y(
        quotient[7]) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT );
  input REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, sync_clk_div_en, sync_rst_1,
         sync_rst_2, sync_clk_div_en_ff1, uart_rx_valid_reg, rx_clk,
         uart_rx_valid, tx_clk, gate_en, alu_clk, alu_out_valid, rd_data_valid,
         sync_rx_d_vld, fifo_full, alu_en, wr_en, rd_en, tx_d_vld, rd_inc,
         f_empty, tx_busy, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [1:0] uart_config;
  wire   [5:0] prescale;
  wire   [7:0] div_ratio;
  wire   [7:0] rx_div_ratio;
  wire   [7:0] uart_rx_p_data_reg;
  wire   [7:0] uart_rx_p_data;
  wire   [15:0] alu_out;
  wire   [7:0] rd_data_rf;
  wire   [7:0] sync_rx_p_data;
  wire   [3:0] alu_fun;
  wire   [3:0] address;
  wire   [7:0] wr_data;
  wire   [7:0] tx_p_data;
  wire   [7:0] op_a;
  wire   [7:0] op_b;
  wire   [7:0] rd_data_fifo;

  TLATNCAX2M U0 ( .E(gate_en), .CK(REF_CLK), .ECK(alu_clk) );
  RESET_SYNC_STAGES2_0 u_RST_SYNC_1 ( .clk(REF_CLK), .async_rst_n(RST), 
        .sync_rst_n(sync_rst_1) );
  RESET_SYNC_STAGES2_3 u_RST_SYNC_2 ( .clk(UART_CLK), .async_rst_n(RST), 
        .sync_rst_n(sync_rst_2) );
  CLK_DIV_0 u_CLK_DIV_TX ( .i_ref_clk(UART_CLK), .i_rst_n(n7), .i_clk_en(
        sync_clk_div_en), .i_div_ratio(div_ratio), .o_div_clk(tx_clk) );
  CLK_DIV_1 u_CLK_DIV_RX ( .i_ref_clk(UART_CLK), .i_rst_n(n7), .i_clk_en(
        sync_clk_div_en), .i_div_ratio(rx_div_ratio), .o_div_clk(rx_clk) );
  SYS_CTRL u_SYS_CTRL ( .CLK(REF_CLK), .RST(n9), .ALU_OUT(alu_out), 
        .OUT_Valid(alu_out_valid), .RdData(rd_data_rf), .RdData_Valid(
        rd_data_valid), .RX_P_DATA(sync_rx_p_data), .RX_D_VLD(sync_rx_d_vld), 
        .FIFO_FULL(fifo_full), .ALU_FUN(alu_fun), .EN(alu_en), .CLK_EN(gate_en), .Address(address), .WrEn(wr_en), .RdEn(rd_en), .WrData(wr_data), .TX_P_DATA(
        tx_p_data), .TX_D_VLD(tx_d_vld) );
  RegisterFile_DATA_WIDTH8_DATA_DEPTH16_ADDR_WIDTH4 u_RegFile ( .CLK(REF_CLK), 
        .RST(n9), .Address(address), .WrEn(wr_en), .RdEn(rd_en), .WrData(
        wr_data), .RdData(rd_data_rf), .RdData_Valid(rd_data_valid), .REG0(
        op_a), .REG1(op_b), .REG2({prescale, uart_config}), .REG3(div_ratio)
         );
  ALU_8B u_ALU ( .clk(alu_clk), .rst(n9), .A(op_a), .B(op_b), .ALU_EN(alu_en), 
        .ALU_FUN(alu_fun), .ALU_OUT(alu_out), .Valid(alu_out_valid) );
  UART_RX_TOP u_UART_RX ( .clk(rx_clk), .rst(n7), .PRESCALE(prescale), .RX_IN(
        n5), .PAR_EN(uart_config[0]), .PAR_TYP(uart_config[1]), .P_DATA(
        uart_rx_p_data), .data_valid(uart_rx_valid) );
  DATA_SYNC_STAGES2_BUS_WIDTH8 u_DATA_SYNC ( .CLK(REF_CLK), .RST(n9), 
        .UNSYNC_BUS(uart_rx_p_data_reg), .bus_enable(uart_rx_valid_reg), 
        .sync_bus(sync_rx_p_data), .enable_pulse(sync_rx_d_vld) );
  ASYNC_FIFO_TOP_DATA_WIDTH8_ADDR8 u_ASYNC_FIFO ( .wclk(REF_CLK), .wrst_n(n9), 
        .winc(tx_d_vld), .wdata(tx_p_data), .wfull(fifo_full), .rclk(tx_clk), 
        .rrst_n(n7), .rinc(rd_inc), .rdata(rd_data_fifo), .rempty(f_empty) );
  UART_TOP_TX u_UART_TX ( .P_DATA(rd_data_fifo), .Data_Valid(n2), .clk(tx_clk), 
        .rst(n7), .PAR_EN(uart_config[0]), .PAR_TYP(uart_config[1]), .TX_out(
        TX_OUT), .Busy(tx_busy) );
  PULSE_GEN u_Pulse ( .CLK(tx_clk), .RST(n7), .LVL_SIG(tx_busy), .PULSE_SIG(
        rd_inc) );
  SYS_TOP_DW_div_uns_0 div_54 ( .a(div_ratio), .b(prescale), .quotient({N9, N8, 
        N7, N6, N5, N4, N3, N2}) );
  DFFRQX1M \uart_rx_p_data_reg_reg[0]  ( .D(uart_rx_p_data[0]), .CK(rx_clk), 
        .RN(n7), .Q(uart_rx_p_data_reg[0]) );
  DFFRQX1M \uart_rx_p_data_reg_reg[1]  ( .D(uart_rx_p_data[1]), .CK(rx_clk), 
        .RN(n7), .Q(uart_rx_p_data_reg[1]) );
  DFFRQX1M \uart_rx_p_data_reg_reg[2]  ( .D(uart_rx_p_data[2]), .CK(rx_clk), 
        .RN(n7), .Q(uart_rx_p_data_reg[2]) );
  DFFRQX1M \uart_rx_p_data_reg_reg[3]  ( .D(uart_rx_p_data[3]), .CK(rx_clk), 
        .RN(n7), .Q(uart_rx_p_data_reg[3]) );
  DFFRQX1M \uart_rx_p_data_reg_reg[4]  ( .D(uart_rx_p_data[4]), .CK(rx_clk), 
        .RN(n7), .Q(uart_rx_p_data_reg[4]) );
  DFFRQX1M \uart_rx_p_data_reg_reg[5]  ( .D(uart_rx_p_data[5]), .CK(rx_clk), 
        .RN(n7), .Q(uart_rx_p_data_reg[5]) );
  DFFRQX1M \uart_rx_p_data_reg_reg[6]  ( .D(uart_rx_p_data[6]), .CK(rx_clk), 
        .RN(n7), .Q(uart_rx_p_data_reg[6]) );
  DFFRQX1M \uart_rx_p_data_reg_reg[7]  ( .D(uart_rx_p_data[7]), .CK(rx_clk), 
        .RN(n7), .Q(uart_rx_p_data_reg[7]) );
  DFFRQX2M sync_clk_div_en_ff2_reg ( .D(sync_clk_div_en_ff1), .CK(UART_CLK), 
        .RN(n7), .Q(sync_clk_div_en) );
  DFFRQX1M uart_rx_valid_reg_reg ( .D(uart_rx_valid), .CK(rx_clk), .RN(n7), 
        .Q(uart_rx_valid_reg) );
  DFFRQX2M sync_clk_div_en_ff1_reg ( .D(1'b1), .CK(UART_CLK), .RN(n7), .Q(
        sync_clk_div_en_ff1) );
  INVX8M U15 ( .A(n8), .Y(n7) );
  INVX4M U16 ( .A(n10), .Y(n9) );
  INVX2M U17 ( .A(f_empty), .Y(n2) );
  INVX4M U18 ( .A(n6), .Y(n11) );
  BUFX2M U19 ( .A(RX_IN), .Y(n5) );
  AO22X4M U20 ( .A0(N5), .A1(n11), .B0(div_ratio[3]), .B1(n6), .Y(
        rx_div_ratio[3]) );
  AO22X4M U21 ( .A0(N6), .A1(n11), .B0(div_ratio[4]), .B1(n6), .Y(
        rx_div_ratio[4]) );
  AO22X4M U22 ( .A0(N8), .A1(n11), .B0(div_ratio[6]), .B1(n6), .Y(
        rx_div_ratio[6]) );
  AO22X4M U23 ( .A0(N4), .A1(n11), .B0(div_ratio[2]), .B1(n6), .Y(
        rx_div_ratio[2]) );
  AO22X4M U24 ( .A0(N3), .A1(n11), .B0(div_ratio[1]), .B1(n6), .Y(
        rx_div_ratio[1]) );
  AO22X4M U25 ( .A0(N2), .A1(n11), .B0(div_ratio[0]), .B1(n6), .Y(
        rx_div_ratio[0]) );
  AO22X4M U26 ( .A0(N7), .A1(n11), .B0(div_ratio[5]), .B1(n6), .Y(
        rx_div_ratio[5]) );
  AO22X4M U27 ( .A0(N9), .A1(n11), .B0(div_ratio[7]), .B1(n6), .Y(
        rx_div_ratio[7]) );
  INVX2M U28 ( .A(sync_rst_2), .Y(n8) );
  CLKBUFX6M U29 ( .A(n3), .Y(n6) );
  NOR4X2M U30 ( .A(prescale[2]), .B(prescale[1]), .C(prescale[0]), .D(n4), .Y(
        n3) );
  OR3X2M U31 ( .A(prescale[5]), .B(prescale[4]), .C(prescale[3]), .Y(n4) );
  INVX2M U32 ( .A(sync_rst_1), .Y(n10) );
endmodule

