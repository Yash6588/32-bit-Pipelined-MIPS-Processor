// Verilog module for Comparator
module comparator(comp_out, in1[4:0], in2[4:0]);
	//inputs and outputs Variables declaration
	input [4:0] in1, in2;
	output comp_out;
	assign comp_out = ~((in1[4] ^ in2[4]) | (in1[3] ^ in2[3]) | (in1[2] ^ in2[2]) | (in1[1] ^ in2[1]) | (in1[0] ^ in2[0]));
endmodule
