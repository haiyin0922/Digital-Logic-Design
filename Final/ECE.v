module ECE(clk , rst , RData , RAddr , WAddr , WData , Wen , Finish);
    input clk , rst;
    input [14 : 0] RData;
    output [14 : 0] RAddr , WAddr;
    output [4 : 0] WData;
    output Wen , Finish;

	parameter [3:0] S0=4'b0000, S1=4'b0001, S2=4'b0010,
					S3=4'b0011, S4=4'b0100, S5=4'b0101,
					S6=4'b0110, S7=4'b0111, S8=4'b1000,
					S9=4'b1001, S10=4'b1010,
					RESTART1=4'b1100, RESTART2=4'b1101,
					CC1=4'b1110, CC2=4'b1111;

	reg [3:0] state, next_state;
	reg [14:0] raddr, next_raddr, waddr, next_waddr;
	reg [14:0] leng, next_leng;
	reg [4:0] wdata;
	reg wen;

	always@(posedge clk or posedge rst)begin
		if(rst)begin
		state <= S0;
		raddr <= 15'd32767;
		waddr <= 15'd32767;
		leng <= 15'b0;
		end
		else begin
		state <= next_state;
		raddr <= next_raddr;
		waddr <= next_waddr;
		leng <= next_leng;
		end
	end

	always@(*)begin
		next_state = state;
		next_raddr = raddr + 1'b1;
		next_waddr = waddr + 1'b1;
		next_leng = leng;
		case(state)

		  S0:begin
			next_leng = (!rst)? RData:15'b0;
			next_raddr = (!rst)? 15'b0:15'd32767;
			next_waddr = (!rst)? 15'b0:15'd32767; 
			next_state = (!rst)? S1:S0;
		  end 
		  S1:begin
			wen = 1'b1;
			wdata = (RData[0])? 5'b10000:5'b00000;
			next_state = (RData[0])? S2:RESTART1;
		  end
		  S2:begin
			wen = 1'b1;
			wdata = (RData[0])? 5'b10000:5'b01000;
			next_state = (RData[0])? S3:S1;
		  end
		  S3:begin
			wen = 1'b1;
			wdata[4:0] = (!RData[0])? 5'b00000:5'b11110;
			next_state = (!RData[0])? S4:S1;
		  end
		  S4:begin
			wen = 1'b1;
			wdata = (!RData[0])? 5'b01010:5'b11100;
			next_state = (!RData[0])? S5:S1;
		  end
		  S5:begin
			wen = 1'b1;
			wdata = (RData[0])? 5'b10000:5'b00000;
			next_state = (RData[0])? S6:CC1;
		  end
		  S6:begin
			wen = 1'b1;
			wdata = (RData[0])? 5'b10000:5'b01000;
			next_state = (RData[0])? S7:S1;
		  end
		  S7:begin
			wen = 1'b1;
			wdata = (!RData[0])? 5'b00000:5'b11110;
			next_state = (!RData[0])? S8:S1;
		  end
		  S8:begin
			wen = 1'b1;
			wdata = (!RData[0])? 5'b01011:5'b11100;
			next_state = (!RData[0])? S9:S1;
		  end
		  S9:begin
			wen = 1'b1;
			wdata = (RData[0])? 5'b10000:5'b00000;
			next_state = (RData[0])? S6:CC1;
		  end
		  CC1:begin
			wen = 1'b1;
			wdata = (RData[0])? 5'b10110:5'b00000;
			next_state = (RData[0])? S5:CC2;
		  end
		  CC2:begin
			wen = 1'b1;
			wdata = (RData[0])? 5'b10100:5'b00010;
			next_state = S1;
		  end
		  RESTART1:begin
			wen = 1'b1;
			wdata = (RData[0])? 5'b10110:5'b00000;
			next_state = (RData[0])? S1:RESTART2;
		  end
		  RESTART2:begin
			wen = 1'b1;
			wdata = (RData[0])? 5'b10100:5'b00010;
			next_state = S1;
		  end
			
		endcase
	end

assign RAddr = raddr;
assign WAddr = waddr;
assign WData = wdata;
assign Wen = wen;
assign Finish = (!rst && raddr==leng)? 1'b1:1'b0;

endmodule
