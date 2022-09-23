/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Sun Apr 22 03:39:28 2018
/////////////////////////////////////////////////////////////


module PTM_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module PTM_DW01_inc_1 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module PTM ( clk, rst, start, data, en, addr, flag, fin, result );
  input [9:0] data;
  output [9:0] addr;
  output [9:0] result;
  input clk, rst, start;
  output en, flag, fin;
  wire   N10, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N60, N61, N62,
         N63, N64, N65, N66, N67, N68, N69, N80, N96, n5, n7, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n308, n309, n310, n311;
  wire   [3:0] state;
  wire   [9:0] ans;
  wire   [3:0] next_state;
  wire   [9:0] next_num;
  assign en = 1'b1;

  PTM_DW01_inc_0 add_76 ( .A(ans), .SUM({N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}) );
  PTM_DW01_inc_1 add_33 ( .A(addr), .SUM({N21, N20, N19, N18, N17, N16, N15, 
        N14, N13, N12}) );
  DFFRX1 \leng_reg[9]  ( .D(n67), .CK(clk), .RN(n304), .QN(n46) );
  DFFRX1 \leng_reg[0]  ( .D(n66), .CK(clk), .RN(n304), .QN(n45) );
  DFFRX1 \leng_reg[1]  ( .D(n65), .CK(clk), .RN(n304), .QN(n44) );
  DFFRX1 \leng_reg[2]  ( .D(n64), .CK(clk), .RN(n304), .QN(n43) );
  DFFRX1 \leng_reg[3]  ( .D(n63), .CK(clk), .RN(n304), .QN(n42) );
  DFFRX1 \leng_reg[4]  ( .D(n62), .CK(clk), .RN(n304), .QN(n41) );
  DFFRX1 \leng_reg[5]  ( .D(n61), .CK(clk), .RN(n304), .QN(n40) );
  DFFRX1 \leng_reg[6]  ( .D(n60), .CK(clk), .RN(n304), .QN(n39) );
  DFFRX1 \leng_reg[7]  ( .D(n59), .CK(clk), .RN(n304), .QN(n38) );
  DFFRX1 \leng_reg[8]  ( .D(n58), .CK(clk), .RN(n304), .QN(n37) );
  DFFRX1 \ans_reg[9]  ( .D(n68), .CK(clk), .RN(n304), .Q(ans[9]), .QN(n47) );
  DFFSX1 \num_reg[9]  ( .D(next_num[9]), .CK(clk), .SN(n304), .Q(addr[9]) );
  DFFRX1 \ans_reg[8]  ( .D(n77), .CK(clk), .RN(n304), .Q(ans[8]), .QN(n56) );
  DFFRX1 \ans_reg[1]  ( .D(n75), .CK(clk), .RN(n304), .Q(ans[1]), .QN(n54) );
  DFFRX1 \ans_reg[2]  ( .D(n74), .CK(clk), .RN(n304), .Q(ans[2]), .QN(n53) );
  DFFRX1 \ans_reg[3]  ( .D(n73), .CK(clk), .RN(n304), .Q(ans[3]), .QN(n52) );
  DFFRX1 \ans_reg[4]  ( .D(n72), .CK(clk), .RN(n304), .Q(ans[4]), .QN(n51) );
  DFFRX1 \ans_reg[5]  ( .D(n71), .CK(clk), .RN(n304), .Q(ans[5]), .QN(n50) );
  DFFRX1 \ans_reg[6]  ( .D(n70), .CK(clk), .RN(n304), .Q(ans[6]), .QN(n49) );
  DFFRX1 \ans_reg[7]  ( .D(n69), .CK(clk), .RN(n304), .Q(ans[7]), .QN(n48) );
  DFFSX1 \num_reg[6]  ( .D(next_num[6]), .CK(clk), .SN(n304), .Q(addr[6]), 
        .QN(n33) );
  DFFSX1 \num_reg[5]  ( .D(next_num[5]), .CK(clk), .SN(n304), .Q(addr[5]), 
        .QN(n36) );
  DFFSX1 \num_reg[4]  ( .D(next_num[4]), .CK(clk), .SN(n304), .Q(addr[4]), 
        .QN(n35) );
  DFFSX1 \num_reg[3]  ( .D(next_num[3]), .CK(clk), .SN(n304), .Q(addr[3]), 
        .QN(n34) );
  DFFSX1 \num_reg[2]  ( .D(next_num[2]), .CK(clk), .SN(n304), .Q(addr[2]), 
        .QN(n31) );
  DFFRX1 \ans_reg[0]  ( .D(n76), .CK(clk), .RN(n304), .Q(ans[0]), .QN(n55) );
  DFFSX1 \num_reg[8]  ( .D(next_num[8]), .CK(clk), .SN(n304), .Q(addr[8]) );
  DFFSX1 \num_reg[7]  ( .D(next_num[7]), .CK(clk), .SN(n304), .Q(addr[7]) );
  DFFSX1 \num_reg[1]  ( .D(next_num[1]), .CK(clk), .SN(n304), .Q(addr[1]) );
  DFFSX1 \num_reg[0]  ( .D(next_num[0]), .CK(clk), .SN(n304), .Q(addr[0]), 
        .QN(n32) );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n304), .Q(state[1]), 
        .QN(n276) );
  DFFRX1 \state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n304), .Q(state[2]), 
        .QN(n275) );
  TLATX1 flag0_reg ( .G(N80), .D(n303), .Q(flag) );
  DFFSX1 \state_reg[3]  ( .D(next_state[3]), .CK(clk), .SN(n304), .Q(state[3]), 
        .QN(n274) );
  DFFSX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .SN(n304), .Q(state[0]), 
        .QN(n277) );
  CLKINVX1 U261 ( .A(n295), .Y(n297) );
  CLKINVX1 U262 ( .A(n296), .Y(n298) );
  CLKINVX1 U263 ( .A(n299), .Y(n303) );
  CLKINVX1 U264 ( .A(n299), .Y(n302) );
  NAND2X1 U265 ( .A(n305), .B(n278), .Y(n279) );
  CLKINVX1 U266 ( .A(n7), .Y(n306) );
  CLKINVX1 U267 ( .A(n278), .Y(n291) );
  CLKINVX1 U268 ( .A(N10), .Y(n292) );
  CLKINVX1 U269 ( .A(n293), .Y(fin) );
  NAND4X1 U270 ( .A(state[3]), .B(state[0]), .C(n12), .D(start), .Y(n7) );
  NOR2X1 U271 ( .A(state[2]), .B(state[1]), .Y(n12) );
  INVX3 U272 ( .A(rst), .Y(n304) );
  NOR4X1 U273 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(n17) );
  XOR2X1 U274 ( .A(n35), .B(n41), .Y(n19) );
  XOR2X1 U275 ( .A(n31), .B(n43), .Y(n20) );
  XOR2X1 U276 ( .A(n34), .B(n42), .Y(n21) );
  NOR4BX1 U277 ( .AN(N10), .B(n13), .C(state[0]), .D(state[3]), .Y(n294) );
  NOR4BX1 U278 ( .AN(N10), .B(n13), .C(state[0]), .D(state[3]), .Y(N96) );
  OAI22XL U279 ( .A0(n39), .A1(n306), .B0(n7), .B1(n308), .Y(n60) );
  OAI22XL U280 ( .A0(n40), .A1(n306), .B0(n7), .B1(n309), .Y(n61) );
  OAI22XL U281 ( .A0(n44), .A1(n306), .B0(n7), .B1(n310), .Y(n65) );
  OAI22XL U282 ( .A0(n45), .A1(n306), .B0(n7), .B1(n311), .Y(n66) );
  NAND4X1 U283 ( .A(n311), .B(n310), .C(n28), .D(n29), .Y(N10) );
  NOR3X1 U284 ( .A(data[2]), .B(data[4]), .C(data[3]), .Y(n28) );
  NOR4X1 U285 ( .A(n30), .B(data[7]), .C(data[9]), .D(data[8]), .Y(n29) );
  NAND2X1 U286 ( .A(n309), .B(n308), .Y(n30) );
  NOR3X1 U287 ( .A(n24), .B(n25), .C(n26), .Y(n16) );
  XOR2X1 U288 ( .A(n32), .B(n45), .Y(n26) );
  XOR2X1 U289 ( .A(n36), .B(n40), .Y(n25) );
  XOR2X1 U290 ( .A(n33), .B(n39), .Y(n24) );
  NAND3X1 U291 ( .A(n22), .B(start), .C(n23), .Y(n18) );
  XOR2X1 U292 ( .A(addr[8]), .B(n37), .Y(n22) );
  XOR2X1 U293 ( .A(addr[9]), .B(n46), .Y(n23) );
  CLKBUFX3 U294 ( .A(n5), .Y(n293) );
  NAND4X1 U295 ( .A(n14), .B(n15), .C(n16), .D(n17), .Y(n5) );
  XOR2X1 U296 ( .A(addr[7]), .B(n38), .Y(n15) );
  XOR2X1 U297 ( .A(addr[1]), .B(n44), .Y(n14) );
  OAI2BB2XL U298 ( .B0(n50), .B1(n302), .A0N(N65), .A1N(n298), .Y(n71) );
  OAI2BB2XL U299 ( .B0(n51), .B1(n302), .A0N(N64), .A1N(n297), .Y(n72) );
  OAI2BB2XL U300 ( .B0(n52), .B1(n297), .A0N(N63), .A1N(n302), .Y(n73) );
  OAI2BB2XL U301 ( .B0(n53), .B1(n298), .A0N(N62), .A1N(n303), .Y(n74) );
  OAI2BB2XL U302 ( .B0(n54), .B1(n298), .A0N(N61), .A1N(n297), .Y(n75) );
  OAI2BB2XL U303 ( .B0(n55), .B1(n303), .A0N(N60), .A1N(n297), .Y(n76) );
  OAI2BB2XL U304 ( .B0(n37), .B1(n306), .A0N(n306), .A1N(data[8]), .Y(n58) );
  OAI2BB2XL U305 ( .B0(n38), .B1(n306), .A0N(n306), .A1N(data[7]), .Y(n59) );
  OAI2BB2XL U306 ( .B0(n41), .B1(n306), .A0N(n306), .A1N(data[4]), .Y(n62) );
  OAI2BB2XL U307 ( .B0(n42), .B1(n306), .A0N(n306), .A1N(data[3]), .Y(n63) );
  OAI2BB2XL U308 ( .B0(n43), .B1(n306), .A0N(n306), .A1N(data[2]), .Y(n64) );
  OAI2BB2XL U309 ( .B0(n46), .B1(n306), .A0N(n306), .A1N(data[9]), .Y(n67) );
  OAI2BB2XL U310 ( .B0(n47), .B1(n302), .A0N(N69), .A1N(n303), .Y(n68) );
  AO22X1 U311 ( .A0(ans[7]), .A1(n301), .B0(N67), .B1(n297), .Y(n69) );
  AO22X1 U312 ( .A0(ans[6]), .A1(n301), .B0(N66), .B1(n294), .Y(n70) );
  AO22X1 U313 ( .A0(ans[8]), .A1(n300), .B0(N68), .B1(n298), .Y(n77) );
  NAND2X1 U314 ( .A(state[2]), .B(state[1]), .Y(n13) );
  AOI2BB1X1 U315 ( .A0N(n277), .A1N(n13), .B0(state[3]), .Y(N80) );
  NOR2X1 U316 ( .A(n55), .B(n293), .Y(result[0]) );
  NOR2X1 U317 ( .A(n54), .B(n293), .Y(result[1]) );
  NOR2X1 U318 ( .A(n53), .B(n293), .Y(result[2]) );
  NOR2X1 U319 ( .A(n52), .B(n293), .Y(result[3]) );
  NOR2X1 U320 ( .A(n51), .B(n293), .Y(result[4]) );
  NOR2X1 U321 ( .A(n50), .B(n293), .Y(result[5]) );
  NOR2X1 U322 ( .A(n49), .B(n293), .Y(result[6]) );
  NOR2X1 U323 ( .A(n48), .B(n293), .Y(result[7]) );
  NOR2X1 U324 ( .A(n56), .B(n293), .Y(result[8]) );
  NOR2X1 U325 ( .A(n47), .B(n293), .Y(result[9]) );
  CLKINVX1 U326 ( .A(data[0]), .Y(n311) );
  CLKINVX1 U327 ( .A(data[1]), .Y(n310) );
  CLKINVX1 U328 ( .A(data[5]), .Y(n309) );
  CLKINVX1 U329 ( .A(data[6]), .Y(n308) );
  CLKINVX1 U330 ( .A(start), .Y(n305) );
  NAND2X1 U331 ( .A(state[0]), .B(n276), .Y(n289) );
  NOR3X1 U332 ( .A(n289), .B(state[2]), .C(n274), .Y(n278) );
  OAI2BB1X1 U333 ( .A0N(N12), .A1N(n291), .B0(n279), .Y(next_num[0]) );
  OAI2BB1X1 U334 ( .A0N(N13), .A1N(n291), .B0(n279), .Y(next_num[1]) );
  OAI2BB1X1 U335 ( .A0N(N14), .A1N(n291), .B0(n279), .Y(next_num[2]) );
  OAI2BB1X1 U336 ( .A0N(N15), .A1N(n291), .B0(n279), .Y(next_num[3]) );
  OAI2BB1X1 U337 ( .A0N(N16), .A1N(n291), .B0(n279), .Y(next_num[4]) );
  OAI2BB1X1 U338 ( .A0N(N17), .A1N(n291), .B0(n279), .Y(next_num[5]) );
  OAI2BB1X1 U339 ( .A0N(N18), .A1N(n291), .B0(n279), .Y(next_num[6]) );
  OAI2BB1X1 U340 ( .A0N(N19), .A1N(n291), .B0(n279), .Y(next_num[7]) );
  OAI2BB1X1 U341 ( .A0N(N20), .A1N(n291), .B0(n279), .Y(next_num[8]) );
  OAI2BB1X1 U342 ( .A0N(N21), .A1N(n291), .B0(n279), .Y(next_num[9]) );
  NAND3X1 U343 ( .A(n275), .B(n274), .C(n292), .Y(n283) );
  NAND2BX1 U344 ( .AN(n305), .B(n275), .Y(n290) );
  AOI22X1 U345 ( .A0(state[1]), .A1(n283), .B0(state[3]), .B1(n290), .Y(n281)
         );
  NAND3X1 U346 ( .A(n274), .B(n276), .C(state[2]), .Y(n285) );
  OAI211X1 U347 ( .A0(n275), .A1(n277), .B0(N10), .C0(n274), .Y(n280) );
  OAI221XL U348 ( .A0(n277), .A1(n281), .B0(state[0]), .B1(n285), .C0(n280), 
        .Y(next_state[0]) );
  XNOR2X1 U349 ( .A(state[2]), .B(state[0]), .Y(n282) );
  AOI2BB2X1 U350 ( .B0(n282), .B1(n283), .A0N(n282), .A1N(n274), .Y(n284) );
  OAI222XL U351 ( .A0(n292), .A1(n285), .B0(n276), .B1(n284), .C0(n283), .C1(
        n289), .Y(next_state[1]) );
  XNOR2X1 U352 ( .A(N10), .B(state[0]), .Y(n286) );
  NOR2X1 U353 ( .A(state[3]), .B(n286), .Y(n288) );
  NAND4X1 U354 ( .A(state[0]), .B(state[1]), .C(n274), .D(n292), .Y(n287) );
  OAI21XL U355 ( .A0(n275), .A1(n288), .B0(n287), .Y(next_state[2]) );
  OA21XL U356 ( .A0(n290), .A1(n289), .B0(state[3]), .Y(next_state[3]) );
  INVX1 U357 ( .A(n294), .Y(n295) );
  INVX1 U358 ( .A(n294), .Y(n296) );
  INVX1 U359 ( .A(N96), .Y(n299) );
  INVX1 U360 ( .A(N96), .Y(n300) );
  INVX1 U361 ( .A(N96), .Y(n301) );
endmodule

