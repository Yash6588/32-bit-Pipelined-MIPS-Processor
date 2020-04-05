`timescale 1ns/1ps
// Verilog code for delay
module delay(out[4:0], in[4:0]);
	// inputs and outputs ports declaration
	input [4:0] in;
	output [4:0] out;
	// code start
	assign #20 out = in;
endmodule	//end of module delay
