// Verilog code for full adder
module fulladdr(sum, Cout, in1, in2, Cin);
	// inputs and outputs variables declaration
	input in1, in2, Cin;
	output sum, Cout;
	assign sum = in1 ^ in2 ^ Cin;
	assign Cout = in1&in2 | in2&Cin | in1&Cin;
endmodule
