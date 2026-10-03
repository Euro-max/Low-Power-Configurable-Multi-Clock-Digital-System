/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Tue Sep 29 01:46:10 2026
/////////////////////////////////////////////////////////////


module RESET_SYNC_STAGES2_test_2 ( clk, async_rst_n, sync_rst_n, test_si, 
        test_se );
  input clk, async_rst_n, test_si, test_se;
  output sync_rst_n;
  wire   \shift_reg[0] ;

  SDFFRQX2M \shift_reg_reg[1]  ( .D(\shift_reg[0] ), .SI(\shift_reg[0] ), .SE(
        test_se), .CK(clk), .RN(async_rst_n), .Q(sync_rst_n) );
  SDFFRQX2M \shift_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(clk), .RN(async_rst_n), .Q(\shift_reg[0] ) );
endmodule


module RESET_SYNC_STAGES2_test_3 ( clk, async_rst_n, sync_rst_n, test_si, 
        test_se );
  input clk, async_rst_n, test_si, test_se;
  output sync_rst_n;
  wire   \shift_reg[0] ;

  SDFFRQX2M \shift_reg_reg[1]  ( .D(\shift_reg[0] ), .SI(\shift_reg[0] ), .SE(
        test_se), .CK(clk), .RN(async_rst_n), .Q(sync_rst_n) );
  SDFFRQX1M \shift_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(clk), .RN(async_rst_n), .Q(\shift_reg[0] ) );
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


module CLK_DIV_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si2, test_si1, test_se;
  output o_div_clk, test_so2, test_so1;
  wire   N3, t1, t2_pos, N7, N8, N9, N10, N11, N12, N13, N14, N17, N18, N19,
         N20, N21, N22, N23, N24, N36, N37, N38, N39, N40, N41, N42, N43,
         t2_neg, N58, n26, n35, n36, n37, n3, n5, n6, n7, n8, n9, n22, n23,
         n24, n25, n27, n28, n29, n30, n31, n32, n33, n34, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n100;
  wire   [7:0] half_ratio_neg;
  wire   [7:0] cnt;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign N3 = i_div_ratio[0];

  SDFFRQX2M \cnt_reg[6]  ( .D(N42), .SI(cnt[5]), .SE(n90), .CK(i_ref_clk), 
        .RN(n3), .Q(cnt[6]) );
  SDFFRQX2M \cnt_reg[5]  ( .D(N41), .SI(cnt[4]), .SE(n96), .CK(i_ref_clk), 
        .RN(n3), .Q(cnt[5]) );
  SDFFRQX2M \cnt_reg[4]  ( .D(N40), .SI(cnt[3]), .SE(n96), .CK(i_ref_clk), 
        .RN(n3), .Q(cnt[4]) );
  SDFFRQX2M \cnt_reg[3]  ( .D(N39), .SI(cnt[2]), .SE(n89), .CK(i_ref_clk), 
        .RN(n3), .Q(cnt[3]) );
  SDFFRQX2M \cnt_reg[2]  ( .D(N38), .SI(cnt[1]), .SE(n94), .CK(i_ref_clk), 
        .RN(n3), .Q(cnt[2]) );
  SDFFRQX2M \cnt_reg[1]  ( .D(N37), .SI(n98), .SE(n94), .CK(i_ref_clk), .RN(n3), .Q(cnt[1]) );
  SDFFRQX2M \cnt_reg[7]  ( .D(N43), .SI(cnt[6]), .SE(n95), .CK(i_ref_clk), 
        .RN(n3), .Q(cnt[7]) );
  SDFFRQX2M \cnt_reg[0]  ( .D(N36), .SI(test_si2), .SE(n93), .CK(i_ref_clk), 
        .RN(n3), .Q(cnt[0]) );
  SDFFNSRHX1M t2_neg_reg ( .D(n35), .SI(test_si1), .SE(n93), .CKN(i_ref_clk), 
        .SN(1'b1), .RN(n3), .Q(t2_neg), .QN(test_so1) );
  SDFFRQX1M t2_pos_reg ( .D(n37), .SI(n100), .SE(n90), .CK(i_ref_clk), .RN(n3), 
        .Q(t2_pos) );
  SDFFRQX1M t1_reg ( .D(n36), .SI(n97), .SE(n89), .CK(i_ref_clk), .RN(n3), .Q(
        t1) );
  NOR2X4M U7 ( .A(n8), .B(i_div_ratio[4]), .Y(n9) );
  NOR3BX2M U17 ( .AN(i_clk_en), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .Y(n68) );
  INVX2M U20 ( .A(n27), .Y(n51) );
  OAI21X4M U21 ( .A0(n74), .A1(n75), .B0(i_clk_en), .Y(n27) );
  OAI21X2M U22 ( .A0(n52), .A1(n53), .B0(n51), .Y(n50) );
  OAI21X8M U23 ( .A0(n72), .A1(n73), .B0(n51), .Y(n71) );
  INVX2M U24 ( .A(cnt[0]), .Y(n40) );
  INVX2M U25 ( .A(cnt[4]), .Y(n47) );
  INVX2M U26 ( .A(cnt[1]), .Y(n39) );
  INVX2M U27 ( .A(cnt[5]), .Y(n46) );
  INVX2M U28 ( .A(cnt[2]), .Y(n38) );
  INVX2M U29 ( .A(cnt[6]), .Y(n45) );
  INVX2M U30 ( .A(cnt[3]), .Y(n48) );
  OR2X2M U31 ( .A(n7), .B(i_div_ratio[3]), .Y(n8) );
  OR2X2M U32 ( .A(n6), .B(i_div_ratio[2]), .Y(n7) );
  OAI2BB1XLM U33 ( .A0N(n7), .A1N(i_div_ratio[3]), .B0(n8), .Y(N10) );
  OAI2BB1XLM U34 ( .A0N(n6), .A1N(i_div_ratio[2]), .B0(n7), .Y(N9) );
  MXI2XLM U35 ( .A(n49), .B(n50), .S0(t1), .Y(n36) );
  NAND2XLM U36 ( .A(n51), .B(n50), .Y(n49) );
  NAND2XLM U37 ( .A(i_ref_clk), .B(N3), .Y(n67) );
  NOR3X2M U38 ( .A(i_div_ratio[5]), .B(i_div_ratio[7]), .C(i_div_ratio[6]), 
        .Y(n70) );
  INVX6M U39 ( .A(n5), .Y(n3) );
  INVX2M U40 ( .A(i_rst_n), .Y(n5) );
  OR2X2M U41 ( .A(i_div_ratio[1]), .B(N3), .Y(n6) );
  INVX2M U42 ( .A(i_div_ratio[5]), .Y(n24) );
  MX2X2M U43 ( .A(test_so2), .B(t2_neg), .S0(N3), .Y(N58) );
  CLKINVX1M U44 ( .A(N3), .Y(N7) );
  OAI2BB1X1M U45 ( .A0N(N3), .A1N(i_div_ratio[1]), .B0(n6), .Y(N8) );
  AO21XLM U46 ( .A0(n8), .A1(i_div_ratio[4]), .B0(n9), .Y(N11) );
  CLKNAND2X2M U47 ( .A(n9), .B(n24), .Y(n22) );
  OAI21X1M U48 ( .A0(n9), .A1(n24), .B0(n22), .Y(N12) );
  XNOR2X1M U49 ( .A(i_div_ratio[6]), .B(n22), .Y(N13) );
  NOR2X1M U50 ( .A(i_div_ratio[6]), .B(n22), .Y(n23) );
  CLKXOR2X2M U51 ( .A(i_div_ratio[7]), .B(n23), .Y(N14) );
  OAI21X1M U52 ( .A0(n25), .A1(n27), .B0(n26), .Y(o_div_clk) );
  XNOR2X1M U53 ( .A(n100), .B(N58), .Y(n25) );
  NOR2X1M U54 ( .A(n28), .B(n27), .Y(n37) );
  CLKXOR2X2M U55 ( .A(n29), .B(t2_pos), .Y(n28) );
  CLKNAND2X2M U56 ( .A(n30), .B(n31), .Y(n29) );
  NOR4X1M U57 ( .A(cnt[7]), .B(n32), .C(n33), .D(n34), .Y(n31) );
  XNOR2X1M U58 ( .A(i_div_ratio[3]), .B(n38), .Y(n34) );
  XNOR2X1M U59 ( .A(i_div_ratio[2]), .B(n39), .Y(n33) );
  XNOR2X1M U60 ( .A(i_div_ratio[1]), .B(n40), .Y(n32) );
  NOR4X1M U61 ( .A(n41), .B(n42), .C(n43), .D(n44), .Y(n30) );
  XNOR2X1M U62 ( .A(i_div_ratio[7]), .B(n45), .Y(n44) );
  XNOR2X1M U63 ( .A(i_div_ratio[6]), .B(n46), .Y(n43) );
  XNOR2X1M U64 ( .A(i_div_ratio[5]), .B(n47), .Y(n42) );
  XNOR2X1M U65 ( .A(i_div_ratio[4]), .B(n48), .Y(n41) );
  NAND4X1M U66 ( .A(n40), .B(n39), .C(n38), .D(n48), .Y(n53) );
  NAND4X1M U67 ( .A(n47), .B(n46), .C(n45), .D(n54), .Y(n52) );
  NOR2X1M U68 ( .A(n55), .B(n27), .Y(n35) );
  CLKXOR2X2M U69 ( .A(n56), .B(t2_neg), .Y(n55) );
  CLKNAND2X2M U70 ( .A(n57), .B(n58), .Y(n56) );
  NOR4X1M U71 ( .A(n59), .B(n60), .C(n61), .D(n62), .Y(n58) );
  XNOR2X1M U72 ( .A(half_ratio_neg[3]), .B(n48), .Y(n62) );
  XNOR2X1M U73 ( .A(half_ratio_neg[2]), .B(n38), .Y(n61) );
  XNOR2X1M U74 ( .A(half_ratio_neg[1]), .B(n39), .Y(n60) );
  XNOR2X1M U75 ( .A(half_ratio_neg[0]), .B(n40), .Y(n59) );
  NOR4X1M U76 ( .A(n63), .B(n64), .C(n65), .D(n66), .Y(n57) );
  XNOR2X1M U77 ( .A(half_ratio_neg[7]), .B(n54), .Y(n66) );
  CLKINVX1M U78 ( .A(cnt[7]), .Y(n54) );
  XNOR2X1M U79 ( .A(half_ratio_neg[6]), .B(n45), .Y(n65) );
  XNOR2X1M U80 ( .A(half_ratio_neg[5]), .B(n46), .Y(n64) );
  XNOR2X1M U81 ( .A(half_ratio_neg[4]), .B(n47), .Y(n63) );
  NAND4BX1M U82 ( .AN(n67), .B(n68), .C(n69), .D(n70), .Y(n26) );
  NOR2X1M U83 ( .A(i_div_ratio[4]), .B(i_div_ratio[3]), .Y(n69) );
  NOR2BX1M U84 ( .AN(N24), .B(n71), .Y(N43) );
  NOR2BX1M U85 ( .AN(N23), .B(n71), .Y(N42) );
  NOR2BX1M U86 ( .AN(N22), .B(n71), .Y(N41) );
  NOR2BX1M U87 ( .AN(N21), .B(n71), .Y(N40) );
  NOR2BX1M U88 ( .AN(N20), .B(n71), .Y(N39) );
  NOR2BX1M U89 ( .AN(N19), .B(n71), .Y(N38) );
  NOR2BX1M U90 ( .AN(N18), .B(n71), .Y(N37) );
  NOR2BX1M U91 ( .AN(N17), .B(n71), .Y(N36) );
  OR3X1M U92 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n75) );
  OR4X1M U93 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n74) );
  NAND4X1M U94 ( .A(n76), .B(n77), .C(n78), .D(n79), .Y(n73) );
  XNOR2X1M U95 ( .A(cnt[3]), .B(N10), .Y(n79) );
  XNOR2X1M U96 ( .A(cnt[4]), .B(N11), .Y(n78) );
  XNOR2X1M U97 ( .A(cnt[5]), .B(N12), .Y(n77) );
  XNOR2X1M U98 ( .A(cnt[6]), .B(N13), .Y(n76) );
  NAND4X1M U99 ( .A(n80), .B(n81), .C(n82), .D(n83), .Y(n72) );
  XNOR2X1M U100 ( .A(cnt[7]), .B(N14), .Y(n83) );
  XNOR2X1M U101 ( .A(cnt[0]), .B(N7), .Y(n82) );
  XNOR2X1M U102 ( .A(cnt[1]), .B(N8), .Y(n81) );
  XNOR2X1M U103 ( .A(cnt[2]), .B(N9), .Y(n80) );
  DLY1X1M U104 ( .A(n92), .Y(n88) );
  DLY1X1M U105 ( .A(n95), .Y(n89) );
  DLY1X1M U106 ( .A(n88), .Y(n90) );
  DLY1X1M U107 ( .A(test_se), .Y(n91) );
  DLY1X1M U108 ( .A(test_se), .Y(n92) );
  DLY1X1M U109 ( .A(n91), .Y(n93) );
  DLY1X1M U110 ( .A(n88), .Y(n94) );
  DLY1X1M U111 ( .A(n91), .Y(n95) );
  DLY1X1M U112 ( .A(n92), .Y(n96) );
  DLY1X1M U113 ( .A(cnt[7]), .Y(n97) );
  INVXLM U114 ( .A(n40), .Y(n98) );
  DLY1X1M U115 ( .A(t2_pos), .Y(test_so2) );
  DLY1X1M U116 ( .A(t1), .Y(n100) );
  CLK_DIV_0_DW01_inc_0 add_31 ( .A({n97, cnt[6:0]}), .SUM({N24, N23, N22, N21, 
        N20, N19, N18, N17}) );
  CLK_DIV_0_DW01_inc_1 add_20_round ( .A({1'b0, i_div_ratio[7:1], N3}), .SUM({
        half_ratio_neg, SYNOPSYS_UNCONNECTED__0}) );
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

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
endmodule


module CLK_DIV_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si2, test_si1, test_se;
  output o_div_clk, test_so2, test_so1;
  wire   N3, t1, t2_pos, N7, N8, N9, N10, N11, N12, N13, N14, N17, N18, N19,
         N20, N21, N22, N23, N24, N36, N37, N38, N39, N40, N41, N42, N43,
         t2_neg, N58, n3, n5, n6, n7, n8, n9, n22, n23, n24, n25, n27, n28,
         n29, n30, n31, n32, n33, n34, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n117;
  wire   [7:0] half_ratio_neg;
  wire   [7:0] cnt;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign N3 = i_div_ratio[0];

  SDFFRQX2M \cnt_reg[6]  ( .D(N42), .SI(cnt[5]), .SE(n107), .CK(i_ref_clk), 
        .RN(n3), .Q(cnt[6]) );
  SDFFRQX2M \cnt_reg[5]  ( .D(N41), .SI(cnt[4]), .SE(n113), .CK(i_ref_clk), 
        .RN(n3), .Q(cnt[5]) );
  SDFFRQX2M \cnt_reg[4]  ( .D(N40), .SI(cnt[3]), .SE(n113), .CK(i_ref_clk), 
        .RN(n3), .Q(cnt[4]) );
  SDFFRQX2M \cnt_reg[3]  ( .D(N39), .SI(cnt[2]), .SE(n106), .CK(i_ref_clk), 
        .RN(n3), .Q(cnt[3]) );
  SDFFRQX2M \cnt_reg[2]  ( .D(N38), .SI(cnt[1]), .SE(n111), .CK(i_ref_clk), 
        .RN(n3), .Q(cnt[2]) );
  SDFFRQX2M \cnt_reg[1]  ( .D(N37), .SI(n114), .SE(n111), .CK(i_ref_clk), .RN(
        n3), .Q(cnt[1]) );
  SDFFRQX2M \cnt_reg[7]  ( .D(N43), .SI(cnt[6]), .SE(n112), .CK(i_ref_clk), 
        .RN(n3), .Q(cnt[7]) );
  SDFFRQX2M \cnt_reg[0]  ( .D(N36), .SI(test_si2), .SE(n110), .CK(i_ref_clk), 
        .RN(n3), .Q(cnt[0]) );
  SDFFNSRHX1M t2_neg_reg ( .D(n86), .SI(test_si1), .SE(n110), .CKN(i_ref_clk), 
        .SN(1'b1), .RN(n3), .Q(t2_neg), .QN(test_so1) );
  SDFFRQX1M t2_pos_reg ( .D(n84), .SI(n117), .SE(n107), .CK(i_ref_clk), .RN(n3), .Q(t2_pos) );
  SDFFRQX1M t1_reg ( .D(n85), .SI(n115), .SE(n106), .CK(i_ref_clk), .RN(n3), 
        .Q(t1) );
  NOR2X4M U9 ( .A(n8), .B(i_div_ratio[4]), .Y(n9) );
  OAI21X2M U17 ( .A0(n52), .A1(n53), .B0(n51), .Y(n50) );
  INVX2M U20 ( .A(n27), .Y(n51) );
  OAI21X4M U21 ( .A0(n74), .A1(n75), .B0(i_clk_en), .Y(n27) );
  NOR3BX2M U22 ( .AN(i_clk_en), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .Y(n68) );
  OAI21X8M U23 ( .A0(n72), .A1(n73), .B0(n51), .Y(n71) );
  OR2X2M U24 ( .A(n7), .B(i_div_ratio[3]), .Y(n8) );
  OR2X2M U25 ( .A(n6), .B(i_div_ratio[2]), .Y(n7) );
  OAI2BB1XLM U26 ( .A0N(n7), .A1N(i_div_ratio[3]), .B0(n8), .Y(N10) );
  NAND2XLM U27 ( .A(i_ref_clk), .B(N3), .Y(n67) );
  NOR3X2M U28 ( .A(i_div_ratio[5]), .B(i_div_ratio[7]), .C(i_div_ratio[6]), 
        .Y(n70) );
  INVX2M U29 ( .A(cnt[0]), .Y(n40) );
  INVX2M U30 ( .A(cnt[4]), .Y(n47) );
  INVX2M U31 ( .A(cnt[1]), .Y(n39) );
  INVX2M U32 ( .A(cnt[5]), .Y(n46) );
  INVX2M U33 ( .A(cnt[2]), .Y(n38) );
  INVX2M U34 ( .A(cnt[6]), .Y(n45) );
  INVX2M U35 ( .A(cnt[3]), .Y(n48) );
  OAI2BB1XLM U36 ( .A0N(n6), .A1N(i_div_ratio[2]), .B0(n7), .Y(N9) );
  MXI2XLM U37 ( .A(n49), .B(n50), .S0(t1), .Y(n85) );
  NAND2XLM U38 ( .A(n51), .B(n50), .Y(n49) );
  OR2X2M U39 ( .A(i_div_ratio[1]), .B(N3), .Y(n6) );
  INVX2M U40 ( .A(i_div_ratio[5]), .Y(n24) );
  INVX6M U41 ( .A(n5), .Y(n3) );
  INVX2M U42 ( .A(i_rst_n), .Y(n5) );
  MX2X2M U43 ( .A(test_so2), .B(t2_neg), .S0(N3), .Y(N58) );
  CLKINVX1M U44 ( .A(N3), .Y(N7) );
  OAI2BB1X1M U45 ( .A0N(N3), .A1N(i_div_ratio[1]), .B0(n6), .Y(N8) );
  AO21XLM U46 ( .A0(n8), .A1(i_div_ratio[4]), .B0(n9), .Y(N11) );
  CLKNAND2X2M U47 ( .A(n9), .B(n24), .Y(n22) );
  OAI21X1M U48 ( .A0(n9), .A1(n24), .B0(n22), .Y(N12) );
  XNOR2X1M U49 ( .A(i_div_ratio[6]), .B(n22), .Y(N13) );
  NOR2X1M U50 ( .A(i_div_ratio[6]), .B(n22), .Y(n23) );
  CLKXOR2X2M U51 ( .A(i_div_ratio[7]), .B(n23), .Y(N14) );
  OAI21X1M U52 ( .A0(n25), .A1(n27), .B0(n87), .Y(o_div_clk) );
  XNOR2X1M U53 ( .A(n117), .B(N58), .Y(n25) );
  NOR2X1M U54 ( .A(n28), .B(n27), .Y(n84) );
  CLKXOR2X2M U55 ( .A(n29), .B(t2_pos), .Y(n28) );
  CLKNAND2X2M U56 ( .A(n30), .B(n31), .Y(n29) );
  NOR4X1M U57 ( .A(cnt[7]), .B(n32), .C(n33), .D(n34), .Y(n31) );
  XNOR2X1M U58 ( .A(i_div_ratio[3]), .B(n38), .Y(n34) );
  XNOR2X1M U59 ( .A(i_div_ratio[2]), .B(n39), .Y(n33) );
  XNOR2X1M U60 ( .A(i_div_ratio[1]), .B(n40), .Y(n32) );
  NOR4X1M U61 ( .A(n41), .B(n42), .C(n43), .D(n44), .Y(n30) );
  XNOR2X1M U62 ( .A(i_div_ratio[7]), .B(n45), .Y(n44) );
  XNOR2X1M U63 ( .A(i_div_ratio[6]), .B(n46), .Y(n43) );
  XNOR2X1M U64 ( .A(i_div_ratio[5]), .B(n47), .Y(n42) );
  XNOR2X1M U65 ( .A(i_div_ratio[4]), .B(n48), .Y(n41) );
  NAND4X1M U66 ( .A(n40), .B(n39), .C(n38), .D(n48), .Y(n53) );
  NAND4X1M U67 ( .A(n47), .B(n46), .C(n45), .D(n54), .Y(n52) );
  NOR2X1M U68 ( .A(n55), .B(n27), .Y(n86) );
  CLKXOR2X2M U69 ( .A(n56), .B(t2_neg), .Y(n55) );
  CLKNAND2X2M U70 ( .A(n57), .B(n58), .Y(n56) );
  NOR4X1M U71 ( .A(n59), .B(n60), .C(n61), .D(n62), .Y(n58) );
  XNOR2X1M U72 ( .A(half_ratio_neg[3]), .B(n48), .Y(n62) );
  XNOR2X1M U73 ( .A(half_ratio_neg[2]), .B(n38), .Y(n61) );
  XNOR2X1M U74 ( .A(half_ratio_neg[1]), .B(n39), .Y(n60) );
  XNOR2X1M U75 ( .A(half_ratio_neg[0]), .B(n40), .Y(n59) );
  NOR4X1M U76 ( .A(n63), .B(n64), .C(n65), .D(n66), .Y(n57) );
  XNOR2X1M U77 ( .A(half_ratio_neg[7]), .B(n54), .Y(n66) );
  CLKINVX1M U78 ( .A(cnt[7]), .Y(n54) );
  XNOR2X1M U79 ( .A(half_ratio_neg[6]), .B(n45), .Y(n65) );
  XNOR2X1M U80 ( .A(half_ratio_neg[5]), .B(n46), .Y(n64) );
  XNOR2X1M U81 ( .A(half_ratio_neg[4]), .B(n47), .Y(n63) );
  NAND4BX1M U82 ( .AN(n67), .B(n68), .C(n69), .D(n70), .Y(n87) );
  NOR2X1M U83 ( .A(i_div_ratio[4]), .B(i_div_ratio[3]), .Y(n69) );
  NOR2BX1M U84 ( .AN(N24), .B(n71), .Y(N43) );
  NOR2BX1M U85 ( .AN(N23), .B(n71), .Y(N42) );
  NOR2BX1M U86 ( .AN(N22), .B(n71), .Y(N41) );
  NOR2BX1M U87 ( .AN(N21), .B(n71), .Y(N40) );
  NOR2BX1M U88 ( .AN(N20), .B(n71), .Y(N39) );
  NOR2BX1M U89 ( .AN(N19), .B(n71), .Y(N38) );
  NOR2BX1M U90 ( .AN(N18), .B(n71), .Y(N37) );
  NOR2BX1M U91 ( .AN(N17), .B(n71), .Y(N36) );
  OR3X1M U92 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n75) );
  OR4X1M U93 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n74) );
  NAND4X1M U94 ( .A(n76), .B(n77), .C(n78), .D(n79), .Y(n73) );
  XNOR2X1M U95 ( .A(cnt[3]), .B(N10), .Y(n79) );
  XNOR2X1M U96 ( .A(cnt[4]), .B(N11), .Y(n78) );
  XNOR2X1M U97 ( .A(cnt[5]), .B(N12), .Y(n77) );
  XNOR2X1M U98 ( .A(cnt[6]), .B(N13), .Y(n76) );
  NAND4X1M U99 ( .A(n80), .B(n81), .C(n82), .D(n83), .Y(n72) );
  XNOR2X1M U100 ( .A(cnt[7]), .B(N14), .Y(n83) );
  XNOR2X1M U101 ( .A(cnt[0]), .B(N7), .Y(n82) );
  XNOR2X1M U102 ( .A(cnt[1]), .B(N8), .Y(n81) );
  XNOR2X1M U103 ( .A(cnt[2]), .B(N9), .Y(n80) );
  DLY1X1M U104 ( .A(n109), .Y(n105) );
  DLY1X1M U105 ( .A(n112), .Y(n106) );
  DLY1X1M U106 ( .A(n105), .Y(n107) );
  DLY1X1M U107 ( .A(test_se), .Y(n108) );
  DLY1X1M U108 ( .A(test_se), .Y(n109) );
  DLY1X1M U109 ( .A(n108), .Y(n110) );
  DLY1X1M U110 ( .A(n105), .Y(n111) );
  DLY1X1M U111 ( .A(n108), .Y(n112) );
  DLY1X1M U112 ( .A(n109), .Y(n113) );
  INVXLM U113 ( .A(n40), .Y(n114) );
  DLY1X1M U114 ( .A(cnt[7]), .Y(n115) );
  DLY1X1M U115 ( .A(t2_pos), .Y(test_so2) );
  DLY1X1M U116 ( .A(t1), .Y(n117) );
  CLK_DIV_1_DW01_inc_0 add_31 ( .A({n115, cnt[6:0]}), .SUM({N24, N23, N22, N21, 
        N20, N19, N18, N17}) );
  CLK_DIV_1_DW01_inc_1 add_20_round ( .A({1'b0, i_div_ratio[7:1], N3}), .SUM({
        half_ratio_neg, SYNOPSYS_UNCONNECTED__0}) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, ALU_OUT, OUT_Valid, RdData, RdData_Valid, 
        RX_P_DATA, RX_D_VLD, FIFO_FULL, ALU_FUN, EN, CLK_EN, Address, WrEn, 
        RdEn, WrData, TX_P_DATA, TX_D_VLD, clk_div_en, test_si, test_so, 
        test_se );
  input [15:0] ALU_OUT;
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_DATA;
  input CLK, RST, OUT_Valid, RdData_Valid, RX_D_VLD, FIFO_FULL, test_si,
         test_se;
  output EN, CLK_EN, WrEn, RdEn, TX_D_VLD, clk_div_en, test_so;
  wire   n1, n12, n15, n19, n22, n23, n24, n25, n26, n27, n29, n30, n31, n32,
         n34, n36, n38, n39, n40, n41, n44, n46, n47, n48, n49, n50, n52, n53,
         n55, n56, n57, n59, n60, n61, n62, n63, n65, n67, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n89, n91, n93, n95, n99, n100, n101, n102,
         n103, n104, n105, n106, n8, n9, n10, n11, n13, n14, n16, n17, n18,
         n20, n21, n28, n33, n35, n37, n42, n43, n45, n51, n58, n64, n66, n68,
         n78, n79, n80, n81, n82, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n117, n118, n119, n120, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131;
  wire   [3:0] current_state;
  wire   [3:0] alu_fun_reg;
  assign test_so = current_state[3];

  OAI221X4M U38 ( .A0(RdData_Valid), .A1(n55), .B0(OUT_Valid), .B1(n27), .C0(
        n56), .Y(n41) );
  OAI22X8M U90 ( .A0(n45), .A1(n25), .B0(n77), .B1(n115), .Y(Address[0]) );
  SDFFRQX2M \alu_fun_reg_reg[0]  ( .D(n95), .SI(n117), .SE(n130), .CK(CLK), 
        .RN(n13), .Q(alu_fun_reg[0]) );
  SDFFRQX2M \alu_fun_reg_reg[3]  ( .D(n93), .SI(alu_fun_reg[2]), .SE(n131), 
        .CK(CLK), .RN(n13), .Q(alu_fun_reg[3]) );
  SDFFRQX2M \alu_fun_reg_reg[2]  ( .D(n91), .SI(alu_fun_reg[1]), .SE(n125), 
        .CK(CLK), .RN(n13), .Q(alu_fun_reg[2]) );
  SDFFRQX2M \alu_fun_reg_reg[1]  ( .D(n89), .SI(alu_fun_reg[0]), .SE(n124), 
        .CK(CLK), .RN(n13), .Q(alu_fun_reg[1]) );
  SDFFRX1M \addr_reg_reg[1]  ( .D(n100), .SI(n120), .SE(n129), .CK(CLK), .RN(
        n13), .Q(n119), .QN(n114) );
  SDFFRX1M \addr_reg_reg[0]  ( .D(n99), .SI(test_si), .SE(n130), .CK(CLK), 
        .RN(n13), .Q(n120), .QN(n115) );
  SDFFRX1M \addr_reg_reg[3]  ( .D(n102), .SI(n118), .SE(n131), .CK(CLK), .RN(
        n13), .Q(n117), .QN(n112) );
  SDFFRX1M \addr_reg_reg[2]  ( .D(n101), .SI(n119), .SE(n128), .CK(CLK), .RN(
        n13), .Q(n118), .QN(n113) );
  SDFFRQX2M \current_state_reg[3]  ( .D(n103), .SI(current_state[2]), .SE(n128), .CK(CLK), .RN(n13), .Q(current_state[3]) );
  SDFFRQX4M \current_state_reg[2]  ( .D(n105), .SI(current_state[1]), .SE(n124), .CK(CLK), .RN(n13), .Q(current_state[2]) );
  SDFFRQX4M \current_state_reg[1]  ( .D(n104), .SI(current_state[0]), .SE(n125), .CK(CLK), .RN(n13), .Q(current_state[1]) );
  SDFFRQX4M \current_state_reg[0]  ( .D(n106), .SI(alu_fun_reg[3]), .SE(n129), 
        .CK(CLK), .RN(n13), .Q(current_state[0]) );
  NOR2X8M U5 ( .A(n68), .B(n108), .Y(ALU_FUN[3]) );
  NOR2X6M U6 ( .A(n77), .B(n113), .Y(Address[2]) );
  NOR2X6M U7 ( .A(n77), .B(n114), .Y(Address[1]) );
  NAND2XLM U8 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[0]), .Y(n50) );
  NAND4X4M U9 ( .A(current_state[2]), .B(current_state[1]), .C(
        current_state[0]), .D(n111), .Y(n25) );
  NOR2X4M U10 ( .A(n111), .B(current_state[2]), .Y(n61) );
  NAND2X2M U14 ( .A(n78), .B(n61), .Y(n26) );
  INVX2M U15 ( .A(n15), .Y(n43) );
  NOR2X4M U16 ( .A(n68), .B(n109), .Y(ALU_FUN[2]) );
  NOR2X4M U17 ( .A(n68), .B(n110), .Y(ALU_FUN[1]) );
  INVX2M U18 ( .A(RX_D_VLD), .Y(n45) );
  INVX2M U19 ( .A(RX_P_DATA[1]), .Y(n35) );
  INVX2M U20 ( .A(RX_P_DATA[0]), .Y(n37) );
  INVX4M U21 ( .A(n10), .Y(n11) );
  AOI21X6M U22 ( .A0(n19), .A1(n78), .B0(RdEn), .Y(n77) );
  INVX2M U23 ( .A(n40), .Y(n58) );
  INVX6M U24 ( .A(n26), .Y(n66) );
  NOR2X2M U25 ( .A(n11), .B(n59), .Y(TX_D_VLD) );
  INVX2M U26 ( .A(n9), .Y(WrEn) );
  INVX2M U27 ( .A(FIFO_FULL), .Y(n10) );
  INVX2M U28 ( .A(n1), .Y(n42) );
  INVX4M U29 ( .A(EN), .Y(n68) );
  NOR2X6M U30 ( .A(n77), .B(n112), .Y(Address[3]) );
  NAND3X2M U31 ( .A(n81), .B(n111), .C(n79), .Y(n40) );
  INVX2M U32 ( .A(n55), .Y(RdEn) );
  NAND2X4M U33 ( .A(n82), .B(n111), .Y(n34) );
  NOR2X4M U34 ( .A(n34), .B(n45), .Y(n19) );
  INVX2M U35 ( .A(n63), .Y(n78) );
  INVX4M U36 ( .A(n41), .Y(n16) );
  NOR3X4M U37 ( .A(n66), .B(n8), .C(n80), .Y(n59) );
  OAI211X4M U39 ( .A0(n34), .A1(n63), .B0(n46), .C0(n25), .Y(n60) );
  OAI211X2M U40 ( .A0(n16), .A1(n82), .B0(n36), .C0(n30), .Y(n105) );
  OAI31X2M U41 ( .A0(n44), .A1(RdEn), .A2(n64), .B0(n16), .Y(n36) );
  NOR3X2M U42 ( .A(n81), .B(n34), .C(n79), .Y(n44) );
  INVX2M U43 ( .A(n46), .Y(n64) );
  NAND3X2M U44 ( .A(n37), .B(n21), .C(n23), .Y(n30) );
  NAND3X4M U45 ( .A(n79), .B(n81), .C(n61), .Y(n12) );
  INVX6M U46 ( .A(n76), .Y(n80) );
  BUFX4M U47 ( .A(n62), .Y(n9) );
  NOR2X6M U48 ( .A(n45), .B(n12), .Y(n1) );
  NOR2X2M U49 ( .A(n37), .B(n9), .Y(WrData[0]) );
  NOR2X2M U50 ( .A(n35), .B(n9), .Y(WrData[1]) );
  NOR2X2M U51 ( .A(n33), .B(n9), .Y(WrData[2]) );
  NOR2X2M U52 ( .A(n28), .B(n9), .Y(WrData[3]) );
  NOR2X2M U53 ( .A(n21), .B(n9), .Y(WrData[4]) );
  NOR2X2M U54 ( .A(n20), .B(n9), .Y(WrData[5]) );
  NOR2X2M U55 ( .A(n18), .B(n9), .Y(WrData[6]) );
  NOR2X2M U56 ( .A(n17), .B(n62), .Y(WrData[7]) );
  OAI22X1M U57 ( .A0(n1), .A1(n110), .B0(n42), .B1(n35), .Y(n89) );
  OAI22X1M U58 ( .A0(n1), .A1(n109), .B0(n42), .B1(n33), .Y(n91) );
  OAI22X1M U59 ( .A0(n1), .A1(n108), .B0(n42), .B1(n28), .Y(n93) );
  OAI22X1M U60 ( .A0(n1), .A1(n107), .B0(n42), .B1(n37), .Y(n95) );
  OAI22X1M U61 ( .A0(n43), .A1(n115), .B0(n37), .B1(n15), .Y(n99) );
  OAI22X1M U62 ( .A0(n43), .A1(n114), .B0(n35), .B1(n15), .Y(n100) );
  OAI22X1M U63 ( .A0(n43), .A1(n113), .B0(n33), .B1(n15), .Y(n101) );
  OAI22X1M U64 ( .A0(n43), .A1(n112), .B0(n28), .B1(n15), .Y(n102) );
  NOR2X8M U65 ( .A(n68), .B(n107), .Y(ALU_FUN[0]) );
  INVX6M U66 ( .A(n14), .Y(n13) );
  INVX2M U67 ( .A(RST), .Y(n14) );
  INVX4M U68 ( .A(current_state[0]), .Y(n79) );
  INVX4M U69 ( .A(current_state[3]), .Y(n111) );
  INVX4M U70 ( .A(current_state[1]), .Y(n81) );
  NAND2X2M U71 ( .A(n58), .B(current_state[2]), .Y(n55) );
  INVX2M U72 ( .A(current_state[2]), .Y(n82) );
  NAND2X2M U73 ( .A(current_state[1]), .B(n79), .Y(n63) );
  AOI22X1M U74 ( .A0(n57), .A1(n45), .B0(n11), .B1(n51), .Y(n56) );
  NAND3BX2M U75 ( .AN(n60), .B(n34), .C(n12), .Y(n57) );
  INVX2M U76 ( .A(n59), .Y(n51) );
  OAI22X1M U77 ( .A0(n16), .A1(n79), .B0(n47), .B1(n41), .Y(n106) );
  NOR4BX2M U78 ( .AN(n12), .B(RdEn), .C(n48), .D(n31), .Y(n47) );
  NOR3X2M U79 ( .A(n49), .B(RX_P_DATA[4]), .C(RX_P_DATA[0]), .Y(n48) );
  NAND3X2M U80 ( .A(current_state[2]), .B(n111), .C(n78), .Y(n46) );
  OAI211X2M U81 ( .A0(n16), .A1(n81), .B0(n29), .C0(n30), .Y(n104) );
  OAI21X2M U82 ( .A0(n31), .A1(n32), .B0(n16), .Y(n29) );
  OAI31X2M U83 ( .A0(n79), .A1(current_state[1]), .A2(n34), .B0(n27), .Y(n32)
         );
  OAI21X2M U84 ( .A0(n16), .A1(n111), .B0(n22), .Y(n103) );
  AOI32X1M U85 ( .A0(n23), .A1(RX_P_DATA[0]), .A2(RX_P_DATA[4]), .B0(n16), 
        .B1(n24), .Y(n22) );
  NAND4X2M U86 ( .A(n25), .B(n26), .C(n27), .D(n12), .Y(n24) );
  AND4X2M U87 ( .A(RX_P_DATA[3]), .B(RX_P_DATA[2]), .C(n38), .D(n39), .Y(n23)
         );
  NOR3X2M U88 ( .A(RX_P_DATA[1]), .B(current_state[2]), .C(RX_P_DATA[5]), .Y(
        n38) );
  NOR4X1M U89 ( .A(n40), .B(n41), .C(n18), .D(n17), .Y(n39) );
  NOR2X2M U91 ( .A(n11), .B(n75), .Y(TX_P_DATA[0]) );
  AOI222X2M U92 ( .A0(ALU_OUT[0]), .A1(n66), .B0(RdData[0]), .B1(n8), .C0(
        ALU_OUT[8]), .C1(n80), .Y(n75) );
  NOR2X2M U93 ( .A(n11), .B(n74), .Y(TX_P_DATA[1]) );
  AOI222X2M U94 ( .A0(ALU_OUT[1]), .A1(n66), .B0(RdData[1]), .B1(n8), .C0(
        ALU_OUT[9]), .C1(n80), .Y(n74) );
  NOR2X2M U95 ( .A(FIFO_FULL), .B(n73), .Y(TX_P_DATA[2]) );
  AOI222X2M U96 ( .A0(ALU_OUT[2]), .A1(n66), .B0(RdData[2]), .B1(n8), .C0(
        ALU_OUT[10]), .C1(n80), .Y(n73) );
  NOR2X2M U97 ( .A(n11), .B(n72), .Y(TX_P_DATA[3]) );
  AOI222X2M U98 ( .A0(ALU_OUT[3]), .A1(n66), .B0(RdData[3]), .B1(n8), .C0(
        ALU_OUT[11]), .C1(n80), .Y(n72) );
  NOR2X2M U99 ( .A(FIFO_FULL), .B(n71), .Y(TX_P_DATA[4]) );
  AOI222X2M U100 ( .A0(ALU_OUT[4]), .A1(n66), .B0(RdData[4]), .B1(n8), .C0(
        ALU_OUT[12]), .C1(n80), .Y(n71) );
  NOR2X2M U101 ( .A(n11), .B(n70), .Y(TX_P_DATA[5]) );
  AOI222X2M U102 ( .A0(ALU_OUT[5]), .A1(n66), .B0(RdData[5]), .B1(n8), .C0(
        ALU_OUT[13]), .C1(n80), .Y(n70) );
  NOR2X2M U103 ( .A(n11), .B(n69), .Y(TX_P_DATA[6]) );
  AOI222X2M U104 ( .A0(ALU_OUT[6]), .A1(n66), .B0(RdData[6]), .B1(n8), .C0(
        ALU_OUT[14]), .C1(n80), .Y(n69) );
  NOR2X2M U105 ( .A(n11), .B(n65), .Y(TX_P_DATA[7]) );
  AOI222X2M U106 ( .A0(ALU_OUT[7]), .A1(n66), .B0(RdData[7]), .B1(n8), .C0(
        ALU_OUT[15]), .C1(n80), .Y(n65) );
  NAND3X4M U107 ( .A(n61), .B(n81), .C(current_state[0]), .Y(n27) );
  NAND3X2M U108 ( .A(current_state[0]), .B(n61), .C(current_state[1]), .Y(n76)
         );
  CLKBUFX6M U109 ( .A(n67), .Y(n8) );
  NOR4X2M U110 ( .A(n82), .B(n79), .C(current_state[1]), .D(current_state[3]), 
        .Y(n67) );
  NAND2X2M U111 ( .A(RX_D_VLD), .B(n60), .Y(n62) );
  OAI211X4M U112 ( .A0(n49), .A1(n50), .B0(n46), .C0(n26), .Y(n31) );
  NAND4X2M U113 ( .A(n58), .B(RX_P_DATA[3]), .C(n52), .D(n53), .Y(n49) );
  NOR2X2M U114 ( .A(n17), .B(n20), .Y(n52) );
  NOR4X2M U115 ( .A(current_state[2]), .B(RX_P_DATA[6]), .C(RX_P_DATA[2]), .D(
        n35), .Y(n53) );
  NAND2X4M U116 ( .A(current_state[0]), .B(n19), .Y(n15) );
  INVX2M U117 ( .A(RX_P_DATA[7]), .Y(n17) );
  INVX2M U118 ( .A(RX_P_DATA[2]), .Y(n33) );
  INVX2M U119 ( .A(RX_P_DATA[3]), .Y(n28) );
  INVX2M U120 ( .A(RX_P_DATA[4]), .Y(n21) );
  INVX2M U133 ( .A(RX_P_DATA[6]), .Y(n18) );
  INVX2M U134 ( .A(RX_P_DATA[5]), .Y(n20) );
  INVX2M U135 ( .A(alu_fun_reg[2]), .Y(n109) );
  INVX2M U136 ( .A(alu_fun_reg[1]), .Y(n110) );
  INVX2M U137 ( .A(alu_fun_reg[3]), .Y(n108) );
  INVX2M U138 ( .A(alu_fun_reg[0]), .Y(n107) );
  BUFX2M U139 ( .A(EN), .Y(CLK_EN) );
  NAND3X4M U140 ( .A(n26), .B(n27), .C(n76), .Y(EN) );
  DLY1X1M U141 ( .A(n126), .Y(n122) );
  DLY1X1M U142 ( .A(n127), .Y(n123) );
  DLY1X1M U143 ( .A(n123), .Y(n124) );
  DLY1X1M U144 ( .A(n122), .Y(n125) );
  DLY1X1M U145 ( .A(test_se), .Y(n126) );
  DLY1X1M U146 ( .A(test_se), .Y(n127) );
  DLY1X1M U147 ( .A(n122), .Y(n128) );
  DLY1X1M U148 ( .A(n123), .Y(n129) );
  DLY1X1M U149 ( .A(n126), .Y(n130) );
  DLY1X1M U150 ( .A(n127), .Y(n131) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
endmodule


module RegisterFile_DATA_WIDTH8_DATA_DEPTH16_ADDR_WIDTH4_test_1 ( CLK, RST, 
        Address, WrEn, RdEn, WrData, RdData, RdData_Valid, REG0, REG1, REG2, 
        REG3, test_si3, test_si2, test_si1, test_so3, test_so2, test_so1, 
        test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn, test_si3, test_si2, test_si1, test_se;
  output RdData_Valid, test_so3, test_so2, test_so1;
  wire   N9, N10, N11, N12, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, \mem[4][7] , \mem[4][6] , \mem[4][5] ,
         \mem[4][4] , \mem[4][3] , \mem[4][2] , \mem[4][1] , \mem[4][0] ,
         \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] , \mem[5][3] ,
         \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][7] , \mem[6][6] ,
         \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] , \mem[6][1] ,
         \mem[6][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] ,
         \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , \mem[8][7] ,
         \mem[8][6] , \mem[8][5] , \mem[8][4] , \mem[8][3] , \mem[8][2] ,
         \mem[8][1] , \mem[8][0] , \mem[9][7] , \mem[9][6] , \mem[9][5] ,
         \mem[9][4] , \mem[9][3] , \mem[9][2] , \mem[9][1] , \mem[9][0] ,
         \mem[10][7] , \mem[10][6] , \mem[10][5] , \mem[10][4] , \mem[10][3] ,
         \mem[10][2] , \mem[10][1] , \mem[10][0] , \mem[11][7] , \mem[11][6] ,
         \mem[11][5] , \mem[11][4] , \mem[11][3] , \mem[11][2] , \mem[11][1] ,
         \mem[11][0] , \mem[12][7] , \mem[12][6] , \mem[12][5] , \mem[12][4] ,
         \mem[12][3] , \mem[12][2] , \mem[12][1] , \mem[12][0] , \mem[13][7] ,
         \mem[13][6] , \mem[13][5] , \mem[13][4] , \mem[13][3] , \mem[13][2] ,
         \mem[13][1] , \mem[13][0] , \mem[14][7] , \mem[14][6] , \mem[14][5] ,
         \mem[14][4] , \mem[14][3] , \mem[14][2] , \mem[14][1] , \mem[14][0] ,
         \mem[15][7] , \mem[15][6] , \mem[15][5] , \mem[15][4] , \mem[15][3] ,
         \mem[15][2] , \mem[15][1] , \mem[15][0] , N32, N33, N34, N35, N36,
         N37, N38, N39, N56, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n138, n140, n142, n144, n146, n148, n312, n314, n316, n318, n320,
         n322, n324, n326, n328, n330, n332, n334, n336, n338, n340, n342,
         n344, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n577, n578, n579, n580, n581,
         n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, n592,
         n593, n594, n595, n596, n597, n598, n599, n600, n601, n602, n603,
         n604, n605, n606, n607, n608, n609, n610, n611, n612, n613, n614,
         n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, n625,
         n626, n627, n628, n629, n630, n631, n632, n633, n634, n635, n636,
         n637, n638, n639, n640, n641, n642, n643, n644, n645, n646, n647,
         n648, n649, n650, n651, n652, n653, n654, n655, n656, n657, n658,
         n659, n660, n661, n662, n663, n664, n665, n666, n667, n668, n669,
         n670, n671, n672, n673, n674, n675, n676, n677, n678, n679, n680,
         n681, n682, n683, n684, n685, n686, n687, n688, n689, n690, n691,
         n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, n702,
         n703, n704, n705, n706, n707, n708, n709, n710, n711, n712, n713,
         n714, n715;
  assign N9 = Address[0];
  assign N10 = Address[1];
  assign N11 = Address[2];
  assign N12 = Address[3];
  assign test_so1 = n551;
  assign test_so2 = \mem[13][0] ;
  assign test_so3 = \mem[15][7] ;

  SDFFRQX2M \RdData_reg[7]  ( .D(n183), .SI(RdData[6]), .SE(n593), .CK(CLK), 
        .RN(n526), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n182), .SI(RdData[5]), .SE(n642), .CK(CLK), 
        .RN(n526), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n181), .SI(RdData[4]), .SE(n642), .CK(CLK), 
        .RN(n526), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n180), .SI(RdData[3]), .SE(n704), .CK(CLK), 
        .RN(n526), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n179), .SI(RdData[2]), .SE(n619), .CK(CLK), 
        .RN(n526), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n178), .SI(RdData[1]), .SE(n619), .CK(CLK), 
        .RN(n526), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n177), .SI(RdData[0]), .SE(n641), .CK(CLK), 
        .RN(n526), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n176), .SI(RdData_Valid), .SE(n641), .CK(CLK), 
        .RN(n531), .Q(RdData[0]) );
  SDFFRQX2M RdData_Valid_reg ( .D(n493), .SI(test_si1), .SE(n702), .CK(CLK), 
        .RN(n526), .Q(RdData_Valid) );
  SDFFRQX2M \mem_reg[5][7]  ( .D(n271), .SI(\mem[5][6] ), .SE(n618), .CK(CLK), 
        .RN(n533), .Q(\mem[5][7] ) );
  SDFFRQX2M \mem_reg[5][6]  ( .D(n270), .SI(\mem[5][5] ), .SE(n618), .CK(CLK), 
        .RN(n533), .Q(\mem[5][6] ) );
  SDFFRQX2M \mem_reg[5][5]  ( .D(n269), .SI(\mem[5][4] ), .SE(n640), .CK(CLK), 
        .RN(n533), .Q(\mem[5][5] ) );
  SDFFRQX2M \mem_reg[5][4]  ( .D(n268), .SI(\mem[5][3] ), .SE(n640), .CK(CLK), 
        .RN(n533), .Q(\mem[5][4] ) );
  SDFFRQX2M \mem_reg[5][3]  ( .D(n267), .SI(\mem[5][2] ), .SE(n700), .CK(CLK), 
        .RN(n533), .Q(\mem[5][3] ) );
  SDFFRQX2M \mem_reg[5][2]  ( .D(n266), .SI(\mem[5][1] ), .SE(n617), .CK(CLK), 
        .RN(n533), .Q(\mem[5][2] ) );
  SDFFRQX2M \mem_reg[5][1]  ( .D(n265), .SI(\mem[5][0] ), .SE(n617), .CK(CLK), 
        .RN(n533), .Q(\mem[5][1] ) );
  SDFFRQX2M \mem_reg[5][0]  ( .D(n264), .SI(\mem[4][7] ), .SE(n639), .CK(CLK), 
        .RN(n533), .Q(\mem[5][0] ) );
  SDFFRQX2M \mem_reg[7][7]  ( .D(n255), .SI(\mem[7][6] ), .SE(n639), .CK(CLK), 
        .RN(n532), .Q(\mem[7][7] ) );
  SDFFRQX2M \mem_reg[7][6]  ( .D(n254), .SI(\mem[7][5] ), .SE(n698), .CK(CLK), 
        .RN(n532), .Q(\mem[7][6] ) );
  SDFFRQX2M \mem_reg[7][5]  ( .D(n253), .SI(\mem[7][4] ), .SE(n616), .CK(CLK), 
        .RN(n532), .Q(\mem[7][5] ) );
  SDFFRQX2M \mem_reg[7][4]  ( .D(n252), .SI(\mem[7][3] ), .SE(n616), .CK(CLK), 
        .RN(n532), .Q(\mem[7][4] ) );
  SDFFRQX2M \mem_reg[7][3]  ( .D(n251), .SI(\mem[7][2] ), .SE(n638), .CK(CLK), 
        .RN(n532), .Q(\mem[7][3] ) );
  SDFFRQX2M \mem_reg[7][2]  ( .D(n250), .SI(\mem[7][1] ), .SE(n638), .CK(CLK), 
        .RN(n532), .Q(\mem[7][2] ) );
  SDFFRQX2M \mem_reg[7][1]  ( .D(n249), .SI(\mem[7][0] ), .SE(n696), .CK(CLK), 
        .RN(n532), .Q(\mem[7][1] ) );
  SDFFRQX2M \mem_reg[7][0]  ( .D(n248), .SI(\mem[6][7] ), .SE(n615), .CK(CLK), 
        .RN(n531), .Q(\mem[7][0] ) );
  SDFFRQX2M \mem_reg[9][7]  ( .D(n239), .SI(\mem[9][6] ), .SE(n615), .CK(CLK), 
        .RN(n531), .Q(\mem[9][7] ) );
  SDFFRQX2M \mem_reg[9][6]  ( .D(n238), .SI(\mem[9][5] ), .SE(n637), .CK(CLK), 
        .RN(n531), .Q(\mem[9][6] ) );
  SDFFRQX2M \mem_reg[9][5]  ( .D(n237), .SI(\mem[9][4] ), .SE(n637), .CK(CLK), 
        .RN(n531), .Q(\mem[9][5] ) );
  SDFFRQX2M \mem_reg[9][4]  ( .D(n236), .SI(\mem[9][3] ), .SE(n694), .CK(CLK), 
        .RN(n530), .Q(\mem[9][4] ) );
  SDFFRQX2M \mem_reg[9][3]  ( .D(n235), .SI(\mem[9][2] ), .SE(n614), .CK(CLK), 
        .RN(n530), .Q(\mem[9][3] ) );
  SDFFRQX2M \mem_reg[9][2]  ( .D(n234), .SI(\mem[9][1] ), .SE(n614), .CK(CLK), 
        .RN(n530), .Q(\mem[9][2] ) );
  SDFFRQX2M \mem_reg[9][1]  ( .D(n233), .SI(\mem[9][0] ), .SE(n636), .CK(CLK), 
        .RN(n530), .Q(\mem[9][1] ) );
  SDFFRQX2M \mem_reg[9][0]  ( .D(n232), .SI(\mem[8][7] ), .SE(n636), .CK(CLK), 
        .RN(n530), .Q(\mem[9][0] ) );
  SDFFRQX2M \mem_reg[11][7]  ( .D(n223), .SI(\mem[11][6] ), .SE(n692), .CK(CLK), .RN(n529), .Q(\mem[11][7] ) );
  SDFFRQX2M \mem_reg[11][6]  ( .D(n222), .SI(\mem[11][5] ), .SE(n613), .CK(CLK), .RN(n529), .Q(\mem[11][6] ) );
  SDFFRQX2M \mem_reg[11][5]  ( .D(n221), .SI(\mem[11][4] ), .SE(n613), .CK(CLK), .RN(n529), .Q(\mem[11][5] ) );
  SDFFRQX2M \mem_reg[11][4]  ( .D(n220), .SI(\mem[11][3] ), .SE(n635), .CK(CLK), .RN(n529), .Q(\mem[11][4] ) );
  SDFFRQX2M \mem_reg[11][3]  ( .D(n219), .SI(\mem[11][2] ), .SE(n635), .CK(CLK), .RN(n529), .Q(\mem[11][3] ) );
  SDFFRQX2M \mem_reg[11][2]  ( .D(n218), .SI(\mem[11][1] ), .SE(n690), .CK(CLK), .RN(n529), .Q(\mem[11][2] ) );
  SDFFRQX2M \mem_reg[11][1]  ( .D(n217), .SI(\mem[11][0] ), .SE(n612), .CK(CLK), .RN(n529), .Q(\mem[11][1] ) );
  SDFFRQX2M \mem_reg[11][0]  ( .D(n216), .SI(\mem[10][7] ), .SE(n612), .CK(CLK), .RN(n529), .Q(\mem[11][0] ) );
  SDFFRQX2M \mem_reg[13][7]  ( .D(n207), .SI(\mem[13][6] ), .SE(n634), .CK(CLK), .RN(n528), .Q(\mem[13][7] ) );
  SDFFRQX2M \mem_reg[13][6]  ( .D(n206), .SI(\mem[13][5] ), .SE(n634), .CK(CLK), .RN(n528), .Q(\mem[13][6] ) );
  SDFFRQX2M \mem_reg[13][5]  ( .D(n205), .SI(\mem[13][4] ), .SE(n688), .CK(CLK), .RN(n528), .Q(\mem[13][5] ) );
  SDFFRQX2M \mem_reg[13][4]  ( .D(n204), .SI(\mem[13][3] ), .SE(n611), .CK(CLK), .RN(n528), .Q(\mem[13][4] ) );
  SDFFRQX2M \mem_reg[13][3]  ( .D(n203), .SI(\mem[13][2] ), .SE(n611), .CK(CLK), .RN(n528), .Q(\mem[13][3] ) );
  SDFFRQX2M \mem_reg[13][2]  ( .D(n202), .SI(\mem[13][1] ), .SE(n633), .CK(CLK), .RN(n528), .Q(\mem[13][2] ) );
  SDFFRQX2M \mem_reg[13][1]  ( .D(n201), .SI(test_si3), .SE(n633), .CK(CLK), 
        .RN(n528), .Q(\mem[13][1] ) );
  SDFFRQX2M \mem_reg[15][7]  ( .D(n191), .SI(\mem[15][6] ), .SE(n610), .CK(CLK), .RN(n527), .Q(\mem[15][7] ) );
  SDFFRQX2M \mem_reg[15][6]  ( .D(n190), .SI(\mem[15][5] ), .SE(n610), .CK(CLK), .RN(n527), .Q(\mem[15][6] ) );
  SDFFRQX2M \mem_reg[15][5]  ( .D(n189), .SI(\mem[15][4] ), .SE(n632), .CK(CLK), .RN(n527), .Q(\mem[15][5] ) );
  SDFFRQX2M \mem_reg[15][4]  ( .D(n188), .SI(\mem[15][3] ), .SE(n632), .CK(CLK), .RN(n527), .Q(\mem[15][4] ) );
  SDFFRQX2M \mem_reg[15][3]  ( .D(n187), .SI(\mem[15][2] ), .SE(n684), .CK(CLK), .RN(n527), .Q(\mem[15][3] ) );
  SDFFRQX2M \mem_reg[15][2]  ( .D(n186), .SI(\mem[15][1] ), .SE(n609), .CK(CLK), .RN(n527), .Q(\mem[15][2] ) );
  SDFFRQX2M \mem_reg[15][1]  ( .D(n185), .SI(\mem[15][0] ), .SE(n609), .CK(CLK), .RN(n526), .Q(\mem[15][1] ) );
  SDFFRQX2M \mem_reg[15][0]  ( .D(n184), .SI(\mem[14][7] ), .SE(n631), .CK(CLK), .RN(n527), .Q(\mem[15][0] ) );
  SDFFRQX2M \mem_reg[4][7]  ( .D(n279), .SI(\mem[4][6] ), .SE(n631), .CK(CLK), 
        .RN(n534), .Q(\mem[4][7] ) );
  SDFFRQX2M \mem_reg[4][6]  ( .D(n278), .SI(\mem[4][5] ), .SE(n682), .CK(CLK), 
        .RN(n536), .Q(\mem[4][6] ) );
  SDFFRQX2M \mem_reg[4][5]  ( .D(n277), .SI(\mem[4][4] ), .SE(n608), .CK(CLK), 
        .RN(n534), .Q(\mem[4][5] ) );
  SDFFRQX2M \mem_reg[4][4]  ( .D(n276), .SI(\mem[4][3] ), .SE(n608), .CK(CLK), 
        .RN(n536), .Q(\mem[4][4] ) );
  SDFFRQX2M \mem_reg[4][3]  ( .D(n275), .SI(\mem[4][2] ), .SE(n630), .CK(CLK), 
        .RN(n534), .Q(\mem[4][3] ) );
  SDFFRQX2M \mem_reg[4][2]  ( .D(n274), .SI(\mem[4][1] ), .SE(n630), .CK(CLK), 
        .RN(n533), .Q(\mem[4][2] ) );
  SDFFRQX2M \mem_reg[4][1]  ( .D(n273), .SI(\mem[4][0] ), .SE(n680), .CK(CLK), 
        .RN(n533), .Q(\mem[4][1] ) );
  SDFFRQX2M \mem_reg[4][0]  ( .D(n272), .SI(n565), .SE(n607), .CK(CLK), .RN(
        n533), .Q(\mem[4][0] ) );
  SDFFRQX2M \mem_reg[6][7]  ( .D(n263), .SI(\mem[6][6] ), .SE(n607), .CK(CLK), 
        .RN(n533), .Q(\mem[6][7] ) );
  SDFFRQX2M \mem_reg[6][6]  ( .D(n262), .SI(\mem[6][5] ), .SE(n629), .CK(CLK), 
        .RN(n533), .Q(\mem[6][6] ) );
  SDFFRQX2M \mem_reg[6][5]  ( .D(n261), .SI(\mem[6][4] ), .SE(n629), .CK(CLK), 
        .RN(n532), .Q(\mem[6][5] ) );
  SDFFRQX2M \mem_reg[6][4]  ( .D(n260), .SI(\mem[6][3] ), .SE(n678), .CK(CLK), 
        .RN(n532), .Q(\mem[6][4] ) );
  SDFFRQX2M \mem_reg[6][3]  ( .D(n259), .SI(\mem[6][2] ), .SE(n606), .CK(CLK), 
        .RN(n532), .Q(\mem[6][3] ) );
  SDFFRQX2M \mem_reg[6][2]  ( .D(n258), .SI(\mem[6][1] ), .SE(n606), .CK(CLK), 
        .RN(n532), .Q(\mem[6][2] ) );
  SDFFRQX2M \mem_reg[6][1]  ( .D(n257), .SI(\mem[6][0] ), .SE(n628), .CK(CLK), 
        .RN(n532), .Q(\mem[6][1] ) );
  SDFFRQX2M \mem_reg[6][0]  ( .D(n256), .SI(\mem[5][7] ), .SE(n628), .CK(CLK), 
        .RN(n532), .Q(\mem[6][0] ) );
  SDFFRQX2M \mem_reg[8][7]  ( .D(n247), .SI(\mem[8][6] ), .SE(n676), .CK(CLK), 
        .RN(n531), .Q(\mem[8][7] ) );
  SDFFRQX2M \mem_reg[8][6]  ( .D(n246), .SI(\mem[8][5] ), .SE(n627), .CK(CLK), 
        .RN(n531), .Q(\mem[8][6] ) );
  SDFFRQX2M \mem_reg[8][5]  ( .D(n245), .SI(\mem[8][4] ), .SE(n627), .CK(CLK), 
        .RN(n531), .Q(\mem[8][5] ) );
  SDFFRQX2M \mem_reg[8][4]  ( .D(n244), .SI(\mem[8][3] ), .SE(n675), .CK(CLK), 
        .RN(n531), .Q(\mem[8][4] ) );
  SDFFRQX2M \mem_reg[8][3]  ( .D(n243), .SI(\mem[8][2] ), .SE(n626), .CK(CLK), 
        .RN(n531), .Q(\mem[8][3] ) );
  SDFFRQX2M \mem_reg[8][2]  ( .D(n242), .SI(\mem[8][1] ), .SE(n626), .CK(CLK), 
        .RN(n531), .Q(\mem[8][2] ) );
  SDFFRQX2M \mem_reg[8][1]  ( .D(n241), .SI(\mem[8][0] ), .SE(n674), .CK(CLK), 
        .RN(n531), .Q(\mem[8][1] ) );
  SDFFRQX2M \mem_reg[8][0]  ( .D(n240), .SI(\mem[7][7] ), .SE(n625), .CK(CLK), 
        .RN(n531), .Q(\mem[8][0] ) );
  SDFFRQX2M \mem_reg[10][7]  ( .D(n231), .SI(\mem[10][6] ), .SE(n625), .CK(CLK), .RN(n530), .Q(\mem[10][7] ) );
  SDFFRQX2M \mem_reg[10][6]  ( .D(n230), .SI(\mem[10][5] ), .SE(n673), .CK(CLK), .RN(n530), .Q(\mem[10][6] ) );
  SDFFRQX2M \mem_reg[10][5]  ( .D(n229), .SI(\mem[10][4] ), .SE(n624), .CK(CLK), .RN(n530), .Q(\mem[10][5] ) );
  SDFFRQX2M \mem_reg[10][4]  ( .D(n228), .SI(\mem[10][3] ), .SE(n624), .CK(CLK), .RN(n530), .Q(\mem[10][4] ) );
  SDFFRQX2M \mem_reg[10][3]  ( .D(n227), .SI(\mem[10][2] ), .SE(n672), .CK(CLK), .RN(n530), .Q(\mem[10][3] ) );
  SDFFRQX2M \mem_reg[10][2]  ( .D(n226), .SI(\mem[10][1] ), .SE(n647), .CK(CLK), .RN(n530), .Q(\mem[10][2] ) );
  SDFFRQX2M \mem_reg[10][1]  ( .D(n225), .SI(\mem[10][0] ), .SE(n603), .CK(CLK), .RN(n530), .Q(\mem[10][1] ) );
  SDFFRQX2M \mem_reg[10][0]  ( .D(n224), .SI(\mem[9][7] ), .SE(n601), .CK(CLK), 
        .RN(n530), .Q(\mem[10][0] ) );
  SDFFRQX2M \mem_reg[12][7]  ( .D(n215), .SI(\mem[12][6] ), .SE(n654), .CK(CLK), .RN(n529), .Q(\mem[12][7] ) );
  SDFFRQX2M \mem_reg[12][6]  ( .D(n214), .SI(\mem[12][5] ), .SE(n605), .CK(CLK), .RN(n529), .Q(\mem[12][6] ) );
  SDFFRQX2M \mem_reg[12][5]  ( .D(n213), .SI(\mem[12][4] ), .SE(n662), .CK(CLK), .RN(n529), .Q(\mem[12][5] ) );
  SDFFRQX2M \mem_reg[12][4]  ( .D(n212), .SI(\mem[12][3] ), .SE(n600), .CK(CLK), .RN(n529), .Q(\mem[12][4] ) );
  SDFFRQX2M \mem_reg[12][3]  ( .D(n211), .SI(\mem[12][2] ), .SE(n597), .CK(CLK), .RN(n529), .Q(\mem[12][3] ) );
  SDFFRQX2M \mem_reg[12][2]  ( .D(n210), .SI(\mem[12][1] ), .SE(n604), .CK(CLK), .RN(n528), .Q(\mem[12][2] ) );
  SDFFRQX2M \mem_reg[12][1]  ( .D(n209), .SI(\mem[12][0] ), .SE(n602), .CK(CLK), .RN(n528), .Q(\mem[12][1] ) );
  SDFFRQX2M \mem_reg[12][0]  ( .D(n208), .SI(\mem[11][7] ), .SE(n599), .CK(CLK), .RN(n528), .Q(\mem[12][0] ) );
  SDFFRQX2M \mem_reg[14][7]  ( .D(n199), .SI(\mem[14][6] ), .SE(n589), .CK(CLK), .RN(n528), .Q(\mem[14][7] ) );
  SDFFRQX2M \mem_reg[14][6]  ( .D(n198), .SI(\mem[14][5] ), .SE(n592), .CK(CLK), .RN(n528), .Q(\mem[14][6] ) );
  SDFFRQX2M \mem_reg[14][5]  ( .D(n197), .SI(\mem[14][4] ), .SE(n591), .CK(CLK), .RN(n527), .Q(\mem[14][5] ) );
  SDFFRQX2M \mem_reg[14][4]  ( .D(n196), .SI(\mem[14][3] ), .SE(n590), .CK(CLK), .RN(n527), .Q(\mem[14][4] ) );
  SDFFRQX2M \mem_reg[14][3]  ( .D(n195), .SI(\mem[14][2] ), .SE(n598), .CK(CLK), .RN(n527), .Q(\mem[14][3] ) );
  SDFFRQX2M \mem_reg[14][2]  ( .D(n194), .SI(\mem[14][1] ), .SE(n648), .CK(CLK), .RN(n527), .Q(\mem[14][2] ) );
  SDFFRQX2M \mem_reg[14][1]  ( .D(n193), .SI(\mem[14][0] ), .SE(n603), .CK(CLK), .RN(n527), .Q(\mem[14][1] ) );
  SDFFRQX2M \mem_reg[14][0]  ( .D(n192), .SI(\mem[13][7] ), .SE(n601), .CK(CLK), .RN(n527), .Q(\mem[14][0] ) );
  SDFFRQX2M \mem_reg[0][0]  ( .D(n304), .SI(RdData[7]), .SE(n600), .CK(CLK), 
        .RN(n534), .Q(REG0[0]) );
  SDFFRQX2M \mem_reg[0][7]  ( .D(n311), .SI(REG0[6]), .SE(n605), .CK(CLK), 
        .RN(n526), .Q(REG0[7]) );
  SDFFRQX2M \mem_reg[0][6]  ( .D(n310), .SI(REG0[5]), .SE(n604), .CK(CLK), 
        .RN(n536), .Q(REG0[6]) );
  SDFFRQX2M \mem_reg[0][5]  ( .D(n309), .SI(REG0[4]), .SE(n658), .CK(CLK), 
        .RN(n534), .Q(REG0[5]) );
  SDFFRQX2M \mem_reg[0][4]  ( .D(n308), .SI(REG0[3]), .SE(n597), .CK(CLK), 
        .RN(n534), .Q(REG0[4]) );
  SDFFRQX2M \mem_reg[0][3]  ( .D(n307), .SI(REG0[2]), .SE(n666), .CK(CLK), 
        .RN(n534), .Q(REG0[3]) );
  SDFFRQX2M \mem_reg[0][2]  ( .D(n306), .SI(REG0[1]), .SE(n602), .CK(CLK), 
        .RN(n534), .Q(REG0[2]) );
  SDFFRQX2M \mem_reg[0][1]  ( .D(n305), .SI(REG0[0]), .SE(n599), .CK(CLK), 
        .RN(n534), .Q(REG0[1]) );
  SDFFRQX2M \mem_reg[2][1]  ( .D(n289), .SI(n564), .SE(n598), .CK(CLK), .RN(
        n536), .Q(REG2[1]) );
  SDFFSQX2M \mem_reg[3][5]  ( .D(n285), .SI(n568), .SE(n650), .CK(CLK), .SN(
        n526), .Q(n567) );
  SDFFSQX2M \mem_reg[2][5]  ( .D(n293), .SI(n561), .SE(n651), .CK(CLK), .SN(
        n526), .Q(n560) );
  SDFFSQX2M \mem_reg[2][0]  ( .D(n288), .SI(n550), .SE(n650), .CK(CLK), .SN(
        n526), .Q(n564) );
  SDFFRQX1M \mem_reg[3][7]  ( .D(n287), .SI(n566), .SE(n651), .CK(CLK), .RN(
        n536), .Q(n565) );
  SDFFRQX1M \mem_reg[3][6]  ( .D(n286), .SI(n567), .SE(n649), .CK(CLK), .RN(
        n534), .Q(n566) );
  SDFFRQX1M \mem_reg[3][4]  ( .D(n284), .SI(n569), .SE(n620), .CK(CLK), .RN(
        n536), .Q(n568) );
  SDFFRQX1M \mem_reg[3][3]  ( .D(n283), .SI(n570), .SE(n620), .CK(CLK), .RN(
        n534), .Q(n569) );
  SDFFRQX1M \mem_reg[3][2]  ( .D(n282), .SI(n571), .SE(n623), .CK(CLK), .RN(
        n536), .Q(n570) );
  SDFFRQX1M \mem_reg[3][1]  ( .D(n281), .SI(n572), .SE(n623), .CK(CLK), .RN(
        n534), .Q(n571) );
  SDFFRQX1M \mem_reg[2][7]  ( .D(n295), .SI(n559), .SE(n712), .CK(CLK), .RN(
        n534), .Q(n558) );
  SDFFRQX1M \mem_reg[2][6]  ( .D(n294), .SI(n560), .SE(n596), .CK(CLK), .RN(
        n535), .Q(n559) );
  SDFFRQX1M \mem_reg[2][4]  ( .D(n292), .SI(n562), .SE(n596), .CK(CLK), .RN(
        n535), .Q(n561) );
  SDFFRQX1M \mem_reg[2][3]  ( .D(n291), .SI(n563), .SE(n622), .CK(CLK), .RN(
        n535), .Q(n562) );
  SDFFRQX1M \mem_reg[2][2]  ( .D(n290), .SI(n714), .SE(n622), .CK(CLK), .RN(
        n535), .Q(n563) );
  SDFFRQX1M \mem_reg[1][7]  ( .D(n303), .SI(test_si2), .SE(n710), .CK(CLK), 
        .RN(n535), .Q(n550) );
  SDFFRQX1M \mem_reg[1][6]  ( .D(n302), .SI(n552), .SE(n595), .CK(CLK), .RN(
        n535), .Q(n551) );
  SDFFRQX1M \mem_reg[1][5]  ( .D(n301), .SI(n553), .SE(n595), .CK(CLK), .RN(
        n535), .Q(n552) );
  SDFFRQX1M \mem_reg[1][4]  ( .D(n300), .SI(n554), .SE(n621), .CK(CLK), .RN(
        n535), .Q(n553) );
  SDFFRQX1M \mem_reg[1][3]  ( .D(n299), .SI(n555), .SE(n621), .CK(CLK), .RN(
        n535), .Q(n554) );
  SDFFRQX1M \mem_reg[1][2]  ( .D(n298), .SI(n556), .SE(n708), .CK(CLK), .RN(
        n535), .Q(n555) );
  SDFFRQX1M \mem_reg[1][1]  ( .D(n297), .SI(n557), .SE(n594), .CK(CLK), .RN(
        n535), .Q(n556) );
  SDFFRQX1M \mem_reg[3][0]  ( .D(n280), .SI(n558), .SE(n594), .CK(CLK), .RN(
        n536), .Q(n572) );
  SDFFRQX1M \mem_reg[1][0]  ( .D(n296), .SI(REG0[7]), .SE(n588), .CK(CLK), 
        .RN(n535), .Q(n557) );
  INVX4M U140 ( .A(n146), .Y(REG1[1]) );
  INVX4M U141 ( .A(n142), .Y(REG1[4]) );
  INVX4M U142 ( .A(n144), .Y(REG1[5]) );
  INVX6M U143 ( .A(n340), .Y(REG2[7]) );
  NOR2X2M U144 ( .A(n474), .B(N9), .Y(n463) );
  NOR2X2M U145 ( .A(n474), .B(n475), .Y(n462) );
  NOR2X2M U146 ( .A(n475), .B(N10), .Y(n464) );
  INVX6M U147 ( .A(n342), .Y(REG2[3]) );
  INVXLM U148 ( .A(n555), .Y(n138) );
  INVX4M U149 ( .A(n138), .Y(REG1[2]) );
  INVXLM U150 ( .A(n554), .Y(n140) );
  INVX4M U151 ( .A(n140), .Y(REG1[3]) );
  INVXLM U152 ( .A(n553), .Y(n142) );
  INVXLM U153 ( .A(n552), .Y(n144) );
  INVXLM U154 ( .A(n556), .Y(n146) );
  INVXLM U155 ( .A(n567), .Y(n148) );
  INVX6M U156 ( .A(n148), .Y(REG3[5]) );
  INVXLM U157 ( .A(n564), .Y(n312) );
  INVX6M U158 ( .A(n312), .Y(REG2[0]) );
  INVXLM U159 ( .A(n572), .Y(n314) );
  INVX6M U160 ( .A(n314), .Y(REG3[0]) );
  INVXLM U161 ( .A(n563), .Y(n316) );
  INVX6M U162 ( .A(n316), .Y(REG2[2]) );
  INVXLM U163 ( .A(n557), .Y(n318) );
  INVX6M U164 ( .A(n318), .Y(REG1[0]) );
  INVXLM U165 ( .A(n565), .Y(n320) );
  INVX6M U166 ( .A(n320), .Y(REG3[7]) );
  INVXLM U167 ( .A(n550), .Y(n322) );
  INVX6M U168 ( .A(n322), .Y(REG1[7]) );
  INVXLM U169 ( .A(n551), .Y(n324) );
  INVX6M U170 ( .A(n324), .Y(REG1[6]) );
  INVXLM U171 ( .A(n560), .Y(n326) );
  INVX6M U172 ( .A(n326), .Y(REG2[5]) );
  INVXLM U173 ( .A(n569), .Y(n328) );
  INVX6M U174 ( .A(n328), .Y(REG3[3]) );
  INVXLM U175 ( .A(n568), .Y(n330) );
  INVX6M U176 ( .A(n330), .Y(REG3[4]) );
  INVXLM U177 ( .A(n571), .Y(n332) );
  INVX6M U178 ( .A(n332), .Y(REG3[1]) );
  INVXLM U179 ( .A(n570), .Y(n334) );
  INVX6M U180 ( .A(n334), .Y(REG3[2]) );
  INVXLM U181 ( .A(n566), .Y(n336) );
  INVX6M U182 ( .A(n336), .Y(REG3[6]) );
  INVXLM U183 ( .A(n561), .Y(n338) );
  INVX6M U184 ( .A(n338), .Y(REG2[4]) );
  INVXLM U185 ( .A(n558), .Y(n340) );
  INVXLM U186 ( .A(n562), .Y(n342) );
  INVXLM U187 ( .A(n559), .Y(n344) );
  INVX8M U188 ( .A(n344), .Y(REG2[6]) );
  NAND2X4M U212 ( .A(N11), .B(n473), .Y(n466) );
  CLKINVX1M U213 ( .A(N12), .Y(n473) );
  NAND2X4M U214 ( .A(N12), .B(N11), .Y(n456) );
  NAND2X4M U215 ( .A(n548), .B(n473), .Y(n459) );
  NAND2X4M U216 ( .A(N12), .B(n548), .Y(n453) );
  NOR2X4M U217 ( .A(n548), .B(n474), .Y(n151) );
  AND2X2M U218 ( .A(n174), .B(N9), .Y(n166) );
  NOR2X4M U219 ( .A(n548), .B(N10), .Y(n156) );
  NOR2X4M U220 ( .A(n474), .B(N11), .Y(n159) );
  AND2X2M U221 ( .A(n163), .B(N9), .Y(n152) );
  NOR2X4M U222 ( .A(N10), .B(N11), .Y(n162) );
  CLKBUFX6M U223 ( .A(n476), .Y(n478) );
  BUFX4M U224 ( .A(n462), .Y(n477) );
  BUFX4M U225 ( .A(n153), .Y(n523) );
  BUFX4M U226 ( .A(n167), .Y(n507) );
  BUFX4M U227 ( .A(n153), .Y(n522) );
  BUFX4M U228 ( .A(n167), .Y(n506) );
  CLKBUFX6M U229 ( .A(n480), .Y(n482) );
  CLKBUFX6M U230 ( .A(n490), .Y(n491) );
  CLKBUFX6M U231 ( .A(n484), .Y(n486) );
  CLKBUFX6M U232 ( .A(n476), .Y(n479) );
  BUFX2M U233 ( .A(n462), .Y(n476) );
  BUFX4M U234 ( .A(n480), .Y(n481) );
  BUFX4M U235 ( .A(n464), .Y(n485) );
  BUFX4M U236 ( .A(n172), .Y(n499) );
  BUFX4M U237 ( .A(n172), .Y(n498) );
  BUFX4M U238 ( .A(n169), .Y(n505) );
  BUFX4M U239 ( .A(n170), .Y(n503) );
  BUFX4M U240 ( .A(n171), .Y(n501) );
  BUFX4M U241 ( .A(n173), .Y(n497) );
  BUFX4M U242 ( .A(n175), .Y(n495) );
  BUFX4M U243 ( .A(n155), .Y(n521) );
  BUFX4M U244 ( .A(n157), .Y(n519) );
  BUFX4M U245 ( .A(n158), .Y(n517) );
  BUFX4M U246 ( .A(n160), .Y(n515) );
  BUFX4M U247 ( .A(n161), .Y(n513) );
  BUFX4M U248 ( .A(n164), .Y(n511) );
  BUFX4M U249 ( .A(n165), .Y(n509) );
  BUFX4M U250 ( .A(n150), .Y(n525) );
  NAND2X2M U251 ( .A(n154), .B(n151), .Y(n153) );
  NAND2X2M U252 ( .A(n168), .B(n151), .Y(n167) );
  BUFX4M U253 ( .A(n169), .Y(n504) );
  BUFX4M U254 ( .A(n170), .Y(n502) );
  BUFX4M U255 ( .A(n171), .Y(n500) );
  BUFX4M U256 ( .A(n173), .Y(n496) );
  BUFX4M U257 ( .A(n175), .Y(n494) );
  BUFX4M U258 ( .A(n155), .Y(n520) );
  BUFX4M U259 ( .A(n157), .Y(n518) );
  BUFX4M U260 ( .A(n158), .Y(n516) );
  BUFX4M U261 ( .A(n160), .Y(n514) );
  BUFX4M U262 ( .A(n161), .Y(n512) );
  BUFX4M U263 ( .A(n164), .Y(n510) );
  BUFX4M U264 ( .A(n165), .Y(n508) );
  BUFX4M U265 ( .A(n150), .Y(n524) );
  CLKBUFX8M U266 ( .A(n539), .Y(n526) );
  CLKBUFX8M U267 ( .A(n539), .Y(n528) );
  CLKBUFX8M U268 ( .A(n537), .Y(n529) );
  CLKBUFX8M U269 ( .A(n526), .Y(n530) );
  CLKBUFX8M U270 ( .A(n538), .Y(n531) );
  CLKBUFX8M U271 ( .A(n538), .Y(n532) );
  CLKBUFX8M U272 ( .A(n538), .Y(n533) );
  CLKBUFX8M U273 ( .A(n537), .Y(n534) );
  BUFX6M U274 ( .A(n537), .Y(n535) );
  CLKBUFX8M U275 ( .A(n539), .Y(n527) );
  BUFX4M U276 ( .A(n537), .Y(n536) );
  CLKBUFX6M U277 ( .A(n463), .Y(n483) );
  CLKBUFX6M U278 ( .A(n489), .Y(n492) );
  BUFX2M U279 ( .A(n488), .Y(n489) );
  CLKBUFX6M U280 ( .A(n484), .Y(n487) );
  BUFX2M U281 ( .A(n464), .Y(n484) );
  BUFX2M U282 ( .A(n463), .Y(n480) );
  BUFX2M U283 ( .A(n488), .Y(n490) );
  AND2X2M U284 ( .A(n174), .B(n475), .Y(n168) );
  NAND2X2M U285 ( .A(n168), .B(n159), .Y(n172) );
  AND2X2M U286 ( .A(n163), .B(n475), .Y(n154) );
  NAND2X2M U287 ( .A(n151), .B(n152), .Y(n150) );
  NAND2X2M U288 ( .A(n156), .B(n152), .Y(n155) );
  NAND2X2M U289 ( .A(n156), .B(n154), .Y(n157) );
  NAND2X2M U290 ( .A(n159), .B(n152), .Y(n158) );
  NAND2X2M U291 ( .A(n159), .B(n154), .Y(n160) );
  NAND2X2M U292 ( .A(n162), .B(n152), .Y(n161) );
  NAND2X2M U293 ( .A(n162), .B(n154), .Y(n164) );
  NAND2X2M U294 ( .A(n166), .B(n151), .Y(n165) );
  NAND2X2M U295 ( .A(n166), .B(n156), .Y(n169) );
  NAND2X2M U296 ( .A(n168), .B(n156), .Y(n170) );
  NAND2X2M U297 ( .A(n166), .B(n159), .Y(n171) );
  NAND2X2M U298 ( .A(n166), .B(n162), .Y(n173) );
  NAND2X2M U299 ( .A(n168), .B(n162), .Y(n175) );
  BUFX2M U300 ( .A(n539), .Y(n538) );
  BUFX2M U301 ( .A(n538), .Y(n537) );
  INVX2M U302 ( .A(N9), .Y(n475) );
  INVX2M U303 ( .A(N10), .Y(n474) );
  BUFX2M U304 ( .A(n465), .Y(n488) );
  INVX4M U305 ( .A(n493), .Y(n549) );
  NOR2BX2M U306 ( .AN(WrEn), .B(N12), .Y(n174) );
  INVX2M U307 ( .A(N11), .Y(n548) );
  AND2X2M U308 ( .A(WrEn), .B(N12), .Y(n163) );
  CLKBUFX6M U309 ( .A(N56), .Y(n493) );
  NOR2BX2M U310 ( .AN(RdEn), .B(WrEn), .Y(N56) );
  INVX8M U311 ( .A(WrData[0]), .Y(n547) );
  INVX8M U312 ( .A(WrData[1]), .Y(n546) );
  INVX8M U313 ( .A(WrData[2]), .Y(n545) );
  INVX8M U314 ( .A(WrData[3]), .Y(n544) );
  INVX8M U315 ( .A(WrData[4]), .Y(n543) );
  INVX8M U316 ( .A(WrData[5]), .Y(n542) );
  INVX8M U317 ( .A(WrData[6]), .Y(n541) );
  INVX8M U318 ( .A(WrData[7]), .Y(n540) );
  BUFX2M U319 ( .A(RST), .Y(n539) );
  AO22X1M U320 ( .A0(N39), .A1(n493), .B0(RdData[0]), .B1(n549), .Y(n176) );
  AO22X1M U321 ( .A0(N38), .A1(n493), .B0(RdData[1]), .B1(n549), .Y(n177) );
  AO22X1M U322 ( .A0(N37), .A1(n493), .B0(RdData[2]), .B1(n549), .Y(n178) );
  AO22X1M U323 ( .A0(N36), .A1(n493), .B0(RdData[3]), .B1(n549), .Y(n179) );
  AO22X1M U324 ( .A0(N35), .A1(n493), .B0(RdData[4]), .B1(n549), .Y(n180) );
  AO22X1M U325 ( .A0(N34), .A1(n493), .B0(RdData[5]), .B1(n549), .Y(n181) );
  AO22X1M U326 ( .A0(N33), .A1(n493), .B0(RdData[6]), .B1(n549), .Y(n182) );
  AO22X1M U327 ( .A0(N32), .A1(n493), .B0(RdData[7]), .B1(n549), .Y(n183) );
  OAI2BB2X1M U328 ( .B0(n547), .B1(n499), .A0N(REG2[0]), .A1N(n499), .Y(n288)
         );
  OAI2BB2X1M U329 ( .B0(n542), .B1(n498), .A0N(REG2[5]), .A1N(n499), .Y(n293)
         );
  OAI2BB2X1M U330 ( .B0(n525), .B1(n547), .A0N(\mem[15][0] ), .A1N(n525), .Y(
        n184) );
  OAI2BB2X1M U331 ( .B0(n524), .B1(n546), .A0N(\mem[15][1] ), .A1N(n525), .Y(
        n185) );
  OAI2BB2X1M U332 ( .B0(n524), .B1(n545), .A0N(\mem[15][2] ), .A1N(n525), .Y(
        n186) );
  OAI2BB2X1M U333 ( .B0(n524), .B1(n544), .A0N(\mem[15][3] ), .A1N(n525), .Y(
        n187) );
  OAI2BB2X1M U334 ( .B0(n524), .B1(n543), .A0N(\mem[15][4] ), .A1N(n525), .Y(
        n188) );
  OAI2BB2X1M U335 ( .B0(n524), .B1(n542), .A0N(\mem[15][5] ), .A1N(n525), .Y(
        n189) );
  OAI2BB2X1M U336 ( .B0(n524), .B1(n541), .A0N(\mem[15][6] ), .A1N(n525), .Y(
        n190) );
  OAI2BB2X1M U337 ( .B0(n524), .B1(n540), .A0N(\mem[15][7] ), .A1N(n525), .Y(
        n191) );
  OAI2BB2X1M U338 ( .B0(n547), .B1(n523), .A0N(\mem[14][0] ), .A1N(n523), .Y(
        n192) );
  OAI2BB2X1M U339 ( .B0(n546), .B1(n522), .A0N(\mem[14][1] ), .A1N(n523), .Y(
        n193) );
  OAI2BB2X1M U340 ( .B0(n545), .B1(n522), .A0N(\mem[14][2] ), .A1N(n523), .Y(
        n194) );
  OAI2BB2X1M U341 ( .B0(n544), .B1(n522), .A0N(\mem[14][3] ), .A1N(n523), .Y(
        n195) );
  OAI2BB2X1M U342 ( .B0(n547), .B1(n521), .A0N(n715), .A1N(n521), .Y(n200) );
  OAI2BB2X1M U343 ( .B0(n546), .B1(n520), .A0N(\mem[13][1] ), .A1N(n521), .Y(
        n201) );
  OAI2BB2X1M U344 ( .B0(n545), .B1(n520), .A0N(\mem[13][2] ), .A1N(n521), .Y(
        n202) );
  OAI2BB2X1M U345 ( .B0(n544), .B1(n520), .A0N(\mem[13][3] ), .A1N(n521), .Y(
        n203) );
  OAI2BB2X1M U346 ( .B0(n547), .B1(n519), .A0N(\mem[12][0] ), .A1N(n519), .Y(
        n208) );
  OAI2BB2X1M U347 ( .B0(n547), .B1(n517), .A0N(\mem[11][0] ), .A1N(n517), .Y(
        n216) );
  OAI2BB2X1M U348 ( .B0(n547), .B1(n513), .A0N(\mem[9][0] ), .A1N(n513), .Y(
        n232) );
  OAI2BB2X1M U349 ( .B0(n543), .B1(n520), .A0N(\mem[13][4] ), .A1N(n521), .Y(
        n204) );
  OAI2BB2X1M U350 ( .B0(n546), .B1(n518), .A0N(\mem[12][1] ), .A1N(n519), .Y(
        n209) );
  OAI2BB2X1M U351 ( .B0(n546), .B1(n516), .A0N(\mem[11][1] ), .A1N(n517), .Y(
        n217) );
  OAI2BB2X1M U352 ( .B0(n546), .B1(n512), .A0N(\mem[9][1] ), .A1N(n513), .Y(
        n233) );
  OAI2BB2X1M U353 ( .B0(n542), .B1(n520), .A0N(\mem[13][5] ), .A1N(n521), .Y(
        n205) );
  OAI2BB2X1M U354 ( .B0(n541), .B1(n520), .A0N(\mem[13][6] ), .A1N(n521), .Y(
        n206) );
  OAI2BB2X1M U355 ( .B0(n540), .B1(n520), .A0N(\mem[13][7] ), .A1N(n521), .Y(
        n207) );
  OAI2BB2X1M U356 ( .B0(n545), .B1(n518), .A0N(\mem[12][2] ), .A1N(n519), .Y(
        n210) );
  OAI2BB2X1M U357 ( .B0(n544), .B1(n518), .A0N(\mem[12][3] ), .A1N(n519), .Y(
        n211) );
  OAI2BB2X1M U358 ( .B0(n545), .B1(n516), .A0N(\mem[11][2] ), .A1N(n517), .Y(
        n218) );
  OAI2BB2X1M U359 ( .B0(n544), .B1(n516), .A0N(\mem[11][3] ), .A1N(n517), .Y(
        n219) );
  OAI2BB2X1M U360 ( .B0(n547), .B1(n515), .A0N(\mem[10][0] ), .A1N(n515), .Y(
        n224) );
  OAI2BB2X1M U361 ( .B0(n541), .B1(n516), .A0N(\mem[11][6] ), .A1N(n517), .Y(
        n222) );
  OAI2BB2X1M U362 ( .B0(n540), .B1(n516), .A0N(\mem[11][7] ), .A1N(n517), .Y(
        n223) );
  OAI2BB2X1M U363 ( .B0(n546), .B1(n514), .A0N(\mem[10][1] ), .A1N(n515), .Y(
        n225) );
  OAI2BB2X1M U364 ( .B0(n545), .B1(n514), .A0N(\mem[10][2] ), .A1N(n515), .Y(
        n226) );
  OAI2BB2X1M U365 ( .B0(n544), .B1(n514), .A0N(\mem[10][3] ), .A1N(n515), .Y(
        n227) );
  OAI2BB2X1M U366 ( .B0(n545), .B1(n512), .A0N(\mem[9][2] ), .A1N(n513), .Y(
        n234) );
  OAI2BB2X1M U367 ( .B0(n544), .B1(n512), .A0N(\mem[9][3] ), .A1N(n513), .Y(
        n235) );
  OAI2BB2X1M U368 ( .B0(n547), .B1(n511), .A0N(\mem[8][0] ), .A1N(n511), .Y(
        n240) );
  OAI2BB2X1M U369 ( .B0(n547), .B1(n509), .A0N(\mem[7][0] ), .A1N(n509), .Y(
        n248) );
  OAI2BB2X1M U370 ( .B0(n547), .B1(n507), .A0N(\mem[6][0] ), .A1N(n507), .Y(
        n256) );
  OAI2BB2X1M U371 ( .B0(n547), .B1(n505), .A0N(\mem[5][0] ), .A1N(n505), .Y(
        n264) );
  OAI2BB2X1M U372 ( .B0(n547), .B1(n503), .A0N(\mem[4][0] ), .A1N(n503), .Y(
        n272) );
  OAI2BB2X1M U373 ( .B0(n543), .B1(n522), .A0N(\mem[14][4] ), .A1N(n523), .Y(
        n196) );
  OAI2BB2X1M U374 ( .B0(n543), .B1(n514), .A0N(\mem[10][4] ), .A1N(n515), .Y(
        n228) );
  OAI2BB2X1M U375 ( .B0(n541), .B1(n514), .A0N(\mem[10][6] ), .A1N(n515), .Y(
        n230) );
  OAI2BB2X1M U376 ( .B0(n540), .B1(n514), .A0N(\mem[10][7] ), .A1N(n515), .Y(
        n231) );
  OAI2BB2X1M U377 ( .B0(n543), .B1(n512), .A0N(\mem[9][4] ), .A1N(n513), .Y(
        n236) );
  OAI2BB2X1M U378 ( .B0(n546), .B1(n510), .A0N(\mem[8][1] ), .A1N(n511), .Y(
        n241) );
  OAI2BB2X1M U379 ( .B0(n546), .B1(n508), .A0N(\mem[7][1] ), .A1N(n509), .Y(
        n249) );
  OAI2BB2X1M U380 ( .B0(n546), .B1(n506), .A0N(\mem[6][1] ), .A1N(n507), .Y(
        n257) );
  OAI2BB2X1M U381 ( .B0(n542), .B1(n516), .A0N(\mem[11][5] ), .A1N(n517), .Y(
        n221) );
  OAI2BB2X1M U382 ( .B0(n542), .B1(n514), .A0N(\mem[10][5] ), .A1N(n515), .Y(
        n229) );
  OAI2BB2X1M U383 ( .B0(n542), .B1(n512), .A0N(\mem[9][5] ), .A1N(n513), .Y(
        n237) );
  OAI2BB2X1M U384 ( .B0(n541), .B1(n512), .A0N(\mem[9][6] ), .A1N(n513), .Y(
        n238) );
  OAI2BB2X1M U385 ( .B0(n540), .B1(n512), .A0N(\mem[9][7] ), .A1N(n513), .Y(
        n239) );
  OAI2BB2X1M U386 ( .B0(n545), .B1(n510), .A0N(\mem[8][2] ), .A1N(n511), .Y(
        n242) );
  OAI2BB2X1M U387 ( .B0(n544), .B1(n510), .A0N(\mem[8][3] ), .A1N(n511), .Y(
        n243) );
  OAI2BB2X1M U388 ( .B0(n541), .B1(n510), .A0N(\mem[8][6] ), .A1N(n511), .Y(
        n246) );
  OAI2BB2X1M U389 ( .B0(n540), .B1(n510), .A0N(\mem[8][7] ), .A1N(n511), .Y(
        n247) );
  OAI2BB2X1M U390 ( .B0(n545), .B1(n508), .A0N(\mem[7][2] ), .A1N(n509), .Y(
        n250) );
  OAI2BB2X1M U391 ( .B0(n544), .B1(n508), .A0N(\mem[7][3] ), .A1N(n509), .Y(
        n251) );
  OAI2BB2X1M U392 ( .B0(n543), .B1(n508), .A0N(\mem[7][4] ), .A1N(n509), .Y(
        n252) );
  OAI2BB2X1M U393 ( .B0(n542), .B1(n508), .A0N(\mem[7][5] ), .A1N(n509), .Y(
        n253) );
  OAI2BB2X1M U394 ( .B0(n541), .B1(n508), .A0N(\mem[7][6] ), .A1N(n509), .Y(
        n254) );
  OAI2BB2X1M U395 ( .B0(n540), .B1(n508), .A0N(\mem[7][7] ), .A1N(n509), .Y(
        n255) );
  OAI2BB2X1M U396 ( .B0(n545), .B1(n506), .A0N(\mem[6][2] ), .A1N(n507), .Y(
        n258) );
  OAI2BB2X1M U397 ( .B0(n544), .B1(n506), .A0N(\mem[6][3] ), .A1N(n507), .Y(
        n259) );
  OAI2BB2X1M U398 ( .B0(n540), .B1(n506), .A0N(\mem[6][7] ), .A1N(n507), .Y(
        n263) );
  OAI2BB2X1M U399 ( .B0(n546), .B1(n504), .A0N(\mem[5][1] ), .A1N(n505), .Y(
        n265) );
  OAI2BB2X1M U400 ( .B0(n545), .B1(n504), .A0N(\mem[5][2] ), .A1N(n505), .Y(
        n266) );
  OAI2BB2X1M U401 ( .B0(n544), .B1(n504), .A0N(\mem[5][3] ), .A1N(n505), .Y(
        n267) );
  OAI2BB2X1M U402 ( .B0(n543), .B1(n504), .A0N(\mem[5][4] ), .A1N(n505), .Y(
        n268) );
  OAI2BB2X1M U403 ( .B0(n546), .B1(n502), .A0N(\mem[4][1] ), .A1N(n503), .Y(
        n273) );
  OAI2BB2X1M U404 ( .B0(n544), .B1(n502), .A0N(\mem[4][3] ), .A1N(n503), .Y(
        n275) );
  OAI2BB2X1M U405 ( .B0(n547), .B1(n501), .A0N(REG3[0]), .A1N(n501), .Y(n280)
         );
  OAI2BB2X1M U406 ( .B0(n543), .B1(n518), .A0N(\mem[12][4] ), .A1N(n519), .Y(
        n212) );
  OAI2BB2X1M U407 ( .B0(n545), .B1(n498), .A0N(REG2[2]), .A1N(n499), .Y(n290)
         );
  OAI2BB2X1M U408 ( .B0(n544), .B1(n498), .A0N(REG2[3]), .A1N(n499), .Y(n291)
         );
  OAI2BB2X1M U409 ( .B0(n547), .B1(n497), .A0N(REG1[0]), .A1N(n497), .Y(n296)
         );
  OAI2BB2X1M U410 ( .B0(n543), .B1(n510), .A0N(\mem[8][4] ), .A1N(n511), .Y(
        n244) );
  OAI2BB2X1M U411 ( .B0(n543), .B1(n498), .A0N(REG2[4]), .A1N(n499), .Y(n292)
         );
  OAI2BB2X1M U412 ( .B0(n546), .B1(n496), .A0N(REG1[1]), .A1N(n497), .Y(n297)
         );
  OAI2BB2X1M U413 ( .B0(n546), .B1(n494), .A0N(REG0[1]), .A1N(n495), .Y(n305)
         );
  OAI2BB2X1M U414 ( .B0(n542), .B1(n522), .A0N(\mem[14][5] ), .A1N(n523), .Y(
        n197) );
  OAI2BB2X1M U415 ( .B0(n541), .B1(n522), .A0N(\mem[14][6] ), .A1N(n523), .Y(
        n198) );
  OAI2BB2X1M U416 ( .B0(n540), .B1(n522), .A0N(\mem[14][7] ), .A1N(n523), .Y(
        n199) );
  OAI2BB2X1M U417 ( .B0(n542), .B1(n518), .A0N(\mem[12][5] ), .A1N(n519), .Y(
        n213) );
  OAI2BB2X1M U418 ( .B0(n541), .B1(n518), .A0N(\mem[12][6] ), .A1N(n519), .Y(
        n214) );
  OAI2BB2X1M U419 ( .B0(n540), .B1(n518), .A0N(\mem[12][7] ), .A1N(n519), .Y(
        n215) );
  OAI2BB2X1M U420 ( .B0(n543), .B1(n516), .A0N(\mem[11][4] ), .A1N(n517), .Y(
        n220) );
  OAI2BB2X1M U421 ( .B0(n542), .B1(n510), .A0N(\mem[8][5] ), .A1N(n511), .Y(
        n245) );
  OAI2BB2X1M U422 ( .B0(n542), .B1(n506), .A0N(\mem[6][5] ), .A1N(n507), .Y(
        n261) );
  OAI2BB2X1M U423 ( .B0(n541), .B1(n506), .A0N(\mem[6][6] ), .A1N(n507), .Y(
        n262) );
  OAI2BB2X1M U424 ( .B0(n542), .B1(n504), .A0N(\mem[5][5] ), .A1N(n505), .Y(
        n269) );
  OAI2BB2X1M U425 ( .B0(n541), .B1(n504), .A0N(\mem[5][6] ), .A1N(n505), .Y(
        n270) );
  OAI2BB2X1M U426 ( .B0(n540), .B1(n504), .A0N(\mem[5][7] ), .A1N(n505), .Y(
        n271) );
  OAI2BB2X1M U427 ( .B0(n545), .B1(n502), .A0N(\mem[4][2] ), .A1N(n503), .Y(
        n274) );
  OAI2BB2X1M U428 ( .B0(n543), .B1(n502), .A0N(\mem[4][4] ), .A1N(n503), .Y(
        n276) );
  OAI2BB2X1M U429 ( .B0(n542), .B1(n502), .A0N(\mem[4][5] ), .A1N(n503), .Y(
        n277) );
  OAI2BB2X1M U430 ( .B0(n541), .B1(n502), .A0N(\mem[4][6] ), .A1N(n503), .Y(
        n278) );
  OAI2BB2X1M U431 ( .B0(n540), .B1(n502), .A0N(\mem[4][7] ), .A1N(n503), .Y(
        n279) );
  OAI2BB2X1M U432 ( .B0(n546), .B1(n500), .A0N(REG3[1]), .A1N(n501), .Y(n281)
         );
  OAI2BB2X1M U433 ( .B0(n545), .B1(n500), .A0N(REG3[2]), .A1N(n501), .Y(n282)
         );
  OAI2BB2X1M U434 ( .B0(n544), .B1(n500), .A0N(REG3[3]), .A1N(n501), .Y(n283)
         );
  OAI2BB2X1M U435 ( .B0(n543), .B1(n500), .A0N(REG3[4]), .A1N(n501), .Y(n284)
         );
  OAI2BB2X1M U436 ( .B0(n541), .B1(n500), .A0N(REG3[6]), .A1N(n501), .Y(n286)
         );
  OAI2BB2X1M U437 ( .B0(n540), .B1(n500), .A0N(REG3[7]), .A1N(n501), .Y(n287)
         );
  OAI2BB2X1M U438 ( .B0(n546), .B1(n498), .A0N(n714), .A1N(n499), .Y(n289) );
  OAI2BB2X1M U439 ( .B0(n541), .B1(n498), .A0N(REG2[6]), .A1N(n499), .Y(n294)
         );
  OAI2BB2X1M U440 ( .B0(n540), .B1(n498), .A0N(REG2[7]), .A1N(n499), .Y(n295)
         );
  OAI2BB2X1M U441 ( .B0(n545), .B1(n496), .A0N(REG1[2]), .A1N(n497), .Y(n298)
         );
  OAI2BB2X1M U442 ( .B0(n544), .B1(n496), .A0N(REG1[3]), .A1N(n497), .Y(n299)
         );
  OAI2BB2X1M U443 ( .B0(n547), .B1(n495), .A0N(REG0[0]), .A1N(n495), .Y(n304)
         );
  OAI2BB2X1M U444 ( .B0(n543), .B1(n506), .A0N(\mem[6][4] ), .A1N(n507), .Y(
        n260) );
  OAI2BB2X1M U445 ( .B0(n543), .B1(n496), .A0N(REG1[4]), .A1N(n497), .Y(n300)
         );
  OAI2BB2X1M U446 ( .B0(n542), .B1(n496), .A0N(REG1[5]), .A1N(n497), .Y(n301)
         );
  OAI2BB2X1M U447 ( .B0(n541), .B1(n496), .A0N(REG1[6]), .A1N(n497), .Y(n302)
         );
  OAI2BB2X1M U448 ( .B0(n540), .B1(n496), .A0N(REG1[7]), .A1N(n497), .Y(n303)
         );
  OAI2BB2X1M U449 ( .B0(n545), .B1(n494), .A0N(REG0[2]), .A1N(n495), .Y(n306)
         );
  OAI2BB2X1M U450 ( .B0(n544), .B1(n494), .A0N(REG0[3]), .A1N(n495), .Y(n307)
         );
  OAI2BB2X1M U451 ( .B0(n543), .B1(n494), .A0N(REG0[4]), .A1N(n495), .Y(n308)
         );
  OAI2BB2X1M U452 ( .B0(n542), .B1(n494), .A0N(REG0[5]), .A1N(n495), .Y(n309)
         );
  OAI2BB2X1M U453 ( .B0(n541), .B1(n494), .A0N(REG0[6]), .A1N(n495), .Y(n310)
         );
  OAI2BB2X1M U454 ( .B0(n540), .B1(n494), .A0N(REG0[7]), .A1N(n495), .Y(n311)
         );
  OAI2BB2X1M U455 ( .B0(n542), .B1(n500), .A0N(REG3[5]), .A1N(n501), .Y(n285)
         );
  AOI22X1M U456 ( .A0(\mem[10][0] ), .A1(n483), .B0(\mem[11][0] ), .B1(n479), 
        .Y(n370) );
  NOR2X1M U457 ( .A(N9), .B(N10), .Y(n465) );
  AOI22X1M U458 ( .A0(\mem[8][0] ), .A1(n492), .B0(\mem[9][0] ), .B1(n487), 
        .Y(n369) );
  AOI21X1M U459 ( .A0(n370), .A1(n369), .B0(n453), .Y(n380) );
  AOI22X1M U460 ( .A0(\mem[14][0] ), .A1(n483), .B0(\mem[15][0] ), .B1(n479), 
        .Y(n372) );
  AOI22X1M U461 ( .A0(\mem[12][0] ), .A1(n492), .B0(n715), .B1(n487), .Y(n371)
         );
  AOI21X1M U462 ( .A0(n372), .A1(n371), .B0(n456), .Y(n379) );
  AOI22X1M U463 ( .A0(REG2[0]), .A1(n483), .B0(REG3[0]), .B1(n479), .Y(n374)
         );
  AOI22X1M U464 ( .A0(REG0[0]), .A1(n492), .B0(REG1[0]), .B1(n487), .Y(n373)
         );
  AOI21X1M U465 ( .A0(n374), .A1(n373), .B0(n459), .Y(n378) );
  AOI22X1M U466 ( .A0(\mem[6][0] ), .A1(n483), .B0(\mem[7][0] ), .B1(n479), 
        .Y(n376) );
  AOI22X1M U467 ( .A0(\mem[4][0] ), .A1(n492), .B0(\mem[5][0] ), .B1(n487), 
        .Y(n375) );
  AOI21X1M U468 ( .A0(n376), .A1(n375), .B0(n466), .Y(n377) );
  OR4X1M U469 ( .A(n380), .B(n379), .C(n378), .D(n377), .Y(N39) );
  AOI22X1M U470 ( .A0(\mem[10][1] ), .A1(n483), .B0(\mem[11][1] ), .B1(n479), 
        .Y(n382) );
  AOI22X1M U471 ( .A0(\mem[8][1] ), .A1(n492), .B0(\mem[9][1] ), .B1(n487), 
        .Y(n381) );
  AOI21X1M U472 ( .A0(n382), .A1(n381), .B0(n453), .Y(n392) );
  AOI22X1M U473 ( .A0(\mem[14][1] ), .A1(n483), .B0(\mem[15][1] ), .B1(n479), 
        .Y(n384) );
  AOI22X1M U474 ( .A0(\mem[12][1] ), .A1(n492), .B0(\mem[13][1] ), .B1(n487), 
        .Y(n383) );
  AOI21X1M U475 ( .A0(n384), .A1(n383), .B0(n456), .Y(n391) );
  AOI22X1M U476 ( .A0(REG2[1]), .A1(n483), .B0(REG3[1]), .B1(n479), .Y(n386)
         );
  AOI22X1M U477 ( .A0(REG0[1]), .A1(n492), .B0(REG1[1]), .B1(n487), .Y(n385)
         );
  AOI21X1M U478 ( .A0(n386), .A1(n385), .B0(n459), .Y(n390) );
  AOI22X1M U479 ( .A0(\mem[6][1] ), .A1(n483), .B0(\mem[7][1] ), .B1(n479), 
        .Y(n388) );
  AOI22X1M U480 ( .A0(\mem[4][1] ), .A1(n492), .B0(\mem[5][1] ), .B1(n487), 
        .Y(n387) );
  AOI21X1M U481 ( .A0(n388), .A1(n387), .B0(n466), .Y(n389) );
  OR4X1M U482 ( .A(n392), .B(n391), .C(n390), .D(n389), .Y(N38) );
  AOI22X1M U483 ( .A0(\mem[10][2] ), .A1(n483), .B0(\mem[11][2] ), .B1(n479), 
        .Y(n394) );
  AOI22X1M U484 ( .A0(\mem[8][2] ), .A1(n492), .B0(\mem[9][2] ), .B1(n487), 
        .Y(n393) );
  AOI21X1M U485 ( .A0(n394), .A1(n393), .B0(n453), .Y(n404) );
  AOI22X1M U486 ( .A0(\mem[14][2] ), .A1(n483), .B0(\mem[15][2] ), .B1(n479), 
        .Y(n396) );
  AOI22X1M U487 ( .A0(\mem[12][2] ), .A1(n492), .B0(\mem[13][2] ), .B1(n487), 
        .Y(n395) );
  AOI21X1M U488 ( .A0(n396), .A1(n395), .B0(n456), .Y(n403) );
  AOI22X1M U489 ( .A0(REG2[2]), .A1(n483), .B0(REG3[2]), .B1(n479), .Y(n398)
         );
  AOI22X1M U490 ( .A0(REG0[2]), .A1(n492), .B0(REG1[2]), .B1(n487), .Y(n397)
         );
  AOI21X1M U491 ( .A0(n398), .A1(n397), .B0(n459), .Y(n402) );
  AOI22X1M U492 ( .A0(\mem[6][2] ), .A1(n483), .B0(\mem[7][2] ), .B1(n479), 
        .Y(n400) );
  AOI22X1M U493 ( .A0(\mem[4][2] ), .A1(n492), .B0(\mem[5][2] ), .B1(n487), 
        .Y(n399) );
  AOI21X1M U494 ( .A0(n400), .A1(n399), .B0(n466), .Y(n401) );
  OR4X1M U495 ( .A(n404), .B(n403), .C(n402), .D(n401), .Y(N37) );
  AOI22X1M U496 ( .A0(\mem[10][3] ), .A1(n482), .B0(\mem[11][3] ), .B1(n478), 
        .Y(n406) );
  AOI22X1M U497 ( .A0(\mem[8][3] ), .A1(n491), .B0(\mem[9][3] ), .B1(n486), 
        .Y(n405) );
  AOI21X1M U498 ( .A0(n406), .A1(n405), .B0(n453), .Y(n416) );
  AOI22X1M U499 ( .A0(\mem[14][3] ), .A1(n482), .B0(\mem[15][3] ), .B1(n478), 
        .Y(n408) );
  AOI22X1M U500 ( .A0(\mem[12][3] ), .A1(n491), .B0(\mem[13][3] ), .B1(n486), 
        .Y(n407) );
  AOI21X1M U501 ( .A0(n408), .A1(n407), .B0(n456), .Y(n415) );
  AOI22X1M U502 ( .A0(REG2[3]), .A1(n482), .B0(REG3[3]), .B1(n478), .Y(n410)
         );
  AOI22X1M U503 ( .A0(REG0[3]), .A1(n491), .B0(REG1[3]), .B1(n486), .Y(n409)
         );
  AOI21X1M U504 ( .A0(n410), .A1(n409), .B0(n459), .Y(n414) );
  AOI22X1M U505 ( .A0(\mem[6][3] ), .A1(n482), .B0(\mem[7][3] ), .B1(n478), 
        .Y(n412) );
  AOI22X1M U506 ( .A0(\mem[4][3] ), .A1(n491), .B0(\mem[5][3] ), .B1(n486), 
        .Y(n411) );
  AOI21X1M U507 ( .A0(n412), .A1(n411), .B0(n466), .Y(n413) );
  OR4X1M U508 ( .A(n416), .B(n415), .C(n414), .D(n413), .Y(N36) );
  AOI22X1M U509 ( .A0(\mem[10][4] ), .A1(n482), .B0(\mem[11][4] ), .B1(n478), 
        .Y(n418) );
  AOI22X1M U510 ( .A0(\mem[8][4] ), .A1(n491), .B0(\mem[9][4] ), .B1(n486), 
        .Y(n417) );
  AOI21X1M U511 ( .A0(n418), .A1(n417), .B0(n453), .Y(n428) );
  AOI22X1M U512 ( .A0(\mem[14][4] ), .A1(n482), .B0(\mem[15][4] ), .B1(n478), 
        .Y(n420) );
  AOI22X1M U513 ( .A0(\mem[12][4] ), .A1(n491), .B0(\mem[13][4] ), .B1(n486), 
        .Y(n419) );
  AOI21X1M U514 ( .A0(n420), .A1(n419), .B0(n456), .Y(n427) );
  AOI22X1M U515 ( .A0(REG2[4]), .A1(n482), .B0(REG3[4]), .B1(n478), .Y(n422)
         );
  AOI22X1M U516 ( .A0(REG0[4]), .A1(n491), .B0(REG1[4]), .B1(n486), .Y(n421)
         );
  AOI21X1M U517 ( .A0(n422), .A1(n421), .B0(n459), .Y(n426) );
  AOI22X1M U518 ( .A0(\mem[6][4] ), .A1(n482), .B0(\mem[7][4] ), .B1(n478), 
        .Y(n424) );
  AOI22X1M U519 ( .A0(\mem[4][4] ), .A1(n491), .B0(\mem[5][4] ), .B1(n486), 
        .Y(n423) );
  AOI21X1M U520 ( .A0(n424), .A1(n423), .B0(n466), .Y(n425) );
  OR4X1M U521 ( .A(n428), .B(n427), .C(n426), .D(n425), .Y(N35) );
  AOI22X1M U522 ( .A0(\mem[10][5] ), .A1(n482), .B0(\mem[11][5] ), .B1(n478), 
        .Y(n430) );
  AOI22X1M U523 ( .A0(\mem[8][5] ), .A1(n491), .B0(\mem[9][5] ), .B1(n486), 
        .Y(n429) );
  AOI21X1M U524 ( .A0(n430), .A1(n429), .B0(n453), .Y(n440) );
  AOI22X1M U525 ( .A0(\mem[14][5] ), .A1(n482), .B0(\mem[15][5] ), .B1(n478), 
        .Y(n432) );
  AOI22X1M U526 ( .A0(\mem[12][5] ), .A1(n491), .B0(\mem[13][5] ), .B1(n486), 
        .Y(n431) );
  AOI21X1M U527 ( .A0(n432), .A1(n431), .B0(n456), .Y(n439) );
  AOI22X1M U528 ( .A0(REG2[5]), .A1(n482), .B0(REG3[5]), .B1(n478), .Y(n434)
         );
  AOI22X1M U529 ( .A0(REG0[5]), .A1(n491), .B0(REG1[5]), .B1(n486), .Y(n433)
         );
  AOI21X1M U530 ( .A0(n434), .A1(n433), .B0(n459), .Y(n438) );
  AOI22X1M U531 ( .A0(\mem[6][5] ), .A1(n482), .B0(\mem[7][5] ), .B1(n478), 
        .Y(n436) );
  AOI22X1M U532 ( .A0(\mem[4][5] ), .A1(n491), .B0(\mem[5][5] ), .B1(n486), 
        .Y(n435) );
  AOI21X1M U533 ( .A0(n436), .A1(n435), .B0(n466), .Y(n437) );
  OR4X1M U534 ( .A(n440), .B(n439), .C(n438), .D(n437), .Y(N34) );
  AOI22X1M U535 ( .A0(\mem[10][6] ), .A1(n481), .B0(\mem[11][6] ), .B1(n477), 
        .Y(n442) );
  AOI22X1M U536 ( .A0(\mem[8][6] ), .A1(n489), .B0(\mem[9][6] ), .B1(n485), 
        .Y(n441) );
  AOI21X1M U537 ( .A0(n442), .A1(n441), .B0(n453), .Y(n452) );
  AOI22X1M U538 ( .A0(\mem[14][6] ), .A1(n481), .B0(\mem[15][6] ), .B1(n477), 
        .Y(n444) );
  AOI22X1M U539 ( .A0(\mem[12][6] ), .A1(n489), .B0(\mem[13][6] ), .B1(n485), 
        .Y(n443) );
  AOI21X1M U540 ( .A0(n444), .A1(n443), .B0(n456), .Y(n451) );
  AOI22X1M U541 ( .A0(REG2[6]), .A1(n481), .B0(REG3[6]), .B1(n477), .Y(n446)
         );
  AOI22X1M U542 ( .A0(REG0[6]), .A1(n489), .B0(REG1[6]), .B1(n485), .Y(n445)
         );
  AOI21X1M U543 ( .A0(n446), .A1(n445), .B0(n459), .Y(n450) );
  AOI22X1M U544 ( .A0(\mem[6][6] ), .A1(n481), .B0(\mem[7][6] ), .B1(n477), 
        .Y(n448) );
  AOI22X1M U545 ( .A0(\mem[4][6] ), .A1(n488), .B0(\mem[5][6] ), .B1(n485), 
        .Y(n447) );
  AOI21X1M U546 ( .A0(n448), .A1(n447), .B0(n466), .Y(n449) );
  OR4X1M U547 ( .A(n452), .B(n451), .C(n450), .D(n449), .Y(N33) );
  AOI22X1M U548 ( .A0(\mem[10][7] ), .A1(n481), .B0(\mem[11][7] ), .B1(n477), 
        .Y(n455) );
  AOI22X1M U549 ( .A0(\mem[8][7] ), .A1(n490), .B0(\mem[9][7] ), .B1(n485), 
        .Y(n454) );
  AOI21X1M U550 ( .A0(n455), .A1(n454), .B0(n453), .Y(n472) );
  AOI22X1M U551 ( .A0(\mem[14][7] ), .A1(n481), .B0(\mem[15][7] ), .B1(n477), 
        .Y(n458) );
  AOI22X1M U552 ( .A0(\mem[12][7] ), .A1(n490), .B0(\mem[13][7] ), .B1(n485), 
        .Y(n457) );
  AOI21X1M U553 ( .A0(n458), .A1(n457), .B0(n456), .Y(n471) );
  AOI22X1M U554 ( .A0(REG2[7]), .A1(n481), .B0(REG3[7]), .B1(n477), .Y(n461)
         );
  AOI22X1M U555 ( .A0(REG0[7]), .A1(n490), .B0(REG1[7]), .B1(n485), .Y(n460)
         );
  AOI21X1M U556 ( .A0(n461), .A1(n460), .B0(n459), .Y(n470) );
  AOI22X1M U557 ( .A0(\mem[6][7] ), .A1(n481), .B0(\mem[7][7] ), .B1(n477), 
        .Y(n468) );
  AOI22X1M U558 ( .A0(\mem[4][7] ), .A1(n488), .B0(\mem[5][7] ), .B1(n485), 
        .Y(n467) );
  AOI21X1M U559 ( .A0(n468), .A1(n467), .B0(n466), .Y(n469) );
  OR4X1M U560 ( .A(n472), .B(n471), .C(n470), .D(n469), .Y(N32) );
  INVXLM U561 ( .A(\mem[13][0] ), .Y(n577) );
  INVXLM U562 ( .A(n577), .Y(n578) );
  DLY1X1M U563 ( .A(test_se), .Y(n579) );
  DLY1X1M U564 ( .A(n643), .Y(n580) );
  DLY1X1M U565 ( .A(n644), .Y(n581) );
  DLY1X1M U566 ( .A(n579), .Y(n582) );
  DLY1X1M U567 ( .A(n668), .Y(n583) );
  DLY1X1M U568 ( .A(n669), .Y(n584) );
  DLY1X1M U569 ( .A(n670), .Y(n585) );
  DLY1X1M U570 ( .A(n671), .Y(n586) );
  DLY1X1M U571 ( .A(n713), .Y(n587) );
  DLY1X1M U572 ( .A(n706), .Y(n588) );
  DLY1X1M U573 ( .A(n652), .Y(n589) );
  DLY1X1M U574 ( .A(n656), .Y(n590) );
  DLY1X1M U575 ( .A(n660), .Y(n591) );
  DLY1X1M U576 ( .A(n665), .Y(n592) );
  DLY1X1M U577 ( .A(n705), .Y(n593) );
  DLY1X1M U578 ( .A(n707), .Y(n594) );
  DLY1X1M U579 ( .A(n709), .Y(n595) );
  DLY1X1M U580 ( .A(n711), .Y(n596) );
  DLY1X1M U581 ( .A(n653), .Y(n597) );
  DLY1X1M U582 ( .A(n655), .Y(n598) );
  DLY1X1M U583 ( .A(n657), .Y(n599) );
  DLY1X1M U584 ( .A(n580), .Y(n600) );
  DLY1X1M U585 ( .A(n659), .Y(n601) );
  DLY1X1M U586 ( .A(n661), .Y(n602) );
  DLY1X1M U587 ( .A(n663), .Y(n603) );
  DLY1X1M U588 ( .A(n581), .Y(n604) );
  DLY1X1M U589 ( .A(n667), .Y(n605) );
  DLY1X1M U590 ( .A(n677), .Y(n606) );
  DLY1X1M U591 ( .A(n679), .Y(n607) );
  DLY1X1M U592 ( .A(n681), .Y(n608) );
  DLY1X1M U593 ( .A(n683), .Y(n609) );
  DLY1X1M U594 ( .A(n685), .Y(n610) );
  DLY1X1M U595 ( .A(n687), .Y(n611) );
  DLY1X1M U596 ( .A(n689), .Y(n612) );
  DLY1X1M U597 ( .A(n691), .Y(n613) );
  DLY1X1M U598 ( .A(n693), .Y(n614) );
  DLY1X1M U599 ( .A(n695), .Y(n615) );
  DLY1X1M U600 ( .A(n697), .Y(n616) );
  DLY1X1M U601 ( .A(n699), .Y(n617) );
  DLY1X1M U602 ( .A(n701), .Y(n618) );
  DLY1X1M U603 ( .A(n703), .Y(n619) );
  DLY1X1M U604 ( .A(n649), .Y(n620) );
  DLY1X1M U605 ( .A(n708), .Y(n621) );
  DLY1X1M U606 ( .A(n710), .Y(n622) );
  DLY1X1M U607 ( .A(n712), .Y(n623) );
  DLY1X1M U608 ( .A(n672), .Y(n624) );
  DLY1X1M U609 ( .A(n673), .Y(n625) );
  DLY1X1M U610 ( .A(n674), .Y(n626) );
  DLY1X1M U611 ( .A(n675), .Y(n627) );
  DLY1X1M U612 ( .A(n676), .Y(n628) );
  DLY1X1M U613 ( .A(n678), .Y(n629) );
  DLY1X1M U614 ( .A(n680), .Y(n630) );
  DLY1X1M U615 ( .A(n682), .Y(n631) );
  DLY1X1M U616 ( .A(n684), .Y(n632) );
  DLY1X1M U617 ( .A(n686), .Y(n633) );
  DLY1X1M U618 ( .A(n688), .Y(n634) );
  DLY1X1M U619 ( .A(n690), .Y(n635) );
  DLY1X1M U620 ( .A(n692), .Y(n636) );
  DLY1X1M U621 ( .A(n694), .Y(n637) );
  DLY1X1M U622 ( .A(n696), .Y(n638) );
  DLY1X1M U623 ( .A(n698), .Y(n639) );
  DLY1X1M U624 ( .A(n700), .Y(n640) );
  DLY1X1M U625 ( .A(n702), .Y(n641) );
  DLY1X1M U626 ( .A(n704), .Y(n642) );
  DLY1X1M U627 ( .A(n646), .Y(n643) );
  DLY1X1M U628 ( .A(n582), .Y(n644) );
  DLY1X1M U629 ( .A(test_se), .Y(n645) );
  DLY1X1M U630 ( .A(n579), .Y(n646) );
  DLY1X1M U631 ( .A(n664), .Y(n647) );
  DLY1X1M U632 ( .A(n664), .Y(n648) );
  DLY1X1M U633 ( .A(n713), .Y(n649) );
  DLY1X1M U634 ( .A(n587), .Y(n650) );
  DLY1X1M U635 ( .A(n587), .Y(n651) );
  DLY1X1M U636 ( .A(n669), .Y(n652) );
  DLY1X1M U637 ( .A(n584), .Y(n653) );
  DLY1X1M U638 ( .A(n643), .Y(n654) );
  DLY1X1M U639 ( .A(n585), .Y(n655) );
  DLY1X1M U640 ( .A(n670), .Y(n656) );
  DLY1X1M U641 ( .A(n584), .Y(n657) );
  DLY1X1M U642 ( .A(n580), .Y(n658) );
  DLY1X1M U643 ( .A(n585), .Y(n659) );
  DLY1X1M U644 ( .A(n583), .Y(n660) );
  DLY1X1M U645 ( .A(n583), .Y(n661) );
  DLY1X1M U646 ( .A(n581), .Y(n662) );
  DLY1X1M U647 ( .A(n586), .Y(n663) );
  DLY1X1M U648 ( .A(n668), .Y(n664) );
  DLY1X1M U649 ( .A(n671), .Y(n665) );
  DLY1X1M U650 ( .A(n644), .Y(n666) );
  DLY1X1M U651 ( .A(n586), .Y(n667) );
  DLY1X1M U652 ( .A(n645), .Y(n668) );
  DLY1X1M U653 ( .A(n646), .Y(n669) );
  DLY1X1M U654 ( .A(n582), .Y(n670) );
  DLY1X1M U655 ( .A(n645), .Y(n671) );
  DLY1X1M U656 ( .A(n648), .Y(n672) );
  DLY1X1M U657 ( .A(n589), .Y(n673) );
  DLY1X1M U658 ( .A(n590), .Y(n674) );
  DLY1X1M U659 ( .A(n591), .Y(n675) );
  DLY1X1M U660 ( .A(n592), .Y(n676) );
  DLY1X1M U661 ( .A(n656), .Y(n677) );
  DLY1X1M U662 ( .A(n677), .Y(n678) );
  DLY1X1M U663 ( .A(n660), .Y(n679) );
  DLY1X1M U664 ( .A(n679), .Y(n680) );
  DLY1X1M U665 ( .A(n665), .Y(n681) );
  DLY1X1M U666 ( .A(n681), .Y(n682) );
  DLY1X1M U667 ( .A(n653), .Y(n683) );
  DLY1X1M U668 ( .A(n683), .Y(n684) );
  DLY1X1M U669 ( .A(n657), .Y(n685) );
  DLY1X1M U671 ( .A(n661), .Y(n687) );
  DLY1X1M U672 ( .A(n687), .Y(n688) );
  DLY1X1M U673 ( .A(n666), .Y(n689) );
  DLY1X1M U674 ( .A(n689), .Y(n690) );
  DLY1X1M U675 ( .A(n654), .Y(n691) );
  DLY1X1M U676 ( .A(n691), .Y(n692) );
  DLY1X1M U677 ( .A(n658), .Y(n693) );
  DLY1X1M U678 ( .A(n693), .Y(n694) );
  DLY1X1M U679 ( .A(n662), .Y(n695) );
  DLY1X1M U680 ( .A(n695), .Y(n696) );
  DLY1X1M U681 ( .A(n667), .Y(n697) );
  DLY1X1M U682 ( .A(n697), .Y(n698) );
  DLY1X1M U683 ( .A(n655), .Y(n699) );
  DLY1X1M U684 ( .A(n699), .Y(n700) );
  DLY1X1M U685 ( .A(n659), .Y(n701) );
  DLY1X1M U686 ( .A(n701), .Y(n702) );
  DLY1X1M U687 ( .A(n663), .Y(n703) );
  DLY1X1M U688 ( .A(n703), .Y(n704) );
  DLY1X1M U689 ( .A(n647), .Y(n705) );
  DLY1X1M U690 ( .A(n652), .Y(n706) );
  DLY1X1M U691 ( .A(n705), .Y(n707) );
  DLY1X1M U692 ( .A(n707), .Y(n708) );
  DLY1X1M U693 ( .A(n593), .Y(n709) );
  DLY1X1M U694 ( .A(n709), .Y(n710) );
  DLY1X1M U695 ( .A(n588), .Y(n711) );
  DLY1X1M U696 ( .A(n711), .Y(n712) );
  DLY1X1M U697 ( .A(n706), .Y(n713) );
  DLY1X1M U698 ( .A(REG2[1]), .Y(n714) );
  DLY1X1M U699 ( .A(n578), .Y(n715) );
  SDFFRQX4M \mem_reg[13][0]  ( .D(n200), .SI(\mem[12][7] ), .SE(n686), .CK(CLK), .RN(n528), .Q(\mem[13][0] ) );
  BUFX2M U3 ( .A(n685), .Y(n686) );
endmodule


module ALU_8B_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
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
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n1), .CI(
        \u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n2), .CI(
        \u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n3), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n5), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n4), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n6), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n7), .CI(
        \u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n4), .CI(
        \u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n3), .CI(
        \u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n2), .CI(
        \u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n3), .CI(
        \u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n4), .CI(
        \u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n4), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n7), .CI(
        \u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n6), .CI(
        \u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n5), .CI(
        \u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n5), .CI(
        \u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n5), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n5), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n6), .CI(
        \u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n6), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n6), .CI(
        \u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n6), .CI(
        \u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n7), .CI(
        \u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n7), .CI(
        \u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n7), .CI(
        \u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n7), .CI(
        \u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n7), .CI(
        \u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  INVX8M U1 ( .A(b[0]), .Y(n8) );
  NOR2X4M U2 ( .A(b[6]), .B(b[7]), .Y(n11) );
  AND3X4M U3 ( .A(n11), .B(n3), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  CLKAND2X4M U4 ( .A(\u_div/CryTmp[4][4] ), .B(n10), .Y(quotient[4]) );
  CLKAND2X4M U5 ( .A(\u_div/CryTmp[2][6] ), .B(n11), .Y(quotient[2]) );
  CLKAND2X4M U6 ( .A(\u_div/CryTmp[1][7] ), .B(n1), .Y(quotient[1]) );
  AND2X2M U7 ( .A(\u_div/CryTmp[5][3] ), .B(n9), .Y(quotient[5]) );
  MX2X1M U8 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  MX2X1M U9 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  MX2X1M U10 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  MX2X1M U11 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  MX2X1M U12 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  MX2X1M U13 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  MX2X1M U14 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  MX2X1M U15 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  MX2X1M U16 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  MX2X1M U17 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2X1M U18 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2X1M U19 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2X1M U20 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2X1M U21 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  MX2XLM U22 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  MX2XLM U23 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  MX2XLM U24 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  MX2XLM U25 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  AND3X2M U26 ( .A(n9), .B(n6), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X2M U27 ( .A(n10), .B(n5), .Y(n9) );
  INVX4M U28 ( .A(b[1]), .Y(n7) );
  INVX4M U29 ( .A(b[2]), .Y(n6) );
  OR2X2M U30 ( .A(a[7]), .B(n8), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U31 ( .A(n8), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U32 ( .A(n8), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U33 ( .A(n8), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U34 ( .A(n8), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U35 ( .A(n8), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U36 ( .A(n8), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U37 ( .A(n8), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  OR2X2M U38 ( .A(a[0]), .B(n8), .Y(\u_div/CryTmp[0][1] ) );
  OR2X2M U39 ( .A(a[5]), .B(n8), .Y(\u_div/CryTmp[5][1] ) );
  OR2X2M U40 ( .A(a[4]), .B(n8), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U41 ( .A(a[3]), .B(n8), .Y(\u_div/CryTmp[3][1] ) );
  OR2X2M U42 ( .A(a[2]), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  OR2X2M U43 ( .A(a[1]), .B(n8), .Y(\u_div/CryTmp[1][1] ) );
  OR2X2M U44 ( .A(a[6]), .B(n8), .Y(\u_div/CryTmp[6][1] ) );
  INVX4M U45 ( .A(b[3]), .Y(n5) );
  INVX4M U46 ( .A(b[4]), .Y(n4) );
  INVX4M U47 ( .A(b[5]), .Y(n3) );
  INVX2M U48 ( .A(b[6]), .Y(n2) );
  INVX2M U49 ( .A(b[7]), .Y(n1) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U51 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U53 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U54 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U58 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U59 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U60 ( .A(\u_div/CryTmp[7][1] ), .B(n9), .C(n7), .D(n6), .Y(
        quotient[7]) );
  AND3X1M U61 ( .A(n11), .B(n4), .C(n3), .Y(n10) );
endmodule


module ALU_8B_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n1), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  XNOR2X2M U1 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[0]), .Y(n8) );
  INVX2M U3 ( .A(B[3]), .Y(n5) );
  INVX2M U4 ( .A(B[4]), .Y(n4) );
  INVX2M U5 ( .A(B[5]), .Y(n3) );
  INVX2M U6 ( .A(B[6]), .Y(n2) );
  OR2X2M U7 ( .A(A[0]), .B(n8), .Y(carry[1]) );
  INVX2M U8 ( .A(B[1]), .Y(n7) );
  INVX2M U9 ( .A(B[2]), .Y(n6) );
  INVX2M U10 ( .A(B[7]), .Y(n1) );
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

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
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
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
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
  NOR2X2M U4 ( .A(B[11]), .B(A[11]), .Y(n19) );
  NOR2X2M U5 ( .A(B[9]), .B(A[9]), .Y(n11) );
  NOR2X2M U6 ( .A(B[10]), .B(A[10]), .Y(n23) );
  NOR2X2M U7 ( .A(B[8]), .B(A[8]), .Y(n14) );
  CLKXOR2X2M U8 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  CLKXOR2X2M U9 ( .A(B[13]), .B(n16), .Y(SUM[13]) );
  NAND2X2M U10 ( .A(A[7]), .B(B[7]), .Y(n13) );
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

  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n10), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n9), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n8), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n7), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n6), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n5), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n4), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  AND2X2M U2 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n9) );
  AND2X2M U9 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n10) );
  NOR2X2M U10 ( .A(n25), .B(n24), .Y(\ab[0][7] ) );
  NOR2X2M U11 ( .A(n26), .B(n24), .Y(\ab[0][6] ) );
  NOR2X2M U12 ( .A(n27), .B(n24), .Y(\ab[0][5] ) );
  NOR2X2M U13 ( .A(n28), .B(n24), .Y(\ab[0][4] ) );
  NOR2X2M U14 ( .A(n29), .B(n24), .Y(\ab[0][3] ) );
  NOR2X2M U15 ( .A(n30), .B(n24), .Y(\ab[0][2] ) );
  NOR2X2M U16 ( .A(n31), .B(n24), .Y(\ab[0][1] ) );
  NOR2X2M U17 ( .A(n17), .B(n25), .Y(\ab[7][7] ) );
  NOR2X2M U18 ( .A(n26), .B(n23), .Y(\ab[1][6] ) );
  NOR2X2M U19 ( .A(n27), .B(n23), .Y(\ab[1][5] ) );
  NOR2X2M U20 ( .A(n28), .B(n23), .Y(\ab[1][4] ) );
  NOR2X2M U21 ( .A(n29), .B(n23), .Y(\ab[1][3] ) );
  NOR2X2M U22 ( .A(n30), .B(n23), .Y(\ab[1][2] ) );
  NOR2X2M U23 ( .A(n31), .B(n23), .Y(\ab[1][1] ) );
  NOR2X2M U24 ( .A(n32), .B(n23), .Y(\ab[1][0] ) );
  CLKXOR2X2M U25 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U27 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U28 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U29 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U30 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  XOR2X1M U31 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  INVX4M U32 ( .A(A[7]), .Y(n17) );
  INVX4M U33 ( .A(A[1]), .Y(n23) );
  INVX4M U34 ( .A(A[2]), .Y(n22) );
  INVX4M U35 ( .A(A[3]), .Y(n21) );
  INVX4M U36 ( .A(A[4]), .Y(n20) );
  INVX4M U37 ( .A(A[5]), .Y(n19) );
  INVX4M U38 ( .A(A[6]), .Y(n18) );
  CLKXOR2X2M U39 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  AND2X2M U40 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U41 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U42 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U43 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U44 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U45 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  INVX4M U46 ( .A(A[0]), .Y(n24) );
  XOR2X1M U47 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  XOR2X1M U48 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1M U49 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1M U50 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1M U51 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1M U52 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  INVX4M U53 ( .A(B[6]), .Y(n26) );
  INVX4M U54 ( .A(B[7]), .Y(n25) );
  INVX4M U55 ( .A(B[0]), .Y(n32) );
  INVX4M U56 ( .A(B[1]), .Y(n31) );
  INVX4M U57 ( .A(B[4]), .Y(n28) );
  INVX4M U58 ( .A(B[5]), .Y(n27) );
  INVX4M U59 ( .A(B[2]), .Y(n30) );
  INVX4M U60 ( .A(B[3]), .Y(n29) );
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
  ALU_8B_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n3, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_8B_test_1 ( clk, rst, A, B, ALU_EN, ALU_FUN, ALU_OUT, Carry_Flag, 
        Arith_Flag, Logic_Flag, Shift_Flag, Valid, CMP_Flag, test_si, test_se
 );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input clk, rst, ALU_EN, test_si, test_se;
  output Carry_Flag, Arith_Flag, Logic_Flag, Shift_Flag, Valid, CMP_Flag;
  wire   N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80,
         N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94,
         N95, N96, N97, N98, N99, N100, N103, N104, N105, N106, N107, N108,
         N109, N110, N167, N169, n54, n55, n56, n57, n58, n59, n60, n61, n64,
         n65, n66, n67, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n3, n4, n5, n6, n7, n8, n9, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n62, n63, n68, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216;
  wire   [15:0] ALU_OUT_comb;

  SDFFRQX1M \ALU_OUT_reg[15]  ( .D(ALU_OUT_comb[15]), .SI(ALU_OUT[14]), .SE(
        n205), .CK(clk), .RN(n52), .Q(ALU_OUT[15]) );
  SDFFRQX1M \ALU_OUT_reg[14]  ( .D(ALU_OUT_comb[14]), .SI(ALU_OUT[13]), .SE(
        n207), .CK(clk), .RN(n52), .Q(ALU_OUT[14]) );
  SDFFRQX1M \ALU_OUT_reg[13]  ( .D(ALU_OUT_comb[13]), .SI(ALU_OUT[12]), .SE(
        n214), .CK(clk), .RN(n52), .Q(ALU_OUT[13]) );
  SDFFRQX1M \ALU_OUT_reg[12]  ( .D(ALU_OUT_comb[12]), .SI(ALU_OUT[11]), .SE(
        n212), .CK(clk), .RN(n52), .Q(ALU_OUT[12]) );
  SDFFRQX1M \ALU_OUT_reg[11]  ( .D(ALU_OUT_comb[11]), .SI(ALU_OUT[10]), .SE(
        n211), .CK(clk), .RN(n52), .Q(ALU_OUT[11]) );
  SDFFRQX1M \ALU_OUT_reg[10]  ( .D(ALU_OUT_comb[10]), .SI(ALU_OUT[9]), .SE(
        n213), .CK(clk), .RN(n52), .Q(ALU_OUT[10]) );
  SDFFRQX1M \ALU_OUT_reg[9]  ( .D(ALU_OUT_comb[9]), .SI(ALU_OUT[8]), .SE(n206), 
        .CK(clk), .RN(n52), .Q(ALU_OUT[9]) );
  SDFFRQX1M \ALU_OUT_reg[8]  ( .D(ALU_OUT_comb[8]), .SI(ALU_OUT[7]), .SE(n211), 
        .CK(clk), .RN(n52), .Q(ALU_OUT[8]) );
  SDFFRQX1M Valid_reg ( .D(1'b1), .SI(ALU_OUT[15]), .SE(n206), .CK(clk), .RN(
        n52), .Q(Valid) );
  SDFFRQX1M \ALU_OUT_reg[7]  ( .D(ALU_OUT_comb[7]), .SI(ALU_OUT[6]), .SE(n214), 
        .CK(clk), .RN(n52), .Q(ALU_OUT[7]) );
  SDFFRQX1M \ALU_OUT_reg[6]  ( .D(ALU_OUT_comb[6]), .SI(ALU_OUT[5]), .SE(n216), 
        .CK(clk), .RN(n52), .Q(ALU_OUT[6]) );
  SDFFRQX1M \ALU_OUT_reg[5]  ( .D(ALU_OUT_comb[5]), .SI(ALU_OUT[4]), .SE(n205), 
        .CK(clk), .RN(n52), .Q(ALU_OUT[5]) );
  SDFFRQX1M \ALU_OUT_reg[4]  ( .D(ALU_OUT_comb[4]), .SI(ALU_OUT[3]), .SE(n213), 
        .CK(clk), .RN(n52), .Q(ALU_OUT[4]) );
  SDFFRQX1M \ALU_OUT_reg[3]  ( .D(ALU_OUT_comb[3]), .SI(ALU_OUT[2]), .SE(n212), 
        .CK(clk), .RN(rst), .Q(ALU_OUT[3]) );
  SDFFRQX1M \ALU_OUT_reg[2]  ( .D(ALU_OUT_comb[2]), .SI(ALU_OUT[1]), .SE(n216), 
        .CK(clk), .RN(rst), .Q(ALU_OUT[2]) );
  SDFFRQX1M \ALU_OUT_reg[1]  ( .D(ALU_OUT_comb[1]), .SI(ALU_OUT[0]), .SE(n215), 
        .CK(clk), .RN(rst), .Q(ALU_OUT[1]) );
  SDFFRQX1M \ALU_OUT_reg[0]  ( .D(ALU_OUT_comb[0]), .SI(test_si), .SE(n207), 
        .CK(clk), .RN(rst), .Q(ALU_OUT[0]) );
  CLKINVX2M U9 ( .A(rst), .Y(n53) );
  NAND2X2M U23 ( .A(n66), .B(n135), .Y(n3) );
  NAND2X2M U24 ( .A(n142), .B(n135), .Y(n4) );
  NAND2X2M U25 ( .A(n142), .B(n141), .Y(n5) );
  AOI2B1X1M U26 ( .A1N(n164), .A0(n163), .B0(n162), .Y(n165) );
  INVX2M U27 ( .A(n165), .Y(n172) );
  OAI21X4M U28 ( .A0(n162), .A1(n147), .B0(n163), .Y(N169) );
  XNOR2X4M U29 ( .A(n41), .B(B[6]), .Y(n159) );
  AOI211X2M U30 ( .A0(n150), .A1(n170), .B0(n149), .C0(n148), .Y(n151) );
  NAND2BX2M U31 ( .AN(n143), .B(n154), .Y(n149) );
  OAI31X2M U32 ( .A0(n152), .A1(n143), .A2(n68), .B0(n153), .Y(n145) );
  AOI211X2M U33 ( .A0(n9), .A1(n169), .B0(n149), .C0(n63), .Y(n68) );
  NOR2X2M U34 ( .A(n168), .B(n32), .Y(n152) );
  NOR2X2M U35 ( .A(n167), .B(n29), .Y(n143) );
  NOR2X2M U36 ( .A(n166), .B(n6), .Y(n62) );
  NOR2X2M U37 ( .A(n42), .B(B[7]), .Y(n162) );
  NAND2X4M U38 ( .A(n135), .B(n125), .Y(n79) );
  NOR2X4M U39 ( .A(ALU_FUN[3]), .B(ALU_FUN[0]), .Y(n135) );
  NOR2X4M U40 ( .A(n197), .B(ALU_FUN[1]), .Y(n136) );
  NOR2X4M U41 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n142) );
  NOR2BX4M U42 ( .AN(ALU_FUN[3]), .B(ALU_FUN[0]), .Y(n126) );
  NOR2BX4M U43 ( .AN(ALU_FUN[0]), .B(ALU_FUN[3]), .Y(n141) );
  AOI22X1M U44 ( .A0(N84), .A1(n45), .B0(N75), .B1(n48), .Y(n61) );
  BUFX6M U45 ( .A(A[0]), .Y(n6) );
  INVX4M U46 ( .A(n127), .Y(n191) );
  INVX4M U47 ( .A(n55), .Y(n195) );
  NOR2X4M U48 ( .A(n127), .B(n192), .Y(n56) );
  NOR4X2M U49 ( .A(n47), .B(n45), .C(n49), .D(n69), .Y(n67) );
  INVX8M U50 ( .A(n60), .Y(n190) );
  INVX6M U51 ( .A(n79), .Y(n192) );
  INVX4M U52 ( .A(n51), .Y(n194) );
  INVX2M U53 ( .A(n64), .Y(n193) );
  INVX4M U54 ( .A(n3), .Y(n50) );
  INVX4M U55 ( .A(n3), .Y(n49) );
  INVX4M U56 ( .A(n4), .Y(n47) );
  INVX4M U57 ( .A(n5), .Y(n45) );
  INVX4M U58 ( .A(n4), .Y(n48) );
  INVX4M U59 ( .A(n5), .Y(n46) );
  AND2X2M U60 ( .A(n59), .B(n60), .Y(n58) );
  OAI2BB1X2M U61 ( .A0N(n125), .A1N(n141), .B0(n134), .Y(n127) );
  NAND2X4M U62 ( .A(n59), .B(n134), .Y(n81) );
  NOR2X4M U63 ( .A(n197), .B(n198), .Y(n125) );
  NAND2X2M U64 ( .A(n141), .B(n136), .Y(n60) );
  INVX4M U65 ( .A(n54), .Y(n196) );
  NAND2X2M U66 ( .A(n125), .B(n126), .Y(n55) );
  NAND2X2M U67 ( .A(n136), .B(n126), .Y(n64) );
  NAND2X2M U68 ( .A(n135), .B(n136), .Y(n59) );
  OAI2BB1X2M U69 ( .A0N(N94), .A1N(n70), .B0(n71), .Y(ALU_OUT_comb[9]) );
  OAI2BB1X2M U70 ( .A0N(N95), .A1N(n70), .B0(n71), .Y(ALU_OUT_comb[10]) );
  OAI2BB1X2M U71 ( .A0N(N96), .A1N(n70), .B0(n71), .Y(ALU_OUT_comb[11]) );
  OAI2BB1X2M U72 ( .A0N(N97), .A1N(n70), .B0(n71), .Y(ALU_OUT_comb[12]) );
  OAI2BB1X2M U73 ( .A0N(N98), .A1N(n70), .B0(n71), .Y(ALU_OUT_comb[13]) );
  OAI2BB1X2M U74 ( .A0N(N99), .A1N(n70), .B0(n71), .Y(ALU_OUT_comb[14]) );
  OAI2BB1X2M U75 ( .A0N(N100), .A1N(n70), .B0(n71), .Y(ALU_OUT_comb[15]) );
  CLKBUFX6M U76 ( .A(n57), .Y(n51) );
  NAND2X2M U77 ( .A(n142), .B(n126), .Y(n57) );
  AOI31X2M U78 ( .A0(n56), .A1(n51), .A2(n58), .B0(n189), .Y(Logic_Flag) );
  AND2X2M U79 ( .A(n66), .B(n141), .Y(n69) );
  AOI21X2M U80 ( .A0(n64), .A1(n65), .B0(n189), .Y(CMP_Flag) );
  AOI21X2M U81 ( .A0(n54), .A1(n55), .B0(n189), .Y(Shift_Flag) );
  NOR2X2M U82 ( .A(n67), .B(n189), .Y(Arith_Flag) );
  NOR2X6M U83 ( .A(n198), .B(ALU_FUN[2]), .Y(n66) );
  NAND2BX4M U84 ( .AN(n56), .B(ALU_EN), .Y(n71) );
  OAI221X1M U85 ( .A0(n44), .A1(n191), .B0(n174), .B1(n51), .C0(n79), .Y(n78)
         );
  OAI221X1M U86 ( .A0(n9), .A1(n191), .B0(n51), .B1(n180), .C0(n79), .Y(n120)
         );
  INVX8M U87 ( .A(ALU_EN), .Y(n189) );
  NAND3X4M U88 ( .A(n136), .B(ALU_FUN[3]), .C(ALU_FUN[0]), .Y(n54) );
  NAND3X2M U89 ( .A(ALU_FUN[0]), .B(ALU_FUN[3]), .C(n142), .Y(n134) );
  CLKAND2X4M U90 ( .A(n49), .B(ALU_EN), .Y(n70) );
  OAI2BB2X1M U91 ( .B0(n174), .B1(n60), .A0N(N92), .A1N(n49), .Y(n76) );
  INVX2M U92 ( .A(n44), .Y(n174) );
  INVX2M U93 ( .A(n9), .Y(n180) );
  AOI21X2M U94 ( .A0(n72), .A1(n56), .B0(n189), .Y(ALU_OUT_comb[8]) );
  AOI22X1M U95 ( .A0(n44), .A1(n195), .B0(N93), .B1(n50), .Y(n72) );
  INVX2M U96 ( .A(n29), .Y(n179) );
  NAND2X2M U97 ( .A(n66), .B(ALU_FUN[3]), .Y(n65) );
  INVX2M U98 ( .A(ALU_FUN[2]), .Y(n197) );
  INVX2M U99 ( .A(ALU_FUN[1]), .Y(n198) );
  INVX6M U100 ( .A(n53), .Y(n52) );
  INVX2M U101 ( .A(n31), .Y(n178) );
  INVX2M U102 ( .A(n34), .Y(n177) );
  INVX2M U103 ( .A(n37), .Y(n176) );
  INVX2M U104 ( .A(n41), .Y(n175) );
  INVX2M U105 ( .A(n80), .Y(n173) );
  AOI221X2M U106 ( .A0(n81), .A1(n44), .B0(n174), .B1(n194), .C0(n190), .Y(n80) );
  INVX2M U107 ( .A(n9), .Y(n170) );
  NOR2X2M U108 ( .A(n61), .B(n189), .Y(Carry_Flag) );
  OA21X4M U109 ( .A0(n139), .A1(n140), .B0(n69), .Y(n77) );
  NAND4X2M U110 ( .A(n166), .B(n188), .C(n187), .D(n186), .Y(n140) );
  NAND4X2M U111 ( .A(n185), .B(n184), .C(n183), .D(n182), .Y(n139) );
  OAI222X1M U112 ( .A0(n55), .A1(n181), .B0(n124), .B1(n188), .C0(n54), .C1(
        n179), .Y(n121) );
  AOI221X2M U113 ( .A0(n194), .A1(n180), .B0(n9), .B1(n81), .C0(n190), .Y(n124) );
  AOI31X2M U114 ( .A0(n128), .A1(n129), .A2(n130), .B0(n189), .Y(
        ALU_OUT_comb[0]) );
  AOI22X1M U115 ( .A0(N76), .A1(n45), .B0(N67), .B1(n48), .Y(n128) );
  AOI211X2M U116 ( .A0(N169), .A1(n193), .B0(n131), .C0(n132), .Y(n130) );
  AOI222X2M U117 ( .A0(N85), .A1(n49), .B0(n192), .B1(n181), .C0(n6), .C1(n190), .Y(n129) );
  AOI31X2M U118 ( .A0(n117), .A1(n118), .A2(n119), .B0(n189), .Y(
        ALU_OUT_comb[1]) );
  AOI211X2M U119 ( .A0(n120), .A1(n188), .B0(n121), .C0(n122), .Y(n119) );
  AOI222X2M U120 ( .A0(n9), .A1(n190), .B0(N169), .B1(n193), .C0(n192), .C1(
        n180), .Y(n118) );
  AOI222X2M U121 ( .A0(N68), .A1(n47), .B0(N86), .B1(n50), .C0(N77), .C1(n46), 
        .Y(n117) );
  AOI31X2M U122 ( .A0(n110), .A1(n111), .A2(n112), .B0(n189), .Y(
        ALU_OUT_comb[2]) );
  AOI22X1M U123 ( .A0(N78), .A1(n46), .B0(N69), .B1(n47), .Y(n110) );
  AOI221X2M U124 ( .A0(n9), .A1(n195), .B0(n32), .B1(n196), .C0(n113), .Y(n112) );
  AOI222X2M U125 ( .A0(N87), .A1(n49), .B0(n192), .B1(n179), .C0(n29), .C1(
        n190), .Y(n111) );
  AOI31X2M U126 ( .A0(n103), .A1(n104), .A2(n105), .B0(n189), .Y(
        ALU_OUT_comb[3]) );
  AOI22X1M U127 ( .A0(N79), .A1(n45), .B0(N70), .B1(n48), .Y(n103) );
  AOI221X2M U128 ( .A0(n29), .A1(n195), .B0(n35), .B1(n196), .C0(n106), .Y(
        n105) );
  AOI222X2M U129 ( .A0(N88), .A1(n50), .B0(n192), .B1(n178), .C0(n32), .C1(
        n190), .Y(n104) );
  AOI31X2M U130 ( .A0(n96), .A1(n97), .A2(n98), .B0(n189), .Y(ALU_OUT_comb[4])
         );
  AOI22X1M U131 ( .A0(N80), .A1(n46), .B0(N71), .B1(n47), .Y(n96) );
  AOI221X2M U132 ( .A0(n32), .A1(n195), .B0(n196), .B1(n38), .C0(n99), .Y(n98)
         );
  AOI222X2M U133 ( .A0(N89), .A1(n50), .B0(n192), .B1(n177), .C0(n35), .C1(
        n190), .Y(n97) );
  AOI31X2M U134 ( .A0(n89), .A1(n90), .A2(n91), .B0(n189), .Y(ALU_OUT_comb[5])
         );
  AOI22X1M U135 ( .A0(N81), .A1(n45), .B0(N72), .B1(n48), .Y(n89) );
  AOI221X2M U136 ( .A0(n35), .A1(n195), .B0(n196), .B1(n41), .C0(n92), .Y(n91)
         );
  AOI222X2M U137 ( .A0(N90), .A1(n50), .B0(n192), .B1(n176), .C0(n38), .C1(
        n190), .Y(n90) );
  AOI31X2M U138 ( .A0(n82), .A1(n83), .A2(n84), .B0(n189), .Y(ALU_OUT_comb[6])
         );
  AOI22X1M U139 ( .A0(N82), .A1(n46), .B0(N73), .B1(n47), .Y(n82) );
  AOI221X2M U140 ( .A0(n38), .A1(n195), .B0(n196), .B1(n44), .C0(n85), .Y(n84)
         );
  AOI222X2M U141 ( .A0(N91), .A1(n50), .B0(n192), .B1(n175), .C0(n190), .C1(
        n41), .Y(n83) );
  OAI22X1M U142 ( .A0(n54), .A1(n180), .B0(n133), .B1(n166), .Y(n132) );
  AOI221X2M U143 ( .A0(n194), .A1(n181), .B0(n6), .B1(n81), .C0(n190), .Y(n133) );
  OAI21X2M U144 ( .A0(n86), .A1(n183), .B0(n87), .Y(n85) );
  AOI22X1M U145 ( .A0(N109), .A1(n77), .B0(n88), .B1(n183), .Y(n87) );
  AOI221X2M U146 ( .A0(n194), .A1(n175), .B0(n41), .B1(n81), .C0(n190), .Y(n86) );
  OAI221X1M U147 ( .A0(n41), .A1(n191), .B0(n51), .B1(n175), .C0(n79), .Y(n88)
         );
  OAI21X2M U148 ( .A0(n100), .A1(n185), .B0(n101), .Y(n99) );
  AOI22X1M U149 ( .A0(N107), .A1(n77), .B0(n102), .B1(n185), .Y(n101) );
  AOI221X2M U150 ( .A0(n194), .A1(n177), .B0(n35), .B1(n81), .C0(n190), .Y(
        n100) );
  OAI221X1M U151 ( .A0(n35), .A1(n191), .B0(n51), .B1(n177), .C0(n79), .Y(n102) );
  OAI21X2M U152 ( .A0(n93), .A1(n184), .B0(n94), .Y(n92) );
  AOI22X1M U153 ( .A0(N108), .A1(n77), .B0(n95), .B1(n184), .Y(n94) );
  AOI221X2M U154 ( .A0(n194), .A1(n176), .B0(n38), .B1(n81), .C0(n190), .Y(n93) );
  OAI221X1M U155 ( .A0(n38), .A1(n191), .B0(n51), .B1(n176), .C0(n79), .Y(n95)
         );
  OAI21X2M U156 ( .A0(n114), .A1(n187), .B0(n115), .Y(n113) );
  AOI22X1M U157 ( .A0(N105), .A1(n77), .B0(n116), .B1(n187), .Y(n115) );
  AOI221X2M U158 ( .A0(n194), .A1(n179), .B0(n29), .B1(n81), .C0(n190), .Y(
        n114) );
  OAI221X1M U159 ( .A0(n29), .A1(n191), .B0(n51), .B1(n179), .C0(n79), .Y(n116) );
  OAI21X2M U160 ( .A0(n107), .A1(n186), .B0(n108), .Y(n106) );
  AOI22X1M U161 ( .A0(N106), .A1(n77), .B0(n109), .B1(n186), .Y(n108) );
  AOI221X2M U162 ( .A0(n194), .A1(n178), .B0(n32), .B1(n81), .C0(n190), .Y(
        n107) );
  OAI221X1M U163 ( .A0(n32), .A1(n191), .B0(n51), .B1(n178), .C0(n79), .Y(n109) );
  INVX2M U164 ( .A(n6), .Y(n181) );
  OAI2BB1XLM U165 ( .A0N(N104), .A1N(n77), .B0(n123), .Y(n122) );
  NAND4X2M U166 ( .A(n172), .B(n66), .C(ALU_FUN[0]), .D(ALU_FUN[3]), .Y(n123)
         );
  INVX4M U167 ( .A(n30), .Y(n31) );
  INVX4M U168 ( .A(n33), .Y(n34) );
  INVX4M U169 ( .A(n36), .Y(n37) );
  INVX4M U170 ( .A(n39), .Y(n40) );
  INVX4M U171 ( .A(n39), .Y(n41) );
  INVX4M U172 ( .A(n7), .Y(n8) );
  INVX4M U173 ( .A(n27), .Y(n28) );
  INVX4M U174 ( .A(n42), .Y(n43) );
  INVX4M U175 ( .A(n7), .Y(n9) );
  INVX4M U176 ( .A(n27), .Y(n29) );
  INVX4M U177 ( .A(n30), .Y(n32) );
  INVX4M U178 ( .A(n36), .Y(n38) );
  INVX4M U179 ( .A(n33), .Y(n35) );
  INVX4M U180 ( .A(n42), .Y(n44) );
  INVXLM U181 ( .A(n62), .Y(n169) );
  INVXLM U182 ( .A(n151), .Y(n171) );
  AOI31X2M U183 ( .A0(n73), .A1(n74), .A2(n75), .B0(n189), .Y(ALU_OUT_comb[7])
         );
  AOI22X1M U184 ( .A0(n41), .A1(n195), .B0(n192), .B1(n174), .Y(n73) );
  AOI221X2M U185 ( .A0(N83), .A1(n46), .B0(N74), .B1(n48), .C0(n76), .Y(n75)
         );
  AOI222X2M U186 ( .A0(B[7]), .A1(n173), .B0(N110), .B1(n77), .C0(n78), .C1(
        n182), .Y(n74) );
  INVX2M U187 ( .A(B[6]), .Y(n183) );
  INVX2M U188 ( .A(B[4]), .Y(n185) );
  INVX2M U189 ( .A(B[5]), .Y(n184) );
  INVX2M U190 ( .A(B[1]), .Y(n188) );
  INVX2M U191 ( .A(B[3]), .Y(n186) );
  INVX2M U192 ( .A(B[2]), .Y(n187) );
  INVX2M U193 ( .A(B[7]), .Y(n182) );
  OAI21X2M U194 ( .A0(B[0]), .A1(n137), .B0(n138), .Y(n131) );
  AOI32X1M U195 ( .A0(n66), .A1(n126), .A2(N167), .B0(N103), .B1(n77), .Y(n138) );
  AOI221X2M U196 ( .A0(n6), .A1(n194), .B0(n127), .B1(n181), .C0(n192), .Y(
        n137) );
  INVX2M U197 ( .A(B[0]), .Y(n166) );
  INVX2M U198 ( .A(B[2]), .Y(n167) );
  INVX2M U199 ( .A(B[3]), .Y(n168) );
  INVX2M U200 ( .A(A[1]), .Y(n7) );
  INVX2M U201 ( .A(A[2]), .Y(n27) );
  INVX2M U202 ( .A(A[3]), .Y(n30) );
  INVX2M U203 ( .A(A[4]), .Y(n33) );
  INVX2M U204 ( .A(A[5]), .Y(n36) );
  INVX2M U205 ( .A(A[7]), .Y(n42) );
  INVX2M U206 ( .A(A[6]), .Y(n39) );
  NAND2BX1M U207 ( .AN(B[4]), .B(n35), .Y(n155) );
  NAND2BX1M U208 ( .AN(n35), .B(B[4]), .Y(n144) );
  CLKNAND2X2M U209 ( .A(n155), .B(n144), .Y(n157) );
  CLKNAND2X2M U210 ( .A(n29), .B(n167), .Y(n154) );
  AOI21X1M U211 ( .A0(n62), .A1(n170), .B0(B[1]), .Y(n63) );
  CLKNAND2X2M U212 ( .A(n32), .B(n168), .Y(n153) );
  NAND2BX1M U213 ( .AN(n38), .B(B[5]), .Y(n160) );
  OAI211X1M U214 ( .A0(n157), .A1(n145), .B0(n144), .C0(n160), .Y(n146) );
  NAND2BX1M U215 ( .AN(B[5]), .B(n38), .Y(n156) );
  AOI32X1M U216 ( .A0(n146), .A1(n156), .A2(n159), .B0(B[6]), .B1(n39), .Y(
        n147) );
  CLKNAND2X2M U217 ( .A(B[7]), .B(n42), .Y(n163) );
  CLKNAND2X2M U218 ( .A(n6), .B(n166), .Y(n150) );
  OA21X1M U219 ( .A0(n150), .A1(n170), .B0(B[1]), .Y(n148) );
  AOI31X1M U220 ( .A0(n171), .A1(n154), .A2(n153), .B0(n152), .Y(n158) );
  OAI2B11X1M U221 ( .A1N(n158), .A0(n157), .B0(n156), .C0(n155), .Y(n161) );
  AOI32X1M U222 ( .A0(n161), .A1(n160), .A2(n159), .B0(n41), .B1(n183), .Y(
        n164) );
  NOR2X1M U223 ( .A(N169), .B(n172), .Y(N167) );
  DLY1X1M U225 ( .A(n209), .Y(n202) );
  DLY1X1M U226 ( .A(n210), .Y(n203) );
  DLY1X1M U227 ( .A(test_se), .Y(n204) );
  DLY1X1M U228 ( .A(n209), .Y(n205) );
  DLY1X1M U229 ( .A(n215), .Y(n206) );
  DLY1X1M U230 ( .A(n210), .Y(n207) );
  DLY1X1M U231 ( .A(n204), .Y(n208) );
  DLY1X1M U232 ( .A(n204), .Y(n209) );
  DLY1X1M U233 ( .A(test_se), .Y(n210) );
  DLY1X1M U234 ( .A(n202), .Y(n211) );
  DLY1X1M U235 ( .A(n208), .Y(n212) );
  DLY1X1M U236 ( .A(n203), .Y(n213) );
  DLY1X1M U237 ( .A(n202), .Y(n214) );
  DLY1X1M U238 ( .A(n208), .Y(n215) );
  DLY1X1M U239 ( .A(n203), .Y(n216) );
  ALU_8B_DW_div_uns_0 div_49 ( .a({n43, n40, n37, n34, n31, n28, n8, n6}), .b(
        B), .quotient({N110, N109, N108, N107, N106, N105, N104, N103}) );
  ALU_8B_DW01_sub_0 sub_40 ( .A({1'b0, n43, n40, n37, n34, n31, n28, n8, n6}), 
        .B({1'b0, B}), .CI(1'b0), .DIFF({N84, N83, N82, N81, N80, N79, N78, 
        N77, N76}) );
  ALU_8B_DW01_add_0 add_36 ( .A({1'b0, n43, n40, n37, n34, n31, n28, n8, n6}), 
        .B({1'b0, B}), .CI(1'b0), .SUM({N75, N74, N73, N72, N71, N70, N69, N68, 
        N67}) );
  ALU_8B_DW02_mult_0 mult_44 ( .A({n43, n40, n37, n34, n31, n28, n8, n6}), .B(
        B), .TC(1'b0), .PRODUCT({N100, N99, N98, N97, N96, N95, N94, N93, N92, 
        N91, N90, N89, N88, N87, N86, N85}) );
endmodule


module DATA_SAMPLING_OVERSAMPLE3_test_1 ( RX_IN, DAT_SAMP_EN, PRESCALE, 
        EDGE_CNT, clk, rst, SAMPLED_BIT, test_si, test_so, test_se );
  input [5:0] PRESCALE;
  input [5:0] EDGE_CNT;
  input RX_IN, DAT_SAMP_EN, clk, rst, test_si, test_se;
  output SAMPLED_BIT, test_so;
  wire   N6, N7, N8, N9, N10, N11, N15, N16, N17, N18, N19, n20, n21, n22,
         \add_29/carry[4] , \add_29/carry[3] , \add_29/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n14, n15, n16, n17, n18, n19, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n42;
  wire   [2:0] samples;
  assign test_so = samples[2];

  SDFFRQX2M \samples_reg[1]  ( .D(n21), .SI(samples[0]), .SE(n42), .CK(clk), 
        .RN(rst), .Q(samples[1]) );
  SDFFRQX2M \samples_reg[2]  ( .D(n22), .SI(samples[1]), .SE(n42), .CK(clk), 
        .RN(rst), .Q(samples[2]) );
  SDFFRQX2M \samples_reg[0]  ( .D(n20), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(samples[0]) );
  BUFX2M U4 ( .A(n26), .Y(n1) );
  NOR3X4M U5 ( .A(PRESCALE[4]), .B(PRESCALE[5]), .C(n3), .Y(N11) );
  XNOR2X4M U6 ( .A(EDGE_CNT[3]), .B(PRESCALE[4]), .Y(n17) );
  XNOR2X4M U7 ( .A(EDGE_CNT[4]), .B(PRESCALE[5]), .Y(n18) );
  INVX2M U8 ( .A(DAT_SAMP_EN), .Y(n28) );
  NAND4X2M U11 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n14) );
  XNOR2X2M U12 ( .A(EDGE_CNT[2]), .B(N8), .Y(n35) );
  XNOR2X2M U13 ( .A(EDGE_CNT[3]), .B(N9), .Y(n34) );
  OR2X2M U14 ( .A(n2), .B(PRESCALE[3]), .Y(n3) );
  NOR3X2M U15 ( .A(n37), .B(n38), .C(n39), .Y(n36) );
  MX2XLM U16 ( .A(samples[1]), .B(RX_IN), .S0(n1), .Y(n21) );
  MX2XLM U17 ( .A(samples[2]), .B(RX_IN), .S0(n5), .Y(n22) );
  OAI2BB1XLM U18 ( .A0N(n2), .A1N(PRESCALE[3]), .B0(n3), .Y(N8) );
  ADDFX2M U19 ( .A(samples[0]), .B(samples[2]), .CI(samples[1]), .CO(
        SAMPLED_BIT) );
  OR2X2M U20 ( .A(PRESCALE[2]), .B(PRESCALE[1]), .Y(n2) );
  ADDHX1M U21 ( .A(PRESCALE[4]), .B(\add_29/carry[3] ), .CO(\add_29/carry[4] ), 
        .S(N17) );
  ADDHX1M U22 ( .A(PRESCALE[2]), .B(PRESCALE[1]), .CO(\add_29/carry[2] ), .S(
        N15) );
  ADDHX1M U23 ( .A(PRESCALE[3]), .B(\add_29/carry[2] ), .CO(\add_29/carry[3] ), 
        .S(N16) );
  ADDHX1M U24 ( .A(PRESCALE[5]), .B(\add_29/carry[4] ), .CO(N19), .S(N18) );
  CLKINVX1M U25 ( .A(PRESCALE[1]), .Y(N6) );
  OAI2BB1X1M U26 ( .A0N(PRESCALE[1]), .A1N(PRESCALE[2]), .B0(n2), .Y(N7) );
  XNOR2X1M U27 ( .A(PRESCALE[4]), .B(n3), .Y(N9) );
  OAI21X1M U28 ( .A0(PRESCALE[4]), .A1(n3), .B0(PRESCALE[5]), .Y(n4) );
  NAND2BX1M U29 ( .AN(N11), .B(n4), .Y(N10) );
  NOR4X1M U30 ( .A(n6), .B(n7), .C(n8), .D(n9), .Y(n5) );
  CLKXOR2X2M U31 ( .A(N15), .B(EDGE_CNT[1]), .Y(n9) );
  CLKXOR2X2M U32 ( .A(N6), .B(EDGE_CNT[0]), .Y(n8) );
  NAND3X1M U33 ( .A(n10), .B(n14), .C(DAT_SAMP_EN), .Y(n7) );
  NAND4BBX1M U34 ( .AN(n15), .BN(n16), .C(n17), .D(n18), .Y(n10) );
  NAND4X1M U35 ( .A(n19), .B(n23), .C(n24), .D(n25), .Y(n6) );
  XNOR2X1M U36 ( .A(EDGE_CNT[2]), .B(N16), .Y(n25) );
  XNOR2X1M U37 ( .A(EDGE_CNT[3]), .B(N17), .Y(n24) );
  XNOR2X1M U38 ( .A(EDGE_CNT[4]), .B(N18), .Y(n23) );
  XNOR2X1M U39 ( .A(EDGE_CNT[5]), .B(N19), .Y(n19) );
  NOR4X1M U40 ( .A(n27), .B(n28), .C(n16), .D(n15), .Y(n26) );
  CLKXOR2X2M U41 ( .A(EDGE_CNT[2]), .B(PRESCALE[3]), .Y(n15) );
  NAND3X1M U42 ( .A(n29), .B(n30), .C(n31), .Y(n16) );
  XNOR2X1M U43 ( .A(EDGE_CNT[0]), .B(PRESCALE[1]), .Y(n31) );
  CLKINVX1M U44 ( .A(EDGE_CNT[5]), .Y(n30) );
  XNOR2X1M U45 ( .A(EDGE_CNT[1]), .B(PRESCALE[2]), .Y(n29) );
  NAND3X1M U46 ( .A(n18), .B(n14), .C(n17), .Y(n27) );
  CLKMX2X2M U47 ( .A(samples[0]), .B(RX_IN), .S0(n32), .Y(n20) );
  NOR2X1M U48 ( .A(n28), .B(n14), .Y(n32) );
  CLKXOR2X2M U49 ( .A(N10), .B(EDGE_CNT[4]), .Y(n39) );
  CLKXOR2X2M U50 ( .A(N7), .B(EDGE_CNT[1]), .Y(n38) );
  CLKXOR2X2M U51 ( .A(N6), .B(EDGE_CNT[0]), .Y(n37) );
  XNOR2X1M U52 ( .A(EDGE_CNT[5]), .B(N11), .Y(n33) );
  DLY1X1M U53 ( .A(test_se), .Y(n42) );
endmodule


module DESERIALIZER_test_1 ( SAMPLED_BIT, DESER_EN, clk, rst, P_DATA, test_si, 
        test_se );
  output [7:0] P_DATA;
  input SAMPLED_BIT, DESER_EN, clk, rst, test_si, test_se;
  wire   n10, n12, n14, n16, n18, n20, n22, n24, n1, n2, n3, n4, n5, n6, n7,
         n8, n25, n26, n27, n28, n31, n32, n33, n34, n35, n36;

  SDFFRQX2M \P_DATA_reg[0]  ( .D(n10), .SI(test_si), .SE(n33), .CK(clk), .RN(
        n3), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[5]  ( .D(n20), .SI(P_DATA[4]), .SE(n32), .CK(clk), 
        .RN(n3), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n12), .SI(P_DATA[0]), .SE(n36), .CK(clk), 
        .RN(n3), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n18), .SI(P_DATA[3]), .SE(n33), .CK(clk), 
        .RN(n3), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[7]  ( .D(n24), .SI(P_DATA[6]), .SE(n32), .CK(clk), 
        .RN(n3), .Q(P_DATA[7]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n16), .SI(P_DATA[2]), .SE(n36), .CK(clk), 
        .RN(n3), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n22), .SI(P_DATA[5]), .SE(n35), .CK(clk), 
        .RN(n3), .Q(P_DATA[6]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n14), .SI(P_DATA[1]), .SE(n34), .CK(clk), 
        .RN(n3), .Q(P_DATA[2]) );
  INVX4M U2 ( .A(DESER_EN), .Y(n5) );
  INVX4M U3 ( .A(n4), .Y(n3) );
  INVX2M U4 ( .A(rst), .Y(n4) );
  OAI22X1M U5 ( .A0(n5), .A1(n27), .B0(n2), .B1(n28), .Y(n12) );
  OAI22X1M U6 ( .A0(n5), .A1(n26), .B0(n2), .B1(n27), .Y(n14) );
  OAI22X1M U7 ( .A0(n5), .A1(n25), .B0(n2), .B1(n26), .Y(n16) );
  OAI22X1M U8 ( .A0(n5), .A1(n8), .B0(n2), .B1(n25), .Y(n18) );
  OAI22X1M U9 ( .A0(n5), .A1(n7), .B0(n2), .B1(n8), .Y(n20) );
  OAI22X1M U10 ( .A0(n5), .A1(n6), .B0(n2), .B1(n7), .Y(n22) );
  OAI2BB2X1M U11 ( .B0(n2), .B1(n6), .A0N(SAMPLED_BIT), .A1N(n2), .Y(n24) );
  INVX4M U12 ( .A(n1), .Y(n2) );
  OAI2BB2X1M U13 ( .B0(n5), .B1(n28), .A0N(P_DATA[0]), .A1N(n5), .Y(n10) );
  INVX2M U14 ( .A(DESER_EN), .Y(n1) );
  INVX2M U15 ( .A(P_DATA[2]), .Y(n27) );
  INVX2M U16 ( .A(P_DATA[6]), .Y(n7) );
  INVX2M U17 ( .A(P_DATA[7]), .Y(n6) );
  INVX2M U26 ( .A(P_DATA[3]), .Y(n26) );
  INVX2M U27 ( .A(P_DATA[1]), .Y(n28) );
  INVX2M U28 ( .A(P_DATA[4]), .Y(n25) );
  INVX2M U29 ( .A(P_DATA[5]), .Y(n8) );
  DLY1X1M U30 ( .A(test_se), .Y(n31) );
  DLY1X1M U31 ( .A(n34), .Y(n32) );
  DLY1X1M U32 ( .A(n35), .Y(n33) );
  DLY1X1M U33 ( .A(n31), .Y(n34) );
  DLY1X1M U34 ( .A(test_se), .Y(n35) );
  DLY1X1M U35 ( .A(n31), .Y(n36) );
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


module EDGE_COUNTER_test_1 ( clk, rst, enable, PRESCALE, bit_cnt, edge_cnt, 
        test_si, test_se );
  input [5:0] PRESCALE;
  output [7:0] bit_cnt;
  output [7:0] edge_cnt;
  input clk, rst, enable, test_si, test_se;
  wire   n92, n70, n71, n72, N5, N9, N10, bit_sig, N16, N17, N18, N19, N20,
         N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N49, N50, N51,
         N52, N53, N54, N55, N56, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n1, n2, n3, n4, n21, n32, n33, n34, n36, n38, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91;

  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n30), .SI(n33), .SE(n81), .CK(clk), .RN(n50), 
        .Q(bit_cnt[1]) );
  SDFFRQX2M \bit_cnt_reg[7]  ( .D(n24), .SI(bit_cnt[6]), .SE(n90), .CK(clk), 
        .RN(n51), .Q(bit_cnt[7]) );
  SDFFRQX2M \bit_cnt_reg[6]  ( .D(n25), .SI(bit_cnt[5]), .SE(n88), .CK(clk), 
        .RN(n51), .Q(bit_cnt[6]) );
  SDFFRQX2M \bit_cnt_reg[5]  ( .D(n26), .SI(bit_cnt[4]), .SE(n87), .CK(clk), 
        .RN(n51), .Q(bit_cnt[5]) );
  SDFFRQX2M \bit_cnt_reg[4]  ( .D(n27), .SI(n76), .SE(n91), .CK(clk), .RN(n51), 
        .Q(bit_cnt[4]) );
  SDFFRQX2M \bit_cnt_reg[2]  ( .D(n29), .SI(bit_cnt[1]), .SE(n89), .CK(clk), 
        .RN(n50), .Q(bit_cnt[2]) );
  SDFFRQX2M \bit_cnt_reg[3]  ( .D(n28), .SI(bit_cnt[2]), .SE(n86), .CK(clk), 
        .RN(n50), .Q(n92) );
  SDFFRQX1M \edge_cnt_reg[0]  ( .D(N49), .SI(bit_cnt[7]), .SE(n82), .CK(clk), 
        .RN(n50), .Q(n72) );
  SDFFRQX1M \edge_cnt_reg[4]  ( .D(N53), .SI(edge_cnt[3]), .SE(n81), .CK(clk), 
        .RN(n50), .Q(n70) );
  SDFFRQX1M \edge_cnt_reg[1]  ( .D(N50), .SI(edge_cnt[0]), .SE(n80), .CK(clk), 
        .RN(n50), .Q(n71) );
  SDFFRQX4M \edge_cnt_reg[2]  ( .D(N51), .SI(n71), .SE(n86), .CK(clk), .RN(n50), .Q(edge_cnt[2]) );
  SDFFRQX4M \edge_cnt_reg[3]  ( .D(N52), .SI(edge_cnt[2]), .SE(n90), .CK(clk), 
        .RN(n50), .Q(edge_cnt[3]) );
  SDFFRQX4M \edge_cnt_reg[5]  ( .D(N54), .SI(n70), .SE(n87), .CK(clk), .RN(n50), .Q(edge_cnt[5]) );
  SDFFRQX4M \edge_cnt_reg[6]  ( .D(N55), .SI(edge_cnt[5]), .SE(n82), .CK(clk), 
        .RN(n50), .Q(edge_cnt[6]) );
  SDFFRQX2M \edge_cnt_reg[7]  ( .D(N56), .SI(edge_cnt[6]), .SE(n80), .CK(clk), 
        .RN(n50), .Q(edge_cnt[7]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n31), .SI(test_si), .SE(n91), .CK(clk), .RN(
        n50), .Q(bit_cnt[0]) );
  AOI21BX2M U7 ( .A0(n55), .A1(PRESCALE[4]), .B0N(n56), .Y(n1) );
  AOI21BX2M U8 ( .A0(n54), .A1(PRESCALE[3]), .B0N(n55), .Y(n2) );
  AOI21BX2M U21 ( .A0(n53), .A1(PRESCALE[2]), .B0N(n54), .Y(n3) );
  AOI222X2M U22 ( .A0(edge_cnt[4]), .A1(n1), .B0(edge_cnt[2]), .B1(n3), .C0(
        edge_cnt[3]), .C1(n2), .Y(n58) );
  OAI32X2M U23 ( .A0(edge_cnt[6]), .A1(n21), .A2(n60), .B0(n60), .B1(n68), .Y(
        n67) );
  CLKINVX1M U24 ( .A(edge_cnt[7]), .Y(n4) );
  CLKINVX2M U25 ( .A(n4), .Y(n21) );
  CLKINVX1M U26 ( .A(bit_cnt[0]), .Y(n32) );
  CLKINVX2M U27 ( .A(n32), .Y(n33) );
  CLKINVX1M U28 ( .A(n71), .Y(n34) );
  INVX4M U29 ( .A(n34), .Y(edge_cnt[1]) );
  CLKINVX1M U30 ( .A(n70), .Y(n36) );
  INVX4M U31 ( .A(n36), .Y(edge_cnt[4]) );
  OA22XLM U32 ( .A0(n2), .A1(edge_cnt[3]), .B0(n1), .B1(edge_cnt[4]), .Y(n62)
         );
  CLKINVX1M U33 ( .A(n72), .Y(n38) );
  INVX4M U34 ( .A(n38), .Y(edge_cnt[0]) );
  OAI2B11X2M U44 ( .A1N(edge_cnt[5]), .A0(N9), .B0(n59), .C0(n58), .Y(n60) );
  AO21X2M U45 ( .A0(n56), .A1(PRESCALE[5]), .B0(N10), .Y(N9) );
  NOR3BX2M U46 ( .AN(n67), .B(n66), .C(n65), .Y(bit_sig) );
  NOR2X2M U47 ( .A(PRESCALE[0]), .B(edge_cnt[0]), .Y(n61) );
  NOR2X2M U48 ( .A(n56), .B(PRESCALE[5]), .Y(N10) );
  OR2X2M U49 ( .A(n55), .B(PRESCALE[4]), .Y(n56) );
  OR2X2M U50 ( .A(n53), .B(PRESCALE[2]), .Y(n54) );
  OR2X2M U51 ( .A(n54), .B(PRESCALE[3]), .Y(n55) );
  INVX6M U52 ( .A(n52), .Y(n50) );
  INVX2M U53 ( .A(n52), .Y(n51) );
  INVX2M U54 ( .A(rst), .Y(n52) );
  CLKAND2X4M U55 ( .A(enable), .B(n69), .Y(n23) );
  INVX2M U56 ( .A(n49), .Y(n69) );
  AND2X2M U57 ( .A(N25), .B(n49), .Y(N50) );
  AND2X2M U58 ( .A(N26), .B(n49), .Y(N51) );
  AND2X2M U59 ( .A(N27), .B(n49), .Y(N52) );
  AND2X2M U60 ( .A(N28), .B(n49), .Y(N53) );
  AND2X2M U61 ( .A(N29), .B(n49), .Y(N54) );
  AND2X2M U62 ( .A(N30), .B(n49), .Y(N55) );
  CLKINVX1M U63 ( .A(N10), .Y(n68) );
  OR2X2M U64 ( .A(PRESCALE[1]), .B(PRESCALE[0]), .Y(n53) );
  BUFX10M U65 ( .A(n22), .Y(n49) );
  NOR2BX1M U66 ( .AN(enable), .B(bit_sig), .Y(n22) );
  AO22X1M U67 ( .A0(n33), .A1(n49), .B0(N16), .B1(n23), .Y(n31) );
  AO22X1M U68 ( .A0(n77), .A1(n49), .B0(N19), .B1(n23), .Y(n28) );
  AO22X1M U69 ( .A0(bit_cnt[2]), .A1(n49), .B0(N18), .B1(n23), .Y(n29) );
  AO22X1M U70 ( .A0(bit_cnt[4]), .A1(n49), .B0(N20), .B1(n23), .Y(n27) );
  AO22X1M U71 ( .A0(bit_cnt[7]), .A1(n49), .B0(N23), .B1(n23), .Y(n24) );
  AO22X1M U72 ( .A0(bit_cnt[6]), .A1(n49), .B0(N22), .B1(n23), .Y(n25) );
  AO22X1M U73 ( .A0(bit_cnt[5]), .A1(n49), .B0(N21), .B1(n23), .Y(n26) );
  AO22X1M U74 ( .A0(bit_cnt[1]), .A1(n49), .B0(N17), .B1(n23), .Y(n30) );
  AND2X2M U75 ( .A(N24), .B(n49), .Y(N49) );
  AND2X2M U76 ( .A(N31), .B(n49), .Y(N56) );
  OAI2BB1X1M U77 ( .A0N(PRESCALE[0]), .A1N(PRESCALE[1]), .B0(n53), .Y(N5) );
  AND2X1M U78 ( .A(n72), .B(PRESCALE[0]), .Y(n57) );
  OAI2B2X1M U79 ( .A1N(N5), .A0(n57), .B0(edge_cnt[1]), .B1(n57), .Y(n59) );
  OAI2B2X1M U80 ( .A1N(edge_cnt[1]), .A0(n61), .B0(N5), .B1(n61), .Y(n63) );
  OAI211X1M U81 ( .A0(edge_cnt[2]), .A1(n3), .B0(n63), .C0(n62), .Y(n66) );
  AND2X1M U82 ( .A(edge_cnt[6]), .B(n21), .Y(n64) );
  OAI2B2X1M U83 ( .A1N(N9), .A0(edge_cnt[5]), .B0(n64), .B1(n68), .Y(n65) );
  DLY1X1M U84 ( .A(n92), .Y(bit_cnt[3]) );
  DLY1X1M U85 ( .A(n92), .Y(n76) );
  DLY1X1M U86 ( .A(n92), .Y(n77) );
  DLY1X1M U87 ( .A(n83), .Y(n78) );
  DLY1X1M U88 ( .A(test_se), .Y(n79) );
  DLY1X1M U89 ( .A(n88), .Y(n80) );
  DLY1X1M U90 ( .A(n89), .Y(n81) );
  DLY1X1M U91 ( .A(n78), .Y(n82) );
  DLY1X1M U92 ( .A(n79), .Y(n83) );
  DLY1X1M U93 ( .A(n79), .Y(n84) );
  DLY1X1M U94 ( .A(test_se), .Y(n85) );
  DLY1X1M U95 ( .A(n83), .Y(n86) );
  DLY1X1M U96 ( .A(n85), .Y(n87) );
  DLY1X1M U97 ( .A(n85), .Y(n88) );
  DLY1X1M U98 ( .A(n84), .Y(n89) );
  DLY1X1M U99 ( .A(n78), .Y(n90) );
  DLY1X1M U100 ( .A(n84), .Y(n91) );
  EDGE_COUNTER_DW01_inc_0 add_24 ( .A({n21, edge_cnt[6:0]}), .SUM({N31, N30, 
        N29, N28, N27, N26, N25, N24}) );
  EDGE_COUNTER_DW01_inc_1 add_21 ( .A({bit_cnt[7:4], n76, bit_cnt[2:1], n33}), 
        .SUM({N23, N22, N21, N20, N19, N18, N17, N16}) );
endmodule


module PARITY_CHECKER_test_1 ( clk, rst, strt_chk_en, P_DATA, SAMPLED_BIT, 
        par_chk_en, PAR_TYP, PAR_ERR, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input clk, rst, strt_chk_en, SAMPLED_BIT, par_chk_en, PAR_TYP, test_si,
         test_se;
  output PAR_ERR, test_so;
  wire   err_ff, n3, n4, n5, n6, n7, n8, n9, n2;
  assign test_so = err_ff;

  SDFFRQX2M err_ff_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(clk), .RN(rst), .Q(err_ff) );
  OAI2BB2X2M U4 ( .B0(n3), .B1(n2), .A0N(err_ff), .A1N(n2), .Y(PAR_ERR) );
  NOR2BX2M U5 ( .AN(PAR_ERR), .B(strt_chk_en), .Y(n9) );
  XOR3XLM U6 ( .A(n4), .B(n5), .C(n6), .Y(n3) );
  INVX2M U7 ( .A(par_chk_en), .Y(n2) );
  XOR3XLM U8 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n7), .Y(n5) );
  XNOR2X1M U9 ( .A(SAMPLED_BIT), .B(PAR_TYP), .Y(n6) );
  XNOR2X2M U10 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n7) );
  XOR3XLM U11 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n8), .Y(n4) );
  XNOR2X2M U12 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n8) );
endmodule


module START_CHECKER ( SAMPLED_START_BIT, STRT_CHECK_EN, STRT_GLITCH );
  input SAMPLED_START_BIT, STRT_CHECK_EN;
  output STRT_GLITCH;


  AND2X1M U2 ( .A(STRT_CHECK_EN), .B(SAMPLED_START_BIT), .Y(STRT_GLITCH) );
endmodule


module STOP_CHECKER_test_1 ( clk, rst, strt_chk_en, SAMPLED_STOP_BIT, 
        STOP_CHECK_EN, STOP_ERR, test_si, test_so, test_se );
  input clk, rst, strt_chk_en, SAMPLED_STOP_BIT, STOP_CHECK_EN, test_si,
         test_se;
  output STOP_ERR, test_so;
  wire   err_ff, n3, n2;
  assign test_so = err_ff;

  SDFFRQX2M err_ff_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(clk), .RN(rst), .Q(err_ff) );
  NOR2BX1M U4 ( .AN(STOP_ERR), .B(strt_chk_en), .Y(n3) );
  OAI2BB2X2M U5 ( .B0(SAMPLED_STOP_BIT), .B1(n2), .A0N(err_ff), .A1N(n2), .Y(
        STOP_ERR) );
  INVX2M U6 ( .A(STOP_CHECK_EN), .Y(n2) );
endmodule


module RX_FSM_test_1 ( RX_IN, clk, rst, bit_cnt, edge_cnt, par_err, 
        strt_glitch, stp_err, PAR_EN, PRESCALE, par_chk_en, strt_chk_en, 
        stp_chk_en, enable, data_valid, deser_en, dat_samp_en, test_si, 
        test_so, test_se );
  input [7:0] bit_cnt;
  input [7:0] edge_cnt;
  input [5:0] PRESCALE;
  input RX_IN, clk, rst, par_err, strt_glitch, stp_err, PAR_EN, test_si,
         test_se;
  output par_chk_en, strt_chk_en, stp_chk_en, enable, data_valid, deser_en,
         dat_samp_en, test_so;
  wire   N35, N39, N40, N41, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n1, n2, n3, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n56;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = current_state[2];

  NOR4BX4M U27 ( .AN(n32), .B(bit_cnt[0]), .C(n52), .D(n51), .Y(n22) );
  NOR3X12M U34 ( .A(current_state[0]), .B(current_state[2]), .C(n48), .Y(n21)
         );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(n56), .CK(clk), .RN(n9), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(n56), 
        .CK(clk), .RN(n9), .Q(current_state[0]) );
  SDFFRQX4M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(clk), .RN(n9), .Q(current_state[2]) );
  OAI32X2M U5 ( .A0(n34), .A1(n51), .A2(n52), .B0(PAR_EN), .B1(n49), .Y(n19)
         );
  AOI21BX2M U6 ( .A0(n12), .A1(PRESCALE[4]), .B0N(n13), .Y(n1) );
  AOI21BX2M U8 ( .A0(n11), .A1(PRESCALE[3]), .B0N(n12), .Y(n2) );
  AOI21BX2M U9 ( .A0(n10), .A1(PRESCALE[2]), .B0N(n11), .Y(n3) );
  AOI222X2M U10 ( .A0(edge_cnt[4]), .A1(n1), .B0(edge_cnt[2]), .B1(n3), .C0(
        edge_cnt[3]), .C1(n2), .Y(n15) );
  OAI32X2M U11 ( .A0(edge_cnt[6]), .A1(edge_cnt[7]), .A2(n36), .B0(n36), .B1(
        n44), .Y(n43) );
  OAI2B11X2M U12 ( .A1N(edge_cnt[5]), .A0(N39), .B0(n16), .C0(n15), .Y(n36) );
  AO21X2M U13 ( .A0(n13), .A1(PRESCALE[5]), .B0(N40), .Y(N39) );
  OA22XLM U14 ( .A0(n2), .A1(edge_cnt[3]), .B0(n1), .B1(edge_cnt[4]), .Y(n38)
         );
  NOR2X2M U16 ( .A(PRESCALE[0]), .B(edge_cnt[0]), .Y(n37) );
  NOR3BX2M U17 ( .AN(n43), .B(n42), .C(n41), .Y(N41) );
  BUFX2M U18 ( .A(n19), .Y(n8) );
  NOR2X2M U19 ( .A(n13), .B(PRESCALE[5]), .Y(N40) );
  OR2X2M U20 ( .A(n12), .B(PRESCALE[4]), .Y(n13) );
  OR2X2M U21 ( .A(n10), .B(PRESCALE[2]), .Y(n11) );
  OR2X2M U22 ( .A(n11), .B(PRESCALE[3]), .Y(n12) );
  NOR2BX4M U23 ( .AN(n25), .B(n26), .Y(strt_chk_en) );
  NOR3X6M U24 ( .A(current_state[1]), .B(current_state[2]), .C(n47), .Y(n25)
         );
  NOR3X6M U25 ( .A(n47), .B(current_state[2]), .C(n48), .Y(n27) );
  NOR2X2M U26 ( .A(n46), .B(n49), .Y(par_chk_en) );
  BUFX2M U28 ( .A(rst), .Y(n9) );
  CLKINVX1M U29 ( .A(N40), .Y(n44) );
  NAND2BX2M U30 ( .AN(n18), .B(n8), .Y(n17) );
  OAI21X2M U31 ( .A0(n18), .A1(n8), .B0(n33), .Y(enable) );
  INVX2M U32 ( .A(n22), .Y(n49) );
  NOR3X4M U33 ( .A(n27), .B(n25), .C(n21), .Y(n33) );
  NAND2X2M U35 ( .A(n33), .B(n18), .Y(dat_samp_en) );
  INVX2M U36 ( .A(n27), .Y(n46) );
  NAND2X2M U37 ( .A(n31), .B(n52), .Y(n26) );
  INVX2M U38 ( .A(n24), .Y(n50) );
  OR2X2M U39 ( .A(PRESCALE[1]), .B(PRESCALE[0]), .Y(n10) );
  AND2X1M U40 ( .A(N41), .B(n21), .Y(deser_en) );
  NAND3X2M U41 ( .A(bit_cnt[0]), .B(n32), .C(PAR_EN), .Y(n34) );
  NOR3X6M U42 ( .A(bit_cnt[4]), .B(bit_cnt[2]), .C(n35), .Y(n32) );
  OR3X2M U43 ( .A(bit_cnt[7]), .B(bit_cnt[6]), .C(bit_cnt[5]), .Y(n35) );
  AOI211X2M U44 ( .A0(par_err), .A1(PAR_EN), .B0(n17), .C0(stp_err), .Y(
        data_valid) );
  INVX2M U45 ( .A(n17), .Y(stp_chk_en) );
  INVX2M U46 ( .A(bit_cnt[3]), .Y(n52) );
  OAI2B11X2M U47 ( .A1N(n28), .A0(RX_IN), .B0(n29), .C0(n30), .Y(next_state[0]) );
  NAND3X2M U48 ( .A(n50), .B(PAR_EN), .C(n21), .Y(n29) );
  AOI22X1M U49 ( .A0(n25), .A1(n26), .B0(n27), .B1(n49), .Y(n30) );
  OAI31X2M U50 ( .A0(current_state[1]), .A1(current_state[2]), .A2(
        current_state[0]), .B0(n17), .Y(n28) );
  OAI21X1M U51 ( .A0(n18), .A1(n8), .B0(n20), .Y(next_state[2]) );
  AOI31X2M U52 ( .A0(n50), .A1(n53), .A2(n21), .B0(par_chk_en), .Y(n20) );
  INVX2M U53 ( .A(PAR_EN), .Y(n53) );
  INVX2M U54 ( .A(current_state[1]), .Y(n48) );
  INVX2M U55 ( .A(current_state[0]), .Y(n47) );
  INVX2M U56 ( .A(bit_cnt[1]), .Y(n51) );
  OAI221X1M U57 ( .A0(n22), .A1(n46), .B0(strt_glitch), .B1(n45), .C0(n23), 
        .Y(next_state[1]) );
  OAI21X2M U58 ( .A0(PAR_EN), .A1(n24), .B0(n21), .Y(n23) );
  INVX2M U59 ( .A(strt_chk_en), .Y(n45) );
  NAND3X4M U60 ( .A(n47), .B(n48), .C(current_state[2]), .Y(n18) );
  AND3X2M U61 ( .A(n32), .B(n51), .C(bit_cnt[0]), .Y(n31) );
  NAND2X2M U62 ( .A(bit_cnt[3]), .B(n31), .Y(n24) );
  OAI2BB1X1M U63 ( .A0N(PRESCALE[0]), .A1N(PRESCALE[1]), .B0(n10), .Y(N35) );
  AND2X1M U64 ( .A(edge_cnt[0]), .B(PRESCALE[0]), .Y(n14) );
  OAI2B2X1M U65 ( .A1N(N35), .A0(n14), .B0(edge_cnt[1]), .B1(n14), .Y(n16) );
  OAI2B2X1M U66 ( .A1N(edge_cnt[1]), .A0(n37), .B0(N35), .B1(n37), .Y(n39) );
  OAI211X1M U67 ( .A0(edge_cnt[2]), .A1(n3), .B0(n39), .C0(n38), .Y(n42) );
  AND2X1M U68 ( .A(edge_cnt[6]), .B(edge_cnt[7]), .Y(n40) );
  OAI2B2X1M U69 ( .A1N(N39), .A0(edge_cnt[5]), .B0(n40), .B1(n44), .Y(n41) );
  DLY1X1M U70 ( .A(test_se), .Y(n56) );
endmodule


module UART_RX_TOP_test_1 ( clk, rst, PRESCALE, RX_IN, PAR_EN, PAR_TYP, P_DATA, 
        data_valid, par_err, stp_err, test_si, test_so, test_se );
  input [5:0] PRESCALE;
  output [7:0] P_DATA;
  input clk, rst, RX_IN, PAR_EN, PAR_TYP, test_si, test_se;
  output data_valid, par_err, stp_err, test_so;
  wire   dat_samp_en, sampled_bit, deser_en, enable, strt_chk_en, par_chk_en,
         strt_glitch, stp_chk_en, n1, n2, n5, n6, n7, n9, n10, n11, n12, n13,
         n14, n15, n16;
  wire   [7:0] edge_cnt;
  wire   [7:0] bit_cnt;

  INVX4M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
  DLY1X1M U3 ( .A(test_se), .Y(n9) );
  DLY1X1M U4 ( .A(test_se), .Y(n10) );
  DLY1X1M U5 ( .A(n9), .Y(n11) );
  DLY1X1M U6 ( .A(n10), .Y(n12) );
  DLY1X1M U7 ( .A(n14), .Y(n13) );
  DLY1X1M U8 ( .A(n10), .Y(n14) );
  DLY1X1M U9 ( .A(n11), .Y(n15) );
  DLY1X1M U10 ( .A(n9), .Y(n16) );
  DATA_SAMPLING_OVERSAMPLE3_test_1 u_DATA_SAMPLING ( .RX_IN(RX_IN), 
        .DAT_SAMP_EN(dat_samp_en), .PRESCALE(PRESCALE), .EDGE_CNT(
        edge_cnt[5:0]), .clk(clk), .rst(n1), .SAMPLED_BIT(sampled_bit), 
        .test_si(test_si), .test_so(n7), .test_se(n12) );
  DESERIALIZER_test_1 u_DESERIALIZER ( .SAMPLED_BIT(sampled_bit), .DESER_EN(
        deser_en), .clk(clk), .rst(n1), .P_DATA(P_DATA), .test_si(n7), 
        .test_se(n16) );
  EDGE_COUNTER_test_1 u_EDGE_COUNTER ( .clk(clk), .rst(n1), .enable(enable), 
        .PRESCALE(PRESCALE), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .test_si(
        P_DATA[7]), .test_se(n13) );
  PARITY_CHECKER_test_1 u_PARITY_CHECKER ( .clk(clk), .rst(n1), .strt_chk_en(
        strt_chk_en), .P_DATA(P_DATA), .SAMPLED_BIT(sampled_bit), .par_chk_en(
        par_chk_en), .PAR_TYP(PAR_TYP), .PAR_ERR(par_err), .test_si(
        edge_cnt[7]), .test_so(n6), .test_se(n14) );
  START_CHECKER u_START_CHECKER ( .SAMPLED_START_BIT(sampled_bit), 
        .STRT_CHECK_EN(strt_chk_en), .STRT_GLITCH(strt_glitch) );
  STOP_CHECKER_test_1 u_STOP_CHECKER ( .clk(clk), .rst(n1), .strt_chk_en(
        strt_chk_en), .SAMPLED_STOP_BIT(sampled_bit), .STOP_CHECK_EN(
        stp_chk_en), .STOP_ERR(stp_err), .test_si(n5), .test_so(test_so), 
        .test_se(n11) );
  RX_FSM_test_1 u_RX_FSM ( .RX_IN(RX_IN), .clk(clk), .rst(n1), .bit_cnt(
        bit_cnt), .edge_cnt(edge_cnt), .par_err(par_err), .strt_glitch(
        strt_glitch), .stp_err(stp_err), .PAR_EN(PAR_EN), .PRESCALE(PRESCALE), 
        .par_chk_en(par_chk_en), .strt_chk_en(strt_chk_en), .stp_chk_en(
        stp_chk_en), .enable(enable), .data_valid(data_valid), .deser_en(
        deser_en), .dat_samp_en(dat_samp_en), .test_si(n6), .test_so(n5), 
        .test_se(n15) );
endmodule


module DATA_SYNC_STAGES2_BUS_WIDTH8_test_1 ( CLK, RST, UNSYNC_BUS, bus_enable, 
        sync_bus, enable_pulse, test_si, test_se );
  input [7:0] UNSYNC_BUS;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable, test_si, test_se;
  output enable_pulse;
  wire   en_out_del, n1, n4, n6, n8, n10, n12, n14, n16, n18, n24, n25, n26,
         n27, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [1:0] shift_reg;

  SDFFRQX2M en_out_del_reg ( .D(shift_reg[1]), .SI(test_si), .SE(n37), .CK(CLK), .RN(n25), .Q(en_out_del) );
  SDFFRQX2M \shift_reg_reg[1]  ( .D(shift_reg[0]), .SI(shift_reg[0]), .SE(n36), 
        .CK(CLK), .RN(n25), .Q(shift_reg[1]) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n18), .SI(sync_bus[6]), .SE(n33), .CK(CLK), 
        .RN(n25), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(n32), .CK(CLK), 
        .RN(n25), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n16), .SI(sync_bus[5]), .SE(n33), .CK(CLK), 
        .RN(n25), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(n32), .CK(CLK), 
        .RN(n25), .Q(sync_bus[1]) );
  SDFFRQX2M enable_pulse_reg ( .D(n27), .SI(en_out_del), .SE(n39), .CK(CLK), 
        .RN(n25), .Q(enable_pulse) );
  SDFFRQX2M \shift_reg_reg[0]  ( .D(bus_enable), .SI(enable_pulse), .SE(n38), 
        .CK(CLK), .RN(n25), .Q(shift_reg[0]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n10), .SI(n41), .SE(n39), .CK(CLK), .RN(n25), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(n38), .CK(CLK), 
        .RN(n25), .Q(sync_bus[2]) );
  SDFFRQX4M \sync_bus_reg[4]  ( .D(n12), .SI(n40), .SE(n37), .CK(CLK), .RN(n25), .Q(sync_bus[4]) );
  SDFFRQX4M \sync_bus_reg[0]  ( .D(n4), .SI(shift_reg[1]), .SE(n36), .CK(CLK), 
        .RN(n25), .Q(sync_bus[0]) );
  INVX4M U5 ( .A(n1), .Y(n27) );
  BUFX4M U6 ( .A(n1), .Y(n24) );
  INVX6M U7 ( .A(n26), .Y(n25) );
  INVX2M U8 ( .A(RST), .Y(n26) );
  NAND2BX2M U9 ( .AN(en_out_del), .B(shift_reg[1]), .Y(n1) );
  AO22X1M U10 ( .A0(UNSYNC_BUS[0]), .A1(n27), .B0(sync_bus[0]), .B1(n24), .Y(
        n4) );
  AO22X1M U11 ( .A0(UNSYNC_BUS[4]), .A1(n27), .B0(sync_bus[4]), .B1(n24), .Y(
        n12) );
  AO22X1M U12 ( .A0(UNSYNC_BUS[2]), .A1(n27), .B0(n41), .B1(n24), .Y(n8) );
  AO22X1M U25 ( .A0(UNSYNC_BUS[3]), .A1(n27), .B0(n40), .B1(n24), .Y(n10) );
  AO22X1M U26 ( .A0(UNSYNC_BUS[6]), .A1(n27), .B0(sync_bus[6]), .B1(n24), .Y(
        n16) );
  AO22X1M U27 ( .A0(UNSYNC_BUS[5]), .A1(n27), .B0(sync_bus[5]), .B1(n24), .Y(
        n14) );
  AO22X1M U28 ( .A0(UNSYNC_BUS[1]), .A1(n27), .B0(sync_bus[1]), .B1(n24), .Y(
        n6) );
  AO22X1M U29 ( .A0(UNSYNC_BUS[7]), .A1(n27), .B0(sync_bus[7]), .B1(n24), .Y(
        n18) );
  DLY1X1M U30 ( .A(n34), .Y(n30) );
  DLY1X1M U31 ( .A(n35), .Y(n31) );
  DLY1X1M U32 ( .A(n35), .Y(n32) );
  DLY1X1M U33 ( .A(n34), .Y(n33) );
  DLY1X1M U34 ( .A(test_se), .Y(n34) );
  DLY1X1M U35 ( .A(test_se), .Y(n35) );
  DLY1X1M U36 ( .A(n31), .Y(n36) );
  DLY1X1M U37 ( .A(n30), .Y(n37) );
  DLY1X1M U38 ( .A(n31), .Y(n38) );
  DLY1X1M U39 ( .A(n30), .Y(n39) );
  DLY1X1M U40 ( .A(sync_bus[3]), .Y(n40) );
  DLY1X1M U41 ( .A(sync_bus[2]), .Y(n41) );
endmodule


module RESET_SYNC_STAGES2_test_1 ( clk, async_rst_n, sync_rst_n, test_si, 
        test_se );
  input clk, async_rst_n, test_si, test_se;
  output sync_rst_n;
  wire   \shift_reg[0] , n7;

  SDFFRQX2M \shift_reg_reg[1]  ( .D(\shift_reg[0] ), .SI(\shift_reg[0] ), .SE(
        n7), .CK(clk), .RN(async_rst_n), .Q(sync_rst_n) );
  SDFFRQX2M \shift_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(n7), .CK(clk), 
        .RN(async_rst_n), .Q(\shift_reg[0] ) );
  DLY1X1M U5 ( .A(test_se), .Y(n7) );
endmodule


module RESET_SYNC_STAGES2_test_0 ( clk, async_rst_n, sync_rst_n, test_si, 
        test_se );
  input clk, async_rst_n, test_si, test_se;
  output sync_rst_n;
  wire   \shift_reg[0] , n7;

  SDFFRQX2M \shift_reg_reg[1]  ( .D(\shift_reg[0] ), .SI(\shift_reg[0] ), .SE(
        n7), .CK(clk), .RN(async_rst_n), .Q(sync_rst_n) );
  SDFFRQX2M \shift_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(n7), .CK(clk), 
        .RN(async_rst_n), .Q(\shift_reg[0] ) );
  DLY1X1M U5 ( .A(test_se), .Y(n7) );
endmodule


module FIFO_WR_ADDR8_test_1 ( wclk, wrst_n, winc, wq2_rptr_bin, wptr_bin, 
        waddr, wfull, test_si, test_se );
  input [3:0] wq2_rptr_bin;
  output [3:0] wptr_bin;
  output [2:0] waddr;
  input wclk, wrst_n, winc, test_si, test_se;
  output wfull;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n25,
         n28, n29, n30, n31, n32, n33, n34;

  SDFFRQX2M \wptr_bin_reg[3]  ( .D(n15), .SI(waddr[2]), .SE(n33), .CK(wclk), 
        .RN(n25), .Q(wptr_bin[3]) );
  SDFFRQX4M \wptr_bin_reg[1]  ( .D(n17), .SI(waddr[0]), .SE(n34), .CK(wclk), 
        .RN(n25), .Q(waddr[1]) );
  SDFFRQX4M \wptr_bin_reg[2]  ( .D(n16), .SI(waddr[1]), .SE(n33), .CK(wclk), 
        .RN(n25), .Q(waddr[2]) );
  SDFFRQX4M \wptr_bin_reg[0]  ( .D(n18), .SI(test_si), .SE(n34), .CK(wclk), 
        .RN(n25), .Q(waddr[0]) );
  INVX2M U7 ( .A(waddr[0]), .Y(n5) );
  INVX2M U11 ( .A(n6), .Y(wfull) );
  NAND2X2M U12 ( .A(winc), .B(n6), .Y(n10) );
  BUFX2M U13 ( .A(wrst_n), .Y(n25) );
  CLKXOR2X2M U14 ( .A(n5), .B(wq2_rptr_bin[0]), .Y(n12) );
  NOR2X2M U15 ( .A(n10), .B(n5), .Y(n9) );
  XNOR2X2M U16 ( .A(n31), .B(n7), .Y(n15) );
  NAND2BX2M U17 ( .AN(n8), .B(waddr[2]), .Y(n7) );
  XNOR2X2M U18 ( .A(waddr[2]), .B(n8), .Y(n16) );
  NAND4X2M U19 ( .A(n11), .B(n12), .C(n13), .D(n14), .Y(n6) );
  CLKXOR2X2M U20 ( .A(wq2_rptr_bin[3]), .B(n29), .Y(n14) );
  XNOR2X2M U21 ( .A(waddr[2]), .B(wq2_rptr_bin[2]), .Y(n13) );
  XNOR2X2M U22 ( .A(wptr_bin[1]), .B(wq2_rptr_bin[1]), .Y(n11) );
  NAND2X2M U23 ( .A(n9), .B(waddr[1]), .Y(n8) );
  CLKXOR2X2M U24 ( .A(n9), .B(waddr[1]), .Y(n17) );
  CLKXOR2X2M U25 ( .A(n5), .B(n10), .Y(n18) );
  BUFX2M U26 ( .A(waddr[2]), .Y(wptr_bin[2]) );
  BUFX2M U27 ( .A(waddr[1]), .Y(wptr_bin[1]) );
  BUFX2M U28 ( .A(waddr[0]), .Y(wptr_bin[0]) );
  DLY1X1M U29 ( .A(n30), .Y(n28) );
  INVXLM U30 ( .A(n28), .Y(n29) );
  INVXLM U31 ( .A(wptr_bin[3]), .Y(n30) );
  INVXLM U32 ( .A(n28), .Y(n31) );
  DLY1X1M U33 ( .A(test_se), .Y(n32) );
  DLY1X1M U34 ( .A(n32), .Y(n33) );
  DLY1X1M U35 ( .A(n32), .Y(n34) );
endmodule


module B2G_DATA_WIDTH4_0 ( BIN_DATA, GRAY_DATA );
  input [3:0] BIN_DATA;
  output [3:0] GRAY_DATA;


  CLKXOR2X2M U1 ( .A(BIN_DATA[2]), .B(BIN_DATA[1]), .Y(GRAY_DATA[1]) );
  CLKXOR2X2M U2 ( .A(BIN_DATA[3]), .B(BIN_DATA[2]), .Y(GRAY_DATA[2]) );
  CLKXOR2X2M U3 ( .A(BIN_DATA[1]), .B(BIN_DATA[0]), .Y(GRAY_DATA[0]) );
  BUFX2M U4 ( .A(BIN_DATA[3]), .Y(GRAY_DATA[3]) );
endmodule


module DFFS_STAGES2_DATA_WIDTH4_test_0 ( clk, rst, DATA_IN, DATA_OUT, test_se
 );
  input [3:0] DATA_IN;
  output [3:0] DATA_OUT;
  input clk, rst, test_se;
  wire   \shift_reg[3][0] , \shift_reg[2][0] , \shift_reg[1][0] ,
         \shift_reg[0][0] , n9, n10, n12, n13, n14, n15, n16, n17, n18;

  SDFFRQX2M \shift_reg_reg[2][1]  ( .D(\shift_reg[2][0] ), .SI(
        \shift_reg[2][0] ), .SE(n14), .CK(clk), .RN(n9), .Q(DATA_OUT[2]) );
  SDFFRQX2M \shift_reg_reg[0][1]  ( .D(\shift_reg[0][0] ), .SI(
        \shift_reg[0][0] ), .SE(n13), .CK(clk), .RN(n9), .Q(DATA_OUT[0]) );
  SDFFRQX2M \shift_reg_reg[1][1]  ( .D(\shift_reg[1][0] ), .SI(
        \shift_reg[1][0] ), .SE(n18), .CK(clk), .RN(n9), .Q(DATA_OUT[1]) );
  SDFFRQX2M \shift_reg_reg[3][1]  ( .D(\shift_reg[3][0] ), .SI(
        \shift_reg[3][0] ), .SE(n14), .CK(clk), .RN(n9), .Q(DATA_OUT[3]) );
  SDFFRQX2M \shift_reg_reg[3][0]  ( .D(DATA_IN[3]), .SI(DATA_OUT[2]), .SE(n13), 
        .CK(clk), .RN(n9), .Q(\shift_reg[3][0] ) );
  SDFFRQX2M \shift_reg_reg[2][0]  ( .D(DATA_IN[2]), .SI(DATA_OUT[1]), .SE(n18), 
        .CK(clk), .RN(n9), .Q(\shift_reg[2][0] ) );
  SDFFRQX2M \shift_reg_reg[1][0]  ( .D(DATA_IN[1]), .SI(DATA_OUT[0]), .SE(n17), 
        .CK(clk), .RN(n9), .Q(\shift_reg[1][0] ) );
  SDFFRQX2M \shift_reg_reg[0][0]  ( .D(DATA_IN[0]), .SI(DATA_IN[3]), .SE(n16), 
        .CK(clk), .RN(n9), .Q(\shift_reg[0][0] ) );
  INVX4M U11 ( .A(n10), .Y(n9) );
  INVX2M U12 ( .A(rst), .Y(n10) );
  DLY1X1M U13 ( .A(n15), .Y(n12) );
  DLY1X1M U14 ( .A(n16), .Y(n13) );
  DLY1X1M U15 ( .A(n17), .Y(n14) );
  DLY1X1M U16 ( .A(test_se), .Y(n15) );
  DLY1X1M U17 ( .A(n15), .Y(n16) );
  DLY1X1M U18 ( .A(n12), .Y(n17) );
  DLY1X1M U19 ( .A(n12), .Y(n18) );
endmodule


module G2B_DATA_WIDTH4_0 ( GRAY_DATA, BIN_DATA );
  input [3:0] GRAY_DATA;
  output [3:0] BIN_DATA;


  CLKXOR2X2M U1 ( .A(BIN_DATA[2]), .B(GRAY_DATA[1]), .Y(BIN_DATA[1]) );
  CLKXOR2X2M U2 ( .A(GRAY_DATA[2]), .B(GRAY_DATA[3]), .Y(BIN_DATA[2]) );
  CLKXOR2X2M U3 ( .A(GRAY_DATA[0]), .B(BIN_DATA[1]), .Y(BIN_DATA[0]) );
  BUFX2M U4 ( .A(GRAY_DATA[3]), .Y(BIN_DATA[3]) );
endmodule


module FIFO_RD_ADDR8_test_1 ( rclk, rrst_n, rinc, rq2_wptr_bin, rptr_bin, 
        raddr, rempty, test_si, test_se );
  input [3:0] rq2_wptr_bin;
  output [3:0] rptr_bin;
  output [2:0] raddr;
  input rclk, rrst_n, rinc, test_si, test_se;
  output rempty;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n24, n27,
         n28, n29, n30, n31, n32, n33;

  SDFFRQX2M \rptr_bin_reg[3]  ( .D(n15), .SI(raddr[2]), .SE(n32), .CK(rclk), 
        .RN(rrst_n), .Q(rptr_bin[3]) );
  SDFFRQX4M \rptr_bin_reg[1]  ( .D(n17), .SI(raddr[0]), .SE(n33), .CK(rclk), 
        .RN(rrst_n), .Q(raddr[1]) );
  SDFFRQX4M \rptr_bin_reg[2]  ( .D(n16), .SI(raddr[1]), .SE(n32), .CK(rclk), 
        .RN(rrst_n), .Q(raddr[2]) );
  SDFFRQX4M \rptr_bin_reg[0]  ( .D(n18), .SI(test_si), .SE(n33), .CK(rclk), 
        .RN(rrst_n), .Q(raddr[0]) );
  BUFX2M U7 ( .A(raddr[2]), .Y(rptr_bin[2]) );
  INVX2M U11 ( .A(n6), .Y(rempty) );
  XNOR2X2M U12 ( .A(raddr[0]), .B(rq2_wptr_bin[0]), .Y(n12) );
  NOR2X2M U13 ( .A(n10), .B(n24), .Y(n9) );
  INVX2M U14 ( .A(raddr[0]), .Y(n24) );
  XNOR2X2M U15 ( .A(raddr[2]), .B(n8), .Y(n16) );
  NAND4X2M U16 ( .A(n11), .B(n12), .C(n13), .D(n14), .Y(n6) );
  XNOR2X2M U17 ( .A(n28), .B(rq2_wptr_bin[3]), .Y(n13) );
  XNOR2X2M U18 ( .A(raddr[2]), .B(rq2_wptr_bin[2]), .Y(n14) );
  XNOR2X2M U19 ( .A(raddr[1]), .B(rq2_wptr_bin[1]), .Y(n11) );
  NAND2X2M U20 ( .A(n9), .B(raddr[1]), .Y(n8) );
  NAND2X2M U21 ( .A(rinc), .B(n6), .Y(n10) );
  XNOR2X2M U22 ( .A(n30), .B(n7), .Y(n15) );
  NAND2BX2M U23 ( .AN(n8), .B(raddr[2]), .Y(n7) );
  CLKXOR2X2M U24 ( .A(raddr[1]), .B(n9), .Y(n17) );
  XNOR2X2M U25 ( .A(raddr[0]), .B(n10), .Y(n18) );
  BUFX2M U26 ( .A(raddr[1]), .Y(rptr_bin[1]) );
  BUFX2M U27 ( .A(raddr[0]), .Y(rptr_bin[0]) );
  DLY1X1M U28 ( .A(n29), .Y(n27) );
  INVXLM U29 ( .A(n27), .Y(n28) );
  INVXLM U30 ( .A(rptr_bin[3]), .Y(n29) );
  INVXLM U31 ( .A(n27), .Y(n30) );
  DLY1X1M U32 ( .A(test_se), .Y(n31) );
  DLY1X1M U33 ( .A(n31), .Y(n32) );
  DLY1X1M U34 ( .A(n31), .Y(n33) );
endmodule


module B2G_DATA_WIDTH4_1 ( BIN_DATA, GRAY_DATA );
  input [3:0] BIN_DATA;
  output [3:0] GRAY_DATA;


  CLKXOR2X2M U1 ( .A(BIN_DATA[2]), .B(BIN_DATA[1]), .Y(GRAY_DATA[1]) );
  CLKXOR2X2M U2 ( .A(BIN_DATA[3]), .B(BIN_DATA[2]), .Y(GRAY_DATA[2]) );
  CLKXOR2X2M U3 ( .A(BIN_DATA[1]), .B(BIN_DATA[0]), .Y(GRAY_DATA[0]) );
  BUFX2M U4 ( .A(BIN_DATA[3]), .Y(GRAY_DATA[3]) );
endmodule


module DFFS_STAGES2_DATA_WIDTH4_test_1 ( clk, rst, DATA_IN, DATA_OUT, test_si, 
        test_se );
  input [3:0] DATA_IN;
  output [3:0] DATA_OUT;
  input clk, rst, test_si, test_se;
  wire   \shift_reg[3][0] , \shift_reg[2][0] , \shift_reg[1][0] ,
         \shift_reg[0][0] , n25, n26, n27, n28, n29, n30, n31;

  SDFFRQX2M \shift_reg_reg[1][0]  ( .D(DATA_IN[1]), .SI(DATA_OUT[0]), .SE(n30), 
        .CK(clk), .RN(rst), .Q(\shift_reg[1][0] ) );
  SDFFRQX2M \shift_reg_reg[0][0]  ( .D(DATA_IN[0]), .SI(test_si), .SE(n29), 
        .CK(clk), .RN(rst), .Q(\shift_reg[0][0] ) );
  SDFFRQX1M \shift_reg_reg[3][0]  ( .D(DATA_IN[3]), .SI(DATA_OUT[2]), .SE(n27), 
        .CK(clk), .RN(rst), .Q(\shift_reg[3][0] ) );
  SDFFRQX1M \shift_reg_reg[2][0]  ( .D(DATA_IN[2]), .SI(DATA_OUT[1]), .SE(n26), 
        .CK(clk), .RN(rst), .Q(\shift_reg[2][0] ) );
  SDFFRQX1M \shift_reg_reg[1][1]  ( .D(\shift_reg[1][0] ), .SI(
        \shift_reg[1][0] ), .SE(n31), .CK(clk), .RN(rst), .Q(DATA_OUT[1]) );
  SDFFRQX1M \shift_reg_reg[0][1]  ( .D(\shift_reg[0][0] ), .SI(
        \shift_reg[0][0] ), .SE(n27), .CK(clk), .RN(rst), .Q(DATA_OUT[0]) );
  SDFFRQX1M \shift_reg_reg[3][1]  ( .D(\shift_reg[3][0] ), .SI(
        \shift_reg[3][0] ), .SE(n26), .CK(clk), .RN(rst), .Q(DATA_OUT[3]) );
  SDFFRQX1M \shift_reg_reg[2][1]  ( .D(\shift_reg[2][0] ), .SI(
        \shift_reg[2][0] ), .SE(n31), .CK(clk), .RN(rst), .Q(DATA_OUT[2]) );
  DLY1X1M U17 ( .A(n28), .Y(n25) );
  DLY1X1M U18 ( .A(n29), .Y(n26) );
  DLY1X1M U19 ( .A(n30), .Y(n27) );
  DLY1X1M U20 ( .A(test_se), .Y(n28) );
  DLY1X1M U21 ( .A(n28), .Y(n29) );
  DLY1X1M U22 ( .A(n25), .Y(n30) );
  DLY1X1M U23 ( .A(n25), .Y(n31) );
endmodule


module G2B_DATA_WIDTH4_1 ( GRAY_DATA, BIN_DATA );
  input [3:0] GRAY_DATA;
  output [3:0] BIN_DATA;


  CLKXOR2X2M U1 ( .A(BIN_DATA[2]), .B(GRAY_DATA[1]), .Y(BIN_DATA[1]) );
  CLKXOR2X2M U2 ( .A(GRAY_DATA[2]), .B(BIN_DATA[3]), .Y(BIN_DATA[2]) );
  CLKXOR2X2M U3 ( .A(GRAY_DATA[0]), .B(BIN_DATA[1]), .Y(BIN_DATA[0]) );
  BUFX2M U4 ( .A(GRAY_DATA[3]), .Y(BIN_DATA[3]) );
endmodule


module FIFO_MEM_DATA_WIDTH8_ADDR8_test_1 ( wclk, wrst_n, winc, wfull, waddr, 
        raddr, wdata, rdata, test_si, test_so, test_se );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wrst_n, winc, wfull, test_si, test_se;
  output test_so;
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
         \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , n75,
         n76, n80, n82, n83, n84, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n77, n78, n79, n81, n85, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281;
  assign N9 = raddr[0];
  assign N10 = raddr[1];
  assign N11 = raddr[2];
  assign test_so = \mem[7][7] ;

  SDFFRQX2M \mem_reg[0][0]  ( .D(n142), .SI(test_si), .SE(n228), .CK(wclk), 
        .RN(n200), .Q(\mem[0][0] ) );
  SDFFRQX2M \mem_reg[1][0]  ( .D(n134), .SI(\mem[0][7] ), .SE(n231), .CK(wclk), 
        .RN(n201), .Q(\mem[1][0] ) );
  SDFFRQX2M \mem_reg[4][0]  ( .D(n110), .SI(\mem[3][7] ), .SE(n234), .CK(wclk), 
        .RN(n203), .Q(\mem[4][0] ) );
  SDFFRQX2M \mem_reg[5][0]  ( .D(n102), .SI(\mem[4][7] ), .SE(n239), .CK(wclk), 
        .RN(n203), .Q(\mem[5][0] ) );
  SDFFRQX2M \mem_reg[6][0]  ( .D(n94), .SI(\mem[5][7] ), .SE(n244), .CK(wclk), 
        .RN(n204), .Q(\mem[6][0] ) );
  SDFFRQX2M \mem_reg[7][0]  ( .D(n86), .SI(\mem[6][7] ), .SE(n249), .CK(wclk), 
        .RN(n205), .Q(\mem[7][0] ) );
  SDFFRQX2M \mem_reg[2][0]  ( .D(n126), .SI(\mem[1][7] ), .SE(n254), .CK(wclk), 
        .RN(n201), .Q(\mem[2][0] ) );
  SDFFRQX2M \mem_reg[3][0]  ( .D(n118), .SI(\mem[2][7] ), .SE(n258), .CK(wclk), 
        .RN(n202), .Q(\mem[3][0] ) );
  SDFFRQX2M \mem_reg[0][7]  ( .D(n149), .SI(\mem[0][6] ), .SE(n262), .CK(wclk), 
        .RN(n200), .Q(\mem[0][7] ) );
  SDFFRQX2M \mem_reg[1][7]  ( .D(n141), .SI(\mem[1][6] ), .SE(n266), .CK(wclk), 
        .RN(n200), .Q(\mem[1][7] ) );
  SDFFRQX2M \mem_reg[4][7]  ( .D(n117), .SI(\mem[4][6] ), .SE(n270), .CK(wclk), 
        .RN(n202), .Q(\mem[4][7] ) );
  SDFFRQX2M \mem_reg[4][6]  ( .D(n116), .SI(\mem[4][5] ), .SE(n274), .CK(wclk), 
        .RN(n202), .Q(\mem[4][6] ) );
  SDFFRQX2M \mem_reg[4][5]  ( .D(n115), .SI(\mem[4][4] ), .SE(n230), .CK(wclk), 
        .RN(n202), .Q(\mem[4][5] ) );
  SDFFRQX2M \mem_reg[4][4]  ( .D(n114), .SI(\mem[4][3] ), .SE(n233), .CK(wclk), 
        .RN(n202), .Q(\mem[4][4] ) );
  SDFFRQX2M \mem_reg[4][3]  ( .D(n113), .SI(\mem[4][2] ), .SE(n236), .CK(wclk), 
        .RN(n203), .Q(\mem[4][3] ) );
  SDFFRQX2M \mem_reg[4][2]  ( .D(n112), .SI(\mem[4][1] ), .SE(n239), .CK(wclk), 
        .RN(n203), .Q(\mem[4][2] ) );
  SDFFRQX2M \mem_reg[4][1]  ( .D(n111), .SI(\mem[4][0] ), .SE(n264), .CK(wclk), 
        .RN(n203), .Q(\mem[4][1] ) );
  SDFFRQX2M \mem_reg[5][7]  ( .D(n109), .SI(\mem[5][6] ), .SE(n268), .CK(wclk), 
        .RN(n203), .Q(\mem[5][7] ) );
  SDFFRQX2M \mem_reg[5][6]  ( .D(n108), .SI(\mem[5][5] ), .SE(n272), .CK(wclk), 
        .RN(n203), .Q(\mem[5][6] ) );
  SDFFRQX2M \mem_reg[5][5]  ( .D(n107), .SI(\mem[5][4] ), .SE(n237), .CK(wclk), 
        .RN(n203), .Q(\mem[5][5] ) );
  SDFFRQX2M \mem_reg[5][4]  ( .D(n106), .SI(\mem[5][3] ), .SE(n243), .CK(wclk), 
        .RN(n203), .Q(\mem[5][4] ) );
  SDFFRQX2M \mem_reg[5][3]  ( .D(n105), .SI(\mem[5][2] ), .SE(n248), .CK(wclk), 
        .RN(n203), .Q(\mem[5][3] ) );
  SDFFRQX2M \mem_reg[5][2]  ( .D(n104), .SI(\mem[5][1] ), .SE(n253), .CK(wclk), 
        .RN(n203), .Q(\mem[5][2] ) );
  SDFFRQX2M \mem_reg[5][1]  ( .D(n103), .SI(\mem[5][0] ), .SE(n259), .CK(wclk), 
        .RN(n203), .Q(\mem[5][1] ) );
  SDFFRQX2M \mem_reg[6][7]  ( .D(n101), .SI(\mem[6][6] ), .SE(n262), .CK(wclk), 
        .RN(n204), .Q(\mem[6][7] ) );
  SDFFRQX2M \mem_reg[6][6]  ( .D(n100), .SI(\mem[6][5] ), .SE(n266), .CK(wclk), 
        .RN(n204), .Q(\mem[6][6] ) );
  SDFFRQX2M \mem_reg[6][5]  ( .D(n99), .SI(\mem[6][4] ), .SE(n273), .CK(wclk), 
        .RN(n204), .Q(\mem[6][5] ) );
  SDFFRQX2M \mem_reg[6][4]  ( .D(n98), .SI(\mem[6][3] ), .SE(n274), .CK(wclk), 
        .RN(n204), .Q(\mem[6][4] ) );
  SDFFRQX2M \mem_reg[6][3]  ( .D(n97), .SI(\mem[6][2] ), .SE(n230), .CK(wclk), 
        .RN(n204), .Q(\mem[6][3] ) );
  SDFFRQX2M \mem_reg[6][2]  ( .D(n96), .SI(\mem[6][1] ), .SE(n233), .CK(wclk), 
        .RN(n204), .Q(\mem[6][2] ) );
  SDFFRQX2M \mem_reg[6][1]  ( .D(n95), .SI(\mem[6][0] ), .SE(n236), .CK(wclk), 
        .RN(n204), .Q(\mem[6][1] ) );
  SDFFRQX2M \mem_reg[7][7]  ( .D(n93), .SI(\mem[7][6] ), .SE(n277), .CK(wclk), 
        .RN(n204), .Q(\mem[7][7] ) );
  SDFFRQX2M \mem_reg[7][6]  ( .D(n92), .SI(\mem[7][5] ), .SE(n244), .CK(wclk), 
        .RN(n204), .Q(\mem[7][6] ) );
  SDFFRQX2M \mem_reg[7][5]  ( .D(n91), .SI(\mem[7][4] ), .SE(n249), .CK(wclk), 
        .RN(n204), .Q(\mem[7][5] ) );
  SDFFRQX2M \mem_reg[7][4]  ( .D(n90), .SI(\mem[7][3] ), .SE(n254), .CK(wclk), 
        .RN(n204), .Q(\mem[7][4] ) );
  SDFFRQX2M \mem_reg[7][3]  ( .D(n89), .SI(\mem[7][2] ), .SE(n276), .CK(wclk), 
        .RN(n205), .Q(\mem[7][3] ) );
  SDFFRQX2M \mem_reg[7][2]  ( .D(n88), .SI(\mem[7][1] ), .SE(n265), .CK(wclk), 
        .RN(n205), .Q(\mem[7][2] ) );
  SDFFRQX2M \mem_reg[7][1]  ( .D(n87), .SI(\mem[7][0] ), .SE(n269), .CK(wclk), 
        .RN(n205), .Q(\mem[7][1] ) );
  SDFFRQX2M \mem_reg[2][7]  ( .D(n133), .SI(\mem[2][6] ), .SE(n273), .CK(wclk), 
        .RN(n201), .Q(\mem[2][7] ) );
  SDFFRQX2M \mem_reg[2][5]  ( .D(n131), .SI(\mem[2][4] ), .SE(n258), .CK(wclk), 
        .RN(n201), .Q(\mem[2][5] ) );
  SDFFRQX2M \mem_reg[2][4]  ( .D(n130), .SI(\mem[2][3] ), .SE(n263), .CK(wclk), 
        .RN(n201), .Q(\mem[2][4] ) );
  SDFFRQX2M \mem_reg[3][7]  ( .D(n125), .SI(\mem[3][6] ), .SE(n267), .CK(wclk), 
        .RN(n202), .Q(\mem[3][7] ) );
  SDFFRQX2M \mem_reg[0][6]  ( .D(n148), .SI(\mem[0][5] ), .SE(n271), .CK(wclk), 
        .RN(n200), .Q(\mem[0][6] ) );
  SDFFRQX2M \mem_reg[0][5]  ( .D(n147), .SI(\mem[0][4] ), .SE(n275), .CK(wclk), 
        .RN(n200), .Q(\mem[0][5] ) );
  SDFFRQX2M \mem_reg[0][4]  ( .D(n146), .SI(\mem[0][3] ), .SE(n228), .CK(wclk), 
        .RN(n200), .Q(\mem[0][4] ) );
  SDFFRQX2M \mem_reg[0][3]  ( .D(n145), .SI(\mem[0][2] ), .SE(n231), .CK(wclk), 
        .RN(n200), .Q(\mem[0][3] ) );
  SDFFRQX2M \mem_reg[0][2]  ( .D(n144), .SI(\mem[0][1] ), .SE(n234), .CK(wclk), 
        .RN(n200), .Q(\mem[0][2] ) );
  SDFFRQX2M \mem_reg[0][1]  ( .D(n143), .SI(\mem[0][0] ), .SE(n237), .CK(wclk), 
        .RN(n200), .Q(\mem[0][1] ) );
  SDFFRQX2M \mem_reg[1][6]  ( .D(n140), .SI(\mem[1][5] ), .SE(n243), .CK(wclk), 
        .RN(n200), .Q(\mem[1][6] ) );
  SDFFRQX2M \mem_reg[1][5]  ( .D(n139), .SI(\mem[1][4] ), .SE(n248), .CK(wclk), 
        .RN(n200), .Q(\mem[1][5] ) );
  SDFFRQX2M \mem_reg[1][4]  ( .D(n138), .SI(\mem[1][3] ), .SE(n253), .CK(wclk), 
        .RN(n200), .Q(\mem[1][4] ) );
  SDFFRQX2M \mem_reg[1][3]  ( .D(n137), .SI(\mem[1][2] ), .SE(n259), .CK(wclk), 
        .RN(n201), .Q(\mem[1][3] ) );
  SDFFRQX2M \mem_reg[1][2]  ( .D(n136), .SI(\mem[1][1] ), .SE(n265), .CK(wclk), 
        .RN(n201), .Q(\mem[1][2] ) );
  SDFFRQX2M \mem_reg[1][1]  ( .D(n135), .SI(\mem[1][0] ), .SE(n269), .CK(wclk), 
        .RN(n201), .Q(\mem[1][1] ) );
  SDFFRQX2M \mem_reg[2][6]  ( .D(n132), .SI(\mem[2][5] ), .SE(n270), .CK(wclk), 
        .RN(n201), .Q(\mem[2][6] ) );
  SDFFRQX2M \mem_reg[2][3]  ( .D(n129), .SI(\mem[2][2] ), .SE(n277), .CK(wclk), 
        .RN(n201), .Q(\mem[2][3] ) );
  SDFFRQX2M \mem_reg[2][2]  ( .D(n128), .SI(\mem[2][1] ), .SE(n229), .CK(wclk), 
        .RN(n201), .Q(\mem[2][2] ) );
  SDFFRQX2M \mem_reg[2][1]  ( .D(n127), .SI(\mem[2][0] ), .SE(n232), .CK(wclk), 
        .RN(n201), .Q(\mem[2][1] ) );
  SDFFRQX2M \mem_reg[3][6]  ( .D(n124), .SI(\mem[3][5] ), .SE(n235), .CK(wclk), 
        .RN(n202), .Q(\mem[3][6] ) );
  SDFFRQX2M \mem_reg[3][5]  ( .D(n123), .SI(\mem[3][4] ), .SE(n238), .CK(wclk), 
        .RN(n202), .Q(\mem[3][5] ) );
  SDFFRQX2M \mem_reg[3][4]  ( .D(n122), .SI(\mem[3][3] ), .SE(n229), .CK(wclk), 
        .RN(n202), .Q(\mem[3][4] ) );
  SDFFRQX2M \mem_reg[3][3]  ( .D(n121), .SI(\mem[3][2] ), .SE(n232), .CK(wclk), 
        .RN(n202), .Q(\mem[3][3] ) );
  SDFFRQX2M \mem_reg[3][2]  ( .D(n120), .SI(\mem[3][1] ), .SE(n235), .CK(wclk), 
        .RN(n202), .Q(\mem[3][2] ) );
  SDFFRQX2M \mem_reg[3][1]  ( .D(n119), .SI(\mem[3][0] ), .SE(n238), .CK(wclk), 
        .RN(n202), .Q(\mem[3][1] ) );
  NOR2X2M U66 ( .A(N10), .B(N11), .Y(n169) );
  CLKINVX2M U67 ( .A(waddr[1]), .Y(n217) );
  NAND3XLM U68 ( .A(waddr[1]), .B(n216), .C(n82), .Y(n83) );
  NAND3XLM U69 ( .A(waddr[0]), .B(n76), .C(waddr[1]), .Y(n75) );
  AND3X1M U70 ( .A(n76), .B(n216), .C(waddr[1]), .Y(n67) );
  AND3X1M U71 ( .A(waddr[1]), .B(waddr[0]), .C(n82), .Y(n68) );
  OAI22X4M U72 ( .A0(n178), .A1(n159), .B0(n179), .B1(n158), .Y(rdata[7]) );
  AOI221X2M U73 ( .A0(\mem[4][7] ), .A1(n180), .B0(\mem[6][7] ), .B1(n182), 
        .C0(n157), .Y(n158) );
  AOI221X2M U74 ( .A0(\mem[5][7] ), .A1(n180), .B0(\mem[7][7] ), .B1(n182), 
        .C0(n156), .Y(n159) );
  OAI22X4M U75 ( .A0(n178), .A1(n163), .B0(n179), .B1(n162), .Y(rdata[0]) );
  AOI221X2M U76 ( .A0(\mem[4][0] ), .A1(n180), .B0(\mem[6][0] ), .B1(n182), 
        .C0(n161), .Y(n162) );
  AOI221X2M U77 ( .A0(\mem[5][0] ), .A1(n180), .B0(\mem[7][0] ), .B1(n182), 
        .C0(n160), .Y(n163) );
  OAI22X4M U78 ( .A0(n178), .A1(n73), .B0(n179), .B1(n72), .Y(rdata[3]) );
  AOI221X2M U79 ( .A0(\mem[4][3] ), .A1(n181), .B0(\mem[6][3] ), .B1(n182), 
        .C0(n71), .Y(n72) );
  AOI221X2M U80 ( .A0(\mem[5][3] ), .A1(n181), .B0(\mem[7][3] ), .B1(n182), 
        .C0(n70), .Y(n73) );
  OAI22X4M U81 ( .A0(n178), .A1(n155), .B0(n179), .B1(n154), .Y(rdata[6]) );
  AOI221X2M U82 ( .A0(\mem[4][6] ), .A1(n181), .B0(\mem[6][6] ), .B1(n182), 
        .C0(n153), .Y(n154) );
  AOI221X2M U83 ( .A0(\mem[5][6] ), .A1(n181), .B0(\mem[7][6] ), .B1(n182), 
        .C0(n152), .Y(n155) );
  OAI22X4M U84 ( .A0(n175), .A1(n178), .B0(n179), .B1(n174), .Y(rdata[2]) );
  AOI221X2M U85 ( .A0(\mem[4][2] ), .A1(n180), .B0(\mem[6][2] ), .B1(n182), 
        .C0(n171), .Y(n174) );
  AOI221X2M U86 ( .A0(\mem[5][2] ), .A1(n180), .B0(\mem[7][2] ), .B1(n182), 
        .C0(n168), .Y(n175) );
  OAI22X4M U87 ( .A0(n178), .A1(n151), .B0(n179), .B1(n150), .Y(rdata[5]) );
  AOI221X2M U88 ( .A0(\mem[4][5] ), .A1(n181), .B0(\mem[6][5] ), .B1(n182), 
        .C0(n85), .Y(n150) );
  AOI221X2M U89 ( .A0(\mem[5][5] ), .A1(n181), .B0(\mem[7][5] ), .B1(n182), 
        .C0(n81), .Y(n151) );
  OAI22X4M U90 ( .A0(n178), .A1(n167), .B0(n179), .B1(n166), .Y(rdata[1]) );
  AOI221X2M U91 ( .A0(\mem[4][1] ), .A1(n180), .B0(\mem[6][1] ), .B1(n182), 
        .C0(n165), .Y(n166) );
  AOI221X2M U92 ( .A0(\mem[5][1] ), .A1(n180), .B0(\mem[7][1] ), .B1(n182), 
        .C0(n164), .Y(n167) );
  OAI22X4M U93 ( .A0(n178), .A1(n79), .B0(n179), .B1(n78), .Y(rdata[4]) );
  AOI221X2M U94 ( .A0(\mem[4][4] ), .A1(n181), .B0(\mem[6][4] ), .B1(n182), 
        .C0(n77), .Y(n78) );
  AOI221X2M U95 ( .A0(\mem[5][4] ), .A1(n181), .B0(\mem[7][4] ), .B1(n182), 
        .C0(n74), .Y(n79) );
  NOR2BX4M U96 ( .AN(n80), .B(waddr[2]), .Y(n82) );
  AND2X2M U97 ( .A(waddr[2]), .B(n80), .Y(n76) );
  NOR2X2M U98 ( .A(n177), .B(N11), .Y(n170) );
  NOR2X2M U99 ( .A(n176), .B(N10), .Y(n173) );
  INVX2M U100 ( .A(waddr[0]), .Y(n216) );
  BUFX6M U101 ( .A(n207), .Y(n204) );
  BUFX6M U102 ( .A(n206), .Y(n203) );
  BUFX6M U103 ( .A(n206), .Y(n202) );
  BUFX6M U104 ( .A(n207), .Y(n201) );
  BUFX6M U105 ( .A(n207), .Y(n200) );
  BUFX2M U106 ( .A(n206), .Y(n205) );
  NOR2BX2M U107 ( .AN(winc), .B(wfull), .Y(n80) );
  INVX4M U108 ( .A(n66), .Y(n194) );
  INVX4M U109 ( .A(n66), .Y(n193) );
  INVX4M U110 ( .A(n65), .Y(n188) );
  INVX4M U111 ( .A(n65), .Y(n187) );
  BUFX2M U112 ( .A(n207), .Y(n206) );
  BUFX4M U113 ( .A(n170), .Y(n183) );
  BUFX4M U114 ( .A(n170), .Y(n184) );
  BUFX4M U115 ( .A(n169), .Y(n185) );
  BUFX4M U116 ( .A(n169), .Y(n186) );
  CLKBUFX8M U117 ( .A(n172), .Y(n182) );
  NOR2X2M U118 ( .A(n176), .B(n177), .Y(n172) );
  BUFX4M U119 ( .A(n173), .Y(n180) );
  BUFX4M U120 ( .A(n173), .Y(n181) );
  INVX4M U121 ( .A(n179), .Y(n178) );
  INVX4M U122 ( .A(n69), .Y(n196) );
  INVX4M U123 ( .A(n69), .Y(n195) );
  INVX4M U124 ( .A(n68), .Y(n192) );
  INVX4M U125 ( .A(n68), .Y(n191) );
  INVX4M U126 ( .A(n67), .Y(n198) );
  INVX4M U127 ( .A(n67), .Y(n197) );
  AND3X2M U128 ( .A(n216), .B(n217), .C(n82), .Y(n65) );
  AND3X2M U129 ( .A(n216), .B(n217), .C(n76), .Y(n66) );
  BUFX2M U130 ( .A(wrst_n), .Y(n207) );
  INVX2M U131 ( .A(N10), .Y(n177) );
  INVX2M U132 ( .A(N11), .Y(n176) );
  INVX4M U133 ( .A(wdata[0]), .Y(n215) );
  INVX4M U134 ( .A(wdata[1]), .Y(n214) );
  INVX4M U135 ( .A(wdata[2]), .Y(n213) );
  INVX4M U136 ( .A(wdata[3]), .Y(n212) );
  INVX4M U137 ( .A(wdata[4]), .Y(n211) );
  INVX4M U138 ( .A(wdata[5]), .Y(n210) );
  INVX4M U139 ( .A(wdata[6]), .Y(n209) );
  INVX4M U140 ( .A(wdata[7]), .Y(n208) );
  CLKBUFX8M U141 ( .A(n83), .Y(n190) );
  CLKBUFX8M U142 ( .A(n84), .Y(n189) );
  NAND3X2M U143 ( .A(waddr[0]), .B(n217), .C(n82), .Y(n84) );
  CLKBUFX8M U144 ( .A(n75), .Y(n199) );
  OAI2BB2X1M U145 ( .B0(n215), .B1(n198), .A0N(\mem[6][0] ), .A1N(n198), .Y(
        n94) );
  OAI2BB2X1M U146 ( .B0(n214), .B1(n197), .A0N(\mem[6][1] ), .A1N(n197), .Y(
        n95) );
  OAI2BB2X1M U147 ( .B0(n213), .B1(n198), .A0N(\mem[6][2] ), .A1N(n198), .Y(
        n96) );
  OAI2BB2X1M U148 ( .B0(n212), .B1(n197), .A0N(\mem[6][3] ), .A1N(n197), .Y(
        n97) );
  OAI2BB2X1M U149 ( .B0(n211), .B1(n198), .A0N(\mem[6][4] ), .A1N(n198), .Y(
        n98) );
  OAI2BB2X1M U150 ( .B0(n210), .B1(n197), .A0N(\mem[6][5] ), .A1N(n197), .Y(
        n99) );
  OAI2BB2X1M U151 ( .B0(n209), .B1(n198), .A0N(\mem[6][6] ), .A1N(n198), .Y(
        n100) );
  OAI2BB2X1M U152 ( .B0(n208), .B1(n197), .A0N(\mem[6][7] ), .A1N(n197), .Y(
        n101) );
  OAI2BB2X1M U153 ( .B0(n215), .B1(n196), .A0N(\mem[5][0] ), .A1N(n196), .Y(
        n102) );
  OAI2BB2X1M U154 ( .B0(n214), .B1(n195), .A0N(\mem[5][1] ), .A1N(n195), .Y(
        n103) );
  OAI2BB2X1M U155 ( .B0(n213), .B1(n196), .A0N(\mem[5][2] ), .A1N(n196), .Y(
        n104) );
  OAI2BB2X1M U156 ( .B0(n212), .B1(n195), .A0N(\mem[5][3] ), .A1N(n195), .Y(
        n105) );
  OAI2BB2X1M U157 ( .B0(n211), .B1(n196), .A0N(\mem[5][4] ), .A1N(n196), .Y(
        n106) );
  OAI2BB2X1M U158 ( .B0(n210), .B1(n195), .A0N(\mem[5][5] ), .A1N(n195), .Y(
        n107) );
  OAI2BB2X1M U159 ( .B0(n209), .B1(n196), .A0N(\mem[5][6] ), .A1N(n196), .Y(
        n108) );
  OAI2BB2X1M U160 ( .B0(n208), .B1(n195), .A0N(\mem[5][7] ), .A1N(n195), .Y(
        n109) );
  OAI2BB2X1M U161 ( .B0(n215), .B1(n194), .A0N(\mem[4][0] ), .A1N(n194), .Y(
        n110) );
  OAI2BB2X1M U162 ( .B0(n214), .B1(n193), .A0N(\mem[4][1] ), .A1N(n193), .Y(
        n111) );
  OAI2BB2X1M U163 ( .B0(n213), .B1(n194), .A0N(\mem[4][2] ), .A1N(n194), .Y(
        n112) );
  OAI2BB2X1M U164 ( .B0(n212), .B1(n193), .A0N(\mem[4][3] ), .A1N(n193), .Y(
        n113) );
  OAI2BB2X1M U165 ( .B0(n211), .B1(n194), .A0N(\mem[4][4] ), .A1N(n194), .Y(
        n114) );
  OAI2BB2X1M U166 ( .B0(n210), .B1(n193), .A0N(\mem[4][5] ), .A1N(n193), .Y(
        n115) );
  OAI2BB2X1M U167 ( .B0(n209), .B1(n194), .A0N(\mem[4][6] ), .A1N(n194), .Y(
        n116) );
  OAI2BB2X1M U168 ( .B0(n208), .B1(n193), .A0N(\mem[4][7] ), .A1N(n193), .Y(
        n117) );
  OAI2BB2X1M U169 ( .B0(n215), .B1(n192), .A0N(\mem[3][0] ), .A1N(n192), .Y(
        n118) );
  OAI2BB2X1M U170 ( .B0(n214), .B1(n191), .A0N(\mem[3][1] ), .A1N(n191), .Y(
        n119) );
  OAI2BB2X1M U171 ( .B0(n213), .B1(n192), .A0N(\mem[3][2] ), .A1N(n192), .Y(
        n120) );
  OAI2BB2X1M U172 ( .B0(n212), .B1(n191), .A0N(\mem[3][3] ), .A1N(n191), .Y(
        n121) );
  OAI2BB2X1M U173 ( .B0(n211), .B1(n192), .A0N(\mem[3][4] ), .A1N(n192), .Y(
        n122) );
  OAI2BB2X1M U174 ( .B0(n210), .B1(n191), .A0N(\mem[3][5] ), .A1N(n191), .Y(
        n123) );
  OAI2BB2X1M U175 ( .B0(n209), .B1(n192), .A0N(\mem[3][6] ), .A1N(n192), .Y(
        n124) );
  OAI2BB2X1M U176 ( .B0(n208), .B1(n191), .A0N(\mem[3][7] ), .A1N(n191), .Y(
        n125) );
  OAI2BB2X1M U177 ( .B0(n215), .B1(n190), .A0N(\mem[2][0] ), .A1N(n190), .Y(
        n126) );
  OAI2BB2X1M U178 ( .B0(n214), .B1(n190), .A0N(\mem[2][1] ), .A1N(n190), .Y(
        n127) );
  OAI2BB2X1M U179 ( .B0(n213), .B1(n190), .A0N(\mem[2][2] ), .A1N(n190), .Y(
        n128) );
  OAI2BB2X1M U180 ( .B0(n212), .B1(n190), .A0N(\mem[2][3] ), .A1N(n190), .Y(
        n129) );
  OAI2BB2X1M U181 ( .B0(n211), .B1(n190), .A0N(\mem[2][4] ), .A1N(n190), .Y(
        n130) );
  OAI2BB2X1M U182 ( .B0(n210), .B1(n190), .A0N(\mem[2][5] ), .A1N(n190), .Y(
        n131) );
  OAI2BB2X1M U183 ( .B0(n209), .B1(n190), .A0N(\mem[2][6] ), .A1N(n190), .Y(
        n132) );
  OAI2BB2X1M U184 ( .B0(n208), .B1(n190), .A0N(\mem[2][7] ), .A1N(n190), .Y(
        n133) );
  OAI2BB2X1M U185 ( .B0(n215), .B1(n189), .A0N(\mem[1][0] ), .A1N(n189), .Y(
        n134) );
  OAI2BB2X1M U186 ( .B0(n214), .B1(n189), .A0N(\mem[1][1] ), .A1N(n189), .Y(
        n135) );
  OAI2BB2X1M U187 ( .B0(n213), .B1(n189), .A0N(\mem[1][2] ), .A1N(n189), .Y(
        n136) );
  OAI2BB2X1M U188 ( .B0(n212), .B1(n189), .A0N(\mem[1][3] ), .A1N(n189), .Y(
        n137) );
  OAI2BB2X1M U189 ( .B0(n211), .B1(n189), .A0N(\mem[1][4] ), .A1N(n189), .Y(
        n138) );
  OAI2BB2X1M U190 ( .B0(n210), .B1(n189), .A0N(\mem[1][5] ), .A1N(n189), .Y(
        n139) );
  OAI2BB2X1M U191 ( .B0(n209), .B1(n189), .A0N(\mem[1][6] ), .A1N(n189), .Y(
        n140) );
  OAI2BB2X1M U192 ( .B0(n208), .B1(n189), .A0N(\mem[1][7] ), .A1N(n189), .Y(
        n141) );
  OAI2BB2X1M U193 ( .B0(n215), .B1(n188), .A0N(\mem[0][0] ), .A1N(n188), .Y(
        n142) );
  OAI2BB2X1M U194 ( .B0(n214), .B1(n187), .A0N(\mem[0][1] ), .A1N(n187), .Y(
        n143) );
  OAI2BB2X1M U195 ( .B0(n213), .B1(n188), .A0N(\mem[0][2] ), .A1N(n188), .Y(
        n144) );
  OAI2BB2X1M U196 ( .B0(n212), .B1(n187), .A0N(\mem[0][3] ), .A1N(n187), .Y(
        n145) );
  OAI2BB2X1M U197 ( .B0(n211), .B1(n188), .A0N(\mem[0][4] ), .A1N(n188), .Y(
        n146) );
  OAI2BB2X1M U198 ( .B0(n210), .B1(n187), .A0N(\mem[0][5] ), .A1N(n187), .Y(
        n147) );
  OAI2BB2X1M U199 ( .B0(n209), .B1(n188), .A0N(\mem[0][6] ), .A1N(n188), .Y(
        n148) );
  OAI2BB2X1M U200 ( .B0(n208), .B1(n187), .A0N(\mem[0][7] ), .A1N(n187), .Y(
        n149) );
  OAI2BB2X1M U201 ( .B0(n199), .B1(n215), .A0N(\mem[7][0] ), .A1N(n199), .Y(
        n86) );
  OAI2BB2X1M U202 ( .B0(n199), .B1(n214), .A0N(\mem[7][1] ), .A1N(n199), .Y(
        n87) );
  OAI2BB2X1M U203 ( .B0(n199), .B1(n213), .A0N(\mem[7][2] ), .A1N(n199), .Y(
        n88) );
  OAI2BB2X1M U204 ( .B0(n199), .B1(n212), .A0N(\mem[7][3] ), .A1N(n199), .Y(
        n89) );
  OAI2BB2X1M U205 ( .B0(n199), .B1(n211), .A0N(\mem[7][4] ), .A1N(n199), .Y(
        n90) );
  OAI2BB2X1M U206 ( .B0(n199), .B1(n210), .A0N(\mem[7][5] ), .A1N(n199), .Y(
        n91) );
  OAI2BB2X1M U207 ( .B0(n199), .B1(n209), .A0N(\mem[7][6] ), .A1N(n199), .Y(
        n92) );
  OAI2BB2X1M U208 ( .B0(n199), .B1(n208), .A0N(\mem[7][7] ), .A1N(n199), .Y(
        n93) );
  CLKBUFX6M U209 ( .A(N9), .Y(n179) );
  AND3X2M U210 ( .A(n76), .B(n217), .C(waddr[0]), .Y(n69) );
  AO22X1M U211 ( .A0(\mem[3][3] ), .A1(n184), .B0(\mem[1][3] ), .B1(n186), .Y(
        n70) );
  AO22X1M U212 ( .A0(\mem[2][3] ), .A1(n184), .B0(\mem[0][3] ), .B1(n186), .Y(
        n71) );
  AO22X1M U213 ( .A0(\mem[3][4] ), .A1(n184), .B0(\mem[1][4] ), .B1(n186), .Y(
        n74) );
  AO22X1M U214 ( .A0(\mem[2][4] ), .A1(n184), .B0(\mem[0][4] ), .B1(n186), .Y(
        n77) );
  AO22X1M U215 ( .A0(\mem[3][5] ), .A1(n184), .B0(\mem[1][5] ), .B1(n186), .Y(
        n81) );
  AO22X1M U216 ( .A0(\mem[2][5] ), .A1(n184), .B0(\mem[0][5] ), .B1(n186), .Y(
        n85) );
  AO22X1M U217 ( .A0(\mem[3][6] ), .A1(n184), .B0(\mem[1][6] ), .B1(n186), .Y(
        n152) );
  AO22X1M U218 ( .A0(\mem[2][6] ), .A1(n184), .B0(\mem[0][6] ), .B1(n186), .Y(
        n153) );
  AO22X1M U219 ( .A0(\mem[3][7] ), .A1(n183), .B0(\mem[1][7] ), .B1(n185), .Y(
        n156) );
  AO22X1M U220 ( .A0(\mem[2][7] ), .A1(n183), .B0(\mem[0][7] ), .B1(n185), .Y(
        n157) );
  AO22X1M U221 ( .A0(\mem[3][0] ), .A1(n183), .B0(\mem[1][0] ), .B1(n185), .Y(
        n160) );
  AO22X1M U222 ( .A0(\mem[2][0] ), .A1(n183), .B0(\mem[0][0] ), .B1(n185), .Y(
        n161) );
  AO22X1M U223 ( .A0(\mem[3][1] ), .A1(n183), .B0(\mem[1][1] ), .B1(n185), .Y(
        n164) );
  AO22X1M U224 ( .A0(\mem[2][1] ), .A1(n183), .B0(\mem[0][1] ), .B1(n185), .Y(
        n165) );
  AO22X1M U225 ( .A0(\mem[3][2] ), .A1(n183), .B0(\mem[1][2] ), .B1(n185), .Y(
        n168) );
  AO22X1M U226 ( .A0(\mem[2][2] ), .A1(n183), .B0(\mem[0][2] ), .B1(n185), .Y(
        n171) );
  DLY1X1M U227 ( .A(n278), .Y(n220) );
  DLY1X1M U228 ( .A(n279), .Y(n221) );
  DLY1X1M U229 ( .A(n280), .Y(n222) );
  DLY1X1M U230 ( .A(n281), .Y(n223) );
  DLY1X1M U231 ( .A(n240), .Y(n224) );
  DLY1X1M U232 ( .A(n245), .Y(n225) );
  DLY1X1M U233 ( .A(n250), .Y(n226) );
  DLY1X1M U234 ( .A(n255), .Y(n227) );
  DLY1X1M U235 ( .A(n263), .Y(n228) );
  DLY1X1M U236 ( .A(n264), .Y(n229) );
  DLY1X1M U237 ( .A(n240), .Y(n230) );
  DLY1X1M U238 ( .A(n267), .Y(n231) );
  DLY1X1M U239 ( .A(n268), .Y(n232) );
  DLY1X1M U240 ( .A(n245), .Y(n233) );
  DLY1X1M U241 ( .A(n271), .Y(n234) );
  DLY1X1M U242 ( .A(n272), .Y(n235) );
  DLY1X1M U243 ( .A(n250), .Y(n236) );
  DLY1X1M U244 ( .A(n275), .Y(n237) );
  DLY1X1M U245 ( .A(n276), .Y(n238) );
  DLY1X1M U246 ( .A(n255), .Y(n239) );
  DLY1X1M U247 ( .A(n220), .Y(n240) );
  DLY1X1M U248 ( .A(n220), .Y(n241) );
  DLY1X1M U249 ( .A(n278), .Y(n242) );
  DLY1X1M U250 ( .A(n242), .Y(n243) );
  DLY1X1M U251 ( .A(n241), .Y(n244) );
  DLY1X1M U252 ( .A(n221), .Y(n245) );
  DLY1X1M U253 ( .A(n221), .Y(n246) );
  DLY1X1M U254 ( .A(n279), .Y(n247) );
  DLY1X1M U255 ( .A(n247), .Y(n248) );
  DLY1X1M U256 ( .A(n246), .Y(n249) );
  DLY1X1M U257 ( .A(n222), .Y(n250) );
  DLY1X1M U258 ( .A(n222), .Y(n251) );
  DLY1X1M U259 ( .A(n280), .Y(n252) );
  DLY1X1M U260 ( .A(n252), .Y(n253) );
  DLY1X1M U261 ( .A(n251), .Y(n254) );
  DLY1X1M U262 ( .A(n223), .Y(n255) );
  DLY1X1M U263 ( .A(n223), .Y(n256) );
  DLY1X1M U264 ( .A(n281), .Y(n257) );
  DLY1X1M U265 ( .A(n257), .Y(n258) );
  DLY1X1M U266 ( .A(n256), .Y(n259) );
  DLY1X1M U267 ( .A(test_se), .Y(n260) );
  DLY1X1M U268 ( .A(test_se), .Y(n261) );
  DLY1X1M U269 ( .A(n224), .Y(n262) );
  DLY1X1M U270 ( .A(n242), .Y(n263) );
  DLY1X1M U271 ( .A(n241), .Y(n264) );
  DLY1X1M U272 ( .A(n224), .Y(n265) );
  DLY1X1M U273 ( .A(n225), .Y(n266) );
  DLY1X1M U274 ( .A(n247), .Y(n267) );
  DLY1X1M U275 ( .A(n246), .Y(n268) );
  DLY1X1M U276 ( .A(n225), .Y(n269) );
  DLY1X1M U277 ( .A(n226), .Y(n270) );
  DLY1X1M U278 ( .A(n252), .Y(n271) );
  DLY1X1M U279 ( .A(n251), .Y(n272) );
  DLY1X1M U280 ( .A(n226), .Y(n273) );
  DLY1X1M U281 ( .A(n227), .Y(n274) );
  DLY1X1M U282 ( .A(n257), .Y(n275) );
  DLY1X1M U283 ( .A(n256), .Y(n276) );
  DLY1X1M U284 ( .A(n227), .Y(n277) );
  DLY1X1M U285 ( .A(n261), .Y(n278) );
  DLY1X1M U286 ( .A(n260), .Y(n279) );
  DLY1X1M U287 ( .A(n261), .Y(n280) );
  DLY1X1M U288 ( .A(n260), .Y(n281) );
endmodule


module ASYNC_FIFO_TOP_DATA_WIDTH8_ADDR8_test_1 ( test_mode, wclk, wrst_n, winc, 
        wdata, wfull, rclk, rrst_n, rinc, rdata, rempty, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [7:0] wdata;
  output [7:0] rdata;
  input test_mode, wclk, wrst_n, winc, rclk, rrst_n, rinc, test_si2, test_si1,
         test_se;
  output wfull, rempty, test_so2, test_so1;
  wire   N0, sync_wrst_n_raw, sync_rrst_n_raw, sync_wrst_n, sync_rrst_n, n13,
         n14, n15, n17, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n44;
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
  assign N0 = test_mode;
  assign test_so2 = wptr_bin[3];

  SDFFRQX2M \wptr_gray_reg[0]  ( .D(wptr_gray_comb[0]), .SI(sync_wrst_n_raw), 
        .SE(n42), .CK(wclk), .RN(n13), .Q(wptr_gray[0]) );
  SDFFRQX2M \wptr_gray_reg[1]  ( .D(wptr_gray_comb[1]), .SI(wptr_gray[0]), 
        .SE(n38), .CK(wclk), .RN(n13), .Q(wptr_gray[1]) );
  SDFFRQX2M \wptr_gray_reg[2]  ( .D(wptr_gray_comb[2]), .SI(wptr_gray[1]), 
        .SE(n27), .CK(wclk), .RN(n13), .Q(wptr_gray[2]) );
  SDFFRQX2M \wptr_gray_reg[3]  ( .D(wptr_gray_comb[3]), .SI(wptr_gray[2]), 
        .SE(n29), .CK(wclk), .RN(n13), .Q(wptr_gray[3]) );
  SDFFRQX1M \rptr_gray_reg[3]  ( .D(rptr_gray_comb[3]), .SI(rptr_gray[2]), 
        .SE(n42), .CK(rclk), .RN(sync_rrst_n), .Q(rptr_gray[3]) );
  SDFFRQX1M \rptr_gray_reg[0]  ( .D(rptr_gray_comb[0]), .SI(rptr_bin[3]), .SE(
        n37), .CK(rclk), .RN(sync_rrst_n), .Q(rptr_gray[0]) );
  SDFFRQX1M \rptr_gray_reg[2]  ( .D(rptr_gray_comb[2]), .SI(test_si2), .SE(n24), .CK(rclk), .RN(sync_rrst_n), .Q(rptr_gray[2]) );
  SDFFRQX1M \rptr_gray_reg[1]  ( .D(rptr_gray_comb[1]), .SI(rptr_gray[0]), 
        .SE(n25), .CK(rclk), .RN(sync_rrst_n), .Q(rptr_gray[1]) );
  CLKMX2X8M U15 ( .A(sync_rrst_n_raw), .B(rrst_n), .S0(N0), .Y(sync_rrst_n) );
  BUFX2M U16 ( .A(wrst_n), .Y(n15) );
  INVX4M U17 ( .A(n14), .Y(n13) );
  INVX2M U18 ( .A(sync_wrst_n), .Y(n14) );
  MX2X2M U19 ( .A(sync_wrst_n_raw), .B(n15), .S0(N0), .Y(sync_wrst_n) );
  DLY1X1M U20 ( .A(test_se), .Y(n20) );
  DLY1X1M U21 ( .A(n32), .Y(n21) );
  DLY1X1M U22 ( .A(n20), .Y(n22) );
  DLY1X1M U23 ( .A(n40), .Y(n23) );
  DLY1X1M U24 ( .A(n34), .Y(n24) );
  DLY1X1M U25 ( .A(n20), .Y(n25) );
  DLY1X1M U26 ( .A(n23), .Y(n33) );
  INVXLM U27 ( .A(n33), .Y(n26) );
  INVXLM U28 ( .A(n33), .Y(n27) );
  DLY1X1M U29 ( .A(n41), .Y(n35) );
  INVXLM U30 ( .A(n35), .Y(n28) );
  INVXLM U31 ( .A(n35), .Y(n29) );
  DLY1X1M U32 ( .A(n39), .Y(n30) );
  INVXLM U33 ( .A(test_se), .Y(n31) );
  INVXLM U34 ( .A(n31), .Y(n32) );
  INVXLM U35 ( .A(n22), .Y(n40) );
  INVXLM U36 ( .A(n23), .Y(n34) );
  INVXLM U37 ( .A(n21), .Y(n41) );
  DLY1X1M U38 ( .A(n39), .Y(n36) );
  DLY1X1M U39 ( .A(n30), .Y(n37) );
  DLY1X1M U40 ( .A(n30), .Y(n38) );
  DLY1X1M U41 ( .A(n21), .Y(n39) );
  DLY1X1M U42 ( .A(n22), .Y(n42) );
  DLY1X1M U44 ( .A(rptr_gray[1]), .Y(n44) );
  RESET_SYNC_STAGES2_test_1 sync_wreset ( .clk(wclk), .async_rst_n(n15), 
        .sync_rst_n(sync_wrst_n_raw), .test_si(rq2_wptr_gray[3]), .test_se(n25) );
  RESET_SYNC_STAGES2_test_0 sync_rreset ( .clk(rclk), .async_rst_n(rrst_n), 
        .sync_rst_n(sync_rrst_n_raw), .test_si(wq2_rptr_gray[3]), .test_se(n24) );
  FIFO_WR_ADDR8_test_1 wr_logic ( .wclk(wclk), .wrst_n(n13), .winc(winc), 
        .wq2_rptr_bin(wq2_rptr_bin), .wptr_bin(wptr_bin), .waddr(waddr), 
        .wfull(wfull), .test_si(wptr_gray[3]), .test_se(n38) );
  B2G_DATA_WIDTH4_0 b2g_wptr ( .BIN_DATA(wptr_bin), .GRAY_DATA(wptr_gray_comb)
         );
  DFFS_STAGES2_DATA_WIDTH4_test_0 sync_r2w ( .clk(wclk), .rst(n13), .DATA_IN({
        rptr_gray[3:2], n44, rptr_gray[0]}), .DATA_OUT(wq2_rptr_gray), 
        .test_se(n28) );
  G2B_DATA_WIDTH4_0 g2b_rptr ( .GRAY_DATA(wq2_rptr_gray), .BIN_DATA(
        wq2_rptr_bin) );
  FIFO_RD_ADDR8_test_1 rd_logic ( .rclk(rclk), .rrst_n(sync_rrst_n), .rinc(
        rinc), .rq2_wptr_bin(rq2_wptr_bin), .rptr_bin(rptr_bin), .raddr(raddr), 
        .rempty(rempty), .test_si(n17), .test_se(n37) );
  B2G_DATA_WIDTH4_1 b2g_rptr ( .BIN_DATA(rptr_bin), .GRAY_DATA(rptr_gray_comb)
         );
  DFFS_STAGES2_DATA_WIDTH4_test_1 sync_w2r ( .clk(rclk), .rst(sync_rrst_n), 
        .DATA_IN(wptr_gray), .DATA_OUT(rq2_wptr_gray), .test_si(
        sync_rrst_n_raw), .test_se(n26) );
  G2B_DATA_WIDTH4_1 g2b_wptr ( .GRAY_DATA(rq2_wptr_gray), .BIN_DATA(
        rq2_wptr_bin) );
  FIFO_MEM_DATA_WIDTH8_ADDR8_test_1 memory_core ( .wclk(wclk), .wrst_n(n13), 
        .winc(winc), .wfull(wfull), .waddr(waddr), .raddr(raddr), .wdata(wdata), .rdata(rdata), .test_si(test_si1), .test_so(n17), .test_se(n36) );
  BUFX2M U3 ( .A(rptr_gray[1]), .Y(test_so1) );
endmodule


module Serializer_test_1 ( P_DATA, ser_en, clk, rst, ser_data, ser_done, 
        test_si, test_so, test_se );
  input [7:0] P_DATA;
  input ser_en, clk, rst, test_si, test_se;
  output ser_data, ser_done, test_so;
  wire   N34, N40, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n1, n2, n14, n15, n16, n17, n18, n46, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58;
  wire   [7:0] shift_reg;
  wire   [3:0] count;
  assign test_so = shift_reg[6];
  assign ser_done = N40;

  SDFFRQX2M \shift_reg_reg[6]  ( .D(n37), .SI(shift_reg[5]), .SE(n51), .CK(clk), .RN(n1), .Q(shift_reg[6]) );
  SDFFRQX2M \shift_reg_reg[5]  ( .D(n38), .SI(shift_reg[4]), .SE(n52), .CK(clk), .RN(n1), .Q(shift_reg[5]) );
  SDFFRQX2M \shift_reg_reg[4]  ( .D(n39), .SI(shift_reg[3]), .SE(n51), .CK(clk), .RN(n1), .Q(shift_reg[4]) );
  SDFFRQX2M \shift_reg_reg[3]  ( .D(n40), .SI(shift_reg[2]), .SE(n58), .CK(clk), .RN(n1), .Q(shift_reg[3]) );
  SDFFRQX2M \shift_reg_reg[2]  ( .D(n41), .SI(shift_reg[1]), .SE(n57), .CK(clk), .RN(n1), .Q(shift_reg[2]) );
  SDFFRQX2M \shift_reg_reg[1]  ( .D(n42), .SI(n46), .SE(n56), .CK(clk), .RN(n1), .Q(shift_reg[1]) );
  SDFFRX1M \shift_reg_reg[0]  ( .D(n36), .SI(count[3]), .SE(n55), .CK(clk), 
        .RN(n1), .Q(n46), .QN(n19) );
  SDFFSQX2M \count_reg[3]  ( .D(n43), .SI(count[2]), .SE(n57), .CK(clk), .SN(
        n1), .Q(count[3]) );
  SDFFRQX2M \count_reg[1]  ( .D(n15), .SI(n48), .SE(n55), .CK(clk), .RN(n1), 
        .Q(count[1]) );
  SDFFRQX2M \count_reg[2]  ( .D(n14), .SI(count[1]), .SE(n52), .CK(clk), .RN(
        n1), .Q(count[2]) );
  SDFFRQX2M \count_reg[0]  ( .D(n44), .SI(test_si), .SE(n58), .CK(clk), .RN(n1), .Q(count[0]) );
  NOR2X2M U10 ( .A(count[1]), .B(count[0]), .Y(n33) );
  INVX4M U15 ( .A(n34), .Y(n2) );
  INVX2M U16 ( .A(n34), .Y(n16) );
  AND2X2M U17 ( .A(ser_en), .B(n35), .Y(N34) );
  NAND2X2M U18 ( .A(ser_en), .B(n35), .Y(n34) );
  NOR2BX8M U19 ( .AN(n2), .B(n29), .Y(n22) );
  NAND2X2M U20 ( .A(n30), .B(n29), .Y(n35) );
  INVX2M U21 ( .A(n33), .Y(n18) );
  NOR2BX8M U22 ( .AN(n2), .B(n30), .Y(n21) );
  INVX2M U23 ( .A(n29), .Y(n17) );
  CLKBUFX6M U24 ( .A(rst), .Y(n1) );
  OAI2B1X2M U25 ( .A1N(shift_reg[1]), .A0(n16), .B0(n28), .Y(n42) );
  AOI22X1M U26 ( .A0(shift_reg[2]), .A1(n21), .B0(P_DATA[2]), .B1(n22), .Y(n28) );
  OAI2B1X2M U27 ( .A1N(shift_reg[2]), .A0(n2), .B0(n27), .Y(n41) );
  AOI22X1M U28 ( .A0(shift_reg[3]), .A1(n21), .B0(P_DATA[3]), .B1(n22), .Y(n27) );
  OAI2B1X2M U29 ( .A1N(shift_reg[3]), .A0(N34), .B0(n26), .Y(n40) );
  AOI22X1M U30 ( .A0(shift_reg[4]), .A1(n21), .B0(P_DATA[4]), .B1(n22), .Y(n26) );
  OAI2B1X2M U31 ( .A1N(shift_reg[4]), .A0(N34), .B0(n25), .Y(n39) );
  AOI22X1M U32 ( .A0(shift_reg[5]), .A1(n21), .B0(P_DATA[5]), .B1(n22), .Y(n25) );
  OAI2B1X2M U33 ( .A1N(shift_reg[5]), .A0(n2), .B0(n24), .Y(n38) );
  AOI22X1M U34 ( .A0(shift_reg[6]), .A1(n21), .B0(P_DATA[6]), .B1(n22), .Y(n24) );
  OAI21X2M U35 ( .A0(n2), .A1(n19), .B0(n20), .Y(n36) );
  AOI22X1M U36 ( .A0(shift_reg[1]), .A1(n21), .B0(P_DATA[1]), .B1(n22), .Y(n20) );
  OAI2B1X2M U37 ( .A1N(shift_reg[6]), .A0(n2), .B0(n23), .Y(n37) );
  NAND2XLM U38 ( .A(P_DATA[7]), .B(n22), .Y(n23) );
  NOR2X6M U39 ( .A(n18), .B(count[2]), .Y(n30) );
  NAND2X2M U40 ( .A(count[3]), .B(n30), .Y(n29) );
  INVX2M U41 ( .A(n31), .Y(n14) );
  AOI32X1M U42 ( .A0(count[2]), .A1(n18), .A2(n16), .B0(n17), .B1(ser_en), .Y(
        n31) );
  INVX2M U43 ( .A(n32), .Y(n15) );
  AOI32X1M U44 ( .A0(count[1]), .A1(n16), .A2(count[0]), .B0(n33), .B1(n16), 
        .Y(n32) );
  OAI2B1X2M U45 ( .A1N(count[3]), .A0(n30), .B0(ser_en), .Y(n43) );
  NOR4BX2M U46 ( .AN(count[0]), .B(count[3]), .C(count[2]), .D(count[1]), .Y(
        N40) );
  NOR2X2M U47 ( .A(n48), .B(n34), .Y(n44) );
  OAI2BB2X1M U48 ( .B0(n17), .B1(n19), .A0N(P_DATA[0]), .A1N(n17), .Y(ser_data) );
  DLY1X1M U49 ( .A(count[0]), .Y(n48) );
  DLY1X1M U50 ( .A(test_se), .Y(n49) );
  DLY1X1M U51 ( .A(n53), .Y(n50) );
  DLY1X1M U52 ( .A(n56), .Y(n51) );
  DLY1X1M U53 ( .A(n50), .Y(n52) );
  DLY1X1M U54 ( .A(n49), .Y(n53) );
  DLY1X1M U55 ( .A(n49), .Y(n54) );
  DLY1X1M U56 ( .A(n53), .Y(n55) );
  DLY1X1M U57 ( .A(n54), .Y(n56) );
  DLY1X1M U58 ( .A(n54), .Y(n57) );
  DLY1X1M U59 ( .A(n50), .Y(n58) );
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
  XOR3XLM U6 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n5), .Y(n2) );
  XOR3XLM U7 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n4), .Y(n3) );
endmodule


module FSM_test_1 ( DATA_VALID, ser_done, clk, rst, PAR_EN, Busy, ser_en, 
        mux_sel, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input DATA_VALID, ser_done, clk, rst, PAR_EN, test_si, test_se;
  output Busy, ser_en, test_so;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n4, n5, n6, n7, n8, n19, n20,
         n21;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = current_state[2];

  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(n19), 
        .CK(clk), .RN(rst), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(n19), .CK(clk), .RN(rst), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(n20), .CK(clk), .RN(rst), .Q(current_state[1]) );
  AOI21X2M U6 ( .A0(n5), .A1(n4), .B0(current_state[2]), .Y(n15) );
  INVX2M U7 ( .A(n9), .Y(ser_en) );
  AND2X2M U8 ( .A(n11), .B(n6), .Y(n14) );
  NAND2X2M U9 ( .A(n15), .B(n10), .Y(mux_sel[0]) );
  INVX4M U10 ( .A(current_state[1]), .Y(n5) );
  NAND3X4M U11 ( .A(n4), .B(n6), .C(current_state[1]), .Y(n10) );
  INVX2M U12 ( .A(current_state[0]), .Y(n4) );
  NAND2X2M U13 ( .A(current_state[0]), .B(n6), .Y(n11) );
  INVX2M U14 ( .A(current_state[2]), .Y(n6) );
  NAND2X2M U15 ( .A(n21), .B(n14), .Y(n9) );
  NAND3X2M U16 ( .A(n10), .B(n11), .C(n16), .Y(Busy) );
  NAND3X2M U17 ( .A(n4), .B(n5), .C(current_state[2]), .Y(n16) );
  OAI32X2M U18 ( .A0(n7), .A1(PAR_EN), .A2(n10), .B0(n5), .B1(n11), .Y(
        next_state[2]) );
  OAI31X2M U19 ( .A0(n8), .A1(n7), .A2(n9), .B0(n13), .Y(next_state[0]) );
  INVX2M U20 ( .A(PAR_EN), .Y(n8) );
  NAND3X2M U21 ( .A(n14), .B(n5), .C(DATA_VALID), .Y(n13) );
  OAI22X1M U22 ( .A0(current_state[1]), .A1(n11), .B0(n12), .B1(n10), .Y(
        next_state[1]) );
  NOR2X2M U23 ( .A(PAR_EN), .B(n7), .Y(n12) );
  INVX2M U24 ( .A(ser_done), .Y(n7) );
  OAI21X2M U25 ( .A0(n4), .A1(n5), .B0(n15), .Y(mux_sel[1]) );
  DLY1X1M U26 ( .A(n20), .Y(n19) );
  DLY1X1M U27 ( .A(test_se), .Y(n20) );
  INVXLM U28 ( .A(n5), .Y(n21) );
endmodule


module UART_TOP_TX_test_1 ( P_DATA, Data_Valid, clk, rst, PAR_EN, PAR_TYP, 
        TX_out, Busy, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input Data_Valid, clk, rst, PAR_EN, PAR_TYP, test_si, test_se;
  output TX_out, Busy, test_so;
  wire   ser_en_wire, ser_done_wire, ser_data_wire, par_bit_wire, n3;
  wire   [1:0] mux_sel_wire;

  Serializer_test_1 Ser ( .P_DATA(P_DATA), .ser_en(ser_en_wire), .clk(clk), 
        .rst(rst), .ser_data(ser_data_wire), .ser_done(ser_done_wire), 
        .test_si(test_si), .test_so(n3), .test_se(test_se) );
  MUX mux ( .IO(1'b0), .I1(ser_data_wire), .I2(par_bit_wire), .I3(1'b1), .sel(
        mux_sel_wire), .Op(TX_out) );
  Parity par ( .P_DATA(P_DATA), .DATA_VALID(Data_Valid), .PAR_TYP(PAR_TYP), 
        .par_bit(par_bit_wire) );
  FSM_test_1 fsm ( .DATA_VALID(Data_Valid), .ser_done(ser_done_wire), .clk(clk), .rst(rst), .PAR_EN(PAR_EN), .Busy(Busy), .ser_en(ser_en_wire), .mux_sel(
        mux_sel_wire), .test_si(n3), .test_so(test_so), .test_se(test_se) );
endmodule


module PULSE_GEN_test_1 ( CLK, RST, LVL_SIG, PULSE_SIG, test_si, test_so, 
        test_se );
  input CLK, RST, LVL_SIG, test_si, test_se;
  output PULSE_SIG, test_so;
  wire   lvl_sig_q;
  assign test_so = lvl_sig_q;

  SDFFRQX2M lvl_sig_q_reg ( .D(LVL_SIG), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(lvl_sig_q) );
  NOR2BX2M U4 ( .AN(lvl_sig_q), .B(LVL_SIG), .Y(PULSE_SIG) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n4), .CI(
        \u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
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
  INVX8M U1 ( .A(b[0]), .Y(n6) );
  AND3X4M U2 ( .A(\u_div/CryTmp[4][4] ), .B(n2), .C(n1), .Y(quotient[4]) );
  CLKAND2X4M U3 ( .A(\u_div/CryTmp[3][5] ), .B(n1), .Y(quotient[3]) );
  AND3X2M U4 ( .A(n7), .B(n4), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  NOR3X6M U5 ( .A(b[4]), .B(b[5]), .C(b[3]), .Y(n7) );
  MX2X1M U6 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  MX2X1M U7 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2X1M U8 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  MX2X1M U9 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  MX2X1M U10 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKAND2X2M U11 ( .A(\u_div/CryTmp[5][3] ), .B(n7), .Y(quotient[5]) );
  MX2X1M U12 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  MX2X1M U13 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2X1M U14 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2X1M U15 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  OR2X4M U16 ( .A(\u_div/CryTmp[1][6] ), .B(\u_div/PartRem[2][6] ), .Y(
        quotient[1]) );
  OR2X2M U17 ( .A(\u_div/CryTmp[0][6] ), .B(\u_div/PartRem[1][6] ), .Y(
        quotient[0]) );
  INVX4M U18 ( .A(b[1]), .Y(n5) );
  INVX4M U19 ( .A(b[2]), .Y(n4) );
  OR2X2M U20 ( .A(a[7]), .B(n6), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U21 ( .A(n6), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U22 ( .A(n6), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U23 ( .A(n6), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U24 ( .A(n6), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U25 ( .A(n6), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U26 ( .A(n6), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U27 ( .A(n6), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  OR2X2M U28 ( .A(a[5]), .B(n6), .Y(\u_div/CryTmp[5][1] ) );
  OR2X2M U29 ( .A(a[4]), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U30 ( .A(a[3]), .B(n6), .Y(\u_div/CryTmp[3][1] ) );
  OR2X2M U31 ( .A(a[2]), .B(n6), .Y(\u_div/CryTmp[2][1] ) );
  OR2X2M U32 ( .A(a[1]), .B(n6), .Y(\u_div/CryTmp[1][1] ) );
  NAND2BX2M U33 ( .AN(a[0]), .B(b[0]), .Y(\u_div/CryTmp[0][1] ) );
  OR2X2M U34 ( .A(a[6]), .B(n6), .Y(\u_div/CryTmp[6][1] ) );
  INVX4M U35 ( .A(b[4]), .Y(n2) );
  INVX4M U36 ( .A(b[3]), .Y(n3) );
  INVX4M U37 ( .A(b[5]), .Y(n1) );
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


module SYS_TOP ( REF_CLK, UART_CLK, scan_clk, scan_rst, SI, SE, test_mode, RST, 
        RX_IN, TX_OUT, SO );
  input [4:0] SI;
  output [4:0] SO;
  input REF_CLK, UART_CLK, scan_clk, scan_rst, SE, test_mode, RST, RX_IN;
  output TX_OUT;
  wire   N9, N20, N21, N22, N23, N24, N25, N26, N27, sync_clk_div_en,
         sys_rst_n, CLK_r, CLK_u, CLK_RX, rx_clk, CLK_TX, tx_clk, RST_r,
         sync_rst_1, RST_u, sync_rst_2, RST_RX, RST_TX, sync_clk_div_en_ff1,
         uart_rx_valid_reg, uart_rx_valid, _0_net_, alu_clk, gate_en,
         alu_out_valid, rd_data_valid, sync_rx_d_vld, fifo_full, alu_en, wr_en,
         rd_en, tx_d_vld, rd_inc, f_empty, tx_busy, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n26, n27, n28, n29, n117, n34, n35,
         n36, n37, n40, n41, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n118, n120;
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
  assign N9 = test_mode;

  TLATNCAX2M U0 ( .E(_0_net_), .CK(CLK_r), .ECK(alu_clk) );
  SDFFRQX2M \uart_rx_p_data_reg_reg[0]  ( .D(uart_rx_p_data[0]), .SI(n26), 
        .SE(n78), .CK(CLK_RX), .RN(n20), .Q(uart_rx_p_data_reg[0]) );
  SDFFRQX2M \uart_rx_p_data_reg_reg[1]  ( .D(uart_rx_p_data[1]), .SI(
        uart_rx_p_data_reg[0]), .SE(n63), .CK(CLK_RX), .RN(n20), .Q(
        uart_rx_p_data_reg[1]) );
  SDFFRQX2M \uart_rx_p_data_reg_reg[2]  ( .D(uart_rx_p_data[2]), .SI(
        uart_rx_p_data_reg[1]), .SE(n69), .CK(CLK_RX), .RN(n20), .Q(
        uart_rx_p_data_reg[2]) );
  SDFFRQX2M \uart_rx_p_data_reg_reg[3]  ( .D(uart_rx_p_data[3]), .SI(
        uart_rx_p_data_reg[2]), .SE(n69), .CK(CLK_RX), .RN(n20), .Q(
        uart_rx_p_data_reg[3]) );
  SDFFRQX2M \uart_rx_p_data_reg_reg[4]  ( .D(uart_rx_p_data[4]), .SI(
        uart_rx_p_data_reg[3]), .SE(n89), .CK(CLK_RX), .RN(n20), .Q(
        uart_rx_p_data_reg[4]) );
  SDFFRQX2M \uart_rx_p_data_reg_reg[5]  ( .D(uart_rx_p_data[5]), .SI(
        uart_rx_p_data_reg[4]), .SE(SE), .CK(CLK_RX), .RN(n20), .Q(
        uart_rx_p_data_reg[5]) );
  SDFFRQX2M \uart_rx_p_data_reg_reg[6]  ( .D(uart_rx_p_data[6]), .SI(
        uart_rx_p_data_reg[5]), .SE(n68), .CK(CLK_RX), .RN(n20), .Q(
        uart_rx_p_data_reg[6]) );
  SDFFRQX2M \uart_rx_p_data_reg_reg[7]  ( .D(uart_rx_p_data[7]), .SI(
        uart_rx_p_data_reg[6]), .SE(n67), .CK(CLK_RX), .RN(n20), .Q(
        uart_rx_p_data_reg[7]) );
  SDFFRQX2M sync_clk_div_en_ff2_reg ( .D(sync_clk_div_en_ff1), .SI(
        sync_clk_div_en_ff1), .SE(n68), .CK(CLK_u), .RN(RST_u), .Q(
        sync_clk_div_en) );
  SDFFRQX2M uart_rx_valid_reg_reg ( .D(uart_rx_valid), .SI(
        uart_rx_p_data_reg[7]), .SE(n67), .CK(CLK_RX), .RN(n20), .Q(
        uart_rx_valid_reg) );
  SDFFRQX1M sync_clk_div_en_ff1_reg ( .D(1'b1), .SI(n40), .SE(n62), .CK(CLK_u), 
        .RN(RST_u), .Q(sync_clk_div_en_ff1) );
  CLKMX2X4M U36 ( .A(sync_rst_2), .B(n18), .S0(n17), .Y(RST_TX) );
  BUFX6M U37 ( .A(N9), .Y(n17) );
  INVX4M U38 ( .A(n23), .Y(n22) );
  INVX4M U39 ( .A(n19), .Y(n24) );
  INVX2M U40 ( .A(f_empty), .Y(n13) );
  OR2X2M U41 ( .A(gate_en), .B(n17), .Y(_0_net_) );
  AO22X4M U42 ( .A0(N20), .A1(n24), .B0(div_ratio[0]), .B1(n19), .Y(
        rx_div_ratio[0]) );
  AO22X4M U43 ( .A0(N21), .A1(n24), .B0(div_ratio[1]), .B1(n19), .Y(
        rx_div_ratio[1]) );
  AO22X4M U44 ( .A0(N22), .A1(n24), .B0(div_ratio[2]), .B1(n19), .Y(
        rx_div_ratio[2]) );
  AO22X4M U45 ( .A0(N23), .A1(n24), .B0(div_ratio[3]), .B1(n19), .Y(
        rx_div_ratio[3]) );
  AO22X4M U46 ( .A0(N24), .A1(n24), .B0(div_ratio[4]), .B1(n19), .Y(
        rx_div_ratio[4]) );
  AO22X4M U47 ( .A0(N25), .A1(n24), .B0(div_ratio[5]), .B1(n19), .Y(
        rx_div_ratio[5]) );
  AO22X4M U48 ( .A0(N26), .A1(n24), .B0(div_ratio[6]), .B1(n19), .Y(
        rx_div_ratio[6]) );
  AO22X4M U49 ( .A0(N27), .A1(n24), .B0(div_ratio[7]), .B1(n19), .Y(
        rx_div_ratio[7]) );
  CLKBUFX6M U50 ( .A(n14), .Y(n19) );
  NOR4X2M U51 ( .A(prescale[2]), .B(prescale[1]), .C(prescale[0]), .D(n15), 
        .Y(n14) );
  OR3X2M U52 ( .A(prescale[5]), .B(prescale[4]), .C(prescale[3]), .Y(n15) );
  MX2X2M U53 ( .A(RST), .B(n18), .S0(n17), .Y(sys_rst_n) );
  INVX6M U54 ( .A(n21), .Y(n20) );
  INVX2M U55 ( .A(RST_RX), .Y(n21) );
  MX2X2M U56 ( .A(sync_rst_2), .B(n18), .S0(n17), .Y(RST_RX) );
  INVX2M U57 ( .A(RST_r), .Y(n23) );
  MX2X2M U58 ( .A(sync_rst_1), .B(n18), .S0(n17), .Y(RST_r) );
  BUFX4M U59 ( .A(scan_rst), .Y(n18) );
  MX2X2M U60 ( .A(sync_rst_2), .B(n18), .S0(n17), .Y(RST_u) );
  BUFX2M U61 ( .A(RX_IN), .Y(n16) );
  MX2X6M U62 ( .A(tx_clk), .B(scan_clk), .S0(n17), .Y(CLK_TX) );
  MX2X6M U63 ( .A(rx_clk), .B(scan_clk), .S0(n17), .Y(CLK_RX) );
  MX2X6M U64 ( .A(UART_CLK), .B(scan_clk), .S0(n17), .Y(CLK_u) );
  MX2X6M U65 ( .A(REF_CLK), .B(scan_clk), .S0(n17), .Y(CLK_r) );
  DLY1X1M U68 ( .A(n112), .Y(n44) );
  DLY1X1M U69 ( .A(n61), .Y(n45) );
  DLY1X1M U70 ( .A(sync_clk_div_en), .Y(n46) );
  DLY1X1M U71 ( .A(sync_clk_div_en), .Y(n47) );
  DLY1X1M U72 ( .A(sync_clk_div_en), .Y(n48) );
  DLY1X1M U73 ( .A(n70), .Y(n49) );
  DLY1X1M U74 ( .A(n71), .Y(n50) );
  DLY1X1M U75 ( .A(n73), .Y(n51) );
  DLY1X1M U76 ( .A(n74), .Y(n52) );
  DLY1X1M U77 ( .A(n76), .Y(n53) );
  DLY1X1M U78 ( .A(n79), .Y(n54) );
  DLY1X1M U79 ( .A(n80), .Y(n55) );
  DLY1X1M U80 ( .A(n82), .Y(n56) );
  DLY1X1M U81 ( .A(n86), .Y(n57) );
  DLY1X1M U82 ( .A(n87), .Y(n58) );
  DLY1X1M U83 ( .A(n88), .Y(n59) );
  DLY1X1M U84 ( .A(n98), .Y(n60) );
  DLY1X1M U85 ( .A(n115), .Y(n61) );
  DLY1X1M U86 ( .A(n108), .Y(n62) );
  DLY1X1M U87 ( .A(n65), .Y(n63) );
  INVXLM U88 ( .A(n77), .Y(n64) );
  INVXLM U89 ( .A(n64), .Y(n65) );
  DLY1X1M U90 ( .A(n101), .Y(n66) );
  DLY1X1M U91 ( .A(n83), .Y(n67) );
  DLY1X1M U92 ( .A(n84), .Y(n68) );
  DLY1X1M U93 ( .A(n110), .Y(n69) );
  INVXLM U94 ( .A(n85), .Y(n70) );
  INVXLM U95 ( .A(n49), .Y(n71) );
  INVXLM U96 ( .A(n49), .Y(n72) );
  INVXLM U97 ( .A(n107), .Y(n73) );
  INVXLM U98 ( .A(n51), .Y(n74) );
  INVXLM U99 ( .A(n51), .Y(n75) );
  INVXLM U100 ( .A(n109), .Y(n76) );
  INVXLM U101 ( .A(n53), .Y(n77) );
  INVXLM U102 ( .A(n53), .Y(n78) );
  INVXLM U103 ( .A(n113), .Y(n79) );
  INVXLM U104 ( .A(n54), .Y(n80) );
  INVXLM U105 ( .A(n54), .Y(n81) );
  INVXLM U106 ( .A(n62), .Y(n82) );
  INVXLM U107 ( .A(n56), .Y(n83) );
  INVXLM U108 ( .A(n56), .Y(n84) );
  INVXLM U109 ( .A(n104), .Y(n85) );
  INVXLM U110 ( .A(n50), .Y(n86) );
  INVXLM U111 ( .A(n72), .Y(n87) );
  INVXLM U112 ( .A(n50), .Y(n88) );
  DLY1X1M U113 ( .A(n99), .Y(n89) );
  DLY1X1M U114 ( .A(n100), .Y(n90) );
  DLY1X1M U115 ( .A(n105), .Y(n91) );
  DLY1X1M U116 ( .A(n106), .Y(n92) );
  DLY1X1M U117 ( .A(n102), .Y(n93) );
  DLY1X1M U118 ( .A(n96), .Y(n94) );
  INVXLM U119 ( .A(n58), .Y(n95) );
  INVXLM U120 ( .A(n59), .Y(n96) );
  DLY1X1M U121 ( .A(SE), .Y(n97) );
  INVXLM U122 ( .A(n114), .Y(n98) );
  INVXLM U123 ( .A(n60), .Y(n99) );
  INVXLM U124 ( .A(n60), .Y(n100) );
  INVXLM U125 ( .A(n57), .Y(n101) );
  INVXLM U126 ( .A(n59), .Y(n102) );
  DLY1X1M U127 ( .A(SE), .Y(n103) );
  INVXLM U128 ( .A(n61), .Y(n104) );
  INVXLM U129 ( .A(n58), .Y(n105) );
  INVXLM U130 ( .A(n57), .Y(n106) );
  INVXLM U131 ( .A(n116), .Y(n107) );
  INVXLM U132 ( .A(n75), .Y(n108) );
  INVXLM U133 ( .A(n52), .Y(n109) );
  INVXLM U134 ( .A(n52), .Y(n110) );
  DLY1X1M U135 ( .A(n112), .Y(n111) );
  DLY1X1M U136 ( .A(n89), .Y(n112) );
  INVXLM U137 ( .A(SE), .Y(n113) );
  INVXLM U138 ( .A(n55), .Y(n114) );
  INVXLM U139 ( .A(n81), .Y(n115) );
  INVXLM U140 ( .A(n55), .Y(n116) );
  RESET_SYNC_STAGES2_test_2 u_RST_SYNC_1 ( .clk(CLK_r), .async_rst_n(sys_rst_n), .sync_rst_n(sync_rst_1), .test_si(n34), .test_se(n93) );
  RESET_SYNC_STAGES2_test_3 u_RST_SYNC_2 ( .clk(CLK_u), .async_rst_n(sys_rst_n), .sync_rst_n(sync_rst_2), .test_si(sync_rst_1), .test_se(n66) );
  CLK_DIV_test_0 u_CLK_DIV_TX ( .i_ref_clk(CLK_u), .i_rst_n(RST_u), .i_clk_en(
        n46), .i_div_ratio(div_ratio), .o_div_clk(tx_clk), .test_si2(n36), 
        .test_si1(n41), .test_so2(n35), .test_so1(n40), .test_se(n90) );
  CLK_DIV_test_1 u_CLK_DIV_RX ( .i_ref_clk(CLK_u), .i_rst_n(RST_u), .i_clk_en(
        n47), .i_div_ratio(rx_div_ratio), .o_div_clk(rx_clk), .test_si2(n37), 
        .test_si1(SI[0]), .test_so2(n36), .test_so1(n41), .test_se(n45) );
  SYS_CTRL_test_1 u_SYS_CTRL ( .CLK(CLK_r), .RST(n22), .ALU_OUT(alu_out), 
        .OUT_Valid(alu_out_valid), .RdData(rd_data_rf), .RdData_Valid(
        rd_data_valid), .RX_P_DATA(sync_rx_p_data), .RX_D_VLD(sync_rx_d_vld), 
        .FIFO_FULL(fifo_full), .ALU_FUN(alu_fun), .EN(alu_en), .CLK_EN(gate_en), .Address(address), .WrEn(wr_en), .RdEn(rd_en), .WrData(wr_data), .TX_P_DATA(
        tx_p_data), .TX_D_VLD(tx_d_vld), .test_si(n29), .test_so(n28), 
        .test_se(n92) );
  RegisterFile_DATA_WIDTH8_DATA_DEPTH16_ADDR_WIDTH4_test_1 u_RegFile ( .CLK(
        CLK_r), .RST(n22), .Address(address), .WrEn(wr_en), .RdEn(rd_en), 
        .WrData(wr_data), .RdData(rd_data_rf), .RdData_Valid(rd_data_valid), 
        .REG0(op_a), .REG1(op_b), .REG2({prescale, uart_config}), .REG3(
        div_ratio), .test_si3(SI[3]), .test_si2(SI[2]), .test_si1(sync_rst_2), 
        .test_so3(n29), .test_so2(SO[2]), .test_so1(n117), .test_se(n111) );
  ALU_8B_test_1 u_ALU ( .clk(alu_clk), .rst(n22), .A(op_a), .B(op_b), .ALU_EN(
        alu_en), .ALU_FUN(alu_fun), .ALU_OUT(alu_out), .Valid(alu_out_valid), 
        .test_si(n48), .test_se(n94) );
  UART_RX_TOP_test_1 u_UART_RX ( .clk(CLK_RX), .rst(n20), .PRESCALE(prescale), 
        .RX_IN(n16), .PAR_EN(uart_config[0]), .PAR_TYP(uart_config[1]), 
        .P_DATA(uart_rx_p_data), .data_valid(uart_rx_valid), .test_si(n28), 
        .test_so(n27), .test_se(n103) );
  DATA_SYNC_STAGES2_BUS_WIDTH8_test_1 u_DATA_SYNC ( .CLK(CLK_r), .RST(n22), 
        .UNSYNC_BUS(uart_rx_p_data_reg), .bus_enable(n120), .sync_bus(
        sync_rx_p_data), .enable_pulse(sync_rx_d_vld), .test_si(n35), 
        .test_se(n91) );
  ASYNC_FIFO_TOP_DATA_WIDTH8_ADDR8_test_1 u_ASYNC_FIFO ( .test_mode(n17), 
        .wclk(CLK_r), .wrst_n(n22), .winc(tx_d_vld), .wdata(tx_p_data), 
        .wfull(fifo_full), .rclk(CLK_TX), .rrst_n(RST_TX), .rinc(rd_inc), 
        .rdata(rd_data_fifo), .rempty(f_empty), .test_si2(SI[1]), .test_si1(
        alu_out_valid), .test_so2(n37), .test_so1(SO[0]), .test_se(n97) );
  UART_TOP_TX_test_1 u_UART_TX ( .P_DATA(rd_data_fifo), .Data_Valid(n13), 
        .clk(CLK_TX), .rst(RST_TX), .PAR_EN(uart_config[0]), .PAR_TYP(
        uart_config[1]), .TX_out(TX_OUT), .Busy(tx_busy), .test_si(n27), 
        .test_so(n26), .test_se(n44) );
  PULSE_GEN_test_1 u_Pulse ( .CLK(CLK_TX), .RST(RST_TX), .LVL_SIG(tx_busy), 
        .PULSE_SIG(rd_inc), .test_si(sync_rx_p_data[7]), .test_so(n34), 
        .test_se(n95) );
  SYS_TOP_DW_div_uns_0 div_50 ( .a(div_ratio), .b(prescale), .quotient({N27, 
        N26, N25, N24, N23, N22, N21, N20}) );
  INVX2M U67 ( .A(uart_rx_valid_reg), .Y(n118) );
  CLKINVX2M U141 ( .A(n118), .Y(SO[3]) );
  INVXLM U142 ( .A(n118), .Y(n120) );
  BUFX2M U143 ( .A(n117), .Y(SO[1]) );
endmodule

