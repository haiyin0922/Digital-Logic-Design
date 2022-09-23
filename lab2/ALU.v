module AND (a, b, out);
	input a, b;
	output out;

	wire W_a;

	nand n0(W_a, a, b);
	nand n1(out, W_a, W_a);

endmodule


module OR (a, b, out);
	input a, b;
	output out;

	wire W_a, W_b;

	nand n0(W_a, a, a);
	nand n1(W_b, b, b);
 	nand n2(out, W_a, W_b); 

endmodule


module NOT (a, out);
	input a;
	output out;

	nand n0(out, a, a);

endmodule


module NOR (a, b, out);
	input a, b;
	output out;

	wire W_a, W_b, W_c;

	nand n0(W_a, a, a);
	nand n1(W_b, b, b);
	nand n2(W_c, W_a, W_b);
	nand n3(out, W_c, W_c);

endmodule


module XOR (a, b, out);
	input a, b;
	output out;

    wire W_a, W_b, W_c, W_d;

    nand n0(W_a, a, a);
    nand n1(W_b, b, b);
    nand n2(W_c, W_a, b);
    nand n3(W_d, W_b, a);
    nand n4(out, W_c, W_d);

endmodule


module NAND (a, b, out);
    input a, b;
    output out;

    nand n0(out, a, b);

endmodule


module AdderSubtractor (A, B, Cin, mode, Cout, Sum);
	input [31:0] A, B;
	input Cin, mode;
	output [31:0] Sum;
	output Cout;        

	wire mode, Cin, Cout;
	wire [31:0] A, B, xB, Sum;
	wire [32:0] C;

	assign C[0] = mode | Cin;
	assign xB = B ^ {32{mode}};
	assign Sum = A ^ xB ^ C[31:0];
	assign C[32:1] = A & xB | A & C[31:0] | xB & C[31:0];
	assign Cout = C[32];

endmodule


module ALU (A, B, sel, Cin, Y, Cout, Negative, Zero, Overflow);
	input [31:0] A, B;
	input [3:0] sel;
	input Cin;
	output [31:0] Y;
	output Cout, Negative, Zero, Overflow;

	reg [31:0] Y;
	reg Cout, Negative, Zero, Overflow;
	wire tmp0, tmp1, tmp2, tmp3, tmp4, tmp5;
	wire tmp00, tmp01;
	wire [31:0] s00, s01;

	AND a0(.a(A[0]), .b(B[0]), .out(tmp0));
	OR  o0(.a(A[0]), .b(B[0]), .out(tmp1));
	NOT not0(.a(A[0]), .out(tmp2));
	NOR nor0(.a(A[0]), .b(B[0]), .out(tmp3));
	XOR x0(.a(A[0]), .b(B[0]), .out(tmp4));
	NAND nand0(.a(A[0]), .b(B[0]), .out(tmp5));
	AdderSubtractor add0(A, B, Cin, 1'b0, tmp00, s00);
	AdderSubtractor add1(A, B, Cin, 1'b1, tmp01, s01);


	always @(*) begin
		Y = 0;
		Cout = 0;
		Negative = 0;
		Zero = 0;
		Overflow = 0;
		case(sel)
			4'b0000:		//0
			begin 
				Negative = 1'b0;
				Cout = 1'b0;
				Overflow = 1'b0;
				Y = 32'b0;
				Y[0] = tmp0;
                Zero = 1'b0;
					if(tmp0 == 0) begin
                	Zero = 1'b1;
                	end
				else begin
				Zero = 1'b0;
				end
			end

			4'b0001:		//1
			begin 
				Negative = 1'b0;
				Cout = 1'b0;
				Overflow = 1'b0;
				Y = 32'b0;
				Y[0] = tmp1;
				Zero = 1'b0;
					if(tmp1 == 0) begin
					Zero = 1'b1;
					end
				else begin
				Zero = 1'b0;
				end
			end
			
			4'b0010:		//2
			begin 
				Negative = 1'b0;
				Cout = 1'b0;
				Overflow = 1'b0;
				Y = 32'b0;
				Y[0] = tmp2;
				Zero = 1'b0;	
					if(tmp2 == 0) begin
					Zero = 1'b1;
					end
				else begin
				Zero = 1'b0;
				end
			end

			4'b0011:		//3
			begin 
				Negative = 1'b0;
				Cout = 1'b0;
				Overflow = 1'b0;
				Y = 32'b0;
				Y[0] = tmp3;
				Zero = 1'b0;	
					if(tmp3 == 0) begin
					Zero = 1'b1;
					end
				else begin
				Zero = 1'b0;
				end
			end

			4'b0100:		//4
			begin 
				Negative = 1'b0;
				Cout = 1'b0;
				Overflow = 1'b0;
				Y = 32'b0;
				Y[0] = tmp4;
				Zero = 1'b0;	
					if(tmp4 == 0) begin
					Zero = 1'b1;
					end
				else begin
				Zero = 1'b0;
				end
			end

			4'b0101:		//5
			begin
				Negative = 1'b0;
				Cout = 1'b0;
				Overflow = 1'b0;
				Y = 32'b0;
				Y[0] = tmp5;
				Zero = 1'b0;	
					if(tmp5 == 0) begin
					Zero = 1'b1;
					end
				else begin
				Zero = 1'b0;
				end
			end

			4'b0110:		//6
				begin
				Y = s00;
				Negative = s00[31];
				Cout = tmp00;
				Overflow = 1'b0;
					if((Y[31]==1'b0 && A[31]==1'b1 && B[31]==1'b1) | (Y[31]==1'b1 &&  A[31]==1'b0 && B[31]==1'b0)) begin 
					Overflow = 1'b1;
					end
				Zero = 1'b0;
					if(Y == 32'b0) begin
					Zero = 1'b1;
					end
			end

			4'b0111:		//7
			begin
				Y = s01;
				Negative = s01[31];
				Cout = 1'b0;
				Overflow = 1'b0;
					if((Y[31]==1'b0 && A[31]==1'b1 && B[31]==1'b0) | (Y[31]==1'b1 && A[31]==1'b0 && B[31]==1'b1)) begin
					Overflow = 1'b1;
					end
				Zero = 1'b0;
					if(Y == 32'b0) begin
					Zero = 1'b1;
					end
			end

			4'b1000:		//8
			begin
				Y = s01;
				Negative = 1'b0;
				Cout = 1'b0;
				Overflow = 1'b0;
					if((Y[31]==1'b0 && A[31]==1'b1 && B[31]==1'b0) | (Y[31]==1'b1 && A[31]==1'b0 && B[31]==1'b1)) begin
					Overflow = 1'b1;
					end
				Zero = 1'b0;
					if(Y == 32'b0) begin
					Zero = 1'b1;
					end
				if(s01[31] == 1) begin
				Y = (~s01)+1'b1;
				end
			end	

			4'b1001:		//9
			begin
				Y = A[15:0] * B[15:0];
				Negative = 1'b0;
					if(A[15]==0 ^ B[15]==0)begin
					Negative = 1'b1;
					end
				Cout = 1'b0;
				Overflow = 1'b0;
				Zero = 1'b0;
					if(Y == 32'b0)begin
					Zero = 1'b1;
					end	
			end

			4'b1010:			//10
			begin
				Y = A << 1'b1;
				Negative = Y[31];
				Cout = A[31]; 
				Overflow = A[30] ^ A[31];
				Zero = 1'b0;
			end

			4'b1011:			//11
			begin
				Y = A <<< 1'b1;
				Negative = 1'b0;
					if(Y[31] == 1'b1) begin
					Negative = 1'b1;
					end
				Cout = 1'b0;
					if(A[31] == 1'b1) begin
					Cout = 1'b1;
					end
				Overflow  = 1'b0;
					if (  (A[31] ^ A[30]) == 1'b1 ) begin
					Overflow = 1'b1;
					end
				Zero = 1'b0;
					if (Y == 32'b0) begin
					Zero = 1'b1;
					end
			end

			4'b1100:		//12
			begin
				Y = A >> 1'b1;
				Negative = Y[31];
				Cout = 1'b0;
				Overflow = 1'b0;
				Zero = 1'b0;	
					if(A[1] == 0) begin
					Zero = 1'b1;
					end
				else begin
				Zero = 1'b0;
				end
			end

			4'b1101:		//13
			begin
				Y = A >>> 1'b1;
				Y[31] = A[31];
				Negative = A[31];
				Cout = 1'b0;
				Overflow = 1'b0;
				Zero = 1'b0;	
					if(A[1] == 0) begin
					Zero = 1'b1;
					end
				else begin
				Zero = 1'b0;
				end
			end			

		endcase
	
	end

endmodule

