// Verilog code for Logic Unit
module logic_unit(and_out[31:0], or_out[31:0], xor_out[31:0], nor_out[31:0], x[31:0], y[31:0]);
	// inputs and outputs variables declaration
	input [31:0] x,y;
	output [31:0] and_out, or_out, xor_out, nor_out;
	// Logical Operation between x and y
	assign and_out = x & y;
	assign or_out = x | y;
	assign xor_out = x ^ y;
	assign nor_out = ~(x | y);
endmodule
	
