module tristate(ostream[31:0], enable, istream[31:0]);
	input [31:0] istream;
	input enable;
	output [31:0] ostream;
	assign ostream = enable ? istream : 32'bz;
endmodule
