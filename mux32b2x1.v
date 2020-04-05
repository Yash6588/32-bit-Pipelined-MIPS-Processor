module mux32b2x1(out[31:0], in0[31:0], in1[31:0], select);
	input [31:0] in0,in1;
	output [31:0] out;
	input select;
	assign out = select ? in1 : in0;
endmodule
