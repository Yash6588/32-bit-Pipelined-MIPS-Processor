`timescale 1ns/1ps

module delay(out[4:0], in[4:0]);
	input [4:0] in;
	output [4:0] out;
	assign #20 out = in;
endmodule
