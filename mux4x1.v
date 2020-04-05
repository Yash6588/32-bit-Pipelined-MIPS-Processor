// Verilog code for 4X1 Mux
module mux4x1(out[31:0], in0[31:0], in1[31:0], in2[31:0], in3[31:0], sel[1:0]);
	// inputs and outputs ports declaration
	input [31:0] in0, in1, in2, in3;
	input [1:0] sel;
	output [31:0] out;
	// code start
	assign out = sel[1] ? (sel[0] ? in3 : in2) : (sel[0] ? in1 : in0);
endmodule	// end of module Mux
