// Verilog code for tristate
module tristate(ostream[31:0], enable, istream[31:0]);
	// inputs and output variable declaration
	input [31:0] istream;
	input enable;
	output [31:0] ostream;
	// code start
	assign ostream = enable ? istream : 32'bz;
endmodule// end of module tristate
