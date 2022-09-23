
module Det(clk,i,j,reset,read,write,read_data,write_data,finish);
	parameter n=20;
	
	input reset,clk;
	input [n-1:0]read_data;
	
	output [n-1:0]i,j;
	output read,write,finish;
	output [2*n-1:0]write_data;
endmodule