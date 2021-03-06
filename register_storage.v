// Verilog code for register storage
module register_storage(ostream[31:0], istream[31:0], write_op);
	// inputs, outputs and internal variables declaration
	input write_op;
	input [31:0] istream;
	output [31:0] ostream;
	wire [31:0] bits;
	wire [31:0] notbits;
	// code start
	D_FlipFlop mem0(bits[0], notbits[0], istream[0], write_op);
	D_FlipFlop mem1(bits[1], notbits[1], istream[1], write_op);
	D_FlipFlop mem2(bits[2], notbits[2], istream[2], write_op);
	D_FlipFlop mem3(bits[3], notbits[3], istream[3], write_op);
	D_FlipFlop mem4(bits[4], notbits[4], istream[4], write_op);
	D_FlipFlop mem5(bits[5], notbits[5], istream[5], write_op);
	D_FlipFlop mem6(bits[6], notbits[6], istream[6], write_op);
	D_FlipFlop mem7(bits[7], notbits[7], istream[7], write_op);
	D_FlipFlop mem8(bits[8], notbits[8], istream[8], write_op);
	D_FlipFlop mem9(bits[9], notbits[9], istream[9], write_op);
	D_FlipFlop mem10(bits[10], notbits[10], istream[10], write_op);
	D_FlipFlop mem11(bits[11], notbits[11], istream[11], write_op);
	D_FlipFlop mem12(bits[12], notbits[12], istream[12], write_op);
	D_FlipFlop mem13(bits[13], notbits[13], istream[13], write_op);
	D_FlipFlop mem14(bits[14], notbits[14], istream[14], write_op);
	D_FlipFlop mem15(bits[15], notbits[15], istream[15], write_op);
	D_FlipFlop mem16(bits[16], notbits[16], istream[16], write_op);
	D_FlipFlop mem17(bits[17], notbits[17], istream[17], write_op);
	D_FlipFlop mem18(bits[18], notbits[18], istream[18], write_op);
	D_FlipFlop mem19(bits[19], notbits[19], istream[19], write_op);
	D_FlipFlop mem20(bits[20], notbits[20], istream[20], write_op);
	D_FlipFlop mem21(bits[21], notbits[21], istream[21], write_op);
	D_FlipFlop mem22(bits[22], notbits[22], istream[22], write_op);
	D_FlipFlop mem23(bits[23], notbits[23], istream[23], write_op);
	D_FlipFlop mem24(bits[24], notbits[24], istream[24], write_op);
	D_FlipFlop mem25(bits[25], notbits[25], istream[25], write_op);
	D_FlipFlop mem26(bits[26], notbits[26], istream[26], write_op);
	D_FlipFlop mem27(bits[27], notbits[27], istream[27], write_op);
	D_FlipFlop mem28(bits[28], notbits[28], istream[28], write_op);
	D_FlipFlop mem29(bits[29], notbits[29], istream[29], write_op);
	D_FlipFlop mem30(bits[30], notbits[30], istream[30], write_op);
	D_FlipFlop mem31(bits[31], notbits[31], istream[31], write_op);
	assign ostream = bits;
endmodule  // end of module register storage
	
