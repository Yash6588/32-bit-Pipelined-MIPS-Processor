module mux2x1(out[4:0], in0[4:0], in1[4:0], sel);
	input [4:0] in0, in1;
	output [4:0] out;
	input sel;
	assign out = sel ? in0 : in1;
endmodule
