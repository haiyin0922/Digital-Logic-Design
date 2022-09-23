/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Sat Jun  9 18:30:09 2018
/////////////////////////////////////////////////////////////


module IIR_DW01_add_0 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_1 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_2 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];
  assign SUM[10] = carry[10];

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_3 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];
  assign SUM[10] = carry[10];
  assign SUM[9] = carry[9];

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_4 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_5 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];
  assign SUM[10] = carry[10];

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_6 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];
  assign SUM[10] = carry[10];
  assign SUM[9] = carry[9];

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_7 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_8 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_9 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];
  assign SUM[10] = carry[10];
  assign SUM[9] = carry[9];

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_10 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_11 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1, n2;
  wire   [24:1] carry;
  assign \A[0]  = A[0];
  assign SUM[0] = \A[0] ;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n2) );
endmodule


module IIR_DW01_add_12 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];

  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_inc_0 ( A, SUM );
  input [19:0] A;
  output [19:0] SUM;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[19]), .B(A[19]), .Y(SUM[19]) );
endmodule


module IIR_DW01_add_13 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];

  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_inc_1 ( A, SUM );
  input [19:0] A;
  output [19:0] SUM;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[19]), .B(A[19]), .Y(SUM[19]) );
endmodule


module IIR_DW01_add_77 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [21:1] carry;
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_76 ( A, B, CI, SUM, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [22:1] carry;
  assign SUM[0] = A[0];

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  XOR3X1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .Y(SUM[22]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
endmodule


module IIR_DW01_add_75 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [23:1] carry;
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_74 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];

  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_73 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_72 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_71 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_70 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_9 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24;
  wire   [25:0] carry;
  assign DIFF[1] = A[1];

  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  CLKINVX1 U1 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U3 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U4 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U5 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U6 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U8 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U9 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U10 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U11 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U12 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U13 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U14 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U15 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U16 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U17 ( .A(B[2]), .Y(n24) );
  XNOR2X1 U18 ( .A(n24), .B(A[2]), .Y(DIFF[2]) );
  CLKINVX1 U19 ( .A(B[3]), .Y(n23) );
  NAND2X1 U20 ( .A(B[2]), .B(n1), .Y(carry[3]) );
  CLKINVX1 U21 ( .A(A[2]), .Y(n1) );
  CLKINVX1 U22 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U23 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U24 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U25 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U26 ( .A(B[23]), .Y(n3) );
endmodule


module IIR_DW01_add_69 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n2) );
endmodule


module IIR_DW01_sub_8 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [25:0] carry;
  assign DIFF[0] = B[0];

  XOR3X1 U2_24 ( .A(A[24]), .B(n1), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n15), .CI(n16), .CO(carry[2]), .S(DIFF[1]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n10), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n11), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n12), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n13), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n14), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_14 ( .A(A[14]), .B(n2), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n3), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n4), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n5), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n7), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n8), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n1), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n1), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n1), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n1), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n1), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n1), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n1), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n1), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n1), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  CLKINVX1 U1 ( .A(B[15]), .Y(n1) );
  CLKINVX1 U2 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U3 ( .A(B[8]), .Y(n8) );
  CLKINVX1 U4 ( .A(B[9]), .Y(n7) );
  CLKINVX1 U5 ( .A(B[10]), .Y(n6) );
  CLKINVX1 U6 ( .A(B[11]), .Y(n5) );
  CLKINVX1 U7 ( .A(B[12]), .Y(n4) );
  CLKINVX1 U8 ( .A(B[13]), .Y(n3) );
  CLKINVX1 U9 ( .A(B[14]), .Y(n2) );
  CLKINVX1 U10 ( .A(B[2]), .Y(n14) );
  CLKINVX1 U11 ( .A(B[3]), .Y(n13) );
  CLKINVX1 U12 ( .A(B[4]), .Y(n12) );
  CLKINVX1 U13 ( .A(B[5]), .Y(n11) );
  CLKINVX1 U14 ( .A(B[6]), .Y(n10) );
  CLKINVX1 U15 ( .A(B[0]), .Y(n16) );
  CLKINVX1 U16 ( .A(B[1]), .Y(n15) );
endmodule


module IIR_DW01_sub_7 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [25:0] carry;

  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n7), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n9), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n10), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n11), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n12), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n13), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_11 ( .A(A[11]), .B(n3), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n4), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n5), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n6), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n2), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n2), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n2), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n2), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n2), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n2), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n2), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n2), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n2), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n2), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n2), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  CLKINVX1 U1 ( .A(B[12]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[8]), .Y(n6) );
  CLKINVX1 U3 ( .A(B[9]), .Y(n5) );
  CLKINVX1 U4 ( .A(B[10]), .Y(n4) );
  CLKINVX1 U5 ( .A(B[11]), .Y(n3) );
  CLKINVX1 U6 ( .A(B[1]), .Y(n13) );
  NAND2X1 U7 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U8 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U9 ( .A(B[2]), .Y(n12) );
  CLKINVX1 U10 ( .A(B[3]), .Y(n11) );
  CLKINVX1 U11 ( .A(B[4]), .Y(n10) );
  CLKINVX1 U12 ( .A(B[5]), .Y(n9) );
  CLKINVX1 U13 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U14 ( .A(B[7]), .Y(n7) );
  CLKINVX1 U15 ( .A(B[0]), .Y(n14) );
  XNOR2X1 U16 ( .A(n14), .B(A[0]), .Y(DIFF[0]) );
endmodule


module IIR_DW01_add_68 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_67 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  CLKINVX1 U1 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U2 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U3 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U4 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U5 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U6 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U7 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U9 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U11 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U12 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U13 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U14 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U15 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U16 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U17 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U18 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U19 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U20 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U21 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U22 ( .A(A[0]), .Y(n1) );
  NAND2X1 U23 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U24 ( .A(B[1]), .Y(n25) );
  CLKINVX1 U25 ( .A(B[2]), .Y(n24) );
  XNOR2X1 U26 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U27 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U28 ( .A(B[0]), .Y(n26) );
endmodule


module IIR_DW01_add_66 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_65 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_64 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_63 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_62 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];
  assign SUM[10] = carry[10];

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_61 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_60 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  CLKINVX1 U1 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U3 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U4 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U5 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U7 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U9 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U15 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U16 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U17 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U18 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U19 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U20 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U21 ( .A(B[1]), .Y(n25) );
  NAND2X1 U22 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U23 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U24 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U25 ( .A(B[4]), .Y(n22) );
  XNOR2X1 U26 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U27 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U28 ( .A(B[0]), .Y(n26) );
endmodule


module IIR_DW01_add_59 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;
  wire   [25:0] carry;

  ADDFXL U2_7 ( .A(A[7]), .B(n16), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n17), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n18), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n19), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n20), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n21), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n22), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_20 ( .A(A[20]), .B(n14), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n13), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n12), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n11), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n15), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n9), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n8), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n5), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n4), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n2), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n7), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n6), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n15), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n15), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n15), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  CLKINVX1 U1 ( .A(B[21]), .Y(n15) );
  CLKINVX1 U2 ( .A(B[12]), .Y(n6) );
  CLKINVX1 U3 ( .A(B[13]), .Y(n7) );
  CLKINVX1 U4 ( .A(B[8]), .Y(n2) );
  CLKINVX1 U5 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U6 ( .A(B[10]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[11]), .Y(n5) );
  CLKINVX1 U8 ( .A(B[14]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[15]), .Y(n9) );
  CLKINVX1 U10 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U11 ( .A(B[17]), .Y(n11) );
  CLKINVX1 U12 ( .A(B[18]), .Y(n12) );
  CLKINVX1 U13 ( .A(B[19]), .Y(n13) );
  CLKINVX1 U14 ( .A(B[20]), .Y(n14) );
  CLKINVX1 U15 ( .A(B[1]), .Y(n22) );
  NAND2X1 U16 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U17 ( .A(B[2]), .Y(n21) );
  CLKINVX1 U18 ( .A(B[3]), .Y(n20) );
  CLKINVX1 U19 ( .A(B[4]), .Y(n19) );
  CLKINVX1 U20 ( .A(B[5]), .Y(n18) );
  CLKINVX1 U21 ( .A(B[6]), .Y(n17) );
  CLKINVX1 U22 ( .A(B[7]), .Y(n16) );
  XNOR2X1 U23 ( .A(n23), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U24 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U25 ( .A(B[0]), .Y(n23) );
endmodule


module IIR_DW01_add_58 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[1] = B[7];
  assign SUM[0] = B[6];
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  CLKINVX1 U1 ( .A(A[2]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
endmodule


module IIR_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;
  wire   [25:0] carry;

  ADDFXL U2_2 ( .A(A[2]), .B(n3), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n2), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n4), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n11), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n10), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n9), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n8), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n15), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n15), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n15), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n15), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n14), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n13), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n12), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n15), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n15), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n15), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n15), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n15), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n15), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n15), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  CLKBUFX3 U1 ( .A(n16), .Y(n15) );
  CLKINVX1 U2 ( .A(B[14]), .Y(n16) );
  CLKINVX1 U3 ( .A(B[11]), .Y(n12) );
  CLKINVX1 U4 ( .A(B[12]), .Y(n13) );
  CLKINVX1 U5 ( .A(B[13]), .Y(n14) );
  CLKINVX1 U6 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U7 ( .A(B[6]), .Y(n7) );
  CLKINVX1 U8 ( .A(B[7]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[8]), .Y(n9) );
  CLKINVX1 U10 ( .A(B[9]), .Y(n10) );
  CLKINVX1 U11 ( .A(B[10]), .Y(n11) );
  XNOR2X1 U12 ( .A(n17), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U13 ( .A(B[3]), .Y(n4) );
  CLKINVX1 U14 ( .A(B[0]), .Y(n17) );
  NAND2X1 U15 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U16 ( .A(B[1]), .Y(n2) );
  CLKINVX1 U17 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U18 ( .A(B[4]), .Y(n5) );
  CLKINVX1 U19 ( .A(B[2]), .Y(n3) );
endmodule


module IIR_DW01_add_57 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_56 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_55 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_54 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_53 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_52 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_51 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];

  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_50 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_49 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XNOR2X1 U1 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[2]), .Y(n1) );
endmodule


module IIR_DW01_add_48 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_47 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_46 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_45 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_44 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_43 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_42 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_41 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_40 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_39 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_38 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_37 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_36 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  CLKINVX1 U1 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U2 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U3 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U4 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U5 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U7 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U9 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U10 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U13 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U14 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U15 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U16 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U17 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U18 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U19 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U20 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U21 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U22 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U23 ( .A(B[7]), .Y(n19) );
  XNOR2X1 U24 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U25 ( .A(B[1]), .Y(n25) );
  NAND2X1 U26 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U27 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U28 ( .A(B[0]), .Y(n26) );
endmodule


module IIR_DW01_add_35 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_34 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_33 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_32 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_31 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  CLKINVX1 U1 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U2 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U4 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U6 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U8 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U9 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U10 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U11 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U12 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U13 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U14 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U15 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U16 ( .A(B[0]), .Y(n26) );
  NAND2X1 U17 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U18 ( .A(B[1]), .Y(n25) );
  CLKINVX1 U19 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U20 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U21 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U22 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U23 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U24 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U25 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U26 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U27 ( .A(B[9]), .Y(n17) );
  XNOR2X1 U28 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
endmodule


module IIR_DW01_add_30 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_29 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[0] = B[2];
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n2) );
endmodule


module IIR_DW01_add_28 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_27 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_26 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_25 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_24 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_23 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_22 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_21 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_20 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_19 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_126 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [21:1] carry;
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_125 ( A, B, CI, SUM, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [22:1] carry;
  assign SUM[0] = A[0];

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3X1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .Y(SUM[22]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n2) );
endmodule


module IIR_DW01_add_124 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [23:1] carry;
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_123 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_122 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_121 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_sub_18 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  CLKINVX1 U1 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U3 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U4 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U5 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U6 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U7 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U8 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U9 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U10 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U11 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[0]), .Y(n26) );
  CLKINVX1 U13 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U14 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U15 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U16 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U17 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U18 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U19 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U20 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U21 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U22 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U23 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U24 ( .A(B[15]), .Y(n11) );
  XNOR2X1 U25 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U26 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U27 ( .A(B[1]), .Y(n25) );
  NAND2X1 U28 ( .A(B[0]), .B(n1), .Y(carry[1]) );
endmodule


module IIR_DW01_add_120 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_sub_17 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  CLKINVX1 U1 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U2 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U3 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U4 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U5 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U6 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U14 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U15 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U16 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U17 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U18 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U19 ( .A(B[0]), .Y(n26) );
  CLKINVX1 U20 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U21 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U22 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U23 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U24 ( .A(B[15]), .Y(n11) );
  XNOR2X1 U25 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U26 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U27 ( .A(B[1]), .Y(n25) );
  NAND2X1 U28 ( .A(B[0]), .B(n1), .Y(carry[1]) );
endmodule


module IIR_DW01_add_119 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_118 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_sub_16 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  CLKINVX1 U1 ( .A(B[23]), .Y(n3) );
  XNOR2X1 U2 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U4 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U5 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U6 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U7 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U11 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U12 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U13 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U14 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U15 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U16 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U17 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U18 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U19 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U20 ( .A(B[0]), .Y(n26) );
  NAND2X1 U21 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U22 ( .A(B[1]), .Y(n25) );
  CLKINVX1 U23 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U24 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U25 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U26 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U27 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U28 ( .A(B[6]), .Y(n20) );
endmodule


module IIR_DW01_sub_15 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24;
  wire   [25:0] carry;
  assign DIFF[1] = A[1];

  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  CLKINVX1 U1 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U2 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U3 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U4 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U5 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U6 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U7 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U8 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U9 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U10 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U12 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U13 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U14 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U15 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U16 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U17 ( .A(B[2]), .Y(n24) );
  XNOR2X1 U18 ( .A(n24), .B(A[2]), .Y(DIFF[2]) );
  CLKINVX1 U19 ( .A(B[3]), .Y(n23) );
  NAND2X1 U20 ( .A(B[2]), .B(n1), .Y(carry[3]) );
  CLKINVX1 U21 ( .A(A[2]), .Y(n1) );
  CLKINVX1 U22 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U23 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U24 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U25 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U26 ( .A(B[8]), .Y(n18) );
endmodule


module IIR_DW01_add_117 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XNOR2X1 U1 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  CLKINVX1 U2 ( .A(A[1]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n2) );
endmodule


module IIR_DW01_add_116 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[0] = B[0];

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n2) );
endmodule


module IIR_DW01_add_115 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_14 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;
  wire   [25:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n16), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_12 ( .A(A[12]), .B(n5), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n6), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n7), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n8), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n9), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n10), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n11), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n12), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n13), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n15), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_14 ( .A(A[14]), .B(n3), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n4), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n2), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n2), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n2), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n2), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n2), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n2), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n2), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n2), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  CLKINVX1 U1 ( .A(B[15]), .Y(n2) );
  XNOR2X1 U2 ( .A(n17), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U4 ( .A(B[13]), .Y(n4) );
  CLKINVX1 U5 ( .A(B[14]), .Y(n3) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n15) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n14) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n13) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n12) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n11) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n10) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n9) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n8) );
  CLKINVX1 U14 ( .A(B[10]), .Y(n7) );
  CLKINVX1 U15 ( .A(B[11]), .Y(n6) );
  CLKINVX1 U16 ( .A(B[12]), .Y(n5) );
  CLKINVX1 U17 ( .A(B[0]), .Y(n17) );
  CLKINVX1 U18 ( .A(B[1]), .Y(n16) );
  NAND2X1 U19 ( .A(B[0]), .B(n1), .Y(carry[1]) );
endmodule


module IIR_DW01_add_114 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_sub_13 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24;
  wire   [25:0] carry;
  assign DIFF[18] = DIFF[23];
  assign DIFF[19] = DIFF[23];
  assign DIFF[20] = DIFF[23];
  assign DIFF[21] = DIFF[23];
  assign DIFF[22] = DIFF[23];
  assign DIFF[24] = DIFF[23];

  ADDFXL U2_1 ( .A(A[1]), .B(n23), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_16 ( .A(A[16]), .B(n8), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n9), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n10), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n11), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n12), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n13), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n14), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n15), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n16), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n17), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n18), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n19), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n20), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n21), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n22), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  CLKINVX1 U1 ( .A(B[17]), .Y(n4) );
  CLKINVX1 U2 ( .A(B[2]), .Y(n22) );
  CLKINVX1 U3 ( .A(B[3]), .Y(n21) );
  CLKINVX1 U4 ( .A(B[4]), .Y(n20) );
  CLKINVX1 U5 ( .A(B[5]), .Y(n19) );
  CLKINVX1 U6 ( .A(B[6]), .Y(n18) );
  CLKINVX1 U7 ( .A(B[7]), .Y(n17) );
  CLKINVX1 U8 ( .A(B[8]), .Y(n16) );
  CLKINVX1 U9 ( .A(B[9]), .Y(n15) );
  CLKINVX1 U10 ( .A(B[10]), .Y(n14) );
  CLKINVX1 U11 ( .A(B[11]), .Y(n13) );
  CLKINVX1 U12 ( .A(B[12]), .Y(n12) );
  CLKINVX1 U13 ( .A(B[13]), .Y(n11) );
  CLKINVX1 U14 ( .A(B[14]), .Y(n10) );
  CLKINVX1 U15 ( .A(B[15]), .Y(n9) );
  CLKINVX1 U16 ( .A(B[16]), .Y(n8) );
  CLKINVX1 U17 ( .A(B[0]), .Y(n24) );
  CLKINVX1 U18 ( .A(A[0]), .Y(n3) );
  CLKINVX1 U19 ( .A(B[1]), .Y(n23) );
  NAND2X1 U20 ( .A(B[0]), .B(n3), .Y(carry[1]) );
  XNOR2X1 U21 ( .A(n24), .B(A[0]), .Y(DIFF[0]) );
  AOI222XL U22 ( .A0(carry[17]), .A1(A[23]), .B0(n4), .B1(carry[17]), .C0(n4), 
        .C1(A[23]), .Y(n6) );
  XOR2X1 U23 ( .A(B[23]), .B(A[23]), .Y(n5) );
  XOR2X1 U24 ( .A(n6), .B(n5), .Y(DIFF[23]) );
  XOR2X1 U25 ( .A(B[24]), .B(carry[17]), .Y(n7) );
  XNOR2X1 U26 ( .A(A[23]), .B(n7), .Y(DIFF[17]) );
endmodule


module IIR_DW01_add_113 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3XL U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_112 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_111 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_110 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_109 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_108 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_107 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_12 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  CLKINVX1 U1 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U2 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U3 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U4 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U5 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U6 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U8 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U10 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U11 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U12 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U13 ( .A(B[0]), .Y(n26) );
  CLKINVX1 U14 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U15 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U16 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U17 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U18 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U19 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U20 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U21 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U22 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U23 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U24 ( .A(B[14]), .Y(n12) );
  XNOR2X1 U25 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  NAND2X1 U26 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U27 ( .A(B[1]), .Y(n25) );
  CLKINVX1 U28 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_106 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_105 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_104 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_103 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_102 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_101 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_100 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  XNOR2X1 U1 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[2]), .Y(n1) );
endmodule


module IIR_DW01_add_99 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_98 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_97 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_96 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[1] = A[1];
  assign SUM[0] = A[0];

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  CLKINVX1 U1 ( .A(A[2]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
endmodule


module IIR_DW01_add_95 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];

  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_11 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  CLKINVX1 U1 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U2 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U3 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U4 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U5 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U6 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U8 ( .A(A[0]), .Y(n1) );
  NAND2X1 U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U10 ( .A(B[1]), .Y(n25) );
  CLKINVX1 U11 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U12 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U13 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U14 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U15 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U16 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U17 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U18 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U19 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U20 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U21 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U22 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U23 ( .A(B[18]), .Y(n8) );
  XNOR2X1 U24 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U25 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U26 ( .A(B[0]), .Y(n26) );
  CLKINVX1 U27 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U28 ( .A(B[2]), .Y(n24) );
endmodule


module IIR_DW01_add_94 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];
  assign SUM[10] = carry[10];

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_93 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_92 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_91 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];
  assign SUM[10] = carry[10];

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_90 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_sub_10 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  CLKINVX1 U1 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U2 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U4 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U6 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U8 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U9 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U10 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U11 ( .A(B[15]), .Y(n11) );
  XNOR2X1 U12 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U13 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U14 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U15 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U16 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U17 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U18 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U19 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U20 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U21 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U22 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U23 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U24 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U25 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U26 ( .A(B[0]), .Y(n26) );
  NAND2X1 U27 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U28 ( .A(B[1]), .Y(n25) );
endmodule


module IIR_DW01_add_89 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_88 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_87 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_86 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_85 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_84 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[0] = A[0];

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n2) );
endmodule


module IIR_DW01_add_83 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_82 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_81 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_80 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_188 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [21:1] carry;
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_187 ( A, B, CI, SUM, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [22:1] carry;
  assign SUM[0] = A[0];

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3X1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .Y(SUM[22]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n2) );
endmodule


module IIR_DW01_add_186 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [23:1] carry;
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_185 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[1] = B[4];
  assign SUM[0] = B[3];
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  CLKINVX1 U1 ( .A(A[2]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U4 ( .A(B[2]), .Y(n2) );
endmodule


module IIR_DW01_add_184 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_183 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n2) );
endmodule


module IIR_DW01_sub_24 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24;
  wire   [25:0] carry;
  assign DIFF[1] = A[1];

  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n13), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n12), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n11), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n10), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n9), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n8), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n7), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n6), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n5), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n4), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n3), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n2), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  CLKINVX1 U1 ( .A(B[13]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[14]), .Y(n3) );
  CLKINVX1 U3 ( .A(B[15]), .Y(n4) );
  CLKINVX1 U4 ( .A(B[16]), .Y(n5) );
  CLKINVX1 U5 ( .A(B[17]), .Y(n6) );
  CLKINVX1 U6 ( .A(B[18]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[19]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[20]), .Y(n9) );
  CLKINVX1 U9 ( .A(B[21]), .Y(n10) );
  CLKINVX1 U10 ( .A(B[22]), .Y(n11) );
  CLKINVX1 U11 ( .A(B[23]), .Y(n12) );
  CLKINVX1 U12 ( .A(B[24]), .Y(n13) );
  CLKINVX1 U13 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U14 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U15 ( .A(B[12]), .Y(n14) );
  XNOR2X1 U16 ( .A(n24), .B(A[2]), .Y(DIFF[2]) );
  CLKINVX1 U17 ( .A(B[3]), .Y(n23) );
  NAND2X1 U18 ( .A(B[2]), .B(n1), .Y(carry[3]) );
  CLKINVX1 U19 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U20 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U21 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U22 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U23 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U24 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U25 ( .A(A[2]), .Y(n1) );
  CLKINVX1 U26 ( .A(B[2]), .Y(n24) );
endmodule


module IIR_DW01_add_182 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[0] = B[0];

  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n1) );
endmodule


module IIR_DW01_add_181 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_180 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_179 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_178 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_177 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_176 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_23 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  CLKINVX1 U1 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U2 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U3 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U4 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U5 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U6 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U7 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U9 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U10 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U11 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U12 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U13 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U14 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U15 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U16 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U17 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U18 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U19 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U20 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U21 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U22 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U23 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U24 ( .A(B[0]), .Y(n26) );
  NAND2X1 U25 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U26 ( .A(B[1]), .Y(n25) );
  CLKINVX1 U27 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U28 ( .A(B[15]), .Y(n11) );
endmodule


module IIR_DW01_add_175 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_174 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_173 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_172 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_171 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_sub_22 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  CLKINVX1 U1 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U2 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U4 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U6 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U9 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U10 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U11 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U12 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U13 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U14 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U15 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U16 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U17 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U18 ( .A(B[0]), .Y(n26) );
  NAND2X1 U19 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U20 ( .A(B[1]), .Y(n25) );
  CLKINVX1 U21 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U22 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U23 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U24 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U25 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U26 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U27 ( .A(B[7]), .Y(n19) );
  XNOR2X1 U28 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
endmodule


module IIR_DW01_add_170 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_169 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_168 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_167 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_166 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_165 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_164 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_163 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_162 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_161 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_160 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_159 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_158 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[1] = A[1];
  assign SUM[0] = A[0];

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  CLKINVX1 U1 ( .A(A[2]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
endmodule


module IIR_DW01_add_157 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_156 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_155 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_154 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_203 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [21:1] carry;
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_202 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [23:1] carry;
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_201 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_200 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1, n2;
  wire   [24:1] carry;
  assign \B[0]  = B[0];
  assign SUM[0] = \B[0] ;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XNOR2X1 U1 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  CLKINVX1 U2 ( .A(A[1]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n2) );
endmodule


module IIR_DW01_add_199 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];

  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_198 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_197 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_196 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_195 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_194 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_193 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_192 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_191 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_151 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [21:1] carry;
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_150 ( A, B, CI, SUM, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [22:1] carry;
  assign SUM[0] = A[0];

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  XOR3X1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .Y(SUM[22]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n2) );
endmodule


module IIR_DW01_add_149 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [23:1] carry;
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_148 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  NOR2X1 U4 ( .A(n1), .B(n2), .Y(carry[1]) );
endmodule


module IIR_DW01_sub_21 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24;
  wire   [25:0] carry;
  assign DIFF[1] = A[1];

  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_12 ( .A(A[12]), .B(n2), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n3), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n14), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n6), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n4), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n5), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n13), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n12), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n11), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n10), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n9), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n7), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  CLKINVX1 U1 ( .A(B[17]), .Y(n7) );
  CLKINVX1 U2 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[19]), .Y(n9) );
  CLKINVX1 U4 ( .A(B[20]), .Y(n10) );
  CLKINVX1 U5 ( .A(B[21]), .Y(n11) );
  CLKINVX1 U6 ( .A(B[22]), .Y(n12) );
  CLKINVX1 U7 ( .A(B[23]), .Y(n13) );
  CLKINVX1 U8 ( .A(B[15]), .Y(n5) );
  CLKINVX1 U9 ( .A(B[14]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[16]), .Y(n6) );
  CLKINVX1 U11 ( .A(B[24]), .Y(n14) );
  CLKINVX1 U12 ( .A(B[13]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[12]), .Y(n2) );
  CLKINVX1 U14 ( .A(B[5]), .Y(n21) );
  XNOR2X1 U15 ( .A(n24), .B(A[2]), .Y(DIFF[2]) );
  CLKINVX1 U16 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U17 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U18 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U19 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U20 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U21 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U22 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U23 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U24 ( .A(B[3]), .Y(n23) );
  NAND2X1 U25 ( .A(B[2]), .B(n1), .Y(carry[3]) );
  CLKINVX1 U26 ( .A(A[2]), .Y(n1) );
endmodule


module IIR_DW01_add_147 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[0] = B[0];

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XNOR2X1 U1 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n1) );
endmodule


module IIR_DW01_add_146 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_145 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_144 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_143 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_sub_20 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  CLKINVX1 U1 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U2 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U4 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U6 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U8 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U9 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U11 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U13 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U14 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U15 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U16 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U17 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U18 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U19 ( .A(B[16]), .Y(n10) );
  XNOR2X1 U20 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U21 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U22 ( .A(B[1]), .Y(n25) );
  NAND2X1 U23 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U24 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U25 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U26 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U27 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U28 ( .A(B[0]), .Y(n26) );
endmodule


module IIR_DW01_add_142 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_141 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_19 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  CLKINVX1 U1 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U4 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U6 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U8 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U9 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U10 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U11 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U12 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U13 ( .A(B[15]), .Y(n11) );
  XNOR2X1 U14 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U15 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U16 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U17 ( .A(B[17]), .Y(n9) );
  NAND2X1 U18 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U19 ( .A(B[1]), .Y(n25) );
  CLKINVX1 U20 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U21 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U22 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U23 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U24 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U25 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U26 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U27 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U28 ( .A(B[0]), .Y(n26) );
endmodule


module IIR_DW01_add_140 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_139 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[1] = B[7];
  assign SUM[0] = B[6];
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  CLKINVX1 U1 ( .A(A[2]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U4 ( .A(B[2]), .Y(n2) );
endmodule


module IIR_DW01_add_138 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_137 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_136 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_135 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_134 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_133 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_132 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_131 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_130 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_129 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_17 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [21:1] carry;
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_16 ( A, B, CI, SUM, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [22:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  XOR3X1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .Y(SUM[22]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_15 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [23:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XOR3X1 U1_23 ( .A(A[23]), .B(B[23]), .C(carry[23]), .Y(SUM[23]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_14 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR ( clk, rst, load, DIn, RAddr, data_done, WEN, Yn, WAddr, Finish );
  input [15:0] DIn;
  output [19:0] RAddr;
  output [15:0] Yn;
  output [19:0] WAddr;
  input clk, rst, data_done;
  output load, WEN, Finish;
  wire   n2162, N129, N130, N131, N132, N133, N134, N135, N136, N137, N138,
         N139, N140, N141, N142, N143, N144, N145, N146, N147, N148, N149,
         N170, N171, N172, N173, N174, N175, N176, N177, N178, N179, N180,
         N181, N182, N183, N184, N185, N186, N187, N188, N189, N190, N260,
         N261, N262, N263, N264, N265, N266, N267, N268, N269, N270, N271,
         N272, N273, N274, N275, N276, N277, N278, N279, N280, N281, N282,
         N283, N284, N285, N286, N287, N288, N289, N290, N291, N292, N293,
         N294, N295, N296, N297, N298, N299, N300, N301, N302, N303, N304,
         N325, N346, N347, N348, N349, N350, N351, N352, N353, N354, N355,
         N356, N357, N358, N359, N360, N361, N362, N363, N364, N365, N366,
         N389, N390, N391, N392, N393, N394, N395, N396, N397, N398, N399,
         N400, N401, N402, N403, N404, N405, N406, N407, N408, N409, N410,
         N411, N436, N437, N438, N439, N440, N441, N442, N443, N444, N445,
         N446, N447, N448, N449, N450, N451, N452, N453, N454, N455, N456,
         N457, N458, N459, N460, N461, N462, N463, N464, N465, N466, N467,
         N468, N469, N470, N471, N472, N473, N474, N475, N476, N477, N478,
         N479, N480, N481, N482, N483, N484, N485, N536, N537, N538, N539,
         N540, N541, N542, N543, N544, N545, N546, N547, N548, N549, N550,
         N551, N552, N553, N554, N555, N556, N557, N558, N559, N560, N761,
         N762, N763, N764, N765, N766, N767, N768, N769, N770, N771, N772,
         N773, N774, N775, N776, N777, N778, N779, N780, N781, N782, N783,
         N784, N785, N826, N938, N939, N940, N941, N942, N943, N944, N945,
         N946, N947, N948, N949, N950, N951, N952, N953, N954, N955, N956,
         N957, N958, N959, N960, N961, N962, N963, N964, N965, N966, N967,
         N968, N969, N970, N971, N972, N973, N974, N975, N976, N977, N978,
         N979, N980, N981, N982, N983, N984, N985, N986, N987, N1038, N1039,
         N1040, N1041, N1042, N1043, N1044, N1045, N1046, N1047, N1048, N1049,
         N1050, N1051, N1052, N1053, N1054, N1055, N1056, N1057, N1058, N1059,
         N1060, N1061, N1062, N1563, N1564, N1565, N1566, N1567, N1568, N1569,
         N1570, N1571, N1572, N1573, N1574, N1575, N1576, N1577, N1578, N1579,
         N1580, N1581, N1582, N1583, N1584, N1585, N1586, N1587, N1628, N1740,
         N1741, N1742, N1743, N1744, N1745, N1746, N1747, N1748, N1749, N1750,
         N1751, N1752, N1753, N1754, N1755, N1756, N1757, N1758, N1759, N1760,
         N1761, N1762, N1763, N1764, N1765, N1766, N1767, N1768, N1769, N1770,
         N1771, N1772, N1773, N1774, N1775, N1776, N1777, N1778, N1779, N1780,
         N1781, N1782, N1783, N1784, N1785, N1786, N1787, N1788, N1789, N1840,
         N1841, N1842, N1843, N1844, N1845, N1846, N1847, N1848, N1849, N1850,
         N1851, N1852, N1853, N1854, N1855, N1856, N1857, N1858, N1859, N1860,
         N1861, N1862, N1863, N1864, N2115, N2116, N2117, N2118, N2119, N2120,
         N2121, N2122, N2123, N2124, N2125, N2126, N2127, N2128, N2129, N2130,
         N2131, N2132, N2133, N2134, N2135, N2136, N2137, N2138, N2139, N2740,
         N2741, N2742, N2743, N2744, N2745, N2746, N2747, N2748, N2749, N2750,
         N2751, N2752, N2753, N2754, N2755, N2756, N2757, N2758, N2759, N2760,
         N2761, N2762, N2763, N2764, N2805, N3187, N3188, N3189, N3190, N3366,
         N3367, N3368, N3369, N3370, N3371, N3372, N3373, N3374, N3375, N3376,
         N3377, N3378, N3379, N3380, N3381, N3382, N3383, N3384, N3385, N3386,
         N3387, N3388, N3389, N3390, N4366, N4367, N4368, N4369, N4370, N4371,
         N4372, N4373, N4374, N4375, N4376, N4377, N4378, N4379, N4380, N4381,
         N4382, N4383, N4384, N4385, N4386, N4387, N4388, N4389, N4390, N4411,
         N4793, N4794, N4795, N4796, N4845, N4846, N6297, N6298, N6299, N6300,
         N6301, N6302, N6303, N6304, N6305, N6306, N6307, N6308, N6309, N6310,
         N6311, N6312, N6313, N6314, N6315, N6316, N6317, N6318, N6319, N6320,
         N6321, N6342, N6343, N6345, N6346, N6347, N6348, N6349, N6350, N6351,
         N6352, N6353, N6354, N6355, N6356, N6357, N6358, N6359, N6360, N6361,
         N6383, N6387, N6388, N6389, N6390, N6391, N6392, N6393, N6394, N6395,
         N6396, N6397, N6398, N6399, N6400, N6401, N6402, n540, n541, n542,
         n543, n544, n545, n549, n550, n551, n554, n555, n559, n560, n561,
         n562, n563, n565, n568, n569, n570, n573, n575, n576, n577, n580,
         n581, n582, n583, n587, n589, n590, n591, n593, n594, n595, n596,
         n601, n602, n604, n605, n607, n620, n621, n623, n625, n627, n629,
         n630, n632, n634, n636, n638, n640, n642, n644, n645, n647, n649,
         n651, n653, n655, n657, n659, n661, n663, n665, n667, n669, n671,
         n673, n675, n678, n680, n682, n683, n685, n687, n689, n691, n693,
         n695, n696, n697, n699, n702, n704, n706, n708, n710, n712, n714,
         n716, n718, n720, n722, n724, n726, n727, n729, n730, n732, n734,
         n736, n737, n738, n739, n740, n741, n742, n744, n745, n746, n747,
         n749, n751, n752, n754, n756, n758, n760, n762, n764, n766, n768,
         n770, n772, n773, n776, n778, n780, n781, n783, n785, n787, n789,
         n791, n793, n795, n796, n799, n802, n804, n806, n808, n810, n812,
         n814, n816, n818, n820, n822, n824, n826, n828, n829, n832, n834,
         n836, n837, n838, n839, n840, n841, n842, n844, n845, n846, n847,
         n849, n851, n852, n854, n856, n858, n860, n862, n864, n866, n868,
         n870, n872, n873, n874, n875, n876, n877, n878, n879, n880, n881,
         n882, n883, n884, n885, n886, n887, n888, n889, n890, n891, n892,
         n893, n894, n895, n896, n897, n898, n899, n900, n901, n902, n903,
         n904, n905, n906, n907, n908, n909, n910, n911, n912, n913, n914,
         n915, n916, n917, n918, n919, n920, n921, n922, n923, n924, n925,
         n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, n936,
         n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947,
         n948, n949, n950, n951, n952, n953, n954, n956, n957, n958, n959,
         n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970,
         n971, n972, n973, n974, n975, n976, n977, n978, n979, n980, n981,
         n982, n983, n984, n985, n986, n987, n988, n989, n990, n991, n992,
         n993, n994, n995, n996, n999, n1001, n1003, n1005, n1007, n1009,
         n1011, n1013, n1015, n1017, n1019, n1021, n1023, n1025, n1026, n1027,
         n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037,
         n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047,
         n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057,
         n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067,
         n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077,
         n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087,
         n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097,
         n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107,
         n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117,
         n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127,
         n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137,
         n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147,
         n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157,
         n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167,
         n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177,
         n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187,
         n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197,
         n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206, n1207,
         n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216, n1217,
         n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226, n1227,
         n1228, n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237,
         n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247,
         n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256, n1257,
         n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265, n1266, n1267,
         n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277,
         n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285, n1286, n1287,
         n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297,
         n1298, n1299, n1300, N6296, N6295, N6294, N6293, N6292, N6291, N6290,
         N6289, N6288, N6287, N6286, N6285, N6284, N6283, N6282, N6281, N6280,
         N6279, N6278, N6277, N6276, N6275, N6274, N6273, N6272, N6271, N6270,
         N6269, N6268, N6267, N6266, N6265, N6264, N6263, N6262, N6261, N6260,
         N6259, N6258, N6257, N6256, N6255, N6254, N6253, N6252, N6251, N6250,
         N6249, N6248, N6247, N6246, N6245, N6244, N6243, N6242, N6241, N6240,
         N6239, N6238, N6237, N6236, N6235, N6234, N6233, N6232, N6231, N6230,
         N6229, N6228, N6227, N6226, N6225, N6224, N6223, N6222, N6221, N6220,
         N6219, N6218, N6217, N6216, N6215, N6214, N6213, N6212, N6211, N6210,
         N6209, N6208, N6207, N6206, N6205, N6204, N6203, N6202, N6201, N6200,
         N6199, N6198, N6197, N6196, N6195, N6194, N6193, N6192, N6191, N6190,
         N6189, N6188, N6187, N6186, N6185, N6184, N6183, N6182, N6181, N6180,
         N6179, N6178, N6177, N6176, N6175, N6174, N6173, N6172, N6171, N6170,
         N6169, N6168, N6167, N6166, N6165, N6164, N6163, N6162, N6161, N6160,
         N6159, N6158, N6157, N6156, N6155, N6154, N6153, N6152, N6151, N6150,
         N6149, N6148, N6147, N6146, N6145, N6144, N6143, N6142, N6141, N6140,
         N6139, N6138, N6137, N6136, N6135, N6134, N6133, N6132, N6131, N6130,
         N6129, N6128, N6127, N6126, N6125, N6124, N6123, N6122, N6121, N6120,
         N6119, N6118, N6117, N6116, N6115, N6114, N6113, N6112, N6111, N6110,
         N6109, N6108, N6107, N6106, N6105, N6104, N6103, N6102, N6101, N6100,
         N6099, N6098, N6097, N6096, N6095, N6094, N6093, N6092, N6091, N6090,
         N6089, N6088, N6087, N6086, N6085, N6084, N6083, N6082, N6081, N6080,
         N6079, N6078, N6077, N6076, N6075, N6074, N6073, N6072, N6071, N6070,
         N6069, N6068, N6067, N6066, N6065, N6064, N6063, N6062, N6061, N6060,
         N6059, N6058, N6057, N6056, N6055, N6054, N6053, N6052, N6051, N6050,
         N6049, N6048, N6047, N6046, N6045, N6044, N6043, N6042, N6041, N6040,
         N6039, N6038, N6037, N6036, N6035, N6034, N6033, N6032, N6031, N6030,
         N6029, N6028, N6027, N6026, N6025, N6024, N6023, N6022, N6021, N6020,
         N6019, N6018, N6017, N6016, N6015, N6014, N6013, N6012, N6011, N6010,
         N6009, N6008, N6007, N6006, N6005, N6004, N6003, N6002, N6001, N6000,
         N5999, N5998, N5997, N5996, N5995, N5994, N5993, N5992, N5991, N5990,
         N5989, N5988, N5987, N5986, N5985, N5984, N5983, N5982, N5981, N5980,
         N5979, N5978, N5977, N5976, N5975, N5974, N5973, N5972, N5971, N5970,
         N5969, N5968, N5967, N5966, N5965, N5964, N5963, N5962, N5961, N5960,
         N5959, N5958, N5957, N5956, N5955, N5954, N5953, N5952, N5951, N5950,
         N5949, N5948, N5947, N5946, N5945, N5944, N5943, N5942, N5941, N5940,
         N5939, N5938, N5937, N5936, N5935, N5934, N5933, N5932, N5931, N5930,
         N5929, N5928, N5927, N5926, N5925, N5924, N5923, N5922, N5921, N5920,
         N5919, N5918, N5917, N5916, N5915, N5914, N5913, N5912, N5911, N5910,
         N5909, N5908, N5907, N5906, N5905, N5904, N5903, N5902, N5901, N5900,
         N5899, N5898, N5897, N5896, N5895, N5894, N5893, N5892, N5891, N5890,
         N5889, N5888, N5887, N5886, N5885, N5884, N5883, N5882, N5881, N5880,
         N5879, N5878, N5877, N5876, N5875, N5874, N5873, N5872, N5871, N5870,
         N5869, N5868, N5867, N5866, N5865, N5864, N5863, N5862, N5861, N5860,
         N5859, N5858, N5857, N5856, N5855, N5854, N5853, N5852, N5851, N5850,
         N5849, N5848, N5847, N5846, N5845, N5844, N5843, N5842, N5841, N5840,
         N5839, N5838, N5837, N5836, N5835, N5834, N5833, N5832, N5831, N5830,
         N5829, N5828, N5827, N5826, N5825, N5824, N5823, N5822, N5821, N5820,
         N5819, N5818, N5817, N5816, N5815, N5814, N5813, N5812, N5811, N5810,
         N5809, N5808, N5807, N5806, N5805, N5804, N5803, N5802, N5801, N5800,
         N5799, N5798, N5797, N5796, N5795, N5794, N5793, N5792, N5791, N5790,
         N5789, N5788, N5787, N5786, N5785, N5784, N5783, N5782, N5781, N5780,
         N5779, N5778, N5777, N5776, N5775, N5774, N5773, N5772, N5771, N5770,
         N5769, N5768, N5767, N5766, N5765, N5764, N5763, N5762, N5761, N5760,
         N5759, N5758, N5757, N5756, N5755, N5754, N5753, N5752, N5751, N5750,
         N5749, N5748, N5747, N5746, N5745, N5744, N5743, N5742, N5741, N5740,
         N5739, N5738, N5737, N5736, N5735, N5734, N5733, N5732, N5731, N5730,
         N5729, N5728, N5727, N5726, N5725, N5724, N5723, N5722, N5721, N5720,
         N5719, N5718, N5717, N5716, N5715, N5714, N5713, N5712, N5711, N5710,
         N5709, N5708, N5707, N5706, N5705, N5704, N5703, N5702, N5701, N5700,
         N5699, N5698, N5697, N5696, N5695, N5694, N5693, N5692, N5691, N5690,
         N5689, N5688, N5687, N5686, N5685, N5684, N5683, N5682, N5681, N5680,
         N5679, N5678, N5677, N5676, N5675, N5674, N5673, N5672, N5671, N5670,
         N5669, N5668, N5667, N5666, N5665, N5664, N5663, N5662, N5661, N5660,
         N5659, N5658, N5657, N5656, N5655, N5654, N5653, N5652, N5651, N5650,
         N5649, N5648, N5647, N5646, N5645, N5644, N5643, N5642, N5641, N5640,
         N5639, N5638, N5637, N5636, N5635, N5634, N5633, N5632, N5631, N5630,
         N5629, N5628, N5627, N5626, N5625, N5624, N5623, N5622, N5621, N5620,
         N5619, N5618, N5617, N5616, N5615, N5614, N5613, N5612, N5611, N5610,
         N5609, N5608, N5607, N5606, N5605, N5604, N5603, N5602, N5601, N5600,
         N5599, N5598, N5597, N5596, N5595, N5594, N5593, N5592, N5591, N5590,
         N5589, N5588, N5587, N5586, N5585, N5584, N5583, N5582, N5581, N5580,
         N5579, N5578, N5577, N5576, N5575, N5574, N5573, N5572, N5571, N5570,
         N5569, N5568, N5567, N5566, N5565, N5564, N5563, N5562, N5561, N5560,
         N5559, N5558, N5557, N5556, N5555, N5554, N5553, N5552, N5551, N5550,
         N5549, N5548, N5547, N5546, N5545, N5544, N5543, N5542, N5541, N5540,
         N5539, N5538, N5537, N5536, N5535, N5534, N5533, N5532, N5531, N5530,
         N5529, N5528, N5527, N5526, N5525, N5524, N5523, N5522, N5521, N5520,
         N5519, N5518, N5517, N5516, N5515, N5514, N5513, N5512, N5511, N5510,
         N5509, N5508, N5507, N5506, N5505, N5504, N5503, N5502, N5501, N5500,
         N5499, N5498, N5497, N5496, N5495, N5494, N5493, N5492, N5491, N5490,
         N5489, N5488, N5487, N5486, N5485, N5484, N5483, N5482, N5481, N5480,
         N5479, N5478, N5477, N5476, N5475, N5474, N5473, N5472, N5471, N5470,
         N5469, N5468, N5467, N5466, N5465, N5464, N5463, N5462, N5461, N5460,
         N5459, N5458, N5457, N5456, N5455, N5454, N5453, N5452, N5451, N5450,
         N5449, N5448, N5447, N5446, N5445, N5444, N5443, N5442, N5441, N5440,
         N5439, N5438, N5437, N5436, N5435, N5434, N5433, N5432, N5431, N5430,
         N5429, N5428, N5427, N5426, N5425, N5424, N5423, N5422, N5421, N5420,
         N5419, N5418, N5417, N5416, N5415, N5414, N5413, N5412, N5411, N5410,
         N5409, N5408, N5407, N5406, N5405, N5404, N5403, N5402, N5401, N5400,
         N5399, N5398, N5397, N5396, N5395, N5394, N5393, N5392, N5391, N5390,
         N5389, N5388, N5387, N5386, N5385, N5384, N5383, N5382, N5381, N5380,
         N5379, N5378, N5377, N5376, N5375, N5374, N5373, N5372, N5371, N5370,
         N5369, N5368, N5367, N5366, N5365, N5364, N5363, N5362, N5361, N5360,
         N5359, N5358, N5357, N5356, N5355, N5354, N5353, N5352, N5351, N5350,
         N5349, N5348, N5347, N5346, N5345, N5344, N5343, N5342, N5341, N5340,
         N5339, N5338, N5337, N5336, N5335, N5334, N5333, N5332, N5331, N5330,
         N5329, N5328, N5327, N5326, N5325, N5324, N5323, N5321, N5320, N5319,
         N5318, N5317, N5316, N5315, N5314, N5313, N5312, N5311, N5310, N5309,
         N5308, N5307, N5306, N5305, N5304, N5303, N5302, N5301, N5300, N5299,
         N5298, N5271, N5270, N5269, N5268, N5267, N5266, N5265, N5264, N5263,
         N5262, N5261, N5260, N5259, N5258, N5257, N5256, N5255, N5254, N5253,
         N5252, N5251, N5250, N5249, N5248, N5247, N5246, N5245, N5244, N5243,
         N5242, N5241, N5240, N5239, N5238, N5237, N5236, N5235, N5234, N5233,
         N5232, N5231, N5230, N5229, N5228, N5227, N5226, N5225, N5224, N5223,
         N5222, N5221, N5220, N5219, N5218, N5217, N5216, N5215, N5214, N5213,
         N5212, N5211, N5210, N5209, N5208, N5207, N5206, N5205, N5204, N5203,
         N5202, N5201, N5200, N5199, N5198, N5197, N5196, N5195, N5194, N5193,
         N5192, N5191, N5190, N5189, N5188, N5187, N5186, N5185, N5184, N5183,
         N5182, N5181, N5180, N5179, N5178, N5177, N5176, N5175, N5174, N5173,
         N5172, N5146, N5145, N5144, N5143, N5142, N5141, N5140, N5139, N5138,
         N5137, N5136, N5135, N5134, N5133, N5132, N5131, N5130, N5129, N5128,
         N5127, N5126, N5125, N5124, N5123, N5122, N5121, N5120, N5119, N5118,
         N5117, N5116, N5115, N5114, N5113, N5112, N5111, N5110, N5109, N5108,
         N5107, N5106, N5105, N5104, N5103, N5102, N5101, N5100, N5099, N5098,
         N5097, N5096, N5095, N5094, N5093, N5092, N5091, N5090, N5089, N5088,
         N5087, N5086, N5085, N5084, N5083, N5082, N5081, N5080, N5079, N5078,
         N5077, N5076, N5075, N5074, N5073, N5072, N5071, N5070, N5069, N5068,
         N5067, N5066, N5065, N5064, N5063, N5062, N5061, N5060, N5059, N5058,
         N5057, N5056, N5055, N5054, N5053, N5052, N5051, N5050, N5049, N5048,
         N5047, N5046, N5045, N5044, N5043, N5042, N5041, N5040, N5039, N5038,
         N5037, N5036, N5035, N5034, N5033, N5032, N5031, N5030, N5029, N5028,
         N5027, N5026, N5025, N5024, N5023, N5022, N5021, N5020, N5019, N5018,
         N5017, N5016, N5015, N5014, N5013, N5012, N5011, N5010, N5009, N5008,
         N5007, N5006, N5005, N5004, N5003, N5002, N5001, N5000, N4999, N4998,
         N4997, N4996, N4995, N4994, N4993, N4992, N4991, N4990, N4989, N4988,
         N4987, N4986, N4985, N4984, N4983, N4982, N4981, N4980, N4979, N4978,
         N4977, N4976, N4975, N4974, N4973, N4972, N4971, N4970, N4969, N4968,
         N4967, N4966, N4965, N4964, N4963, N4962, N4961, N4960, N4959, N4958,
         N4957, N4956, N4955, N4954, N4953, N4952, N4951, N4950, N4949, N4948,
         N4947, N4946, N4945, N4944, N4943, N4942, N4941, N4940, N4939, N4938,
         N4937, N4936, N4935, N4934, N4933, N4932, N4931, N4930, N4929, N4928,
         N4927, N4926, N4925, N4924, N4923, N4922, N4921, N4920, N4919, N4918,
         N4917, N4916, N4915, N4914, N4913, N4912, N4911, N4910, N4909, N4908,
         N4907, N4906, N4905, N4904, N4903, N4902, N4901, N4900, N4899, N4898,
         N4897, N4896, N4895, N4894, N4893, N4892, N4891, N4890, N4889, N4888,
         N4887, N4886, N4885, N4884, N4883, N4882, N4881, N4880, N4879, N4878,
         N4877, N4876, N4875, N4874, N4873, N4872, N4871, N4870, N4869, N4868,
         N4867, N4866, N4865, N4864, N4863, N4862, N4861, N4860, N4859, N4858,
         N4857, N4856, N4855, N4854, N4853, N4852, N4851, N4850, N4849, N4848,
         N4847, N4771, N4770, N4769, N4768, N4767, N4766, N4765, N4764, N4763,
         N4762, N4761, N4760, N4759, N4758, N4757, N4756, N4755, N4754, N4753,
         N4752, N4751, N4750, N4749, N4748, N4747, N4696, N4695, N4694, N4693,
         N4692, N4691, N4690, N4689, N4688, N4687, N4686, N4685, N4684, N4683,
         N4682, N4681, N4680, N4679, N4678, N4677, N4676, N4675, N4674, N4673,
         N4672, N4671, N4670, N4669, N4668, N4667, N4666, N4665, N4664, N4663,
         N4662, N4661, N4660, N4659, N4658, N4657, N4656, N4655, N4654, N4653,
         N4652, N4651, N4650, N4649, N4648, N4647, N4646, N4645, N4644, N4643,
         N4642, N4641, N4640, N4639, N4638, N4637, N4636, N4635, N4634, N4633,
         N4632, N4631, N4630, N4629, N4628, N4627, N4626, N4625, N4624, N4623,
         N4622, N4621, N4620, N4619, N4618, N4617, N4616, N4615, N4614, N4613,
         N4612, N4611, N4610, N4609, N4608, N4607, N4606, N4605, N4604, N4603,
         N4602, N4601, N4600, N4599, N4598, N4597, N4596, N4595, N4594, N4593,
         N4592, N4591, N4590, N4589, N4588, N4587, N4586, N4585, N4584, N4583,
         N4582, N4581, N4580, N4579, N4578, N4577, N4576, N4575, N4574, N4573,
         N4572, N4571, N4570, N4569, N4568, N4567, N4566, N4565, N4564, N4563,
         N4562, N4561, N4560, N4559, N4558, N4557, N4556, N4555, N4554, N4553,
         N4552, N4551, N4550, N4549, N4548, N4547, N4546, N4545, N4544, N4543,
         N4542, N4541, N4540, N4539, N4538, N4537, N4536, N4535, N4534, N4533,
         N4532, N4531, N4530, N4529, N4528, N4527, N4526, N4525, N4524, N4523,
         N4522, N4521, N4520, N4519, N4518, N4517, N4516, N4515, N4514, N4513,
         N4512, N4511, N4510, N4509, N4508, N4507, N4506, N4505, N4504, N4503,
         N4502, N4501, N4500, N4499, N4498, N4497, N4496, N4495, N4494, N4493,
         N4492, N4491, N4490, N4489, N4488, N4487, N4486, N4485, N4484, N4483,
         N4482, N4481, N4480, N4479, N4478, N4477, N4476, N4475, N4474, N4473,
         N4472, N4471, N4470, N4469, N4468, N4467, N4466, N4465, N4464, N4463,
         N4462, N4461, N4460, N4459, N4458, N4457, N4456, N4455, N4454, N4453,
         N4452, N4451, N4450, N4449, N4448, N4447, N4446, N4445, N4444, N4443,
         N4442, N4441, N4440, N4439, N4438, N4437, N4436, N4435, N4434, N4433,
         N4432, N4431, N4430, N4429, N4428, N4427, N4426, N4425, N4424, N4423,
         N4422, N4421, N4420, N4419, N4418, N4417, N4416, N4415, N4414, N4413,
         N4412, N4365, N4364, N4363, N4362, N4361, N4360, N4359, N4358, N4357,
         N4356, N4355, N4354, N4353, N4352, N4351, N4350, N4349, N4348, N4347,
         N4346, N4345, N4344, N4343, N4342, N4341, N4340, N4339, N4338, N4337,
         N4336, N4335, N4334, N4333, N4332, N4331, N4330, N4329, N4328, N4327,
         N4326, N4325, N4324, N4323, N4322, N4321, N4320, N4319, N4318, N4317,
         N4316, N4315, N4314, N4313, N4312, N4311, N4310, N4309, N4308, N4307,
         N4306, N4305, N4304, N4303, N4302, N4301, N4300, N4299, N4298, N4297,
         N4296, N4295, N4294, N4293, N4292, N4291, N4290, N4289, N4288, N4287,
         N4286, N4285, N4284, N4283, N4282, N4281, N4280, N4279, N4278, N4277,
         N4276, N4275, N4274, N4273, N4272, N4271, N4270, N4269, N4268, N4267,
         N4266, N4265, N4264, N4263, N4262, N4261, N4260, N4259, N4258, N4257,
         N4256, N4255, N4254, N4253, N4252, N4251, N4250, N4249, N4248, N4247,
         N4246, N4245, N4244, N4243, N4242, N4241, N4240, N4239, N4238, N4237,
         N4236, N4235, N4234, N4233, N4232, N4231, N4230, N4229, N4228, N4227,
         N4226, N4225, N4224, N4223, N4222, N4221, N4220, N4219, N4218, N4217,
         N4216, N4215, N4214, N4213, N4212, N4211, N4210, N4209, N4208, N4207,
         N4206, N4205, N4204, N4203, N4202, N4201, N4200, N4199, N4198, N4197,
         N4196, N4195, N4194, N4193, N4192, N4191, N4190, N4189, N4188, N4187,
         N4186, N4185, N4184, N4183, N4182, N4181, N4180, N4179, N4178, N4177,
         N4176, N4175, N4174, N4173, N4172, N4171, N4170, N4169, N4168, N4167,
         N4166, N4165, N4164, N4163, N4162, N4161, N4160, N4159, N4158, N4157,
         N4156, N4155, N4154, N4153, N4152, N4151, N4150, N4149, N4148, N4147,
         N4146, N4145, N4144, N4143, N4142, N4141, N4140, N4139, N4138, N4137,
         N4136, N4135, N4134, N4133, N4132, N4131, N4130, N4129, N4128, N4127,
         N4126, N4125, N4124, N4123, N4122, N4121, N4120, N4119, N4118, N4117,
         N4116, N4115, N4114, N4113, N4112, N4111, N4110, N4109, N4108, N4107,
         N4106, N4105, N4104, N4103, N4102, N4101, N4100, N4099, N4098, N4097,
         N4096, N4095, N4094, N4093, N4092, N4091, N4090, N4089, N4088, N4087,
         N4086, N4085, N4084, N4083, N4082, N4081, N4080, N4079, N4078, N4077,
         N4076, N4075, N4074, N4073, N4072, N4071, N4070, N4069, N4068, N4067,
         N4066, N4065, N4064, N4063, N4062, N4061, N4060, N4059, N4058, N4057,
         N4056, N4055, N4054, N4053, N4052, N4051, N4050, N4049, N4048, N4047,
         N4046, N4045, N4044, N4043, N4042, N4041, N4040, N4039, N4038, N4037,
         N4036, N4035, N4034, N4033, N4032, N4031, N4030, N4029, N4028, N4027,
         N4026, N4025, N4024, N4023, N4022, N4021, N4020, N4019, N4018, N4017,
         N4016, N4015, N4014, N4013, N4012, N4011, N4010, N4009, N4008, N4007,
         N4006, N4005, N4004, N4003, N4002, N4001, N4000, N3999, N3998, N3997,
         N3996, N3995, N3994, N3993, N3992, N3991, N3990, N3989, N3988, N3987,
         N3986, N3985, N3984, N3983, N3982, N3981, N3980, N3979, N3978, N3977,
         N3976, N3975, N3974, N3973, N3972, N3971, N3970, N3969, N3968, N3967,
         N3966, N3965, N3964, N3963, N3962, N3961, N3960, N3959, N3958, N3957,
         N3956, N3955, N3954, N3953, N3952, N3951, N3950, N3949, N3948, N3947,
         N3946, N3945, N3944, N3943, N3942, N3941, N3940, N3939, N3938, N3937,
         N3936, N3935, N3934, N3933, N3932, N3931, N3930, N3929, N3928, N3927,
         N3926, N3925, N3924, N3923, N3922, N3921, N3920, N3919, N3918, N3917,
         N3916, N3915, N3914, N3913, N3912, N3911, N3910, N3909, N3908, N3907,
         N3906, N3905, N3904, N3903, N3902, N3901, N3900, N3899, N3898, N3897,
         N3896, N3895, N3894, N3893, N3892, N3891, N3890, N3889, N3888, N3887,
         N3886, N3885, N3884, N3883, N3882, N3881, N3880, N3879, N3878, N3877,
         N3876, N3875, N3874, N3873, N3872, N3871, N3870, N3869, N3868, N3867,
         N3866, N3865, N3864, N3863, N3862, N3861, N3860, N3859, N3858, N3857,
         N3856, N3855, N3854, N3853, N3852, N3851, N3850, N3849, N3848, N3847,
         N3846, N3845, N3844, N3843, N3842, N3841, N3840, N3839, N3838, N3837,
         N3836, N3835, N3834, N3833, N3832, N3831, N3830, N3829, N3828, N3827,
         N3826, N3825, N3824, N3823, N3822, N3821, N3820, N3819, N3818, N3817,
         N3816, N3815, N3814, N3813, N3812, N3811, N3810, N3809, N3808, N3807,
         N3806, N3805, N3804, N3803, N3802, N3801, N3800, N3799, N3798, N3797,
         N3796, N3795, N3794, N3793, N3792, N3791, N3790, N3789, N3788, N3787,
         N3786, N3785, N3784, N3783, N3782, N3781, N3780, N3779, N3778, N3777,
         N3776, N3775, N3774, N3773, N3772, N3771, N3770, N3769, N3768, N3767,
         N3766, N3765, N3764, N3763, N3762, N3761, N3760, N3759, N3758, N3757,
         N3756, N3755, N3754, N3753, N3752, N3751, N3750, N3749, N3748, N3747,
         N3746, N3745, N3744, N3743, N3742, N3741, N3740, N3739, N3738, N3737,
         N3736, N3735, N3734, N3733, N3732, N3731, N3730, N3729, N3728, N3727,
         N3726, N3725, N3724, N3723, N3722, N3721, N3720, N3719, N3718, N3717,
         N3716, N3715, N3714, N3713, N3712, N3711, N3710, N3709, N3708, N3707,
         N3706, N3705, N3704, N3703, N3702, N3701, N3700, N3699, N3698, N3697,
         N3696, N3695, N3694, N3693, N3692, N3691, N3690, N3689, N3688, N3687,
         N3686, N3685, N3684, N3683, N3682, N3681, N3680, N3679, N3678, N3677,
         N3676, N3675, N3674, N3673, N3672, N3671, N3670, N3669, N3668, N3667,
         N3666, N3665, N3664, N3663, N3662, N3661, N3660, N3659, N3658, N3657,
         N3656, N3655, N3654, N3653, N3652, N3651, N3650, N3649, N3648, N3647,
         N3646, N3645, N3644, N3643, N3642, N3641, N3640, N3639, N3638, N3637,
         N3636, N3635, N3634, N3633, N3632, N3631, N3630, N3629, N3628, N3627,
         N3626, N3625, N3624, N3623, N3622, N3621, N3620, N3619, N3618, N3617,
         N3616, N3615, N3614, N3613, N3612, N3611, N3610, N3609, N3608, N3607,
         N3606, N3605, N3604, N3603, N3602, N3601, N3600, N3599, N3598, N3597,
         N3596, N3595, N3594, N3593, N3592, N3591, N3590, N3589, N3588, N3587,
         N3586, N3585, N3584, N3583, N3582, N3581, N3580, N3579, N3578, N3577,
         N3576, N3575, N3574, N3573, N3572, N3571, N3570, N3569, N3568, N3567,
         N3566, N3565, N3564, N3563, N3562, N3561, N3560, N3559, N3558, N3557,
         N3556, N3555, N3554, N3553, N3552, N3551, N3550, N3549, N3548, N3547,
         N3546, N3545, N3544, N3543, N3542, N3541, N3515, N3514, N3513, N3512,
         N3511, N3510, N3509, N3508, N3507, N3506, N3505, N3504, N3503, N3502,
         N3501, N3500, N3499, N3498, N3497, N3496, N3495, N3494, N3493, N3492,
         N3490, N3489, N3488, N3487, N3486, N3485, N3484, N3483, N3482, N3481,
         N3480, N3479, N3478, N3477, N3476, N3475, N3474, N3473, N3472, N3471,
         N3470, N3469, N3468, N3467, N3465, N3464, N3463, N3462, N3461, N3460,
         N3459, N3458, N3457, N3456, N3455, N3454, N3453, N3452, N3451, N3450,
         N3449, N3448, N3447, N3446, N3445, N3444, N3443, N3442, N3441, N3440,
         N3439, N3438, N3437, N3436, N3435, N3434, N3433, N3432, N3431, N3430,
         N3429, N3428, N3427, N3426, N3425, N3424, N3423, N3422, N3421, N3420,
         N3419, N3418, N3417, N3416, N3415, N3414, N3413, N3412, N3411, N3410,
         N3409, N3408, N3407, N3406, N3405, N3404, N3403, N3402, N3401, N3400,
         N3399, N3398, N3397, N3396, N3395, N3394, N3393, N3392, N3391, N3365,
         N3364, N3363, N3362, N3361, N3360, N3359, N3358, N3357, N3356, N3355,
         N3354, N3353, N3352, N3351, N3350, N3349, N3348, N3347, N3346, N3345,
         N3344, N3343, N3342, N3341, N3340, N3339, N3338, N3337, N3336, N3335,
         N3334, N3333, N3332, N3331, N3330, N3329, N3328, N3327, N3326, N3325,
         N3324, N3323, N3322, N3321, N3320, N3319, N3318, N3317, N3316, N3315,
         N3314, N3313, N3312, N3311, N3310, N3309, N3308, N3307, N3306, N3305,
         N3304, N3303, N3302, N3301, N3300, N3299, N3298, N3297, N3296, N3295,
         N3294, N3293, N3292, N3291, N3290, N3289, N3288, N3287, N3286, N3285,
         N3284, N3283, N3282, N3281, N3280, N3279, N3278, N3277, N3276, N3275,
         N3274, N3273, N3272, N3271, N3270, N3269, N3268, N3267, N3266, N3265,
         N3264, N3263, N3262, N3261, N3260, N3259, N3258, N3257, N3256, N3255,
         N3254, N3253, N3252, N3251, N3250, N3249, N3248, N3247, N3246, N3245,
         N3244, N3243, N3242, N3241, N3240, N3239, N3238, N3237, N3236, N3235,
         N3234, N3233, N3232, N3231, N3230, N3229, N3228, N3227, N3226, N3225,
         N3224, N3223, N3222, N3221, N3220, N3219, N3218, N3217, N3216, N3165,
         N3164, N3163, N3162, N3161, N3160, N3159, N3158, N3157, N3156, N3155,
         N3154, N3153, N3152, N3151, N3150, N3149, N3148, N3147, N3146, N3145,
         N3144, N3143, N3142, N3141, N3090, N3089, N3088, N3087, N3086, N3085,
         N3084, N3083, N3082, N3081, N3080, N3079, N3078, N3077, N3076, N3075,
         N3074, N3073, N3072, N3071, N3070, N3069, N3068, N3067, N3066, N3065,
         N3064, N3063, N3062, N3061, N3060, N3059, N3058, N3057, N3056, N3055,
         N3054, N3053, N3052, N3051, N3050, N3049, N3048, N3047, N3046, N3045,
         N3044, N3043, N3042, N3041, N3040, N3039, N3038, N3037, N3036, N3035,
         N3034, N3033, N3032, N3031, N3030, N3029, N3028, N3027, N3026, N3025,
         N3024, N3023, N3022, N3021, N3020, N3019, N3018, N3017, N3016, N3015,
         N3014, N3013, N3012, N3011, N3010, N3009, N3008, N3007, N3006, N3005,
         N3004, N3003, N3002, N3001, N3000, N2999, N2998, N2997, N2996, N2995,
         N2994, N2993, N2992, N2991, N2990, N2989, N2988, N2987, N2986, N2985,
         N2984, N2983, N2982, N2981, N2980, N2979, N2978, N2977, N2976, N2975,
         N2974, N2973, N2972, N2971, N2970, N2969, N2968, N2967, N2966, N2965,
         N2964, N2963, N2962, N2961, N2960, N2959, N2958, N2957, N2956, N2955,
         N2954, N2953, N2952, N2951, N2950, N2949, N2948, N2947, N2946, N2945,
         N2944, N2943, N2942, N2941, N2940, N2939, N2938, N2937, N2936, N2935,
         N2934, N2933, N2932, N2931, N2930, N2929, N2928, N2927, N2926, N2925,
         N2924, N2923, N2922, N2921, N2920, N2919, N2918, N2917, N2916, N2915,
         N2914, N2913, N2912, N2911, N2910, N2909, N2908, N2907, N2906, N2905,
         N2904, N2903, N2902, N2901, N2900, N2899, N2898, N2897, N2896, N2895,
         N2894, N2893, N2892, N2891, N2890, N2889, N2888, N2887, N2886, N2885,
         N2884, N2883, N2882, N2881, N2880, N2879, N2878, N2877, N2876, N2875,
         N2874, N2873, N2872, N2871, N2870, N2869, N2868, N2867, N2866, N2865,
         N2864, N2863, N2862, N2861, N2860, N2859, N2858, N2857, N2856, N2855,
         N2854, N2853, N2852, N2851, N2850, N2849, N2848, N2847, N2846, N2845,
         N2844, N2843, N2842, N2841, N2840, N2839, N2838, N2837, N2836, N2835,
         N2834, N2833, N2832, N2831, N2830, N2829, N2828, N2827, N2826, N2825,
         N2824, N2823, N2822, N2821, N2820, N2819, N2818, N2817, N2816, N2815,
         N2814, N2813, N2812, N2811, N2810, N2809, N2808, N2807, N2806, N2739,
         N2738, N2737, N2736, N2735, N2734, N2733, N2732, N2731, N2730, N2729,
         N2728, N2727, N2726, N2725, N2724, N2723, N2722, N2721, N2720, N2719,
         N2718, N2717, N2716, N2715, N2714, N2713, N2712, N2711, N2710, N2709,
         N2708, N2707, N2706, N2705, N2704, N2703, N2702, N2701, N2700, N2699,
         N2698, N2697, N2696, N2695, N2694, N2693, N2692, N2691, N2690, N2689,
         N2688, N2687, N2686, N2685, N2684, N2683, N2682, N2681, N2680, N2679,
         N2678, N2677, N2676, N2675, N2674, N2673, N2672, N2671, N2670, N2669,
         N2668, N2667, N2666, N2665, N2664, N2663, N2662, N2661, N2660, N2659,
         N2658, N2657, N2656, N2655, N2654, N2653, N2652, N2651, N2650, N2649,
         N2648, N2647, N2646, N2645, N2644, N2643, N2642, N2641, N2640, N2639,
         N2638, N2637, N2636, N2635, N2634, N2633, N2632, N2631, N2630, N2629,
         N2628, N2627, N2626, N2625, N2624, N2623, N2622, N2621, N2620, N2619,
         N2618, N2617, N2616, N2615, N2614, N2613, N2612, N2611, N2610, N2609,
         N2608, N2607, N2606, N2605, N2604, N2603, N2602, N2601, N2600, N2599,
         N2598, N2597, N2596, N2595, N2594, N2593, N2592, N2591, N2590, N2589,
         N2588, N2587, N2586, N2585, N2584, N2583, N2582, N2581, N2580, N2579,
         N2578, N2577, N2576, N2575, N2574, N2573, N2572, N2571, N2570, N2569,
         N2568, N2567, N2566, N2565, N2564, N2563, N2562, N2561, N2560, N2559,
         N2558, N2557, N2556, N2555, N2554, N2553, N2552, N2551, N2550, N2549,
         N2548, N2547, N2546, N2545, N2544, N2543, N2542, N2541, N2540, N2539,
         N2538, N2537, N2536, N2535, N2534, N2533, N2532, N2531, N2530, N2529,
         N2528, N2527, N2526, N2525, N2524, N2523, N2522, N2521, N2520, N2519,
         N2518, N2517, N2516, N2515, N2514, N2513, N2512, N2511, N2510, N2509,
         N2508, N2507, N2506, N2505, N2504, N2503, N2502, N2501, N2500, N2499,
         N2498, N2497, N2496, N2495, N2494, N2493, N2492, N2491, N2490, N2489,
         N2488, N2487, N2486, N2485, N2484, N2483, N2482, N2481, N2480, N2479,
         N2478, N2477, N2476, N2475, N2474, N2473, N2472, N2471, N2470, N2469,
         N2468, N2467, N2466, N2465, N2464, N2463, N2462, N2461, N2460, N2459,
         N2458, N2457, N2456, N2455, N2454, N2453, N2452, N2451, N2450, N2449,
         N2448, N2447, N2446, N2445, N2444, N2443, N2442, N2441, N2440, N2439,
         N2438, N2437, N2436, N2435, N2434, N2433, N2432, N2431, N2430, N2429,
         N2428, N2427, N2426, N2425, N2424, N2423, N2422, N2421, N2420, N2419,
         N2418, N2417, N2416, N2415, N2414, N2413, N2412, N2411, N2410, N2409,
         N2408, N2407, N2406, N2405, N2404, N2403, N2402, N2401, N2400, N2399,
         N2398, N2397, N2396, N2395, N2394, N2393, N2392, N2391, N2390, N2389,
         N2388, N2387, N2386, N2385, N2384, N2383, N2382, N2381, N2380, N2379,
         N2378, N2377, N2376, N2375, N2374, N2373, N2372, N2371, N2370, N2369,
         N2368, N2367, N2366, N2365, N2364, N2363, N2362, N2361, N2360, N2359,
         N2358, N2357, N2356, N2355, N2354, N2353, N2352, N2351, N2350, N2349,
         N2348, N2347, N2346, N2345, N2344, N2343, N2342, N2341, N2340, N2339,
         N2338, N2337, N2336, N2335, N2334, N2333, N2332, N2331, N2330, N2329,
         N2328, N2327, N2326, N2325, N2324, N2323, N2322, N2321, N2320, N2319,
         N2318, N2317, N2316, N2315, N2314, N2313, N2312, N2311, N2310, N2309,
         N2308, N2307, N2306, N2305, N2304, N2303, N2302, N2301, N2300, N2299,
         N2298, N2297, N2296, N2295, N2294, N2293, N2292, N2291, N2290, N2289,
         N2288, N2287, N2286, N2285, N2284, N2283, N2282, N2281, N2280, N2279,
         N2278, N2277, N2276, N2275, N2274, N2273, N2272, N2271, N2270, N2269,
         N2268, N2267, N2266, N2265, N2264, N2263, N2262, N2261, N2260, N2259,
         N2258, N2257, N2256, N2255, N2254, N2253, N2252, N2251, N2250, N2249,
         N2248, N2247, N2246, N2245, N2244, N2243, N2242, N2241, N2240, N2239,
         N2238, N2237, N2236, N2235, N2234, N2233, N2232, N2231, N2230, N2229,
         N2228, N2227, N2226, N2225, N2224, N2223, N2222, N2221, N2220, N2219,
         N2218, N2217, N2216, N2215, N2214, N2213, N2212, N2211, N2210, N2209,
         N2208, N2207, N2206, N2205, N2204, N2203, N2202, N2201, N2200, N2199,
         N2198, N2197, N2196, N2195, N2194, N2193, N2192, N2191, N2190, N2189,
         N2188, N2187, N2186, N2185, N2184, N2183, N2182, N2181, N2180, N2179,
         N2178, N2177, N2176, N2175, N2174, N2173, N2172, N2171, N2170, N2169,
         N2168, N2167, N2166, N2165, N2164, N2163, N2162, N2161, N2160, N2159,
         N2158, N2157, N2156, N2155, N2154, N2153, N2152, N2151, N2150, N2149,
         N2148, N2147, N2146, N2145, N2144, N2143, N2142, N2141, N2140, N2114,
         N2113, N2112, N2111, N2110, N2109, N2108, N2107, N2106, N2105, N2104,
         N2103, N2102, N2101, N2100, N2099, N2098, N2097, N2096, N2095, N2094,
         N2093, N2092, N2091, N2090, N2089, N2088, N2087, N2086, N2085, N2084,
         N2083, N2082, N2081, N2080, N2079, N2078, N2077, N2076, N2075, N2074,
         N2073, N2072, N2071, N2070, N2069, N2068, N2067, N2066, N2065, N2064,
         N2063, N2062, N2061, N2060, N2059, N2058, N2057, N2056, N2055, N2054,
         N2053, N2052, N2051, N2050, N2049, N2048, N2047, N2046, N2045, N2044,
         N2043, N2042, N2041, N2040, N2039, N2038, N2037, N2036, N2035, N2034,
         N2033, N2032, N2031, N2030, N2029, N2028, N2027, N2026, N2025, N2024,
         N2023, N2022, N2021, N2020, N2019, N2018, N2017, N2016, N2015, N2014,
         N2013, N2012, N2011, N2010, N2009, N2008, N2007, N2006, N2005, N2004,
         N2003, N2002, N2001, N2000, N1999, N1998, N1997, N1996, N1995, N1994,
         N1993, N1992, N1991, N1989, N1988, N1987, N1986, N1985, N1984, N1983,
         N1982, N1981, N1980, N1979, N1978, N1977, N1976, N1975, N1974, N1973,
         N1972, N1971, N1970, N1969, N1968, N1967, N1966, N1914, N1913, N1912,
         N1911, N1910, N1909, N1908, N1907, N1906, N1905, N1904, N1903, N1902,
         N1901, N1900, N1899, N1898, N1897, N1896, N1895, N1894, N1893, N1892,
         N1891, N1890, N1889, N1888, N1887, N1886, N1885, N1884, N1883, N1882,
         N1881, N1880, N1879, N1878, N1877, N1876, N1875, N1874, N1873, N1872,
         N1871, N1870, N1869, N1868, N1867, N1866, N1865, N1839, N1838, N1837,
         N1836, N1835, N1834, N1833, N1832, N1831, N1830, N1829, N1828, N1827,
         N1826, N1825, N1824, N1823, N1822, N1821, N1820, N1819, N1818, N1817,
         N1816, N1815, N1814, N1813, N1812, N1811, N1810, N1809, N1808, N1807,
         N1806, N1805, N1804, N1803, N1802, N1801, N1800, N1799, N1798, N1797,
         N1796, N1795, N1794, N1793, N1792, N1791, N1790, N1739, N1738, N1737,
         N1736, N1735, N1734, N1733, N1732, N1731, N1730, N1729, N1728, N1727,
         N1726, N1725, N1724, N1723, N1722, N1721, N1720, N1719, N1718, N1717,
         N1716, N1715, N1714, N1713, N1712, N1711, N1710, N1709, N1708, N1707,
         N1706, N1705, N1704, N1703, N1702, N1701, N1700, N1699, N1698, N1697,
         N1696, N1695, N1694, N1693, N1692, N1691, N1690, N1689, N1688, N1687,
         N1686, N1685, N1684, N1683, N1682, N1681, N1680, N1679, N1678, N1677,
         N1676, N1675, N1674, N1673, N1672, N1671, N1670, N1669, N1668, N1667,
         N1666, N1665, N1664, N1663, N1662, N1661, N1660, N1659, N1658, N1657,
         N1656, N1655, N1654, N1653, N1652, N1651, N1650, N1649, N1648, N1647,
         N1646, N1645, N1644, N1643, N1642, N1641, N1640, N1639, N1638, N1637,
         N1636, N1635, N1634, N1633, N1632, N1631, N1630, N760, N759, N758,
         N757, N756, N755, N754, N753, N752, N751, N750, N749, N748, N747,
         N746, N745, N744, N743, N742, N741, N740, N739, N738, N737, N736,
         N735, N734, N733, N732, N731, N730, N729, N728, N727, N726, N725,
         N724, N723, N722, N721, N720, N719, N718, N717, N716, N715, N714,
         N713, N712, N711, N710, N709, N708, N707, N706, N705, N704, N703,
         N702, N701, N700, N699, N698, N697, N696, N695, N694, N693, N692,
         N691, N690, N689, N688, N687, N686, N685, N684, N683, N682, N681,
         N680, N679, N678, N677, N676, N675, N674, N673, N672, N671, N670,
         N669, N668, N667, N666, N665, N664, N663, N662, N661, N660, N659,
         N658, N657, N656, N655, N654, N653, N652, N651, N650, N649, N648,
         N647, N646, N645, N644, N643, N642, N641, N640, N639, N638, N637,
         N636, N635, N634, N633, N632, N631, N630, N629, N628, N627, N626,
         N625, N624, N623, N622, N621, N620, N619, N618, N617, N616, N615,
         N614, N613, N612, N611, N610, N609, N608, N607, N606, N605, N604,
         N603, N602, N601, N600, N599, N598, N597, N596, N595, N594, N593,
         N592, N591, N590, N589, N588, N587, N586, N585, N584, N583, N582,
         N581, N580, N579, N578, N577, N576, N575, N574, N573, N572, N571,
         N570, N569, N568, N567, N566, N565, N564, N563, N562, N561, N535,
         N534, N533, N532, N531, N530, N529, N528, N527, N526, N525, N524,
         N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, N513,
         N512, N511, N510, N509, N508, N507, N506, N505, N504, N503, N502,
         N501, N500, N499, N498, N497, N496, N495, N494, N493, N492, N491,
         N490, N489, N488, N487, N486, N435, N434, N433, N432, N431, N430,
         N429, N428, N427, N426, N425, N424, N423, N422, N421, N420, N419,
         N418, N417, N416, N415, N414, N413, N412, N388, N387, N386, N385,
         N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374,
         N373, N372, N371, N370, N369, N368, N367, N345, N344, N343, N342,
         N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331,
         N330, N329, N328, N327, N326, N999, N998, N997, N996, N995, N994,
         N993, N992, N991, N990, N989, N988, N937, N936, N935, N934, N933,
         N932, N931, N930, N929, N928, N927, N926, N925, N924, N923, N922,
         N921, N920, N919, N918, N917, N916, N915, N914, N913, N912, N911,
         N910, N909, N908, N907, N906, N905, N904, N903, N902, N901, N900,
         N899, N898, N897, N896, N895, N894, N893, N892, N891, N890, N889,
         N888, N887, N886, N885, N884, N883, N882, N881, N880, N879, N878,
         N877, N876, N875, N874, N873, N872, N871, N870, N869, N868, N867,
         N866, N865, N864, N863, N862, N861, N860, N859, N858, N857, N856,
         N855, N854, N853, N852, N851, N850, N849, N848, N847, N846, N845,
         N844, N843, N842, N841, N840, N839, N838, N837, N836, N835, N834,
         N833, N832, N831, N830, N829, N828, N1562, N1561, N1560, N1559, N1558,
         N1557, N1556, N1555, N1554, N1553, N1552, N1551, N1550, N1549, N1548,
         N1547, N1546, N1545, N1544, N1543, N1542, N1541, N1540, N1539, N1538,
         N1537, N1536, N1535, N1534, N1533, N1532, N1531, N1530, N1529, N1528,
         N1527, N1526, N1525, N1524, N1523, N1522, N1521, N1520, N1519, N1518,
         N1517, N1516, N1515, N1514, N1513, N1512, N1511, N1510, N1509, N1508,
         N1507, N1506, N1505, N1504, N1503, N1502, N1501, N1500, N1499, N1498,
         N1497, N1496, N1495, N1494, N1493, N1492, N1491, N1490, N1489, N1488,
         N1487, N1486, N1485, N1484, N1483, N1482, N1481, N1480, N1479, N1478,
         N1477, N1476, N1475, N1474, N1473, N1472, N1471, N1470, N1469, N1468,
         N1467, N1466, N1465, N1464, N1463, N1462, N1461, N1460, N1459, N1458,
         N1457, N1456, N1455, N1454, N1453, N1452, N1451, N1450, N1449, N1448,
         N1447, N1446, N1445, N1444, N1443, N1442, N1441, N1440, N1439, N1438,
         N1437, N1436, N1435, N1434, N1433, N1432, N1431, N1430, N1429, N1428,
         N1427, N1426, N1425, N1424, N1423, N1422, N1421, N1420, N1419, N1418,
         N1417, N1416, N1415, N1414, N1413, N1412, N1411, N1410, N1409, N1408,
         N1407, N1406, N1405, N1404, N1403, N1402, N1401, N1400, N1399, N1398,
         N1397, N1396, N1395, N1394, N1393, N1392, N1391, N1390, N1389, N1388,
         N1387, N1386, N1385, N1384, N1383, N1382, N1381, N1380, N1379, N1378,
         N1377, N1376, N1375, N1374, N1373, N1372, N1371, N1370, N1369, N1368,
         N1367, N1366, N1365, N1364, N1363, N1362, N1361, N1360, N1359, N1358,
         N1357, N1356, N1355, N1354, N1353, N1352, N1351, N1350, N1349, N1348,
         N1347, N1346, N1345, N1344, N1343, N1342, N1341, N1340, N1339, N1338,
         N1337, N1336, N1335, N1334, N1333, N1332, N1331, N1330, N1329, N1328,
         N1327, N1326, N1325, N1324, N1323, N1322, N1321, N1320, N1319, N1318,
         N1317, N1316, N1315, N1314, N1313, N1312, N1311, N1310, N1309, N1308,
         N1307, N1306, N1305, N1304, N1303, N1302, N1301, N1300, N1299, N1298,
         N1297, N1296, N1295, N1294, N1293, N1292, N1291, N1290, N1289, N1288,
         N1287, N1286, N1285, N1284, N1283, N1282, N1281, N1280, N1279, N1278,
         N1277, N1276, N1275, N1274, N1273, N1272, N1271, N1270, N1269, N1268,
         N1267, N1266, N1265, N1264, N1263, N1262, N1261, N1260, N1259, N1258,
         N1257, N1256, N1255, N1254, N1253, N1252, N1251, N1250, N1249, N1248,
         N1247, N1246, N1245, N1244, N1243, N1242, N1241, N1240, N1239, N1238,
         N1237, N1236, N1235, N1234, N1233, N1232, N1231, N1230, N1229, N1228,
         N1227, N1226, N1225, N1224, N1223, N1222, N1221, N1220, N1219, N1218,
         N1217, N1216, N1215, N1214, N1213, N1212, N1211, N1210, N1209, N1208,
         N1207, N1206, N1205, N1204, N1203, N1202, N1201, N1200, N1199, N1198,
         N1197, N1196, N1195, N1194, N1193, N1192, N1191, N1190, N1189, N1187,
         N1186, N1185, N1184, N1183, N1182, N1181, N1180, N1179, N1178, N1177,
         N1176, N1175, N1174, N1173, N1172, N1171, N1170, N1169, N1168, N1167,
         N1166, N1165, N1164, N1163, N1162, N1161, N1160, N1159, N1158, N1157,
         N1156, N1155, N1154, N1153, N1152, N1151, N1150, N1149, N1148, N1147,
         N1146, N1145, N1144, N1143, N1142, N1141, N1140, N1139, N1138, N1137,
         N1136, N1135, N1134, N1133, N1132, N1131, N1130, N1129, N1128, N1127,
         N1126, N1125, N1124, N1123, N1122, N1121, N1120, N1119, N1118, N1117,
         N1116, N1115, N1114, N1113, N1112, N1111, N1110, N1109, N1108, N1107,
         N1106, N1105, N1104, N1103, N1102, N1101, N1100, N1099, N1098, N1097,
         N1096, N1095, N1094, N1093, N1092, N1091, N1090, N1089, N1088, N1087,
         N1086, N1085, N1084, N1083, N1082, N1081, N1080, N1079, N1078, N1077,
         N1076, N1075, N1074, N1073, N1072, N1071, N1070, N1069, N1068, N1067,
         N1066, N1065, N1064, N1063, N1037, N1036, N1035, N1034, N1033, N1032,
         N1031, N1030, N1029, N1028, N1027, N1026, N1025, N1024, N1023, N1022,
         N1021, N1020, N1019, N1018, N1017, N1016, N1015, N1014, N1013, N1012,
         N1011, N1010, N1009, N1008, N1007, N1006, N1005, N1004, N1003, N1002,
         N1001, N1000, N259, N258, N257, N256, N255, N254, N253, N252, N251,
         N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240,
         N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229,
         N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218,
         N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207,
         N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196,
         N195, N194, N193, N192, N191, N169, N168, N167, N166, N165, N164,
         N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153,
         N152, N151, N150, \add_5_root_add_101_6/carry[2] ,
         \add_5_root_add_101_6/carry[3] , \add_5_root_add_101_6/carry[4] ,
         \add_5_root_add_101_6/carry[5] , \add_5_root_add_101_6/carry[6] ,
         \add_5_root_add_101_6/carry[7] , \add_5_root_add_101_6/carry[8] ,
         \add_5_root_add_101_6/carry[9] , \add_5_root_add_101_6/carry[10] ,
         \add_5_root_add_101_6/carry[11] , \add_5_root_add_101_6/carry[12] ,
         \add_5_root_add_101_6/carry[13] , \add_5_root_add_101_6/carry[14] ,
         \add_5_root_add_101_6/carry[15] , \add_5_root_add_101_6/carry[16] ,
         \add_5_root_add_101_6/carry[17] , \add_75_root_add_236_61/carry[1] ,
         \add_75_root_add_236_61/carry[2] , \add_75_root_add_236_61/carry[3] ,
         \add_75_root_add_236_61/carry[4] , \add_75_root_add_236_61/carry[5] ,
         \add_75_root_add_236_61/carry[6] , \add_75_root_add_236_61/carry[7] ,
         \add_75_root_add_236_61/carry[8] , \add_75_root_add_236_61/carry[9] ,
         \add_75_root_add_236_61/carry[10] ,
         \add_75_root_add_236_61/carry[11] ,
         \add_75_root_add_236_61/carry[12] ,
         \add_75_root_add_236_61/carry[13] , \add_76_root_add_236_61/carry[2] ,
         \add_76_root_add_236_61/carry[3] , \add_76_root_add_236_61/carry[4] ,
         \add_76_root_add_236_61/carry[5] , \add_76_root_add_236_61/carry[6] ,
         \add_76_root_add_236_61/carry[7] , \add_76_root_add_236_61/carry[8] ,
         \add_76_root_add_236_61/carry[9] , \add_76_root_add_236_61/carry[10] ,
         \add_76_root_add_236_61/carry[11] ,
         \add_76_root_add_236_61/carry[12] ,
         \add_76_root_add_236_61/carry[13] ,
         \add_76_root_add_236_61/carry[14] ,
         \add_76_root_add_236_61/carry[15] ,
         \add_76_root_add_236_61/carry[16] ,
         \add_76_root_add_236_61/carry[17] , \add_62_root_sub_205_16/carry[1] ,
         \add_62_root_sub_205_16/carry[2] , \add_62_root_sub_205_16/carry[3] ,
         \add_62_root_sub_205_16/carry[4] , \add_62_root_sub_205_16/carry[5] ,
         \add_62_root_sub_205_16/carry[6] , \add_62_root_sub_205_16/carry[7] ,
         \add_62_root_sub_205_16/carry[8] , \add_62_root_sub_205_16/carry[9] ,
         \add_62_root_sub_205_16/carry[10] ,
         \add_62_root_sub_205_16/carry[11] ,
         \add_62_root_sub_205_16/carry[12] ,
         \add_62_root_sub_205_16/carry[13] , \add_63_root_sub_205_16/carry[2] ,
         \add_63_root_sub_205_16/carry[3] , \add_63_root_sub_205_16/carry[4] ,
         \add_63_root_sub_205_16/carry[5] , \add_63_root_sub_205_16/carry[6] ,
         \add_63_root_sub_205_16/carry[7] , \add_63_root_sub_205_16/carry[8] ,
         \add_63_root_sub_205_16/carry[9] , \add_63_root_sub_205_16/carry[10] ,
         \add_63_root_sub_205_16/carry[11] ,
         \add_63_root_sub_205_16/carry[12] ,
         \add_63_root_sub_205_16/carry[13] ,
         \add_63_root_sub_205_16/carry[14] ,
         \add_63_root_sub_205_16/carry[15] ,
         \add_63_root_sub_205_16/carry[16] ,
         \add_63_root_sub_205_16/carry[17] , \add_29_root_sub_149_5/carry[1] ,
         \add_29_root_sub_149_5/carry[2] , \add_29_root_sub_149_5/carry[3] ,
         \add_29_root_sub_149_5/carry[4] , \add_29_root_sub_149_5/carry[5] ,
         \add_29_root_sub_149_5/carry[6] , \add_29_root_sub_149_5/carry[7] ,
         \add_29_root_sub_149_5/carry[8] , \add_29_root_sub_149_5/carry[9] ,
         \add_29_root_sub_149_5/carry[10] , \add_29_root_sub_149_5/carry[11] ,
         \add_29_root_sub_149_5/carry[12] , \add_29_root_sub_149_5/carry[13] ,
         \add_30_root_sub_149_5/carry[2] , \add_30_root_sub_149_5/carry[3] ,
         \add_30_root_sub_149_5/carry[4] , \add_30_root_sub_149_5/carry[5] ,
         \add_30_root_sub_149_5/carry[6] , \add_30_root_sub_149_5/carry[7] ,
         \add_30_root_sub_149_5/carry[8] , \add_30_root_sub_149_5/carry[9] ,
         \add_30_root_sub_149_5/carry[10] , \add_30_root_sub_149_5/carry[11] ,
         \add_30_root_sub_149_5/carry[12] , \add_30_root_sub_149_5/carry[13] ,
         \add_30_root_sub_149_5/carry[14] , \add_30_root_sub_149_5/carry[15] ,
         \add_30_root_sub_149_5/carry[16] , \add_30_root_sub_149_5/carry[17] ,
         \add_44_root_add_176_41/carry[1] , \add_44_root_add_176_41/carry[2] ,
         \add_44_root_add_176_41/carry[3] , \add_44_root_add_176_41/carry[4] ,
         \add_44_root_add_176_41/carry[5] , \add_44_root_add_176_41/carry[6] ,
         \add_44_root_add_176_41/carry[7] , \add_44_root_add_176_41/carry[8] ,
         \add_44_root_add_176_41/carry[9] , \add_44_root_add_176_41/carry[10] ,
         \add_44_root_add_176_41/carry[11] ,
         \add_44_root_add_176_41/carry[12] ,
         \add_44_root_add_176_41/carry[13] , \add_45_root_add_176_41/carry[2] ,
         \add_45_root_add_176_41/carry[3] , \add_45_root_add_176_41/carry[4] ,
         \add_45_root_add_176_41/carry[5] , \add_45_root_add_176_41/carry[6] ,
         \add_45_root_add_176_41/carry[7] , \add_45_root_add_176_41/carry[8] ,
         \add_45_root_add_176_41/carry[9] , \add_45_root_add_176_41/carry[10] ,
         \add_45_root_add_176_41/carry[11] ,
         \add_45_root_add_176_41/carry[12] ,
         \add_45_root_add_176_41/carry[13] ,
         \add_45_root_add_176_41/carry[14] ,
         \add_45_root_add_176_41/carry[15] ,
         \add_45_root_add_176_41/carry[16] ,
         \add_45_root_add_176_41/carry[17] , \add_18_root_add_124_19/carry[2] ,
         \add_18_root_add_124_19/carry[3] , \add_18_root_add_124_19/carry[4] ,
         \add_18_root_add_124_19/carry[5] , \add_18_root_add_124_19/carry[6] ,
         \add_18_root_add_124_19/carry[7] , \add_18_root_add_124_19/carry[8] ,
         \add_18_root_add_124_19/carry[9] , \add_18_root_add_124_19/carry[10] ,
         \add_18_root_add_124_19/carry[11] ,
         \add_18_root_add_124_19/carry[12] ,
         \add_18_root_add_124_19/carry[13] ,
         \add_18_root_add_124_19/carry[14] ,
         \add_18_root_add_124_19/carry[15] ,
         \add_18_root_add_124_19/carry[16] ,
         \add_18_root_add_124_19/carry[17] , n1302, n1303, n1304, n1305, n1306,
         n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316,
         n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326,
         n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336,
         n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345, n1346,
         n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355, n1356,
         n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365, n1366,
         n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375, n1376,
         n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385, n1386,
         n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394, n1395, n1396,
         n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404, n1405, n1406,
         n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414, n1415, n1416,
         n1417, n1418, n1419, n1420, n1421, n1422, n1423, n1424, n1425, n1426,
         n1427, n1428, n1429, n1430, n1431, n1432, n1433, n1434, n1435, n1436,
         n1437, n1438, n1439, n1440, n1441, n1442, n1443, n1444, n1445, n1446,
         n1447, n1448, n1449, n1450, n1451, n1452, n1453, n1454, n1455, n1456,
         n1457, n1458, n1459, n1460, n1461, n1462, n1463, n1464, n1465, n1466,
         n1467, n1468, n1469, n1470, n1471, n1472, n1473, n1474, n1475, n1476,
         n1477, n1478, n1479, n1480, n1481, n1482, n1483, n1484, n1485, n1486,
         n1487, n1488, n1489, n1490, n1491, n1492, n1493, n1494, n1495, n1496,
         n1497, n1498, n1499, n1500, n1501, n1502, n1503, n1504, n1505, n1506,
         n1507, n1508, n1509, n1510, n1511, n1512, n1513, n1514, n1515, n1516,
         n1517, n1518, n1519, n1520, n1521, n1522, n1523, n1524, n1525, n1526,
         n1527, n1528, n1529, n1530, n1531, n1532, n1533, n1534, n1535, n1536,
         n1537, n1538, n1539, n1540, n1541, n1542, n1543, n1544, n1545, n1546,
         n1547, n1548, n1549, n1550, n1551, n1552, n1553, n1554, n1555, n1556,
         n1557, n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565, n1566,
         n1567, n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575, n1576,
         n1577, n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585, n1586,
         n1587, n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595, n1596,
         n1597, n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605, n1606,
         n1607, n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615, n1616,
         n1617, n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625, n1626,
         n1627, n1628, n1629, n1630, n1631, n1632, n1633, n1634, n1635, n1636,
         n1637, n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645, n1646,
         n1647, n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655, n1656,
         n1657, n1658, n1659, n1660, n1661, n1662, n1663, n1664, n1665, n1666,
         n1667, n1668, n1669, n1670, n1671, n1672, n1673, n1674, n1675, n1676,
         n1677, n1678, n1679, n1680, n1681, n1682, n1683, n1684, n1685, n1686,
         n1687, n1688, n1689, n1690, n1691, n1692, n1693, n1694, n1695, n1696,
         n1697, n1698, n1699, n1700, n1701, n1702, n1703, n1704, n1705, n1706,
         n1707, n1708, n1709, n1710, n1711, n1712, n1713, n1714, n1715, n1716,
         n1717, n1718, n1719, n1720, n1721, n1722, n1723, n1724, n1725, n1726,
         n1727, n1728, n1729, n1730, n1731, n1732, n1733, n1734, n1735, n1736,
         n1737, n1738, n1739, n1740, n1741, n1742, n1743, n1744, n1745, n1746,
         n1747, n1748, n1749, n1750, n1751, n1752, n1753, n1754, n1755, n1756,
         n1757, n1758, n1759, n1760, n1761, n1762, n1763, n1764, n1765, n1766,
         n1767, n1768, n1769, n1770, n1771, n1772, n1773, n1774, n1775, n1776,
         n1777, n1778, n1779, n1780, n1781, n1782, n1783, n1784, n1785, n1786,
         n1787, n1788, n1789, n1790, n1791, n1792, n1793, n1794, n1795, n1796,
         n1797, n1798, n1799, n1800, n1801, n1802, n1803, n1804, n1805, n1806,
         n1807, n1808, n1809, n1810, n1811, n1812, n1813, n1814, n1815, n1816,
         n1817, n1818, n1819, n1820, n1821, n1822, n1823, n1824, n1825, n1826,
         n1827, n1828, n1829, n1830, n1831, n1832, n1833, n1834, n1835, n1836,
         n1837, n1838, n1839, n1840, n1841, n1842, n1843, n1844, n1845, n1846,
         n1847, n1848, n1849, n1850, n1851, n1852, n1853, n1854, n1855, n1856,
         n1857, n1858, n1859, n1860, n1861, n1862, n1863, n1864, n1865, n1866,
         n1867, n1868, n1869, n1870, n1871, n1873, n1874, n1875, n1876, n1877,
         n1878, n1879, n1880, n1881, n1882, n1883, n1884, n1885, n1886, n1887,
         n1888, n1889, n1890, n1891, n1892, n1893, n1894, n1895, n1896, n1897,
         n1898, n1899, n1900, n1901, n1902, n1903, n1904, n1905, n1906, n1907,
         n1908, n1909, n1910, n1911, n1912, n1913, n1914, n1915, n1916, n1917,
         n1918, n1919, n1920, n1921, n1922, n1923, n1924, n1925, n1926, n1927,
         n1928, n1929, n1930, n1931, n1932, n1933, n1934, n1935, n1936, n1937,
         n1938, n1939, n1940, n1941, n1942, n1943, n1944, n1945, n1946, n1947,
         n1948, n1949, n1950, n1951;
  wire   [4:0] state;
  wire   [24:5] s0;
  wire   [24:5] s1;
  wire   [24:5] s2;
  wire   [24:5] s3;
  wire   [24:6] s4;
  wire   [24:6] s5;
  wire   [24:0] ss0;
  wire   [24:0] ss1;
  wire   [24:0] ss2;
  wire   [24:0] ss3;
  wire   [24:0] ss4;
  wire   [24:0] ss5;
  wire   [20:0] \sub_255/carry ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;
  assign load = 1'b1;
  assign RAddr[0] = N6342;
  assign RAddr[1] = N6343;

  IIR_DW01_add_0 r1242 ( .A({n1473, n1481, n1482, n1480, n1480, n1480, n1481, 
        n1336, n1321, n1317, n1312, n1335, n1320, n1311, n1308, n1315, n1307, 
        n1309, n1332, n1319, n1525, n1521, n1516, n1511, n1507}), .B({n1473, 
        n1473, n1478, n1473, n1478, n1473, n1475, n1478, n1336, n1321, n1317, 
        n1312, n1335, n1320, n1311, n1308, n1315, n1307, n1309, n1332, n1319, 
        n1525, n1520, n1516, n1511}), .CI(1'b0), .SUM({N3390, N3389, N3388, 
        N3387, N3386, N3385, N3384, N3383, N3382, N3381, N3380, N3379, N3378, 
        N3377, N3376, N3375, N3374, N3373, N3372, N3371, N3370, N3369, N3368, 
        N3367, N3366}) );
  IIR_DW01_add_1 r1196 ( .A({ss0[24], n1710, n1710, n1710, n1710, n1710, n1710, 
        n1710, n1709, n1322, n1333, n1331, n1330, n1329, n1328, n1326, n1324, 
        n1323, n1327, n1314, n1325, n1318, n1519, n1514, n1510}), .B({ss0[24], 
        n1713, n1713, n1713, n1713, n1713, n1712, n1712, n1712, n1708, n1322, 
        n1333, n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, n1314, 
        n1325, n1318, n1519, n1513}), .CI(1'b0), .SUM({N2139, N2138, N2137, 
        N2136, N2135, N2134, N2133, N2132, N2131, N2130, N2129, N2128, N2127, 
        N2126, N2125, N2124, N2123, N2122, N2121, N2120, N2119, N2118, N2117, 
        N2116, N2115}) );
  IIR_DW01_add_2 r1187 ( .A({n1820, n1817, n1817, n1817, n1817, n1816, n1816, 
        n1816, n1816, n1816, n1816, n1816, n1816, n1816, n1816, n1801, n1799, 
        n1797, n1795, n1793, n1791, n1789, n1786, n1784, n1646}), .B({n1820, 
        n1813, n1814, n1814, n1814, n1814, n1814, n1814, n1814, n1814, n1814, 
        n1814, n1815, n1811, n1811, n1811, n1800, n1798, n1796, n1794, n1792, 
        n1790, n1788, n1786, n1784}), .CI(1'b0), .SUM({N1864, N1863, N1862, 
        N1861, N1860, N1859, N1858, N1857, N1856, N1855, N1854, N1853, N1852, 
        N1851, N1850, N1849, N1848, N1847, N1846, N1845, N1844, N1843, N1842, 
        N1841, N1840}) );
  IIR_DW01_add_3 r1184 ( .A({n1783, n1779, n1779, n1780, n1779, n1779, n1779, 
        n1780, n1779, n1779, n1779, n1779, n1779, n1779, n1779, n1779, n1764, 
        n1762, n1760, n1758, n1756, n1754, n1752, n1750, n1633}), .B({n1783, 
        n1777, n1776, n1776, n1776, n1776, n1775, n1776, n1776, n1775, n1775, 
        n1775, n1775, n1775, n1775, n1775, n1775, n1763, n1761, n1759, n1757, 
        n1755, n1753, n1751, n1749}), .CI(1'b0), .SUM({N1789, N1788, N1787, 
        N1786, N1785, N1784, N1783, N1782, N1781, N1780, N1779, N1778, N1777, 
        N1776, N1775, N1774, N1773, N1772, N1771, N1770, N1769, N1768, N1767, 
        N1766, N1765}) );
  IIR_DW01_add_4 r1183 ( .A({n1783, n1779, n1779, n1779, n1779, n1779, n1779, 
        n1779, n1779, n1779, n1780, n1779, n1764, n1762, n1760, n1758, n1756, 
        n1754, n1752, n1750, n1635, n1629, n1625, n1624, n1623}), .B({n1783, 
        n1773, n1773, n1773, n1773, n1772, n1771, n1771, n1771, n1771, n1771, 
        n1771, n1771, n1771, n1771, n1763, n1761, n1759, n1757, n1755, n1753, 
        n1751, n1749, n1634, n1628}), .CI(1'b0), .SUM({N1764, N1763, N1762, 
        N1761, N1760, N1759, N1758, N1757, N1756, N1755, N1754, N1753, N1752, 
        N1751, N1750, N1749, N1748, N1747, N1746, N1745, N1744, N1743, N1742, 
        N1741, N1740}) );
  IIR_DW01_add_5 r1155 ( .A({n1863, n1860, n1860, n1860, n1860, n1860, n1860, 
        n1860, n1860, n1860, n1860, n1860, n1860, n1860, n1859, n1842, n1840, 
        n1838, n1836, n1834, n1832, n1830, n1828, n1826, n1824}), .B({n1863, 
        n1852, n1852, n1852, n1852, n1852, n1852, n1854, n1854, n1854, n1854, 
        n1854, n1854, n1854, n1855, n1855, n1841, n1839, n1837, n1835, n1833, 
        n1831, n1829, n1827, n1825}), .CI(1'b0), .SUM({N1062, N1061, N1060, 
        N1059, N1058, N1057, N1056, N1055, N1054, N1053, N1052, N1051, N1050, 
        N1049, N1048, N1047, N1046, N1045, N1044, N1043, N1042, N1041, N1040, 
        N1039, N1038}) );
  IIR_DW01_add_6 r1152 ( .A({n1820, n1817, n1817, n1817, n1816, n1816, n1816, 
        n1817, n1816, n1816, n1816, n1816, n1816, n1816, n1817, n1816, n1801, 
        n1799, n1797, n1795, n1793, n1791, n1789, n1786, n1785}), .B({n1820, 
        n1811, n1811, n1811, n1811, n1811, n1811, n1811, n1811, n1811, n1810, 
        n1810, n1810, n1810, n1810, n1810, n1810, n1800, n1798, n1796, n1794, 
        n1792, n1790, n1788, n1786}), .CI(1'b0), .SUM({N987, N986, N985, N984, 
        N983, N982, N981, N980, N979, N978, N977, N976, N975, N974, N973, N972, 
        N971, N970, N969, N968, N967, N966, N965, N964, N963}) );
  IIR_DW01_add_7 r1151 ( .A({n1820, n1815, n1816, n1815, n1816, n1815, n1816, 
        n1816, n1816, n1816, n1816, n1816, n1801, n1799, n1797, n1795, n1793, 
        n1791, n1789, n1786, n1785, n1647, n1644, n1640, n1639}), .B({n1820, 
        n1809, n1812, n1809, n1809, n1809, n1809, n1808, n1808, n1807, n1807, 
        n1807, n1807, n1807, n1807, n1800, n1798, n1796, n1794, n1792, n1790, 
        n1788, n1786, n1784, n1648}), .CI(1'b0), .SUM({N962, N961, N960, N959, 
        N958, N957, N956, N955, N954, N953, N952, N951, N950, N949, N948, N947, 
        N946, N945, N944, N943, N942, N941, N940, N939, N938}) );
  IIR_DW01_add_8 r1135 ( .A({ss0[24], n1710, n1713, n1713, ss0[24], n1713, 
        n1713, n1713, n1710, n1713, n1713, n1710, n1713, n1713, n1709, n1322, 
        n1333, n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327}), .B({
        ss0[24], n1712, n1713, n1712, n1712, n1710, n1710, n1712, n1712, n1712, 
        n1712, n1712, n1712, n1712, n1711, n1708, n1322, n1333, n1331, n1330, 
        n1329, n1328, n1326, n1324, n1323}), .CI(1'b0), .SUM({N560, N559, N558, 
        N557, N556, N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, 
        N545, N544, N543, N542, N541, N540, N539, N538, N537, N536}) );
  IIR_DW01_add_9 r1132 ( .A({n1863, n1859, n1859, n1859, n1859, n1859, n1859, 
        n1859, n1859, n1860, n1859, n1859, n1859, n1859, n1859, n1858, n1842, 
        n1840, n1838, n1836, n1834, n1832, n1830, n1828, n1826}), .B({n1863, 
        n1855, n1857, n1857, n1857, n1857, n1856, n1856, n1857, n1858, n1858, 
        n1857, n1857, n1857, n1858, n1858, n1857, n1841, n1839, n1837, n1835, 
        n1833, n1831, n1829, n1827}), .CI(1'b0), .SUM({N485, N484, N483, N482, 
        N481, N480, N479, N478, N477, N476, N475, N474, N473, N472, N471, N470, 
        N469, N468, N467, N466, N465, N464, N463, N462, N461}) );
  IIR_DW01_add_10 r1131 ( .A({n1863, n1859, n1860, n1860, n1860, n1859, n1859, 
        n1859, n1859, n1859, n1859, n1859, n1842, n1840, n1838, n1836, n1834, 
        n1832, n1830, n1828, n1826, n1824, n1822, s0[12], n1652}), .B({n1863, 
        n1843, n1844, n1844, n1845, n1846, n1846, n1846, n1846, n1846, n1846, 
        n1846, n1846, n1846, n1846, n1841, n1839, n1837, n1835, n1833, n1831, 
        n1829, n1827, n1825, n1823}), .CI(1'b0), .SUM({N460, N459, N458, N457, 
        N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, 
        N444, N443, N442, N441, N440, N439, N438, N437, N436}) );
  IIR_DW01_add_11 r1129 ( .A({n1817, n1817, n1817, n1817, n1817, n1817, n1817, 
        n1817, n1817, n1817, n1816, n1820, n1820, n1820, n1820, n1820, n1820, 
        n1801, n1799, n1797, n1795, n1793, n1791, n1789, n1786}), .B({n1848, 
        n1848, n1848, n1848, n1848, n1848, n1848, n1841, n1839, n1837, n1835, 
        n1833, n1831, n1829, n1827, n1825, n1823, n1821, n1657, n1652, n1651, 
        n1650, n1649, s0[7], 1'b0}), .CI(1'b0), .SUM({N4846, N4845, N411, N410, 
        N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, 
        N397, N396, N395, N394, N393, N392, N391, N390, N389}) );
  IIR_DW01_add_12 r1127 ( .A({n1820, n1820, n1820, n1820, n1820, n1820, n1820, 
        n1820, n1820, n1820, n1820, n1801, n1799, n1797, n1795, n1793, n1791, 
        n1789, n1786, n1785, n1646, n1643, n1640, n1639, n1638}), .B({n1820, 
        n1807, n1807, n1807, n1807, n1807, n1807, n1808, n1808, n1808, n1808, 
        n1808, n1800, n1798, n1796, n1794, n1792, n1790, n1788, n1786, n1784, 
        n1647, n1643, n1640, n1639}), .CI(1'b0), .SUM({N4796, N4795, N4794, 
        N4793, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, 
        N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346}) );
  IIR_DW01_inc_0 r1124 ( .A(WAddr), .SUM({N304, N303, N302, N301, N300, N299, 
        N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, 
        N286, N285}) );
  IIR_DW01_add_13 r1119 ( .A({n1863, n1859, n1859, n1859, n1859, n1859, n1859, 
        n1860, n1859, n1863, n1863, n1842, n1840, n1838, n1836, n1834, n1832, 
        n1830, n1828, n1826, n1824, n1822, n1657, n1652, n1651}), .B({n1863, 
        n1843, n1852, n1852, n1852, n1851, n1851, n1851, n1851, n1851, n1851, 
        n1851, n1841, n1839, n1837, n1835, n1833, n1831, n1829, n1827, n1825, 
        n1823, n1821, n1656, n1652}), .CI(1'b0), .SUM({N3190, N3189, N3188, 
        N3187, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, 
        N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170}) );
  IIR_DW01_inc_1 r1116 ( .A({RAddr[19:2], N6343, N6342}), .SUM({N148, N147, 
        N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, 
        N134, N133, N132, N131, N130, N129}) );
  IIR_DW01_add_77 add_74_root_add_236_61 ( .A({n1721, n1721, n1721, n1721, 
        n1721, N4431, n1721, n1721, n1721, N4431, s5[23:12]}), .B({n1721, 
        N4431, n1720, N4431, N4431, N4431, n1720, N4431, N4431, n1720, N4431, 
        s5[23:13]}), .CI(1'b0), .SUM({N4474, N4473, N4472, N4471, N4470, N4469, 
        N4468, N4467, N4466, N4465, N4464, N4463, N4462, N4461, N4460, N4459, 
        N4458, N4457, N4456, N4455, N4454, N4453}) );
  IIR_DW01_add_76 add_73_root_add_236_61 ( .A({N4431, n1721, n1721, n1721, 
        n1721, n1721, n1721, n1721, n1721, n1721, n1721, n1721, n1721, n1721, 
        n1721, s5[23:16]}), .B({n1726, n1726, n1726, n1726, n1726, n1579, 
        n1578, n1577, n1576, n1575, n1574, n1573, n1572, n1571, n1570, n1569, 
        n1568, n1567, n1566, N2806, s4[8:7], 1'b0}), .CI(1'b0), .SUM({N4497, 
        N4496, N4495, N4494, N4493, N4492, N4491, N4490, N4489, N4488, N4487, 
        N4486, N4485, N4484, N4483, N4482, N4481, N4480, N4479, N4478, N4477, 
        N4476, N4475}) );
  IIR_DW01_add_75 add_72_root_add_236_61 ( .A({n1732, n1730, n1730, n1730, 
        n1730, n1730, n1730, n1730, n1579, n1578, n1577, n1576, n1575, n1574, 
        n1573, n1572, n1571, n1570, n1569, n1568, n1567, n1566, N2806, s4[8]}), 
        .B({n1732, n1726, n1727, n1727, n1727, n1727, n1727, n1726, n1726, 
        n1725, n1579, n1578, n1577, n1576, n1575, n1574, n1573, n1572, n1571, 
        n1570, n1569, n1568, n1567, n1566}), .CI(1'b0), .SUM({N4521, N4520, 
        N4519, N4518, N4517, N4516, N4515, N4514, N4513, N4512, N4511, N4510, 
        N4509, N4508, N4507, N4506, N4505, N4504, N4503, N4502, N4501, N4500, 
        N4499, N4498}) );
  IIR_DW01_add_74 add_59_root_sub_0_root_add_236_61 ( .A({n1467, n1466, n1470, 
        n1563, n1561, n1558, n1555, n1552, n1549, n1546, n1543, n1540, n1537, 
        n1534, n1531, n1528, n1526, n1522, n1517, n1512, n1508, n1505, n1502, 
        n1499, ss2[2]}), .B({n1467, n1465, n1467, n1465, n1465, n1563, n1561, 
        n1558, n1555, n1552, n1549, n1546, n1543, n1540, n1537, n1534, n1531, 
        n1528, n1526, n1522, n1517, n1512, n1508, n1505, n1502}), .CI(1'b0), 
        .SUM({N6096, N6095, N6094, N6093, N6092, N6091, N6090, N6089, N6088, 
        N6087, N6086, N6085, N6084, N6083, N6082, N6081, N6080, N6079, N6078, 
        N6077, N6076, N6075, N6074, N6073, N6072}) );
  IIR_DW01_add_73 add_58_root_sub_0_root_add_236_61 ( .A({N6096, N6095, N6094, 
        N6093, N6092, N6091, N6090, N6089, N6088, N6087, N6086, N6085, N6084, 
        N6083, N6082, N6081, N6080, N6079, N6078, N6077, N6076, N6075, N6074, 
        N6073, N6072}), .B({n1465, n1465, n1465, n1467, n1465, n1467, n1465, 
        n1465, n1564, n1560, n1557, n1554, n1551, n1548, n1545, n1542, n1539, 
        n1536, n1533, n1530, n1528, n1526, n1522, n1517, n1512}), .CI(1'b0), 
        .SUM({N5246, N5245, N5244, N5243, N5242, N5241, N5240, N5239, N5238, 
        N5237, N5236, N5235, N5234, N5233, N5232, N5231, N5230, N5229, N5228, 
        N5227, N5226, N5225, N5224, N5223, N5222}) );
  IIR_DW01_add_72 add_57_root_sub_0_root_add_236_61 ( .A({N5246, N5245, N5244, 
        N5243, N5242, N5241, N5240, N5239, N5238, N5237, N5236, N5235, N5234, 
        N5233, N5232, N5231, N5230, N5229, N5228, N5227, N5226, N5225, N5224, 
        N5223, N5222}), .B({n1466, n1467, n1467, n1467, n1467, n1465, n1467, 
        n1563, n1560, n1557, n1554, n1551, n1548, n1545, n1542, n1539, n1536, 
        n1533, n1531, n1528, n1526, n1522, n1517, n1512, n1508}), .CI(1'b0), 
        .SUM({N5221, N5220, N5219, N5218, N5217, N5216, N5215, N5214, N5213, 
        N5212, N5211, N5210, N5209, N5208, N5207, N5206, N5205, N5204, N5203, 
        N5202, N5201, N5200, N5199, N5198, N5197}) );
  IIR_DW01_add_71 add_56_root_sub_0_root_add_236_61 ( .A({n1467, n1470, n1466, 
        n1469, n1469, n1465, n1564, n1561, n1558, n1555, n1552, n1549, n1546, 
        n1543, n1540, n1537, n1534, n1530, n1528, n1526, n1522, n1517, n1512, 
        n1508, n1505}), .B({n1467, n1469, n1466, n1470, n1466, n1467, n1467, 
        n1467, n1466, n1564, n1560, n1557, n1554, n1551, n1548, n1545, n1542, 
        n1539, n1536, n1533, n1530, n1528, n1526, n1522, n1517}), .CI(1'b0), 
        .SUM({N5796, N5795, N5794, N5793, N5792, N5791, N5790, N5789, N5788, 
        N5787, N5786, N5785, N5784, N5783, N5782, N5781, N5780, N5779, N5778, 
        N5777, N5776, N5775, N5774, N5773, N5772}) );
  IIR_DW01_add_70 add_51_root_sub_0_root_add_236_61 ( .A({N5221, N5220, N5219, 
        N5218, N5217, N5216, N5215, N5214, N5213, N5212, N5211, N5210, N5209, 
        N5208, N5207, N5206, N5205, N5204, N5203, N5202, N5201, N5200, N5199, 
        N5198, N5197}), .B({N5796, N5795, N5794, N5793, N5792, N5791, N5790, 
        N5789, N5788, N5787, N5786, N5785, N5784, N5783, N5782, N5781, N5780, 
        N5779, N5778, N5777, N5776, N5775, N5774, N5773, N5772}), .CI(1'b0), 
        .SUM({N5771, N5770, N5769, N5768, N5767, N5766, N5765, N5764, N5763, 
        N5762, N5761, N5760, N5759, N5758, N5757, N5756, N5755, N5754, N5753, 
        N5752, N5751, N5750, N5749, N5748, N5747}) );
  IIR_DW01_sub_9 sub_64_root_sub_0_root_add_236_61 ( .A({ss4[23:0], 1'b0}), 
        .B({n1562, n1559, n1556, n1553, n1550, n1547, n1544, n1541, n1538, 
        n1535, n1532, n1529, n1527, n1523, ss3[8:0], 1'b0, 1'b0}), .CI(1'b0), 
        .DIFF({N5346, N5345, N5344, N5343, N5342, N5341, N5340, N5339, N5338, 
        N5337, N5336, N5335, N5334, N5333, N5332, N5331, N5330, N5329, N5328, 
        N5327, N5326, N5325, N5324, N5323, SYNOPSYS_UNCONNECTED__0}) );
  IIR_DW01_add_69 add_63_root_sub_0_root_add_236_61 ( .A({n1563, n1561, n1558, 
        n1555, n1552, n1549, n1546, n1543, n1540, n1537, n1534, n1531, n1528, 
        n1526, n1522, n1517, n1512, n1508, n1505, n1502, n1499, ss2[2:0], 1'b0}), .B({N5346, N5345, N5344, N5343, N5342, N5341, N5340, N5339, N5338, N5337, 
        N5336, N5335, N5334, N5333, N5332, N5331, N5330, N5329, N5328, N5327, 
        N5326, N5325, N5324, N5323, 1'b0}), .CI(1'b0), .SUM({N5321, N5320, 
        N5319, N5318, N5317, N5316, N5315, N5314, N5313, N5312, N5311, N5310, 
        N5309, N5308, N5307, N5306, N5305, N5304, N5303, N5302, N5301, N5300, 
        N5299, N5298, SYNOPSYS_UNCONNECTED__1}) );
  IIR_DW01_sub_8 sub_62_root_sub_0_root_add_236_61 ( .A({N5321, N5320, N5319, 
        N5318, N5317, N5316, N5315, N5314, N5313, N5312, N5311, N5310, N5309, 
        N5308, N5307, N5306, N5305, N5304, N5303, N5302, N5301, N5300, N5299, 
        N5298, 1'b0}), .B({ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], 
        ss3[24], ss3[24], ss3[24], ss3[24], n1464, n1565, n1562, n1559, n1556, 
        n1553, n1550, n1547, n1544, n1541, n1538, n1535, n1532, n1529, n1527, 
        n1523}), .CI(1'b0), .DIFF({N5846, N5845, N5844, N5843, N5842, N5841, 
        N5840, N5839, N5838, N5837, N5836, N5835, N5834, N5833, N5832, N5831, 
        N5830, N5829, N5828, N5827, N5826, N5825, N5824, N5823, N5822}) );
  IIR_DW01_sub_7 sub_61_root_sub_0_root_add_236_61 ( .A({N5846, N5845, N5844, 
        N5843, N5842, N5841, N5840, N5839, N5838, N5837, N5836, N5835, N5834, 
        N5833, N5832, N5831, N5830, N5829, N5828, N5827, N5826, N5825, N5824, 
        N5823, N5822}), .B({ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], 
        ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], n1464, 
        n1565, n1562, n1559, n1556, n1553, n1550, n1547, n1544, n1541, n1538, 
        n1535, n1532}), .CI(1'b0), .DIFF({N5271, N5270, N5269, N5268, N5267, 
        N5266, N5265, N5264, N5263, N5262, N5261, N5260, N5259, N5258, N5257, 
        N5256, N5255, N5254, N5253, N5252, N5251, N5250, N5249, N5248, N5247})
         );
  IIR_DW01_add_68 add_55_root_sub_0_root_add_236_61 ( .A({n1470, n1564, n1561, 
        n1558, n1555, n1552, n1549, n1546, n1543, n1540, n1537, n1534, n1530, 
        n1528, n1526, n1522, n1517, n1512, n1508, n1505, n1502, n1499, 
        ss2[2:0]}), .B({N5271, N5270, N5269, N5268, N5267, N5266, N5265, N5264, 
        N5263, N5262, N5261, N5260, N5259, N5258, N5257, N5256, N5255, N5254, 
        N5253, N5252, N5251, N5250, N5249, N5248, N5247}), .CI(1'b0), .SUM({
        N5371, N5370, N5369, N5368, N5367, N5366, N5365, N5364, N5363, N5362, 
        N5361, N5360, N5359, N5358, N5357, N5356, N5355, N5354, N5353, N5352, 
        N5351, N5350, N5349, N5348, N5347}) );
  IIR_DW01_add_67 add_60_root_sub_0_root_add_236_61 ( .A({ss3[24], n1464, 
        ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], 
        n1464, n1565, n1562, n1559, n1556, n1553, n1550, n1547, n1544, n1541, 
        n1538, n1535, n1532, n1529, n1527}), .B({ss3[24], n1464, n1464, n1464, 
        ss3[24], ss3[24], ss3[24], ss3[24], n1565, n1562, n1559, n1556, n1553, 
        n1550, n1547, n1544, n1541, n1538, n1535, n1532, n1529, n1527, n1523, 
        ss3[8:7]}), .CI(1'b0), .SUM({N5821, N5820, N5819, N5818, N5817, N5816, 
        N5815, N5814, N5813, N5812, N5811, N5810, N5809, N5808, N5807, N5806, 
        N5805, N5804, N5803, N5802, N5801, N5800, N5799, N5798, N5797}) );
  IIR_DW01_sub_6 sub_50_root_sub_0_root_add_236_61 ( .A({N5371, N5370, N5369, 
        N5368, N5367, N5366, N5365, N5364, N5363, N5362, N5361, N5360, N5359, 
        N5358, N5357, N5356, N5355, N5354, N5353, N5352, N5351, N5350, N5349, 
        N5348, N5347}), .B({N5821, N5820, N5819, N5818, N5817, N5816, N5815, 
        N5814, N5813, N5812, N5811, N5810, N5809, N5808, N5807, N5806, N5805, 
        N5804, N5803, N5802, N5801, N5800, N5799, N5798, N5797}), .CI(1'b0), 
        .DIFF({N5146, N5145, N5144, N5143, N5142, N5141, N5140, N5139, N5138, 
        N5137, N5136, N5135, N5134, N5133, N5132, N5131, N5130, N5129, N5128, 
        N5127, N5126, N5125, N5124, N5123, N5122}) );
  IIR_DW01_add_66 add_47_root_sub_0_root_add_236_61 ( .A({N5771, N5770, N5769, 
        N5768, N5767, N5766, N5765, N5764, N5763, N5762, N5761, N5760, N5759, 
        N5758, N5757, N5756, N5755, N5754, N5753, N5752, N5751, N5750, N5749, 
        N5748, N5747}), .B({N5146, N5145, N5144, N5143, N5142, N5141, N5140, 
        N5139, N5138, N5137, N5136, N5135, N5134, N5133, N5132, N5131, N5130, 
        N5129, N5128, N5127, N5126, N5125, N5124, N5123, N5122}), .CI(1'b0), 
        .SUM({N6046, N6045, N6044, N6043, N6042, N6041, N6040, N6039, N6038, 
        N6037, N6036, N6035, N6034, N6033, N6032, N6031, N6030, N6029, N6028, 
        N6027, N6026, N6025, N6024, N6023, N6022}) );
  IIR_DW01_add_65 add_46_root_sub_0_root_add_236_61 ( .A({N4474, N4474, N4474, 
        N4474, N4473, N4472, N4471, N4470, N4469, N4468, N4467, N4466, N4465, 
        N4464, N4463, N4462, N4461, N4460, N4459, N4458, N4457, N4456, N4455, 
        N4454, N4453}), .B({N6046, N6045, N6044, N6043, N6042, N6041, N6040, 
        N6039, N6038, N6037, N6036, N6035, N6034, N6033, N6032, N6031, N6030, 
        N6029, N6028, N6027, N6026, N6025, N6024, N6023, N6022}), .CI(1'b0), 
        .SUM({N5096, N5095, N5094, N5093, N5092, N5091, N5090, N5089, N5088, 
        N5087, N5086, N5085, N5084, N5083, N5082, N5081, N5080, N5079, N5078, 
        N5077, N5076, N5075, N5074, N5073, N5072}) );
  IIR_DW01_add_64 add_37_root_sub_0_root_add_236_61 ( .A({N5096, N5095, N5094, 
        N5093, N5092, N5091, N5090, N5089, N5088, N5087, N5086, N5085, N5084, 
        N5083, N5082, N5081, N5080, N5079, N5078, N5077, N5076, N5075, N5074, 
        N5073, N5072}), .B({n1725, n1729, n1729, n1729, n1729, n1729, n1728, 
        n1729, n1729, n1729, n1729, n1728, n1728, n1728, n1728, n1728, n1579, 
        n1578, n1577, n1576, n1575, n1574, n1573, n1572, n1571}), .CI(1'b0), 
        .SUM({N4971, N4970, N4969, N4968, N4967, N4966, N4965, N4964, N4963, 
        N4962, N4961, N4960, N4959, N4958, N4957, N4956, N4955, N4954, N4953, 
        N4952, N4951, N4950, N4949, N4948, N4947}) );
  IIR_DW01_add_63 add_35_root_sub_0_root_add_236_61 ( .A({n1730, n1730, n1730, 
        n1730, n1730, n1730, n1730, n1730, n1730, n1730, n1730, n1730, n1579, 
        n1578, n1577, n1576, n1575, n1574, n1573, n1572, n1571, n1570, n1569, 
        n1568, n1567}), .B({N4971, N4970, N4969, N4968, N4967, N4966, N4965, 
        N4964, N4963, N4962, N4961, N4960, N4959, N4958, N4957, N4956, N4955, 
        N4954, N4953, N4952, N4951, N4950, N4949, N4948, N4947}), .CI(1'b0), 
        .SUM({N4946, N4945, N4944, N4943, N4942, N4941, N4940, N4939, N4938, 
        N4937, N4936, N4935, N4934, N4933, N4932, N4931, N4930, N4929, N4928, 
        N4927, N4926, N4925, N4924, N4923, N4922}) );
  IIR_DW01_add_62 add_36_root_sub_0_root_add_236_61 ( .A({n1732, n1731, n1731, 
        n1731, n1731, n1731, n1731, n1731, n1731, n1731, n1731, n1731, n1731, 
        n1730, n1731, n1731, n1730, n1579, n1578, n1577, n1576, n1575, n1574, 
        n1573, n1572}), .B({n1732, n1727, n1728, n1728, n1728, n1728, n1729, 
        n1727, n1729, n1728, n1727, n1728, n1729, n1728, n1729, n1579, n1578, 
        n1577, n1576, n1575, n1574, n1573, n1572, n1571, n1570}), .CI(1'b0), 
        .SUM({N5671, N5670, N5669, N5668, N5667, N5666, N5665, N5664, N5663, 
        N5662, N5661, N5660, N5659, N5658, N5657, N5656, N5655, N5654, N5653, 
        N5652, N5651, N5650, N5649, N5648, N5647}) );
  IIR_DW01_add_61 add_23_root_sub_0_root_add_236_61 ( .A({N5671, N5670, N5669, 
        N5668, N5667, N5666, N5665, N5664, N5663, N5662, N5661, N5660, N5659, 
        N5658, N5657, N5656, N5655, N5654, N5653, N5652, N5651, N5650, N5649, 
        N5648, N5647}), .B({N4497, N4497, N4497, N4496, N4495, N4494, N4493, 
        N4492, N4491, N4490, N4489, N4488, N4487, N4486, N4485, N4484, N4483, 
        N4482, N4481, N4480, N4479, N4478, N4477, N4476, N4475}), .CI(1'b0), 
        .SUM({N5571, N5570, N5569, N5568, N5567, N5566, N5565, N5564, N5563, 
        N5562, N5561, N5560, N5559, N5558, N5557, N5556, N5555, N5554, N5553, 
        N5552, N5551, N5550, N5549, N5548, N5547}) );
  IIR_DW01_add_60 add_16_root_sub_0_root_add_236_61 ( .A({N4946, N4945, N4944, 
        N4943, N4942, N4941, N4940, N4939, N4938, N4937, N4936, N4935, N4934, 
        N4933, N4932, N4931, N4930, N4929, N4928, N4927, N4926, N4925, N4924, 
        N4923, N4922}), .B({N5571, N5570, N5569, N5568, N5567, N5566, N5565, 
        N5564, N5563, N5562, N5561, N5560, N5559, N5558, N5557, N5556, N5555, 
        N5554, N5553, N5552, N5551, N5550, N5549, N5548, N5547}), .CI(1'b0), 
        .SUM({N4621, N4620, N4619, N4618, N4617, N4616, N4615, N4614, N4613, 
        N4612, N4611, N4610, N4609, N4608, N4607, N4606, N4605, N4604, N4603, 
        N4602, N4601, N4600, N4599, N4598, N4597}) );
  IIR_DW01_sub_5 sub_14_root_sub_0_root_add_236_61 ( .A({N4621, N4620, N4619, 
        N4618, N4617, N4616, N4615, N4614, N4613, N4612, N4611, N4610, N4609, 
        N4608, N4607, N4606, N4605, N4604, N4603, N4602, N4601, N4600, N4599, 
        N4598, N4597}), .B({N3390, N3389, N3388, N3387, N3386, N3385, N3384, 
        N3383, N3382, N3381, N3380, N3379, N3378, N3377, N3376, N3375, N3374, 
        N3373, N3372, N3371, N3370, N3369, N3368, N3367, N3366}), .CI(1'b0), 
        .DIFF({N5921, N5920, N5919, N5918, N5917, N5916, N5915, N5914, N5913, 
        N5912, N5911, N5910, N5909, N5908, N5907, N5906, N5905, N5904, N5903, 
        N5902, N5901, N5900, N5899, N5898, N5897}) );
  IIR_DW01_add_59 add_34_root_sub_0_root_add_236_61 ( .A({n1783, n1780, n1780, 
        n1780, n1780, n1780, n1779, n1780, n1780, n1780, n1764, n1762, n1760, 
        n1758, n1756, n1754, n1752, n1750, n1633, n1630, n1625, n1624, n1623, 
        n1622, n1621}), .B({n1783, n1770, n1770, n1770, n1770, n1770, n1770, 
        n1770, n1770, n1763, n1761, n1759, n1757, n1755, n1753, n1751, n1749, 
        n1633, n1630, n1625, n1624, n1623, n1622, n1621, s2[8]}), .CI(1'b0), 
        .SUM({N4921, N4920, N4919, N4918, N4917, N4916, N4915, N4914, N4913, 
        N4912, N4911, N4910, N4909, N4908, N4907, N4906, N4905, N4904, N4903, 
        N4902, N4901, N4900, N4899, N4898, N4897}) );
  IIR_DW01_sub_4 sub_25_root_sub_0_root_add_236_61 ( .A({N4921, N4920, N4919, 
        N4918, N4917, N4916, N4915, N4914, N4913, N4912, N4911, N4910, N4909, 
        N4908, N4907, N4906, N4905, N4904, N4903, N4902, N4901, N4900, N4899, 
        N4898, N4897}), .B({n1473, n1473, n1473, n1472, n1336, n1321, n1317, 
        n1312, n1335, n1320, n1311, n1308, n1315, n1307, n1309, n1332, n1319, 
        n1525, n1520, n1516, n1511, n1507, n1504, n1501, n1498}), .CI(1'b0), 
        .DIFF({N6271, N6270, N6269, N6268, N6267, N6266, N6265, N6264, N6263, 
        N6262, N6261, N6260, N6259, N6258, N6257, N6256, N6255, N6254, N6253, 
        N6252, N6251, N6250, N6249, N6248, N6247}) );
  IIR_DW01_add_58 add_39_root_sub_0_root_add_236_61 ( .A({n1748, n1745, n1745, 
        n1745, n1745, n1745, n1745, n1745, n1745, n1745, n1745, n1745, n1620, 
        n1619, n1617, n1612, n1605, n1600, n1596, n1590, n1585, n1584, n1583, 
        n1582, n1581}), .B({n1748, n1738, n1738, n1738, n1737, n1737, n1620, 
        n1619, n1618, n1611, n1607, n1602, n1595, n1589, n1585, n1584, n1583, 
        n1582, n1581, n1580, N1630, s3[8:7], 1'b0, 1'b0}), .CI(1'b0), .SUM({
        N6196, N6195, N6194, N6193, N6192, N6191, N6190, N6189, N6188, N6187, 
        N6186, N6185, N6184, N6183, N6182, N6181, N6180, N6179, N6178, N6177, 
        N6176, N6175, N6174, N6173, N6172}) );
  IIR_DW01_sub_3 sub_31_root_sub_0_root_add_236_61 ( .A({N6196, N6195, N6194, 
        N6193, N6192, N6191, N6190, N6189, N6188, N6187, N6186, N6185, N6184, 
        N6183, N6182, N6181, N6180, N6179, N6178, N6177, N6176, N6175, N6174, 
        N6173, N6172}), .B({n1473, n1473, n1473, n1473, n1473, n1473, n1473, 
        n1473, n1473, n1473, n1472, n1336, n1321, n1317, n1312, n1335, n1320, 
        n1311, n1308, n1315, n1307, n1309, n1332, n1319, n1525}), .CI(1'b0), 
        .DIFF({N4896, N4895, N4894, N4893, N4892, N4891, N4890, N4889, N4888, 
        N4887, N4886, N4885, N4884, N4883, N4882, N4881, N4880, N4879, N4878, 
        N4877, N4876, N4875, N4874, N4873, N4872}) );
  IIR_DW01_add_57 add_20_root_sub_0_root_add_236_61 ( .A({N6271, N6270, N6269, 
        N6268, N6267, N6266, N6265, N6264, N6263, N6262, N6261, N6260, N6259, 
        N6258, N6257, N6256, N6255, N6254, N6253, N6252, N6251, N6250, N6249, 
        N6248, N6247}), .B({N4896, N4895, N4894, N4893, N4892, N4891, N4890, 
        N4889, N4888, N4887, N4886, N4885, N4884, N4883, N4882, N4881, N4880, 
        N4879, N4878, N4877, N4876, N4875, N4874, N4873, N4872}), .CI(1'b0), 
        .SUM({N4696, N4695, N4694, N4693, N4692, N4691, N4690, N4689, N4688, 
        N4687, N4686, N4685, N4684, N4683, N4682, N4681, N4680, N4679, N4678, 
        N4677, N4676, N4675, N4674, N4673, N4672}) );
  IIR_DW01_add_56 add_54_root_sub_0_root_add_236_61 ( .A({n1316, n1316, n1316, 
        ss4[23:2]}), .B({n1316, n1316, n1316, n1316, n1316, n1316, n1316, 
        n1316, n1316, n1316, n1316, n1316, n1316, n1316, ss4[23:13]}), .CI(
        1'b0), .SUM({N6071, N6070, N6069, N6068, N6067, N6066, N6065, N6064, 
        N6063, N6062, N6061, N6060, N6059, N6058, N6057, N6056, N6055, N6054, 
        N6053, N6052, N6051, N6050, N6049, N6048, N6047}) );
  IIR_DW01_add_55 add_53_root_sub_0_root_add_236_61 ( .A({N6071, N6070, N6069, 
        N6068, N6067, N6066, N6065, N6064, N6063, N6062, N6061, N6060, N6059, 
        N6058, N6057, N6056, N6055, N6054, N6053, N6052, N6051, N6050, N6049, 
        N6048, N6047}), .B({n1316, n1316, n1316, n1316, n1316, n1316, n1316, 
        n1316, n1316, n1316, n1316, n1316, n1316, n1316, n1316, ss4[23:14]}), 
        .CI(1'b0), .SUM({N6221, N6220, N6219, N6218, N6217, N6216, N6215, 
        N6214, N6213, N6212, N6211, N6210, N6209, N6208, N6207, N6206, N6205, 
        N6204, N6203, N6202, N6201, N6200, N6199, N6198, N6197}) );
  IIR_DW01_add_54 add_48_root_sub_0_root_add_236_61 ( .A({N4452, N4452, N4452, 
        N4452, N4452, N4451, N4450, N4449, N4448, N4447, N4446, N4445, N4444, 
        N4443, N4442, N4441, N4440, N4439, N4438, N4437, N4436, N4435, N4434, 
        N4433, N4432}), .B({N6221, N6220, N6219, N6218, N6217, N6216, N6215, 
        N6214, N6213, N6212, N6211, N6210, N6209, N6208, N6207, N6206, N6205, 
        N6204, N6203, N6202, N6201, N6200, N6199, N6198, N6197}), .CI(1'b0), 
        .SUM({N5746, N5745, N5744, N5743, N5742, N5741, N5740, N5739, N5738, 
        N5737, N5736, N5735, N5734, N5733, N5732, N5731, N5730, N5729, N5728, 
        N5727, N5726, N5725, N5724, N5723, N5722}) );
  IIR_DW01_add_53 add_38_root_sub_0_root_add_236_61 ( .A({n1746, n1746, n1746, 
        n1746, n1746, n1746, n1746, n1746, n1746, n1745, n1746, n1745, n1745, 
        n1745, n1746, n1745, n1620, n1619, n1616, n1610, n1606, n1599, n1593, 
        n1588, n1585}), .B({N5746, N5745, N5744, N5743, N5742, N5741, N5740, 
        N5739, N5738, N5737, N5736, N5735, N5734, N5733, N5732, N5731, N5730, 
        N5729, N5728, N5727, N5726, N5725, N5724, N5723, N5722}), .CI(1'b0), 
        .SUM({N4996, N4995, N4994, N4993, N4992, N4991, N4990, N4989, N4988, 
        N4987, N4986, N4985, N4984, N4983, N4982, N4981, N4980, N4979, N4978, 
        N4977, N4976, N4975, N4974, N4973, N4972}) );
  IIR_DW01_add_52 add_22_root_sub_0_root_add_236_61 ( .A({N4996, N4995, N4994, 
        N4993, N4992, N4991, N4990, N4989, N4988, N4987, N4986, N4985, N4984, 
        N4983, N4982, N4981, N4980, N4979, N4978, N4977, N4976, N4975, N4974, 
        N4973, N4972}), .B({N4521, N4521, N4520, N4519, N4518, N4517, N4516, 
        N4515, N4514, N4513, N4512, N4511, N4510, N4509, N4508, N4507, N4506, 
        N4505, N4504, N4503, N4502, N4501, N4500, N4499, N4498}), .CI(1'b0), 
        .SUM({N5546, N5545, N5544, N5543, N5542, N5541, N5540, N5539, N5538, 
        N5537, N5536, N5535, N5534, N5533, N5532, N5531, N5530, N5529, N5528, 
        N5527, N5526, N5525, N5524, N5523, N5522}) );
  IIR_DW01_add_51 add_45_root_sub_0_root_add_236_61 ( .A({ss0[24], n1710, 
        n1713, n1713, ss0[24], n1713, n1713, n1713, n1713, n1709, n1322, n1333, 
        n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, n1314, n1325, 
        n1318, n1519, n1513}), .B({ss0[24], n1711, n1711, n1708, n1322, n1333, 
        n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, n1314, n1325, 
        n1318, n1519, n1514, n1510, n1506, n1503, n1500, n1497, n1495}), .CI(
        1'b0), .SUM({N5071, N5070, N5069, N5068, N5067, N5066, N5065, N5064, 
        N5063, N5062, N5061, N5060, N5059, N5058, N5057, N5056, N5055, N5054, 
        N5053, N5052, N5051, N5050, N5049, N5048, N5047}) );
  IIR_DW01_add_50 add_44_root_sub_0_root_add_236_61 ( .A({N5071, N5070, N5069, 
        N5068, N5067, N5066, N5065, N5064, N5063, N5062, N5061, N5060, N5059, 
        N5058, N5057, N5056, N5055, N5054, N5053, N5052, N5051, N5050, N5049, 
        N5048, N5047}), .B({ss0[24], n1712, n1713, n1710, n1708, n1322, n1333, 
        n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, n1314, n1325, 
        n1318, n1519, n1513, n1509, n1506, n1503, n1500, n1497}), .CI(1'b0), 
        .SUM({N5721, N5720, N5719, N5718, N5717, N5716, N5715, N5714, N5713, 
        N5712, N5711, N5710, N5709, N5708, N5707, N5706, N5705, N5704, N5703, 
        N5702, N5701, N5700, N5699, N5698, N5697}) );
  IIR_DW01_add_49 add_33_root_sub_0_root_add_236_61 ( .A({n1780, n1780, n1780, 
        n1780, n1780, n1780, n1764, n1762, n1760, n1758, n1756, n1754, n1752, 
        n1750, n1633, n1630, n1625, n1624, n1623, n1622, n1621, s2[8:7], 1'b0, 
        1'b0}), .B({N5721, N5720, N5719, N5718, N5717, N5716, N5715, N5714, 
        N5713, N5712, N5711, N5710, N5709, N5708, N5707, N5706, N5705, N5704, 
        N5703, N5702, N5701, N5700, N5699, N5698, N5697}), .CI(1'b0), .SUM({
        N5646, N5645, N5644, N5643, N5642, N5641, N5640, N5639, N5638, N5637, 
        N5636, N5635, N5634, N5633, N5632, N5631, N5630, N5629, N5628, N5627, 
        N5626, N5625, N5624, N5623, N5622}) );
  IIR_DW01_add_48 add_24_root_sub_0_root_add_236_61 ( .A({N560, N559, N558, 
        N557, N556, N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, 
        N545, N544, N543, N542, N541, N540, N539, N538, N537, N536}), .B({
        N5646, N5645, N5644, N5643, N5642, N5641, N5640, N5639, N5638, N5637, 
        N5636, N5635, N5634, N5633, N5632, N5631, N5630, N5629, N5628, N5627, 
        N5626, N5625, N5624, N5623, N5622}), .CI(1'b0), .SUM({N4771, N4770, 
        N4769, N4768, N4767, N4766, N4765, N4764, N4763, N4762, N4761, N4760, 
        N4759, N4758, N4757, N4756, N4755, N4754, N4753, N4752, N4751, N4750, 
        N4749, N4748, N4747}) );
  IIR_DW01_add_47 add_21_root_sub_0_root_add_236_61 ( .A({N4771, N4770, N4769, 
        N4768, N4767, N4766, N4765, N4764, N4763, N4762, N4761, N4760, N4759, 
        N4758, N4757, N4756, N4755, N4754, N4753, N4752, N4751, N4750, N4749, 
        N4748, N4747}), .B({N1764, N1763, N1762, N1761, N1760, N1759, N1758, 
        N1757, N1756, N1755, N1754, N1753, N1752, N1751, N1750, N1749, N1748, 
        N1747, N1746, N1745, N1744, N1743, N1742, N1741, N1740}), .CI(1'b0), 
        .SUM({N5946, N5945, N5944, N5943, N5942, N5941, N5940, N5939, N5938, 
        N5937, N5936, N5935, N5934, N5933, N5932, N5931, N5930, N5929, N5928, 
        N5927, N5926, N5925, N5924, N5923, N5922}) );
  IIR_DW01_add_46 add_18_root_sub_0_root_add_236_61 ( .A({N5546, N5545, N5544, 
        N5543, N5542, N5541, N5540, N5539, N5538, N5537, N5536, N5535, N5534, 
        N5533, N5532, N5531, N5530, N5529, N5528, N5527, N5526, N5525, N5524, 
        N5523, N5522}), .B({N5946, N5945, N5944, N5943, N5942, N5941, N5940, 
        N5939, N5938, N5937, N5936, N5935, N5934, N5933, N5932, N5931, N5930, 
        N5929, N5928, N5927, N5926, N5925, N5924, N5923, N5922}), .CI(1'b0), 
        .SUM({N5521, N5520, N5519, N5518, N5517, N5516, N5515, N5514, N5513, 
        N5512, N5511, N5510, N5509, N5508, N5507, N5506, N5505, N5504, N5503, 
        N5502, N5501, N5500, N5499, N5498, N5497}) );
  IIR_DW01_add_45 add_17_root_sub_0_root_add_236_61 ( .A({N4696, N4695, N4694, 
        N4693, N4692, N4691, N4690, N4689, N4688, N4687, N4686, N4685, N4684, 
        N4683, N4682, N4681, N4680, N4679, N4678, N4677, N4676, N4675, N4674, 
        N4673, N4672}), .B({N5521, N5520, N5519, N5518, N5517, N5516, N5515, 
        N5514, N5513, N5512, N5511, N5510, N5509, N5508, N5507, N5506, N5505, 
        N5504, N5503, N5502, N5501, N5500, N5499, N5498, N5497}), .CI(1'b0), 
        .SUM({N4646, N4645, N4644, N4643, N4642, N4641, N4640, N4639, N4638, 
        N4637, N4636, N4635, N4634, N4633, N4632, N4631, N4630, N4629, N4628, 
        N4627, N4626, N4625, N4624, N4623, N4622}) );
  IIR_DW01_add_44 add_52_root_sub_0_root_add_236_61 ( .A({n1316, n1316, n1316, 
        n1316, n1316, n1316, n1316, n1316, ss4[23:7]}), .B({n1316, n1316, 
        ss4[23:1]}), .CI(1'b0), .SUM({N5196, N5195, N5194, N5193, N5192, N5191, 
        N5190, N5189, N5188, N5187, N5186, N5185, N5184, N5183, N5182, N5181, 
        N5180, N5179, N5178, N5177, N5176, N5175, N5174, N5173, N5172}) );
  IIR_DW01_add_43 add_49_root_sub_0_root_add_236_61 ( .A({N5196, N5195, N5194, 
        N5193, N5192, N5191, N5190, N5189, N5188, N5187, N5186, N5185, N5184, 
        N5183, N5182, N5181, N5180, N5179, N5178, N5177, N5176, N5175, N5174, 
        N5173, N5172}), .B({N4431, N4431, N4431, N4431, N4431, N4431, N4430, 
        N4429, N4428, N4427, N4426, N4425, N4424, N4423, N4422, N4421, N4420, 
        N4419, N4418, N4417, N4416, N4415, N4414, N4413, N4412}), .CI(1'b0), 
        .SUM({N5121, N5120, N5119, N5118, N5117, N5116, N5115, N5114, N5113, 
        N5112, N5111, N5110, N5109, N5108, N5107, N5106, N5105, N5104, N5103, 
        N5102, N5101, N5100, N5099, N5098, N5097}) );
  IIR_DW01_add_42 add_43_root_sub_0_root_add_236_61 ( .A({n1710, n1710, n1710, 
        n1710, n1710, ss0[24], ss0[24], ss0[24], ss0[24], ss0[24], ss0[24], 
        ss0[24], n1709, n1322, n1333, n1331, n1330, n1329, n1328, n1326, n1324, 
        n1323, n1327, n1314, n1325}), .B({N5121, N5120, N5119, N5118, N5117, 
        N5116, N5115, N5114, N5113, N5112, N5111, N5110, N5109, N5108, N5107, 
        N5106, N5105, N5104, N5103, N5102, N5101, N5100, N5099, N5098, N5097}), 
        .CI(1'b0), .SUM({N5046, N5045, N5044, N5043, N5042, N5041, N5040, 
        N5039, N5038, N5037, N5036, N5035, N5034, N5033, N5032, N5031, N5030, 
        N5029, N5028, N5027, N5026, N5025, N5024, N5023, N5022}) );
  IIR_DW01_add_41 add_42_root_sub_0_root_add_236_61 ( .A({n1748, n1747, n1747, 
        n1747, n1747, n1747, n1747, n1747, n1746, n1746, n1746, n1746, n1746, 
        n1746, n1746, n1746, n1746, n1620, n1619, n1618, n1611, n1607, n1602, 
        n1595, n1589}), .B({n1748, n1738, n1738, n1738, n1738, n1738, n1738, 
        n1738, n1738, n1620, n1619, n1617, n1612, n1605, n1600, n1596, n1590, 
        n1585, n1584, n1583, n1582, n1581, n1580, N1630, s3[8]}), .CI(1'b0), 
        .SUM({N5021, N5020, N5019, N5018, N5017, N5016, N5015, N5014, N5013, 
        N5012, N5011, N5010, N5009, N5008, N5007, N5006, N5005, N5004, N5003, 
        N5002, N5001, N5000, N4999, N4998, N4997}) );
  IIR_DW01_add_40 add_41_root_sub_0_root_add_236_61 ( .A({N5021, N5020, N5019, 
        N5018, N5017, N5016, N5015, N5014, N5013, N5012, N5011, N5010, N5009, 
        N5008, N5007, N5006, N5005, N5004, N5003, N5002, N5001, N5000, N4999, 
        N4998, N4997}), .B({n1739, n1739, n1739, n1739, n1739, n1739, n1739, 
        n1739, n1739, n1739, n1739, n1739, n1739, n1738, n1738, n1620, n1619, 
        n1617, n1612, n1605, n1601, n1594, n1590, n1585, n1584}), .CI(1'b0), 
        .SUM({N5696, N5695, N5694, N5693, N5692, N5691, N5690, N5689, N5688, 
        N5687, N5686, N5685, N5684, N5683, N5682, N5681, N5680, N5679, N5678, 
        N5677, N5676, N5675, N5674, N5673, N5672}) );
  IIR_DW01_add_39 add_40_root_sub_0_root_add_236_61 ( .A({N5696, N5695, N5694, 
        N5693, N5692, N5691, N5690, N5689, N5688, N5687, N5686, N5685, N5684, 
        N5683, N5682, N5681, N5680, N5679, N5678, N5677, N5676, N5675, N5674, 
        N5673, N5672}), .B({n1740, n1740, n1740, n1740, n1740, n1740, n1740, 
        n1740, n1740, n1740, n1620, n1619, n1617, n1612, n1605, n1600, n1596, 
        n1590, n1585, n1584, n1583, n1582, n1581, n1580, N1630}), .CI(1'b0), 
        .SUM({N6021, N6020, N6019, N6018, N6017, N6016, N6015, N6014, N6013, 
        N6012, N6011, N6010, N6009, N6008, N6007, N6006, N6005, N6004, N6003, 
        N6002, N6001, N6000, N5999, N5998, N5997}) );
  IIR_DW01_add_38 add_32_root_sub_0_root_add_236_61 ( .A({N5046, N5045, N5044, 
        N5043, N5042, N5041, N5040, N5039, N5038, N5037, N5036, N5035, N5034, 
        N5033, N5032, N5031, N5030, N5029, N5028, N5027, N5026, N5025, N5024, 
        N5023, N5022}), .B({N6021, N6020, N6019, N6018, N6017, N6016, N6015, 
        N6014, N6013, N6012, N6011, N6010, N6009, N6008, N6007, N6006, N6005, 
        N6004, N6003, N6002, N6001, N6000, N5999, N5998, N5997}), .CI(1'b0), 
        .SUM({N5996, N5995, N5994, N5993, N5992, N5991, N5990, N5989, N5988, 
        N5987, N5986, N5985, N5984, N5983, N5982, N5981, N5980, N5979, N5978, 
        N5977, N5976, N5975, N5974, N5973, N5972}) );
  IIR_DW01_add_37 add_15_root_sub_0_root_add_236_61 ( .A({N4646, N4645, N4644, 
        N4643, N4642, N4641, N4640, N4639, N4638, N4637, N4636, N4635, N4634, 
        N4633, N4632, N4631, N4630, N4629, N4628, N4627, N4626, N4625, N4624, 
        N4623, N4622}), .B({N5996, N5995, N5994, N5993, N5992, N5991, N5990, 
        N5989, N5988, N5987, N5986, N5985, N5984, N5983, N5982, N5981, N5980, 
        N5979, N5978, N5977, N5976, N5975, N5974, N5973, N5972}), .CI(1'b0), 
        .SUM({N5496, N5495, N5494, N5493, N5492, N5491, N5490, N5489, N5488, 
        N5487, N5486, N5485, N5484, N5483, N5482, N5481, N5480, N5479, N5478, 
        N5477, N5476, N5475, N5474, N5473, N5472}) );
  IIR_DW01_add_36 add_26_root_sub_0_root_add_236_61 ( .A({n1473, n1481, n1477, 
        n1480, n1478, n1481, n1480, n1482, n1477, n1336, n1321, n1317, n1312, 
        n1335, n1320, n1311, n1308, n1315, n1307, n1309, n1332, n1319, n1525, 
        n1520, n1516}), .B({n1473, n1475, n1701, n1473, n1701, n1701, n1473, 
        n1473, n1475, n1473, n1473, n1475, n1475, n1477, n1478, n1478, n1477, 
        n1336, n1321, n1317, n1312, n1335, n1320, n1311, n1308}), .CI(1'b0), 
        .SUM({N6171, N6170, N6169, N6168, N6167, N6166, N6165, N6164, N6163, 
        N6162, N6161, N6160, N6159, N6158, N6157, N6156, N6155, N6154, N6153, 
        N6152, N6151, N6150, N6149, N6148, N6147}) );
  IIR_DW01_sub_2 sub_13_root_sub_0_root_add_236_61 ( .A({N5496, N5495, N5494, 
        N5493, N5492, N5491, N5490, N5489, N5488, N5487, N5486, N5485, N5484, 
        N5483, N5482, N5481, N5480, N5479, N5478, N5477, N5476, N5475, N5474, 
        N5473, N5472}), .B({N6171, N6170, N6169, N6168, N6167, N6166, N6165, 
        N6164, N6163, N6162, N6161, N6160, N6159, N6158, N6157, N6156, N6155, 
        N6154, N6153, N6152, N6151, N6150, N6149, N6148, N6147}), .CI(1'b0), 
        .DIFF({N6146, N6145, N6144, N6143, N6142, N6141, N6140, N6139, N6138, 
        N6137, N6136, N6135, N6134, N6133, N6132, N6131, N6130, N6129, N6128, 
        N6127, N6126, N6125, N6124, N6123, N6122}) );
  IIR_DW01_add_35 add_11_root_sub_0_root_add_236_61 ( .A({N5921, N5920, N5919, 
        N5918, N5917, N5916, N5915, N5914, N5913, N5912, N5911, N5910, N5909, 
        N5908, N5907, N5906, N5905, N5904, N5903, N5902, N5901, N5900, N5899, 
        N5898, N5897}), .B({N6146, N6145, N6144, N6143, N6142, N6141, N6140, 
        N6139, N6138, N6137, N6136, N6135, N6134, N6133, N6132, N6131, N6130, 
        N6129, N6128, N6127, N6126, N6125, N6124, N6123, N6122}), .CI(1'b0), 
        .SUM({N4571, N4570, N4569, N4568, N4567, N4566, N4565, N4564, N4563, 
        N4562, N4561, N4560, N4559, N4558, N4557, N4556, N4555, N4554, N4553, 
        N4552, N4551, N4550, N4549, N4548, N4547}) );
  IIR_DW01_add_34 add_30_root_sub_0_root_add_236_61 ( .A({n1473, n1482, n1481, 
        n1480, n1480, n1481, n1482, n1482, n1481, n1480, n1481, n1482, n1482, 
        n1482, n1336, n1321, n1317, n1312, n1335, n1320, n1311, n1308, n1315, 
        n1307, n1309}), .B({n1473, n1336, n1321, n1317, n1312, n1335, n1320, 
        n1311, n1308, n1315, n1307, n1309, n1332, n1319, n1524, n1521, n1515, 
        n1511, n1507, n1504, n1501, n1498, n1496, n1494, ss1[0]}), .CI(1'b0), 
        .SUM({N4871, N4870, N4869, N4868, N4867, N4866, N4865, N4864, N4863, 
        N4862, N4861, N4860, N4859, N4858, N4857, N4856, N4855, N4854, N4853, 
        N4852, N4851, N4850, N4849, N4848, N4847}) );
  IIR_DW01_add_33 add_29_root_sub_0_root_add_236_61 ( .A({N4871, N4870, N4869, 
        N4868, N4867, N4866, N4865, N4864, N4863, N4862, N4861, N4860, N4859, 
        N4858, N4857, N4856, N4855, N4854, N4853, N4852, N4851, N4850, N4849, 
        N4848, N4847}), .B({n1473, n1473, n1336, n1321, n1317, n1312, n1335, 
        n1320, n1311, n1308, n1315, n1307, n1309, n1332, n1319, n1524, n1520, 
        n1515, n1511, n1507, n1504, n1501, n1498, n1496, n1494}), .CI(1'b0), 
        .SUM({N5621, N5620, N5619, N5618, N5617, N5616, N5615, N5614, N5613, 
        N5612, N5611, N5610, N5609, N5608, N5607, N5606, N5605, N5604, N5603, 
        N5602, N5601, N5600, N5599, N5598, N5597}) );
  IIR_DW01_add_32 add_28_root_sub_0_root_add_236_61 ( .A({N5621, N5620, N5619, 
        N5618, N5617, N5616, N5615, N5614, N5613, N5612, N5611, N5610, N5609, 
        N5608, N5607, N5606, N5605, N5604, N5603, N5602, N5601, N5600, N5599, 
        N5598, N5597}), .B({n1475, n1473, n1701, n1473, n1701, n1473, n1701, 
        n1473, n1473, n1701, n1701, n1473, n1701, n1336, n1321, n1317, n1312, 
        n1335, n1320, n1311, n1308, n1315, n1307, n1309, n1332}), .CI(1'b0), 
        .SUM({N5596, N5595, N5594, N5593, N5592, N5591, N5590, N5589, N5588, 
        N5587, N5586, N5585, N5584, N5583, N5582, N5581, N5580, N5579, N5578, 
        N5577, N5576, N5575, N5574, N5573, N5572}) );
  IIR_DW01_add_31 add_27_root_sub_0_root_add_236_61 ( .A({N5596, N5595, N5594, 
        N5593, N5592, N5591, N5590, N5589, N5588, N5587, N5586, N5585, N5584, 
        N5583, N5582, N5581, N5580, N5579, N5578, N5577, N5576, N5575, N5574, 
        N5573, N5572}), .B({n1472, n1472, n1472, n1472, n1701, n1473, n1701, 
        n1473, n1473, n1473, n1473, n1473, n1336, n1321, n1317, n1312, n1335, 
        n1320, n1311, n1308, n1315, n1307, n1309, n1332, n1319}), .CI(1'b0), 
        .SUM({N5971, N5970, N5969, N5968, N5967, N5966, N5965, N5964, N5963, 
        N5962, N5961, N5960, N5959, N5958, N5957, N5956, N5955, N5954, N5953, 
        N5952, N5951, N5950, N5949, N5948, N5947}) );
  IIR_DW01_sub_1 sub_19_root_sub_0_root_add_236_61 ( .A({N1789, N1788, N1787, 
        N1786, N1785, N1784, N1783, N1782, N1781, N1780, N1779, N1778, N1777, 
        N1776, N1775, N1774, N1773, N1772, N1771, N1770, N1769, N1768, N1767, 
        N1766, N1765}), .B({N5971, N5970, N5969, N5968, N5967, N5966, N5965, 
        N5964, N5963, N5962, N5961, N5960, N5959, N5958, N5957, N5956, N5955, 
        N5954, N5953, N5952, N5951, N5950, N5949, N5948, N5947}), .CI(1'b0), 
        .DIFF({N4671, N4670, N4669, N4668, N4667, N4666, N4665, N4664, N4663, 
        N4662, N4661, N4660, N4659, N4658, N4657, N4656, N4655, N4654, N4653, 
        N4652, N4651, N4650, N4649, N4648, N4647}) );
  IIR_DW01_add_30 add_10_root_sub_0_root_add_236_61 ( .A({N4571, N4570, N4569, 
        N4568, N4567, N4566, N4565, N4564, N4563, N4562, N4561, N4560, N4559, 
        N4558, N4557, N4556, N4555, N4554, N4553, N4552, N4551, N4550, N4549, 
        N4548, N4547}), .B({N4671, N4670, N4669, N4668, N4667, N4666, N4665, 
        N4664, N4663, N4662, N4661, N4660, N4659, N4658, N4657, N4656, N4655, 
        N4654, N4653, N4652, N4651, N4650, N4649, N4648, N4647}), .CI(1'b0), 
        .SUM({N5471, N5470, N5469, N5468, N5467, N5466, N5465, N5464, N5463, 
        N5462, N5461, N5460, N5459, N5458, N5457, N5456, N5455, N5454, N5453, 
        N5452, N5451, N5450, N5449, N5448, N5447}) );
  IIR_DW01_add_29 add_12_root_sub_0_root_add_236_61 ( .A({n1820, n1819, n1819, 
        n1820, n1819, n1820, n1820, n1820, n1820, n1801, n1799, n1797, n1795, 
        n1793, n1791, n1789, n1786, n1785, n1646, n1643, n1640, n1639, n1638, 
        n1637, n1636}), .B({n1820, n1808, n1808, n1808, n1808, n1808, n1808, 
        n1800, n1798, n1796, n1794, n1792, n1790, n1788, n1786, n1784, n1646, 
        n1642, n1640, n1639, n1638, n1637, n1636, s1[7], 1'b0}), .CI(1'b0), 
        .SUM({N4596, N4595, N4594, N4593, N4592, N4591, N4590, N4589, N4588, 
        N4587, N4586, N4585, N4584, N4583, N4582, N4581, N4580, N4579, N4578, 
        N4577, N4576, N4575, N4574, N4573, N4572}) );
  IIR_DW01_add_28 add_9_root_sub_0_root_add_236_61 ( .A({N5471, N5470, N5469, 
        N5468, N5467, N5466, N5465, N5464, N5463, N5462, N5461, N5460, N5459, 
        N5458, N5457, N5456, N5455, N5454, N5453, N5452, N5451, N5450, N5449, 
        N5448, N5447}), .B({N4596, N4595, N4594, N4593, N4592, N4591, N4590, 
        N4589, N4588, N4587, N4586, N4585, N4584, N4583, N4582, N4581, N4580, 
        N4579, N4578, N4577, N4576, N4575, N4574, N4573, N4572}), .CI(1'b0), 
        .SUM({N4546, N4545, N4544, N4543, N4542, N4541, N4540, N4539, N4538, 
        N4537, N4536, N4535, N4534, N4533, N4532, N4531, N4530, N4529, N4528, 
        N4527, N4526, N4525, N4524, N4523, N4522}) );
  IIR_DW01_add_27 add_8_root_sub_0_root_add_236_61 ( .A({N4796, N4795, N4794, 
        N4793, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, 
        N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346}), 
        .B({N1864, N1863, N1862, N1861, N1860, N1859, N1858, N1857, N1856, 
        N1855, N1854, N1853, N1852, N1851, N1850, N1849, N1848, N1847, N1846, 
        N1845, N1844, N1843, N1842, N1841, N1840}), .CI(1'b0), .SUM({N5446, 
        N5445, N5444, N5443, N5442, N5441, N5440, N5439, N5438, N5437, N5436, 
        N5435, N5434, N5433, N5432, N5431, N5430, N5429, N5428, N5427, N5426, 
        N5425, N5424, N5423, N5422}) );
  IIR_DW01_add_26 add_7_root_sub_0_root_add_236_61 ( .A({N4546, N4545, N4544, 
        N4543, N4542, N4541, N4540, N4539, N4538, N4537, N4536, N4535, N4534, 
        N4533, N4532, N4531, N4530, N4529, N4528, N4527, N4526, N4525, N4524, 
        N4523, N4522}), .B({N5446, N5445, N5444, N5443, N5442, N5441, N5440, 
        N5439, N5438, N5437, N5436, N5435, N5434, N5433, N5432, N5431, N5430, 
        N5429, N5428, N5427, N5426, N5425, N5424, N5423, N5422}), .CI(1'b0), 
        .SUM({N5896, N5895, N5894, N5893, N5892, N5891, N5890, N5889, N5888, 
        N5887, N5886, N5885, N5884, N5883, N5882, N5881, N5880, N5879, N5878, 
        N5877, N5876, N5875, N5874, N5873, N5872}) );
  IIR_DW01_add_25 add_6_root_sub_0_root_add_236_61 ( .A({N5896, N5895, N5894, 
        N5893, N5892, N5891, N5890, N5889, N5888, N5887, N5886, N5885, N5884, 
        N5883, N5882, N5881, N5880, N5879, N5878, N5877, N5876, N5875, N5874, 
        N5873, N5872}), .B({n1850, n1850, n1850, n1850, n1850, n1851, n1851, 
        n1851, n1851, n1851, n1851, n1841, n1839, n1837, n1835, n1833, n1831, 
        n1829, n1827, n1826, n1823, n1821, n1655, n1652, n1651}), .CI(1'b0), 
        .SUM({N5421, N5420, N5419, N5418, N5417, N5416, N5415, N5414, N5413, 
        N5412, N5411, N5410, N5409, N5408, N5407, N5406, N5405, N5404, N5403, 
        N5402, N5401, N5400, N5399, N5398, N5397}) );
  IIR_DW01_add_24 add_5_root_sub_0_root_add_236_61 ( .A({N5421, N5420, N5419, 
        N5418, N5417, N5416, N5415, N5414, N5413, N5412, N5411, N5410, N5409, 
        N5408, N5407, N5406, N5405, N5404, N5403, N5402, N5401, N5400, N5399, 
        N5398, N5397}), .B({n1849, n1849, n1849, n1849, n1849, n1849, n1850, 
        n1850, n1850, n1850, n1850, n1850, n1850, n1850, n1841, n1839, n1837, 
        n1835, n1833, n1831, n1829, n1827, n1826, n1824, n1821}), .CI(1'b0), 
        .SUM({N5396, N5395, N5394, N5393, N5392, N5391, N5390, N5389, N5388, 
        N5387, N5386, N5385, N5384, N5383, N5382, N5381, N5380, N5379, N5378, 
        N5377, N5376, N5375, N5374, N5373, N5372}) );
  IIR_DW01_add_23 add_4_root_sub_0_root_add_236_61 ( .A({n1863, n1863, n1863, 
        n1863, n1863, n1863, n1863, n1863, n1863, n1863, n1863, n1863, n1842, 
        n1840, n1838, n1836, n1834, n1832, n1830, n1828, n1826, n1824, n1822, 
        n1656, n1652}), .B({n1863, n1848, n1848, n1848, n1848, n1848, n1849, 
        n1849, n1849, n1849, n1849, n1849, n1849, n1841, n1839, n1837, n1835, 
        n1833, n1831, n1829, n1827, n1825, n1823, n1821, n1655}), .CI(1'b0), 
        .SUM({N5871, N5870, N5869, N5868, N5867, N5866, N5865, N5864, N5863, 
        N5862, N5861, N5860, N5859, N5858, N5857, N5856, N5855, N5854, N5853, 
        N5852, N5851, N5850, N5849, N5848, N5847}) );
  IIR_DW01_add_22 add_3_root_sub_0_root_add_236_61 ( .A({n1863, n1863, n1862, 
        n1863, n1863, n1863, n1862, n1863, n1863, n1863, n1842, n1840, n1838, 
        n1836, n1834, n1832, n1830, n1828, n1826, n1824, n1822, n1657, n1652, 
        n1651, n1650}), .B({n1863, n1846, n1846, n1846, n1847, n1847, n1847, 
        n1847, n1847, n1847, n1847, n1847, n1847, n1847, n1847, n1847, n1848, 
        n1841, n1839, n1837, n1835, n1833, n1831, n1829, n1827}), .CI(1'b0), 
        .SUM({N6121, N6120, N6119, N6118, N6117, N6116, N6115, N6114, N6113, 
        N6112, N6111, N6110, N6109, N6108, N6107, N6106, N6105, N6104, N6103, 
        N6102, N6101, N6100, N6099, N6098, N6097}) );
  IIR_DW01_add_21 add_2_root_sub_0_root_add_236_61 ( .A({N5396, N5395, N5394, 
        N5393, N5392, N5391, N5390, N5389, N5388, N5387, N5386, N5385, N5384, 
        N5383, N5382, N5381, N5380, N5379, N5378, N5377, N5376, N5375, N5374, 
        N5373, N5372}), .B({N5871, N5870, N5869, N5868, N5867, N5866, N5865, 
        N5864, N5863, N5862, N5861, N5860, N5859, N5858, N5857, N5856, N5855, 
        N5854, N5853, N5852, N5851, N5850, N5849, N5848, N5847}), .CI(1'b0), 
        .SUM({N6246, N6245, N6244, N6243, N6242, N6241, N6240, N6239, N6238, 
        N6237, N6236, N6235, N6234, N6233, N6232, N6231, N6230, N6229, N6228, 
        N6227, N6226, N6225, N6224, N6223, N6222}) );
  IIR_DW01_add_20 add_1_root_sub_0_root_add_236_61 ( .A({N4846, N4845, N411, 
        N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, 
        N398, N397, N396, N395, N394, N393, N392, N391, N390, N389}), .B({
        N6121, N6120, N6119, N6118, N6117, N6116, N6115, N6114, N6113, N6112, 
        N6111, N6110, N6109, N6108, N6107, N6106, N6105, N6104, N6103, N6102, 
        N6101, N6100, N6099, N6098, N6097}), .CI(1'b0), .SUM({N6296, N6295, 
        N6294, N6293, N6292, N6291, N6290, N6289, N6288, N6287, N6286, N6285, 
        N6284, N6283, N6282, N6281, N6280, N6279, N6278, N6277, N6276, N6275, 
        N6274, N6273, N6272}) );
  IIR_DW01_add_19 add_0_root_sub_0_root_add_236_61 ( .A({N6246, N6245, N6244, 
        N6243, N6242, N6241, N6240, N6239, N6238, N6237, N6236, N6235, N6234, 
        N6233, N6232, N6231, N6230, N6229, N6228, N6227, N6226, N6225, N6224, 
        N6223, N6222}), .B({N6296, N6295, N6294, N6293, N6292, N6291, N6290, 
        N6289, N6288, N6287, N6286, N6285, N6284, N6283, N6282, N6281, N6280, 
        N6279, N6278, N6277, N6276, N6275, N6274, N6273, N6272}), .CI(1'b0), 
        .SUM({N6321, N6320, N6319, N6318, N6317, N6316, N6315, N6314, N6313, 
        N6312, N6311, N6310, N6309, N6308, N6307, N6306, N6305, N6304, N6303, 
        N6302, N6301, N6300, N6299, N6298, N6297}) );
  IIR_DW01_add_126 add_61_root_sub_205_16 ( .A({n1732, n1731, n1731, n1731, 
        n1731, n1731, n1731, n1731, n1731, n1731, n1579, n1578, n1577, n1576, 
        n1575, n1574, n1573, n1572, n1571, n1570, n1569, n1568}), .B({n1732, 
        n1726, n1726, n1726, n1727, n1726, n1727, n1727, n1725, n1727, n1727, 
        n1579, n1578, n1577, n1576, n1575, n1574, n1573, n1572, n1571, n1570, 
        n1569}), .CI(1'b0), .SUM({N2868, N2867, N2866, N2865, N2864, N2863, 
        N2862, N2861, N2860, N2859, N2858, N2857, N2856, N2855, N2854, N2853, 
        N2852, N2851, N2850, N2849, N2848, N2847}) );
  IIR_DW01_add_125 add_60_root_sub_205_16 ( .A({n1730, n1732, n1732, n1732, 
        n1732, n1732, n1731, n1731, n1732, n1731, n1732, n1731, n1731, n1731, 
        n1732, n1579, n1578, n1577, n1576, n1575, n1574, n1573, n1572}), .B({
        n1741, n1741, n1740, n1740, n1740, n1620, n1619, n1617, n1612, n1605, 
        n1600, n1596, n1590, n1585, n1584, n1583, n1582, n1581, n1580, N1630, 
        s3[8:7], 1'b0}), .CI(1'b0), .SUM({N2891, N2890, N2889, N2888, N2887, 
        N2886, N2885, N2884, N2883, N2882, N2881, N2880, N2879, N2878, N2877, 
        N2876, N2875, N2874, N2873, N2872, N2871, N2870, N2869}) );
  IIR_DW01_add_124 add_59_root_sub_205_16 ( .A({n1748, n1748, n1747, n1748, 
        n1747, n1748, n1748, n1747, n1620, n1619, n1617, n1612, n1605, n1600, 
        n1596, n1590, n1585, n1584, n1583, n1582, n1581, n1580, N1630, s3[8]}), 
        .B({n1748, n1741, n1741, n1741, n1741, n1741, n1741, n1741, n1741, 
        n1741, n1620, n1619, n1617, n1612, n1605, n1600, n1596, n1590, n1585, 
        n1584, n1583, n1582, n1581, n1580}), .CI(1'b0), .SUM({N2915, N2914, 
        N2913, N2912, N2911, N2910, N2909, N2908, N2907, N2906, N2905, N2904, 
        N2903, N2902, N2901, N2900, N2899, N2898, N2897, N2896, N2895, N2894, 
        N2893, N2892}) );
  IIR_DW01_add_123 add_42_root_sub_0_root_sub_205_16 ( .A({n1473, n1481, n1480, 
        n1482, n1481, n1336, n1321, n1317, n1312, n1335, n1320, n1311, n1308, 
        n1315, n1307, n1309, n1332, n1319, n1525, n1521, n1516, n1511, n1507, 
        n1504, n1501}), .B({n1473, n1472, n1475, n1336, n1321, n1317, n1312, 
        n1335, n1320, n1311, n1308, n1315, n1307, n1309, n1332, n1319, n1524, 
        n1521, n1515, n1511, n1507, n1504, n1501, n1498, n1496}), .CI(1'b0), 
        .SUM({N3415, N3414, N3413, N3412, N3411, N3410, N3409, N3408, N3407, 
        N3406, N3405, N3404, N3403, N3402, N3401, N3400, N3399, N3398, N3397, 
        N3396, N3395, N3394, N3393, N3392, N3391}) );
  IIR_DW01_add_122 add_33_root_sub_0_root_sub_205_16 ( .A({N3415, N3414, N3413, 
        N3412, N3411, N3410, N3409, N3408, N3407, N3406, N3405, N3404, N3403, 
        N3402, N3401, N3400, N3399, N3398, N3397, N3396, N3395, N3394, N3393, 
        N3392, N3391}), .B({n1771, n1771, n1771, n1771, n1770, n1770, n1770, 
        n1770, n1770, n1763, n1761, n1759, n1757, n1755, n1753, n1751, n1749, 
        n1633, n1630, n1625, n1624, n1623, n1622, n1621, s2[8]}), .CI(1'b0), 
        .SUM({N4140, N4139, N4138, N4137, N4136, N4135, N4134, N4133, N4132, 
        N4131, N4130, N4129, N4128, N4127, N4126, N4125, N4124, N4123, N4122, 
        N4121, N4120, N4119, N4118, N4117, N4116}) );
  IIR_DW01_add_121 add_36_root_sub_0_root_sub_205_16 ( .A({ss0[24], n1710, 
        n1710, n1710, n1710, n1710, n1710, n1710, n1710, n1710, ss0[24], 
        ss0[24], n1709, n1322, n1333, n1331, n1330, n1329, n1328, n1326, n1324, 
        n1323, n1327, n1314, n1325}), .B({ss0[24], n1713, n1712, n1712, n1712, 
        n1713, n1712, n1713, n1713, n1713, n1712, n1712, ss0[24], n1713, n1709, 
        n1322, n1333, n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327}), 
        .CI(1'b0), .SUM({N3340, N3339, N3338, N3337, N3336, N3335, N3334, 
        N3333, N3332, N3331, N3330, N3329, N3328, N3327, N3326, N3325, N3324, 
        N3323, N3322, N3321, N3320, N3319, N3318, N3317, N3316}) );
  IIR_DW01_sub_18 sub_23_root_sub_0_root_sub_205_16 ( .A({N4140, N4139, N4138, 
        N4137, N4136, N4135, N4134, N4133, N4132, N4131, N4130, N4129, N4128, 
        N4127, N4126, N4125, N4124, N4123, N4122, N4121, N4120, N4119, N4118, 
        N4117, N4116}), .B({N3340, N3339, N3338, N3337, N3336, N3335, N3334, 
        N3333, N3332, N3331, N3330, N3329, N3328, N3327, N3326, N3325, N3324, 
        N3323, N3322, N3321, N3320, N3319, N3318, N3317, N3316}), .CI(1'b0), 
        .DIFF({N3790, N3789, N3788, N3787, N3786, N3785, N3784, N3783, N3782, 
        N3781, N3780, N3779, N3778, N3777, N3776, N3775, N3774, N3773, N3772, 
        N3771, N3770, N3769, N3768, N3767, N3766}) );
  IIR_DW01_add_120 add_22_root_sub_0_root_sub_205_16 ( .A({N2868, N2868, N2868, 
        N2868, N2867, N2866, N2865, N2864, N2863, N2862, N2861, N2860, N2859, 
        N2858, N2857, N2856, N2855, N2854, N2853, N2852, N2851, N2850, N2849, 
        N2848, N2847}), .B({N2825, N2825, N2825, N2825, N2825, N2825, N2824, 
        N2823, N2822, N2821, N2820, N2819, N2818, N2817, N2816, N2815, N2814, 
        N2813, N2812, N2811, N2810, N2809, N2808, N2807, N2806}), .CI(1'b0), 
        .SUM({N3765, N3764, N3763, N3762, N3761, N3760, N3759, N3758, N3757, 
        N3756, N3755, N3754, N3753, N3752, N3751, N3750, N3749, N3748, N3747, 
        N3746, N3745, N3744, N3743, N3742, N3741}) );
  IIR_DW01_sub_17 sub_19_root_sub_0_root_sub_205_16 ( .A({N3765, N3764, N3763, 
        N3762, N3761, N3760, N3759, N3758, N3757, N3756, N3755, N3754, N3753, 
        N3752, N3751, N3750, N3749, N3748, N3747, N3746, N3745, N3744, N3743, 
        N3742, N3741}), .B({N2139, N2138, N2137, N2136, N2135, N2134, N2133, 
        N2132, N2131, N2130, N2129, N2128, N2127, N2126, N2125, N2124, N2123, 
        N2122, N2121, N2120, N2119, N2118, N2117, N2116, N2115}), .CI(1'b0), 
        .DIFF({N3065, N3064, N3063, N3062, N3061, N3060, N3059, N3058, N3057, 
        N3056, N3055, N3054, N3053, N3052, N3051, N3050, N3049, N3048, N3047, 
        N3046, N3045, N3044, N3043, N3042, N3041}) );
  IIR_DW01_add_119 add_48_root_sub_0_root_sub_205_16 ( .A({ss3[24], n1464, 
        n1464, n1565, n1562, n1559, n1556, n1553, n1550, n1547, n1544, n1541, 
        n1538, n1535, n1532, n1529, n1527, n1523, ss3[8:2]}), .B({ss3[24], 
        n1464, n1464, ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], 
        ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], n1565, n1562, n1559, 
        n1556, n1553, n1550, n1547, n1544, n1541, n1538, n1535}), .CI(1'b0), 
        .SUM({N3440, N3439, N3438, N3437, N3436, N3435, N3434, N3433, N3432, 
        N3431, N3430, N3429, N3428, N3427, N3426, N3425, N3424, N3423, N3422, 
        N3421, N3420, N3419, N3418, N3417, N3416}) );
  IIR_DW01_add_118 add_46_root_sub_0_root_sub_205_16 ( .A({n1467, n1469, n1469, 
        n1465, n1470, n1469, n1465, n1470, n1469, n1465, n1470, n1563, n1561, 
        n1558, n1555, n1552, n1549, n1546, n1543, n1540, n1537, n1534, n1531, 
        n1528, n1526}), .B({n1467, n1465, n1470, n1469, n1469, n1465, n1470, 
        n1470, n1469, n1470, n1466, n1465, n1469, n1563, n1560, n1557, n1554, 
        n1551, n1548, n1545, n1542, n1539, n1536, n1533, n1531}), .CI(1'b0), 
        .SUM({N4190, N4189, N4188, N4187, N4186, N4185, N4184, N4183, N4182, 
        N4181, N4180, N4179, N4178, N4177, N4176, N4175, N4174, N4173, N4172, 
        N4171, N4170, N4169, N4168, N4167, N4166}) );
  IIR_DW01_sub_16 sub_44_root_sub_0_root_sub_205_16 ( .A({N3440, N3439, N3438, 
        N3437, N3436, N3435, N3434, N3433, N3432, N3431, N3430, N3429, N3428, 
        N3427, N3426, N3425, N3424, N3423, N3422, N3421, N3420, N3419, N3418, 
        N3417, N3416}), .B({N4190, N4189, N4188, N4187, N4186, N4185, N4184, 
        N4183, N4182, N4181, N4180, N4179, N4178, N4177, N4176, N4175, N4174, 
        N4173, N4172, N4171, N4170, N4169, N4168, N4167, N4166}), .CI(1'b0), 
        .DIFF({N3990, N3989, N3988, N3987, N3986, N3985, N3984, N3983, N3982, 
        N3981, N3980, N3979, N3978, N3977, N3976, N3975, N3974, N3973, N3972, 
        N3971, N3970, N3969, N3968, N3967, N3966}) );
  IIR_DW01_sub_15 sub_52_root_sub_0_root_sub_205_16 ( .A({n1565, n1562, n1559, 
        n1556, n1553, n1550, n1547, n1544, n1541, n1538, n1535, n1532, n1529, 
        n1527, n1523, ss3[8:0], 1'b0}), .B({n1561, n1558, n1555, n1552, n1549, 
        n1546, n1543, n1540, n1537, n1534, n1530, n1528, n1526, n1522, n1517, 
        n1512, n1508, n1505, n1502, n1499, ss2[2:0], 1'b0, 1'b0}), .CI(1'b0), 
        .DIFF({N3515, N3514, N3513, N3512, N3511, N3510, N3509, N3508, N3507, 
        N3506, N3505, N3504, N3503, N3502, N3501, N3500, N3499, N3498, N3497, 
        N3496, N3495, N3494, N3493, N3492, SYNOPSYS_UNCONNECTED__2}) );
  IIR_DW01_add_117 add_51_root_sub_0_root_sub_205_16 ( .A({n1336, n1321, n1317, 
        n1312, n1335, n1320, n1311, n1308, n1315, n1307, n1309, n1332, n1319, 
        n1525, n1520, n1516, n1511, n1507, n1504, n1501, n1498, n1496, n1494, 
        ss1[0], 1'b0}), .B({N3515, N3514, N3513, N3512, N3511, N3510, N3509, 
        N3508, N3507, N3506, N3505, N3504, N3503, N3502, N3501, N3500, N3499, 
        N3498, N3497, N3496, N3495, N3494, N3493, N3492, 1'b0}), .CI(1'b0), 
        .SUM({N3490, N3489, N3488, N3487, N3486, N3485, N3484, N3483, N3482, 
        N3481, N3480, N3479, N3478, N3477, N3476, N3475, N3474, N3473, N3472, 
        N3471, N3470, N3469, N3468, N3467, SYNOPSYS_UNCONNECTED__3}) );
  IIR_DW01_add_116 add_50_root_sub_0_root_sub_205_16 ( .A({N3490, N3489, N3488, 
        N3487, N3486, N3485, N3484, N3483, N3482, N3481, N3480, N3479, N3478, 
        N3477, N3476, N3475, N3474, N3473, N3472, N3471, N3470, N3469, N3468, 
        N3467, 1'b0}), .B({n1464, n1464, n1565, n1562, n1559, n1556, n1553, 
        n1550, n1547, n1544, n1541, n1538, n1535, n1532, n1529, n1527, n1523, 
        ss3[8:1]}), .CI(1'b0), .SUM({N3965, N3964, N3963, N3962, N3961, N3960, 
        N3959, N3958, N3957, N3956, N3955, N3954, N3953, N3952, N3951, N3950, 
        N3949, N3948, N3947, N3946, N3945, N3944, N3943, N3942, N3941}) );
  IIR_DW01_add_115 add_49_root_sub_0_root_sub_205_16 ( .A({N3965, N3964, N3963, 
        N3962, N3961, N3960, N3959, N3958, N3957, N3956, N3955, N3954, N3953, 
        N3952, N3951, N3950, N3949, N3948, N3947, N3946, N3945, N3944, N3943, 
        N3942, N3941}), .B({ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], n1464, 
        ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], n1464, n1464, 
        n1464, n1565, n1562, n1559, n1556, n1553, n1550, n1547, n1544, n1541, 
        n1538}), .CI(1'b0), .SUM({N3465, N3464, N3463, N3462, N3461, N3460, 
        N3459, N3458, N3457, N3456, N3455, N3454, N3453, N3452, N3451, N3450, 
        N3449, N3448, N3447, N3446, N3445, N3444, N3443, N3442, N3441}) );
  IIR_DW01_sub_14 sub_45_root_sub_0_root_sub_205_16 ( .A({N3465, N3464, N3463, 
        N3462, N3461, N3460, N3459, N3458, N3457, N3456, N3455, N3454, N3453, 
        N3452, N3451, N3450, N3449, N3448, N3447, N3446, N3445, N3444, N3443, 
        N3442, N3441}), .B({n1467, n1467, n1467, n1467, n1467, n1467, n1467, 
        n1467, n1467, n1467, n1563, n1561, n1558, n1555, n1552, n1549, n1546, 
        n1543, n1540, n1537, n1534, n1531, n1528, n1526, n1522}), .CI(1'b0), 
        .DIFF({N3565, N3564, N3563, N3562, N3561, N3560, N3559, N3558, N3557, 
        N3556, N3555, N3554, N3553, N3552, N3551, N3550, N3549, N3548, N3547, 
        N3546, N3545, N3544, N3543, N3542, N3541}) );
  IIR_DW01_add_114 add_40_root_sub_0_root_sub_205_16 ( .A({N3990, N3989, N3988, 
        N3987, N3986, N3985, N3984, N3983, N3982, N3981, N3980, N3979, N3978, 
        N3977, N3976, N3975, N3974, N3973, N3972, N3971, N3970, N3969, N3968, 
        N3967, N3966}), .B({N3565, N3564, N3563, N3562, N3561, N3560, N3559, 
        N3558, N3557, N3556, N3555, N3554, N3553, N3552, N3551, N3550, N3549, 
        N3548, N3547, N3546, N3545, N3544, N3543, N3542, N3541}), .CI(1'b0), 
        .SUM({N4165, N4164, N4163, N4162, N4161, N4160, N4159, N4158, N4157, 
        N4156, N4155, N4154, N4153, N4152, N4151, N4150, N4149, N4148, N4147, 
        N4146, N4145, N4144, N4143, N4142, N4141}) );
  IIR_DW01_sub_13 sub_47_root_sub_0_root_sub_205_16 ( .A({ss3[24], ss3[24], 
        ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], ss3[24], n1565, n1562, 
        n1559, n1556, n1553, n1550, n1547, n1544, n1541, n1538, n1535, n1532, 
        n1529, n1527, n1523, ss3[8:7]}), .B({n1467, n1467, n1467, n1467, n1467, 
        n1467, n1467, n1467, n1564, n1561, n1558, n1555, n1552, n1549, n1546, 
        n1543, n1540, n1537, n1534, n1530, n1528, n1526, n1522, n1517, n1512}), 
        .CI(1'b0), .DIFF({N3940, N3939, N3938, N3937, N3936, N3935, N3934, 
        N3933, N3932, N3931, N3930, N3929, N3928, N3927, N3926, N3925, N3924, 
        N3923, N3922, N3921, N3920, N3919, N3918, N3917, N3916}) );
  IIR_DW01_add_113 add_43_root_sub_0_root_sub_205_16 ( .A({N3940, N3939, N3938, 
        N3937, N3936, N3935, N3934, N3933, N3932, N3931, N3930, N3929, N3928, 
        N3927, N3926, N3925, N3924, N3923, N3922, N3921, N3920, N3919, N3918, 
        N3917, N3916}), .B({n1473, n1701, n1475, n1473, n1473, n1475, n1336, 
        n1321, n1317, n1312, n1335, n1320, n1311, n1308, n1315, n1307, n1309, 
        n1332, n1319, n1524, n1520, n1515, n1511, n1507, n1504}), .CI(1'b0), 
        .SUM({N3590, N3589, N3588, N3587, N3586, N3585, N3584, N3583, N3582, 
        N3581, N3580, N3579, N3578, N3577, N3576, N3575, N3574, N3573, N3572, 
        N3571, N3570, N3569, N3568, N3567, N3566}) );
  IIR_DW01_add_112 add_39_root_sub_0_root_sub_205_16 ( .A({N4165, N4164, N4163, 
        N4162, N4161, N4160, N4159, N4158, N4157, N4156, N4155, N4154, N4153, 
        N4152, N4151, N4150, N4149, N4148, N4147, N4146, N4145, N4144, N4143, 
        N4142, N4141}), .B({N3590, N3589, N3588, N3587, N3586, N3585, N3584, 
        N3583, N3582, N3581, N3580, N3579, N3578, N3577, N3576, N3575, N3574, 
        N3573, N3572, N3571, N3570, N3569, N3568, N3567, N3566}), .CI(1'b0), 
        .SUM({N4290, N4289, N4288, N4287, N4286, N4285, N4284, N4283, N4282, 
        N4281, N4280, N4279, N4278, N4277, N4276, N4275, N4274, N4273, N4272, 
        N4271, N4270, N4269, N4268, N4267, N4266}) );
  IIR_DW01_add_111 add_24_root_sub_0_root_sub_205_16 ( .A({n1744, n1747, n1748, 
        n1748, n1748, n1748, n1748, n1748, n1748, n1748, n1748, n1748, n1748, 
        n1747, n1748, n1747, n1747, n1620, n1619, n1617, n1612, n1605, n1600, 
        n1596, n1590}), .B({N4290, N4289, N4288, N4287, N4286, N4285, N4284, 
        N4283, N4282, N4281, N4280, N4279, N4278, N4277, N4276, N4275, N4274, 
        N4273, N4272, N4271, N4270, N4269, N4268, N4267, N4266}), .CI(1'b0), 
        .SUM({N3165, N3164, N3163, N3162, N3161, N3160, N3159, N3158, N3157, 
        N3156, N3155, N3154, N3153, N3152, N3151, N3150, N3149, N3148, N3147, 
        N3146, N3145, N3144, N3143, N3142, N3141}) );
  IIR_DW01_add_110 add_16_root_sub_0_root_sub_205_16 ( .A({N3065, N3064, N3063, 
        N3062, N3061, N3060, N3059, N3058, N3057, N3056, N3055, N3054, N3053, 
        N3052, N3051, N3050, N3049, N3048, N3047, N3046, N3045, N3044, N3043, 
        N3042, N3041}), .B({N3165, N3164, N3163, N3162, N3161, N3160, N3159, 
        N3158, N3157, N3156, N3155, N3154, N3153, N3152, N3151, N3150, N3149, 
        N3148, N3147, N3146, N3145, N3144, N3143, N3142, N3141}), .CI(1'b0), 
        .SUM({N3015, N3014, N3013, N3012, N3011, N3010, N3009, N3008, N3007, 
        N3006, N3005, N3004, N3003, N3002, N3001, N3000, N2999, N2998, N2997, 
        N2996, N2995, N2994, N2993, N2992, N2991}) );
  IIR_DW01_add_109 add_9_root_sub_0_root_sub_205_16 ( .A({N3790, N3789, N3788, 
        N3787, N3786, N3785, N3784, N3783, N3782, N3781, N3780, N3779, N3778, 
        N3777, N3776, N3775, N3774, N3773, N3772, N3771, N3770, N3769, N3768, 
        N3767, N3766}), .B({N3015, N3014, N3013, N3012, N3011, N3010, N3009, 
        N3008, N3007, N3006, N3005, N3004, N3003, N3002, N3001, N3000, N2999, 
        N2998, N2997, N2996, N2995, N2994, N2993, N2992, N2991}), .CI(1'b0), 
        .SUM({N2940, N2939, N2938, N2937, N2936, N2935, N2934, N2933, N2932, 
        N2931, N2930, N2929, N2928, N2927, N2926, N2925, N2924, N2923, N2922, 
        N2921, N2920, N2919, N2918, N2917, N2916}) );
  IIR_DW01_add_108 add_38_root_sub_0_root_sub_205_16 ( .A({ss0[24], n1710, 
        n1710, n1710, n1710, n1710, n1710, n1710, n1710, n1710, n1710, n1710, 
        n1710, n1710, n1710, n1710, n1710, n1709, n1322, n1333, n1331, n1330, 
        n1329, n1328, n1326}), .B({ss0[24], n1710, n1712, ss0[24], n1712, 
        ss0[24], n1713, n1710, n1712, n1713, ss0[24], n1708, n1322, n1333, 
        n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, n1314, n1325, 
        n1318}), .CI(1'b0), .SUM({N3365, N3364, N3363, N3362, N3361, N3360, 
        N3359, N3358, N3357, N3356, N3355, N3354, N3353, N3352, N3351, N3350, 
        N3349, N3348, N3347, N3346, N3345, N3344, N3343, N3342, N3341}) );
  IIR_DW01_add_107 add_37_root_sub_0_root_sub_205_16 ( .A({N3365, N3364, N3363, 
        N3362, N3361, N3360, N3359, N3358, N3357, N3356, N3355, N3354, N3353, 
        N3352, N3351, N3350, N3349, N3348, N3347, N3346, N3345, N3344, N3343, 
        N3342, N3341}), .B({n1710, n1710, n1710, ss0[24], n1710, ss0[24], 
        n1710, n1710, n1712, n1712, n1713, n1713, n1710, n1709, n1322, n1333, 
        n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, n1314}), .CI(
        1'b0), .SUM({N3890, N3889, N3888, N3887, N3886, N3885, N3884, N3883, 
        N3882, N3881, N3880, N3879, N3878, N3877, N3876, N3875, N3874, N3873, 
        N3872, N3871, N3870, N3869, N3868, N3867, N3866}) );
  IIR_DW01_sub_12 sub_29_root_sub_0_root_sub_205_16 ( .A({n1781, n1781, n1781, 
        n1781, n1780, n1781, n1781, n1780, n1780, n1780, n1764, n1762, n1760, 
        n1758, n1756, n1754, n1752, n1750, n1633, n1630, n1625, n1624, n1623, 
        n1622, n1621}), .B({N3890, N3889, N3888, N3887, N3886, N3885, N3884, 
        N3883, N3882, N3881, N3880, N3879, N3878, N3877, N3876, N3875, N3874, 
        N3873, N3872, N3871, N3870, N3869, N3868, N3867, N3866}), .CI(1'b0), 
        .DIFF({N3240, N3239, N3238, N3237, N3236, N3235, N3234, N3233, N3232, 
        N3231, N3230, N3229, N3228, N3227, N3226, N3225, N3224, N3223, N3222, 
        N3221, N3220, N3219, N3218, N3217, N3216}) );
  IIR_DW01_add_106 add_41_root_sub_0_root_sub_205_16 ( .A({n1473, n1481, n1480, 
        n1480, n1482, n1482, n1480, n1481, n1482, n1336, n1321, n1317, n1312, 
        n1335, n1320, n1311, n1308, n1315, n1307, n1309, n1332, n1319, n1525, 
        n1521, n1516}), .B({n1473, n1336, n1321, n1317, n1312, n1335, n1320, 
        n1311, n1308, n1315, n1307, n1309, n1332, n1319, n1524, n1521, n1515, 
        n1511, n1507, n1504, n1501, n1498, n1496, n1494, ss1[0]}), .CI(1'b0), 
        .SUM({N3915, N3914, N3913, N3912, N3911, N3910, N3909, N3908, N3907, 
        N3906, N3905, N3904, N3903, N3902, N3901, N3900, N3899, N3898, N3897, 
        N3896, N3895, N3894, N3893, N3892, N3891}) );
  IIR_DW01_add_105 add_26_root_sub_0_root_sub_205_16 ( .A({N3915, N3914, N3913, 
        N3912, N3911, N3910, N3909, N3908, N3907, N3906, N3905, N3904, N3903, 
        N3902, N3901, N3900, N3899, N3898, N3897, N3896, N3895, N3894, N3893, 
        N3892, N3891}), .B({n1742, n1742, n1742, n1742, n1742, n1742, n1742, 
        n1742, n1742, n1742, n1741, n1741, n1620, n1619, n1617, n1612, n1605, 
        n1600, n1596, n1590, n1585, n1584, n1583, n1582, n1581}), .CI(1'b0), 
        .SUM({N4265, N4264, N4263, N4262, N4261, N4260, N4259, N4258, N4257, 
        N4256, N4255, N4254, N4253, N4252, N4251, N4250, N4249, N4248, N4247, 
        N4246, N4245, N4244, N4243, N4242, N4241}) );
  IIR_DW01_add_104 add_21_root_sub_0_root_sub_205_16 ( .A({N2846, N2846, N2846, 
        N2846, N2846, N2845, N2844, N2843, N2842, N2841, N2840, N2839, N2838, 
        N2837, N2836, N2835, N2834, N2833, N2832, N2831, N2830, N2829, N2828, 
        N2827, N2826}), .B({N4265, N4264, N4263, N4262, N4261, N4260, N4259, 
        N4258, N4257, N4256, N4255, N4254, N4253, N4252, N4251, N4250, N4249, 
        N4248, N4247, N4246, N4245, N4244, N4243, N4242, N4241}), .CI(1'b0), 
        .SUM({N4090, N4089, N4088, N4087, N4086, N4085, N4084, N4083, N4082, 
        N4081, N4080, N4079, N4078, N4077, N4076, N4075, N4074, N4073, N4072, 
        N4071, N4070, N4069, N4068, N4067, N4066}) );
  IIR_DW01_add_103 add_14_root_sub_0_root_sub_205_16 ( .A({N962, N961, N960, 
        N959, N958, N957, N956, N955, N954, N953, N952, N951, N950, N949, N948, 
        N947, N946, N945, N944, N943, N942, N941, N940, N939, N938}), .B({
        N2915, N2915, N2914, N2913, N2912, N2911, N2910, N2909, N2908, N2907, 
        N2906, N2905, N2904, N2903, N2902, N2901, N2900, N2899, N2898, N2897, 
        N2896, N2895, N2894, N2893, N2892}), .CI(1'b0), .SUM({N4065, N4064, 
        N4063, N4062, N4061, N4060, N4059, N4058, N4057, N4056, N4055, N4054, 
        N4053, N4052, N4051, N4050, N4049, N4048, N4047, N4046, N4045, N4044, 
        N4043, N4042, N4041}) );
  IIR_DW01_add_102 add_12_root_sub_0_root_sub_205_16 ( .A({N4090, N4089, N4088, 
        N4087, N4086, N4085, N4084, N4083, N4082, N4081, N4080, N4079, N4078, 
        N4077, N4076, N4075, N4074, N4073, N4072, N4071, N4070, N4069, N4068, 
        N4067, N4066}), .B({N4065, N4064, N4063, N4062, N4061, N4060, N4059, 
        N4058, N4057, N4056, N4055, N4054, N4053, N4052, N4051, N4050, N4049, 
        N4048, N4047, N4046, N4045, N4044, N4043, N4042, N4041}), .CI(1'b0), 
        .SUM({N2990, N2989, N2988, N2987, N2986, N2985, N2984, N2983, N2982, 
        N2981, N2980, N2979, N2978, N2977, N2976, N2975, N2974, N2973, N2972, 
        N2971, N2970, N2969, N2968, N2967, N2966}) );
  IIR_DW01_add_101 add_11_root_sub_0_root_sub_205_16 ( .A({N3240, N3239, N3238, 
        N3237, N3236, N3235, N3234, N3233, N3232, N3231, N3230, N3229, N3228, 
        N3227, N3226, N3225, N3224, N3223, N3222, N3221, N3220, N3219, N3218, 
        N3217, N3216}), .B({N2990, N2989, N2988, N2987, N2986, N2985, N2984, 
        N2983, N2982, N2981, N2980, N2979, N2978, N2977, N2976, N2975, N2974, 
        N2973, N2972, N2971, N2970, N2969, N2968, N2967, N2966}), .CI(1'b0), 
        .SUM({N2965, N2964, N2963, N2962, N2961, N2960, N2959, N2958, N2957, 
        N2956, N2955, N2954, N2953, N2952, N2951, N2950, N2949, N2948, N2947, 
        N2946, N2945, N2944, N2943, N2942, N2941}) );
  IIR_DW01_add_100 add_28_root_sub_0_root_sub_205_16 ( .A({n1820, n1819, n1819, 
        n1819, n1819, n1819, n1801, n1799, n1797, n1795, n1793, n1791, n1789, 
        n1786, n1785, n1646, n1643, n1640, n1639, n1638, n1637, n1636, s1[7], 
        1'b0, 1'b0}), .B({n1820, n1810, n1809, n1809, n1809, n1809, n1809, 
        n1809, n1809, n1809, n1800, n1798, n1796, n1794, n1792, n1790, n1788, 
        n1786, n1784, n1646, n1642, n1640, n1639, n1638, n1637}), .CI(1'b0), 
        .SUM({N3815, N3814, N3813, N3812, N3811, N3810, N3809, N3808, N3807, 
        N3806, N3805, N3804, N3803, N3802, N3801, N3800, N3799, N3798, N3797, 
        N3796, N3795, N3794, N3793, N3792, N3791}) );
  IIR_DW01_add_99 add_27_root_sub_0_root_sub_205_16 ( .A({n1819, n1819, n1819, 
        n1819, n1819, n1819, n1819, n1819, n1819, n1801, n1799, n1797, n1795, 
        n1793, n1791, n1789, n1786, n1785, n1648, n1642, n1640, n1639, n1638, 
        n1637, n1636}), .B({N3390, N3389, N3388, N3387, N3386, N3385, N3384, 
        N3383, N3382, N3381, N3380, N3379, N3378, N3377, N3376, N3375, N3374, 
        N3373, N3372, N3371, N3370, N3369, N3368, N3367, N3366}), .CI(1'b0), 
        .SUM({N4115, N4114, N4113, N4112, N4111, N4110, N4109, N4108, N4107, 
        N4106, N4105, N4104, N4103, N4102, N4101, N4100, N4099, N4098, N4097, 
        N4096, N4095, N4094, N4093, N4092, N4091}) );
  IIR_DW01_add_98 add_17_root_sub_0_root_sub_205_16 ( .A({N3815, N3814, N3813, 
        N3812, N3811, N3810, N3809, N3808, N3807, N3806, N3805, N3804, N3803, 
        N3802, N3801, N3800, N3799, N3798, N3797, N3796, N3795, N3794, N3793, 
        N3792, N3791}), .B({N4115, N4114, N4113, N4112, N4111, N4110, N4109, 
        N4108, N4107, N4106, N4105, N4104, N4103, N4102, N4101, N4100, N4099, 
        N4098, N4097, N4096, N4095, N4094, N4093, N4092, N4091}), .CI(1'b0), 
        .SUM({N3040, N3039, N3038, N3037, N3036, N3035, N3034, N3033, N3032, 
        N3031, N3030, N3029, N3028, N3027, N3026, N3025, N3024, N3023, N3022, 
        N3021, N3020, N3019, N3018, N3017, N3016}) );
  IIR_DW01_add_97 add_32_root_sub_0_root_sub_205_16 ( .A({n1783, n1781, n1781, 
        n1781, n1781, n1781, n1781, n1781, n1781, n1781, n1781, n1781, n1764, 
        n1762, n1760, n1758, n1756, n1754, n1752, n1750, n1633, n1630, n1625, 
        n1624, n1623}), .B({n1783, n1773, n1773, n1773, n1773, n1772, n1772, 
        n1772, n1772, n1772, n1772, n1772, n1772, n1772, n1772, n1772, n1772, 
        n1763, n1761, n1759, n1757, n1755, n1753, n1751, n1749}), .CI(1'b0), 
        .SUM({N3290, N3289, N3288, N3287, N3286, N3285, N3284, N3283, N3282, 
        N3281, N3280, N3279, N3278, N3277, N3276, N3275, N3274, N3273, N3272, 
        N3271, N3270, N3269, N3268, N3267, N3266}) );
  IIR_DW01_add_96 add_31_root_sub_0_root_sub_205_16 ( .A({N3290, N3289, N3288, 
        N3287, N3286, N3285, N3284, N3283, N3282, N3281, N3280, N3279, N3278, 
        N3277, N3276, N3275, N3274, N3273, N3272, N3271, N3270, N3269, N3268, 
        N3267, N3266}), .B({n1774, n1773, n1773, n1773, n1773, n1773, n1763, 
        n1761, n1759, n1757, n1755, n1753, n1751, n1749, n1633, n1630, n1625, 
        n1624, n1623, n1622, n1621, s2[8:7], 1'b0, 1'b0}), .CI(1'b0), .SUM({
        N3265, N3264, N3263, N3262, N3261, N3260, N3259, N3258, N3257, N3256, 
        N3255, N3254, N3253, N3252, N3251, N3250, N3249, N3248, N3247, N3246, 
        N3245, N3244, N3243, N3242, N3241}) );
  IIR_DW01_add_95 add_35_root_sub_0_root_sub_205_16 ( .A({ss0[24], n1710, 
        n1709, n1322, n1333, n1331, n1330, n1329, n1328, n1326, n1324, n1323, 
        n1327, n1314, n1325, n1318, n1519, n1514, n1509, n1506, n1503, n1500, 
        n1497, n1495, ss0[1]}), .B({ss0[24], n1711, n1711, n1711, n1709, n1322, 
        n1333, n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, n1314, 
        n1325, n1318, n1518, n1514, n1510, n1506, n1503, n1500, n1497}), .CI(
        1'b0), .SUM({N3315, N3314, N3313, N3312, N3311, N3310, N3309, N3308, 
        N3307, N3306, N3305, N3304, N3303, N3302, N3301, N3300, N3299, N3298, 
        N3297, N3296, N3295, N3294, N3293, N3292, N3291}) );
  IIR_DW01_sub_11 sub_20_root_sub_0_root_sub_205_16 ( .A({N3265, N3264, N3263, 
        N3262, N3261, N3260, N3259, N3258, N3257, N3256, N3255, N3254, N3253, 
        N3252, N3251, N3250, N3249, N3248, N3247, N3246, N3245, N3244, N3243, 
        N3242, N3241}), .B({N3315, N3314, N3313, N3312, N3311, N3310, N3309, 
        N3308, N3307, N3306, N3305, N3304, N3303, N3302, N3301, N3300, N3299, 
        N3298, N3297, N3296, N3295, N3294, N3293, N3292, N3291}), .CI(1'b0), 
        .DIFF({N3090, N3089, N3088, N3087, N3086, N3085, N3084, N3083, N3082, 
        N3081, N3080, N3079, N3078, N3077, N3076, N3075, N3074, N3073, N3072, 
        N3071, N3070, N3069, N3068, N3067, N3066}) );
  IIR_DW01_add_94 add_30_root_sub_0_root_sub_205_16 ( .A({n1783, n1782, n1782, 
        n1781, n1781, n1782, n1781, n1781, n1781, n1781, n1781, n1781, n1781, 
        n1781, n1781, n1763, n1761, n1759, n1757, n1755, n1753, n1751, n1750, 
        n1633, n1630}), .B({n1783, n1775, n1775, n1775, n1774, n1774, n1774, 
        n1774, n1774, n1774, n1774, n1774, n1774, n1774, n1774, n1774, n1763, 
        n1761, n1759, n1757, n1755, n1753, n1751, n1749, n1633}), .CI(1'b0), 
        .SUM({N3840, N3839, N3838, N3837, N3836, N3835, N3834, N3833, N3832, 
        N3831, N3830, N3829, N3828, N3827, N3826, N3825, N3824, N3823, N3822, 
        N3821, N3820, N3819, N3818, N3817, N3816}) );
  IIR_DW01_add_93 add_15_root_sub_0_root_sub_205_16 ( .A({N3840, N3839, N3838, 
        N3837, N3836, N3835, N3834, N3833, N3832, N3831, N3830, N3829, N3828, 
        N3827, N3826, N3825, N3824, N3823, N3822, N3821, N3820, N3819, N3818, 
        N3817, N3816}), .B({N2891, N2891, N2891, N2890, N2889, N2888, N2887, 
        N2886, N2885, N2884, N2883, N2882, N2881, N2880, N2879, N2878, N2877, 
        N2876, N2875, N2874, N2873, N2872, N2871, N2870, N2869}), .CI(1'b0), 
        .SUM({N3715, N3714, N3713, N3712, N3711, N3710, N3709, N3708, N3707, 
        N3706, N3705, N3704, N3703, N3702, N3701, N3700, N3699, N3698, N3697, 
        N3696, N3695, N3694, N3693, N3692, N3691}) );
  IIR_DW01_add_92 add_13_root_sub_0_root_sub_205_16 ( .A({N987, N986, N985, 
        N984, N983, N982, N981, N980, N979, N978, N977, N976, N975, N974, N973, 
        N972, N971, N970, N969, N968, N967, N966, N965, N964, N963}), .B({
        N3040, N3039, N3038, N3037, N3036, N3035, N3034, N3033, N3032, N3031, 
        N3030, N3029, N3028, N3027, N3026, N3025, N3024, N3023, N3022, N3021, 
        N3020, N3019, N3018, N3017, N3016}), .CI(1'b0), .SUM({N4240, N4239, 
        N4238, N4237, N4236, N4235, N4234, N4233, N4232, N4231, N4230, N4229, 
        N4228, N4227, N4226, N4225, N4224, N4223, N4222, N4221, N4220, N4219, 
        N4218, N4217, N4216}) );
  IIR_DW01_add_91 add_25_root_sub_0_root_sub_205_16 ( .A({n1748, n1747, n1747, 
        n1747, n1747, n1747, n1747, n1747, n1747, n1747, n1747, n1747, n1747, 
        n1747, n1747, n1747, n1620, n1619, n1617, n1612, n1605, n1601, n1594, 
        n1590, n1585}), .B({n1748, n1744, n1742, n1743, n1744, n1743, n1743, 
        n1743, n1743, n1743, n1743, n1743, n1743, n1742, n1742, n1620, n1619, 
        n1617, n1612, n1605, n1600, n1596, n1590, n1585, n1584}), .CI(1'b0), 
        .SUM({N4340, N4339, N4338, N4337, N4336, N4335, N4334, N4333, N4332, 
        N4331, N4330, N4329, N4328, N4327, N4326, N4325, N4324, N4323, N4322, 
        N4321, N4320, N4319, N4318, N4317, N4316}) );
  IIR_DW01_add_90 add_34_root_sub_0_root_sub_205_16 ( .A({ss0[24], n1709, 
        n1322, n1333, n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, 
        n1314, n1325, n1318, n1519, n1513, n1510, n1506, n1503, n1500, n1497, 
        n1495, ss0[1:0]}), .B({ss0[24], n1711, n1711, n1711, n1711, n1711, 
        n1711, n1709, n1322, n1333, n1331, n1330, n1329, n1328, n1326, n1324, 
        n1323, n1327, n1314, n1325, n1318, n1518, n1513, n1509, n1506}), .CI(
        1'b0), .SUM({N3865, N3864, N3863, N3862, N3861, N3860, N3859, N3858, 
        N3857, N3856, N3855, N3854, N3853, N3852, N3851, N3850, N3849, N3848, 
        N3847, N3846, N3845, N3844, N3843, N3842, N3841}) );
  IIR_DW01_sub_10 sub_18_root_sub_0_root_sub_205_16 ( .A({N4340, N4339, N4338, 
        N4337, N4336, N4335, N4334, N4333, N4332, N4331, N4330, N4329, N4328, 
        N4327, N4326, N4325, N4324, N4323, N4322, N4321, N4320, N4319, N4318, 
        N4317, N4316}), .B({N3865, N3864, N3863, N3862, N3861, N3860, N3859, 
        N3858, N3857, N3856, N3855, N3854, N3853, N3852, N3851, N3850, N3849, 
        N3848, N3847, N3846, N3845, N3844, N3843, N3842, N3841}), .CI(1'b0), 
        .DIFF({N3740, N3739, N3738, N3737, N3736, N3735, N3734, N3733, N3732, 
        N3731, N3730, N3729, N3728, N3727, N3726, N3725, N3724, N3723, N3722, 
        N3721, N3720, N3719, N3718, N3717, N3716}) );
  IIR_DW01_add_89 add_10_root_sub_0_root_sub_205_16 ( .A({N4240, N4239, N4238, 
        N4237, N4236, N4235, N4234, N4233, N4232, N4231, N4230, N4229, N4228, 
        N4227, N4226, N4225, N4224, N4223, N4222, N4221, N4220, N4219, N4218, 
        N4217, N4216}), .B({N3740, N3739, N3738, N3737, N3736, N3735, N3734, 
        N3733, N3732, N3731, N3730, N3729, N3728, N3727, N3726, N3725, N3724, 
        N3723, N3722, N3721, N3720, N3719, N3718, N3717, N3716}), .CI(1'b0), 
        .SUM({N3690, N3689, N3688, N3687, N3686, N3685, N3684, N3683, N3682, 
        N3681, N3680, N3679, N3678, N3677, N3676, N3675, N3674, N3673, N3672, 
        N3671, N3670, N3669, N3668, N3667, N3666}) );
  IIR_DW01_add_88 add_8_root_sub_0_root_sub_205_16 ( .A({N2965, N2964, N2963, 
        N2962, N2961, N2960, N2959, N2958, N2957, N2956, N2955, N2954, N2953, 
        N2952, N2951, N2950, N2949, N2948, N2947, N2946, N2945, N2944, N2943, 
        N2942, N2941}), .B({N3690, N3689, N3688, N3687, N3686, N3685, N3684, 
        N3683, N3682, N3681, N3680, N3679, N3678, N3677, N3676, N3675, N3674, 
        N3673, N3672, N3671, N3670, N3669, N3668, N3667, N3666}), .CI(1'b0), 
        .SUM({N3665, N3664, N3663, N3662, N3661, N3660, N3659, N3658, N3657, 
        N3656, N3655, N3654, N3653, N3652, N3651, N3650, N3649, N3648, N3647, 
        N3646, N3645, N3644, N3643, N3642, N3641}) );
  IIR_DW01_add_87 add_7_root_sub_0_root_sub_205_16 ( .A({N2940, N2939, N2938, 
        N2937, N2936, N2935, N2934, N2933, N2932, N2931, N2930, N2929, N2928, 
        N2927, N2926, N2925, N2924, N2923, N2922, N2921, N2920, N2919, N2918, 
        N2917, N2916}), .B({N3665, N3664, N3663, N3662, N3661, N3660, N3659, 
        N3658, N3657, N3656, N3655, N3654, N3653, N3652, N3651, N3650, N3649, 
        N3648, N3647, N3646, N3645, N3644, N3643, N3642, N3641}), .CI(1'b0), 
        .SUM({N4040, N4039, N4038, N4037, N4036, N4035, N4034, N4033, N4032, 
        N4031, N4030, N4029, N4028, N4027, N4026, N4025, N4024, N4023, N4022, 
        N4021, N4020, N4019, N4018, N4017, N4016}) );
  IIR_DW01_add_86 add_6_root_sub_0_root_sub_205_16 ( .A({N3715, N3714, N3713, 
        N3712, N3711, N3710, N3709, N3708, N3707, N3706, N3705, N3704, N3703, 
        N3702, N3701, N3700, N3699, N3698, N3697, N3696, N3695, N3694, N3693, 
        N3692, N3691}), .B({N4040, N4039, N4038, N4037, N4036, N4035, N4034, 
        N4033, N4032, N4031, N4030, N4029, N4028, N4027, N4026, N4025, N4024, 
        N4023, N4022, N4021, N4020, N4019, N4018, N4017, N4016}), .CI(1'b0), 
        .SUM({N3640, N3639, N3638, N3637, N3636, N3635, N3634, N3633, N3632, 
        N3631, N3630, N3629, N3628, N3627, N3626, N3625, N3624, N3623, N3622, 
        N3621, N3620, N3619, N3618, N3617, N3616}) );
  IIR_DW01_add_85 add_5_root_sub_0_root_sub_205_16 ( .A({N3090, N3089, N3088, 
        N3087, N3086, N3085, N3084, N3083, N3082, N3081, N3080, N3079, N3078, 
        N3077, N3076, N3075, N3074, N3073, N3072, N3071, N3070, N3069, N3068, 
        N3067, N3066}), .B({N3640, N3639, N3638, N3637, N3636, N3635, N3634, 
        N3633, N3632, N3631, N3630, N3629, N3628, N3627, N3626, N3625, N3624, 
        N3623, N3622, N3621, N3620, N3619, N3618, N3617, N3616}), .CI(1'b0), 
        .SUM({N3615, N3614, N3613, N3612, N3611, N3610, N3609, N3608, N3607, 
        N3606, N3605, N3604, N3603, N3602, N3601, N3600, N3599, N3598, N3597, 
        N3596, N3595, N3594, N3593, N3592, N3591}) );
  IIR_DW01_add_84 add_4_root_sub_0_root_sub_205_16 ( .A({N3615, N3614, N3613, 
        N3612, N3611, N3610, N3609, N3608, N3607, N3606, N3605, N3604, N3603, 
        N3602, N3601, N3600, N3599, N3598, N3597, N3596, N3595, N3594, N3593, 
        N3592, N3591}), .B({n1845, n1845, n1845, n1845, n1845, n1845, n1845, 
        n1841, n1839, n1837, n1835, n1833, n1831, n1829, n1827, n1825, n1823, 
        n1821, n1657, n1652, n1651, n1650, n1649, s0[7], 1'b0}), .CI(1'b0), 
        .SUM({N4015, N4014, N4013, N4012, N4011, N4010, N4009, N4008, N4007, 
        N4006, N4005, N4004, N4003, N4002, N4001, N4000, N3999, N3998, N3997, 
        N3996, N3995, N3994, N3993, N3992, N3991}) );
  IIR_DW01_add_83 add_3_root_sub_0_root_sub_205_16 ( .A({n1863, n1862, n1862, 
        n1862, n1862, n1863, n1862, n1862, n1862, n1842, n1840, n1838, n1836, 
        n1834, n1832, n1830, n1828, n1826, n1824, n1822, n1657, n1652, n1651, 
        n1650, n1649}), .B({n1863, n1844, n1844, n1844, n1844, n1844, n1844, 
        n1844, n1844, n1844, n1844, n1844, n1845, n1845, n1845, n1845, n1845, 
        n1841, n1839, n1837, n1835, n1833, n1831, n1829, n1827}), .CI(1'b0), 
        .SUM({N4215, N4214, N4213, N4212, N4211, N4210, N4209, N4208, N4207, 
        N4206, N4205, N4204, N4203, N4202, N4201, N4200, N4199, N4198, N4197, 
        N4196, N4195, N4194, N4193, N4192, N4191}) );
  IIR_DW01_add_82 add_2_root_sub_0_root_sub_205_16 ( .A({N4015, N4014, N4013, 
        N4012, N4011, N4010, N4009, N4008, N4007, N4006, N4005, N4004, N4003, 
        N4002, N4001, N4000, N3999, N3998, N3997, N3996, N3995, N3994, N3993, 
        N3992, N3991}), .B({N1062, N1061, N1060, N1059, N1058, N1057, N1056, 
        N1055, N1054, N1053, N1052, N1051, N1050, N1049, N1048, N1047, N1046, 
        N1045, N1044, N1043, N1042, N1041, N1040, N1039, N1038}), .CI(1'b0), 
        .SUM({N4315, N4314, N4313, N4312, N4311, N4310, N4309, N4308, N4307, 
        N4306, N4305, N4304, N4303, N4302, N4301, N4300, N4299, N4298, N4297, 
        N4296, N4295, N4294, N4293, N4292, N4291}) );
  IIR_DW01_add_81 add_1_root_sub_0_root_sub_205_16 ( .A({N3190, N3189, N3188, 
        N3187, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, 
        N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170}), 
        .B({N4215, N4214, N4213, N4212, N4211, N4210, N4209, N4208, N4207, 
        N4206, N4205, N4204, N4203, N4202, N4201, N4200, N4199, N4198, N4197, 
        N4196, N4195, N4194, N4193, N4192, N4191}), .CI(1'b0), .SUM({N4365, 
        N4364, N4363, N4362, N4361, N4360, N4359, N4358, N4357, N4356, N4355, 
        N4354, N4353, N4352, N4351, N4350, N4349, N4348, N4347, N4346, N4345, 
        N4344, N4343, N4342, N4341}) );
  IIR_DW01_add_80 add_0_root_sub_0_root_sub_205_16 ( .A({N4365, N4364, N4363, 
        N4362, N4361, N4360, N4359, N4358, N4357, N4356, N4355, N4354, N4353, 
        N4352, N4351, N4350, N4349, N4348, N4347, N4346, N4345, N4344, N4343, 
        N4342, N4341}), .B({N4315, N4314, N4313, N4312, N4311, N4310, N4309, 
        N4308, N4307, N4306, N4305, N4304, N4303, N4302, N4301, N4300, N4299, 
        N4298, N4297, N4296, N4295, N4294, N4293, N4292, N4291}), .CI(1'b0), 
        .SUM({N4390, N4389, N4388, N4387, N4386, N4385, N4384, N4383, N4382, 
        N4381, N4380, N4379, N4378, N4377, N4376, N4375, N4374, N4373, N4372, 
        N4371, N4370, N4369, N4368, N4367, N4366}) );
  IIR_DW01_add_188 add_43_root_add_176_41 ( .A({n1748, n1745, n1746, n1746, 
        n1746, n1746, n1746, n1746, n1746, n1746, n1620, n1619, n1617, n1612, 
        n1605, n1600, n1596, n1590, n1585, n1584, n1583, n1582}), .B({n1748, 
        n1744, n1743, n1743, n1744, n1744, n1743, n1744, n1744, n1743, n1744, 
        n1620, n1619, n1617, n1612, n1605, n1600, n1596, n1590, n1585, n1584, 
        n1583}), .CI(1'b0), .SUM({N1692, N1691, N1690, N1689, N1688, N1687, 
        N1686, N1685, N1684, N1683, N1682, N1681, N1680, N1679, N1678, N1677, 
        N1676, N1675, N1674, N1673, N1672, N1671}) );
  IIR_DW01_add_187 add_42_root_add_176_41 ( .A({n1746, n1744, n1745, n1744, 
        n1745, n1744, n1744, n1745, n1744, n1744, n1745, n1744, n1745, n1745, 
        n1745, n1620, n1619, n1617, n1612, n1605, n1600, n1596, n1590}), .B({
        n1776, n1776, n1776, n1776, n1775, n1763, n1761, n1759, n1757, n1755, 
        n1753, n1751, n1749, n1633, n1630, n1625, n1624, n1623, n1622, n1621, 
        s2[8:7], 1'b0}), .CI(1'b0), .SUM({N1715, N1714, N1713, N1712, N1711, 
        N1710, N1709, N1708, N1707, N1706, N1705, N1704, N1703, N1702, N1701, 
        N1700, N1699, N1698, N1697, N1696, N1695, N1694, N1693}) );
  IIR_DW01_add_186 add_41_root_add_176_41 ( .A({n1783, n1782, n1782, n1782, 
        n1782, n1782, n1782, n1782, n1764, n1762, n1760, n1758, n1756, n1754, 
        n1752, n1750, n1633, n1630, n1625, n1624, n1623, n1622, n1621, s2[8]}), 
        .B({n1783, n1777, n1776, n1777, n1777, n1777, n1777, n1776, n1777, 
        n1776, n1763, n1761, n1759, n1757, n1755, n1753, n1751, n1749, n1633, 
        n1630, n1625, n1624, n1623, n1622}), .CI(1'b0), .SUM({N1739, N1738, 
        N1737, N1736, N1735, N1734, N1733, N1732, N1731, N1730, N1729, N1728, 
        N1727, N1726, N1725, N1724, N1723, N1722, N1721, N1720, N1719, N1718, 
        N1717, N1716}) );
  IIR_DW01_add_185 add_22_root_add_0_root_add_176_41 ( .A({n1820, n1819, n1819, 
        n1819, n1819, n1819, n1819, n1819, n1819, n1801, n1799, n1797, n1795, 
        n1793, n1791, n1789, n1787, n1785, n1646, n1643, n1640, n1639, n1638, 
        n1637, n1636}), .B({n1820, n1810, n1810, n1810, n1810, n1810, n1800, 
        n1798, n1796, n1794, n1792, n1790, n1788, n1786, n1784, n1646, n1643, 
        n1640, n1639, n1638, n1637, n1636, s1[7], 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N1814, N1813, N1812, N1811, N1810, N1809, N1808, N1807, N1806, 
        N1805, N1804, N1803, N1802, N1801, N1800, N1799, N1798, N1797, N1796, 
        N1795, N1794, N1793, N1792, N1791, N1790}) );
  IIR_DW01_add_184 add_26_root_add_0_root_add_176_41 ( .A({ss0[24], n1709, 
        n1322, n1333, n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, 
        n1314, n1325, n1318, n1519, n1514, n1509, n1506, n1503, n1500, n1497, 
        n1495, ss0[1:0]}), .B({ss0[24], n1712, n1712, n1712, n1711, n1708, 
        n1322, n1333, n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, 
        n1314, n1325, n1318, n1518, n1514, n1510, n1506, n1503, n1500}), .CI(
        1'b0), .SUM({N1839, N1838, N1837, N1836, N1835, N1834, N1833, N1832, 
        N1831, N1830, N1829, N1828, N1827, N1826, N1825, N1824, N1823, N1822, 
        N1821, N1820, N1819, N1818, N1817, N1816, N1815}) );
  IIR_DW01_add_183 add_34_root_add_0_root_add_176_41 ( .A({n1564, n1561, n1558, 
        n1555, n1552, n1549, n1546, n1543, n1540, n1537, n1534, n1530, n1528, 
        n1526, n1522, n1517, n1512, n1508, n1505, n1502, n1499, ss2[2:0], 1'b0}), .B({n1708, n1322, n1333, n1331, n1330, n1329, n1328, n1326, n1324, n1323, 
        n1327, n1314, n1325, n1318, n1518, n1513, n1509, n1506, n1503, n1500, 
        n1497, n1495, ss0[1:0], 1'b0}), .CI(1'b0), .SUM({N2014, N2013, N2012, 
        N2011, N2010, N2009, N2008, N2007, N2006, N2005, N2004, N2003, N2002, 
        N2001, N2000, N1999, N1998, N1997, N1996, N1995, N1994, N1993, N1992, 
        N1991, SYNOPSYS_UNCONNECTED__4}) );
  IIR_DW01_sub_24 sub_33_root_add_0_root_add_176_41 ( .A({N2014, N2013, N2012, 
        N2011, N2010, N2009, N2008, N2007, N2006, N2005, N2004, N2003, N2002, 
        N2001, N2000, N1999, N1998, N1997, N1996, N1995, N1994, N1993, N1992, 
        N1991, 1'b0}), .B({n1321, n1317, n1312, n1335, n1320, n1311, n1308, 
        n1315, n1307, n1309, n1332, n1319, n1525, n1521, n1516, n1511, n1507, 
        n1504, n1501, n1498, n1496, n1494, ss1[0], 1'b0, 1'b0}), .CI(1'b0), 
        .DIFF({N1989, N1988, N1987, N1986, N1985, N1984, N1983, N1982, N1981, 
        N1980, N1979, N1978, N1977, N1976, N1975, N1974, N1973, N1972, N1971, 
        N1970, N1969, N1968, N1967, N1966, SYNOPSYS_UNCONNECTED__5}) );
  IIR_DW01_add_182 add_32_root_add_0_root_add_176_41 ( .A({N1989, N1988, N1987, 
        N1986, N1985, N1984, N1983, N1982, N1981, N1980, N1979, N1978, N1977, 
        N1976, N1975, N1974, N1973, N1972, N1971, N1970, N1969, N1968, N1967, 
        N1966, 1'b0}), .B({n1467, n1466, n1466, n1564, n1560, n1557, n1554, 
        n1551, n1548, n1545, n1542, n1539, n1536, n1533, n1530, n1528, n1526, 
        n1522, n1517, n1512, n1508, n1505, n1502, n1499, ss2[2]}), .CI(1'b0), 
        .SUM({N2389, N2388, N2387, N2386, N2385, N2384, N2383, N2382, N2381, 
        N2380, N2379, N2378, N2377, N2376, N2375, N2374, N2373, N2372, N2371, 
        N2370, N2369, N2368, N2367, N2366, N2365}) );
  IIR_DW01_add_181 add_31_root_add_0_root_add_176_41 ( .A({N2389, N2388, N2387, 
        N2386, N2385, N2384, N2383, N2382, N2381, N2380, N2379, N2378, N2377, 
        N2376, N2375, N2374, N2373, N2372, N2371, N2370, N2369, N2368, N2367, 
        N2366, N2365}), .B({n1466, n1467, n1563, n1560, n1557, n1554, n1551, 
        n1548, n1545, n1542, n1539, n1536, n1533, n1531, n1528, n1526, n1522, 
        n1517, n1512, n1508, n1505, n1502, n1499, ss2[2:1]}), .CI(1'b0), .SUM(
        {N2364, N2363, N2362, N2361, N2360, N2359, N2358, N2357, N2356, N2355, 
        N2354, N2353, N2352, N2351, N2350, N2349, N2348, N2347, N2346, N2345, 
        N2344, N2343, N2342, N2341, N2340}) );
  IIR_DW01_add_180 add_30_root_add_0_root_add_176_41 ( .A({N2364, N2363, N2362, 
        N2361, N2360, N2359, N2358, N2357, N2356, N2355, N2354, N2353, N2352, 
        N2351, N2350, N2349, N2348, N2347, N2346, N2345, N2344, N2343, N2342, 
        N2341, N2340}), .B({n1466, n1467, n1467, n1467, n1467, n1466, n1466, 
        n1467, n1564, n1560, n1557, n1554, n1551, n1548, n1545, n1542, n1539, 
        n1536, n1533, n1530, n1528, n1526, n1522, n1517, n1512}), .CI(1'b0), 
        .SUM({N2589, N2588, N2587, N2586, N2585, N2584, N2583, N2582, N2581, 
        N2580, N2579, N2578, N2577, N2576, N2575, N2574, N2573, N2572, N2571, 
        N2570, N2569, N2568, N2567, N2566, N2565}) );
  IIR_DW01_add_179 add_29_root_add_0_root_add_176_41 ( .A({n1467, n1467, n1467, 
        n1467, n1470, n1467, n1467, n1469, n1467, n1466, n1466, n1470, n1469, 
        n1465, n1470, n1563, n1561, n1558, n1555, n1552, n1549, n1546, n1543, 
        n1540, n1537}), .B({n1467, n1467, n1465, n1465, n1467, n1467, n1467, 
        n1467, n1467, n1467, n1467, n1467, n1467, n1466, n1563, n1560, n1557, 
        n1554, n1551, n1548, n1545, n1542, n1539, n1536, n1533}), .CI(1'b0), 
        .SUM({N1914, N1913, N1912, N1911, N1910, N1909, N1908, N1907, N1906, 
        N1905, N1904, N1903, N1902, N1901, N1900, N1899, N1898, N1897, N1896, 
        N1895, N1894, N1893, N1892, N1891, N1890}) );
  IIR_DW01_add_178 add_28_root_add_0_root_add_176_41 ( .A({N2589, N2588, N2587, 
        N2586, N2585, N2584, N2583, N2582, N2581, N2580, N2579, N2578, N2577, 
        N2576, N2575, N2574, N2573, N2572, N2571, N2570, N2569, N2568, N2567, 
        N2566, N2565}), .B({N1914, N1913, N1912, N1911, N1910, N1909, N1908, 
        N1907, N1906, N1905, N1904, N1903, N1902, N1901, N1900, N1899, N1898, 
        N1897, N1896, N1895, N1894, N1893, N1892, N1891, N1890}), .CI(1'b0), 
        .SUM({N1889, N1888, N1887, N1886, N1885, N1884, N1883, N1882, N1881, 
        N1880, N1879, N1878, N1877, N1876, N1875, N1874, N1873, N1872, N1871, 
        N1870, N1869, N1868, N1867, N1866, N1865}) );
  IIR_DW01_add_177 add_8_root_add_0_root_add_176_41 ( .A({N1739, N1739, N1738, 
        N1737, N1736, N1735, N1734, N1733, N1732, N1731, N1730, N1729, N1728, 
        N1727, N1726, N1725, N1724, N1723, N1722, N1721, N1720, N1719, N1718, 
        N1717, N1716}), .B({N1789, N1788, N1787, N1786, N1785, N1784, N1783, 
        N1782, N1781, N1780, N1779, N1778, N1777, N1776, N1775, N1774, N1773, 
        N1772, N1771, N1770, N1769, N1768, N1767, N1766, N1765}), .CI(1'b0), 
        .SUM({N2114, N2113, N2112, N2111, N2110, N2109, N2108, N2107, N2106, 
        N2105, N2104, N2103, N2102, N2101, N2100, N2099, N2098, N2097, N2096, 
        N2095, N2094, N2093, N2092, N2091, N2090}) );
  IIR_DW01_add_176 add_23_root_add_0_root_add_176_41 ( .A({n1473, n1482, n1482, 
        n1481, n1482, n1482, n1480, n1481, n1482, n1480, n1481, n1336, n1321, 
        n1317, n1312, n1335, n1320, n1311, n1308, n1315, n1307, n1309, n1332, 
        n1319, n1525}), .B({n1473, n1473, n1701, n1475, n1473, n1701, n1475, 
        n1701, n1701, n1475, n1473, n1473, n1475, n1336, n1321, n1317, n1312, 
        n1335, n1320, n1311, n1308, n1315, n1307, n1309, n1332}), .CI(1'b0), 
        .SUM({N2689, N2688, N2687, N2686, N2685, N2684, N2683, N2682, N2681, 
        N2680, N2679, N2678, N2677, N2676, N2675, N2674, N2673, N2672, N2671, 
        N2670, N2669, N2668, N2667, N2666, N2665}) );
  IIR_DW01_sub_23 sub_16_root_add_0_root_add_176_41 ( .A({N2139, N2138, N2137, 
        N2136, N2135, N2134, N2133, N2132, N2131, N2130, N2129, N2128, N2127, 
        N2126, N2125, N2124, N2123, N2122, N2121, N2120, N2119, N2118, N2117, 
        N2116, N2115}), .B({N2689, N2688, N2687, N2686, N2685, N2684, N2683, 
        N2682, N2681, N2680, N2679, N2678, N2677, N2676, N2675, N2674, N2673, 
        N2672, N2671, N2670, N2669, N2668, N2667, N2666, N2665}), .CI(1'b0), 
        .DIFF({N2514, N2513, N2512, N2511, N2510, N2509, N2508, N2507, N2506, 
        N2505, N2504, N2503, N2502, N2501, N2500, N2499, N2498, N2497, N2496, 
        N2495, N2494, N2493, N2492, N2491, N2490}) );
  IIR_DW01_add_175 add_17_root_add_0_root_add_176_41 ( .A({N1649, N1649, N1649, 
        N1649, N1649, N1649, N1648, N1647, N1646, N1645, N1644, N1643, N1642, 
        N1641, N1640, N1639, N1638, N1637, N1636, N1635, N1634, N1633, N1632, 
        N1631, N1630}), .B({N1670, N1670, N1670, N1670, N1670, N1669, N1668, 
        N1667, N1666, N1665, N1664, N1663, N1662, N1661, N1660, N1659, N1658, 
        N1657, N1656, N1655, N1654, N1653, N1652, N1651, N1650}), .CI(1'b0), 
        .SUM({N2214, N2213, N2212, N2211, N2210, N2209, N2208, N2207, N2206, 
        N2205, N2204, N2203, N2202, N2201, N2200, N2199, N2198, N2197, N2196, 
        N2195, N2194, N2193, N2192, N2191, N2190}) );
  IIR_DW01_add_174 add_18_root_add_0_root_add_176_41 ( .A({N1839, N1838, N1837, 
        N1836, N1835, N1834, N1833, N1832, N1831, N1830, N1829, N1828, N1827, 
        N1826, N1825, N1824, N1823, N1822, N1821, N1820, N1819, N1818, N1817, 
        N1816, N1815}), .B({N1692, N1692, N1692, N1692, N1691, N1690, N1689, 
        N1688, N1687, N1686, N1685, N1684, N1683, N1682, N1681, N1680, N1679, 
        N1678, N1677, N1676, N1675, N1674, N1673, N1672, N1671}), .CI(1'b0), 
        .SUM({N2239, N2238, N2237, N2236, N2235, N2234, N2233, N2232, N2231, 
        N2230, N2229, N2228, N2227, N2226, N2225, N2224, N2223, N2222, N2221, 
        N2220, N2219, N2218, N2217, N2216, N2215}) );
  IIR_DW01_add_173 add_14_root_add_0_root_add_176_41 ( .A({N2214, N2213, N2212, 
        N2211, N2210, N2209, N2208, N2207, N2206, N2205, N2204, N2203, N2202, 
        N2201, N2200, N2199, N2198, N2197, N2196, N2195, N2194, N2193, N2192, 
        N2191, N2190}), .B({N2239, N2238, N2237, N2236, N2235, N2234, N2233, 
        N2232, N2231, N2230, N2229, N2228, N2227, N2226, N2225, N2224, N2223, 
        N2222, N2221, N2220, N2219, N2218, N2217, N2216, N2215}), .CI(1'b0), 
        .SUM({N2739, N2738, N2737, N2736, N2735, N2734, N2733, N2732, N2731, 
        N2730, N2729, N2728, N2727, N2726, N2725, N2724, N2723, N2722, N2721, 
        N2720, N2719, N2718, N2717, N2716, N2715}) );
  IIR_DW01_add_172 add_13_root_add_0_root_add_176_41 ( .A({N2514, N2513, N2512, 
        N2511, N2510, N2509, N2508, N2507, N2506, N2505, N2504, N2503, N2502, 
        N2501, N2500, N2499, N2498, N2497, N2496, N2495, N2494, N2493, N2492, 
        N2491, N2490}), .B({N2739, N2738, N2737, N2736, N2735, N2734, N2733, 
        N2732, N2731, N2730, N2729, N2728, N2727, N2726, N2725, N2724, N2723, 
        N2722, N2721, N2720, N2719, N2718, N2717, N2716, N2715}), .CI(1'b0), 
        .SUM({N2189, N2188, N2187, N2186, N2185, N2184, N2183, N2182, N2181, 
        N2180, N2179, N2178, N2177, N2176, N2175, N2174, N2173, N2172, N2171, 
        N2170, N2169, N2168, N2167, N2166, N2165}) );
  IIR_DW01_add_171 add_24_root_add_0_root_add_176_41 ( .A({n1473, n1482, n1480, 
        n1481, n1480, n1480, n1481, n1482, n1336, n1321, n1317, n1312, n1335, 
        n1320, n1311, n1308, n1315, n1307, n1309, n1332, n1319, n1525, n1520, 
        n1516, n1511}), .B({n1473, n1701, n1701, n1701, n1481, n1701, n1475, 
        n1701, n1701, n1475, n1336, n1321, n1317, n1312, n1335, n1320, n1311, 
        n1308, n1315, n1307, n1309, n1332, n1319, n1524, n1520}), .CI(1'b0), 
        .SUM({N2564, N2563, N2562, N2561, N2560, N2559, N2558, N2557, N2556, 
        N2555, N2554, N2553, N2552, N2551, N2550, N2549, N2548, N2547, N2546, 
        N2545, N2544, N2543, N2542, N2541, N2540}) );
  IIR_DW01_sub_22 sub_20_root_add_0_root_add_176_41 ( .A({n1818, n1818, n1817, 
        n1818, n1818, n1818, n1818, n1818, n1818, n1818, n1818, n1818, n1818, 
        n1818, n1819, n1819, n1819, n1801, n1799, n1797, n1795, n1793, n1791, 
        n1789, n1787}), .B({N2564, N2563, N2562, N2561, N2560, N2559, N2558, 
        N2557, N2556, N2555, N2554, N2553, N2552, N2551, N2550, N2549, N2548, 
        N2547, N2546, N2545, N2544, N2543, N2542, N2541, N2540}), .CI(1'b0), 
        .DIFF({N2264, N2263, N2262, N2261, N2260, N2259, N2258, N2257, N2256, 
        N2255, N2254, N2253, N2252, N2251, N2250, N2249, N2248, N2247, N2246, 
        N2245, N2244, N2243, N2242, N2241, N2240}) );
  IIR_DW01_add_170 add_12_root_add_0_root_add_176_41 ( .A({N2189, N2188, N2187, 
        N2186, N2185, N2184, N2183, N2182, N2181, N2180, N2179, N2178, N2177, 
        N2176, N2175, N2174, N2173, N2172, N2171, N2170, N2169, N2168, N2167, 
        N2166, N2165}), .B({N2264, N2263, N2262, N2261, N2260, N2259, N2258, 
        N2257, N2256, N2255, N2254, N2253, N2252, N2251, N2250, N2249, N2248, 
        N2247, N2246, N2245, N2244, N2243, N2242, N2241, N2240}), .CI(1'b0), 
        .SUM({N2164, N2163, N2162, N2161, N2160, N2159, N2158, N2157, N2156, 
        N2155, N2154, N2153, N2152, N2151, N2150, N2149, N2148, N2147, N2146, 
        N2145, N2144, N2143, N2142, N2141, N2140}) );
  IIR_DW01_add_169 add_9_root_add_0_root_add_176_41 ( .A({N1715, N1715, N1715, 
        N1714, N1713, N1712, N1711, N1710, N1709, N1708, N1707, N1706, N1705, 
        N1704, N1703, N1702, N1701, N1700, N1699, N1698, N1697, N1696, N1695, 
        N1694, N1693}), .B({N2164, N2163, N2162, N2161, N2160, N2159, N2158, 
        N2157, N2156, N2155, N2154, N2153, N2152, N2151, N2150, N2149, N2148, 
        N2147, N2146, N2145, N2144, N2143, N2142, N2141, N2140}), .CI(1'b0), 
        .SUM({N2639, N2638, N2637, N2636, N2635, N2634, N2633, N2632, N2631, 
        N2630, N2629, N2628, N2627, N2626, N2625, N2624, N2623, N2622, N2621, 
        N2620, N2619, N2618, N2617, N2616, N2615}) );
  IIR_DW01_add_168 add_25_root_add_0_root_add_176_41 ( .A({ss0[24], ss0[24], 
        ss0[24], n1710, ss0[24], ss0[24], n1709, n1322, n1333, n1331, n1330, 
        n1329, n1328, n1326, n1324, n1323, n1327, n1314, n1325, n1318, n1519, 
        n1513, n1510, n1506, n1503}), .B({ss0[24], n1712, n1712, n1708, n1322, 
        n1333, n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, n1314, 
        n1325, n1318, n1518, n1514, n1510, n1506, n1503, n1500, n1497, n1495}), 
        .CI(1'b0), .SUM({N2314, N2313, N2312, N2311, N2310, N2309, N2308, 
        N2307, N2306, N2305, N2304, N2303, N2302, N2301, N2300, N2299, N2298, 
        N2297, N2296, N2295, N2294, N2293, N2292, N2291, N2290}) );
  IIR_DW01_add_167 add_21_root_add_0_root_add_176_41 ( .A({n1820, n1818, n1818, 
        n1818, n1819, n1818, n1818, n1818, n1818, n1818, n1801, n1799, n1797, 
        n1795, n1793, n1791, n1789, n1787, n1785, n1646, n1643, n1640, n1639, 
        n1638, n1637}), .B({n1820, n1815, n1815, n1815, n1815, n1815, n1815, 
        n1815, n1815, n1815, n1815, n1811, n1800, n1798, n1796, n1794, n1792, 
        n1790, n1788, n1786, n1784, n1646, n1643, n1640, n1639}), .CI(1'b0), 
        .SUM({N2289, N2288, N2287, N2286, N2285, N2284, N2283, N2282, N2281, 
        N2280, N2279, N2278, N2277, N2276, N2275, N2274, N2273, N2272, N2271, 
        N2270, N2269, N2268, N2267, N2266, N2265}) );
  IIR_DW01_add_166 add_15_root_add_0_root_add_176_41 ( .A({N2314, N2313, N2312, 
        N2311, N2310, N2309, N2308, N2307, N2306, N2305, N2304, N2303, N2302, 
        N2301, N2300, N2299, N2298, N2297, N2296, N2295, N2294, N2293, N2292, 
        N2291, N2290}), .B({N2289, N2288, N2287, N2286, N2285, N2284, N2283, 
        N2282, N2281, N2280, N2279, N2278, N2277, N2276, N2275, N2274, N2273, 
        N2272, N2271, N2270, N2269, N2268, N2267, N2266, N2265}), .CI(1'b0), 
        .SUM({N2664, N2663, N2662, N2661, N2660, N2659, N2658, N2657, N2656, 
        N2655, N2654, N2653, N2652, N2651, N2650, N2649, N2648, N2647, N2646, 
        N2645, N2644, N2643, N2642, N2641, N2640}) );
  IIR_DW01_add_165 add_27_root_add_0_root_add_176_41 ( .A({N1889, N1888, N1887, 
        N1886, N1885, N1884, N1883, N1882, N1881, N1880, N1879, N1878, N1877, 
        N1876, N1875, N1874, N1873, N1872, N1871, N1870, N1869, N1868, N1867, 
        N1866, N1865}), .B({n1710, n1710, n1710, n1710, n1710, n1710, n1710, 
        n1708, n1322, n1333, n1331, n1330, n1329, n1328, n1326, n1324, n1323, 
        n1327, n1314, n1325, n1318, n1518, n1513, n1509, n1506}), .CI(1'b0), 
        .SUM({N2339, N2338, N2337, N2336, N2335, N2334, N2333, N2332, N2331, 
        N2330, N2329, N2328, N2327, N2326, N2325, N2324, N2323, N2322, N2321, 
        N2320, N2319, N2318, N2317, N2316, N2315}) );
  IIR_DW01_add_164 add_19_root_add_0_root_add_176_41 ( .A({N1814, N1813, N1812, 
        N1811, N1810, N1809, N1808, N1807, N1806, N1805, N1804, N1803, N1802, 
        N1801, N1800, N1799, N1798, N1797, N1796, N1795, N1794, N1793, N1792, 
        N1791, N1790}), .B({N2339, N2338, N2337, N2336, N2335, N2334, N2333, 
        N2332, N2331, N2330, N2329, N2328, N2327, N2326, N2325, N2324, N2323, 
        N2322, N2321, N2320, N2319, N2318, N2317, N2316, N2315}), .CI(1'b0), 
        .SUM({N2539, N2538, N2537, N2536, N2535, N2534, N2533, N2532, N2531, 
        N2530, N2529, N2528, N2527, N2526, N2525, N2524, N2523, N2522, N2521, 
        N2520, N2519, N2518, N2517, N2516, N2515}) );
  IIR_DW01_add_163 add_11_root_add_0_root_add_176_41 ( .A({N1864, N1863, N1862, 
        N1861, N1860, N1859, N1858, N1857, N1856, N1855, N1854, N1853, N1852, 
        N1851, N1850, N1849, N1848, N1847, N1846, N1845, N1844, N1843, N1842, 
        N1841, N1840}), .B({N2539, N2538, N2537, N2536, N2535, N2534, N2533, 
        N2532, N2531, N2530, N2529, N2528, N2527, N2526, N2525, N2524, N2523, 
        N2522, N2521, N2520, N2519, N2518, N2517, N2516, N2515}), .CI(1'b0), 
        .SUM({N2489, N2488, N2487, N2486, N2485, N2484, N2483, N2482, N2481, 
        N2480, N2479, N2478, N2477, N2476, N2475, N2474, N2473, N2472, N2471, 
        N2470, N2469, N2468, N2467, N2466, N2465}) );
  IIR_DW01_add_162 add_10_root_add_0_root_add_176_41 ( .A({N2664, N2663, N2662, 
        N2661, N2660, N2659, N2658, N2657, N2656, N2655, N2654, N2653, N2652, 
        N2651, N2650, N2649, N2648, N2647, N2646, N2645, N2644, N2643, N2642, 
        N2641, N2640}), .B({N2489, N2488, N2487, N2486, N2485, N2484, N2483, 
        N2482, N2481, N2480, N2479, N2478, N2477, N2476, N2475, N2474, N2473, 
        N2472, N2471, N2470, N2469, N2468, N2467, N2466, N2465}), .CI(1'b0), 
        .SUM({N2464, N2463, N2462, N2461, N2460, N2459, N2458, N2457, N2456, 
        N2455, N2454, N2453, N2452, N2451, N2450, N2449, N2448, N2447, N2446, 
        N2445, N2444, N2443, N2442, N2441, N2440}) );
  IIR_DW01_add_161 add_7_root_add_0_root_add_176_41 ( .A({N2464, N2463, N2462, 
        N2461, N2460, N2459, N2458, N2457, N2456, N2455, N2454, N2453, N2452, 
        N2451, N2450, N2449, N2448, N2447, N2446, N2445, N2444, N2443, N2442, 
        N2441, N2440}), .B({N1764, N1763, N1762, N1761, N1760, N1759, N1758, 
        N1757, N1756, N1755, N1754, N1753, N1752, N1751, N1750, N1749, N1748, 
        N1747, N1746, N1745, N1744, N1743, N1742, N1741, N1740}), .CI(1'b0), 
        .SUM({N2089, N2088, N2087, N2086, N2085, N2084, N2083, N2082, N2081, 
        N2080, N2079, N2078, N2077, N2076, N2075, N2074, N2073, N2072, N2071, 
        N2070, N2069, N2068, N2067, N2066, N2065}) );
  IIR_DW01_add_160 add_6_root_add_0_root_add_176_41 ( .A({N2639, N2638, N2637, 
        N2636, N2635, N2634, N2633, N2632, N2631, N2630, N2629, N2628, N2627, 
        N2626, N2625, N2624, N2623, N2622, N2621, N2620, N2619, N2618, N2617, 
        N2616, N2615}), .B({N2089, N2088, N2087, N2086, N2085, N2084, N2083, 
        N2082, N2081, N2080, N2079, N2078, N2077, N2076, N2075, N2074, N2073, 
        N2072, N2071, N2070, N2069, N2068, N2067, N2066, N2065}), .CI(1'b0), 
        .SUM({N2439, N2438, N2437, N2436, N2435, N2434, N2433, N2432, N2431, 
        N2430, N2429, N2428, N2427, N2426, N2425, N2424, N2423, N2422, N2421, 
        N2420, N2419, N2418, N2417, N2416, N2415}) );
  IIR_DW01_add_159 add_5_root_add_0_root_add_176_41 ( .A({N2114, N2113, N2112, 
        N2111, N2110, N2109, N2108, N2107, N2106, N2105, N2104, N2103, N2102, 
        N2101, N2100, N2099, N2098, N2097, N2096, N2095, N2094, N2093, N2092, 
        N2091, N2090}), .B({N2439, N2438, N2437, N2436, N2435, N2434, N2433, 
        N2432, N2431, N2430, N2429, N2428, N2427, N2426, N2425, N2424, N2423, 
        N2422, N2421, N2420, N2419, N2418, N2417, N2416, N2415}), .CI(1'b0), 
        .SUM({N2064, N2063, N2062, N2061, N2060, N2059, N2058, N2057, N2056, 
        N2055, N2054, N2053, N2052, N2051, N2050, N2049, N2048, N2047, N2046, 
        N2045, N2044, N2043, N2042, N2041, N2040}) );
  IIR_DW01_add_158 add_4_root_add_0_root_add_176_41 ( .A({N2064, N2063, N2062, 
        N2061, N2060, N2059, N2058, N2057, N2056, N2055, N2054, N2053, N2052, 
        N2051, N2050, N2049, N2048, N2047, N2046, N2045, N2044, N2043, N2042, 
        N2041, N2040}), .B({n1856, n1843, n1843, n1843, n1843, n1843, n1841, 
        n1839, n1837, n1835, n1833, n1831, n1829, n1827, n1825, n1823, n1821, 
        n1657, n1652, n1651, n1650, n1649, s0[7], 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N2039, N2038, N2037, N2036, N2035, N2034, N2033, N2032, N2031, 
        N2030, N2029, N2028, N2027, N2026, N2025, N2024, N2023, N2022, N2021, 
        N2020, N2019, N2018, N2017, N2016, N2015}) );
  IIR_DW01_add_157 add_3_root_add_0_root_add_176_41 ( .A({n1863, n1862, n1862, 
        n1862, n1862, n1862, n1862, n1862, n1862, n1842, n1840, n1838, n1836, 
        n1834, n1832, n1830, n1828, n1826, n1824, n1822, n1657, n1652, n1651, 
        n1650, n1649}), .B({n1863, n1858, n1858, n1847, n1843, n1843, n1843, 
        n1843, n1843, n1843, n1842, n1840, n1838, n1836, n1834, n1832, n1830, 
        n1828, n1825, n1823, n1821, n1657, n1652, n1651, n1650}), .CI(1'b0), 
        .SUM({N2414, N2413, N2412, N2411, N2410, N2409, N2408, N2407, N2406, 
        N2405, N2404, N2403, N2402, N2401, N2400, N2399, N2398, N2397, N2396, 
        N2395, N2394, N2393, N2392, N2391, N2390}) );
  IIR_DW01_add_156 add_2_root_add_0_root_add_176_41 ( .A({N2039, N2038, N2037, 
        N2036, N2035, N2034, N2033, N2032, N2031, N2030, N2029, N2028, N2027, 
        N2026, N2025, N2024, N2023, N2022, N2021, N2020, N2019, N2018, N2017, 
        N2016, N2015}), .B({N2414, N2413, N2412, N2411, N2410, N2409, N2408, 
        N2407, N2406, N2405, N2404, N2403, N2402, N2401, N2400, N2399, N2398, 
        N2397, N2396, N2395, N2394, N2393, N2392, N2391, N2390}), .CI(1'b0), 
        .SUM({N2614, N2613, N2612, N2611, N2610, N2609, N2608, N2607, N2606, 
        N2605, N2604, N2603, N2602, N2601, N2600, N2599, N2598, N2597, N2596, 
        N2595, N2594, N2593, N2592, N2591, N2590}) );
  IIR_DW01_add_155 add_1_root_add_0_root_add_176_41 ( .A({N460, N459, N458, 
        N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, 
        N445, N444, N443, N442, N441, N440, N439, N438, N437, N436}), .B({N485, 
        N484, N483, N482, N481, N480, N479, N478, N477, N476, N475, N474, N473, 
        N472, N471, N470, N469, N468, N467, N466, N465, N464, N463, N462, N461}), .CI(1'b0), .SUM({N2714, N2713, N2712, N2711, N2710, N2709, N2708, N2707, 
        N2706, N2705, N2704, N2703, N2702, N2701, N2700, N2699, N2698, N2697, 
        N2696, N2695, N2694, N2693, N2692, N2691, N2690}) );
  IIR_DW01_add_154 add_0_root_add_0_root_add_176_41 ( .A({N2614, N2613, N2612, 
        N2611, N2610, N2609, N2608, N2607, N2606, N2605, N2604, N2603, N2602, 
        N2601, N2600, N2599, N2598, N2597, N2596, N2595, N2594, N2593, N2592, 
        N2591, N2590}), .B({N2714, N2713, N2712, N2711, N2710, N2709, N2708, 
        N2707, N2706, N2705, N2704, N2703, N2702, N2701, N2700, N2699, N2698, 
        N2697, N2696, N2695, N2694, N2693, N2692, N2691, N2690}), .CI(1'b0), 
        .SUM({N2764, N2763, N2762, N2761, N2760, N2759, N2758, N2757, N2756, 
        N2755, N2754, N2753, N2752, N2751, N2750, N2749, N2748, N2747, N2746, 
        N2745, N2744, N2743, N2742, N2741, N2740}) );
  IIR_DW01_add_203 add_16_root_add_124_19 ( .A({n1820, n1817, n1818, n1818, 
        n1818, n1818, n1818, n1818, n1818, n1818, n1801, n1799, n1797, n1795, 
        n1793, n1791, n1789, n1787, n1785, n1646, n1643, n1640}), .B({n1820, 
        n1813, n1813, n1813, n1813, n1813, n1813, n1813, n1813, n1814, n1814, 
        n1800, n1798, n1796, n1794, n1792, n1790, n1788, n1786, n1784, n1646, 
        n1643}), .CI(1'b0), .SUM({N388, N387, N386, N385, N384, N383, N382, 
        N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, 
        N369, N368, N367}) );
  IIR_DW01_add_202 add_14_root_add_124_19 ( .A({n1863, n1862, n1862, n1862, 
        n1862, n1862, n1862, n1862, n1842, n1840, n1838, n1836, n1834, n1832, 
        n1830, n1828, n1826, n1824, n1822, n1657, n1652, n1651, n1650, n1649}), 
        .B({n1863, n1857, n1858, n1858, n1856, n1858, n1858, n1856, n1858, 
        n1858, n1842, n1840, n1838, n1836, n1834, n1832, n1830, n1828, n1825, 
        n1823, n1821, n1656, n1652, n1651}), .CI(1'b0), .SUM({N435, N434, N433, 
        N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, 
        N420, N419, N418, N417, N416, N415, N414, N413, N412}) );
  IIR_DW01_add_201 add_5_root_add_0_root_add_124_19 ( .A({N345, N345, N345, 
        N345, N345, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, 
        N335, N334, N333, N332, N331, N330, N329, N328, N327, n1637}), .B({
        N366, N366, N366, N366, N366, N365, N364, N363, N362, N361, N360, N359, 
        N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, 
        N346}), .CI(1'b0), .SUM({N760, N759, N758, N757, N756, N755, N754, 
        N753, N752, N751, N750, N749, N748, N747, N746, N745, N744, N743, N742, 
        N741, N740, N739, N738, N737, N736}) );
  IIR_DW01_add_200 add_10_root_add_0_root_add_124_19 ( .A({n1709, n1322, n1333, 
        n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, n1314, n1325, 
        n1318, n1519, n1514, n1509, n1506, n1503, n1500, n1497, n1495, 
        ss0[1:0], 1'b0}), .B({n1710, n1710, n1708, n1322, n1333, n1331, n1330, 
        n1329, n1328, n1326, n1324, n1323, n1327, n1314, n1325, n1318, n1518, 
        n1514, n1510, n1506, n1503, n1500, n1497, n1495, ss0[1]}), .CI(1'b0), 
        .SUM({N610, N609, N608, N607, N606, N605, N604, N603, N602, N601, N600, 
        N599, N598, N597, N596, N595, N594, N593, N592, N591, N590, N589, N588, 
        N587, N586}) );
  IIR_DW01_add_199 add_9_root_add_0_root_add_124_19 ( .A({ss0[24], ss0[24], 
        n1710, ss0[24], ss0[24], ss0[24], n1710, ss0[24], n1709, n1322, n1333, 
        n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, n1314, n1325, 
        n1318, n1519, n1513, n1510}), .B({ss0[24], n1710, n1710, n1708, n1322, 
        n1333, n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, n1314, 
        n1325, n1318, n1518, n1513, n1509, n1506, n1503, n1500, n1497, n1495}), 
        .CI(1'b0), .SUM({N585, N584, N583, N582, N581, N580, N579, N578, N577, 
        N576, N575, N574, N573, N572, N571, N570, N569, N568, N567, N566, N565, 
        N564, N563, N562, N561}) );
  IIR_DW01_add_198 add_8_root_add_0_root_add_124_19 ( .A({N610, N609, N608, 
        N607, N606, N605, N604, N603, N602, N601, N600, N599, N598, N597, N596, 
        N595, N594, N593, N592, N591, N590, N589, N588, N587, N586}), .B({N585, 
        N584, N583, N582, N581, N580, N579, N578, N577, N576, N575, N574, N573, 
        N572, N571, N570, N569, N568, N567, N566, N565, N564, N563, N562, N561}), .CI(1'b0), .SUM({N710, N709, N708, N707, N706, N705, N704, N703, N702, N701, 
        N700, N699, N698, N697, N696, N695, N694, N693, N692, N691, N690, N689, 
        N688, N687, N686}) );
  IIR_DW01_add_197 add_7_root_add_0_root_add_124_19 ( .A({N560, N559, N558, 
        N557, N556, N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, 
        N545, N544, N543, N542, N541, N540, N539, N538, N537, N536}), .B({N710, 
        N709, N708, N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, 
        N697, N696, N695, N694, N693, N692, N691, N690, N689, N688, N687, N686}), .CI(1'b0), .SUM({N535, N534, N533, N532, N531, N530, N529, N528, N527, N526, 
        N525, N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, 
        N513, N512, N511}) );
  IIR_DW01_add_196 add_6_root_add_0_root_add_124_19 ( .A({N535, N534, N533, 
        N532, N531, N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, 
        N520, N519, N518, N517, N516, N515, N514, N513, N512, N511}), .B({N388, 
        N388, N388, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, 
        N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367}), .CI(1'b0), .SUM({N685, N684, N683, N682, N681, N680, N679, N678, N677, N676, 
        N675, N674, N673, N672, N671, N670, N669, N668, N667, N666, N665, N664, 
        N663, N662, N661}) );
  IIR_DW01_add_195 add_4_root_add_0_root_add_124_19 ( .A({N760, N759, N758, 
        N757, N756, N755, N754, N753, N752, N751, N750, N749, N748, N747, N746, 
        N745, N744, N743, N742, N741, N740, N739, N738, N737, N736}), .B({N685, 
        N684, N683, N682, N681, N680, N679, N678, N677, N676, N675, N674, N673, 
        N672, N671, N670, N669, N668, N667, N666, N665, N664, N663, N662, N661}), .CI(1'b0), .SUM({N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, 
        N500, N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, 
        N488, N487, N486}) );
  IIR_DW01_add_194 add_2_root_add_0_root_add_124_19 ( .A({N435, N435, N434, 
        N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, 
        N421, N420, N419, N418, N417, N416, N415, N414, N413, N412}), .B({N460, 
        N459, N458, N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, 
        N447, N446, N445, N444, N443, N442, N441, N440, N439, N438, N437, N436}), .CI(1'b0), .SUM({N635, N634, N633, N632, N631, N630, N629, N628, N627, N626, 
        N625, N624, N623, N622, N621, N620, N619, N618, N617, N616, N615, N614, 
        N613, N612, N611}) );
  IIR_DW01_add_193 add_3_root_add_0_root_add_124_19 ( .A({N510, N509, N508, 
        N507, N506, N505, N504, N503, N502, N501, N500, N499, N498, N497, N496, 
        N495, N494, N493, N492, N491, N490, N489, N488, N487, N486}), .B({N411, 
        N411, N411, N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, 
        N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389}), .CI(1'b0), .SUM({N660, N659, N658, N657, N656, N655, N654, N653, N652, N651, 
        N650, N649, N648, N647, N646, N645, N644, N643, N642, N641, N640, N639, 
        N638, N637, N636}) );
  IIR_DW01_add_192 add_1_root_add_0_root_add_124_19 ( .A({N485, N484, N483, 
        N482, N481, N480, N479, N478, N477, N476, N475, N474, N473, N472, N471, 
        N470, N469, N468, N467, N466, N465, N464, N463, N462, N461}), .B({N660, 
        N659, N658, N657, N656, N655, N654, N653, N652, N651, N650, N649, N648, 
        N647, N646, N645, N644, N643, N642, N641, N640, N639, N638, N637, N636}), .CI(1'b0), .SUM({N735, N734, N733, N732, N731, N730, N729, N728, N727, N726, 
        N725, N724, N723, N722, N721, N720, N719, N718, N717, N716, N715, N714, 
        N713, N712, N711}) );
  IIR_DW01_add_191 add_0_root_add_0_root_add_124_19 ( .A({N635, N634, N633, 
        N632, N631, N630, N629, N628, N627, N626, N625, N624, N623, N622, N621, 
        N620, N619, N618, N617, N616, N615, N614, N613, N612, N611}), .B({N735, 
        N734, N733, N732, N731, N730, N729, N728, N727, N726, N725, N724, N723, 
        N722, N721, N720, N719, N718, N717, N716, N715, N714, N713, N712, N711}), .CI(1'b0), .SUM({N785, N784, N783, N782, N781, N780, N779, N778, N777, N776, 
        N775, N774, N773, N772, N771, N770, N769, N768, N767, N766, N765, N764, 
        N763, N762, N761}) );
  IIR_DW01_add_151 add_28_root_sub_149_5 ( .A({n1783, n1782, n1782, n1782, 
        n1781, n1782, n1782, n1782, n1782, n1782, n1764, n1762, n1760, n1758, 
        n1756, n1754, n1752, n1750, n1633, n1630, n1625, n1624}), .B({n1783, 
        n1778, n1777, n1778, n1778, n1777, n1777, n1777, n1777, n1778, n1778, 
        n1763, n1761, n1759, n1757, n1755, n1753, n1751, n1749, n1633, n1630, 
        n1625}), .CI(1'b0), .SUM({N890, N889, N888, N887, N886, N885, N884, 
        N883, N882, N881, N880, N879, N878, N877, N876, N875, N874, N873, N872, 
        N871, N870, N869}) );
  IIR_DW01_add_150 add_27_root_sub_149_5 ( .A({n1780, n1782, n1783, n1783, 
        n1782, n1783, n1782, n1782, n1782, n1782, n1782, n1782, n1782, n1782, 
        n1782, n1764, n1762, n1760, n1758, n1756, n1754, n1752, n1749}), .B({
        n1812, n1813, n1813, n1813, n1813, n1800, n1798, n1796, n1794, n1792, 
        n1790, n1788, n1786, n1784, n1646, n1643, n1640, n1639, n1638, n1637, 
        n1636, s1[7], 1'b0}), .CI(1'b0), .SUM({N913, N912, N911, N910, N909, 
        N908, N907, N906, N905, N904, N903, N902, N901, N900, N899, N898, N897, 
        N896, N895, N894, N893, N892, N891}) );
  IIR_DW01_add_149 add_26_root_sub_149_5 ( .A({n1820, n1817, n1817, n1817, 
        n1817, n1817, n1817, n1817, n1800, n1798, n1796, n1794, n1792, n1790, 
        n1788, n1786, n1784, n1646, n1643, n1640, n1639, n1638, n1637, n1636}), 
        .B({n1820, n1812, n1812, n1812, n1812, n1812, n1812, n1812, n1812, 
        n1812, n1800, n1798, n1796, n1794, n1792, n1790, n1788, n1786, n1784, 
        n1646, n1642, n1640, n1639, n1638}), .CI(1'b0), .SUM({N937, N936, N935, 
        N934, N933, N932, N931, N930, N929, N928, N927, N926, N925, N924, N923, 
        N922, N921, N920, N919, N918, N917, N916, N915, N914}) );
  IIR_DW01_add_148 add_8_root_add_0_root_sub_149_5 ( .A({N847, N847, N847, 
        N847, N847, N847, N846, N845, N844, N843, N842, N841, N840, N839, N838, 
        N837, N836, N835, N834, N833, N832, N831, N830, N829, n1621}), .B({
        N913, N913, N913, N912, N911, N910, N909, N908, N907, N906, N905, N904, 
        N903, N902, N901, N900, N899, N898, N897, N896, N895, N894, N893, N892, 
        N891}), .CI(1'b0), .SUM({N1012, N1011, N1010, N1009, N1008, N1007, 
        N1006, N1005, N1004, N1003, N1002, N1001, N1000, N999, N998, N997, 
        N996, N995, N994, N993, N992, N991, N990, N989, N988}) );
  IIR_DW01_sub_21 sub_22_root_add_0_root_sub_149_5 ( .A({n1336, n1321, n1317, 
        n1312, n1335, n1320, n1311, n1308, n1315, n1307, n1309, n1332, n1319, 
        n1525, n1521, n1516, n1511, n1507, n1504, n1501, n1498, n1496, n1494, 
        ss1[0], 1'b0}), .B({n1322, n1333, n1331, n1330, n1329, n1328, n1326, 
        n1324, n1323, n1327, n1314, n1325, n1318, n1519, n1514, n1509, n1506, 
        n1503, n1500, n1497, n1495, ss0[1:0], 1'b0, 1'b0}), .CI(1'b0), .DIFF({
        N1212, N1211, N1210, N1209, N1208, N1207, N1206, N1205, N1204, N1203, 
        N1202, N1201, N1200, N1199, N1198, N1197, N1196, N1195, N1194, N1193, 
        N1192, N1191, N1190, N1189, SYNOPSYS_UNCONNECTED__6}) );
  IIR_DW01_add_147 add_21_root_add_0_root_sub_149_5 ( .A({N1212, N1211, N1210, 
        N1209, N1208, N1207, N1206, N1205, N1204, N1203, N1202, N1201, N1200, 
        N1199, N1198, N1197, N1196, N1195, N1194, N1193, N1192, N1191, N1190, 
        N1189, 1'b0}), .B({n1477, n1477, n1701, n1475, n1701, n1701, n1473, 
        n1701, n1336, n1321, n1317, n1312, n1335, n1320, n1311, n1308, n1315, 
        n1307, n1309, n1332, n1319, n1524, n1521, n1515, n1511}), .CI(1'b0), 
        .SUM({N1187, N1186, N1185, N1184, N1183, N1182, N1181, N1180, N1179, 
        N1178, N1177, N1176, N1175, N1174, N1173, N1172, N1171, N1170, N1169, 
        N1168, N1167, N1166, N1165, N1164, N1163}) );
  IIR_DW01_add_146 add_20_root_add_0_root_sub_149_5 ( .A({n1473, n1701, n1482, 
        n1473, n1473, n1481, n1473, n1481, n1701, n1480, n1481, n1481, n1480, 
        n1482, n1480, n1336, n1321, n1317, n1312, n1335, n1320, n1311, n1308, 
        n1315, n1307}), .B({n1473, n1478, n1477, n1336, n1321, n1317, n1312, 
        n1335, n1320, n1311, n1308, n1315, n1307, n1309, n1332, n1319, n1524, 
        n1520, n1515, n1511, n1507, n1504, n1501, n1498, n1496}), .CI(1'b0), 
        .SUM({N1412, N1411, N1410, N1409, N1408, N1407, N1406, N1405, N1404, 
        N1403, N1402, N1401, N1400, N1399, N1398, N1397, N1396, N1395, N1394, 
        N1393, N1392, N1391, N1390, N1389, N1388}) );
  IIR_DW01_add_145 add_18_root_add_0_root_sub_149_5 ( .A({N1187, N1186, N1185, 
        N1184, N1183, N1182, N1181, N1180, N1179, N1178, N1177, N1176, N1175, 
        N1174, N1173, N1172, N1171, N1170, N1169, N1168, N1167, N1166, N1165, 
        N1164, N1163}), .B({N1412, N1411, N1410, N1409, N1408, N1407, N1406, 
        N1405, N1404, N1403, N1402, N1401, N1400, N1399, N1398, N1397, N1396, 
        N1395, N1394, N1393, N1392, N1391, N1390, N1389, N1388}), .CI(1'b0), 
        .SUM({N1137, N1136, N1135, N1134, N1133, N1132, N1131, N1130, N1129, 
        N1128, N1127, N1126, N1125, N1124, N1123, N1122, N1121, N1120, N1119, 
        N1118, N1117, N1116, N1115, N1114, N1113}) );
  IIR_DW01_add_144 add_14_root_add_0_root_sub_149_5 ( .A({N1137, N1136, N1135, 
        N1134, N1133, N1132, N1131, N1130, N1129, N1128, N1127, N1126, N1125, 
        N1124, N1123, N1122, N1121, N1120, N1119, N1118, N1117, N1116, N1115, 
        N1114, N1113}), .B({N937, N937, N936, N935, N934, N933, N932, N931, 
        N930, N929, N928, N927, N926, N925, N924, N923, N922, N921, N920, N919, 
        N918, N917, N916, N915, N914}), .CI(1'b0), .SUM({N1087, N1086, N1085, 
        N1084, N1083, N1082, N1081, N1080, N1079, N1078, N1077, N1076, N1075, 
        N1074, N1073, N1072, N1071, N1070, N1069, N1068, N1067, N1066, N1065, 
        N1064, N1063}) );
  IIR_DW01_add_143 add_16_root_add_0_root_sub_149_5 ( .A({ss0[24], ss0[24], 
        ss0[24], n1710, ss0[24], ss0[24], ss0[24], ss0[24], ss0[24], n1710, 
        n1712, n1712, n1713, n1709, n1322, n1333, n1331, n1330, n1329, n1328, 
        n1326, n1324, n1323, n1327, n1314}), .B({ss0[24], n1712, n1713, n1713, 
        n1712, n1712, n1713, n1712, n1712, n1712, n1712, n1708, n1322, n1333, 
        n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, n1314, n1325, 
        n1318}), .CI(1'b0), .SUM({N1512, N1511, N1510, N1509, N1508, N1507, 
        N1506, N1505, N1504, N1503, N1502, N1501, N1500, N1499, N1498, N1497, 
        N1496, N1495, N1494, N1493, N1492, N1491, N1490, N1489, N1488}) );
  IIR_DW01_sub_20 sub_12_root_add_0_root_sub_149_5 ( .A({N1087, N1086, N1085, 
        N1084, N1083, N1082, N1081, N1080, N1079, N1078, N1077, N1076, N1075, 
        N1074, N1073, N1072, N1071, N1070, N1069, N1068, N1067, N1066, N1065, 
        N1064, N1063}), .B({N1512, N1511, N1510, N1509, N1508, N1507, N1506, 
        N1505, N1504, N1503, N1502, N1501, N1500, N1499, N1498, N1497, N1496, 
        N1495, N1494, N1493, N1492, N1491, N1490, N1489, N1488}), .CI(1'b0), 
        .DIFF({N1037, N1036, N1035, N1034, N1033, N1032, N1031, N1030, N1029, 
        N1028, N1027, N1026, N1025, N1024, N1023, N1022, N1021, N1020, N1019, 
        N1018, N1017, N1016, N1015, N1014, N1013}) );
  IIR_DW01_add_142 add_19_root_add_0_root_sub_149_5 ( .A({n1473, n1480, n1336, 
        n1321, n1317, n1312, n1335, n1320, n1311, n1308, n1315, n1307, n1309, 
        n1332, n1319, n1525, n1520, n1516, n1511, n1507, n1504, n1501, n1498, 
        n1496, n1494}), .B({n1473, n1701, n1477, n1701, n1477, n1473, n1477, 
        n1473, n1478, n1473, n1473, n1473, n1478, n1701, n1336, n1321, n1317, 
        n1312, n1335, n1320, n1311, n1308, n1315, n1307, n1309}), .CI(1'b0), 
        .SUM({N1162, N1161, N1160, N1159, N1158, N1157, N1156, N1155, N1154, 
        N1153, N1152, N1151, N1150, N1149, N1148, N1147, N1146, N1145, N1144, 
        N1143, N1142, N1141, N1140, N1139, N1138}) );
  IIR_DW01_add_141 add_17_root_add_0_root_sub_149_5 ( .A({ss0[24], ss0[24], 
        ss0[24], ss0[24], ss0[24], ss0[24], ss0[24], ss0[24], n1709, n1322, 
        n1333, n1331, n1330, n1329, n1328, n1326, n1324, n1323, n1327, n1314, 
        n1325, n1318, n1519, n1514, n1509}), .B({ss0[24], n1712, n1713, n1713, 
        n1713, n1712, n1713, n1713, n1713, n1712, n1708, n1322, n1333, n1331, 
        n1330, n1329, n1328, n1326, n1324, n1323, n1327, n1314, n1325, n1318, 
        n1518}), .CI(1'b0), .SUM({N1387, N1386, N1385, N1384, N1383, N1382, 
        N1381, N1380, N1379, N1378, N1377, N1376, N1375, N1374, N1373, N1372, 
        N1371, N1370, N1369, N1368, N1367, N1366, N1365, N1364, N1363}) );
  IIR_DW01_sub_19 sub_15_root_add_0_root_sub_149_5 ( .A({N1162, N1161, N1160, 
        N1159, N1158, N1157, N1156, N1155, N1154, N1153, N1152, N1151, N1150, 
        N1149, N1148, N1147, N1146, N1145, N1144, N1143, N1142, N1141, N1140, 
        N1139, N1138}), .B({N1387, N1386, N1385, N1384, N1383, N1382, N1381, 
        N1380, N1379, N1378, N1377, N1376, N1375, N1374, N1373, N1372, N1371, 
        N1370, N1369, N1368, N1367, N1366, N1365, N1364, N1363}), .CI(1'b0), 
        .DIFF({N1112, N1111, N1110, N1109, N1108, N1107, N1106, N1105, N1104, 
        N1103, N1102, N1101, N1100, N1099, N1098, N1097, N1096, N1095, N1094, 
        N1093, N1092, N1091, N1090, N1089, N1088}) );
  IIR_DW01_add_140 add_3_root_add_0_root_sub_149_5 ( .A({n1863, n1861, n1861, 
        n1861, n1861, n1861, n1862, n1862, n1862, n1862, n1842, n1840, n1838, 
        n1836, n1834, n1832, n1830, n1828, n1826, n1824, n1822, n1657, n1652, 
        n1651, n1650}), .B({n1863, n1855, n1855, n1855, n1855, n1855, n1856, 
        n1856, n1856, n1856, n1856, n1856, n1856, n1857, n1857, n1856, n1857, 
        n1842, n1840, n1838, n1836, n1834, n1832, n1830, n1828}), .CI(1'b0), 
        .SUM({N1237, N1236, N1235, N1234, N1233, N1232, N1231, N1230, N1229, 
        N1228, N1227, N1226, N1225, N1224, N1223, N1222, N1221, N1220, N1219, 
        N1218, N1217, N1216, N1215, N1214, N1213}) );
  IIR_DW01_add_139 add_4_root_add_0_root_sub_149_5 ( .A({n1863, n1861, n1861, 
        n1861, n1861, n1861, n1861, n1861, n1861, n1861, n1861, n1861, n1842, 
        n1840, n1838, n1836, n1834, n1832, n1830, n1828, n1826, n1824, n1822, 
        n1657, n1652}), .B({n1863, n1855, n1855, n1855, n1855, n1855, n1842, 
        n1840, n1838, n1836, n1834, n1832, n1830, n1828, n1825, n1823, n1821, 
        n1657, n1652, n1651, n1650, n1649, s0[7], 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N1262, N1261, N1260, N1259, N1258, N1257, N1256, N1255, N1254, 
        N1253, N1252, N1251, N1250, N1249, N1248, N1247, N1246, N1245, N1244, 
        N1243, N1242, N1241, N1240, N1239, N1238}) );
  IIR_DW01_add_138 add_13_root_add_0_root_sub_149_5 ( .A({N987, N986, N985, 
        N984, N983, N982, N981, N980, N979, N978, N977, N976, N975, N974, N973, 
        N972, N971, N970, N969, N968, N967, N966, N965, N964, N963}), .B({N962, 
        N961, N960, N959, N958, N957, N956, N955, N954, N953, N952, N951, N950, 
        N949, N948, N947, N946, N945, N944, N943, N942, N941, N940, N939, N938}), .CI(1'b0), .SUM({N1362, N1361, N1360, N1359, N1358, N1357, N1356, N1355, 
        N1354, N1353, N1352, N1351, N1350, N1349, N1348, N1347, N1346, N1345, 
        N1344, N1343, N1342, N1341, N1340, N1339, N1338}) );
  IIR_DW01_add_137 add_11_root_add_0_root_sub_149_5 ( .A({N1362, N1361, N1360, 
        N1359, N1358, N1357, N1356, N1355, N1354, N1353, N1352, N1351, N1350, 
        N1349, N1348, N1347, N1346, N1345, N1344, N1343, N1342, N1341, N1340, 
        N1339, N1338}), .B({N1112, N1111, N1110, N1109, N1108, N1107, N1106, 
        N1105, N1104, N1103, N1102, N1101, N1100, N1099, N1098, N1097, N1096, 
        N1095, N1094, N1093, N1092, N1091, N1090, N1089, N1088}), .CI(1'b0), 
        .SUM({N1337, N1336, N1335, N1334, N1333, N1332, N1331, N1330, N1329, 
        N1328, N1327, N1326, N1325, N1324, N1323, N1322, N1321, N1320, N1319, 
        N1318, N1317, N1316, N1315, N1314, N1313}) );
  IIR_DW01_add_136 add_10_root_add_0_root_sub_149_5 ( .A({N1337, N1336, N1335, 
        N1334, N1333, N1332, N1331, N1330, N1329, N1328, N1327, N1326, N1325, 
        N1324, N1323, N1322, N1321, N1320, N1319, N1318, N1317, N1316, N1315, 
        N1314, N1313}), .B({N1037, N1036, N1035, N1034, N1033, N1032, N1031, 
        N1030, N1029, N1028, N1027, N1026, N1025, N1024, N1023, N1022, N1021, 
        N1020, N1019, N1018, N1017, N1016, N1015, N1014, N1013}), .CI(1'b0), 
        .SUM({N1487, N1486, N1485, N1484, N1483, N1482, N1481, N1480, N1479, 
        N1478, N1477, N1476, N1475, N1474, N1473, N1472, N1471, N1470, N1469, 
        N1468, N1467, N1466, N1465, N1464, N1463}) );
  IIR_DW01_add_135 add_9_root_add_0_root_sub_149_5 ( .A({N1487, N1486, N1485, 
        N1484, N1483, N1482, N1481, N1480, N1479, N1478, N1477, N1476, N1475, 
        N1474, N1473, N1472, N1471, N1470, N1469, N1468, N1467, N1466, N1465, 
        N1464, N1463}), .B({N890, N890, N890, N890, N889, N888, N887, N886, 
        N885, N884, N883, N882, N881, N880, N879, N878, N877, N876, N875, N874, 
        N873, N872, N871, N870, N869}), .CI(1'b0), .SUM({N1562, N1561, N1560, 
        N1559, N1558, N1557, N1556, N1555, N1554, N1553, N1552, N1551, N1550, 
        N1549, N1548, N1547, N1546, N1545, N1544, N1543, N1542, N1541, N1540, 
        N1539, N1538}) );
  IIR_DW01_add_134 add_7_root_add_0_root_sub_149_5 ( .A({N868, N868, N868, 
        N868, N868, N867, N866, N865, N864, N863, N862, N861, N860, N859, N858, 
        N857, N856, N855, N854, N853, N852, N851, N850, N849, N848}), .B({
        N1562, N1561, N1560, N1559, N1558, N1557, N1556, N1555, N1554, N1553, 
        N1552, N1551, N1550, N1549, N1548, N1547, N1546, N1545, N1544, N1543, 
        N1542, N1541, N1540, N1539, N1538}), .CI(1'b0), .SUM({N1312, N1311, 
        N1310, N1309, N1308, N1307, N1306, N1305, N1304, N1303, N1302, N1301, 
        N1300, N1299, N1298, N1297, N1296, N1295, N1294, N1293, N1292, N1291, 
        N1290, N1289, N1288}) );
  IIR_DW01_add_133 add_6_root_add_0_root_sub_149_5 ( .A({N1012, N1011, N1010, 
        N1009, N1008, N1007, N1006, N1005, N1004, N1003, N1002, N1001, N1000, 
        N999, N998, N997, N996, N995, N994, N993, N992, N991, N990, N989, N988}), .B({N1312, N1311, N1310, N1309, N1308, N1307, N1306, N1305, N1304, N1303, 
        N1302, N1301, N1300, N1299, N1298, N1297, N1296, N1295, N1294, N1293, 
        N1292, N1291, N1290, N1289, N1288}), .CI(1'b0), .SUM({N1287, N1286, 
        N1285, N1284, N1283, N1282, N1281, N1280, N1279, N1278, N1277, N1276, 
        N1275, N1274, N1273, N1272, N1271, N1270, N1269, N1268, N1267, N1266, 
        N1265, N1264, N1263}) );
  IIR_DW01_add_132 add_5_root_add_0_root_sub_149_5 ( .A({N1287, N1286, N1285, 
        N1284, N1283, N1282, N1281, N1280, N1279, N1278, N1277, N1276, N1275, 
        N1274, N1273, N1272, N1271, N1270, N1269, N1268, N1267, N1266, N1265, 
        N1264, N1263}), .B({n1853, n1853, n1853, n1854, n1854, n1854, n1854, 
        n1854, n1854, n1842, n1840, n1838, n1836, n1834, n1832, n1830, n1828, 
        n1825, n1823, n1821, n1657, n1652, n1651, n1650, n1649}), .CI(1'b0), 
        .SUM({N1462, N1461, N1460, N1459, N1458, N1457, N1456, N1455, N1454, 
        N1453, N1452, N1451, N1450, N1449, N1448, N1447, N1446, N1445, N1444, 
        N1443, N1442, N1441, N1440, N1439, N1438}) );
  IIR_DW01_add_131 add_2_root_add_0_root_sub_149_5 ( .A({N1462, N1461, N1460, 
        N1459, N1458, N1457, N1456, N1455, N1454, N1453, N1452, N1451, N1450, 
        N1449, N1448, N1447, N1446, N1445, N1444, N1443, N1442, N1441, N1440, 
        N1439, N1438}), .B({N1262, N1261, N1260, N1259, N1258, N1257, N1256, 
        N1255, N1254, N1253, N1252, N1251, N1250, N1249, N1248, N1247, N1246, 
        N1245, N1244, N1243, N1242, N1241, N1240, N1239, N1238}), .CI(1'b0), 
        .SUM({N1437, N1436, N1435, N1434, N1433, N1432, N1431, N1430, N1429, 
        N1428, N1427, N1426, N1425, N1424, N1423, N1422, N1421, N1420, N1419, 
        N1418, N1417, N1416, N1415, N1414, N1413}) );
  IIR_DW01_add_130 add_1_root_add_0_root_sub_149_5 ( .A({N1062, N1061, N1060, 
        N1059, N1058, N1057, N1056, N1055, N1054, N1053, N1052, N1051, N1050, 
        N1049, N1048, N1047, N1046, N1045, N1044, N1043, N1042, N1041, N1040, 
        N1039, N1038}), .B({N1237, N1236, N1235, N1234, N1233, N1232, N1231, 
        N1230, N1229, N1228, N1227, N1226, N1225, N1224, N1223, N1222, N1221, 
        N1220, N1219, N1218, N1217, N1216, N1215, N1214, N1213}), .CI(1'b0), 
        .SUM({N1537, N1536, N1535, N1534, N1533, N1532, N1531, N1530, N1529, 
        N1528, N1527, N1526, N1525, N1524, N1523, N1522, N1521, N1520, N1519, 
        N1518, N1517, N1516, N1515, N1514, N1513}) );
  IIR_DW01_add_129 add_0_root_add_0_root_sub_149_5 ( .A({N1437, N1436, N1435, 
        N1434, N1433, N1432, N1431, N1430, N1429, N1428, N1427, N1426, N1425, 
        N1424, N1423, N1422, N1421, N1420, N1419, N1418, N1417, N1416, N1415, 
        N1414, N1413}), .B({N1537, N1536, N1535, N1534, N1533, N1532, N1531, 
        N1530, N1529, N1528, N1527, N1526, N1525, N1524, N1523, N1522, N1521, 
        N1520, N1519, N1518, N1517, N1516, N1515, N1514, N1513}), .CI(1'b0), 
        .SUM({N1587, N1586, N1585, N1584, N1583, N1582, N1581, N1580, N1579, 
        N1578, N1577, N1576, N1575, N1574, N1573, N1572, N1571, N1570, N1569, 
        N1568, N1567, N1566, N1565, N1564, N1563}) );
  IIR_DW01_add_17 add_3_root_add_101_6 ( .A({n1863, n1861, n1861, n1861, n1861, 
        n1861, n1861, n1861, n1861, n1861, n1842, n1840, n1838, n1836, n1834, 
        n1832, n1830, n1828, n1826, n1824, n1822, n1656}), .B({n1863, n1853, 
        n1853, n1853, n1853, n1853, n1853, n1853, n1853, n1853, n1853, n1842, 
        n1840, n1838, n1836, n1834, n1832, n1830, n1828, n1825, n1823, n1821}), 
        .CI(1'b0), .SUM({N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, 
        N191}) );
  IIR_DW01_add_16 add_2_root_add_101_6 ( .A({n1860, n1862, n1860, n1860, n1860, 
        n1860, n1860, n1860, n1860, n1860, n1860, n1861, n1861, n1861, n1861, 
        n1842, n1840, n1838, n1836, n1834, n1832, n1830, n1828}), .B({N169, 
        N169, N169, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, 
        N159, N158, N157, N156, N155, N154, N153, N152, N151, n1650}), .CI(
        1'b0), .SUM({N235, N234, N233, N232, N231, N230, N229, N228, N227, 
        N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, 
        N214, N213}) );
  IIR_DW01_add_15 add_1_root_add_101_6 ( .A({N190, N190, N190, N190, N189, 
        N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, N171, N170}), .B({N212, N212, N212, N211, 
        N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, 
        N198, N197, N196, N195, N194, N193, N192, N191}), .CI(1'b0), .SUM({
        N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, 
        N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236}) );
  IIR_DW01_add_14 add_0_root_add_101_6 ( .A({N235, N235, N235, N234, N233, 
        N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, 
        N220, N219, N218, N217, N216, N215, N214, N213}), .B({N259, N259, N258, 
        N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, 
        N245, N244, N243, N242, N241, N240, N239, N238, N237, N236}), .CI(1'b0), .SUM({N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, 
        N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, 
        N260}) );
  DFFRX1 \waddr_reg[19]  ( .D(n1206), .CK(clk), .RN(n1687), .Q(WAddr[19]), 
        .QN(n957) );
  DFFRX1 \ss5_reg[0]  ( .D(n1275), .CK(clk), .RN(n1681), .Q(ss5[0]) );
  DFFRX1 \ss5_reg[1]  ( .D(n1274), .CK(clk), .RN(n1681), .Q(ss5[1]) );
  DFFRX1 \ss5_reg[2]  ( .D(n1273), .CK(clk), .RN(n1681), .Q(ss5[2]) );
  DFFRX1 \ss5_reg[3]  ( .D(n1272), .CK(clk), .RN(n1681), .Q(ss5[3]) );
  DFFRX1 \ss5_reg[4]  ( .D(n1271), .CK(clk), .RN(n1681), .Q(ss5[4]) );
  DFFRX1 \ss5_reg[5]  ( .D(n1270), .CK(clk), .RN(n1681), .Q(ss5[5]) );
  DFFRX1 \ss5_reg[6]  ( .D(n1269), .CK(clk), .RN(n1681), .Q(ss5[6]) );
  DFFRX1 \ss5_reg[23]  ( .D(n1267), .CK(clk), .RN(n1681), .QN(n1457) );
  DFFRX1 \ss5_reg[22]  ( .D(n1266), .CK(clk), .RN(n1681), .QN(n1456) );
  DFFRX1 \ss5_reg[21]  ( .D(n1265), .CK(clk), .RN(n1682), .QN(n1395) );
  DFFRX1 \ss5_reg[20]  ( .D(n1264), .CK(clk), .RN(n1682), .QN(n1394) );
  DFFRX1 \ss5_reg[19]  ( .D(n1263), .CK(clk), .RN(n1682), .QN(n1393) );
  DFFRX1 \ss5_reg[18]  ( .D(n1262), .CK(clk), .RN(n1682), .QN(n1392) );
  DFFRX1 \ss5_reg[17]  ( .D(n1261), .CK(clk), .RN(n1682), .QN(n1391) );
  DFFRX1 \ss5_reg[16]  ( .D(n1260), .CK(clk), .RN(n1682), .QN(n1390) );
  DFFRX1 \ss5_reg[15]  ( .D(n1259), .CK(clk), .RN(n1682), .QN(n1389) );
  DFFRX1 \ss5_reg[14]  ( .D(n1258), .CK(clk), .RN(n1682), .QN(n1388) );
  DFFRX1 \ss5_reg[13]  ( .D(n1257), .CK(clk), .RN(n1682), .QN(n1387) );
  DFFRX1 \ss5_reg[12]  ( .D(n1256), .CK(clk), .RN(n1682), .QN(n1386) );
  DFFRX1 \ss5_reg[11]  ( .D(n1255), .CK(clk), .RN(n1682), .QN(n1385) );
  DFFRX1 \ss5_reg[10]  ( .D(n1254), .CK(clk), .RN(n1682), .QN(n1384) );
  DFFRX1 \ss5_reg[9]  ( .D(n1253), .CK(clk), .RN(n1683), .QN(n1383) );
  DFFRX1 \ss5_reg[8]  ( .D(n1252), .CK(clk), .RN(n1683), .QN(n1382) );
  DFFRX1 \ss5_reg[7]  ( .D(n1251), .CK(clk), .RN(n1683), .QN(n1381) );
  DFFRX1 \ss5_reg[24]  ( .D(n1268), .CK(clk), .RN(n1681), .Q(ss5[24]) );
  DFFRX1 \raddr_reg[19]  ( .D(n1299), .CK(clk), .RN(n1685), .Q(RAddr[19]), 
        .QN(n995) );
  DFFRX1 \waddr_reg[12]  ( .D(n1213), .CK(clk), .RN(n1686), .Q(WAddr[12]), 
        .QN(n964) );
  DFFRX1 \waddr_reg[13]  ( .D(n1212), .CK(clk), .RN(n1686), .Q(WAddr[13]), 
        .QN(n963) );
  DFFRX1 \waddr_reg[14]  ( .D(n1211), .CK(clk), .RN(n1686), .Q(WAddr[14]), 
        .QN(n962) );
  DFFRX1 \waddr_reg[15]  ( .D(n1210), .CK(clk), .RN(n1686), .Q(WAddr[15]), 
        .QN(n961) );
  DFFRX1 \waddr_reg[16]  ( .D(n1209), .CK(clk), .RN(n1686), .Q(WAddr[16]), 
        .QN(n960) );
  DFFRX1 \waddr_reg[17]  ( .D(n1208), .CK(clk), .RN(n1686), .Q(WAddr[17]), 
        .QN(n959) );
  DFFRX1 \waddr_reg[18]  ( .D(n1207), .CK(clk), .RN(n1686), .Q(WAddr[18]), 
        .QN(n958) );
  DFFRX1 \raddr_reg[18]  ( .D(n1276), .CK(clk), .RN(n1681), .Q(RAddr[18]), 
        .QN(n977) );
  DFFRX1 \raddr_reg[16]  ( .D(n1278), .CK(clk), .RN(n1680), .Q(RAddr[16]), 
        .QN(n979) );
  DFFRX1 \raddr_reg[17]  ( .D(n1277), .CK(clk), .RN(n1681), .Q(RAddr[17]), 
        .QN(n978) );
  DFFSX1 \state_reg[1]  ( .D(n1297), .CK(clk), .SN(n1691), .Q(state[1]), .QN(
        n1368) );
  DFFSX1 \state_reg[4]  ( .D(n1292), .CK(clk), .SN(n1691), .Q(state[4]) );
  DFFRX1 \waddr_reg[4]  ( .D(n1221), .CK(clk), .RN(n1685), .Q(WAddr[4]), .QN(
        n972) );
  DFFRX1 \waddr_reg[5]  ( .D(n1220), .CK(clk), .RN(n1685), .Q(WAddr[5]), .QN(
        n971) );
  DFFRX1 \waddr_reg[6]  ( .D(n1219), .CK(clk), .RN(n1685), .Q(WAddr[6]), .QN(
        n970) );
  DFFRX1 \waddr_reg[7]  ( .D(n1218), .CK(clk), .RN(n1686), .Q(WAddr[7]), .QN(
        n969) );
  DFFRX1 \waddr_reg[8]  ( .D(n1217), .CK(clk), .RN(n1686), .Q(WAddr[8]), .QN(
        n968) );
  DFFRX1 \waddr_reg[9]  ( .D(n1216), .CK(clk), .RN(n1686), .Q(WAddr[9]), .QN(
        n967) );
  DFFRX1 \waddr_reg[10]  ( .D(n1215), .CK(clk), .RN(n1686), .Q(WAddr[10]), 
        .QN(n966) );
  DFFRX1 \waddr_reg[11]  ( .D(n1214), .CK(clk), .RN(n1686), .Q(WAddr[11]), 
        .QN(n965) );
  DFFRX1 \raddr_reg[14]  ( .D(n1280), .CK(clk), .RN(n1680), .Q(RAddr[14]), 
        .QN(n981) );
  DFFRX1 \raddr_reg[15]  ( .D(n1279), .CK(clk), .RN(n1680), .Q(RAddr[15]), 
        .QN(n980) );
  DFFRX1 \raddr_reg[13]  ( .D(n1281), .CK(clk), .RN(n1680), .Q(RAddr[13]), 
        .QN(n982) );
  DFFRX1 \raddr_reg[12]  ( .D(n1282), .CK(clk), .RN(n1680), .Q(RAddr[12]), 
        .QN(n983) );
  DFFSX1 \state_reg[3]  ( .D(n1293), .CK(clk), .SN(n1692), .Q(state[3]), .QN(
        n1369) );
  DFFSX1 \state_reg[2]  ( .D(n1295), .CK(clk), .SN(n1691), .Q(state[2]) );
  DFFRX1 \waddr_reg[1]  ( .D(n1224), .CK(clk), .RN(n1685), .Q(WAddr[1]), .QN(
        n975) );
  DFFRX1 \waddr_reg[2]  ( .D(n1223), .CK(clk), .RN(n1685), .Q(WAddr[2]), .QN(
        n974) );
  DFFRX1 \waddr_reg[3]  ( .D(n1222), .CK(clk), .RN(n1685), .Q(WAddr[3]), .QN(
        n973) );
  DFFRX1 \waddr_reg[0]  ( .D(n1225), .CK(clk), .RN(n1685), .Q(WAddr[0]), .QN(
        n976) );
  DFFRX1 \raddr_reg[11]  ( .D(n1291), .CK(clk), .RN(n1679), .Q(RAddr[11]), 
        .QN(n992) );
  DFFRX1 \raddr_reg[10]  ( .D(n1296), .CK(clk), .RN(n1679), .Q(RAddr[10]), 
        .QN(n994) );
  DFFRX1 \raddr_reg[1]  ( .D(n1294), .CK(clk), .RN(n1679), .Q(N6343), .QN(n993) );
  DFFRX1 \raddr_reg[8]  ( .D(n1284), .CK(clk), .RN(n1680), .Q(RAddr[8]), .QN(
        n985) );
  DFFRX1 \raddr_reg[9]  ( .D(n1283), .CK(clk), .RN(n1680), .Q(RAddr[9]), .QN(
        n984) );
  DFFRX1 \raddr_reg[0]  ( .D(n1300), .CK(clk), .RN(n1667), .Q(N6342), .QN(n996) );
  DFFRX1 \raddr_reg[6]  ( .D(n1286), .CK(clk), .RN(n1680), .Q(RAddr[6]), .QN(
        n987) );
  DFFRX1 \raddr_reg[5]  ( .D(n1287), .CK(clk), .RN(n1680), .Q(RAddr[5]), .QN(
        n988) );
  DFFRX1 \raddr_reg[7]  ( .D(n1285), .CK(clk), .RN(n1680), .Q(RAddr[7]), .QN(
        n986) );
  DFFRX1 \raddr_reg[3]  ( .D(n1289), .CK(clk), .RN(n1680), .Q(RAddr[3]), .QN(
        n990) );
  DFFRX1 \raddr_reg[4]  ( .D(n1288), .CK(clk), .RN(n1680), .Q(RAddr[4]), .QN(
        n989) );
  DFFRX1 \raddr_reg[2]  ( .D(n1290), .CK(clk), .RN(n1679), .Q(RAddr[2]), .QN(
        n991) );
  DFFRX1 \s0_reg[23]  ( .D(n1204), .CK(clk), .RN(n1687), .Q(s0[23]) );
  DFFRX1 \s0_reg[22]  ( .D(n1203), .CK(clk), .RN(n1687), .Q(s0[22]) );
  DFFRX1 \s0_reg[21]  ( .D(n1202), .CK(clk), .RN(n1687), .Q(s0[21]) );
  DFFRX1 \s0_reg[20]  ( .D(n1201), .CK(clk), .RN(n1687), .Q(s0[20]) );
  DFFRX1 \s0_reg[19]  ( .D(n1200), .CK(clk), .RN(n1687), .Q(s0[19]) );
  DFFRX1 \s0_reg[18]  ( .D(n1199), .CK(clk), .RN(n1687), .Q(s0[18]) );
  DFFRX1 \s0_reg[13]  ( .D(n1194), .CK(clk), .RN(n1688), .Q(s0[13]) );
  DFFRX1 \s0_reg[11]  ( .D(n1192), .CK(clk), .RN(n1688), .Q(s0[11]) );
  DFFRX1 \s0_reg[10]  ( .D(n1191), .CK(clk), .RN(n1688), .Q(s0[10]) );
  DFFRX1 \s0_reg[9]  ( .D(n1190), .CK(clk), .RN(n1688), .Q(N150) );
  DFFRX1 \s0_reg[8]  ( .D(n1189), .CK(clk), .RN(n1688), .Q(s0[8]) );
  DFFRX1 \s0_reg[12]  ( .D(n1193), .CK(clk), .RN(n1688), .Q(s0[12]) );
  DFFRX1 \s0_reg[17]  ( .D(n1198), .CK(clk), .RN(n1687), .Q(s0[17]) );
  DFFRX1 \s0_reg[16]  ( .D(n1197), .CK(clk), .RN(n1687), .Q(s0[16]) );
  DFFRX1 \s0_reg[15]  ( .D(n1196), .CK(clk), .RN(n1687), .Q(s0[15]) );
  DFFRX1 \s0_reg[14]  ( .D(n1195), .CK(clk), .RN(n1687), .Q(s0[14]) );
  DFFRX1 \s1_reg[23]  ( .D(n1186), .CK(clk), .RN(n1688), .Q(s1[23]) );
  DFFRX1 \s1_reg[22]  ( .D(n1185), .CK(clk), .RN(n1688), .Q(s1[22]) );
  DFFRX1 \ss2_reg[23]  ( .D(n1092), .CK(clk), .RN(n1671), .Q(ss2[23]), .QN(
        n1443) );
  DFFRX1 \ss1_reg[24]  ( .D(n1095), .CK(clk), .RN(n1671), .Q(ss1[24]) );
  DFFRX1 \ss1_reg[23]  ( .D(n1091), .CK(clk), .RN(n1671), .Q(n1336), .QN(n1366) );
  DFFRX1 \ss2_reg[24]  ( .D(n1096), .CK(clk), .RN(n1671), .Q(ss2[24]), .QN(
        n1313) );
  DFFRX1 \ss0_reg[24]  ( .D(n1094), .CK(clk), .RN(n1671), .Q(ss0[24]) );
  DFFRX1 \s1_reg[13]  ( .D(n1176), .CK(clk), .RN(n1689), .Q(s1[13]), .QN(n1304) );
  DFFRX1 \s1_reg[21]  ( .D(n1184), .CK(clk), .RN(n1688), .Q(s1[21]) );
  DFFRX1 \s1_reg[20]  ( .D(n1183), .CK(clk), .RN(n1688), .Q(s1[20]) );
  DFFRX1 \s1_reg[19]  ( .D(n1182), .CK(clk), .RN(n1689), .Q(s1[19]) );
  DFFRX1 \s1_reg[18]  ( .D(n1181), .CK(clk), .RN(n1689), .Q(s1[18]) );
  DFFRX1 \s1_reg[17]  ( .D(n1180), .CK(clk), .RN(n1689), .Q(s1[17]) );
  DFFRX1 \s1_reg[16]  ( .D(n1179), .CK(clk), .RN(n1689), .Q(s1[16]) );
  DFFRX1 \s1_reg[10]  ( .D(n1173), .CK(clk), .RN(n1689), .Q(s1[10]) );
  DFFRX1 \s1_reg[9]  ( .D(n1172), .CK(clk), .RN(n1689), .Q(N326) );
  DFFRX1 \s1_reg[8]  ( .D(n1171), .CK(clk), .RN(n1689), .Q(s1[8]) );
  DFFRX1 \s2_reg[23]  ( .D(n1168), .CK(clk), .RN(n1690), .Q(s2[23]) );
  DFFRX1 \s4_reg[23]  ( .D(n1132), .CK(clk), .RN(n1668), .Q(s4[23]) );
  DFFRX1 \s4_reg[22]  ( .D(n1131), .CK(clk), .RN(n1668), .Q(s4[22]) );
  DFFRX1 \s4_reg[21]  ( .D(n1130), .CK(clk), .RN(n1668), .Q(s4[21]) );
  DFFRX1 \s4_reg[20]  ( .D(n1129), .CK(clk), .RN(n1668), .Q(s4[20]) );
  DFFRX1 \ss0_reg[23]  ( .D(n1090), .CK(clk), .RN(n1671), .Q(ss0[23]) );
  DFFRX1 \ss2_reg[22]  ( .D(n1088), .CK(clk), .RN(n1672), .Q(ss2[22]), .QN(
        n1417) );
  DFFRX1 \ss2_reg[21]  ( .D(n1084), .CK(clk), .RN(n1672), .Q(ss2[21]), .QN(
        n1421) );
  DFFRX1 \ss2_reg[20]  ( .D(n1080), .CK(clk), .RN(n1672), .Q(ss2[20]), .QN(
        n1420) );
  DFFRX1 \ss2_reg[19]  ( .D(n1076), .CK(clk), .RN(n1673), .Q(ss2[19]), .QN(
        n1426) );
  DFFRX1 \s4_reg[7]  ( .D(n1116), .CK(clk), .RN(n1669), .Q(s4[7]) );
  DFFRX1 \s4_reg[24]  ( .D(n1133), .CK(clk), .RN(n1668), .Q(s4[24]) );
  DFFRX1 \s5_reg[24]  ( .D(n1115), .CK(clk), .RN(n1669), .Q(s5[24]) );
  DFFRX1 \ss1_reg[22]  ( .D(n1087), .CK(clk), .RN(n1672), .Q(n1321), .QN(n1364) );
  DFFRX1 \ss1_reg[21]  ( .D(n1083), .CK(clk), .RN(n1672), .Q(n1317), .QN(n1365) );
  DFFRX1 \ss1_reg[20]  ( .D(n1079), .CK(clk), .RN(n1672), .Q(n1312), .QN(n1363) );
  DFFRX1 \ss1_reg[19]  ( .D(n1075), .CK(clk), .RN(n1673), .Q(n1335), .QN(n1362) );
  DFFRX1 \ss1_reg[18]  ( .D(n1071), .CK(clk), .RN(n1673), .Q(n1320), .QN(n1361) );
  DFFRX1 \ss1_reg[17]  ( .D(n1067), .CK(clk), .RN(n1673), .Q(n1311), .QN(n1360) );
  DFFRX1 \s3_reg[24]  ( .D(n1151), .CK(clk), .RN(n1691), .Q(s3[24]) );
  DFFRX1 \s5_reg[7]  ( .D(n1098), .CK(clk), .RN(n1671), .Q(s5[7]) );
  DFFRX1 \s5_reg[8]  ( .D(n1099), .CK(clk), .RN(n1671), .Q(s5[8]) );
  DFFRX1 \s4_reg[10]  ( .D(n1119), .CK(clk), .RN(n1669), .Q(s4[10]) );
  DFFRX1 \ss3_reg[23]  ( .D(n1093), .CK(clk), .RN(n1671), .Q(ss3[23]), .QN(
        n1411) );
  DFFRX1 \ss3_reg[22]  ( .D(n1089), .CK(clk), .RN(n1671), .Q(ss3[22]), .QN(
        n1410) );
  DFFRX1 \ss0_reg[22]  ( .D(n1086), .CK(clk), .RN(n1672), .Q(n1322) );
  DFFRX1 \ss3_reg[21]  ( .D(n1085), .CK(clk), .RN(n1672), .Q(ss3[21]), .QN(
        n1433) );
  DFFRX1 \ss3_reg[20]  ( .D(n1081), .CK(clk), .RN(n1672), .Q(ss3[20]), .QN(
        n1432) );
  DFFRX1 \ss3_reg[19]  ( .D(n1077), .CK(clk), .RN(n1672), .Q(ss3[19]), .QN(
        n1431) );
  DFFRX1 \ss1_reg[7]  ( .D(n1027), .CK(clk), .RN(n1677), .Q(ss1[7]), .QN(n1397) );
  DFFRX1 \ss1_reg[6]  ( .D(n1023), .CK(clk), .RN(n1677), .Q(ss1[6]), .QN(n1447) );
  DFFRX1 \ss1_reg[5]  ( .D(n1019), .CK(clk), .RN(n1677), .Q(ss1[5]), .QN(n1445) );
  DFFRX1 \ss1_reg[4]  ( .D(n1015), .CK(clk), .RN(n1678), .Q(ss1[4]), .QN(n1452) );
  DFFRX1 \ss1_reg[3]  ( .D(n1011), .CK(clk), .RN(n1678), .Q(ss1[3]), .QN(n1454) );
  DFFRX1 \ss1_reg[2]  ( .D(n1007), .CK(clk), .RN(n1678), .Q(ss1[2]), .QN(n1450) );
  DFFRX1 \s1_reg[14]  ( .D(n1177), .CK(clk), .RN(n1689), .Q(s1[14]), .QN(n1306) );
  DFFRX1 \s3_reg[21]  ( .D(n1148), .CK(clk), .RN(n1673), .Q(s3[21]) );
  DFFRX1 \s3_reg[20]  ( .D(n1147), .CK(clk), .RN(n1667), .Q(s3[20]) );
  DFFRX1 \s3_reg[19]  ( .D(n1146), .CK(clk), .RN(n1667), .Q(s3[19]) );
  DFFRX1 \s3_reg[18]  ( .D(n1145), .CK(clk), .RN(n1667), .Q(s3[18]), .QN(n1302) );
  DFFRX1 \s3_reg[17]  ( .D(n1144), .CK(clk), .RN(n1667), .Q(s3[17]), .QN(n1305) );
  DFFRX1 \s3_reg[16]  ( .D(n1143), .CK(clk), .RN(n1667), .Q(s3[16]) );
  DFFRX1 \s1_reg[15]  ( .D(n1178), .CK(clk), .RN(n1689), .Q(s1[15]) );
  DFFRX1 \s1_reg[12]  ( .D(n1175), .CK(clk), .RN(n1689), .Q(s1[12]) );
  DFFRX1 \s1_reg[11]  ( .D(n1174), .CK(clk), .RN(n1689), .Q(s1[11]) );
  DFFRX1 \s2_reg[22]  ( .D(n1167), .CK(clk), .RN(n1690), .Q(s2[22]) );
  DFFRX1 \s2_reg[21]  ( .D(n1166), .CK(clk), .RN(n1690), .Q(s2[21]) );
  DFFRX1 \s2_reg[20]  ( .D(n1165), .CK(clk), .RN(n1690), .Q(s2[20]) );
  DFFRX1 \s2_reg[19]  ( .D(n1164), .CK(clk), .RN(n1690), .Q(s2[19]) );
  DFFRX1 \s2_reg[18]  ( .D(n1163), .CK(clk), .RN(n1690), .Q(s2[18]) );
  DFFRX1 \s3_reg[23]  ( .D(n1150), .CK(clk), .RN(n1691), .Q(s3[23]) );
  DFFRX1 \s3_reg[22]  ( .D(n1149), .CK(clk), .RN(n1691), .Q(s3[22]) );
  DFFRX1 \s3_reg[14]  ( .D(n1141), .CK(clk), .RN(n1667), .Q(s3[14]) );
  DFFRX1 \s3_reg[13]  ( .D(n1140), .CK(clk), .RN(n1667), .Q(s3[13]) );
  DFFRX1 \s3_reg[12]  ( .D(n1139), .CK(clk), .RN(n1667), .Q(s3[12]) );
  DFFRX1 \s3_reg[11]  ( .D(n1138), .CK(clk), .RN(n1667), .Q(s3[11]) );
  DFFRX1 \s3_reg[10]  ( .D(n1137), .CK(clk), .RN(n1667), .Q(s3[10]) );
  DFFRX1 \s4_reg[19]  ( .D(n1128), .CK(clk), .RN(n1668), .Q(s4[19]) );
  DFFRX1 \s4_reg[18]  ( .D(n1127), .CK(clk), .RN(n1668), .Q(s4[18]) );
  DFFRX1 \s4_reg[17]  ( .D(n1126), .CK(clk), .RN(n1668), .Q(s4[17]) );
  DFFRX1 \s4_reg[16]  ( .D(n1125), .CK(clk), .RN(n1668), .Q(s4[16]) );
  DFFRX1 \s4_reg[15]  ( .D(n1124), .CK(clk), .RN(n1669), .Q(s4[15]) );
  DFFRX1 \s4_reg[14]  ( .D(n1123), .CK(clk), .RN(n1669), .Q(s4[14]) );
  DFFRX1 \s4_reg[13]  ( .D(n1122), .CK(clk), .RN(n1669), .Q(s4[13]) );
  DFFRX1 \s4_reg[12]  ( .D(n1121), .CK(clk), .RN(n1669), .Q(s4[12]) );
  DFFRX1 \s4_reg[11]  ( .D(n1120), .CK(clk), .RN(n1669), .Q(s4[11]) );
  DFFRX1 \ss2_reg[18]  ( .D(n1072), .CK(clk), .RN(n1673), .Q(ss2[18]), .QN(
        n1425) );
  DFFRX1 \ss2_reg[17]  ( .D(n1068), .CK(clk), .RN(n1673), .Q(ss2[17]), .QN(
        n1424) );
  DFFRX1 \ss2_reg[16]  ( .D(n1064), .CK(clk), .RN(n1674), .Q(ss2[16]), .QN(
        n1423) );
  DFFRX1 \ss2_reg[15]  ( .D(n1060), .CK(clk), .RN(n1674), .Q(ss2[15]), .QN(
        n1422) );
  DFFRX1 \ss2_reg[14]  ( .D(n1056), .CK(clk), .RN(n1674), .Q(ss2[14]), .QN(
        n1419) );
  DFFRX1 \ss1_reg[10]  ( .D(n1039), .CK(clk), .RN(n1676), .Q(ss1[10]), .QN(
        n1413) );
  DFFRX1 \ss1_reg[9]  ( .D(n1035), .CK(clk), .RN(n1676), .Q(ss1[9]), .QN(n1451) );
  DFFRX1 \ss1_reg[8]  ( .D(n1031), .CK(clk), .RN(n1676), .Q(ss1[8]), .QN(n1427) );
  DFFRX1 \s5_reg[9]  ( .D(n1100), .CK(clk), .RN(n1671), .Q(N4412) );
  DFFRX1 \ss3_reg[24]  ( .D(n1097), .CK(clk), .RN(n1671), .Q(ss3[24]), .QN(
        n1310) );
  DFFRX1 \ss0_reg[21]  ( .D(n1082), .CK(clk), .RN(n1672), .Q(n1333), .QN(n1357) );
  DFFRX1 \ss0_reg[20]  ( .D(n1078), .CK(clk), .RN(n1672), .Q(n1331), .QN(n1356) );
  DFFRX1 \ss0_reg[19]  ( .D(n1074), .CK(clk), .RN(n1673), .Q(n1330), .QN(n1355) );
  DFFRX1 \ss0_reg[18]  ( .D(n1070), .CK(clk), .RN(n1673), .Q(n1329), .QN(n1350) );
  DFFRX1 \ss1_reg[16]  ( .D(n1063), .CK(clk), .RN(n1674), .Q(n1308), .QN(n1359) );
  DFFRX1 \ss1_reg[15]  ( .D(n1059), .CK(clk), .RN(n1674), .Q(n1315), .QN(n1358) );
  DFFRX1 \ss1_reg[14]  ( .D(n1055), .CK(clk), .RN(n1674), .Q(n1307), .QN(n1353) );
  DFFRX1 \ss1_reg[13]  ( .D(n1051), .CK(clk), .RN(n1675), .Q(n1309), .QN(n1352) );
  DFFRX1 \ss1_reg[12]  ( .D(n1047), .CK(clk), .RN(n1675), .Q(n1332), .QN(n1351) );
  DFFRX1 \ss1_reg[11]  ( .D(n1043), .CK(clk), .RN(n1675), .Q(n1319), .QN(n1354) );
  DFFRX1 \s4_reg[8]  ( .D(n1117), .CK(clk), .RN(n1669), .Q(s4[8]) );
  DFFRX1 \s3_reg[7]  ( .D(n1134), .CK(clk), .RN(n1668), .Q(s3[7]) );
  DFFRX1 \ss4_reg[24]  ( .D(n1228), .CK(clk), .RN(n1685), .Q(n1316), .QN(n1334) );
  DFFRX1 \ss3_reg[18]  ( .D(n1073), .CK(clk), .RN(n1673), .Q(ss3[18]), .QN(
        n1430) );
  DFFRX1 \ss3_reg[17]  ( .D(n1069), .CK(clk), .RN(n1673), .Q(ss3[17]), .QN(
        n1429) );
  DFFRX1 \ss3_reg[16]  ( .D(n1065), .CK(clk), .RN(n1674), .Q(ss3[16]), .QN(
        n1435) );
  DFFRX1 \ss3_reg[15]  ( .D(n1061), .CK(clk), .RN(n1674), .Q(ss3[15]), .QN(
        n1434) );
  DFFRX1 \ss3_reg[14]  ( .D(n1057), .CK(clk), .RN(n1674), .Q(ss3[14]), .QN(
        n1412) );
  DFFRX1 \ss3_reg[13]  ( .D(n1053), .CK(clk), .RN(n1675), .Q(ss3[13]), .QN(
        n1416) );
  DFFRX1 \ss2_reg[11]  ( .D(n1044), .CK(clk), .RN(n1675), .Q(ss2[11]), .QN(
        n1407) );
  DFFRX1 \ss2_reg[10]  ( .D(n1040), .CK(clk), .RN(n1676), .Q(ss2[10]), .QN(
        n1406) );
  DFFRX1 \ss2_reg[9]  ( .D(n1036), .CK(clk), .RN(n1676), .Q(ss2[9]), .QN(n1409) );
  DFFRX1 \ss0_reg[6]  ( .D(n1923), .CK(clk), .RN(n1677), .Q(ss0[6]) );
  DFFRX1 \ss0_reg[5]  ( .D(n1924), .CK(clk), .RN(n1677), .Q(ss0[5]) );
  DFFRX1 \ss0_reg[4]  ( .D(n1925), .CK(clk), .RN(n1678), .Q(ss0[4]) );
  DFFRX1 \ss0_reg[3]  ( .D(n1926), .CK(clk), .RN(n1678), .Q(ss0[3]) );
  DFFRX1 \ss0_reg[2]  ( .D(n1927), .CK(clk), .RN(n1678), .Q(ss0[2]) );
  DFFRX1 \ss1_reg[1]  ( .D(n1003), .CK(clk), .RN(n1679), .Q(ss1[1]), .QN(n1453) );
  DFFRX1 \s5_reg[10]  ( .D(n1101), .CK(clk), .RN(n1670), .Q(s5[10]) );
  DFFRX1 \s2_reg[15]  ( .D(n1160), .CK(clk), .RN(n1690), .Q(s2[15]) );
  DFFRX1 \s2_reg[14]  ( .D(n1159), .CK(clk), .RN(n1690), .Q(s2[14]), .QN(n1303) );
  DFFRX1 \s2_reg[17]  ( .D(n1162), .CK(clk), .RN(n1690), .Q(s2[17]) );
  DFFRX1 \s2_reg[16]  ( .D(n1161), .CK(clk), .RN(n1690), .Q(s2[16]) );
  DFFRX1 \s2_reg[13]  ( .D(n1158), .CK(clk), .RN(n1691), .Q(s2[13]) );
  DFFRX1 \s2_reg[12]  ( .D(n1157), .CK(clk), .RN(n1691), .Q(s2[12]) );
  DFFRX1 \s2_reg[11]  ( .D(n1156), .CK(clk), .RN(n1691), .Q(s2[11]) );
  DFFRX1 \s2_reg[10]  ( .D(n1155), .CK(clk), .RN(n1691), .Q(s2[10]) );
  DFFRX1 \s2_reg[9]  ( .D(n1154), .CK(clk), .RN(n1691), .Q(N828) );
  DFFRX1 \s3_reg[15]  ( .D(n1142), .CK(clk), .RN(n1667), .Q(s3[15]) );
  DFFRX1 \ss2_reg[13]  ( .D(n1052), .CK(clk), .RN(n1675), .Q(ss2[13]), .QN(
        n1440) );
  DFFRX1 \ss2_reg[12]  ( .D(n1048), .CK(clk), .RN(n1675), .Q(ss2[12]), .QN(
        n1446) );
  DFFRX1 \ss0_reg[7]  ( .D(n1026), .CK(clk), .RN(n1677), .Q(ss0[7]), .QN(n1444) );
  DFFRX1 \s5_reg[11]  ( .D(n1102), .CK(clk), .RN(n1670), .Q(s5[11]) );
  DFFRX1 \ss0_reg[17]  ( .D(n1066), .CK(clk), .RN(n1673), .Q(n1328), .QN(n1349) );
  DFFRX1 \ss0_reg[16]  ( .D(n1062), .CK(clk), .RN(n1674), .Q(n1326), .QN(n1348) );
  DFFRX1 \ss0_reg[15]  ( .D(n1058), .CK(clk), .RN(n1674), .Q(n1324), .QN(n1347) );
  DFFRX1 \ss0_reg[14]  ( .D(n1054), .CK(clk), .RN(n1674), .Q(n1323), .QN(n1346) );
  DFFRX1 \ss0_reg[13]  ( .D(n1050), .CK(clk), .RN(n1675), .Q(n1327), .QN(n1345) );
  DFFRX1 \ss0_reg[12]  ( .D(n1046), .CK(clk), .RN(n1675), .Q(n1314), .QN(n1344) );
  DFFRX1 \ss0_reg[11]  ( .D(n1042), .CK(clk), .RN(n1675), .Q(n1325), .QN(n1343) );
  DFFRX1 \ss0_reg[10]  ( .D(n1038), .CK(clk), .RN(n1676), .Q(n1318), .QN(n1342) );
  DFFRX1 \ss4_reg[6]  ( .D(n1250), .CK(clk), .RN(n1683), .Q(ss4[6]), .QN(n1438) );
  DFFRX1 \ss3_reg[12]  ( .D(n1049), .CK(clk), .RN(n1675), .Q(ss3[12]), .QN(
        n1442) );
  DFFRX1 \ss3_reg[11]  ( .D(n1045), .CK(clk), .RN(n1675), .Q(ss3[11]), .QN(
        n1449) );
  DFFRX1 \ss3_reg[10]  ( .D(n1041), .CK(clk), .RN(n1676), .Q(ss3[10]), .QN(
        n1448) );
  DFFRX1 \ss3_reg[9]  ( .D(n1037), .CK(clk), .RN(n1676), .Q(ss3[9]), .QN(n1441) );
  DFFRX1 \ss2_reg[8]  ( .D(n1032), .CK(clk), .RN(n1676), .Q(ss2[8]), .QN(n1408) );
  DFFRX1 \ss2_reg[7]  ( .D(n1028), .CK(clk), .RN(n1677), .Q(ss2[7]), .QN(n1405) );
  DFFRX1 \ss2_reg[6]  ( .D(n1916), .CK(clk), .RN(n1677), .Q(ss2[6]) );
  DFFRX1 \ss2_reg[5]  ( .D(n1917), .CK(clk), .RN(n1677), .Q(ss2[5]) );
  DFFRX1 \ss2_reg[4]  ( .D(n1918), .CK(clk), .RN(n1678), .Q(ss2[4]) );
  DFFRX1 \ss2_reg[3]  ( .D(n1919), .CK(clk), .RN(n1678), .Q(ss2[3]) );
  DFFRX1 \ss0_reg[9]  ( .D(n1034), .CK(clk), .RN(n1676), .Q(ss0[9]), .QN(n1414) );
  DFFRX1 \ss0_reg[8]  ( .D(n1030), .CK(clk), .RN(n1676), .Q(ss0[8]), .QN(n1418) );
  DFFRX1 \ss4_reg[0]  ( .D(n1244), .CK(clk), .RN(n1683), .Q(ss4[0]), .QN(n1428) );
  DFFRX1 \ss4_reg[5]  ( .D(n1249), .CK(clk), .RN(n1683), .Q(ss4[5]), .QN(n1437) );
  DFFRX1 \ss4_reg[4]  ( .D(n1248), .CK(clk), .RN(n1683), .Q(ss4[4]), .QN(n1436) );
  DFFRX1 \ss4_reg[3]  ( .D(n1247), .CK(clk), .RN(n1683), .Q(ss4[3]), .QN(n1439) );
  DFFRX1 \ss3_reg[0]  ( .D(n1001), .CK(clk), .RN(n1679), .Q(ss3[0]), .QN(n1458) );
  TLATX1 \Ynn_reg[14]  ( .G(WEN), .D(N6401), .Q(Yn[14]) );
  TLATX1 \Ynn_reg[13]  ( .G(WEN), .D(N6400), .Q(Yn[13]) );
  TLATX1 \Ynn_reg[12]  ( .G(WEN), .D(N6399), .Q(Yn[12]) );
  TLATX1 \Ynn_reg[11]  ( .G(WEN), .D(N6398), .Q(Yn[11]) );
  TLATX1 \Ynn_reg[10]  ( .G(WEN), .D(N6397), .Q(Yn[10]) );
  TLATX1 \Ynn_reg[9]  ( .G(WEN), .D(N6396), .Q(Yn[9]) );
  TLATX1 \Ynn_reg[8]  ( .G(WEN), .D(N6395), .Q(Yn[8]) );
  TLATX1 \Ynn_reg[7]  ( .G(WEN), .D(N6394), .Q(Yn[7]) );
  TLATX1 \Ynn_reg[6]  ( .G(WEN), .D(N6393), .Q(Yn[6]) );
  TLATX1 \Ynn_reg[5]  ( .G(WEN), .D(N6392), .Q(Yn[5]) );
  TLATX1 \Ynn_reg[4]  ( .G(WEN), .D(N6391), .Q(Yn[4]) );
  TLATX1 \Ynn_reg[3]  ( .G(WEN), .D(N6390), .Q(Yn[3]) );
  TLATX1 \Ynn_reg[2]  ( .G(WEN), .D(N6389), .Q(Yn[2]) );
  TLATX1 \Ynn_reg[1]  ( .G(WEN), .D(N6388), .Q(Yn[1]) );
  TLATX1 \Ynn_reg[0]  ( .G(WEN), .D(N6387), .Q(Yn[0]) );
  DFFRX1 \s0_reg[7]  ( .D(n1188), .CK(clk), .RN(n1688), .Q(s0[7]) );
  DFFRX1 \s1_reg[7]  ( .D(n1170), .CK(clk), .RN(n1690), .Q(s1[7]) );
  DFFRX1 \s5_reg[23]  ( .D(n1114), .CK(clk), .RN(n1669), .Q(s5[23]) );
  DFFRX1 \s5_reg[22]  ( .D(n1113), .CK(clk), .RN(n1669), .Q(s5[22]) );
  DFFRX1 \s5_reg[21]  ( .D(n1112), .CK(clk), .RN(n1670), .Q(s5[21]) );
  DFFRX1 \s4_reg[9]  ( .D(n1118), .CK(clk), .RN(n1669), .Q(N2806) );
  DFFRX1 \s2_reg[7]  ( .D(n1152), .CK(clk), .RN(n1691), .Q(s2[7]) );
  DFFRX1 \s3_reg[8]  ( .D(n1135), .CK(clk), .RN(n1668), .Q(s3[8]) );
  DFFRX1 \s5_reg[20]  ( .D(n1111), .CK(clk), .RN(n1670), .Q(s5[20]) );
  DFFRX1 \s5_reg[19]  ( .D(n1110), .CK(clk), .RN(n1670), .Q(s5[19]) );
  DFFRX1 \s5_reg[18]  ( .D(n1109), .CK(clk), .RN(n1670), .Q(s5[18]) );
  DFFRX1 \s5_reg[17]  ( .D(n1108), .CK(clk), .RN(n1670), .Q(s5[17]) );
  DFFRX1 \s5_reg[16]  ( .D(n1107), .CK(clk), .RN(n1670), .Q(s5[16]) );
  DFFRX1 \ss3_reg[6]  ( .D(n1025), .CK(clk), .RN(n1677), .Q(ss3[6]), .QN(n1461) );
  DFFRX1 \ss3_reg[5]  ( .D(n1021), .CK(clk), .RN(n1677), .Q(ss3[5]), .QN(n1460) );
  DFFRX1 \s5_reg[12]  ( .D(n1103), .CK(clk), .RN(n1670), .Q(s5[12]) );
  DFFRX1 \s5_reg[15]  ( .D(n1106), .CK(clk), .RN(n1670), .Q(s5[15]) );
  DFFRX1 \s5_reg[14]  ( .D(n1105), .CK(clk), .RN(n1670), .Q(s5[14]) );
  DFFRX1 \s5_reg[13]  ( .D(n1104), .CK(clk), .RN(n1670), .Q(s5[13]) );
  DFFRX1 \ss0_reg[0]  ( .D(n1929), .CK(clk), .RN(n1679), .Q(ss0[0]) );
  DFFRX1 \ss0_reg[1]  ( .D(n1928), .CK(clk), .RN(n1679), .Q(ss0[1]) );
  DFFRX1 \ss1_reg[0]  ( .D(n999), .CK(clk), .RN(n1679), .Q(ss1[0]), .QN(n1372)
         );
  DFFRX1 \ss4_reg[2]  ( .D(n1246), .CK(clk), .RN(n1683), .Q(ss4[2]), .QN(n1415) );
  DFFRX1 \ss4_reg[1]  ( .D(n1245), .CK(clk), .RN(n1683), .Q(ss4[1]), .QN(n1396) );
  DFFRX1 \ss3_reg[4]  ( .D(n1017), .CK(clk), .RN(n1678), .Q(ss3[4]), .QN(n1459) );
  DFFRX1 \ss3_reg[3]  ( .D(n1013), .CK(clk), .RN(n1678), .Q(ss3[3]), .QN(n1462) );
  DFFRX1 \ss2_reg[1]  ( .D(n1921), .CK(clk), .RN(n1679), .Q(ss2[1]) );
  DFFRX1 \ss3_reg[1]  ( .D(n1005), .CK(clk), .RN(n1679), .Q(ss3[1]), .QN(n1455) );
  DFFRX1 \ss2_reg[0]  ( .D(n1922), .CK(clk), .RN(n1679), .Q(ss2[0]) );
  DFFRX1 \ss3_reg[2]  ( .D(n1009), .CK(clk), .RN(n1678), .Q(ss3[2]), .QN(n1401) );
  DFFRX1 \ss2_reg[2]  ( .D(n1920), .CK(clk), .RN(n1678), .Q(ss2[2]) );
  TLATX1 Fin_reg ( .G(N6383), .D(n1932), .Q(Finish) );
  TLATX1 \Ynn_reg[15]  ( .G(WEN), .D(N6402), .Q(Yn[15]) );
  DFFSX1 \state_reg[0]  ( .D(n1298), .CK(clk), .SN(n1692), .Q(state[0]), .QN(
        n1367) );
  DFFRX1 \s0_reg[24]  ( .D(n1205), .CK(clk), .RN(n1687), .Q(s0[24]) );
  DFFRX1 \s1_reg[24]  ( .D(n1187), .CK(clk), .RN(n1688), .Q(s1[24]) );
  DFFRX1 \ss4_reg[10]  ( .D(n1239), .CK(clk), .RN(n1684), .Q(ss4[10]), .QN(
        n1403) );
  DFFRX1 \ss4_reg[11]  ( .D(n1238), .CK(clk), .RN(n1684), .Q(ss4[11]), .QN(
        n1404) );
  DFFRX1 \ss4_reg[12]  ( .D(n1237), .CK(clk), .RN(n1684), .Q(ss4[12]), .QN(
        n1402) );
  DFFRX1 \s2_reg[24]  ( .D(n1169), .CK(clk), .RN(n1690), .Q(s2[24]) );
  DFFRX1 \ss4_reg[23]  ( .D(n1227), .CK(clk), .RN(n1685), .Q(ss4[23]), .QN(
        n1340) );
  DFFRX1 \ss4_reg[22]  ( .D(n1226), .CK(clk), .RN(n1685), .Q(ss4[22]), .QN(
        n1341) );
  DFFRX1 \ss4_reg[21]  ( .D(n1243), .CK(clk), .RN(n1683), .Q(ss4[21]), .QN(
        n1377) );
  DFFRX1 \ss4_reg[20]  ( .D(n1229), .CK(clk), .RN(n1685), .Q(ss4[20]), .QN(
        n1376) );
  DFFRX1 \ss4_reg[8]  ( .D(n1241), .CK(clk), .RN(n1684), .Q(ss4[8]), .QN(n1400) );
  DFFRX1 \ss4_reg[9]  ( .D(n1240), .CK(clk), .RN(n1684), .Q(ss4[9]), .QN(n1399) );
  DFFRX1 \ss4_reg[7]  ( .D(n1242), .CK(clk), .RN(n1683), .Q(ss4[7]), .QN(n1398) );
  DFFRX1 \ss4_reg[13]  ( .D(n1236), .CK(clk), .RN(n1684), .Q(ss4[13]), .QN(
        n1371) );
  DFFRX1 \ss3_reg[8]  ( .D(n1033), .CK(clk), .RN(n1676), .Q(ss3[8]), .QN(n1373) );
  DFFRX1 \ss4_reg[15]  ( .D(n1234), .CK(clk), .RN(n1684), .Q(ss4[15]), .QN(
        n1379) );
  DFFRX1 \ss4_reg[16]  ( .D(n1233), .CK(clk), .RN(n1684), .Q(ss4[16]), .QN(
        n1380) );
  DFFRX1 \ss4_reg[17]  ( .D(n1232), .CK(clk), .RN(n1684), .Q(ss4[17]), .QN(
        n1378) );
  DFFRX1 \ss4_reg[18]  ( .D(n1231), .CK(clk), .RN(n1684), .Q(ss4[18]), .QN(
        n1374) );
  DFFRX1 \ss4_reg[19]  ( .D(n1230), .CK(clk), .RN(n1684), .Q(ss4[19]), .QN(
        n1375) );
  DFFRX1 \ss4_reg[14]  ( .D(n1235), .CK(clk), .RN(n1684), .Q(ss4[14]), .QN(
        n1370) );
  DFFRX1 \ss3_reg[7]  ( .D(n1029), .CK(clk), .RN(n1677), .Q(ss3[7]), .QN(n1463) );
  DFFRX1 \s2_reg[8]  ( .D(n1153), .CK(clk), .RN(n1691), .Q(s2[8]) );
  DFFRX1 \s3_reg[9]  ( .D(n1136), .CK(clk), .RN(n1668), .Q(N1630) );
  NAND2X1 U781 ( .A(n1695), .B(n727), .Y(n1337) );
  NAND2X1 U782 ( .A(n1695), .B(n581), .Y(n1338) );
  NAND2X1 U783 ( .A(n1695), .B(n873), .Y(n1339) );
  CLKINVX1 U784 ( .A(n1715), .Y(n1713) );
  CLKINVX1 U785 ( .A(n1716), .Y(n1712) );
  CLKINVX1 U786 ( .A(n1479), .Y(n1482) );
  CLKINVX1 U787 ( .A(n1479), .Y(n1480) );
  CLKINVX1 U788 ( .A(n1476), .Y(n1477) );
  CLKINVX1 U789 ( .A(n1476), .Y(n1478) );
  CLKINVX1 U790 ( .A(n1471), .Y(n1472) );
  CLKINVX1 U791 ( .A(n1479), .Y(n1481) );
  CLKINVX1 U792 ( .A(n1474), .Y(n1475) );
  CLKINVX1 U793 ( .A(n1471), .Y(n1473) );
  ADDFXL U794 ( .A(n1745), .B(n1737), .CI(N1669), .CO(N1670) );
  ADDFXL U795 ( .A(n1730), .B(n1725), .CI(N2845), .CO(N2846) );
  CLKINVX1 U796 ( .A(n1310), .Y(n1464) );
  ADDFXL U797 ( .A(n1730), .B(n1726), .CI(N2824), .CO(N2825) );
  ADDFXL U798 ( .A(n1745), .B(n1737), .CI(N1648), .CO(N1649) );
  CLKINVX1 U799 ( .A(n1468), .Y(n1469) );
  ADDFXL U800 ( .A(n1780), .B(n1778), .CI(N867), .CO(N868) );
  CLKINVX1 U801 ( .A(n1468), .Y(n1470) );
  CLKINVX1 U802 ( .A(n1313), .Y(n1466) );
  CLKINVX1 U803 ( .A(n1700), .Y(n1471) );
  CLKINVX1 U804 ( .A(n1313), .Y(n1465) );
  CLKINVX1 U805 ( .A(n1313), .Y(n1467) );
  CLKINVX1 U806 ( .A(n1703), .Y(n1479) );
  CLKINVX1 U807 ( .A(n1702), .Y(n1476) );
  ADDFXL U808 ( .A(n1817), .B(n1812), .CI(N344), .CO(N345) );
  ADDFXL U809 ( .A(n1780), .B(n1778), .CI(N846), .CO(N847) );
  CLKINVX1 U810 ( .A(n1701), .Y(n1474) );
  CLKINVX1 U811 ( .A(n873), .Y(n1936) );
  CLKINVX1 U812 ( .A(n543), .Y(n1937) );
  CLKINVX1 U813 ( .A(n549), .Y(n1939) );
  CLKINVX1 U814 ( .A(n939), .Y(n1945) );
  ADDFXL U815 ( .A(N4431), .B(n1720), .CI(N4451), .CO(N4452) );
  CLKBUFX3 U816 ( .A(n1735), .Y(n1745) );
  CLKBUFX3 U817 ( .A(n1736), .Y(n1746) );
  CLKBUFX3 U818 ( .A(n1765), .Y(n1771) );
  CLKBUFX3 U819 ( .A(n1724), .Y(n1731) );
  CLKBUFX3 U820 ( .A(n1723), .Y(n1730) );
  CLKINVX1 U821 ( .A(n1698), .Y(n1468) );
  CLKBUFX3 U822 ( .A(n1723), .Y(n1728) );
  CLKBUFX3 U823 ( .A(n1733), .Y(n1738) );
  CLKBUFX3 U824 ( .A(n1768), .Y(n1779) );
  CLKBUFX3 U825 ( .A(n1805), .Y(n1817) );
  CLKBUFX3 U826 ( .A(n1805), .Y(n1816) );
  CLKBUFX3 U827 ( .A(n1768), .Y(n1780) );
  CLKBUFX3 U828 ( .A(n1736), .Y(n1747) );
  CLKBUFX3 U829 ( .A(n1735), .Y(n1744) );
  CLKBUFX3 U830 ( .A(n1722), .Y(n1726) );
  CLKBUFX3 U831 ( .A(n1802), .Y(n1807) );
  CLKBUFX3 U832 ( .A(n1722), .Y(n1725) );
  CLKBUFX3 U833 ( .A(n1733), .Y(n1739) );
  CLKBUFX3 U834 ( .A(n1723), .Y(n1729) );
  CLKBUFX3 U835 ( .A(n1803), .Y(n1810) );
  CLKBUFX3 U836 ( .A(n1806), .Y(n1819) );
  CLKBUFX3 U837 ( .A(n1734), .Y(n1741) );
  CLKBUFX3 U838 ( .A(n1733), .Y(n1737) );
  CLKBUFX3 U839 ( .A(n1766), .Y(n1775) );
  CLKBUFX3 U840 ( .A(n1734), .Y(n1742) );
  CLKBUFX3 U841 ( .A(n1734), .Y(n1740) );
  CLKBUFX3 U842 ( .A(n1803), .Y(n1811) );
  CLKBUFX3 U843 ( .A(n1735), .Y(n1743) );
  CLKBUFX3 U844 ( .A(n1765), .Y(n1770) );
  CLKBUFX3 U845 ( .A(n1722), .Y(n1727) );
  CLKBUFX3 U846 ( .A(n1805), .Y(n1818) );
  CLKBUFX3 U847 ( .A(n1803), .Y(n1812) );
  CLKBUFX3 U848 ( .A(n1802), .Y(n1809) );
  CLKBUFX3 U849 ( .A(n1804), .Y(n1815) );
  CLKBUFX3 U850 ( .A(n1766), .Y(n1774) );
  CLKBUFX3 U851 ( .A(n1765), .Y(n1772) );
  CLKBUFX3 U852 ( .A(n1769), .Y(n1782) );
  CLKBUFX3 U853 ( .A(n1768), .Y(n1781) );
  CLKBUFX3 U854 ( .A(n1804), .Y(n1814) );
  CLKBUFX3 U855 ( .A(n1802), .Y(n1808) );
  CLKBUFX3 U856 ( .A(n1767), .Y(n1778) );
  CLKBUFX3 U857 ( .A(n1766), .Y(n1773) );
  CLKBUFX3 U858 ( .A(n1806), .Y(n1820) );
  CLKBUFX3 U859 ( .A(n1866), .Y(n1857) );
  CLKBUFX3 U860 ( .A(n1767), .Y(n1776) );
  CLKBUFX3 U861 ( .A(n1870), .Y(n1845) );
  CLKBUFX3 U862 ( .A(n1869), .Y(n1848) );
  CLKBUFX3 U863 ( .A(n1804), .Y(n1813) );
  CLKBUFX3 U864 ( .A(n1767), .Y(n1777) );
  CLKBUFX3 U865 ( .A(n1865), .Y(n1859) );
  CLKBUFX3 U866 ( .A(n1864), .Y(n1861) );
  CLKBUFX3 U867 ( .A(n1869), .Y(n1846) );
  CLKBUFX3 U868 ( .A(n1866), .Y(n1856) );
  CLKBUFX3 U869 ( .A(n1867), .Y(n1853) );
  CLKBUFX3 U870 ( .A(n1865), .Y(n1858) );
  CLKBUFX3 U871 ( .A(n1866), .Y(n1855) );
  CLKBUFX3 U872 ( .A(n1869), .Y(n1847) );
  CLKBUFX3 U873 ( .A(n1865), .Y(n1860) );
  CLKBUFX3 U874 ( .A(n1864), .Y(n1863) );
  CLKBUFX3 U875 ( .A(n1867), .Y(n1854) );
  CLKBUFX3 U876 ( .A(n1870), .Y(n1844) );
  CLKBUFX3 U877 ( .A(n1868), .Y(n1850) );
  CLKBUFX3 U878 ( .A(n1868), .Y(n1849) );
  CLKBUFX3 U879 ( .A(n1868), .Y(n1851) );
  CLKBUFX3 U880 ( .A(n1864), .Y(n1862) );
  CLKBUFX3 U881 ( .A(n1867), .Y(n1852) );
  CLKBUFX3 U882 ( .A(n1870), .Y(n1843) );
  CLKINVX1 U883 ( .A(n620), .Y(n1943) );
  NAND2X1 U884 ( .A(n947), .B(n949), .Y(n727) );
  CLKINVX1 U885 ( .A(n1695), .Y(n1696) );
  CLKBUFX3 U886 ( .A(ss0[3]), .Y(n1497) );
  CLKBUFX3 U887 ( .A(ss0[8]), .Y(n1513) );
  CLKBUFX3 U888 ( .A(ss2[7]), .Y(n1512) );
  CLKBUFX3 U889 ( .A(ss2[8]), .Y(n1517) );
  CLKBUFX3 U890 ( .A(ss0[6]), .Y(n1506) );
  CLKBUFX3 U891 ( .A(ss0[4]), .Y(n1500) );
  CLKBUFX3 U892 ( .A(ss2[10]), .Y(n1526) );
  CLKBUFX3 U893 ( .A(ss0[5]), .Y(n1503) );
  CLKBUFX3 U894 ( .A(ss2[9]), .Y(n1522) );
  CLKBUFX3 U895 ( .A(s2[12]), .Y(n1624) );
  CLKBUFX3 U896 ( .A(s2[11]), .Y(n1623) );
  CLKBUFX3 U897 ( .A(ss2[11]), .Y(n1528) );
  CLKBUFX3 U898 ( .A(s3[15]), .Y(n1585) );
  CLKBUFX3 U899 ( .A(ss1[7]), .Y(n1511) );
  CLKBUFX3 U900 ( .A(s2[16]), .Y(n1749) );
  CLKBUFX3 U901 ( .A(ss1[5]), .Y(n1504) );
  CLKBUFX3 U902 ( .A(s2[13]), .Y(n1625) );
  CLKBUFX3 U903 ( .A(s3[14]), .Y(n1584) );
  CLKBUFX3 U904 ( .A(s3[13]), .Y(n1583) );
  CLKBUFX3 U905 ( .A(ss1[6]), .Y(n1507) );
  CLKBUFX3 U906 ( .A(ss1[4]), .Y(n1501) );
  CLKBUFX3 U907 ( .A(ss3[20]), .Y(n1556) );
  CLKBUFX3 U908 ( .A(ss3[21]), .Y(n1559) );
  CLKBUFX3 U909 ( .A(s3[12]), .Y(n1582) );
  CLKBUFX3 U910 ( .A(ss1[3]), .Y(n1498) );
  CLKBUFX3 U911 ( .A(s2[17]), .Y(n1751) );
  CLKBUFX3 U912 ( .A(s2[18]), .Y(n1753) );
  CLKBUFX3 U913 ( .A(s1[11]), .Y(n1639) );
  CLKBUFX3 U914 ( .A(s3[22]), .Y(n1619) );
  CLKBUFX3 U915 ( .A(s1[16]), .Y(n1786) );
  CLKBUFX3 U916 ( .A(s4[16]), .Y(n1572) );
  CLKBUFX3 U917 ( .A(s1[12]), .Y(n1640) );
  CLKBUFX3 U918 ( .A(s4[17]), .Y(n1573) );
  CLKBUFX3 U919 ( .A(s4[15]), .Y(n1571) );
  CLKBUFX3 U920 ( .A(s4[18]), .Y(n1574) );
  CLKBUFX3 U921 ( .A(s4[19]), .Y(n1575) );
  CLKBUFX3 U922 ( .A(s1[15]), .Y(n1784) );
  CLKBUFX3 U923 ( .A(ss3[22]), .Y(n1562) );
  CLKBUFX3 U924 ( .A(s2[19]), .Y(n1755) );
  CLKBUFX3 U925 ( .A(s2[20]), .Y(n1757) );
  CLKBUFX3 U926 ( .A(s1[17]), .Y(n1788) );
  CLKBUFX3 U927 ( .A(ss0[9]), .Y(n1518) );
  CLKBUFX3 U928 ( .A(ss0[23]), .Y(n1709) );
  CLKBUFX3 U929 ( .A(s3[23]), .Y(n1620) );
  CLKBUFX3 U930 ( .A(s4[20]), .Y(n1576) );
  CLKBUFX3 U931 ( .A(s4[21]), .Y(n1577) );
  CLKBUFX3 U932 ( .A(ss0[23]), .Y(n1708) );
  CLKBUFX3 U933 ( .A(s2[21]), .Y(n1759) );
  CLKBUFX3 U934 ( .A(s2[22]), .Y(n1761) );
  CLKBUFX3 U935 ( .A(s2[23]), .Y(n1763) );
  CLKBUFX3 U936 ( .A(s1[18]), .Y(n1790) );
  CLKBUFX3 U937 ( .A(s1[19]), .Y(n1792) );
  CLKBUFX3 U938 ( .A(s1[20]), .Y(n1794) );
  CLKBUFX3 U939 ( .A(s5[24]), .Y(N4431) );
  CLKBUFX3 U940 ( .A(s5[24]), .Y(n1721) );
  CLKBUFX3 U941 ( .A(s4[23]), .Y(n1579) );
  CLKBUFX3 U942 ( .A(s4[22]), .Y(n1578) );
  CLKBUFX3 U943 ( .A(s5[24]), .Y(n1720) );
  CLKBUFX3 U944 ( .A(s1[21]), .Y(n1796) );
  CLKBUFX3 U945 ( .A(s1[22]), .Y(n1798) );
  CLKBUFX3 U946 ( .A(s1[23]), .Y(n1800) );
  CLKINVX1 U947 ( .A(ss2[24]), .Y(n1699) );
  CLKBUFX3 U948 ( .A(s0[11]), .Y(n1652) );
  CLKBUFX3 U949 ( .A(s0[17]), .Y(n1830) );
  CLKBUFX3 U950 ( .A(s0[16]), .Y(n1828) );
  CLKBUFX3 U951 ( .A(s0[10]), .Y(n1651) );
  CLKBUFX3 U952 ( .A(N150), .Y(n1650) );
  CLKBUFX3 U953 ( .A(s0[18]), .Y(n1832) );
  CLKBUFX3 U954 ( .A(s0[16]), .Y(n1827) );
  CLKBUFX3 U955 ( .A(s0[13]), .Y(n1821) );
  CLKBUFX3 U956 ( .A(s0[14]), .Y(n1823) );
  CLKBUFX3 U957 ( .A(s0[15]), .Y(n1825) );
  CLKBUFX3 U958 ( .A(s0[17]), .Y(n1829) );
  CLKBUFX3 U959 ( .A(s0[18]), .Y(n1831) );
  CLKBUFX3 U960 ( .A(s0[19]), .Y(n1834) );
  CLKBUFX3 U961 ( .A(s0[20]), .Y(n1836) );
  CLKBUFX3 U962 ( .A(s0[21]), .Y(n1838) );
  CLKBUFX3 U963 ( .A(s0[19]), .Y(n1833) );
  CLKBUFX3 U964 ( .A(s0[20]), .Y(n1835) );
  CLKBUFX3 U965 ( .A(s0[21]), .Y(n1837) );
  CLKBUFX3 U966 ( .A(s0[23]), .Y(n1842) );
  CLKBUFX3 U967 ( .A(s0[22]), .Y(n1840) );
  CLKBUFX3 U968 ( .A(s0[22]), .Y(n1839) );
  CLKBUFX3 U969 ( .A(s0[23]), .Y(n1841) );
  NAND2X1 U970 ( .A(state[0]), .B(n952), .Y(n620) );
  NOR2BX1 U971 ( .AN(state[2]), .B(n1369), .Y(n945) );
  NOR2X1 U972 ( .A(state[2]), .B(state[3]), .Y(n944) );
  NOR2BX1 U973 ( .AN(n954), .B(state[0]), .Y(n943) );
  NOR2X1 U974 ( .A(n1369), .B(state[2]), .Y(n949) );
  NOR2BX1 U975 ( .AN(n956), .B(state[0]), .Y(n947) );
  NOR2BX1 U976 ( .AN(state[2]), .B(state[3]), .Y(n946) );
  CLKINVX1 U977 ( .A(rst), .Y(n1930) );
  CLKINVX1 U978 ( .A(n1717), .Y(n1711) );
  NOR2X1 U979 ( .A(n1493), .B(n1945), .Y(n738) );
  NOR2X1 U980 ( .A(n593), .B(n587), .Y(n544) );
  NAND2X1 U981 ( .A(n576), .B(n1695), .Y(n630) );
  CLKBUFX3 U982 ( .A(n1933), .Y(n1693) );
  NOR2X1 U983 ( .A(n1939), .B(n1941), .Y(n559) );
  NOR2X1 U984 ( .A(n1937), .B(n1950), .Y(n576) );
  NAND2X1 U985 ( .A(n1949), .B(n1713), .Y(n845) );
  NAND2X1 U986 ( .A(n1945), .B(n1469), .Y(n745) );
  NAND2X1 U987 ( .A(n1935), .B(n1478), .Y(n795) );
  CLKBUFX3 U988 ( .A(n1933), .Y(n1694) );
  ADDFXL U989 ( .A(n1744), .B(n1737), .CI(N1664), .CO(N1665) );
  ADDFXL U990 ( .A(n1745), .B(n1737), .CI(N1665), .CO(N1666) );
  ADDFXL U991 ( .A(n1745), .B(n1737), .CI(N1666), .CO(N1667) );
  ADDFXL U992 ( .A(n1745), .B(n1737), .CI(N1667), .CO(N1668) );
  ADDFXL U993 ( .A(n1744), .B(n1737), .CI(N1668), .CO(N1669) );
  ADDFXL U994 ( .A(n1590), .B(n1593), .CI(\add_44_root_add_176_41/carry[6] ), 
        .CO(\add_44_root_add_176_41/carry[7] ), .S(N1656) );
  ADDFXL U995 ( .A(n1596), .B(n1599), .CI(\add_44_root_add_176_41/carry[7] ), 
        .CO(\add_44_root_add_176_41/carry[8] ), .S(N1657) );
  ADDFXL U996 ( .A(n1600), .B(n1606), .CI(\add_44_root_add_176_41/carry[8] ), 
        .CO(\add_44_root_add_176_41/carry[9] ), .S(N1658) );
  ADDFXL U997 ( .A(n1605), .B(n1610), .CI(\add_44_root_add_176_41/carry[9] ), 
        .CO(\add_44_root_add_176_41/carry[10] ), .S(N1659) );
  ADDFXL U998 ( .A(n1612), .B(n1616), .CI(\add_44_root_add_176_41/carry[10] ), 
        .CO(\add_44_root_add_176_41/carry[11] ), .S(N1660) );
  OAI21XL U999 ( .A0(n1493), .A1(n1426), .B0(n754), .Y(n1076) );
  AOI2BB2X1 U1000 ( .B0(N1582), .B1(n1939), .A0N(n625), .A1N(n1431), .Y(n754)
         );
  OAI21XL U1001 ( .A0(n1493), .A1(n1420), .B0(n751), .Y(n1080) );
  AOI2BB2X1 U1002 ( .B0(N1583), .B1(n1939), .A0N(n625), .A1N(n1432), .Y(n751)
         );
  OAI21XL U1003 ( .A0(n1493), .A1(n1421), .B0(n749), .Y(n1084) );
  AOI2BB2X1 U1004 ( .B0(N1584), .B1(n1939), .A0N(n625), .A1N(n1433), .Y(n749)
         );
  ADDFXL U1005 ( .A(n1730), .B(n1725), .CI(N2840), .CO(N2841) );
  ADDFXL U1006 ( .A(n1730), .B(n1725), .CI(N2841), .CO(N2842) );
  ADDFXL U1007 ( .A(n1730), .B(n1725), .CI(N2842), .CO(N2843) );
  ADDFXL U1008 ( .A(n1730), .B(n1725), .CI(N2843), .CO(N2844) );
  ADDFXL U1009 ( .A(n1730), .B(n1725), .CI(N2844), .CO(N2845) );
  CLKBUFX3 U1010 ( .A(n1719), .Y(n1715) );
  CLKBUFX3 U1011 ( .A(n1718), .Y(n1717) );
  CLKBUFX3 U1012 ( .A(n1718), .Y(n1716) );
  ADDFXL U1013 ( .A(n1617), .B(n1737), .CI(\add_45_root_add_176_41/carry[15] ), 
        .CO(\add_45_root_add_176_41/carry[16] ), .S(N1645) );
  ADDFXL U1014 ( .A(n1590), .B(n1605), .CI(\add_45_root_add_176_41/carry[10] ), 
        .CO(\add_45_root_add_176_41/carry[11] ), .S(N1640) );
  ADDFXL U1015 ( .A(n1596), .B(n1612), .CI(\add_45_root_add_176_41/carry[11] ), 
        .CO(\add_45_root_add_176_41/carry[12] ), .S(N1641) );
  ADDFXL U1016 ( .A(n1600), .B(n1617), .CI(\add_45_root_add_176_41/carry[12] ), 
        .CO(\add_45_root_add_176_41/carry[13] ), .S(N1642) );
  OAI21XL U1017 ( .A0(n1493), .A1(n1440), .B0(n766), .Y(n1052) );
  AOI2BB2X1 U1018 ( .B0(N1576), .B1(n1939), .A0N(n625), .A1N(n1416), .Y(n766)
         );
  OAI21XL U1019 ( .A0(n1493), .A1(n1419), .B0(n764), .Y(n1056) );
  AOI2BB2X1 U1020 ( .B0(N1577), .B1(n1939), .A0N(n625), .A1N(n1412), .Y(n764)
         );
  OAI21XL U1021 ( .A0(n1493), .A1(n1422), .B0(n762), .Y(n1060) );
  AOI2BB2X1 U1022 ( .B0(N1578), .B1(n1939), .A0N(n625), .A1N(n1434), .Y(n762)
         );
  OAI21XL U1023 ( .A0(n1493), .A1(n1423), .B0(n760), .Y(n1064) );
  AOI2BB2X1 U1024 ( .B0(N1579), .B1(n1939), .A0N(n625), .A1N(n1435), .Y(n760)
         );
  OAI21XL U1025 ( .A0(n1493), .A1(n1424), .B0(n758), .Y(n1068) );
  AOI2BB2X1 U1026 ( .B0(N1580), .B1(n1939), .A0N(n625), .A1N(n1429), .Y(n758)
         );
  OAI21XL U1027 ( .A0(n1493), .A1(n1425), .B0(n756), .Y(n1072) );
  AOI2BB2X1 U1028 ( .B0(N1581), .B1(n1939), .A0N(n625), .A1N(n1430), .Y(n756)
         );
  ADDFXL U1029 ( .A(n1780), .B(n1778), .CI(N863), .CO(N864) );
  ADDFXL U1030 ( .A(n1780), .B(n1777), .CI(N864), .CO(N865) );
  ADDFXL U1031 ( .A(n1780), .B(n1778), .CI(N865), .CO(N866) );
  ADDFXL U1032 ( .A(n1780), .B(n1778), .CI(N866), .CO(N867) );
  ADDFXL U1033 ( .A(n1780), .B(n1779), .CI(N862), .CO(N863) );
  CLKBUFX3 U1034 ( .A(n1719), .Y(n1714) );
  CLKINVX1 U1035 ( .A(n1704), .Y(n1703) );
  ADDFXL U1036 ( .A(n1630), .B(n1633), .CI(\add_29_root_sub_149_5/carry[4] ), 
        .CO(\add_29_root_sub_149_5/carry[5] ), .S(N852) );
  CLKINVX1 U1037 ( .A(n1706), .Y(n1700) );
  CLKINVX1 U1038 ( .A(n1705), .Y(n1702) );
  ADDFXL U1039 ( .A(n1860), .B(n1852), .CI(N168), .CO(N169) );
  OAI21XL U1040 ( .A0(n1493), .A1(n1409), .B0(n732), .Y(n1036) );
  AOI2BB2X1 U1041 ( .B0(N1572), .B1(n1939), .A0N(n625), .A1N(n1441), .Y(n732)
         );
  OAI21XL U1042 ( .A0(n1493), .A1(n1406), .B0(n772), .Y(n1040) );
  AOI2BB2X1 U1043 ( .B0(N1573), .B1(n1939), .A0N(n625), .A1N(n1448), .Y(n772)
         );
  OAI21XL U1044 ( .A0(n1493), .A1(n1407), .B0(n770), .Y(n1044) );
  AOI2BB2X1 U1045 ( .B0(N1574), .B1(n1939), .A0N(n625), .A1N(n1449), .Y(n770)
         );
  OAI21XL U1046 ( .A0(n1493), .A1(n1446), .B0(n768), .Y(n1048) );
  AOI2BB2X1 U1047 ( .B0(N1575), .B1(n1939), .A0N(n625), .A1N(n1442), .Y(n768)
         );
  OAI21XL U1048 ( .A0(n1339), .A1(n1714), .B0(n844), .Y(n1094) );
  AOI2BB2X1 U1049 ( .B0(N284), .B1(n1936), .A0N(n1695), .A1N(n1704), .Y(n844)
         );
  CLKINVX1 U1050 ( .A(n1706), .Y(n1701) );
  OAI21XL U1051 ( .A0(n1338), .A1(n1451), .B0(n776), .Y(n1035) );
  AOI2BB2X1 U1052 ( .B0(N770), .B1(n1944), .A0N(n625), .A1N(n1409), .Y(n776)
         );
  OAI21XL U1053 ( .A0(n1338), .A1(n1413), .B0(n826), .Y(n1039) );
  AOI2BB2X1 U1054 ( .B0(N771), .B1(n1944), .A0N(n625), .A1N(n1406), .Y(n826)
         );
  OAI21XL U1055 ( .A0(n1338), .A1(n1397), .B0(n780), .Y(n1027) );
  AOI2BB2X1 U1056 ( .B0(N768), .B1(n1944), .A0N(n625), .A1N(n1405), .Y(n780)
         );
  OAI21XL U1057 ( .A0(n1338), .A1(n1427), .B0(n778), .Y(n1031) );
  AOI2BB2X1 U1058 ( .B0(N769), .B1(n1944), .A0N(n625), .A1N(n1408), .Y(n778)
         );
  OAI21XL U1059 ( .A0(n1339), .A1(n1444), .B0(n836), .Y(n1026) );
  AOI2BB2X1 U1060 ( .B0(N267), .B1(n1936), .A0N(n1695), .A1N(n1397), .Y(n836)
         );
  OAI21XL U1061 ( .A0(n1339), .A1(n1418), .B0(n834), .Y(n1030) );
  AOI2BB2X1 U1062 ( .B0(N268), .B1(n1936), .A0N(n1695), .A1N(n1427), .Y(n834)
         );
  OAI21XL U1063 ( .A0(n1339), .A1(n1414), .B0(n832), .Y(n1034) );
  AOI2BB2X1 U1064 ( .B0(N269), .B1(n1936), .A0N(n1695), .A1N(n1451), .Y(n832)
         );
  CLKBUFX3 U1065 ( .A(n594), .Y(n1493) );
  NAND2X1 U1066 ( .A(n1695), .B(n549), .Y(n594) );
  NAND2X1 U1067 ( .A(n543), .B(n1695), .Y(n621) );
  NAND3X1 U1068 ( .A(n581), .B(n829), .C(n1695), .Y(n781) );
  NAND3X1 U1069 ( .A(n727), .B(n730), .C(n1695), .Y(n683) );
  NOR3X1 U1070 ( .A(n1949), .B(n1936), .C(n1697), .Y(n838) );
  CLKINVX1 U1071 ( .A(n727), .Y(n1948) );
  NAND2X1 U1072 ( .A(n544), .B(n1488), .Y(n885) );
  NAND2X1 U1073 ( .A(n544), .B(n595), .Y(n1489) );
  NAND2X1 U1074 ( .A(n544), .B(n1488), .Y(n1490) );
  NOR2X1 U1075 ( .A(n573), .B(n1936), .Y(n542) );
  NOR3X1 U1076 ( .A(n1940), .B(n1943), .C(n1935), .Y(n590) );
  OR2X1 U1077 ( .A(n1490), .B(n1943), .Y(n1491) );
  OR2X1 U1078 ( .A(n1489), .B(n1943), .Y(n1492) );
  CLKBUFX3 U1079 ( .A(n2162), .Y(n1871) );
  CLKINVX1 U1080 ( .A(n581), .Y(n1944) );
  OR2X1 U1081 ( .A(n885), .B(n1943), .Y(n883) );
  CLKINVX1 U1082 ( .A(n595), .Y(n1947) );
  CLKINVX1 U1083 ( .A(n908), .Y(n1950) );
  CLKINVX1 U1084 ( .A(n730), .Y(n1940) );
  NOR3X1 U1085 ( .A(n1941), .B(n1693), .C(n1697), .Y(n551) );
  NAND2X1 U1086 ( .A(n1486), .B(n1487), .Y(n587) );
  CLKINVX1 U1087 ( .A(n829), .Y(n1935) );
  CLKINVX1 U1088 ( .A(n589), .Y(n1941) );
  NAND2X1 U1089 ( .A(n1484), .B(n568), .Y(n593) );
  CLKINVX1 U1090 ( .A(n876), .Y(n1946) );
  CLKINVX1 U1091 ( .A(n880), .Y(n1942) );
  CLKINVX1 U1092 ( .A(n907), .Y(n1949) );
  CLKINVX1 U1093 ( .A(n560), .Y(n1951) );
  CLKINVX1 U1094 ( .A(n568), .Y(n1938) );
  NAND2X1 U1095 ( .A(n1940), .B(n1464), .Y(n696) );
  CLKBUFX3 U1096 ( .A(n2162), .Y(WEN) );
  CLKINVX1 U1097 ( .A(n601), .Y(n1933) );
  CLKINVX1 U1098 ( .A(n602), .Y(n1934) );
  CLKBUFX3 U1099 ( .A(n1666), .Y(n1691) );
  CLKBUFX3 U1100 ( .A(n1661), .Y(n1678) );
  CLKBUFX3 U1101 ( .A(n1661), .Y(n1677) );
  CLKBUFX3 U1102 ( .A(n1661), .Y(n1676) );
  CLKBUFX3 U1103 ( .A(n1660), .Y(n1675) );
  CLKBUFX3 U1104 ( .A(n1660), .Y(n1674) );
  CLKBUFX3 U1105 ( .A(n1659), .Y(n1672) );
  CLKBUFX3 U1106 ( .A(n1659), .Y(n1671) );
  CLKBUFX3 U1107 ( .A(n1659), .Y(n1670) );
  CLKBUFX3 U1108 ( .A(n1658), .Y(n1669) );
  CLKBUFX3 U1109 ( .A(n1658), .Y(n1668) );
  CLKBUFX3 U1110 ( .A(n1660), .Y(n1673) );
  CLKBUFX3 U1111 ( .A(n1665), .Y(n1690) );
  CLKBUFX3 U1112 ( .A(n1665), .Y(n1689) );
  CLKBUFX3 U1113 ( .A(n1665), .Y(n1688) );
  CLKBUFX3 U1114 ( .A(n1664), .Y(n1687) );
  CLKBUFX3 U1115 ( .A(n1664), .Y(n1686) );
  CLKBUFX3 U1116 ( .A(n1663), .Y(n1684) );
  CLKBUFX3 U1117 ( .A(n1663), .Y(n1683) );
  CLKBUFX3 U1118 ( .A(n1663), .Y(n1682) );
  CLKBUFX3 U1119 ( .A(n1662), .Y(n1681) );
  CLKBUFX3 U1120 ( .A(n1662), .Y(n1680) );
  CLKBUFX3 U1121 ( .A(n1662), .Y(n1679) );
  CLKBUFX3 U1122 ( .A(n1664), .Y(n1685) );
  CLKBUFX3 U1123 ( .A(n1658), .Y(n1667) );
  CLKINVX1 U1124 ( .A(n905), .Y(n1932) );
  CLKBUFX3 U1125 ( .A(n1666), .Y(n1692) );
  OAI2BB2XL U1126 ( .B0(n1693), .B1(n1395), .A0N(N6318), .A1N(n1694), .Y(n1265) );
  CLKINVX1 U1127 ( .A(n1303), .Y(n1630) );
  OAI211X1 U1128 ( .A0(n602), .A1(n1456), .B0(n607), .C0(n605), .Y(n1266) );
  NAND2X1 U1129 ( .A(N6319), .B(n1693), .Y(n607) );
  OAI211X1 U1130 ( .A0(n602), .A1(n1457), .B0(n604), .C0(n605), .Y(n1267) );
  NAND2X1 U1131 ( .A(N6320), .B(n1693), .Y(n604) );
  CLKINVX1 U1132 ( .A(n1626), .Y(n1628) );
  CLKINVX1 U1133 ( .A(n1627), .Y(n1629) );
  OAI2BB2XL U1134 ( .B0(n1693), .B1(n1390), .A0N(N6313), .A1N(n1694), .Y(n1260) );
  OAI2BB2XL U1135 ( .B0(n1693), .B1(n1391), .A0N(N6314), .A1N(n1694), .Y(n1261) );
  OAI2BB2XL U1136 ( .B0(n1693), .B1(n1392), .A0N(N6315), .A1N(n1694), .Y(n1262) );
  OAI2BB2XL U1137 ( .B0(n1693), .B1(n1393), .A0N(N6316), .A1N(n1694), .Y(n1263) );
  OAI2BB2XL U1138 ( .B0(n1693), .B1(n1394), .A0N(N6317), .A1N(n1694), .Y(n1264) );
  OAI21XL U1139 ( .A0(n1337), .A1(n1310), .B0(n695), .Y(n1097) );
  AOI2BB2X1 U1140 ( .B0(N2764), .B1(n1948), .A0N(n1695), .A1N(n1334), .Y(n695)
         );
  ADDFXL U1141 ( .A(N4431), .B(n1720), .CI(N4446), .CO(N4447) );
  ADDFXL U1142 ( .A(N4431), .B(n1720), .CI(N4447), .CO(N4448) );
  ADDFXL U1143 ( .A(N4431), .B(n1720), .CI(N4448), .CO(N4449) );
  ADDFXL U1144 ( .A(N4431), .B(n1720), .CI(N4449), .CO(N4450) );
  ADDFXL U1145 ( .A(N4431), .B(n1720), .CI(N4450), .CO(N4451) );
  CLKINVX1 U1146 ( .A(n1632), .Y(n1634) );
  CLKINVX1 U1147 ( .A(n1632), .Y(n1635) );
  OAI221XL U1148 ( .A0(n1456), .A1(n1695), .B0(n630), .B1(n1341), .C0(n647), 
        .Y(n1226) );
  AOI21X1 U1149 ( .A0(N4388), .A1(n1937), .B0(n645), .Y(n647) );
  OAI221XL U1150 ( .A0(n1457), .A1(n1695), .B0(n630), .B1(n1340), .C0(n644), 
        .Y(n1227) );
  AOI21X1 U1151 ( .A0(N4389), .A1(n1937), .B0(n645), .Y(n644) );
  OAI211X1 U1152 ( .A0(n1695), .A1(n1341), .B0(n696), .C0(n699), .Y(n1089) );
  AOI2BB2X1 U1153 ( .B0(N2762), .B1(n1948), .A0N(n683), .A1N(n1410), .Y(n699)
         );
  OAI211X1 U1154 ( .A0(n1695), .A1(n1340), .B0(n696), .C0(n697), .Y(n1093) );
  AOI2BB2X1 U1155 ( .B0(N2763), .B1(n1948), .A0N(n683), .A1N(n1411), .Y(n697)
         );
  CLKINVX1 U1156 ( .A(n1587), .Y(n1589) );
  CLKINVX1 U1157 ( .A(n1645), .Y(n1648) );
  CLKINVX1 U1158 ( .A(n1592), .Y(n1595) );
  CLKINVX1 U1159 ( .A(n1598), .Y(n1602) );
  CLKINVX1 U1160 ( .A(n1604), .Y(n1607) );
  CLKINVX1 U1161 ( .A(n1305), .Y(n1594) );
  CLKINVX1 U1162 ( .A(n1609), .Y(n1611) );
  CLKINVX1 U1163 ( .A(n1302), .Y(n1601) );
  CLKINVX1 U1164 ( .A(n1615), .Y(n1618) );
  CLKINVX1 U1165 ( .A(n1631), .Y(n1633) );
  CLKINVX1 U1166 ( .A(n1586), .Y(n1588) );
  CLKINVX1 U1167 ( .A(n1591), .Y(n1593) );
  CLKINVX1 U1168 ( .A(n1597), .Y(n1599) );
  CLKINVX1 U1169 ( .A(n1603), .Y(n1606) );
  CLKINVX1 U1170 ( .A(n1608), .Y(n1610) );
  CLKINVX1 U1171 ( .A(n1613), .Y(n1616) );
  ADDFXL U1172 ( .A(n1620), .B(n1737), .CI(\add_44_root_add_176_41/carry[13] ), 
        .CO(N1664), .S(N1663) );
  OAI21XL U1173 ( .A0(n621), .A1(n1376), .B0(n651), .Y(n1229) );
  AOI2BB2X1 U1174 ( .B0(N4386), .B1(n1937), .A0N(n1394), .A1N(n1695), .Y(n651)
         );
  OAI21XL U1175 ( .A0(n621), .A1(n1375), .B0(n655), .Y(n1230) );
  AOI2BB2X1 U1176 ( .B0(N4385), .B1(n1937), .A0N(n1393), .A1N(n1695), .Y(n655)
         );
  OAI21XL U1177 ( .A0(n621), .A1(n1374), .B0(n657), .Y(n1231) );
  AOI2BB2X1 U1178 ( .B0(N4384), .B1(n1937), .A0N(n1392), .A1N(n1695), .Y(n657)
         );
  OAI21XL U1179 ( .A0(n621), .A1(n1377), .B0(n649), .Y(n1243) );
  AOI2BB2X1 U1180 ( .B0(N4387), .B1(n1937), .A0N(n1395), .A1N(n1695), .Y(n649)
         );
  OAI2BB2XL U1181 ( .B0(n1693), .B1(n1386), .A0N(N6309), .A1N(n1694), .Y(n1256) );
  OAI2BB2XL U1182 ( .B0(n1693), .B1(n1387), .A0N(N6310), .A1N(n1693), .Y(n1257) );
  OAI2BB2XL U1183 ( .B0(n1693), .B1(n1388), .A0N(N6311), .A1N(n1693), .Y(n1258) );
  OAI2BB2XL U1184 ( .B0(n1693), .B1(n1389), .A0N(N6312), .A1N(n1693), .Y(n1259) );
  OAI21XL U1185 ( .A0(n1337), .A1(n1429), .B0(n712), .Y(n1069) );
  AOI2BB2X1 U1186 ( .B0(N2757), .B1(n1948), .A0N(n1695), .A1N(n1378), .Y(n712)
         );
  OAI21XL U1187 ( .A0(n1337), .A1(n1430), .B0(n710), .Y(n1073) );
  AOI2BB2X1 U1188 ( .B0(N2758), .B1(n1948), .A0N(n1695), .A1N(n1374), .Y(n710)
         );
  OAI21XL U1189 ( .A0(n1337), .A1(n1431), .B0(n708), .Y(n1077) );
  AOI2BB2X1 U1190 ( .B0(N2759), .B1(n1948), .A0N(n1695), .A1N(n1375), .Y(n708)
         );
  OAI21XL U1191 ( .A0(n1337), .A1(n1432), .B0(n704), .Y(n1081) );
  AOI2BB2X1 U1192 ( .B0(N2760), .B1(n1948), .A0N(n1695), .A1N(n1376), .Y(n704)
         );
  OAI21XL U1193 ( .A0(n1337), .A1(n1433), .B0(n702), .Y(n1085) );
  AOI2BB2X1 U1194 ( .B0(N2761), .B1(n1948), .A0N(n1695), .A1N(n1377), .Y(n702)
         );
  OAI21XL U1195 ( .A0(n1493), .A1(n1699), .B0(n744), .Y(n1096) );
  AOI2BB2X1 U1196 ( .B0(N1587), .B1(n1939), .A0N(n625), .A1N(n1310), .Y(n744)
         );
  CLKINVX1 U1197 ( .A(n1587), .Y(n1590) );
  CLKINVX1 U1198 ( .A(n1592), .Y(n1596) );
  ADDFXL U1199 ( .A(n1581), .B(n1582), .CI(\add_44_root_add_176_41/carry[1] ), 
        .CO(\add_44_root_add_176_41/carry[2] ), .S(N1651) );
  ADDFXL U1200 ( .A(n1582), .B(n1583), .CI(\add_44_root_add_176_41/carry[2] ), 
        .CO(\add_44_root_add_176_41/carry[3] ), .S(N1652) );
  CLKINVX1 U1201 ( .A(n1641), .Y(n1644) );
  ADDFXL U1202 ( .A(n1583), .B(n1584), .CI(\add_44_root_add_176_41/carry[3] ), 
        .CO(\add_44_root_add_176_41/carry[4] ), .S(N1653) );
  ADDFXL U1203 ( .A(n1584), .B(n1585), .CI(\add_44_root_add_176_41/carry[4] ), 
        .CO(\add_44_root_add_176_41/carry[5] ), .S(N1654) );
  ADDFXL U1204 ( .A(n1585), .B(n1588), .CI(\add_44_root_add_176_41/carry[5] ), 
        .CO(\add_44_root_add_176_41/carry[6] ), .S(N1655) );
  ADDFXL U1205 ( .A(n1617), .B(n1619), .CI(\add_44_root_add_176_41/carry[11] ), 
        .CO(\add_44_root_add_176_41/carry[12] ), .S(N1661) );
  ADDFXL U1206 ( .A(n1619), .B(n1620), .CI(\add_44_root_add_176_41/carry[12] ), 
        .CO(\add_44_root_add_176_41/carry[13] ), .S(N1662) );
  OAI211X1 U1207 ( .A0(n625), .A1(n1411), .B0(n745), .C0(n746), .Y(n1092) );
  AOI22X1 U1208 ( .A0(N1586), .A1(n1939), .B0(n1564), .B1(n738), .Y(n746) );
  CLKINVX1 U1209 ( .A(n1603), .Y(n1605) );
  CLKINVX1 U1210 ( .A(n1645), .Y(n1647) );
  CLKINVX1 U1211 ( .A(n1306), .Y(n1646) );
  CLKINVX1 U1212 ( .A(n1304), .Y(n1642) );
  CLKINVX1 U1213 ( .A(n1614), .Y(n1617) );
  ADDFXL U1214 ( .A(n1576), .B(n1579), .CI(\add_63_root_sub_205_16/carry[14] ), 
        .CO(\add_63_root_sub_205_16/carry[15] ), .S(N2820) );
  ADDFXL U1215 ( .A(n1577), .B(n1725), .CI(\add_63_root_sub_205_16/carry[15] ), 
        .CO(\add_63_root_sub_205_16/carry[16] ), .S(N2821) );
  ADDFXL U1216 ( .A(n1578), .B(n1725), .CI(\add_63_root_sub_205_16/carry[16] ), 
        .CO(\add_63_root_sub_205_16/carry[17] ), .S(N2822) );
  ADDFXL U1217 ( .A(n1579), .B(n1725), .CI(\add_63_root_sub_205_16/carry[17] ), 
        .CO(N2824), .S(N2823) );
  OAI21XL U1218 ( .A0(n621), .A1(n1378), .B0(n659), .Y(n1232) );
  AOI2BB2X1 U1219 ( .B0(N4383), .B1(n1937), .A0N(n1391), .A1N(n1695), .Y(n659)
         );
  OAI21XL U1220 ( .A0(n621), .A1(n1380), .B0(n661), .Y(n1233) );
  AOI2BB2X1 U1221 ( .B0(N4382), .B1(n1937), .A0N(n1390), .A1N(n1695), .Y(n661)
         );
  OAI21XL U1222 ( .A0(n621), .A1(n1379), .B0(n663), .Y(n1234) );
  AOI2BB2X1 U1223 ( .B0(N4381), .B1(n1937), .A0N(n1389), .A1N(n1695), .Y(n663)
         );
  OAI21XL U1224 ( .A0(n621), .A1(n1370), .B0(n665), .Y(n1235) );
  AOI2BB2X1 U1225 ( .B0(N4380), .B1(n1937), .A0N(n1388), .A1N(n1695), .Y(n665)
         );
  OAI21XL U1226 ( .A0(n621), .A1(n1371), .B0(n667), .Y(n1236) );
  AOI2BB2X1 U1227 ( .B0(N4379), .B1(n1937), .A0N(n1387), .A1N(n1695), .Y(n667)
         );
  OAI2BB2XL U1228 ( .B0(n1693), .B1(n1381), .A0N(N6304), .A1N(n1694), .Y(n1251) );
  OAI2BB2XL U1229 ( .B0(n1693), .B1(n1382), .A0N(N6305), .A1N(n1694), .Y(n1252) );
  OAI2BB2XL U1230 ( .B0(n1693), .B1(n1383), .A0N(N6306), .A1N(n1694), .Y(n1253) );
  OAI2BB2XL U1231 ( .B0(n1693), .B1(n1384), .A0N(N6307), .A1N(n1694), .Y(n1254) );
  OAI2BB2XL U1232 ( .B0(n1693), .B1(n1385), .A0N(N6308), .A1N(n1694), .Y(n1255) );
  OAI21XL U1233 ( .A0(n1337), .A1(n1442), .B0(n722), .Y(n1049) );
  AOI2BB2X1 U1234 ( .B0(N2752), .B1(n1948), .A0N(n1695), .A1N(n1402), .Y(n722)
         );
  OAI21XL U1235 ( .A0(n1337), .A1(n1416), .B0(n720), .Y(n1053) );
  AOI2BB2X1 U1236 ( .B0(N2753), .B1(n1948), .A0N(n1695), .A1N(n1371), .Y(n720)
         );
  OAI21XL U1237 ( .A0(n1337), .A1(n1412), .B0(n718), .Y(n1057) );
  AOI2BB2X1 U1238 ( .B0(N2754), .B1(n1948), .A0N(n1695), .A1N(n1370), .Y(n718)
         );
  OAI21XL U1239 ( .A0(n1337), .A1(n1434), .B0(n716), .Y(n1061) );
  AOI2BB2X1 U1240 ( .B0(N2755), .B1(n1948), .A0N(n1695), .A1N(n1379), .Y(n716)
         );
  OAI21XL U1241 ( .A0(n1337), .A1(n1435), .B0(n714), .Y(n1065) );
  AOI2BB2X1 U1242 ( .B0(N2756), .B1(n1948), .A0N(n1695), .A1N(n1380), .Y(n714)
         );
  CLKINVX1 U1243 ( .A(n1609), .Y(n1612) );
  ADDFXL U1244 ( .A(n1612), .B(n1620), .CI(\add_45_root_add_176_41/carry[14] ), 
        .CO(\add_45_root_add_176_41/carry[15] ), .S(N1644) );
  ADDFXL U1245 ( .A(n1619), .B(n1737), .CI(\add_45_root_add_176_41/carry[16] ), 
        .CO(\add_45_root_add_176_41/carry[17] ), .S(N1646) );
  ADDFXL U1246 ( .A(n1620), .B(n1737), .CI(\add_45_root_add_176_41/carry[17] ), 
        .CO(N1648), .S(N1647) );
  ADDFXL U1247 ( .A(n1567), .B(n1568), .CI(\add_62_root_sub_205_16/carry[1] ), 
        .CO(\add_62_root_sub_205_16/carry[2] ), .S(N2827) );
  ADDFXL U1248 ( .A(n1579), .B(n1725), .CI(\add_62_root_sub_205_16/carry[13] ), 
        .CO(N2840), .S(N2839) );
  ADDFXL U1249 ( .A(n1568), .B(n1569), .CI(\add_62_root_sub_205_16/carry[2] ), 
        .CO(\add_62_root_sub_205_16/carry[3] ), .S(N2828) );
  ADDFXL U1250 ( .A(n1569), .B(n1570), .CI(\add_62_root_sub_205_16/carry[3] ), 
        .CO(\add_62_root_sub_205_16/carry[4] ), .S(N2829) );
  ADDFXL U1251 ( .A(n1580), .B(n1583), .CI(\add_45_root_add_176_41/carry[4] ), 
        .CO(\add_45_root_add_176_41/carry[5] ), .S(N1634) );
  ADDFXL U1252 ( .A(n1566), .B(n1569), .CI(\add_63_root_sub_205_16/carry[4] ), 
        .CO(\add_63_root_sub_205_16/carry[5] ), .S(N2810) );
  ADDFXL U1253 ( .A(n1570), .B(n1571), .CI(\add_62_root_sub_205_16/carry[4] ), 
        .CO(\add_62_root_sub_205_16/carry[5] ), .S(N2830) );
  ADDFXL U1254 ( .A(n1581), .B(n1584), .CI(\add_45_root_add_176_41/carry[5] ), 
        .CO(\add_45_root_add_176_41/carry[6] ), .S(N1635) );
  ADDFXL U1255 ( .A(n1567), .B(n1570), .CI(\add_63_root_sub_205_16/carry[5] ), 
        .CO(\add_63_root_sub_205_16/carry[6] ), .S(N2811) );
  ADDFXL U1256 ( .A(n1571), .B(n1572), .CI(\add_62_root_sub_205_16/carry[5] ), 
        .CO(\add_62_root_sub_205_16/carry[6] ), .S(N2831) );
  ADDFXL U1257 ( .A(n1582), .B(n1585), .CI(\add_45_root_add_176_41/carry[6] ), 
        .CO(\add_45_root_add_176_41/carry[7] ), .S(N1636) );
  ADDFXL U1258 ( .A(n1568), .B(n1571), .CI(\add_63_root_sub_205_16/carry[6] ), 
        .CO(\add_63_root_sub_205_16/carry[7] ), .S(N2812) );
  ADDFXL U1259 ( .A(n1572), .B(n1573), .CI(\add_62_root_sub_205_16/carry[6] ), 
        .CO(\add_62_root_sub_205_16/carry[7] ), .S(N2832) );
  ADDFXL U1260 ( .A(n1583), .B(n1590), .CI(\add_45_root_add_176_41/carry[7] ), 
        .CO(\add_45_root_add_176_41/carry[8] ), .S(N1637) );
  ADDFXL U1261 ( .A(n1569), .B(n1572), .CI(\add_63_root_sub_205_16/carry[7] ), 
        .CO(\add_63_root_sub_205_16/carry[8] ), .S(N2813) );
  ADDFXL U1262 ( .A(n1573), .B(n1574), .CI(\add_62_root_sub_205_16/carry[7] ), 
        .CO(\add_62_root_sub_205_16/carry[8] ), .S(N2833) );
  ADDFXL U1263 ( .A(n1584), .B(n1596), .CI(\add_45_root_add_176_41/carry[8] ), 
        .CO(\add_45_root_add_176_41/carry[9] ), .S(N1638) );
  ADDFXL U1264 ( .A(n1570), .B(n1573), .CI(\add_63_root_sub_205_16/carry[8] ), 
        .CO(\add_63_root_sub_205_16/carry[9] ), .S(N2814) );
  ADDFXL U1265 ( .A(n1574), .B(n1575), .CI(\add_62_root_sub_205_16/carry[8] ), 
        .CO(\add_62_root_sub_205_16/carry[9] ), .S(N2834) );
  ADDFXL U1266 ( .A(n1585), .B(n1600), .CI(\add_45_root_add_176_41/carry[9] ), 
        .CO(\add_45_root_add_176_41/carry[10] ), .S(N1639) );
  ADDFXL U1267 ( .A(n1571), .B(n1574), .CI(\add_63_root_sub_205_16/carry[9] ), 
        .CO(\add_63_root_sub_205_16/carry[10] ), .S(N2815) );
  ADDFXL U1268 ( .A(n1575), .B(n1576), .CI(\add_62_root_sub_205_16/carry[9] ), 
        .CO(\add_62_root_sub_205_16/carry[10] ), .S(N2835) );
  ADDFXL U1269 ( .A(n1572), .B(n1575), .CI(\add_63_root_sub_205_16/carry[10] ), 
        .CO(\add_63_root_sub_205_16/carry[11] ), .S(N2816) );
  ADDFXL U1270 ( .A(n1576), .B(n1577), .CI(\add_62_root_sub_205_16/carry[10] ), 
        .CO(\add_62_root_sub_205_16/carry[11] ), .S(N2836) );
  ADDFXL U1271 ( .A(n1573), .B(n1576), .CI(\add_63_root_sub_205_16/carry[11] ), 
        .CO(\add_63_root_sub_205_16/carry[12] ), .S(N2817) );
  ADDFXL U1272 ( .A(n1577), .B(n1578), .CI(\add_62_root_sub_205_16/carry[11] ), 
        .CO(\add_62_root_sub_205_16/carry[12] ), .S(N2837) );
  ADDFXL U1273 ( .A(n1574), .B(n1577), .CI(\add_63_root_sub_205_16/carry[12] ), 
        .CO(\add_63_root_sub_205_16/carry[13] ), .S(N2818) );
  ADDFXL U1274 ( .A(n1578), .B(n1579), .CI(\add_62_root_sub_205_16/carry[12] ), 
        .CO(\add_62_root_sub_205_16/carry[13] ), .S(N2838) );
  ADDFXL U1275 ( .A(n1605), .B(n1619), .CI(\add_45_root_add_176_41/carry[13] ), 
        .CO(\add_45_root_add_176_41/carry[14] ), .S(N1643) );
  ADDFXL U1276 ( .A(n1575), .B(n1578), .CI(\add_63_root_sub_205_16/carry[13] ), 
        .CO(\add_63_root_sub_205_16/carry[14] ), .S(N2819) );
  OAI211X1 U1277 ( .A0(n625), .A1(n1410), .B0(n745), .C0(n747), .Y(n1088) );
  AOI22X1 U1278 ( .A0(N1585), .A1(n1939), .B0(n1561), .B1(n738), .Y(n747) );
  CLKINVX1 U1279 ( .A(n1710), .Y(n1718) );
  CLKINVX1 U1280 ( .A(n1710), .Y(n1719) );
  CLKINVX1 U1281 ( .A(n1302), .Y(n1600) );
  CLKINVX1 U1282 ( .A(n1641), .Y(n1643) );
  OAI21XL U1283 ( .A0(n621), .A1(n1402), .B0(n669), .Y(n1237) );
  AOI2BB2X1 U1284 ( .B0(N4378), .B1(n1937), .A0N(n1386), .A1N(n1695), .Y(n669)
         );
  OAI21XL U1285 ( .A0(n621), .A1(n1404), .B0(n671), .Y(n1238) );
  AOI2BB2X1 U1286 ( .B0(N4377), .B1(n1937), .A0N(n1385), .A1N(n1695), .Y(n671)
         );
  OAI21XL U1287 ( .A0(n621), .A1(n1403), .B0(n673), .Y(n1239) );
  AOI2BB2X1 U1288 ( .B0(N4376), .B1(n1937), .A0N(n1384), .A1N(n1695), .Y(n673)
         );
  OAI21XL U1289 ( .A0(n621), .A1(n1399), .B0(n623), .Y(n1240) );
  AOI2BB2X1 U1290 ( .B0(N4375), .B1(n1937), .A0N(n1383), .A1N(n1695), .Y(n623)
         );
  OAI21XL U1291 ( .A0(n1337), .A1(n1441), .B0(n678), .Y(n1037) );
  AOI2BB2X1 U1292 ( .B0(N2749), .B1(n1948), .A0N(n1695), .A1N(n1399), .Y(n678)
         );
  OAI21XL U1293 ( .A0(n1337), .A1(n1448), .B0(n726), .Y(n1041) );
  AOI2BB2X1 U1294 ( .B0(N2750), .B1(n1948), .A0N(n625), .A1N(n1403), .Y(n726)
         );
  OAI21XL U1295 ( .A0(n1337), .A1(n1449), .B0(n724), .Y(n1045) );
  AOI2BB2X1 U1296 ( .B0(N2751), .B1(n1948), .A0N(n1695), .A1N(n1404), .Y(n724)
         );
  OAI21XL U1297 ( .A0(n1338), .A1(n1363), .B0(n804), .Y(n1079) );
  AOI2BB2X1 U1298 ( .B0(N781), .B1(n1944), .A0N(n625), .A1N(n1420), .Y(n804)
         );
  OAI21XL U1299 ( .A0(n1338), .A1(n1365), .B0(n802), .Y(n1083) );
  AOI2BB2X1 U1300 ( .B0(N782), .B1(n1944), .A0N(n625), .A1N(n1421), .Y(n802)
         );
  OAI21XL U1301 ( .A0(n1337), .A1(n1373), .B0(n680), .Y(n1033) );
  AOI2BB2X1 U1302 ( .B0(N2748), .B1(n1948), .A0N(n1695), .A1N(n1400), .Y(n680)
         );
  OAI21XL U1303 ( .A0(n1338), .A1(n1704), .B0(n793), .Y(n1095) );
  AOI2BB2X1 U1304 ( .B0(N785), .B1(n1944), .A0N(n625), .A1N(n1313), .Y(n793)
         );
  CLKBUFX3 U1305 ( .A(n1707), .Y(n1704) );
  ADDFXL U1306 ( .A(n1764), .B(n1779), .CI(\add_29_root_sub_149_5/carry[13] ), 
        .CO(N862), .S(N861) );
  CLKBUFX3 U1307 ( .A(n1707), .Y(n1706) );
  CLKBUFX3 U1308 ( .A(n1707), .Y(n1705) );
  ADDFXL U1309 ( .A(n1764), .B(n1778), .CI(\add_30_root_sub_149_5/carry[17] ), 
        .CO(N846), .S(N845) );
  ADDFXL U1310 ( .A(n1801), .B(n1812), .CI(\add_18_root_add_124_19/carry[17] ), 
        .CO(N344), .S(N343) );
  ADDFXL U1311 ( .A(n1623), .B(n1624), .CI(\add_29_root_sub_149_5/carry[1] ), 
        .CO(\add_29_root_sub_149_5/carry[2] ), .S(N849) );
  ADDFXL U1312 ( .A(n1624), .B(n1625), .CI(\add_29_root_sub_149_5/carry[2] ), 
        .CO(\add_29_root_sub_149_5/carry[3] ), .S(N850) );
  ADDFXL U1313 ( .A(n1637), .B(n1640), .CI(\add_18_root_add_124_19/carry[3] ), 
        .CO(\add_18_root_add_124_19/carry[4] ), .S(N329) );
  ADDFXL U1314 ( .A(n1625), .B(n1629), .CI(\add_29_root_sub_149_5/carry[3] ), 
        .CO(\add_29_root_sub_149_5/carry[4] ), .S(N851) );
  ADDFXL U1315 ( .A(n1621), .B(n1624), .CI(\add_30_root_sub_149_5/carry[3] ), 
        .CO(\add_30_root_sub_149_5/carry[4] ), .S(N831) );
  ADDFXL U1316 ( .A(n1638), .B(n1643), .CI(\add_18_root_add_124_19/carry[4] ), 
        .CO(\add_18_root_add_124_19/carry[5] ), .S(N330) );
  ADDFXL U1317 ( .A(n1622), .B(n1625), .CI(\add_30_root_sub_149_5/carry[4] ), 
        .CO(\add_30_root_sub_149_5/carry[5] ), .S(N832) );
  ADDFXL U1318 ( .A(n1639), .B(n1646), .CI(\add_18_root_add_124_19/carry[5] ), 
        .CO(\add_18_root_add_124_19/carry[6] ), .S(N331) );
  ADDFXL U1319 ( .A(n1633), .B(n1749), .CI(\add_29_root_sub_149_5/carry[5] ), 
        .CO(\add_29_root_sub_149_5/carry[6] ), .S(N853) );
  ADDFXL U1320 ( .A(n1623), .B(n1630), .CI(\add_30_root_sub_149_5/carry[5] ), 
        .CO(\add_30_root_sub_149_5/carry[6] ), .S(N833) );
  ADDFXL U1321 ( .A(n1640), .B(n1784), .CI(\add_18_root_add_124_19/carry[6] ), 
        .CO(\add_18_root_add_124_19/carry[7] ), .S(N332) );
  ADDFXL U1322 ( .A(n1750), .B(n1751), .CI(\add_29_root_sub_149_5/carry[6] ), 
        .CO(\add_29_root_sub_149_5/carry[7] ), .S(N854) );
  ADDFXL U1323 ( .A(n1624), .B(n1633), .CI(\add_30_root_sub_149_5/carry[6] ), 
        .CO(\add_30_root_sub_149_5/carry[7] ), .S(N834) );
  ADDFXL U1324 ( .A(n1643), .B(n1786), .CI(\add_18_root_add_124_19/carry[7] ), 
        .CO(\add_18_root_add_124_19/carry[8] ), .S(N333) );
  ADDFXL U1325 ( .A(n1752), .B(n1753), .CI(\add_29_root_sub_149_5/carry[7] ), 
        .CO(\add_29_root_sub_149_5/carry[8] ), .S(N855) );
  ADDFXL U1326 ( .A(n1625), .B(n1749), .CI(\add_30_root_sub_149_5/carry[7] ), 
        .CO(\add_30_root_sub_149_5/carry[8] ), .S(N835) );
  ADDFXL U1327 ( .A(n1646), .B(n1788), .CI(\add_18_root_add_124_19/carry[8] ), 
        .CO(\add_18_root_add_124_19/carry[9] ), .S(N334) );
  ADDFXL U1328 ( .A(n1754), .B(n1755), .CI(\add_29_root_sub_149_5/carry[8] ), 
        .CO(\add_29_root_sub_149_5/carry[9] ), .S(N856) );
  ADDFXL U1329 ( .A(n1628), .B(n1751), .CI(\add_30_root_sub_149_5/carry[8] ), 
        .CO(\add_30_root_sub_149_5/carry[9] ), .S(N836) );
  ADDFXL U1330 ( .A(n1784), .B(n1790), .CI(\add_18_root_add_124_19/carry[9] ), 
        .CO(\add_18_root_add_124_19/carry[10] ), .S(N335) );
  ADDFXL U1331 ( .A(n1756), .B(n1757), .CI(\add_29_root_sub_149_5/carry[9] ), 
        .CO(\add_29_root_sub_149_5/carry[10] ), .S(N857) );
  ADDFXL U1332 ( .A(n1633), .B(n1753), .CI(\add_30_root_sub_149_5/carry[9] ), 
        .CO(\add_30_root_sub_149_5/carry[10] ), .S(N837) );
  ADDFXL U1333 ( .A(n1786), .B(n1792), .CI(\add_18_root_add_124_19/carry[10] ), 
        .CO(\add_18_root_add_124_19/carry[11] ), .S(N336) );
  ADDFXL U1334 ( .A(n1758), .B(n1759), .CI(\add_29_root_sub_149_5/carry[10] ), 
        .CO(\add_29_root_sub_149_5/carry[11] ), .S(N858) );
  ADDFXL U1335 ( .A(n1750), .B(n1755), .CI(\add_30_root_sub_149_5/carry[10] ), 
        .CO(\add_30_root_sub_149_5/carry[11] ), .S(N838) );
  ADDFXL U1336 ( .A(n1789), .B(n1794), .CI(\add_18_root_add_124_19/carry[11] ), 
        .CO(\add_18_root_add_124_19/carry[12] ), .S(N337) );
  ADDFXL U1337 ( .A(n1760), .B(n1761), .CI(\add_29_root_sub_149_5/carry[11] ), 
        .CO(\add_29_root_sub_149_5/carry[12] ), .S(N859) );
  ADDFXL U1338 ( .A(n1752), .B(n1757), .CI(\add_30_root_sub_149_5/carry[11] ), 
        .CO(\add_30_root_sub_149_5/carry[12] ), .S(N839) );
  ADDFXL U1339 ( .A(n1791), .B(n1796), .CI(\add_18_root_add_124_19/carry[12] ), 
        .CO(\add_18_root_add_124_19/carry[13] ), .S(N338) );
  ADDFXL U1340 ( .A(n1762), .B(n1763), .CI(\add_29_root_sub_149_5/carry[12] ), 
        .CO(\add_29_root_sub_149_5/carry[13] ), .S(N860) );
  ADDFXL U1341 ( .A(n1754), .B(n1759), .CI(\add_30_root_sub_149_5/carry[12] ), 
        .CO(\add_30_root_sub_149_5/carry[13] ), .S(N840) );
  ADDFXL U1342 ( .A(n1793), .B(n1798), .CI(\add_18_root_add_124_19/carry[13] ), 
        .CO(\add_18_root_add_124_19/carry[14] ), .S(N339) );
  ADDFXL U1343 ( .A(n1756), .B(n1761), .CI(\add_30_root_sub_149_5/carry[13] ), 
        .CO(\add_30_root_sub_149_5/carry[14] ), .S(N841) );
  ADDFXL U1344 ( .A(n1795), .B(n1800), .CI(\add_18_root_add_124_19/carry[14] ), 
        .CO(\add_18_root_add_124_19/carry[15] ), .S(N340) );
  ADDFXL U1345 ( .A(n1758), .B(n1763), .CI(\add_30_root_sub_149_5/carry[14] ), 
        .CO(\add_30_root_sub_149_5/carry[15] ), .S(N842) );
  ADDFXL U1346 ( .A(n1797), .B(n1807), .CI(\add_18_root_add_124_19/carry[15] ), 
        .CO(\add_18_root_add_124_19/carry[16] ), .S(N341) );
  ADDFXL U1347 ( .A(n1760), .B(n1778), .CI(\add_30_root_sub_149_5/carry[15] ), 
        .CO(\add_30_root_sub_149_5/carry[16] ), .S(N843) );
  ADDFXL U1348 ( .A(n1799), .B(n1814), .CI(\add_18_root_add_124_19/carry[16] ), 
        .CO(\add_18_root_add_124_19/carry[17] ), .S(N342) );
  ADDFXL U1349 ( .A(n1762), .B(n1778), .CI(\add_30_root_sub_149_5/carry[16] ), 
        .CO(\add_30_root_sub_149_5/carry[17] ), .S(N844) );
  CLKINVX1 U1350 ( .A(n1699), .Y(n1698) );
  OAI211X1 U1351 ( .A0(n625), .A1(n1417), .B0(n795), .C0(n799), .Y(n1087) );
  AOI2BB2X1 U1352 ( .B0(N783), .B1(n1944), .A0N(n781), .A1N(n1364), .Y(n799)
         );
  OAI211X1 U1353 ( .A0(n625), .A1(n1443), .B0(n795), .C0(n796), .Y(n1091) );
  AOI2BB2X1 U1354 ( .B0(N784), .B1(n1944), .A0N(n781), .A1N(n1366), .Y(n796)
         );
  CLKINVX1 U1355 ( .A(n1653), .Y(n1655) );
  CLKINVX1 U1356 ( .A(n1654), .Y(n1656) );
  OAI211X1 U1357 ( .A0(n625), .A1(n1364), .B0(n845), .C0(n847), .Y(n1086) );
  AOI22X1 U1358 ( .A0(N282), .A1(n1936), .B0(n1322), .B1(n838), .Y(n847) );
  OAI211X1 U1359 ( .A0(n625), .A1(n1366), .B0(n845), .C0(n846), .Y(n1090) );
  AOI22X1 U1360 ( .A0(N283), .A1(n1936), .B0(n1709), .B1(n838), .Y(n846) );
  ADDFXL U1361 ( .A(n1842), .B(n1852), .CI(\add_5_root_add_101_6/carry[17] ), 
        .CO(N168), .S(N167) );
  ADDFXL U1362 ( .A(n1650), .B(n1657), .CI(\add_5_root_add_101_6/carry[3] ), 
        .CO(\add_5_root_add_101_6/carry[4] ), .S(N153) );
  OAI21XL U1363 ( .A0(n621), .A1(n1400), .B0(n627), .Y(n1241) );
  AOI2BB2X1 U1364 ( .B0(N4374), .B1(n1937), .A0N(n1382), .A1N(n1695), .Y(n627)
         );
  OAI21XL U1365 ( .A0(n621), .A1(n1398), .B0(n629), .Y(n1242) );
  AOI2BB2X1 U1366 ( .B0(N4373), .B1(n1937), .A0N(n1381), .A1N(n1695), .Y(n629)
         );
  CLKBUFX3 U1367 ( .A(n1736), .Y(n1748) );
  OAI21XL U1368 ( .A0(n1493), .A1(n1408), .B0(n734), .Y(n1032) );
  AOI2BB2X1 U1369 ( .B0(N1571), .B1(n1939), .A0N(n625), .A1N(n1373), .Y(n734)
         );
  OAI21XL U1370 ( .A0(n1338), .A1(n1353), .B0(n818), .Y(n1055) );
  AOI2BB2X1 U1371 ( .B0(N775), .B1(n1944), .A0N(n625), .A1N(n1419), .Y(n818)
         );
  OAI21XL U1372 ( .A0(n1338), .A1(n1358), .B0(n816), .Y(n1059) );
  AOI2BB2X1 U1373 ( .B0(N776), .B1(n1944), .A0N(n625), .A1N(n1422), .Y(n816)
         );
  OAI21XL U1374 ( .A0(n1338), .A1(n1359), .B0(n814), .Y(n1063) );
  AOI2BB2X1 U1375 ( .B0(N777), .B1(n1944), .A0N(n625), .A1N(n1423), .Y(n814)
         );
  OAI21XL U1376 ( .A0(n1338), .A1(n1360), .B0(n812), .Y(n1067) );
  AOI2BB2X1 U1377 ( .B0(N778), .B1(n1944), .A0N(n625), .A1N(n1424), .Y(n812)
         );
  OAI21XL U1378 ( .A0(n1338), .A1(n1361), .B0(n810), .Y(n1071) );
  AOI2BB2X1 U1379 ( .B0(N779), .B1(n1944), .A0N(n625), .A1N(n1425), .Y(n810)
         );
  OAI21XL U1380 ( .A0(n1338), .A1(n1362), .B0(n808), .Y(n1075) );
  AOI2BB2X1 U1381 ( .B0(N780), .B1(n1944), .A0N(n625), .A1N(n1426), .Y(n808)
         );
  OAI21XL U1382 ( .A0(n1337), .A1(n1463), .B0(n682), .Y(n1029) );
  AOI2BB2X1 U1383 ( .B0(N2747), .B1(n1948), .A0N(n1695), .A1N(n1398), .Y(n682)
         );
  CLKBUFX3 U1384 ( .A(n1724), .Y(n1732) );
  ADDFXL U1385 ( .A(n1651), .B(n1821), .CI(\add_5_root_add_101_6/carry[4] ), 
        .CO(\add_5_root_add_101_6/carry[5] ), .S(N154) );
  ADDFXL U1386 ( .A(n1652), .B(n1823), .CI(\add_5_root_add_101_6/carry[5] ), 
        .CO(\add_5_root_add_101_6/carry[6] ), .S(N155) );
  ADDFXL U1387 ( .A(n1657), .B(n1825), .CI(\add_5_root_add_101_6/carry[6] ), 
        .CO(\add_5_root_add_101_6/carry[7] ), .S(N156) );
  ADDFXL U1388 ( .A(n1822), .B(n1827), .CI(\add_5_root_add_101_6/carry[7] ), 
        .CO(\add_5_root_add_101_6/carry[8] ), .S(N157) );
  ADDFXL U1389 ( .A(n1824), .B(n1829), .CI(\add_5_root_add_101_6/carry[8] ), 
        .CO(\add_5_root_add_101_6/carry[9] ), .S(N158) );
  ADDFXL U1390 ( .A(n1826), .B(n1831), .CI(\add_5_root_add_101_6/carry[9] ), 
        .CO(\add_5_root_add_101_6/carry[10] ), .S(N159) );
  ADDFXL U1391 ( .A(n1828), .B(n1833), .CI(\add_5_root_add_101_6/carry[10] ), 
        .CO(\add_5_root_add_101_6/carry[11] ), .S(N160) );
  ADDFXL U1392 ( .A(n1830), .B(n1835), .CI(\add_5_root_add_101_6/carry[11] ), 
        .CO(\add_5_root_add_101_6/carry[12] ), .S(N161) );
  ADDFXL U1393 ( .A(n1832), .B(n1837), .CI(\add_5_root_add_101_6/carry[12] ), 
        .CO(\add_5_root_add_101_6/carry[13] ), .S(N162) );
  ADDFXL U1394 ( .A(n1834), .B(n1839), .CI(\add_5_root_add_101_6/carry[13] ), 
        .CO(\add_5_root_add_101_6/carry[14] ), .S(N163) );
  ADDFXL U1395 ( .A(n1836), .B(n1841), .CI(\add_5_root_add_101_6/carry[14] ), 
        .CO(\add_5_root_add_101_6/carry[15] ), .S(N164) );
  ADDFXL U1396 ( .A(n1838), .B(n1852), .CI(\add_5_root_add_101_6/carry[15] ), 
        .CO(\add_5_root_add_101_6/carry[16] ), .S(N165) );
  ADDFXL U1397 ( .A(n1840), .B(n1852), .CI(\add_5_root_add_101_6/carry[16] ), 
        .CO(\add_5_root_add_101_6/carry[17] ), .S(N166) );
  OAI21XL U1398 ( .A0(n1339), .A1(n1357), .B0(n849), .Y(n1082) );
  AOI2BB2X1 U1399 ( .B0(N281), .B1(n1936), .A0N(n1695), .A1N(n1365), .Y(n849)
         );
  CLKINVX1 U1400 ( .A(n1654), .Y(n1657) );
  OAI21XL U1401 ( .A0(n1493), .A1(n1405), .B0(n736), .Y(n1028) );
  AOI2BB2X1 U1402 ( .B0(N1570), .B1(n1939), .A0N(n625), .A1N(n1463), .Y(n736)
         );
  OAI21XL U1403 ( .A0(n1338), .A1(n1354), .B0(n824), .Y(n1043) );
  AOI2BB2X1 U1404 ( .B0(N772), .B1(n1944), .A0N(n625), .A1N(n1407), .Y(n824)
         );
  OAI21XL U1405 ( .A0(n1338), .A1(n1351), .B0(n822), .Y(n1047) );
  AOI2BB2X1 U1406 ( .B0(N773), .B1(n1944), .A0N(n625), .A1N(n1446), .Y(n822)
         );
  OAI21XL U1407 ( .A0(n1338), .A1(n1352), .B0(n820), .Y(n1051) );
  AOI2BB2X1 U1408 ( .B0(N774), .B1(n1944), .A0N(n625), .A1N(n1440), .Y(n820)
         );
  OAI21XL U1409 ( .A0(n1339), .A1(n1350), .B0(n856), .Y(n1070) );
  AOI2BB2X1 U1410 ( .B0(N278), .B1(n1936), .A0N(n1695), .A1N(n1361), .Y(n856)
         );
  OAI21XL U1411 ( .A0(n1339), .A1(n1355), .B0(n854), .Y(n1074) );
  AOI2BB2X1 U1412 ( .B0(N279), .B1(n1936), .A0N(n1695), .A1N(n1362), .Y(n854)
         );
  OAI21XL U1413 ( .A0(n1339), .A1(n1356), .B0(n851), .Y(n1078) );
  AOI2BB2X1 U1414 ( .B0(N280), .B1(n1936), .A0N(n1695), .A1N(n1363), .Y(n851)
         );
  OAI21XL U1415 ( .A0(n781), .A1(n1447), .B0(n783), .Y(n1023) );
  AOI22X1 U1416 ( .A0(N767), .A1(n1944), .B0(n1696), .B1(n1508), .Y(n783) );
  OAI21XL U1417 ( .A0(n781), .A1(n1452), .B0(n787), .Y(n1015) );
  AOI22X1 U1418 ( .A0(N765), .A1(n1944), .B0(n1697), .B1(n1502), .Y(n787) );
  OAI21XL U1419 ( .A0(n781), .A1(n1445), .B0(n785), .Y(n1019) );
  AOI22X1 U1420 ( .A0(N766), .A1(n1944), .B0(n1696), .B1(n1505), .Y(n785) );
  OAI21XL U1421 ( .A0(n1339), .A1(n1344), .B0(n868), .Y(n1046) );
  AOI2BB2X1 U1422 ( .B0(N272), .B1(n1936), .A0N(n1695), .A1N(n1351), .Y(n868)
         );
  OAI21XL U1423 ( .A0(n1339), .A1(n1345), .B0(n866), .Y(n1050) );
  AOI2BB2X1 U1424 ( .B0(N273), .B1(n1936), .A0N(n625), .A1N(n1352), .Y(n866)
         );
  OAI21XL U1425 ( .A0(n1339), .A1(n1346), .B0(n864), .Y(n1054) );
  AOI2BB2X1 U1426 ( .B0(N274), .B1(n1936), .A0N(n1695), .A1N(n1353), .Y(n864)
         );
  OAI21XL U1427 ( .A0(n1339), .A1(n1347), .B0(n862), .Y(n1058) );
  AOI2BB2X1 U1428 ( .B0(N275), .B1(n1936), .A0N(n625), .A1N(n1358), .Y(n862)
         );
  OAI21XL U1429 ( .A0(n1339), .A1(n1348), .B0(n860), .Y(n1062) );
  AOI2BB2X1 U1430 ( .B0(N276), .B1(n1936), .A0N(n625), .A1N(n1359), .Y(n860)
         );
  OAI21XL U1431 ( .A0(n1339), .A1(n1349), .B0(n858), .Y(n1066) );
  AOI2BB2X1 U1432 ( .B0(N277), .B1(n1936), .A0N(n625), .A1N(n1360), .Y(n858)
         );
  CLKBUFX3 U1433 ( .A(n1769), .Y(n1783) );
  OAI21XL U1434 ( .A0(n781), .A1(n1454), .B0(n789), .Y(n1011) );
  AOI22X1 U1435 ( .A0(N764), .A1(n1944), .B0(n1696), .B1(n1499), .Y(n789) );
  OAI21XL U1436 ( .A0(n1339), .A1(n1342), .B0(n872), .Y(n1038) );
  AOI2BB2X1 U1437 ( .B0(N270), .B1(n1936), .A0N(n625), .A1N(n1413), .Y(n872)
         );
  OAI21XL U1438 ( .A0(n1339), .A1(n1343), .B0(n870), .Y(n1042) );
  AOI2BB2X1 U1439 ( .B0(N271), .B1(n1936), .A0N(n625), .A1N(n1354), .Y(n870)
         );
  CLKINVX1 U1440 ( .A(n839), .Y(n1924) );
  AOI222XL U1441 ( .A0(n1503), .A1(n838), .B0(n1504), .B1(n1697), .C0(N265), 
        .C1(n1936), .Y(n839) );
  CLKINVX1 U1442 ( .A(n837), .Y(n1923) );
  AOI222XL U1443 ( .A0(n1506), .A1(n838), .B0(n1507), .B1(n1697), .C0(N266), 
        .C1(n1936), .Y(n837) );
  NAND4X1 U1444 ( .A(n561), .B(n1931), .C(n562), .D(n563), .Y(n1297) );
  AOI211X1 U1445 ( .A0(N149), .A1(n1947), .B0(n565), .C0(n1936), .Y(n563) );
  OA21XL U1446 ( .A0(N1628), .A1(n1485), .B0(n569), .Y(n562) );
  CLKINVX1 U1447 ( .A(n575), .Y(n1931) );
  OAI211X1 U1448 ( .A0(N826), .A1(n560), .B0(n576), .C0(n577), .Y(n575) );
  NOR2BX1 U1449 ( .AN(n541), .B(n1935), .Y(n577) );
  CLKINVX1 U1450 ( .A(n842), .Y(n1927) );
  AOI222XL U1451 ( .A0(n1495), .A1(n838), .B0(n1496), .B1(n1697), .C0(N262), 
        .C1(n1936), .Y(n842) );
  CLKINVX1 U1452 ( .A(n841), .Y(n1926) );
  AOI222XL U1453 ( .A0(n1497), .A1(n838), .B0(n1498), .B1(n1697), .C0(N263), 
        .C1(n1936), .Y(n841) );
  CLKINVX1 U1454 ( .A(n840), .Y(n1925) );
  AOI222XL U1455 ( .A0(n1500), .A1(n838), .B0(n1501), .B1(n1697), .C0(N264), 
        .C1(n1936), .Y(n840) );
  NOR2BX1 U1456 ( .AN(n956), .B(n1367), .Y(n950) );
  NOR2BX1 U1457 ( .AN(n954), .B(n1367), .Y(n948) );
  NOR4BX1 U1458 ( .AN(n542), .B(n1367), .C(n593), .D(n1493), .Y(n591) );
  NAND2X1 U1459 ( .A(n948), .B(n945), .Y(n543) );
  NAND2X1 U1460 ( .A(n947), .B(n944), .Y(n907) );
  NAND2X1 U1461 ( .A(n943), .B(n944), .Y(n595) );
  NAND2X1 U1462 ( .A(n943), .B(n944), .Y(n1488) );
  NAND2X1 U1463 ( .A(n946), .B(n943), .Y(n581) );
  NAND2X1 U1464 ( .A(n945), .B(n943), .Y(n1487) );
  NAND2X1 U1465 ( .A(n945), .B(n943), .Y(n876) );
  NAND2X1 U1466 ( .A(n950), .B(n945), .Y(n589) );
  NAND2X1 U1467 ( .A(n950), .B(n945), .Y(n1483) );
  NAND2X1 U1468 ( .A(n945), .B(n947), .Y(n908) );
  NAND2X1 U1469 ( .A(n950), .B(n944), .Y(n1484) );
  NAND2X1 U1470 ( .A(n950), .B(n944), .Y(n880) );
  NAND2X1 U1471 ( .A(n946), .B(n947), .Y(n1486) );
  NAND2X1 U1472 ( .A(n946), .B(n947), .Y(n560) );
  NAND2X1 U1473 ( .A(n946), .B(n950), .Y(n549) );
  NAND2X1 U1474 ( .A(n948), .B(n949), .Y(n568) );
  NAND2X1 U1475 ( .A(n948), .B(n949), .Y(n1485) );
  NAND2X1 U1476 ( .A(n950), .B(n949), .Y(n730) );
  NAND2X1 U1477 ( .A(n949), .B(n943), .Y(n939) );
  NAND2X1 U1478 ( .A(n948), .B(n944), .Y(n873) );
  NAND2X1 U1479 ( .A(n946), .B(n948), .Y(n829) );
  NAND4X1 U1480 ( .A(n907), .B(n620), .C(n939), .D(n953), .Y(n2162) );
  NOR3X1 U1481 ( .A(n1940), .B(n1950), .C(n1935), .Y(n953) );
  NOR2X1 U1482 ( .A(n908), .B(n1334), .Y(n645) );
  NAND2X1 U1483 ( .A(n952), .B(n1367), .Y(n601) );
  NAND4X1 U1484 ( .A(n580), .B(n581), .C(n582), .D(n583), .Y(n1298) );
  NOR4X1 U1485 ( .A(n1693), .B(n1945), .C(n1950), .D(n1947), .Y(n583) );
  NAND4X1 U1486 ( .A(n543), .B(n1483), .C(n590), .D(n591), .Y(n580) );
  NOR2BX1 U1487 ( .AN(n561), .B(n587), .Y(n582) );
  NAND2X1 U1488 ( .A(n595), .B(n596), .Y(n573) );
  NAND2X1 U1489 ( .A(n620), .B(n601), .Y(n602) );
  OR4X1 U1490 ( .A(n570), .B(n1697), .C(n1940), .D(n1368), .Y(n569) );
  NAND3BX1 U1491 ( .AN(n573), .B(n559), .C(n544), .Y(n570) );
  CLKINVX1 U1492 ( .A(n1695), .Y(n1697) );
  NAND2X1 U1493 ( .A(n540), .B(n541), .Y(n1292) );
  NAND4X1 U1494 ( .A(n542), .B(n543), .C(n544), .D(n545), .Y(n540) );
  NOR4X1 U1495 ( .A(n1871), .B(n1939), .C(n1944), .D(n1948), .Y(n545) );
  AO21X1 U1496 ( .A0(n1840), .A1(n1488), .B0(n882), .Y(n1203) );
  AO21X1 U1497 ( .A0(n1842), .A1(n1488), .B0(n882), .Y(n1204) );
  AO21X1 U1498 ( .A0(n1863), .A1(n1488), .B0(n882), .Y(n1205) );
  AO21X1 U1499 ( .A0(n1732), .A1(n876), .B0(n877), .Y(n1133) );
  AO21X1 U1500 ( .A0(n1721), .A1(n589), .B0(n875), .Y(n1115) );
  AO21X1 U1501 ( .A0(n1762), .A1(n1486), .B0(n879), .Y(n1167) );
  AO21X1 U1502 ( .A0(n1764), .A1(n1486), .B0(n879), .Y(n1168) );
  AO21X1 U1503 ( .A0(n1783), .A1(n1486), .B0(n879), .Y(n1169) );
  AO21X1 U1504 ( .A0(n1799), .A1(n1484), .B0(n881), .Y(n1185) );
  AO21X1 U1505 ( .A0(n1801), .A1(n1484), .B0(n881), .Y(n1186) );
  AO21X1 U1506 ( .A0(n1820), .A1(n880), .B0(n881), .Y(n1187) );
  AO21X1 U1507 ( .A0(n1748), .A1(n1485), .B0(n878), .Y(n1151) );
  NAND3X1 U1508 ( .A(n945), .B(n1367), .C(n951), .Y(n905) );
  NAND4BX1 U1509 ( .AN(n906), .B(n795), .C(n745), .D(n845), .Y(N6402) );
  NAND3BX1 U1510 ( .AN(n645), .B(n696), .C(n605), .Y(n906) );
  NAND4X1 U1511 ( .A(n727), .B(n581), .C(n940), .D(n941), .Y(N6383) );
  NOR3X1 U1512 ( .A(n1939), .B(n1871), .C(n1936), .Y(n940) );
  NOR3BXL U1513 ( .AN(n551), .B(n942), .C(n885), .Y(n941) );
  NAND3X1 U1514 ( .A(n543), .B(n905), .C(n596), .Y(n942) );
  CLKBUFX3 U1515 ( .A(n1930), .Y(n1661) );
  CLKBUFX3 U1516 ( .A(n1930), .Y(n1659) );
  CLKBUFX3 U1517 ( .A(n1930), .Y(n1660) );
  CLKBUFX3 U1518 ( .A(n1930), .Y(n1665) );
  CLKBUFX3 U1519 ( .A(n1930), .Y(n1663) );
  CLKBUFX3 U1520 ( .A(n1930), .Y(n1662) );
  CLKBUFX3 U1521 ( .A(n1930), .Y(n1664) );
  CLKBUFX3 U1522 ( .A(n1930), .Y(n1658) );
  CLKBUFX3 U1523 ( .A(n1930), .Y(n1666) );
  CLKBUFX3 U1524 ( .A(ss0[9]), .Y(n1519) );
  CLKBUFX3 U1525 ( .A(ss2[6]), .Y(n1508) );
  CLKBUFX3 U1526 ( .A(ss3[12]), .Y(n1532) );
  CLKBUFX3 U1527 ( .A(ss3[9]), .Y(n1523) );
  CLKBUFX3 U1528 ( .A(ss2[5]), .Y(n1505) );
  CLKBUFX3 U1529 ( .A(ss3[10]), .Y(n1527) );
  CLKBUFX3 U1530 ( .A(ss3[11]), .Y(n1529) );
  CLKBUFX3 U1531 ( .A(ss2[4]), .Y(n1502) );
  CLKBUFX3 U1532 ( .A(ss2[3]), .Y(n1499) );
  AO22X1 U1533 ( .A0(n601), .A1(ss5[24]), .B0(N6321), .B1(n1693), .Y(n1268) );
  CLKBUFX3 U1534 ( .A(ss3[14]), .Y(n1538) );
  CLKBUFX3 U1535 ( .A(ss3[15]), .Y(n1541) );
  CLKBUFX3 U1536 ( .A(ss3[16]), .Y(n1544) );
  CLKBUFX3 U1537 ( .A(ss3[17]), .Y(n1547) );
  CLKBUFX3 U1538 ( .A(ss3[18]), .Y(n1550) );
  CLKBUFX3 U1539 ( .A(ss0[7]), .Y(n1510) );
  OAI21XL U1540 ( .A0(n621), .A1(n1334), .B0(n642), .Y(n1228) );
  AOI22X1 U1541 ( .A0(N4390), .A1(n1937), .B0(ss5[24]), .B1(n1697), .Y(n642)
         );
  CLKBUFX3 U1542 ( .A(ss3[13]), .Y(n1535) );
  CLKINVX1 U1543 ( .A(s2[15]), .Y(n1632) );
  CLKINVX1 U1544 ( .A(s2[14]), .Y(n1627) );
  CLKBUFX3 U1545 ( .A(N828), .Y(n1621) );
  CLKBUFX3 U1546 ( .A(ss0[2]), .Y(n1495) );
  CLKBUFX3 U1547 ( .A(ss2[13]), .Y(n1533) );
  CLKBUFX3 U1548 ( .A(ss0[7]), .Y(n1509) );
  CLKBUFX3 U1549 ( .A(ss0[8]), .Y(n1514) );
  CLKBUFX3 U1550 ( .A(s2[10]), .Y(n1622) );
  CLKBUFX3 U1551 ( .A(ss1[1]), .Y(n1494) );
  CLKBUFX3 U1552 ( .A(ss2[12]), .Y(n1530) );
  CLKBUFX3 U1553 ( .A(ss2[12]), .Y(n1531) );
  CLKINVX1 U1554 ( .A(s2[14]), .Y(n1626) );
  ADDFXL U1555 ( .A(s5[16]), .B(s5[17]), .CI(\add_75_root_add_236_61/carry[6] ), .CO(\add_75_root_add_236_61/carry[7] ), .S(N4438) );
  ADDFXL U1556 ( .A(s5[19]), .B(s5[20]), .CI(\add_75_root_add_236_61/carry[9] ), .CO(\add_75_root_add_236_61/carry[10] ), .S(N4441) );
  ADDFXL U1557 ( .A(s5[20]), .B(s5[21]), .CI(
        \add_75_root_add_236_61/carry[10] ), .CO(
        \add_75_root_add_236_61/carry[11] ), .S(N4442) );
  ADDFXL U1558 ( .A(s5[21]), .B(s5[22]), .CI(
        \add_75_root_add_236_61/carry[11] ), .CO(
        \add_75_root_add_236_61/carry[12] ), .S(N4443) );
  ADDFXL U1559 ( .A(s5[22]), .B(s5[23]), .CI(
        \add_75_root_add_236_61/carry[12] ), .CO(
        \add_75_root_add_236_61/carry[13] ), .S(N4444) );
  ADDFXL U1560 ( .A(s5[23]), .B(n1720), .CI(\add_75_root_add_236_61/carry[13] ), .CO(N4446), .S(N4445) );
  ADDFXL U1561 ( .A(s5[11]), .B(s5[12]), .CI(\add_75_root_add_236_61/carry[1] ), .CO(\add_75_root_add_236_61/carry[2] ), .S(N4433) );
  ADDFXL U1562 ( .A(s5[12]), .B(s5[13]), .CI(\add_75_root_add_236_61/carry[2] ), .CO(\add_75_root_add_236_61/carry[3] ), .S(N4434) );
  ADDFXL U1563 ( .A(s5[13]), .B(s5[14]), .CI(\add_75_root_add_236_61/carry[3] ), .CO(\add_75_root_add_236_61/carry[4] ), .S(N4435) );
  ADDFXL U1564 ( .A(s5[14]), .B(s5[15]), .CI(\add_75_root_add_236_61/carry[4] ), .CO(\add_75_root_add_236_61/carry[5] ), .S(N4436) );
  ADDFXL U1565 ( .A(s5[15]), .B(s5[16]), .CI(\add_75_root_add_236_61/carry[5] ), .CO(\add_75_root_add_236_61/carry[6] ), .S(N4437) );
  ADDFXL U1566 ( .A(s5[17]), .B(s5[18]), .CI(\add_75_root_add_236_61/carry[7] ), .CO(\add_75_root_add_236_61/carry[8] ), .S(N4439) );
  ADDFXL U1567 ( .A(s5[18]), .B(s5[19]), .CI(\add_75_root_add_236_61/carry[8] ), .CO(\add_75_root_add_236_61/carry[9] ), .S(N4440) );
  ADDFXL U1568 ( .A(s5[8]), .B(s5[11]), .CI(\add_76_root_add_236_61/carry[2] ), 
        .CO(\add_76_root_add_236_61/carry[3] ), .S(N4414) );
  CLKBUFX3 U1569 ( .A(s3[11]), .Y(n1581) );
  CLKBUFX3 U1570 ( .A(ss3[19]), .Y(n1553) );
  CLKBUFX3 U1571 ( .A(ss1[10]), .Y(n1525) );
  ADDFXL U1572 ( .A(s5[16]), .B(s5[19]), .CI(
        \add_76_root_add_236_61/carry[10] ), .CO(
        \add_76_root_add_236_61/carry[11] ), .S(N4422) );
  ADDFXL U1573 ( .A(s5[17]), .B(s5[20]), .CI(
        \add_76_root_add_236_61/carry[11] ), .CO(
        \add_76_root_add_236_61/carry[12] ), .S(N4423) );
  ADDFXL U1574 ( .A(s5[18]), .B(s5[21]), .CI(
        \add_76_root_add_236_61/carry[12] ), .CO(
        \add_76_root_add_236_61/carry[13] ), .S(N4424) );
  ADDFXL U1575 ( .A(s5[19]), .B(s5[22]), .CI(
        \add_76_root_add_236_61/carry[13] ), .CO(
        \add_76_root_add_236_61/carry[14] ), .S(N4425) );
  ADDFXL U1576 ( .A(s5[20]), .B(s5[23]), .CI(
        \add_76_root_add_236_61/carry[14] ), .CO(
        \add_76_root_add_236_61/carry[15] ), .S(N4426) );
  ADDFXL U1577 ( .A(s5[21]), .B(n1720), .CI(\add_76_root_add_236_61/carry[15] ), .CO(\add_76_root_add_236_61/carry[16] ), .S(N4427) );
  ADDFXL U1578 ( .A(s5[22]), .B(n1720), .CI(\add_76_root_add_236_61/carry[16] ), .CO(\add_76_root_add_236_61/carry[17] ), .S(N4428) );
  ADDFXL U1579 ( .A(s5[23]), .B(n1720), .CI(\add_76_root_add_236_61/carry[17] ), .CO(N4430), .S(N4429) );
  ADDFXL U1580 ( .A(s5[14]), .B(s5[17]), .CI(\add_76_root_add_236_61/carry[8] ), .CO(\add_76_root_add_236_61/carry[9] ), .S(N4420) );
  CLKBUFX3 U1581 ( .A(ss1[2]), .Y(n1496) );
  CLKINVX1 U1582 ( .A(s1[14]), .Y(n1645) );
  CLKINVX1 U1583 ( .A(s3[16]), .Y(n1587) );
  CLKINVX1 U1584 ( .A(s2[15]), .Y(n1631) );
  CLKINVX1 U1585 ( .A(s3[17]), .Y(n1592) );
  CLKINVX1 U1586 ( .A(s3[18]), .Y(n1598) );
  CLKINVX1 U1587 ( .A(s3[19]), .Y(n1604) );
  CLKINVX1 U1588 ( .A(s3[20]), .Y(n1609) );
  CLKINVX1 U1589 ( .A(s3[21]), .Y(n1615) );
  CLKBUFX3 U1590 ( .A(ss3[23]), .Y(n1565) );
  CLKBUFX3 U1591 ( .A(s4[14]), .Y(n1570) );
  CLKBUFX3 U1592 ( .A(ss2[14]), .Y(n1537) );
  CLKBUFX3 U1593 ( .A(ss2[14]), .Y(n1536) );
  CLKBUFX3 U1594 ( .A(ss2[15]), .Y(n1539) );
  CLKBUFX3 U1595 ( .A(ss2[16]), .Y(n1542) );
  CLKBUFX3 U1596 ( .A(ss2[17]), .Y(n1545) );
  CLKBUFX3 U1597 ( .A(ss2[18]), .Y(n1548) );
  CLKBUFX3 U1598 ( .A(ss1[8]), .Y(n1516) );
  CLKBUFX3 U1599 ( .A(ss2[15]), .Y(n1540) );
  CLKBUFX3 U1600 ( .A(ss2[16]), .Y(n1543) );
  CLKBUFX3 U1601 ( .A(ss1[9]), .Y(n1521) );
  CLKBUFX3 U1602 ( .A(ss2[13]), .Y(n1534) );
  CLKBUFX3 U1603 ( .A(s4[13]), .Y(n1569) );
  CLKBUFX3 U1604 ( .A(s4[12]), .Y(n1568) );
  CLKBUFX3 U1605 ( .A(s3[10]), .Y(n1580) );
  CLKBUFX3 U1606 ( .A(s4[11]), .Y(n1567) );
  CLKBUFX3 U1607 ( .A(s2[17]), .Y(n1752) );
  CLKINVX1 U1608 ( .A(s3[16]), .Y(n1586) );
  CLKINVX1 U1609 ( .A(s3[17]), .Y(n1591) );
  CLKINVX1 U1610 ( .A(s3[18]), .Y(n1597) );
  CLKINVX1 U1611 ( .A(s3[19]), .Y(n1603) );
  CLKINVX1 U1612 ( .A(s3[20]), .Y(n1608) );
  CLKINVX1 U1613 ( .A(s3[21]), .Y(n1613) );
  CLKBUFX3 U1614 ( .A(s2[16]), .Y(n1750) );
  CLKBUFX3 U1615 ( .A(s2[18]), .Y(n1754) );
  CLKBUFX3 U1616 ( .A(s2[19]), .Y(n1756) );
  CLKBUFX3 U1617 ( .A(s4[10]), .Y(n1566) );
  ADDFXL U1618 ( .A(N4412), .B(s5[12]), .CI(\add_76_root_add_236_61/carry[3] ), 
        .CO(\add_76_root_add_236_61/carry[4] ), .S(N4415) );
  ADDFXL U1619 ( .A(s5[10]), .B(s5[13]), .CI(\add_76_root_add_236_61/carry[4] ), .CO(\add_76_root_add_236_61/carry[5] ), .S(N4416) );
  ADDFXL U1620 ( .A(s5[11]), .B(s5[14]), .CI(\add_76_root_add_236_61/carry[5] ), .CO(\add_76_root_add_236_61/carry[6] ), .S(N4417) );
  ADDFXL U1621 ( .A(s5[12]), .B(s5[15]), .CI(\add_76_root_add_236_61/carry[6] ), .CO(\add_76_root_add_236_61/carry[7] ), .S(N4418) );
  ADDFXL U1622 ( .A(s5[13]), .B(s5[16]), .CI(\add_76_root_add_236_61/carry[7] ), .CO(\add_76_root_add_236_61/carry[8] ), .S(N4419) );
  ADDFXL U1623 ( .A(s5[15]), .B(s5[18]), .CI(\add_76_root_add_236_61/carry[9] ), .CO(\add_76_root_add_236_61/carry[10] ), .S(N4421) );
  CLKBUFX3 U1624 ( .A(s2[24]), .Y(n1765) );
  CLKBUFX3 U1625 ( .A(s1[10]), .Y(n1638) );
  CLKBUFX3 U1626 ( .A(N326), .Y(n1637) );
  ADDFXL U1627 ( .A(N2806), .B(n1568), .CI(\add_63_root_sub_205_16/carry[3] ), 
        .CO(\add_63_root_sub_205_16/carry[4] ), .S(N2809) );
  ADDFXL U1628 ( .A(s4[8]), .B(n1567), .CI(\add_63_root_sub_205_16/carry[2] ), 
        .CO(\add_63_root_sub_205_16/carry[3] ), .S(N2808) );
  CLKINVX1 U1629 ( .A(s1[13]), .Y(n1641) );
  CLKINVX1 U1630 ( .A(s3[21]), .Y(n1614) );
  CLKBUFX3 U1631 ( .A(ss2[19]), .Y(n1551) );
  CLKBUFX3 U1632 ( .A(ss2[20]), .Y(n1554) );
  CLKBUFX3 U1633 ( .A(ss2[21]), .Y(n1557) );
  CLKBUFX3 U1634 ( .A(ss1[10]), .Y(n1524) );
  CLKBUFX3 U1635 ( .A(ss2[22]), .Y(n1560) );
  CLKBUFX3 U1636 ( .A(ss2[22]), .Y(n1561) );
  CLKBUFX3 U1637 ( .A(ss2[17]), .Y(n1546) );
  CLKBUFX3 U1638 ( .A(ss2[18]), .Y(n1549) );
  CLKBUFX3 U1639 ( .A(ss2[19]), .Y(n1552) );
  CLKBUFX3 U1640 ( .A(ss2[20]), .Y(n1555) );
  CLKBUFX3 U1641 ( .A(ss2[21]), .Y(n1558) );
  CLKBUFX3 U1642 ( .A(ss1[9]), .Y(n1520) );
  CLKBUFX3 U1643 ( .A(s1[8]), .Y(n1636) );
  CLKBUFX3 U1644 ( .A(ss1[8]), .Y(n1515) );
  CLKBUFX3 U1645 ( .A(s1[17]), .Y(n1789) );
  CLKBUFX3 U1646 ( .A(s1[18]), .Y(n1791) );
  CLKBUFX3 U1647 ( .A(s1[19]), .Y(n1793) );
  CLKBUFX3 U1648 ( .A(s1[20]), .Y(n1795) );
  CLKBUFX3 U1649 ( .A(s2[20]), .Y(n1758) );
  CLKBUFX3 U1650 ( .A(s2[21]), .Y(n1760) );
  CLKBUFX3 U1651 ( .A(s2[22]), .Y(n1762) );
  CLKBUFX3 U1652 ( .A(s2[23]), .Y(n1764) );
  CLKBUFX3 U1653 ( .A(s1[15]), .Y(n1785) );
  ADDFXL U1654 ( .A(s3[8]), .B(n1581), .CI(\add_45_root_add_176_41/carry[2] ), 
        .CO(\add_45_root_add_176_41/carry[3] ), .S(N1632) );
  CLKBUFX3 U1655 ( .A(ss0[24]), .Y(n1710) );
  ADDFXL U1656 ( .A(N1630), .B(n1582), .CI(\add_45_root_add_176_41/carry[3] ), 
        .CO(\add_45_root_add_176_41/carry[4] ), .S(N1633) );
  CLKBUFX3 U1657 ( .A(s2[24]), .Y(n1768) );
  CLKBUFX3 U1658 ( .A(s3[24]), .Y(n1735) );
  CLKBUFX3 U1659 ( .A(s3[24]), .Y(n1736) );
  CLKBUFX3 U1660 ( .A(s3[24]), .Y(n1733) );
  CLKBUFX3 U1661 ( .A(s4[24]), .Y(n1723) );
  CLKBUFX3 U1662 ( .A(s4[24]), .Y(n1724) );
  CLKBUFX3 U1663 ( .A(s0[15]), .Y(n1826) );
  CLKBUFX3 U1664 ( .A(ss2[23]), .Y(n1563) );
  CLKBUFX3 U1665 ( .A(ss2[23]), .Y(n1564) );
  CLKBUFX3 U1666 ( .A(s0[14]), .Y(n1824) );
  CLKBUFX3 U1667 ( .A(s1[21]), .Y(n1797) );
  CLKBUFX3 U1668 ( .A(s1[22]), .Y(n1799) );
  CLKBUFX3 U1669 ( .A(s1[23]), .Y(n1801) );
  ADDFXL U1670 ( .A(s2[8]), .B(n1623), .CI(\add_30_root_sub_149_5/carry[2] ), 
        .CO(\add_30_root_sub_149_5/carry[3] ), .S(N830) );
  ADDFXL U1671 ( .A(n1636), .B(n1639), .CI(\add_18_root_add_124_19/carry[2] ), 
        .CO(\add_18_root_add_124_19/carry[3] ), .S(N328) );
  CLKINVX1 U1672 ( .A(ss1[24]), .Y(n1707) );
  CLKBUFX3 U1673 ( .A(s1[24]), .Y(n1805) );
  CLKBUFX3 U1674 ( .A(s1[24]), .Y(n1802) );
  CLKBUFX3 U1675 ( .A(s1[24]), .Y(n1803) );
  CLKBUFX3 U1676 ( .A(s2[24]), .Y(n1766) );
  CLKBUFX3 U1677 ( .A(s1[16]), .Y(n1787) );
  AO22X1 U1678 ( .A0(n1934), .A1(ss5[6]), .B0(N6303), .B1(n1693), .Y(n1269) );
  AO22X1 U1679 ( .A0(n1934), .A1(ss5[5]), .B0(N6302), .B1(n1693), .Y(n1270) );
  AO22X1 U1680 ( .A0(n1934), .A1(ss5[4]), .B0(N6301), .B1(n1693), .Y(n1271) );
  AO22X1 U1681 ( .A0(n1934), .A1(ss5[3]), .B0(N6300), .B1(n1693), .Y(n1272) );
  CLKBUFX3 U1682 ( .A(s4[24]), .Y(n1722) );
  CLKINVX1 U1683 ( .A(s0[12]), .Y(n1654) );
  CLKINVX1 U1684 ( .A(s0[12]), .Y(n1653) );
  ADDFXL U1685 ( .A(n1649), .B(n1652), .CI(\add_5_root_add_101_6/carry[2] ), 
        .CO(\add_5_root_add_101_6/carry[3] ), .S(N152) );
  CLKBUFX3 U1686 ( .A(s0[8]), .Y(n1649) );
  OAI21XL U1687 ( .A0(n683), .A1(n1459), .B0(n689), .Y(n1017) );
  AOI2BB2X1 U1688 ( .B0(N2744), .B1(n1948), .A0N(n1695), .A1N(n1436), .Y(n689)
         );
  OAI21XL U1689 ( .A0(n683), .A1(n1460), .B0(n687), .Y(n1021) );
  AOI2BB2X1 U1690 ( .B0(N2745), .B1(n1948), .A0N(n1695), .A1N(n1437), .Y(n687)
         );
  OAI21XL U1691 ( .A0(n683), .A1(n1461), .B0(n685), .Y(n1025) );
  AOI2BB2X1 U1692 ( .B0(N2746), .B1(n1948), .A0N(n1695), .A1N(n1438), .Y(n685)
         );
  OAI21XL U1693 ( .A0(n630), .A1(n1436), .B0(n636), .Y(n1248) );
  AOI22X1 U1694 ( .A0(N4370), .A1(n1937), .B0(ss5[4]), .B1(n1697), .Y(n636) );
  OAI21XL U1695 ( .A0(n630), .A1(n1437), .B0(n634), .Y(n1249) );
  AOI22X1 U1696 ( .A0(N4371), .A1(n1937), .B0(ss5[5]), .B1(n1697), .Y(n634) );
  OAI21XL U1697 ( .A0(n630), .A1(n1438), .B0(n632), .Y(n1250) );
  AOI22X1 U1698 ( .A0(N4372), .A1(n1937), .B0(ss5[6]), .B1(n1697), .Y(n632) );
  CLKBUFX3 U1699 ( .A(s0[13]), .Y(n1822) );
  CLKBUFX3 U1700 ( .A(s0[24]), .Y(n1866) );
  CLKBUFX3 U1701 ( .A(s1[24]), .Y(n1804) );
  CLKBUFX3 U1702 ( .A(s2[24]), .Y(n1767) );
  CLKBUFX3 U1703 ( .A(s3[24]), .Y(n1734) );
  AO22X1 U1704 ( .A0(n1934), .A1(ss5[2]), .B0(N6299), .B1(n1693), .Y(n1273) );
  AO22X1 U1705 ( .A0(n1934), .A1(ss5[1]), .B0(N6298), .B1(n1693), .Y(n1274) );
  CLKBUFX3 U1706 ( .A(s1[24]), .Y(n1806) );
  CLKBUFX3 U1707 ( .A(s2[24]), .Y(n1769) );
  OAI21XL U1708 ( .A0(n977), .A1(n1492), .B0(n895), .Y(n1276) );
  AOI22X1 U1709 ( .A0(N147), .A1(n1490), .B0(N6360), .B1(n1943), .Y(n895) );
  OAI21XL U1710 ( .A0(n683), .A1(n1401), .B0(n693), .Y(n1009) );
  AOI2BB2X1 U1711 ( .B0(N2742), .B1(n1948), .A0N(n1695), .A1N(n1415), .Y(n693)
         );
  OAI21XL U1712 ( .A0(n683), .A1(n1462), .B0(n691), .Y(n1013) );
  AOI2BB2X1 U1713 ( .B0(N2743), .B1(n1948), .A0N(n1695), .A1N(n1439), .Y(n691)
         );
  OAI21XL U1714 ( .A0(n630), .A1(n1396), .B0(n653), .Y(n1245) );
  AOI22X1 U1715 ( .A0(N4367), .A1(n1937), .B0(ss5[1]), .B1(n1697), .Y(n653) );
  OAI21XL U1716 ( .A0(n630), .A1(n1415), .B0(n640), .Y(n1246) );
  AOI22X1 U1717 ( .A0(N4368), .A1(n1937), .B0(ss5[2]), .B1(n1697), .Y(n640) );
  OAI21XL U1718 ( .A0(n630), .A1(n1439), .B0(n638), .Y(n1247) );
  AOI22X1 U1719 ( .A0(N4369), .A1(n1937), .B0(ss5[3]), .B1(n1697), .Y(n638) );
  OAI21XL U1720 ( .A0(n995), .A1(n1491), .B0(n894), .Y(n1299) );
  AOI22X1 U1721 ( .A0(N148), .A1(n1489), .B0(N6361), .B1(n1943), .Y(n894) );
  CLKBUFX3 U1722 ( .A(s0[24]), .Y(n1865) );
  CLKBUFX3 U1723 ( .A(s0[24]), .Y(n1867) );
  CLKBUFX3 U1724 ( .A(s0[24]), .Y(n1870) );
  CLKBUFX3 U1725 ( .A(s0[24]), .Y(n1869) );
  AO22X1 U1726 ( .A0(n1934), .A1(ss5[0]), .B0(N6297), .B1(n1693), .Y(n1275) );
  CLKINVX1 U1727 ( .A(n741), .Y(n1919) );
  AOI222XL U1728 ( .A0(n1499), .A1(n738), .B0(ss3[3]), .B1(n1697), .C0(N1566), 
        .C1(n1939), .Y(n741) );
  CLKINVX1 U1729 ( .A(n740), .Y(n1918) );
  AOI222XL U1730 ( .A0(n1502), .A1(n738), .B0(ss3[4]), .B1(n1697), .C0(N1567), 
        .C1(n1939), .Y(n740) );
  CLKINVX1 U1731 ( .A(n739), .Y(n1917) );
  AOI222XL U1732 ( .A0(n1505), .A1(n738), .B0(ss3[5]), .B1(n1697), .C0(N1568), 
        .C1(n1939), .Y(n739) );
  CLKINVX1 U1733 ( .A(n737), .Y(n1916) );
  AOI222XL U1734 ( .A0(n1508), .A1(n738), .B0(ss3[6]), .B1(n1697), .C0(N1569), 
        .C1(n1939), .Y(n737) );
  OAI21XL U1735 ( .A0(n683), .A1(n1455), .B0(n706), .Y(n1005) );
  AOI2BB2X1 U1736 ( .B0(N2741), .B1(n1948), .A0N(n1695), .A1N(n1396), .Y(n706)
         );
  OAI21XL U1737 ( .A0(n979), .A1(n1491), .B0(n897), .Y(n1278) );
  AOI22X1 U1738 ( .A0(N145), .A1(n1489), .B0(N6358), .B1(n1943), .Y(n897) );
  OAI21XL U1739 ( .A0(n980), .A1(n1492), .B0(n898), .Y(n1279) );
  AOI22X1 U1740 ( .A0(N144), .A1(n1490), .B0(N6357), .B1(n1943), .Y(n898) );
  OAI21XL U1741 ( .A0(n978), .A1(n883), .B0(n896), .Y(n1277) );
  AOI22X1 U1742 ( .A0(N146), .A1(n885), .B0(N6359), .B1(n1943), .Y(n896) );
  OAI21XL U1743 ( .A0(n981), .A1(n883), .B0(n899), .Y(n1280) );
  AOI22X1 U1744 ( .A0(N143), .A1(n885), .B0(N6356), .B1(n1943), .Y(n899) );
  CLKBUFX3 U1745 ( .A(s0[24]), .Y(n1864) );
  CLKBUFX3 U1746 ( .A(s0[24]), .Y(n1868) );
  CLKINVX1 U1747 ( .A(n752), .Y(n1921) );
  AOI222XL U1748 ( .A0(ss2[1]), .A1(n738), .B0(ss3[1]), .B1(n1697), .C0(N1564), 
        .C1(n1939), .Y(n752) );
  CLKINVX1 U1749 ( .A(n742), .Y(n1920) );
  AOI222XL U1750 ( .A0(ss2[2]), .A1(n738), .B0(ss3[2]), .B1(n1697), .C0(N1565), 
        .C1(n1939), .Y(n742) );
  OAI21XL U1751 ( .A0(n983), .A1(n1492), .B0(n901), .Y(n1282) );
  AOI22X1 U1752 ( .A0(N141), .A1(n1490), .B0(N6354), .B1(n1943), .Y(n901) );
  OAI21XL U1753 ( .A0(n781), .A1(n1453), .B0(n806), .Y(n1003) );
  AOI22X1 U1754 ( .A0(N762), .A1(n1944), .B0(n1696), .B1(ss2[1]), .Y(n806) );
  OAI21XL U1755 ( .A0(n781), .A1(n1450), .B0(n791), .Y(n1007) );
  AOI22X1 U1756 ( .A0(N763), .A1(n1944), .B0(n1696), .B1(ss2[2]), .Y(n791) );
  OAI21XL U1757 ( .A0(n683), .A1(n1458), .B0(n729), .Y(n1001) );
  AOI2BB2X1 U1758 ( .B0(N2740), .B1(n1948), .A0N(n1695), .A1N(n1428), .Y(n729)
         );
  OAI2BB2XL U1759 ( .B0(n957), .B1(n1871), .A0N(N304), .A1N(WEN), .Y(n1206) );
  OAI2BB2XL U1760 ( .B0(n958), .B1(n1871), .A0N(N303), .A1N(WEN), .Y(n1207) );
  OAI2BB2XL U1761 ( .B0(n959), .B1(n1871), .A0N(N302), .A1N(WEN), .Y(n1208) );
  OAI21XL U1762 ( .A0(n630), .A1(n1428), .B0(n675), .Y(n1244) );
  AOI22X1 U1763 ( .A0(N4366), .A1(n1937), .B0(ss5[0]), .B1(n1697), .Y(n675) );
  OAI21XL U1764 ( .A0(n982), .A1(n1491), .B0(n900), .Y(n1281) );
  AOI22X1 U1765 ( .A0(N142), .A1(n1489), .B0(N6355), .B1(n1943), .Y(n900) );
  OAI21XL U1766 ( .A0(n992), .A1(n883), .B0(n902), .Y(n1291) );
  AOI22X1 U1767 ( .A0(N140), .A1(n885), .B0(N6353), .B1(n1943), .Y(n902) );
  CLKINVX1 U1768 ( .A(n773), .Y(n1922) );
  AOI222XL U1769 ( .A0(ss2[0]), .A1(n738), .B0(ss3[0]), .B1(n1697), .C0(N1563), 
        .C1(n1939), .Y(n773) );
  NAND2X1 U1770 ( .A(data_done), .B(n1943), .Y(n541) );
  OAI21XL U1771 ( .A0(n781), .A1(n1372), .B0(n828), .Y(n999) );
  AOI22X1 U1772 ( .A0(N761), .A1(n1944), .B0(n1697), .B1(ss2[0]), .Y(n828) );
  OAI2BB2XL U1773 ( .B0(n960), .B1(n1871), .A0N(N301), .A1N(WEN), .Y(n1209) );
  OAI2BB2XL U1774 ( .B0(n961), .B1(n1871), .A0N(N300), .A1N(n1871), .Y(n1210)
         );
  OAI2BB2XL U1775 ( .B0(n962), .B1(n1871), .A0N(N299), .A1N(n1871), .Y(n1211)
         );
  OAI2BB2XL U1776 ( .B0(n963), .B1(n1871), .A0N(N298), .A1N(n1871), .Y(n1212)
         );
  OAI2BB2XL U1777 ( .B0(n964), .B1(n1871), .A0N(N297), .A1N(n1871), .Y(n1213)
         );
  OAI2BB2XL U1778 ( .B0(n965), .B1(n1871), .A0N(N296), .A1N(n1871), .Y(n1214)
         );
  OAI2BB2XL U1779 ( .B0(n966), .B1(n1871), .A0N(N295), .A1N(n1871), .Y(n1215)
         );
  OAI2BB2XL U1780 ( .B0(n967), .B1(n1871), .A0N(N294), .A1N(n1871), .Y(n1216)
         );
  AND3X2 U1781 ( .A(n944), .B(n1368), .C(state[4]), .Y(n952) );
  OAI21XL U1782 ( .A0(n984), .A1(n1491), .B0(n884), .Y(n1283) );
  AOI22X1 U1783 ( .A0(N138), .A1(n1489), .B0(N6351), .B1(n1943), .Y(n884) );
  OAI21XL U1784 ( .A0(n985), .A1(n1492), .B0(n886), .Y(n1284) );
  AOI22X1 U1785 ( .A0(N137), .A1(n1490), .B0(N6350), .B1(n1943), .Y(n886) );
  OAI21XL U1786 ( .A0(n994), .A1(n1491), .B0(n903), .Y(n1296) );
  AOI22X1 U1787 ( .A0(N139), .A1(n1489), .B0(N6352), .B1(n1943), .Y(n903) );
  OAI21XL U1788 ( .A0(n986), .A1(n883), .B0(n887), .Y(n1285) );
  AOI22X1 U1789 ( .A0(N136), .A1(n885), .B0(N6349), .B1(n1943), .Y(n887) );
  CLKBUFX3 U1790 ( .A(n625), .Y(n1695) );
  NAND3X1 U1791 ( .A(state[0]), .B(n944), .C(n951), .Y(n625) );
  CLKINVX1 U1792 ( .A(n852), .Y(n1928) );
  AOI222XL U1793 ( .A0(ss0[1]), .A1(n838), .B0(n1494), .B1(n1697), .C0(N261), 
        .C1(n1936), .Y(n852) );
  CLKINVX1 U1794 ( .A(n874), .Y(n1929) );
  AOI222XL U1795 ( .A0(ss0[0]), .A1(n838), .B0(ss1[0]), .B1(n1697), .C0(N260), 
        .C1(n1936), .Y(n874) );
  NOR2BX1 U1796 ( .AN(state[4]), .B(n1368), .Y(n951) );
  NAND3X1 U1797 ( .A(n945), .B(state[0]), .C(n951), .Y(n596) );
  NOR2BX1 U1798 ( .AN(DIn[15]), .B(n595), .Y(n882) );
  NOR2BX1 U1799 ( .AN(DIn[15]), .B(n876), .Y(n877) );
  NOR2BX1 U1800 ( .AN(DIn[15]), .B(n589), .Y(n875) );
  NOR2BX1 U1801 ( .AN(DIn[15]), .B(n880), .Y(n881) );
  NOR2BX1 U1802 ( .AN(DIn[15]), .B(n560), .Y(n879) );
  AOI211X1 U1803 ( .A0(n1941), .A1(N4411), .B0(n1948), .C0(n1949), .Y(n561) );
  NOR2BX1 U1804 ( .AN(DIn[15]), .B(n1485), .Y(n878) );
  OAI2BB2XL U1805 ( .B0(n968), .B1(n1871), .A0N(N293), .A1N(WEN), .Y(n1217) );
  OAI2BB2XL U1806 ( .B0(n969), .B1(n1871), .A0N(N292), .A1N(WEN), .Y(n1218) );
  OAI2BB2XL U1807 ( .B0(n970), .B1(n1871), .A0N(N291), .A1N(WEN), .Y(n1219) );
  OAI2BB2XL U1808 ( .B0(n971), .B1(n1871), .A0N(N290), .A1N(WEN), .Y(n1220) );
  OAI2BB2XL U1809 ( .B0(n972), .B1(n1871), .A0N(N289), .A1N(WEN), .Y(n1221) );
  OAI2BB2XL U1810 ( .B0(n973), .B1(n1871), .A0N(N288), .A1N(WEN), .Y(n1222) );
  OAI2BB2XL U1811 ( .B0(n974), .B1(n1871), .A0N(N287), .A1N(WEN), .Y(n1223) );
  OAI2BB2XL U1812 ( .B0(n975), .B1(n1871), .A0N(N286), .A1N(WEN), .Y(n1224) );
  OAI2BB2XL U1813 ( .B0(n976), .B1(n1871), .A0N(N285), .A1N(n1871), .Y(n1225)
         );
  OAI21XL U1814 ( .A0(n987), .A1(n1491), .B0(n888), .Y(n1286) );
  AOI22X1 U1815 ( .A0(N135), .A1(n1489), .B0(N6348), .B1(n1943), .Y(n888) );
  OAI21XL U1816 ( .A0(n988), .A1(n1492), .B0(n889), .Y(n1287) );
  AOI22X1 U1817 ( .A0(N134), .A1(n1490), .B0(N6347), .B1(n1943), .Y(n889) );
  OAI21XL U1818 ( .A0(n990), .A1(n1491), .B0(n891), .Y(n1289) );
  AOI22X1 U1819 ( .A0(N132), .A1(n1489), .B0(N6345), .B1(n1943), .Y(n891) );
  OAI21XL U1820 ( .A0(n991), .A1(n1492), .B0(n892), .Y(n1290) );
  AOI22X1 U1821 ( .A0(N131), .A1(n1490), .B0(n991), .B1(n1943), .Y(n892) );
  OAI21XL U1822 ( .A0(n996), .A1(n1492), .B0(n904), .Y(n1300) );
  AOI22X1 U1823 ( .A0(N129), .A1(n1490), .B0(N6342), .B1(n1943), .Y(n904) );
  OAI21XL U1824 ( .A0(n989), .A1(n883), .B0(n890), .Y(n1288) );
  AOI22X1 U1825 ( .A0(N133), .A1(n885), .B0(N6346), .B1(n1943), .Y(n890) );
  OAI21XL U1826 ( .A0(n993), .A1(n883), .B0(n893), .Y(n1294) );
  AOI22X1 U1827 ( .A0(N130), .A1(n885), .B0(N6343), .B1(n1943), .Y(n893) );
  NAND3X1 U1828 ( .A(n541), .B(n549), .C(n550), .Y(n1293) );
  AOI32X1 U1829 ( .A0(n542), .A1(state[3]), .A2(n551), .B0(N826), .B1(n1951), 
        .Y(n550) );
  NOR2X1 U1830 ( .A(state[1]), .B(state[4]), .Y(n954) );
  NOR2X1 U1831 ( .A(n1368), .B(state[4]), .Y(n956) );
  NAND2X1 U1832 ( .A(ss5[24]), .B(n1943), .Y(n605) );
  NAND3X1 U1833 ( .A(n1931), .B(n554), .C(n555), .Y(n1295) );
  NAND4X1 U1834 ( .A(n559), .B(n542), .C(state[2]), .D(n560), .Y(n554) );
  AOI211X1 U1835 ( .A0(N1628), .A1(n1938), .B0(n1940), .C0(n1942), .Y(n555) );
  AO22X1 U1836 ( .A0(n1951), .A1(DIn[1]), .B0(s2[8]), .B1(n1486), .Y(n1153) );
  AO22X1 U1837 ( .A0(n1938), .A1(DIn[2]), .B0(N1630), .B1(n1485), .Y(n1136) );
  AO22X1 U1838 ( .A0(n1941), .A1(DIn[9]), .B0(s5[16]), .B1(n1483), .Y(n1107)
         );
  AO22X1 U1839 ( .A0(n1941), .A1(DIn[10]), .B0(s5[17]), .B1(n589), .Y(n1108)
         );
  AO22X1 U1840 ( .A0(n1941), .A1(DIn[11]), .B0(s5[18]), .B1(n1483), .Y(n1109)
         );
  AO22X1 U1841 ( .A0(n1941), .A1(DIn[12]), .B0(s5[19]), .B1(n1483), .Y(n1110)
         );
  AO22X1 U1842 ( .A0(n1941), .A1(DIn[13]), .B0(s5[20]), .B1(n1483), .Y(n1111)
         );
  AO22X1 U1843 ( .A0(n1941), .A1(DIn[14]), .B0(s5[21]), .B1(n1483), .Y(n1112)
         );
  AO22X1 U1844 ( .A0(n1947), .A1(DIn[0]), .B0(s0[7]), .B1(n1488), .Y(n1188) );
  AO22X1 U1845 ( .A0(n1938), .A1(DIn[1]), .B0(s3[8]), .B1(n1485), .Y(n1135) );
  AO22X1 U1846 ( .A0(n1942), .A1(DIn[0]), .B0(s1[7]), .B1(n1484), .Y(n1170) );
  AO22X1 U1847 ( .A0(n1941), .A1(DIn[6]), .B0(s5[13]), .B1(n589), .Y(n1104) );
  AO22X1 U1848 ( .A0(n1941), .A1(DIn[7]), .B0(s5[14]), .B1(n1483), .Y(n1105)
         );
  AO22X1 U1849 ( .A0(n1941), .A1(DIn[8]), .B0(s5[15]), .B1(n589), .Y(n1106) );
  AO22X1 U1850 ( .A0(n1941), .A1(DIn[5]), .B0(s5[12]), .B1(n1483), .Y(n1103)
         );
  AO22X1 U1851 ( .A0(n1951), .A1(DIn[0]), .B0(s2[7]), .B1(n1486), .Y(n1152) );
  AO22X1 U1852 ( .A0(n1946), .A1(DIn[2]), .B0(N2806), .B1(n1487), .Y(n1118) );
  AO22X1 U1853 ( .A0(n1938), .A1(DIn[0]), .B0(s3[7]), .B1(n1485), .Y(n1134) );
  AO22X1 U1854 ( .A0(n1946), .A1(DIn[1]), .B0(s4[8]), .B1(n1487), .Y(n1117) );
  AO22X1 U1855 ( .A0(n1946), .A1(DIn[4]), .B0(n1567), .B1(n876), .Y(n1120) );
  AO22X1 U1856 ( .A0(n1946), .A1(DIn[5]), .B0(n1568), .B1(n1487), .Y(n1121) );
  AO22X1 U1857 ( .A0(n1946), .A1(DIn[6]), .B0(n1569), .B1(n876), .Y(n1122) );
  AO22X1 U1858 ( .A0(n1946), .A1(DIn[7]), .B0(n1570), .B1(n1487), .Y(n1123) );
  AO22X1 U1859 ( .A0(n1946), .A1(DIn[8]), .B0(n1571), .B1(n876), .Y(n1124) );
  AO22X1 U1860 ( .A0(n1946), .A1(DIn[9]), .B0(n1572), .B1(n1487), .Y(n1125) );
  AO22X1 U1861 ( .A0(n1946), .A1(DIn[10]), .B0(n1573), .B1(n876), .Y(n1126) );
  AO22X1 U1862 ( .A0(n1946), .A1(DIn[11]), .B0(n1574), .B1(n1487), .Y(n1127)
         );
  AO22X1 U1863 ( .A0(n1946), .A1(DIn[12]), .B0(n1575), .B1(n876), .Y(n1128) );
  AO22X1 U1864 ( .A0(n1946), .A1(DIn[13]), .B0(n1576), .B1(n1487), .Y(n1129)
         );
  AO22X1 U1865 ( .A0(n1946), .A1(DIn[14]), .B0(n1577), .B1(n1487), .Y(n1130)
         );
  AO22X1 U1866 ( .A0(n1938), .A1(DIn[3]), .B0(n1580), .B1(n568), .Y(n1137) );
  AO22X1 U1867 ( .A0(n1938), .A1(DIn[4]), .B0(n1581), .B1(n1485), .Y(n1138) );
  AO22X1 U1868 ( .A0(n1938), .A1(DIn[5]), .B0(n1582), .B1(n568), .Y(n1139) );
  AO22X1 U1869 ( .A0(n1938), .A1(DIn[6]), .B0(n1583), .B1(n1485), .Y(n1140) );
  AO22X1 U1870 ( .A0(n1938), .A1(DIn[7]), .B0(n1584), .B1(n568), .Y(n1141) );
  AO22X1 U1871 ( .A0(n1938), .A1(DIn[8]), .B0(n1585), .B1(n1485), .Y(n1142) );
  AO22X1 U1872 ( .A0(n1951), .A1(DIn[2]), .B0(n1621), .B1(n1486), .Y(n1154) );
  AO22X1 U1873 ( .A0(n1951), .A1(DIn[3]), .B0(n1622), .B1(n1486), .Y(n1155) );
  AO22X1 U1874 ( .A0(n1951), .A1(DIn[4]), .B0(n1623), .B1(n560), .Y(n1156) );
  AO22X1 U1875 ( .A0(n1951), .A1(DIn[5]), .B0(n1624), .B1(n1486), .Y(n1157) );
  AO22X1 U1876 ( .A0(n1951), .A1(DIn[6]), .B0(n1625), .B1(n560), .Y(n1158) );
  AO22X1 U1877 ( .A0(n1942), .A1(DIn[1]), .B0(n1636), .B1(n1484), .Y(n1171) );
  AO22X1 U1878 ( .A0(n1942), .A1(DIn[2]), .B0(n1637), .B1(n1484), .Y(n1172) );
  AO22X1 U1879 ( .A0(n1942), .A1(DIn[3]), .B0(n1638), .B1(n1484), .Y(n1173) );
  AO22X1 U1880 ( .A0(n1942), .A1(DIn[4]), .B0(n1639), .B1(n880), .Y(n1174) );
  AO22X1 U1881 ( .A0(n1942), .A1(DIn[5]), .B0(n1640), .B1(n1484), .Y(n1175) );
  AO22X1 U1882 ( .A0(n1947), .A1(DIn[1]), .B0(n1649), .B1(n1488), .Y(n1189) );
  AO22X1 U1883 ( .A0(n1947), .A1(DIn[2]), .B0(n1650), .B1(n1488), .Y(n1190) );
  AO22X1 U1884 ( .A0(n1947), .A1(DIn[3]), .B0(n1651), .B1(n1488), .Y(n1191) );
  AO22X1 U1885 ( .A0(n1947), .A1(DIn[4]), .B0(n1652), .B1(n595), .Y(n1192) );
  AO22X1 U1886 ( .A0(n1947), .A1(DIn[5]), .B0(n1657), .B1(n1488), .Y(n1193) );
  AO22X1 U1887 ( .A0(n1942), .A1(DIn[6]), .B0(n1643), .B1(n880), .Y(n1176) );
  AO22X1 U1888 ( .A0(n1942), .A1(DIn[7]), .B0(n1646), .B1(n1484), .Y(n1177) );
  AO22X1 U1889 ( .A0(n1942), .A1(DIn[9]), .B0(n1787), .B1(n1484), .Y(n1179) );
  AO22X1 U1890 ( .A0(n1941), .A1(DIn[0]), .B0(s5[7]), .B1(n1483), .Y(n1098) );
  AO22X1 U1891 ( .A0(n1946), .A1(DIn[3]), .B0(n1566), .B1(n1487), .Y(n1119) );
  AO22X1 U1892 ( .A0(n1951), .A1(DIn[8]), .B0(n1633), .B1(n560), .Y(n1160) );
  AO22X1 U1893 ( .A0(n1938), .A1(DIn[9]), .B0(n1590), .B1(n568), .Y(n1143) );
  AO22X1 U1894 ( .A0(n1938), .A1(DIn[10]), .B0(n1596), .B1(n1485), .Y(n1144)
         );
  AO22X1 U1895 ( .A0(n1938), .A1(DIn[11]), .B0(n1600), .B1(n568), .Y(n1145) );
  AO22X1 U1896 ( .A0(n1938), .A1(DIn[12]), .B0(n1605), .B1(n1485), .Y(n1146)
         );
  AO22X1 U1897 ( .A0(n1938), .A1(DIn[13]), .B0(n1612), .B1(n1485), .Y(n1147)
         );
  AO22X1 U1898 ( .A0(n1938), .A1(DIn[14]), .B0(n1617), .B1(n1485), .Y(n1148)
         );
  AO22X1 U1899 ( .A0(n1951), .A1(DIn[7]), .B0(n1630), .B1(n1486), .Y(n1159) );
  AO22X1 U1900 ( .A0(n1942), .A1(DIn[8]), .B0(n1785), .B1(n880), .Y(n1178) );
  AO22X1 U1901 ( .A0(n1951), .A1(DIn[9]), .B0(n1750), .B1(n1486), .Y(n1161) );
  AO22X1 U1902 ( .A0(n1951), .A1(DIn[11]), .B0(n1754), .B1(n1486), .Y(n1163)
         );
  AO22X1 U1903 ( .A0(n1951), .A1(DIn[12]), .B0(n1756), .B1(n1486), .Y(n1164)
         );
  AO22X1 U1904 ( .A0(n1951), .A1(DIn[13]), .B0(n1758), .B1(n1486), .Y(n1165)
         );
  AO22X1 U1905 ( .A0(n1951), .A1(DIn[14]), .B0(n1760), .B1(n1486), .Y(n1166)
         );
  AO22X1 U1906 ( .A0(n1951), .A1(DIn[10]), .B0(n1752), .B1(n1486), .Y(n1162)
         );
  AO22X1 U1907 ( .A0(n1947), .A1(DIn[6]), .B0(n1822), .B1(n595), .Y(n1194) );
  AO22X1 U1908 ( .A0(n1942), .A1(DIn[11]), .B0(n1791), .B1(n1484), .Y(n1181)
         );
  AO22X1 U1909 ( .A0(n1942), .A1(DIn[12]), .B0(n1793), .B1(n880), .Y(n1182) );
  AO22X1 U1910 ( .A0(n1942), .A1(DIn[13]), .B0(n1795), .B1(n1484), .Y(n1183)
         );
  AO22X1 U1911 ( .A0(n1942), .A1(DIn[14]), .B0(n1797), .B1(n1484), .Y(n1184)
         );
  AO22X1 U1912 ( .A0(n1941), .A1(DIn[1]), .B0(s5[8]), .B1(n1483), .Y(n1099) );
  AO22X1 U1913 ( .A0(n1942), .A1(DIn[10]), .B0(n1789), .B1(n880), .Y(n1180) );
  AO22X1 U1914 ( .A0(n1947), .A1(DIn[7]), .B0(n1824), .B1(n1488), .Y(n1195) );
  AO22X1 U1915 ( .A0(n1947), .A1(DIn[8]), .B0(n1826), .B1(n595), .Y(n1196) );
  AO22X1 U1916 ( .A0(n1941), .A1(DIn[4]), .B0(s5[11]), .B1(n589), .Y(n1102) );
  AO22X1 U1917 ( .A0(n1941), .A1(DIn[3]), .B0(s5[10]), .B1(n1483), .Y(n1101)
         );
  AO22X1 U1918 ( .A0(n1946), .A1(DIn[0]), .B0(s4[7]), .B1(n1487), .Y(n1116) );
  AO22X1 U1919 ( .A0(n1941), .A1(DIn[2]), .B0(N4412), .B1(n1483), .Y(n1100) );
  AO22X1 U1920 ( .A0(n1947), .A1(DIn[9]), .B0(n1828), .B1(n1488), .Y(n1197) );
  AO22X1 U1921 ( .A0(n1947), .A1(DIn[10]), .B0(n1830), .B1(n595), .Y(n1198) );
  AO22X1 U1922 ( .A0(n1947), .A1(DIn[11]), .B0(n1832), .B1(n1488), .Y(n1199)
         );
  AO22X1 U1923 ( .A0(n1947), .A1(DIn[12]), .B0(n1834), .B1(n1488), .Y(n1200)
         );
  AO22X1 U1924 ( .A0(n1947), .A1(DIn[13]), .B0(n1836), .B1(n1488), .Y(n1201)
         );
  AO22X1 U1925 ( .A0(n1947), .A1(DIn[14]), .B0(n1838), .B1(n1488), .Y(n1202)
         );
  AO22X1 U1926 ( .A0(N325), .A1(n1942), .B0(N2805), .B1(n1946), .Y(n565) );
  AO21X1 U1927 ( .A0(s5[22]), .A1(n1483), .B0(n875), .Y(n1113) );
  AO21X1 U1928 ( .A0(s5[23]), .A1(n589), .B0(n875), .Y(n1114) );
  AO21X1 U1929 ( .A0(n1578), .A1(n1487), .B0(n877), .Y(n1131) );
  AO21X1 U1930 ( .A0(n1579), .A1(n1487), .B0(n877), .Y(n1132) );
  AO21X1 U1931 ( .A0(n1619), .A1(n1485), .B0(n878), .Y(n1149) );
  AO21X1 U1932 ( .A0(n1620), .A1(n1485), .B0(n878), .Y(n1150) );
  OAI211X1 U1933 ( .A0(n620), .A1(n1381), .B0(n937), .C0(n938), .Y(N6387) );
  AOI222XL U1934 ( .A0(n1950), .A1(ss4[7]), .B0(n1940), .B1(ss3[7]), .C0(n1935), .C1(n1511), .Y(n938) );
  AOI2BB2X1 U1935 ( .B0(n1945), .B1(n1512), .A0N(n1444), .A1N(n907), .Y(n937)
         );
  OAI211X1 U1936 ( .A0(n620), .A1(n1382), .B0(n935), .C0(n936), .Y(N6388) );
  AOI222XL U1937 ( .A0(n1950), .A1(ss4[8]), .B0(n1940), .B1(ss3[8]), .C0(n1935), .C1(n1516), .Y(n936) );
  AOI2BB2X1 U1938 ( .B0(n1945), .B1(n1517), .A0N(n1418), .A1N(n907), .Y(n935)
         );
  OAI211X1 U1939 ( .A0(n620), .A1(n1383), .B0(n933), .C0(n934), .Y(N6389) );
  AOI222XL U1940 ( .A0(n1950), .A1(ss4[9]), .B0(n1940), .B1(n1523), .C0(n1935), 
        .C1(n1520), .Y(n934) );
  AOI2BB2X1 U1941 ( .B0(n1945), .B1(n1522), .A0N(n1414), .A1N(n907), .Y(n933)
         );
  OAI211X1 U1942 ( .A0(n620), .A1(n1384), .B0(n931), .C0(n932), .Y(N6390) );
  AOI222XL U1943 ( .A0(ss4[10]), .A1(n1950), .B0(n1527), .B1(n1940), .C0(n1525), .C1(n1935), .Y(n932) );
  AOI2BB2X1 U1944 ( .B0(n1526), .B1(n1945), .A0N(n907), .A1N(n1342), .Y(n931)
         );
  OAI211X1 U1945 ( .A0(n620), .A1(n1385), .B0(n929), .C0(n930), .Y(N6391) );
  AOI222XL U1946 ( .A0(ss4[11]), .A1(n1950), .B0(n1529), .B1(n1940), .C0(n1319), .C1(n1935), .Y(n930) );
  AOI2BB2X1 U1947 ( .B0(n1528), .B1(n1945), .A0N(n907), .A1N(n1343), .Y(n929)
         );
  OAI211X1 U1948 ( .A0(n620), .A1(n1386), .B0(n927), .C0(n928), .Y(N6392) );
  AOI222XL U1949 ( .A0(ss4[12]), .A1(n1950), .B0(n1532), .B1(n1940), .C0(n1332), .C1(n1935), .Y(n928) );
  AOI2BB2X1 U1950 ( .B0(n1530), .B1(n1945), .A0N(n907), .A1N(n1344), .Y(n927)
         );
  OAI211X1 U1951 ( .A0(n620), .A1(n1387), .B0(n925), .C0(n926), .Y(N6393) );
  AOI222XL U1952 ( .A0(ss4[13]), .A1(n1950), .B0(n1535), .B1(n1940), .C0(n1309), .C1(n1935), .Y(n926) );
  AOI2BB2X1 U1953 ( .B0(n1534), .B1(n1945), .A0N(n907), .A1N(n1345), .Y(n925)
         );
  OAI211X1 U1954 ( .A0(n620), .A1(n1388), .B0(n923), .C0(n924), .Y(N6394) );
  AOI222XL U1955 ( .A0(ss4[14]), .A1(n1950), .B0(n1538), .B1(n1940), .C0(n1307), .C1(n1935), .Y(n924) );
  AOI2BB2X1 U1956 ( .B0(n1537), .B1(n1945), .A0N(n907), .A1N(n1346), .Y(n923)
         );
  OAI211X1 U1957 ( .A0(n620), .A1(n1389), .B0(n921), .C0(n922), .Y(N6395) );
  AOI222XL U1958 ( .A0(ss4[15]), .A1(n1950), .B0(n1541), .B1(n1940), .C0(n1315), .C1(n1935), .Y(n922) );
  AOI2BB2X1 U1959 ( .B0(n1540), .B1(n1945), .A0N(n907), .A1N(n1347), .Y(n921)
         );
  OAI211X1 U1960 ( .A0(n620), .A1(n1390), .B0(n919), .C0(n920), .Y(N6396) );
  AOI222XL U1961 ( .A0(ss4[16]), .A1(n1950), .B0(n1544), .B1(n1940), .C0(n1308), .C1(n1935), .Y(n920) );
  AOI2BB2X1 U1962 ( .B0(n1543), .B1(n1945), .A0N(n907), .A1N(n1348), .Y(n919)
         );
  OAI211X1 U1963 ( .A0(n620), .A1(n1391), .B0(n917), .C0(n918), .Y(N6397) );
  AOI222XL U1964 ( .A0(ss4[17]), .A1(n1950), .B0(n1547), .B1(n1940), .C0(n1311), .C1(n1935), .Y(n918) );
  AOI2BB2X1 U1965 ( .B0(n1546), .B1(n1945), .A0N(n907), .A1N(n1349), .Y(n917)
         );
  OAI211X1 U1966 ( .A0(n620), .A1(n1392), .B0(n915), .C0(n916), .Y(N6398) );
  AOI222XL U1967 ( .A0(ss4[18]), .A1(n1950), .B0(n1550), .B1(n1940), .C0(n1320), .C1(n1935), .Y(n916) );
  AOI2BB2X1 U1968 ( .B0(n1549), .B1(n1945), .A0N(n907), .A1N(n1350), .Y(n915)
         );
  OAI211X1 U1969 ( .A0(n620), .A1(n1393), .B0(n913), .C0(n914), .Y(N6399) );
  AOI222XL U1970 ( .A0(ss4[19]), .A1(n1950), .B0(n1553), .B1(n1940), .C0(n1335), .C1(n1935), .Y(n914) );
  AOI2BB2X1 U1971 ( .B0(n1552), .B1(n1945), .A0N(n907), .A1N(n1355), .Y(n913)
         );
  OAI211X1 U1972 ( .A0(n620), .A1(n1394), .B0(n911), .C0(n912), .Y(N6400) );
  AOI222XL U1973 ( .A0(ss4[20]), .A1(n1950), .B0(n1556), .B1(n1940), .C0(n1312), .C1(n1935), .Y(n912) );
  AOI2BB2X1 U1974 ( .B0(n1555), .B1(n1945), .A0N(n907), .A1N(n1356), .Y(n911)
         );
  OAI211X1 U1975 ( .A0(n620), .A1(n1395), .B0(n909), .C0(n910), .Y(N6401) );
  AOI222XL U1976 ( .A0(ss4[21]), .A1(n1950), .B0(n1559), .B1(n1940), .C0(n1317), .C1(n1935), .Y(n910) );
  AOI2BB2X1 U1977 ( .B0(n1558), .B1(n1945), .A0N(n907), .A1N(n1357), .Y(n909)
         );
  AND2X1 U1978 ( .A(s0[7]), .B(n1651), .Y(\add_5_root_add_101_6/carry[2] ) );
  XOR2X1 U1979 ( .A(n1651), .B(s0[7]), .Y(N151) );
  AND2X1 U1980 ( .A(s1[7]), .B(n1638), .Y(\add_18_root_add_124_19/carry[2] )
         );
  XOR2X1 U1981 ( .A(n1638), .B(s1[7]), .Y(N327) );
  AND2X1 U1982 ( .A(n1622), .B(n1623), .Y(\add_29_root_sub_149_5/carry[1] ) );
  XOR2X1 U1983 ( .A(n1623), .B(n1622), .Y(N848) );
  AND2X1 U1984 ( .A(s2[7]), .B(n1622), .Y(\add_30_root_sub_149_5/carry[2] ) );
  XOR2X1 U1985 ( .A(n1622), .B(s2[7]), .Y(N829) );
  AND2X1 U1986 ( .A(n1580), .B(n1581), .Y(\add_44_root_add_176_41/carry[1] )
         );
  XOR2X1 U1987 ( .A(n1581), .B(n1580), .Y(N1650) );
  AND2X1 U1988 ( .A(s3[7]), .B(n1580), .Y(\add_45_root_add_176_41/carry[2] )
         );
  XOR2X1 U1989 ( .A(n1580), .B(s3[7]), .Y(N1631) );
  AND2X1 U1990 ( .A(n1566), .B(n1567), .Y(\add_62_root_sub_205_16/carry[1] )
         );
  XOR2X1 U1991 ( .A(n1567), .B(n1566), .Y(N2826) );
  AND2X1 U1992 ( .A(s4[7]), .B(n1566), .Y(\add_63_root_sub_205_16/carry[2] )
         );
  XOR2X1 U1993 ( .A(n1566), .B(s4[7]), .Y(N2807) );
  AND2X1 U1994 ( .A(s5[7]), .B(s5[10]), .Y(\add_76_root_add_236_61/carry[2] )
         );
  XOR2X1 U1995 ( .A(s5[10]), .B(s5[7]), .Y(N4413) );
  AND2X1 U1996 ( .A(s5[10]), .B(s5[11]), .Y(\add_75_root_add_236_61/carry[1] )
         );
  XOR2X1 U1997 ( .A(s5[11]), .B(s5[10]), .Y(N4432) );
  XNOR2X1 U1998 ( .A(RAddr[19]), .B(\sub_255/carry [19]), .Y(N6361) );
  OR2X1 U1999 ( .A(RAddr[18]), .B(\sub_255/carry [18]), .Y(\sub_255/carry [19]) );
  XNOR2X1 U2000 ( .A(\sub_255/carry [18]), .B(RAddr[18]), .Y(N6360) );
  OR2X1 U2001 ( .A(RAddr[17]), .B(\sub_255/carry [17]), .Y(\sub_255/carry [18]) );
  XNOR2X1 U2002 ( .A(\sub_255/carry [17]), .B(RAddr[17]), .Y(N6359) );
  OR2X1 U2003 ( .A(RAddr[16]), .B(\sub_255/carry [16]), .Y(\sub_255/carry [17]) );
  XNOR2X1 U2004 ( .A(\sub_255/carry [16]), .B(RAddr[16]), .Y(N6358) );
  OR2X1 U2005 ( .A(RAddr[15]), .B(\sub_255/carry [15]), .Y(\sub_255/carry [16]) );
  XNOR2X1 U2006 ( .A(\sub_255/carry [15]), .B(RAddr[15]), .Y(N6357) );
  OR2X1 U2007 ( .A(RAddr[14]), .B(\sub_255/carry [14]), .Y(\sub_255/carry [15]) );
  XNOR2X1 U2008 ( .A(\sub_255/carry [14]), .B(RAddr[14]), .Y(N6356) );
  OR2X1 U2009 ( .A(RAddr[13]), .B(\sub_255/carry [13]), .Y(\sub_255/carry [14]) );
  XNOR2X1 U2010 ( .A(\sub_255/carry [13]), .B(RAddr[13]), .Y(N6355) );
  OR2X1 U2011 ( .A(RAddr[12]), .B(\sub_255/carry [12]), .Y(\sub_255/carry [13]) );
  XNOR2X1 U2012 ( .A(\sub_255/carry [12]), .B(RAddr[12]), .Y(N6354) );
  OR2X1 U2013 ( .A(RAddr[11]), .B(\sub_255/carry [11]), .Y(\sub_255/carry [12]) );
  XNOR2X1 U2014 ( .A(\sub_255/carry [11]), .B(RAddr[11]), .Y(N6353) );
  OR2X1 U2015 ( .A(RAddr[10]), .B(\sub_255/carry [10]), .Y(\sub_255/carry [11]) );
  XNOR2X1 U2016 ( .A(\sub_255/carry [10]), .B(RAddr[10]), .Y(N6352) );
  OR2X1 U2017 ( .A(RAddr[9]), .B(\sub_255/carry [9]), .Y(\sub_255/carry [10])
         );
  XNOR2X1 U2018 ( .A(\sub_255/carry [9]), .B(RAddr[9]), .Y(N6351) );
  OR2X1 U2019 ( .A(RAddr[8]), .B(\sub_255/carry [8]), .Y(\sub_255/carry [9])
         );
  XNOR2X1 U2020 ( .A(\sub_255/carry [8]), .B(RAddr[8]), .Y(N6350) );
  OR2X1 U2021 ( .A(RAddr[7]), .B(\sub_255/carry [7]), .Y(\sub_255/carry [8])
         );
  XNOR2X1 U2022 ( .A(\sub_255/carry [7]), .B(RAddr[7]), .Y(N6349) );
  OR2X1 U2023 ( .A(RAddr[6]), .B(\sub_255/carry [6]), .Y(\sub_255/carry [7])
         );
  XNOR2X1 U2024 ( .A(\sub_255/carry [6]), .B(RAddr[6]), .Y(N6348) );
  OR2X1 U2025 ( .A(RAddr[5]), .B(\sub_255/carry [5]), .Y(\sub_255/carry [6])
         );
  XNOR2X1 U2026 ( .A(\sub_255/carry [5]), .B(RAddr[5]), .Y(N6347) );
  OR2X1 U2027 ( .A(RAddr[4]), .B(\sub_255/carry [4]), .Y(\sub_255/carry [5])
         );
  XNOR2X1 U2028 ( .A(\sub_255/carry [4]), .B(RAddr[4]), .Y(N6346) );
  OR2X1 U2029 ( .A(RAddr[3]), .B(RAddr[2]), .Y(\sub_255/carry [4]) );
  XNOR2X1 U2030 ( .A(RAddr[2]), .B(RAddr[3]), .Y(N6345) );
  OR2X1 U2031 ( .A(RAddr[12]), .B(RAddr[11]), .Y(n1873) );
  AOI211X1 U2032 ( .A0(RAddr[2]), .A1(N6343), .B0(n1873), .C0(RAddr[10]), .Y(
        n1879) );
  OR2X1 U2033 ( .A(RAddr[14]), .B(RAddr[13]), .Y(n1874) );
  NOR4X1 U2034 ( .A(n1874), .B(RAddr[15]), .C(RAddr[17]), .D(RAddr[16]), .Y(
        n1878) );
  NOR4X1 U2035 ( .A(RAddr[4]), .B(RAddr[3]), .C(RAddr[19]), .D(RAddr[18]), .Y(
        n1877) );
  OR2X1 U2036 ( .A(RAddr[6]), .B(RAddr[5]), .Y(n1875) );
  NOR4X1 U2037 ( .A(n1875), .B(RAddr[7]), .C(RAddr[9]), .D(RAddr[8]), .Y(n1876) );
  NAND4X1 U2038 ( .A(n1879), .B(n1878), .C(n1877), .D(n1876), .Y(N4411) );
  OA21XL U2039 ( .A0(N6343), .A1(N6342), .B0(RAddr[2]), .Y(n1880) );
  NOR4X1 U2040 ( .A(RAddr[12]), .B(RAddr[11]), .C(RAddr[10]), .D(n1880), .Y(
        n1886) );
  OR2X1 U2041 ( .A(RAddr[14]), .B(RAddr[13]), .Y(n1881) );
  NOR4X1 U2042 ( .A(n1881), .B(RAddr[15]), .C(RAddr[17]), .D(RAddr[16]), .Y(
        n1885) );
  NOR4X1 U2043 ( .A(RAddr[4]), .B(RAddr[3]), .C(RAddr[19]), .D(RAddr[18]), .Y(
        n1884) );
  OR2X1 U2044 ( .A(RAddr[6]), .B(RAddr[5]), .Y(n1882) );
  NOR4X1 U2045 ( .A(n1882), .B(RAddr[7]), .C(RAddr[9]), .D(RAddr[8]), .Y(n1883) );
  NAND4X1 U2046 ( .A(n1886), .B(n1885), .C(n1884), .D(n1883), .Y(N2805) );
  NOR4X1 U2047 ( .A(RAddr[13]), .B(RAddr[12]), .C(RAddr[11]), .D(RAddr[10]), 
        .Y(n1892) );
  OR2X1 U2048 ( .A(RAddr[15]), .B(RAddr[14]), .Y(n1887) );
  NOR4X1 U2049 ( .A(n1887), .B(RAddr[16]), .C(RAddr[18]), .D(RAddr[17]), .Y(
        n1891) );
  NOR4X1 U2050 ( .A(RAddr[4]), .B(RAddr[3]), .C(RAddr[2]), .D(RAddr[19]), .Y(
        n1890) );
  OR2X1 U2051 ( .A(RAddr[6]), .B(RAddr[5]), .Y(n1888) );
  NOR4X1 U2052 ( .A(n1888), .B(RAddr[7]), .C(RAddr[9]), .D(RAddr[8]), .Y(n1889) );
  NAND4X1 U2053 ( .A(n1892), .B(n1891), .C(n1890), .D(n1889), .Y(N1628) );
  OR2X1 U2054 ( .A(RAddr[12]), .B(RAddr[11]), .Y(n1893) );
  AOI211X1 U2055 ( .A0(N6343), .A1(N6342), .B0(n1893), .C0(RAddr[10]), .Y(
        n1900) );
  OR2X1 U2056 ( .A(RAddr[14]), .B(RAddr[13]), .Y(n1894) );
  NOR4X1 U2057 ( .A(n1894), .B(RAddr[15]), .C(RAddr[17]), .D(RAddr[16]), .Y(
        n1899) );
  OR2X1 U2058 ( .A(RAddr[19]), .B(RAddr[18]), .Y(n1895) );
  NOR4X1 U2059 ( .A(n1895), .B(RAddr[2]), .C(RAddr[4]), .D(RAddr[3]), .Y(n1898) );
  OR2X1 U2060 ( .A(RAddr[6]), .B(RAddr[5]), .Y(n1896) );
  NOR4X1 U2061 ( .A(n1896), .B(RAddr[7]), .C(RAddr[9]), .D(RAddr[8]), .Y(n1897) );
  NAND4X1 U2062 ( .A(n1900), .B(n1899), .C(n1898), .D(n1897), .Y(N826) );
  NOR4X1 U2063 ( .A(RAddr[13]), .B(RAddr[12]), .C(RAddr[11]), .D(RAddr[10]), 
        .Y(n1907) );
  OR2X1 U2064 ( .A(RAddr[15]), .B(RAddr[14]), .Y(n1901) );
  NOR4X1 U2065 ( .A(n1901), .B(RAddr[16]), .C(RAddr[18]), .D(RAddr[17]), .Y(
        n1906) );
  OR2X1 U2066 ( .A(N6343), .B(RAddr[19]), .Y(n1902) );
  NOR4X1 U2067 ( .A(n1902), .B(RAddr[2]), .C(RAddr[4]), .D(RAddr[3]), .Y(n1905) );
  OR2X1 U2068 ( .A(RAddr[6]), .B(RAddr[5]), .Y(n1903) );
  NOR4X1 U2069 ( .A(n1903), .B(RAddr[7]), .C(RAddr[9]), .D(RAddr[8]), .Y(n1904) );
  NAND4X1 U2070 ( .A(n1907), .B(n1906), .C(n1905), .D(n1904), .Y(N325) );
  OR2X1 U2071 ( .A(RAddr[10]), .B(N6342), .Y(n1908) );
  NOR4X1 U2072 ( .A(n1908), .B(RAddr[11]), .C(RAddr[13]), .D(RAddr[12]), .Y(
        n1915) );
  OR2X1 U2073 ( .A(RAddr[15]), .B(RAddr[14]), .Y(n1909) );
  NOR4X1 U2074 ( .A(n1909), .B(RAddr[16]), .C(RAddr[18]), .D(RAddr[17]), .Y(
        n1914) );
  OR2X1 U2075 ( .A(N6343), .B(RAddr[19]), .Y(n1910) );
  NOR4X1 U2076 ( .A(n1910), .B(RAddr[2]), .C(RAddr[4]), .D(RAddr[3]), .Y(n1913) );
  OR2X1 U2077 ( .A(RAddr[6]), .B(RAddr[5]), .Y(n1911) );
  NOR4X1 U2078 ( .A(n1911), .B(RAddr[7]), .C(RAddr[9]), .D(RAddr[8]), .Y(n1912) );
  NAND4X1 U2079 ( .A(n1915), .B(n1914), .C(n1913), .D(n1912), .Y(N149) );
endmodule

