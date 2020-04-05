// Verilog code for NOTgate
module notgate(out,in);
	// input and output variables declaration
	input in;
	output out;
	// code start
	assign out = ~in;
endmodule// end of module NOTgate
