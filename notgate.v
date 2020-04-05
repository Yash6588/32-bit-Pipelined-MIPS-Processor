// Verilog code for NOTgate
module notgate(out,in);
	// input and output ports declaration
	input in;
	output out;
	assign out = ~in;
endmodule	// end of module NOTgate
