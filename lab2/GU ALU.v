module ALU( A,B, Cin,FS, Y, N, C, V, Z); 

	input [31:0] A,B; 
	input Cin; 
	input [3:0] FS;
    
	output reg signed [31:0] Y;
	output reg N;
	output reg C;
	output reg V;
	output reg Z;
	
	wire [31:0] A_tmp;
	wire [31:0] B_tmp;
  
	assign A_tmp = { A[15], A[15], A[15], A[15],
							A[15], A[15], A[15], A[15],
							A[15], A[15], A[15], A[15],
							A[15], A[15], A[15], A[15],
							A[15:0] };          
			assign B_tmp = { B[15], B[15], B[15], B[15],
							B[15], B[15], B[15], B[15],
							B[15], B[15], B[15], B[15],
							B[15], B[15], B[15], B[15],
							B[15:0] };        

	always @(*) begin
	  case(FS)
	    //0000
		4'b0000:
		begin 
			Y = A << 1'b1 ;
			N = 1'b0;
			C = 1'b0;
			V = 1'b0;
			Z = 1'b0;
		end
		
		//0001
		4'b0001: 
		begin 
			Y = A <<< 1'b1;
			
			N = 1'b0;
			if (Y[31] == 1'b1) begin   
			N = 1'b1;
			end
			
			C= 1'b0;
			if (A[31] == 1'b1) begin       
			C = 1'b1;
			end		
				
			V= 1'b0;
			if (  (A[31] ^ A[30]) == 1'b1 ) begin
			V= 1'b1;
			end	
				
			Z= 1'b0;
			if (Y == 4'b0000) begin
				Z = 1'b1;
			end	
		end
		
		//0010	
		4'b0010:
		begin 
			Y = A >> 1'b1;
			N = 1'b0;
			C = 1'b0;
			V = 1'b0;
			Z = 1'b0;
		end
		
		//0011
		4'b0011: 
		begin 
			
			Y = A >>> 1'b1;
			Y[31] = A[31];     
			
			N = 1'b0;
			if (A[31] == 1'b1) begin
			N = 1'b1;
			end
			
			C= 1'b0;begin
			end
			
			V= 1'b0; begin
			end	
		
			Z= 1'b0;
			if (Y == 32'h0000_0000) begin
			Z = 1'b1;
			end	
			
		end
		
		//0100
		4'b0100: 
		begin 
			Y = A + B;
			
			N = 1'b0;
			if (Y[31] == 1'b1) begin
			N = 1'b1;
			end
			
			C= 1'b0;
			if (  (A[31]^B[31]==1'b1) & (Y[31]^A[31]^B[31])==1'b1 | (A[31] & B[31])==1'b1 ) begin 
			C = 1'b1;
			end
		
			V= 1'b0;
			if ( (Y[31]==1'b0 &  A[31]==1'b1 & B[31]==1'b1 )| (Y[31]==1'b1 &  A[31]==1'b0 & B[31]==1'b0 ) ) begin 
			V = 1'b1;
			end
			
			Z= 1'b0;
			if (Y == 32'h0000_0000) begin
			Z = 1'b1;
			end	
			
		end
		
		//0101
		4'b0101: 
		begin 
			
			
			Y = A + B + Cin;
			
			
			
			N = 1'b0;
			if (Y[31] == 1'b1) begin  
			N = 1'b1;
			end
			
			C= 1'b0;
			if (  (A[31]^B[31]==1'b1) & (Y[31]^A[31]^B[31])==1'b1 | (A[31] & B[31])==1'b1 ) begin
			C = 1'b1;
			end			
			
			V= 1'b0;
			if ( (Y[31]==1'b0 &  A[31]==1'b1 & B[31]==1'b1 )| (Y[31]==1'b1 &  A[31]==1'b0 & B[31]==1'b0 ) ) begin   
			V = 1'b1;
			end
				
			Z= 1'b0;
			if (Y == 32'h0000_0000) begin    
			Z = 1'b1;
			end	
			
		end
		
		//0110
		4'b0110: 
		begin 
			Y = A - B;
			
			N = 1'b0;
			if (Y[31] == 1'b1) begin
			N = 1'b1;
			end
				
			C= 1'b0;                            
			if (  (A[31]& B[31]& Y[31]==1'b0) | A[31]==1'b1 & B[31]==1'b1 & Y[31]==1'b0 | A[31]==1'b1 & B[31]==1'b0 ) begin     
			C = 1'b1;
			end			
			
			
			V= 1'b0;
			if ( (Y[31]==1'b0 &  A[31]==1'b1 & B[31]==1'b0 )| (Y[31]==1'b1 &  A[31]==1'b0 & B[31]==1'b1 ) ) begin		
			V= 1'b1;
			end	
			
			
			Z= 1'b0;
			if (Y == 32'h0000_0000) begin
			Z = 1'b1;
			end	
			
		end
		
		//0111
		4'b0111: 
		begin 
			
		
			Y = A - B;       			
			if (A[31]==1'b1 & B[31]==1'b0) begin
			Y = B - A;
			end else if (A[31]==1'b0 & B[31]==1'b1) begin
			Y = A - B;
			end else if (A[31]==1'b1 & B[31]==1'b0 & A > B ) begin 				 
			Y = B - A;
			end else if (A[31]==1'b1 & B[31]==1'b0 & B > A ) begin
			Y = B - A;
			end else if (A[31]==1'b0 & B[31]==1'b0 & A > B ) begin
			Y = A - B;
			end else if (A[31]==1'b0 & B[31]==1'b0 & B > A ) begin
			Y = B - A;
			end
			
			if (Y[31]==1'b1) begin                  
			Y = ~(Y) + 1'b1;
			end
			
			
			N = 1'b0;begin
			end
		
			V= 1'b0;begin	
			end	
				
				
			Z= 1'b0;
			if (Y == 32'h0000_0000) begin
			Z = 1'b1;
			end	
			
		end
		
		//1000
		4'b1000: 
		begin 
			  
			
			 
			Y = A_tmp * B_tmp;
			
			
			N = 1'b0;
			if (Y[31]) begin    
			N = 1'b1;
			end
			
			C= 1'b0; begin                            
			end		
			
			
			V= 1'b0; begin                            
			end	
				
			Z= 1'b0;
			if (Y == 32'h0000_0000) begin
			Z = 1'b1;
			end	
			
		end
		
		//1001
		4'b1001: 
		begin 
			Y = 32'd0;
			
			N = 1'b0;
			if (Y[31] == 1'b1) begin
			N = 1'b1;
			end
				
			C = 1'b0;
			
			V = 1'b0;
			
			Z= 1'b0;
			if (Y == 32'h0000_0000) begin
			Z = 1'b1;
			end	
			
		end
		
		//1010
		4'b1010: 
		begin 
			Y = A;
			
			N = 1'b0;
			if (Y[31] == 1'b1) begin
			N = 1'b1;
			end
				
			C = 1'b0;
			
			V = 1'b0;
			
			Z= 1'b0;
			if (Y == 32'h0000_0000) begin
			Z = 1'b1;
			end	
			
		end
		
		//1011
		4'b1011: 
		begin 
			Y = B;
			
			N = 1'b0;
			if (Y[31] == 1'b1) begin
			N = 1'b1;
			end
				
			C = 1'b0;
			
			V = 1'b0;
			
			Z= 1'b0;
			if (Y == 32'h0000_0000) begin
			Z = 1'b1;
			end	
			
		end
		
		//1111
		4'b1100: 
		begin 
			Y = A & B;
			N = 1'b0;
			C = 1'b0;
			V = 1'b0;
			Z = 1'b0;
		end
		
		4'b1101: 
		begin 
			Y = A | B;
			N = 1'b0;
			C = 1'b0;
			V = 1'b0;
			Z = 1'b0;
		end
		
		4'b1110: 
		begin 
			Y = A ^ B;
			N = 1'b0;
			C = 1'b0;
			V = 1'b0;
			Z = 1'b0;
		end
		
		4'b1111: 
		begin 
			Y = ~A;
			N = 1'b0;
			C = 1'b0;
			V = 1'b0;
			Z = 1'b0;
		end
	
	  endcase
	end
endmodule
		

	
module add_sub(A, B, mode, Cin, Cout, Y);
  parameter n = 32;
  input mode, A, B, Cin;
  output Cout, Y;

  wire mode, Cin, Cout;
  wire [n-1:0] A, B, Bx, Y;
  wire [n:0] C;

  assign C[0] = mode | Cin;
  assign Bx = B ^ {n{mode}};
  assign Y = A ^ Bx ^ C[n-1:0];
  assign C[n:1] = A & Bx | A & C[n-1:0] | Bx & C[n-1:0];
  assign Cout = C[n];
 
endmodule	
	
	

	
	
	
	



















	 
	 
	 
	 























	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 