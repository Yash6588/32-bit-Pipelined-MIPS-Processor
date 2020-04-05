module shifter(no_shift[31:0], logic_left[31:0], logic_right[31:0], arith_right[31:0], in[31:0], shift_amt[4:0]);
	input [31:0] in;
	output [31:0] no_shift, logic_left, logic_right, arith_right;
	input [4:0] shift_amt;
	assign no_shift = in;
	assign logic_left = (in << shift_amt);
	assign logic_right = (in >> shift_amt);
	assign arith_right = ($signed(in) >>> shift_amt);
endmodule
