module IIR(clk,rst,load,DIn,RAddr,data_done,WEN,Yn,WAddr,Finish);

	input clk,rst;
	input data_done;
	input signed[15:0]DIn;

	output WEN,load;
	output Finish;
	output signed[15:0]Yn;
	output [19:0]RAddr;
	output [19:0]WAddr;

	parameter R0 = 5'b00000, S0 = 5'b00001, W0 = 5'b00010,
			  R1 = 5'b00011, S1 = 5'b00100, W1 = 5'b00101,
			  R2 = 5'b00110, S2 = 5'b00111, W2 = 5'b01000,
			  R3 = 5'b01001, S3 = 5'b01010, W3 = 5'b01011,
			  R4 = 5'b01100, S4 = 5'b01101, W4 = 5'b01110,
			  R5 = 5'b01111, S5 = 5'b10000, W5 = 5'b10001,
			  REPLACE = 5'b10011, END = 5'b11110, READY = 5'b11111;
	
	reg [19:0]raddr, next_RAddr, waddr, next_WAddr, n, next_n;
	reg [4:0]state, next_state;
	reg WENN, loadd, Fin;
	reg signed [24:0]s0, next_s0, s1, next_s1, s2, next_s2, s3, next_s3, s4, next_s4, s5, next_s5;
	reg signed [24:0]ss0, next_ss0, ss1, next_ss1, ss2, next_ss2, ss3, next_ss3, ss4, next_ss4, ss5, next_ss5;
	reg signed [15:0]Ynn;
	
	always@(posedge rst or posedge clk)begin
		if(rst)begin
			state <= READY;
			raddr <= 1'b0;
			waddr <= 1'b0;
			s0 <= 25'b0;
			s1 <= 25'b0;
			s2 <= 25'b0;
			s3 <= 25'b0;
			s4 <= 25'b0;
			s5 <= 25'b0;
			ss0 <= 25'b0;
			ss1 <= 25'b0;
			ss2 <= 25'b0;
			ss3 <= 25'b0;
			ss4 <= 25'b0;
			ss5 <= 25'b0;
			n <= 20'b0;
		end
		else begin
			state <= next_state;
			waddr <= next_WAddr;
			raddr <= next_RAddr;
			s0 <= next_s0;
			s1 <= next_s1;
			s2 <= next_s2;
			s3 <= next_s3;
			s4 <= next_s4;
			s5 <= next_s5;
			ss0 <= next_ss0;
			ss1 <= next_ss1;
			ss2 <= next_ss2;
			ss3 <= next_ss3;
			ss4 <= next_ss4;
			ss5 <= next_ss5;
			n <= next_n;
		end
	end	

	always@(*)begin
		next_state = state;
		next_WAddr = waddr;
		next_RAddr = raddr;
		next_s0 = s0;
		next_s1 = s1;
		next_s2 = s2;
		next_s3 = s3;
		next_s4 = s4;
		next_s5 = s5;
		next_ss0 = ss0;
		next_ss1 = ss1;
		next_ss2 = ss2;
		next_ss3 = ss3;
		next_ss4 = ss4;
		next_ss5 = ss5;
		WENN = 1'b0;
		case(state)
		  //31
		  READY:begin
			Fin = 1'b0;
			next_state = (!rst)? R0:READY;
		  end
		  //0
		  R0:begin
			Fin = 1'b0;
			loadd = 1'b1;
			next_RAddr = raddr + 1'b1;
			next_s0 = {{2{DIn[15]}}, DIn, {7{1'b0}}};
			next_state = (raddr>1'b0)? R1:S0;
		  end
		  //1
		  S0:begin
			Fin = 1'b0;
			next_ss0 = (s0>>>6) + (s0>>>9) + (s0>>>10) + (s0>>>11) + (s0>>>12) + (s0>>>13) + (s0>>>16);
			next_state = W0;
		  end
		  //2
		  W0:begin
			Fin = 1'b0;
			WENN = 1'b1;
			next_WAddr = waddr + 1'b1;
			Ynn = {ss0[24], ss0[21:7]};
			next_ss0 = {{2{ss0[24]}}, ss0[24], ss0[21:7], {7{1'b0}}};
			next_state = R1;
	  	  end
		  //3
		  R1:begin
			Fin = 1'b0;
			loadd = 1'b1;
			next_RAddr = raddr + 1'b1;
			next_s1 = {{2{DIn[15]}}, DIn, {7{1'b0}}};
			next_state = (raddr>1'b1)? R2:S1;
          end
          //4
          S1:begin
			Fin = 1'b0;
			next_ss1 = (s1>>>6) + (s1>>>9) + (s1>>>10) + (s1>>>11) + (s1>>>12) + (s1>>>13) +(s1>>>16) +
					   (s0>>>6) + (s0>>>8) + (s0>>>10) + (s0>>>11) + (s0>>>14) + (s0>>>15) + (s0>>>16) +
				  	   (ss0<<<1) +(ss0>>>1) + (ss0>>>2) + (ss0>>>7) + (ss0>>>13) + (ss0>>>14);
			next_state = W1;
          end
          //5
          W1:begin
			Fin = 1'b0;
			WENN = 1'b1;
			next_WAddr = waddr + 1'b1;
			Ynn = {ss1[24], ss1[21:7]};
			next_ss1 = {{2{ss1[24]}}, ss1[24], ss1[21:7], {7{1'b0}}};
			next_state = R2;
          end
		  //6
		  R2:begin
			Fin = 1'b0;
			loadd = 1'b1;
			next_RAddr = raddr + 1'b1;
			next_s2 = {{2{DIn[15]}}, DIn, {7{1'b0}}};
			next_state = (raddr>2'b10)? R3:S2;
          end
          //7
          S2:begin
			Fin = 1'b0;
			next_ss2 = (s2>>>6) + (s2>>>9) + (s2>>>10) + (s2>>>11) + (s2>>>12) + (s2>>>13) + (s2>>>16) +
					   (s1>>>6) + (s1>>>8 ) +(s1>>>10) + (s1>>>11) + (s1>>>14) + (s1>>>15) + (s1>>>16) +
					   (s0>>>5) + (s0>>>8) + (s0>>>9) + (s0>>>11) + (s0>>>14) + (s0>>>15) + (s0>>>16) + 
					   (ss1<<<1) + (ss1>>>1) + (ss1>>>2) + (ss1>>>7) + (ss1>>>13) + (ss1>>>14) -
					   (ss0<<<2) - (ss0>>>7) - (ss0>>>9) - (ss0>>>10) - (ss0>>>12);
			next_state = W2;
          end
          //8
          W2:begin
			Fin = 1'b0;
			WENN = 1'b1;
			next_WAddr = waddr + 1'b1;
			Ynn = {ss2[24], ss2[21:7]};
			next_ss2 = {{2{ss2[24]}}, ss2[24], ss2[21:7], {7{1'b0}}};
			next_state = R3;
          end
		  //9
		  R3:begin
			Fin = 1'b0;
			loadd = 1'b1;
			next_RAddr = raddr + 1'b1;
			next_s3 = {{2{DIn[15]}}, DIn, {7{1'b0}}};
			next_state = (raddr>2'b11)? R4:S3;
          end
          //10
          S3:begin
			Fin = 1'b0;
			next_ss3 = (s3>>>6) + (s3>>>9) + (s3>>>10) + (s3>>>11) + (s3>>>12) + (s3>>>13) + (s3>>>16) +
					   (s2>>>6) + (s2>>>8) + (s2>>>10) + (s2>>>11) + (s2>>>14) + (s2>>>15) + (s2>>>16) +
					   (s1>>>5) + (s1>>>8) + (s1>>>9) + (s1>>>11) + (s1>>>14) + (s1>>>15) + (s1>>>16) +
					   (s0>>>5) + (s0>>>8) + (s0>>>9) + (s0>>>11) + (s0>>>14) + (s0>>>15) + (s0>>>16) + 
					   (ss2<<<1) + (ss2>>>1) + (ss2>>>2) + (ss2>>>7) + (ss2>>>13) + (ss2>>>14) -
					   (ss1<<<2) - (ss1>>>7) - (ss1>>>9) - (ss1>>>10) - (ss1>>>12) +
					   (ss0<<<1) + (ss0<<<0) + (ss0>>>2) + (ss0>>>4) + (ss0>>>5) + (ss0>>>6) + (ss0>>>7) + (ss0>>>8);
			next_state = W3;
          end
          //11
          W3:begin
			Fin = 1'b0;
			WENN = 1'b1;
			next_WAddr = waddr + 1'b1;
			Ynn = {ss3[24], ss3[21:7]};
			next_ss3= {{2{ss3[24]}}, ss3[24], ss3[21:7], {7{1'b0}}};
			next_state = R4;
          end
		  //12
		  R4:begin
			Fin = 1'b0;
			loadd = 1'b1;
			next_RAddr = raddr + 1'b1;
			next_s4 = {{2{DIn[15]}}, DIn, {7{1'b0}}};
			next_state = (raddr>3'b100)? R5:S4;
          end
          //13
          S4:begin
			Fin = 1'b0;
			next_ss4 = (s4>>>6) + (s4>>>9) + (s4>>>10) + (s4>>>11) + (s4>>>12) + (s4>>>13) + (s4>>>16) + 
					   (s3>>>6) + (s3>>>8) + (s3>>>10) + (s3>>>11) + (s3>>>14) + (s3>>>15) + (s3>>>16) +
					   (s2>>>5) + (s2>>>8) + (s2>>>9) + (s2>>>11) + (s2>>>14) + (s2>>>15) + (s2>>>16) +
				 	   (s1>>>5) + (s1>>>8) + (s1>>>9) + (s1>>>11) + (s1>>>14) + (s1>>>15) + (s1>>>16) +
				 	   (s0>>>6) + (s0>>>8) + (s0>>>10) + (s0>>>11) + (s0>>>14) + (s0>>>15) + (s0>>>16) +
			  		   (ss3<<<1) + (ss3>>>1) + (ss3>>>2) + (ss3>>>7) + (ss3>>>13) + (ss3>>>14) -
				 	   (ss2<<<2) - (ss2>>>7) - (ss2>>>9) - (ss2>>>10) - (ss2>>>12) +
					   (ss1<<<1) + (ss1<<<0) + (ss1>>>2) + (ss1>>>4) + (ss1>>>5) + (ss1>>>6) + (ss1>>>7) + (ss1>>>8) -
					   (ss0<<<0) - (ss0>>>1) - (ss0>>>3) - (ss0>>>6) - (ss0>>>7) - (ss0>>>8) - (ss0>>>10) - (ss0>>>11) - 
					   (ss0>>>12) - (ss0>>>13) - (ss0>>>16);
			next_state = W4;
          end
          //14
          W4:begin
			Fin = 1'b0;
			WENN = 1'b1;
			next_WAddr = waddr + 1'b1;
			Ynn = {ss4[24], ss4[21:7]};
			next_ss4 = {{2{ss4[24]}}, ss4[24], ss4[21:7], {7{1'b0}}};
			next_state = R5;
          end
		  //15
          R5:begin
			Fin = 1'b0;
			loadd = 1'b1;
			next_s5 = {{2{DIn[15]}}, DIn, {7{1'b0}}};
			next_state = (raddr>3'b101)? REPLACE:S5;
          end
          //16
          S5:begin
			Fin = 1'b0;
			next_ss5 = (s5>>>6) + (s5>>>9) + (s5>>>10) + (s5>>>11) + (s5>>>12) + (s5>>>13) + (s5>>>16) +
					   (s4>>>6) + (s4>>>8) + (s4>>>10) + (s4>>>11) + (s4>>>14) + (s4>>>15) + (s4>>>16) +
					   (s3>>>5) + (s3>>>8) + (s3>>>9) + (s3>>>11) + (s3>>>14) + (s3>>>15) + (s3>>>16) +
					   (s2>>>5) + (s2>>>8) + (s2>>>9) + (s2>>>11) + (s2>>>14) + (s2>>>15) + (s2>>>16) +
					   (s1>>>6) + (s1>>>8) + (s1>>>10) + (s1>>>11) + (s1>>>14) + (s1>>>15) + (s1>>>16) +
					   (s0>>>6) +(s0>>>9) + (s0>>>10) + (s0>>>11) + (s0>>>12) + (s0>>>13) + (s0>>>16) +
					   (ss4<<<1) + (ss4>>>1) + (ss4>>>2) + (ss4>>>7) + (ss4>>>13) + (ss4>>>14) -
					   (ss3<<<2) - (ss3>>>7) - (ss3>>>9) - (ss3>>>10) - (ss3>>>12) +
					   (ss2<<<1) + (ss2<<<0) + (ss2>>>2) + (ss2>>>4) + (ss2>>>5) + (ss2>>>6) + (ss2>>>7) + (ss2>>>8) -
					   (ss1<<<0) - (ss1>>>1) - (ss1>>>3) - (ss1>>>6) - (ss1>>>7) - (ss1>>>8) - (ss1>>>10) - (ss1>>>11) - 
					   (ss1>>>12) - (ss1>>>13) - (ss1>>>16) +
					   (ss0>>>2) + (ss0>>>3) + (ss0>>>8) + (ss0>>>11) + (ss0>>>13) + (ss0>>>14);
			next_state = W5;
          end
          //17
          W5:begin
			 Fin = 1'b0;
			 WENN = 1'b1;
			 next_WAddr = waddr + 1'b1;
			 next_RAddr = raddr - 3'b100;
			 Ynn = {ss5[24], ss5[21:7]};
    		 next_ss5 = {{2{ss5[24]}}, ss5[24], ss5[21:7], {7{1'b0}}};
			 next_state = (data_done)? END:R0;
          end
		  REPLACE:begin
			 Fin = 1'b0;
			 next_ss4 = ss5;
			 next_ss3 = ss4;
			 next_ss2 = ss3;
			 next_ss1 = ss2;
		  	 next_ss0 = ss1;
			 next_state = S5;
		  end
		  END:begin
			Fin = 1'b1;
		  end
		endcase
	end

	assign load = loadd;
	assign WEN = WENN;
	assign Finish = Fin;
	assign RAddr = raddr;
	assign WAddr = waddr;
	assign Yn = Ynn;

endmodule	
