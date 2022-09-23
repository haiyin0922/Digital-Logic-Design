module PTM(clk , rst , start , data , en , addr , flag , fin , result);
    input clk , rst , start;
    input [9 : 0] data;

    output en , flag , fin;
    output [9 : 0] addr , result;

    parameter S0 = 4'b0000, S1 = 4'b0001,
              S2 = 4'b0010, S3 = 4'b0011,
              S4 = 4'b0100, S5 = 4'b0101,
              S6 = 4'b0110, INI = 4'b1001;

	reg[3:0] state, next_state;
	reg[9:0] num, next_num, leng, next_leng, ans, next_ans;
	reg flag0;

	always@(posedge clk or posedge rst)begin
		if(rst)begin
		  state <= INI;
		  num <= 10'd1023;
		  leng <= 4'd0;
		  ans <= 4'd0;
		end
		else begin
		  state <= next_state;
		  num <= next_num;
		  leng <= next_leng;
		  ans <= next_ans;
		end
	end

	always@(*)begin
		next_num = num + 1'b1;
		next_leng = leng;
		next_ans = ans;
		next_state = state;
		case(state)
		  INI:begin
			next_state = (start)? S0 : INI;
			next_num = (start)? 1'b0 : 10'd1023;
			next_leng = (start)? data : leng;
		  end
		  S0:begin
			next_state = (data)? S1 : S0;
			next_ans = ans;
			flag0 = 1'b0;
		  end
		  S1:begin
			next_state = (!data)? S2 : S1;
			next_ans = ans;
			flag0 = 1'b0;
			end
		  S2:begin
			next_state = (data)? S3 : S0;
			next_ans = ans;
			flag0 = 1'b0;
		  end
		  S3:begin
			next_state = (!data)? S4 : S1;
			next_ans = ans;
			flag0 = 1'b0;
		  end
		  S4:begin
			next_state = (!data)? S5 : S3;
			next_ans = ans;
			flag0 = 1'b0;
	  	  end
		  S5:begin
			next_state = (data)? S6 : S0;
			next_ans = ans;
			flag0 = 1'b0;	  
		  end
		  S6:begin
			if(data)begin
			next_state = S1;
			next_ans = ans + 1'b1;
			flag0 = 1'b1;
			end
			else begin
			next_state = S4;
			next_ans = ans;
			flag0 = 1'b0;
			end
		  end
		endcase
	end

	assign en = 1'b1;
	assign addr = num;
	assign fin = (start == 1 && num == leng)? 1'b1 : 1'b0;
	assign result = (fin == 1)? ans : 1'b0;
	assign flag = flag0;
endmodule

