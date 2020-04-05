// Verilog code for 32 bit Mux
module mux32b2x1(out[31:0], in0[31:0], in1[31:0], select);
	// inputs and output ports declaration
	input [31:0] in0,in1;
	input select;
	output [31:0] out;
	// code start
	assign out = select ? in1 : in0;
endmodule	// end of module Mux
