// Verilog code for 2X1 Mux
module mux2x1(out[4:0], in0[4:0], in1[4:0], sel);
	// inputs and outputs variables declaration
	input [4:0] in0, in1;
	input sel;
	output [4:0] out;
	// Code start
	assign out = sel ? in0 : in1;
endmodule
