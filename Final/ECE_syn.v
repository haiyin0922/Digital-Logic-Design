/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : K-2015.06-SP1
// Date      : Mon Jun 11 23:52:03 2018
/////////////////////////////////////////////////////////////


module ECE ( clk, rst, RData, RAddr, WAddr, WData, Wen, Finish );
  input [14:0] RData;
  output [14:0] RAddr;
  output [14:0] WAddr;
  output [4:0] WData;
  input clk, rst;
  output Wen, Finish;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71,
         N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85,
         N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99,
         N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132,
         N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143,
         N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154,
         N155, N156;
  wire   [3:0] state;
  wire   [14:0] leng;
  wire   [3:0] next_state;
  wire   [14:0] next_raddr;
  wire   [14:0] next_waddr;
  wire   [14:0] next_leng;

  \**SEQGEN**  \waddr_reg[14]  ( .clear(1'b0), .preset(rst), .next_state(
        next_waddr[14]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        WAddr[14]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \waddr_reg[13]  ( .clear(1'b0), .preset(rst), .next_state(
        next_waddr[13]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        WAddr[13]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \waddr_reg[12]  ( .clear(1'b0), .preset(rst), .next_state(
        next_waddr[12]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        WAddr[12]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \waddr_reg[11]  ( .clear(1'b0), .preset(rst), .next_state(
        next_waddr[11]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        WAddr[11]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \waddr_reg[10]  ( .clear(1'b0), .preset(rst), .next_state(
        next_waddr[10]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        WAddr[10]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \waddr_reg[9]  ( .clear(1'b0), .preset(rst), .next_state(
        next_waddr[9]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        WAddr[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \waddr_reg[8]  ( .clear(1'b0), .preset(rst), .next_state(
        next_waddr[8]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        WAddr[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \waddr_reg[7]  ( .clear(1'b0), .preset(rst), .next_state(
        next_waddr[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        WAddr[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \waddr_reg[6]  ( .clear(1'b0), .preset(rst), .next_state(
        next_waddr[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        WAddr[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \waddr_reg[5]  ( .clear(1'b0), .preset(rst), .next_state(
        next_waddr[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        WAddr[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \waddr_reg[4]  ( .clear(1'b0), .preset(rst), .next_state(
        next_waddr[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        WAddr[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \waddr_reg[3]  ( .clear(1'b0), .preset(rst), .next_state(
        next_waddr[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        WAddr[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \waddr_reg[2]  ( .clear(1'b0), .preset(rst), .next_state(
        next_waddr[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        WAddr[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \waddr_reg[1]  ( .clear(1'b0), .preset(rst), .next_state(
        next_waddr[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        WAddr[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \waddr_reg[0]  ( .clear(1'b0), .preset(rst), .next_state(
        next_waddr[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        WAddr[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \leng_reg[14]  ( .clear(rst), .preset(1'b0), .next_state(
        next_leng[14]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        leng[14]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N156) );
  \**SEQGEN**  \leng_reg[13]  ( .clear(rst), .preset(1'b0), .next_state(
        next_leng[13]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        leng[13]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N156) );
  \**SEQGEN**  \leng_reg[12]  ( .clear(rst), .preset(1'b0), .next_state(
        next_leng[12]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        leng[12]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N156) );
  \**SEQGEN**  \leng_reg[11]  ( .clear(rst), .preset(1'b0), .next_state(
        next_leng[11]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        leng[11]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N156) );
  \**SEQGEN**  \leng_reg[10]  ( .clear(rst), .preset(1'b0), .next_state(
        next_leng[10]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        leng[10]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N156) );
  \**SEQGEN**  \leng_reg[9]  ( .clear(rst), .preset(1'b0), .next_state(
        next_leng[9]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        leng[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N156) );
  \**SEQGEN**  \leng_reg[8]  ( .clear(rst), .preset(1'b0), .next_state(
        next_leng[8]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        leng[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N156) );
  \**SEQGEN**  \leng_reg[7]  ( .clear(rst), .preset(1'b0), .next_state(
        next_leng[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        leng[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N156) );
  \**SEQGEN**  \leng_reg[6]  ( .clear(rst), .preset(1'b0), .next_state(
        next_leng[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        leng[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N156) );
  \**SEQGEN**  \leng_reg[5]  ( .clear(rst), .preset(1'b0), .next_state(
        next_leng[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        leng[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N156) );
  \**SEQGEN**  \leng_reg[4]  ( .clear(rst), .preset(1'b0), .next_state(
        next_leng[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        leng[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N156) );
  \**SEQGEN**  \leng_reg[3]  ( .clear(rst), .preset(1'b0), .next_state(
        next_leng[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        leng[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N156) );
  \**SEQGEN**  \leng_reg[2]  ( .clear(rst), .preset(1'b0), .next_state(
        next_leng[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        leng[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N156) );
  \**SEQGEN**  \leng_reg[1]  ( .clear(rst), .preset(1'b0), .next_state(
        next_leng[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        leng[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N156) );
  \**SEQGEN**  \leng_reg[0]  ( .clear(rst), .preset(1'b0), .next_state(
        next_leng[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        leng[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N156) );
  \**SEQGEN**  \state_reg[3]  ( .clear(rst), .preset(1'b0), .next_state(
        next_state[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        state[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \state_reg[2]  ( .clear(rst), .preset(1'b0), .next_state(
        next_state[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        state[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \state_reg[1]  ( .clear(rst), .preset(1'b0), .next_state(
        next_state[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        state[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \state_reg[0]  ( .clear(rst), .preset(1'b0), .next_state(
        next_state[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        state[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \raddr_reg[14]  ( .clear(1'b0), .preset(rst), .next_state(
        next_raddr[14]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        RAddr[14]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \raddr_reg[13]  ( .clear(1'b0), .preset(rst), .next_state(
        next_raddr[13]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        RAddr[13]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \raddr_reg[12]  ( .clear(1'b0), .preset(rst), .next_state(
        next_raddr[12]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        RAddr[12]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \raddr_reg[11]  ( .clear(1'b0), .preset(rst), .next_state(
        next_raddr[11]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        RAddr[11]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \raddr_reg[10]  ( .clear(1'b0), .preset(rst), .next_state(
        next_raddr[10]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        RAddr[10]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \raddr_reg[9]  ( .clear(1'b0), .preset(rst), .next_state(
        next_raddr[9]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        RAddr[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \raddr_reg[8]  ( .clear(1'b0), .preset(rst), .next_state(
        next_raddr[8]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        RAddr[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \raddr_reg[7]  ( .clear(1'b0), .preset(rst), .next_state(
        next_raddr[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        RAddr[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \raddr_reg[6]  ( .clear(1'b0), .preset(rst), .next_state(
        next_raddr[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        RAddr[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \raddr_reg[5]  ( .clear(1'b0), .preset(rst), .next_state(
        next_raddr[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        RAddr[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \raddr_reg[4]  ( .clear(1'b0), .preset(rst), .next_state(
        next_raddr[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        RAddr[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \raddr_reg[3]  ( .clear(1'b0), .preset(rst), .next_state(
        next_raddr[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        RAddr[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \raddr_reg[2]  ( .clear(1'b0), .preset(rst), .next_state(
        next_raddr[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        RAddr[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \raddr_reg[1]  ( .clear(1'b0), .preset(rst), .next_state(
        next_raddr[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        RAddr[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \raddr_reg[0]  ( .clear(1'b0), .preset(rst), .next_state(
        next_raddr[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        RAddr[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  GTECH_AND2 C113 ( .A(N48), .B(N49), .Z(N52) );
  GTECH_AND2 C114 ( .A(N50), .B(N51), .Z(N53) );
  GTECH_AND2 C115 ( .A(N52), .B(N53), .Z(N54) );
  GTECH_OR2 C117 ( .A(state[3]), .B(state[2]), .Z(N55) );
  GTECH_OR2 C118 ( .A(state[1]), .B(N51), .Z(N56) );
  GTECH_OR2 C119 ( .A(N55), .B(N56), .Z(N57) );
  GTECH_OR2 C122 ( .A(state[3]), .B(state[2]), .Z(N59) );
  GTECH_OR2 C123 ( .A(N50), .B(state[0]), .Z(N60) );
  GTECH_OR2 C124 ( .A(N59), .B(N60), .Z(N61) );
  GTECH_OR2 C128 ( .A(state[3]), .B(state[2]), .Z(N63) );
  GTECH_OR2 C129 ( .A(N50), .B(N51), .Z(N64) );
  GTECH_OR2 C130 ( .A(N63), .B(N64), .Z(N65) );
  GTECH_OR2 C133 ( .A(state[3]), .B(N49), .Z(N67) );
  GTECH_OR2 C134 ( .A(state[1]), .B(state[0]), .Z(N68) );
  GTECH_OR2 C135 ( .A(N67), .B(N68), .Z(N69) );
  GTECH_OR2 C139 ( .A(state[3]), .B(N49), .Z(N71) );
  GTECH_OR2 C140 ( .A(state[1]), .B(N51), .Z(N72) );
  GTECH_OR2 C141 ( .A(N71), .B(N72), .Z(N73) );
  GTECH_OR2 C145 ( .A(state[3]), .B(N49), .Z(N75) );
  GTECH_OR2 C146 ( .A(N50), .B(state[0]), .Z(N76) );
  GTECH_OR2 C147 ( .A(N75), .B(N76), .Z(N77) );
  GTECH_OR2 C152 ( .A(state[3]), .B(N49), .Z(N79) );
  GTECH_OR2 C153 ( .A(N50), .B(N51), .Z(N80) );
  GTECH_OR2 C154 ( .A(N79), .B(N80), .Z(N81) );
  GTECH_OR2 C157 ( .A(N48), .B(state[2]), .Z(N83) );
  GTECH_OR2 C158 ( .A(state[1]), .B(state[0]), .Z(N84) );
  GTECH_OR2 C159 ( .A(N83), .B(N84), .Z(N85) );
  GTECH_OR2 C163 ( .A(N48), .B(state[2]), .Z(N87) );
  GTECH_OR2 C164 ( .A(state[1]), .B(N51), .Z(N88) );
  GTECH_OR2 C165 ( .A(N87), .B(N88), .Z(N89) );
  GTECH_OR2 C170 ( .A(N48), .B(N49), .Z(N91) );
  GTECH_OR2 C171 ( .A(N50), .B(state[0]), .Z(N92) );
  GTECH_OR2 C172 ( .A(N91), .B(N92), .Z(N93) );
  GTECH_AND2 C174 ( .A(state[3]), .B(state[2]), .Z(N95) );
  GTECH_AND2 C175 ( .A(state[1]), .B(state[0]), .Z(N96) );
  GTECH_AND2 C176 ( .A(N95), .B(N96), .Z(N97) );
  GTECH_OR2 C179 ( .A(N48), .B(N49), .Z(N98) );
  GTECH_OR2 C180 ( .A(state[1]), .B(state[0]), .Z(N99) );
  GTECH_OR2 C181 ( .A(N98), .B(N99), .Z(N100) );
  GTECH_OR2 C186 ( .A(N48), .B(N49), .Z(N102) );
  GTECH_OR2 C187 ( .A(state[1]), .B(N51), .Z(N103) );
  GTECH_OR2 C188 ( .A(N102), .B(N103), .Z(N104) );
  \**SEQGEN**  wen_reg ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(1'b1), .enable(N136), .Q(Wen), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \wdata_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N141), .enable(N136), .Q(WData[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \wdata_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N140), .enable(N136), .Q(WData[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \wdata_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N139), .enable(N136), .Q(WData[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \wdata_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N138), .enable(N136), .Q(WData[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \wdata_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N137), .enable(N136), .Q(WData[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  EQ_UNS_OP eq_122 ( .A(RAddr), .B(leng), .Z(N142) );
  ADD_UNS_OP add_39 ( .A(WAddr), .B(1'b1), .Z({N47, N46, N45, N44, N43, N42, 
        N41, N40, N39, N38, N37, N36, N35, N34, N33}) );
  ADD_UNS_OP add_38 ( .A(RAddr), .B(1'b1), .Z({N32, N31, N30, N29, N28, N27, 
        N26, N25, N24, N23, N22, N21, N20, N19, N18}) );
  SELECT_OP C745 ( .DATA1(RData), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N0), 
        .CONTROL2(N1), .Z({N120, N119, N118, N117, N116, N115, N114, N113, 
        N112, N111, N110, N109, N108, N107, N106}) );
  GTECH_BUF B_0 ( .A(N16), .Z(N0) );
  GTECH_BUF B_1 ( .A(rst), .Z(N1) );
  GTECH_NOT I_0 ( .A(RData[0]), .Z(N121) );
  SELECT_OP C748 ( .DATA1({N120, N119, N118, N117, N116, N115, N114, N113, 
        N112, N111, N110, N109, N108, N107, N106}), .DATA2(leng), .CONTROL1(N2), .CONTROL2(N135), .Z(next_leng) );
  GTECH_BUF B_2 ( .A(N54), .Z(N2) );
  SELECT_OP C749 ( .DATA1({rst, rst, rst, rst, rst, rst, rst, rst, rst, rst, 
        rst, rst, rst, rst, rst}), .DATA2({N32, N31, N30, N29, N28, N27, N26, 
        N25, N24, N23, N22, N21, N20, N19, N18}), .DATA3({N32, N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18}), .DATA4({N32, 
        N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18}), 
        .DATA5({N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, 
        N20, N19, N18}), .DATA6({N32, N31, N30, N29, N28, N27, N26, N25, N24, 
        N23, N22, N21, N20, N19, N18}), .DATA7({N32, N31, N30, N29, N28, N27, 
        N26, N25, N24, N23, N22, N21, N20, N19, N18}), .DATA8({N32, N31, N30, 
        N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18}), .DATA9({
        N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, 
        N18}), .DATA10({N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, 
        N21, N20, N19, N18}), .DATA11({N32, N31, N30, N29, N28, N27, N26, N25, 
        N24, N23, N22, N21, N20, N19, N18}), .DATA12({N32, N31, N30, N29, N28, 
        N27, N26, N25, N24, N23, N22, N21, N20, N19, N18}), .DATA13({N32, N31, 
        N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18}), 
        .DATA14({N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, 
        N20, N19, N18}), .DATA15({N32, N31, N30, N29, N28, N27, N26, N25, N24, 
        N23, N22, N21, N20, N19, N18}), .CONTROL1(N2), .CONTROL2(N3), 
        .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .CONTROL7(
        N8), .CONTROL8(N9), .CONTROL9(N10), .CONTROL10(N11), .CONTROL11(N12), 
        .CONTROL12(N13), .CONTROL13(N14), .CONTROL14(N15), .CONTROL15(N135), 
        .Z(next_raddr) );
  GTECH_BUF B_3 ( .A(N58), .Z(N3) );
  GTECH_BUF B_4 ( .A(N62), .Z(N4) );
  GTECH_BUF B_5 ( .A(N66), .Z(N5) );
  GTECH_BUF B_6 ( .A(N70), .Z(N6) );
  GTECH_BUF B_7 ( .A(N74), .Z(N7) );
  GTECH_BUF B_8 ( .A(N78), .Z(N8) );
  GTECH_BUF B_9 ( .A(N82), .Z(N9) );
  GTECH_BUF B_10 ( .A(N86), .Z(N10) );
  GTECH_BUF B_11 ( .A(N90), .Z(N11) );
  GTECH_BUF B_12 ( .A(N94), .Z(N12) );
  GTECH_BUF B_13 ( .A(N97), .Z(N13) );
  GTECH_BUF B_14 ( .A(N101), .Z(N14) );
  GTECH_BUF B_15 ( .A(N105), .Z(N15) );
  SELECT_OP C750 ( .DATA1({rst, rst, rst, rst, rst, rst, rst, rst, rst, rst, 
        rst, rst, rst, rst, rst}), .DATA2({N47, N46, N45, N44, N43, N42, N41, 
        N40, N39, N38, N37, N36, N35, N34, N33}), .DATA3({N47, N46, N45, N44, 
        N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33}), .DATA4({N47, 
        N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33}), 
        .DATA5({N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33}), .DATA6({N47, N46, N45, N44, N43, N42, N41, N40, N39, 
        N38, N37, N36, N35, N34, N33}), .DATA7({N47, N46, N45, N44, N43, N42, 
        N41, N40, N39, N38, N37, N36, N35, N34, N33}), .DATA8({N47, N46, N45, 
        N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33}), .DATA9({
        N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, 
        N33}), .DATA10({N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, 
        N36, N35, N34, N33}), .DATA11({N47, N46, N45, N44, N43, N42, N41, N40, 
        N39, N38, N37, N36, N35, N34, N33}), .DATA12({N47, N46, N45, N44, N43, 
        N42, N41, N40, N39, N38, N37, N36, N35, N34, N33}), .DATA13({N47, N46, 
        N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33}), 
        .DATA14({N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33}), .DATA15({N47, N46, N45, N44, N43, N42, N41, N40, N39, 
        N38, N37, N36, N35, N34, N33}), .CONTROL1(N2), .CONTROL2(N3), 
        .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .CONTROL7(
        N8), .CONTROL8(N9), .CONTROL9(N10), .CONTROL10(N11), .CONTROL11(N12), 
        .CONTROL12(N13), .CONTROL13(N14), .CONTROL14(N15), .CONTROL15(N135), 
        .Z(next_waddr) );
  SELECT_OP C751 ( .DATA1({1'b0, 1'b0, 1'b0, N16}), .DATA2({N121, N121, 
        RData[0], 1'b0}), .DATA3({1'b0, 1'b0, RData[0], 1'b1}), .DATA4({1'b0, 
        N17, 1'b0, RData[0]}), .DATA5({1'b0, N17, 1'b0, 1'b1}), .DATA6({N121, 
        1'b1, 1'b1, 1'b0}), .DATA7({1'b0, RData[0], RData[0], 1'b1}), .DATA8({
        N17, 1'b0, 1'b0, RData[0]}), .DATA9({N17, 1'b0, 1'b0, 1'b1}), .DATA10(
        {N121, 1'b1, 1'b1, 1'b0}), .DATA11({N121, 1'b1, N121, 1'b1}), .DATA12(
        {1'b0, 1'b0, 1'b0, 1'b1}), .DATA13({N121, N121, 1'b0, 1'b1}), .DATA14(
        {1'b0, 1'b0, 1'b0, 1'b1}), .DATA15(state), .CONTROL1(N2), .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .CONTROL7(N8), 
        .CONTROL8(N9), .CONTROL9(N10), .CONTROL10(N11), .CONTROL11(N12), 
        .CONTROL12(N13), .CONTROL13(N14), .CONTROL14(N15), .CONTROL15(N135), 
        .Z(next_state) );
  SELECT_OP C752 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b1), 
        .DATA5(1'b1), .DATA6(1'b1), .DATA7(1'b1), .DATA8(1'b1), .DATA9(1'b1), 
        .DATA10(1'b1), .DATA11(1'b1), .DATA12(1'b1), .DATA13(1'b1), .DATA14(
        1'b1), .DATA15(1'b0), .CONTROL1(N2), .CONTROL2(N3), .CONTROL3(N4), 
        .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .CONTROL7(N8), .CONTROL8(
        N9), .CONTROL9(N10), .CONTROL10(N11), .CONTROL11(N12), .CONTROL12(N13), 
        .CONTROL13(N14), .CONTROL14(N15), .CONTROL15(N135), .Z(N136) );
  SELECT_OP C753 ( .DATA1({RData[0], 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({
        RData[0], N121, 1'b0, 1'b0, 1'b0}), .DATA3({RData[0], RData[0], 
        RData[0], RData[0], 1'b0}), .DATA4({RData[0], 1'b1, RData[0], N17, 
        1'b0}), .DATA5({RData[0], 1'b0, 1'b0, 1'b0, 1'b0}), .DATA6({RData[0], 
        N121, 1'b0, 1'b0, 1'b0}), .DATA7({RData[0], RData[0], RData[0], 
        RData[0], 1'b0}), .DATA8({RData[0], 1'b1, RData[0], N17, N17}), 
        .DATA9({RData[0], 1'b0, 1'b0, 1'b0, 1'b0}), .DATA10({RData[0], 1'b0, 
        RData[0], RData[0], 1'b0}), .DATA11({RData[0], 1'b0, RData[0], N121, 
        1'b0}), .DATA12({RData[0], 1'b0, RData[0], RData[0], 1'b0}), .DATA13({
        RData[0], 1'b0, RData[0], N121, 1'b0}), .CONTROL1(N3), .CONTROL2(N4), 
        .CONTROL3(N5), .CONTROL4(N6), .CONTROL5(N7), .CONTROL6(N8), .CONTROL7(
        N9), .CONTROL8(N10), .CONTROL9(N11), .CONTROL10(N12), .CONTROL11(N13), 
        .CONTROL12(N14), .CONTROL13(N15), .Z({N141, N140, N139, N138, N137})
         );
  GTECH_NOT I_1 ( .A(rst), .Z(N16) );
  GTECH_NOT I_2 ( .A(RData[0]), .Z(N17) );
  GTECH_NOT I_3 ( .A(state[3]), .Z(N48) );
  GTECH_NOT I_4 ( .A(state[2]), .Z(N49) );
  GTECH_NOT I_5 ( .A(state[1]), .Z(N50) );
  GTECH_NOT I_6 ( .A(state[0]), .Z(N51) );
  GTECH_NOT I_7 ( .A(N57), .Z(N58) );
  GTECH_NOT I_8 ( .A(N61), .Z(N62) );
  GTECH_NOT I_9 ( .A(N65), .Z(N66) );
  GTECH_NOT I_10 ( .A(N69), .Z(N70) );
  GTECH_NOT I_11 ( .A(N73), .Z(N74) );
  GTECH_NOT I_12 ( .A(N77), .Z(N78) );
  GTECH_NOT I_13 ( .A(N81), .Z(N82) );
  GTECH_NOT I_14 ( .A(N85), .Z(N86) );
  GTECH_NOT I_15 ( .A(N89), .Z(N90) );
  GTECH_NOT I_16 ( .A(N93), .Z(N94) );
  GTECH_NOT I_17 ( .A(N100), .Z(N101) );
  GTECH_NOT I_18 ( .A(N104), .Z(N105) );
  GTECH_OR2 C815 ( .A(N58), .B(N54), .Z(N122) );
  GTECH_OR2 C816 ( .A(N62), .B(N122), .Z(N123) );
  GTECH_OR2 C817 ( .A(N66), .B(N123), .Z(N124) );
  GTECH_OR2 C818 ( .A(N70), .B(N124), .Z(N125) );
  GTECH_OR2 C819 ( .A(N74), .B(N125), .Z(N126) );
  GTECH_OR2 C820 ( .A(N78), .B(N126), .Z(N127) );
  GTECH_OR2 C821 ( .A(N82), .B(N127), .Z(N128) );
  GTECH_OR2 C822 ( .A(N86), .B(N128), .Z(N129) );
  GTECH_OR2 C823 ( .A(N90), .B(N129), .Z(N130) );
  GTECH_OR2 C824 ( .A(N94), .B(N130), .Z(N131) );
  GTECH_OR2 C825 ( .A(N97), .B(N131), .Z(N132) );
  GTECH_OR2 C826 ( .A(N101), .B(N132), .Z(N133) );
  GTECH_OR2 C827 ( .A(N105), .B(N133), .Z(N134) );
  GTECH_NOT I_19 ( .A(N134), .Z(N135) );
  GTECH_AND2 C829 ( .A(N16), .B(N142), .Z(N143) );
  GTECH_BUF B_16 ( .A(N143), .Z(Finish) );
  GTECH_OR2 C832 ( .A(N58), .B(N62), .Z(N144) );
  GTECH_OR2 C833 ( .A(N144), .B(N66), .Z(N145) );
  GTECH_OR2 C834 ( .A(N145), .B(N70), .Z(N146) );
  GTECH_OR2 C835 ( .A(N146), .B(N74), .Z(N147) );
  GTECH_OR2 C836 ( .A(N147), .B(N78), .Z(N148) );
  GTECH_OR2 C837 ( .A(N148), .B(N82), .Z(N149) );
  GTECH_OR2 C838 ( .A(N149), .B(N86), .Z(N150) );
  GTECH_OR2 C839 ( .A(N150), .B(N90), .Z(N151) );
  GTECH_OR2 C840 ( .A(N151), .B(N94), .Z(N152) );
  GTECH_OR2 C841 ( .A(N152), .B(N97), .Z(N153) );
  GTECH_OR2 C842 ( .A(N153), .B(N101), .Z(N154) );
  GTECH_OR2 C843 ( .A(N154), .B(N105), .Z(N155) );
  GTECH_NOT I_20 ( .A(N155), .Z(N156) );
endmodule

