module MM(clk,i,j,reset,read,write,index,read_data,write_data,finish);

	input reset, clk;
	input [19:0]read_data;
	
	output [19:0]i, j;
	output read, write, index, finish;
	output [39:0]write_data;
	
	parameter IDLE = 4'b0000, MAT0 = 4'b0001, MAT1 = 4'b0010,
			  MULADD = 4'b0011, CHANGECOL1 = 4'b0100, WRITE = 4'b0101,
			  S1 = 4'b0111, S2 = 4'b1000, CHANGECOL2 = 4'b1010,
			  CHANGEROW1 =4'b1011;

	reg [3:0]state, next_state;
	reg [19:0]row1, col1, col2, next_row1, next_col1, next_col2;
	reg signed [19:0]a, b, next_a, next_b;
	reg readd, writee, indexx;
	reg [19:0]i_now,  j_now,  k, next_k, m,  next_m, n, next_n, ii, next_ii;
	reg signed [39:0]pres_sum, next_sum, write_data1;

	always@(posedge clk or posedge reset)begin
		if(reset)begin
			state <= IDLE;
			ii <= 20'd0;
			row1 <= 1'b0;
			col1 <= 1'b0;
			col2 <= 1'b0;
			m <= 1'b0;
			n <= 1'b0;
			k <= 1'b0;
			pres_sum <= 1'b0;
			a <= 0;
			b <= 0;
		end
		else begin
			state <= next_state;
			ii <= next_ii;
			row1 <= next_row1;
			col1 <= next_col1;
			col2 <= next_col2;
			m <= next_m;
			n <= next_n;
			k <= next_k;
			pres_sum <= next_sum;
			a <= next_a;
			b <= next_b;
		end
	end

	always@(*)begin
		next_state = state;
		next_ii = ii;
		next_row1 = row1;
		next_col1 = col1;
		next_col2 = col2;
		next_m = m;
		next_n = n;
		next_k = k;
		next_a = a;
		next_b = b;
		next_sum = pres_sum;
		case(state)
		  IDLE:begin
			next_state = (!reset)? S1 : IDLE;
		  end
		  S1:begin
			readd = 1'b1;
			writee = 1'b1;
			i_now = ii;
			next_row1 = (ii == 20'd0)? read_data : row1;
			next_col1 = (ii == 20'd1)? read_data : col1;
			next_col2 = (ii == 20'd2)? read_data : col2;
			next_state = (ii < 20'd3)? S2 : MAT0;
		  end
		  S2:begin
			next_ii = ii + 20'd1;
			next_state = S1;
		  end
		  MAT0:begin
			readd = 1'b1;
			writee = 1'b0;
			indexx = 1'b0;
			i_now = 1'b0 + m;
			j_now = 1'b0 + n;
			next_a = read_data;
			next_state = MAT1;
		  end
		  MAT1:begin
			readd = 1'b1;
			writee = 1'b0;
			indexx = 1'b1;
			i_now = 1'b0 + n;
			j_now = 1'b0 + k;
			next_b = read_data;
			next_state = MULADD;
		  end
		  MULADD:begin
			next_sum = pres_sum + a*b;
			next_state = CHANGECOL1;
		  end
		  CHANGECOL1:begin
			next_n = (n < col1-1)? n+1'b1 : 1'b0;
			next_state = (n < col1-1)? MAT0 : WRITE;
		  end
		  WRITE:begin
			readd = 1'b0;
			writee = 1'b1;
			write_data1 = pres_sum;
			next_state = CHANGECOL2;
		  end
		  CHANGECOL2:begin
			writee = 1'b0;
			next_k = (k < col2-1)? k+1'b1 : 1'b0;
			next_state = (k < col2-1)? MAT0 : CHANGEROW1;
			next_sum = 1'b0;
		  end
		  CHANGEROW1:begin
			if(m < row1-1)begin
				next_m = m + 1'b1;
				next_state = MAT0;
			end
			else begin
				next_m = m;
				next_n = col1;
				next_k = col2;
			end
		  end
		endcase
	end
	
	assign read = readd;
	assign write = writee;
	assign index = indexx;
	assign i = i_now;
	assign j = j_now;
	assign finish = (m == row1-1 && n == col1 && k == col2 && reset != 1'b1)? 1'b1 : 1'b0;
	assign write_data = write_data1; 

endmodule
