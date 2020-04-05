// Verilog code for fulladder
module fulladdr(sum, Cout, in1, in2, Cin);
	// inputs and outputs ports declararion
	input in1, in2, Cin;
	output sum, Cout;
	// code start
	assign sum = in1 ^ in2 ^ Cin;
	assign Cout = in1&in2 | in2&Cin | in1&Cin;
endmodule	// end of module fulladder
