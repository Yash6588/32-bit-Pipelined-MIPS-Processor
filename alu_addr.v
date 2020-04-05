// Verilog code for ALU Adder
module alu_addr(out[31:0], Cout[31:0], x[31:0], y[31:0], Cin);
	// input and output ports declaration
	input [31:0] x,y;
	input Cin;
	wire w1;
	output [31:0] out, Cout;
	// code start
	fulladdr f1(out[0], Cout[0], x[0], y[0], Cin);
	fulladdr f2(out[1], Cout[1], x[1], y[1], Cout[0]);
	fulladdr f3(out[2], Cout[2], x[2], y[2], Cout[1]);
	fulladdr f4(out[3], Cout[3], x[3], y[3], Cout[2]);
	fulladdr f5(out[4], Cout[4], x[4], y[4], Cout[3]);
	fulladdr f6(out[5], Cout[5], x[5], y[5], Cout[4]);
	fulladdr f7(out[6], Cout[6], x[6], y[6], Cout[5]);
	fulladdr f8(out[7], Cout[7], x[7], y[7], Cout[6]);
	fulladdr f9(out[8], Cout[8], x[8], y[8], Cout[7]);
	fulladdr f10(out[9], Cout[9], x[9], y[9], Cout[8]);
	fulladdr f11(out[10], Cout[10], x[10], y[10], Cout[9]);
	fulladdr f12(out[11], Cout[11], x[11], y[11], Cout[10]);
	fulladdr f13(out[12], Cout[12], x[12], y[12], Cout[11]);
	fulladdr f14(out[13], Cout[13], x[13], y[13], Cout[12]);
	fulladdr f15(out[14], Cout[14], x[14], y[14], Cout[13]);
	fulladdr f16(out[15], Cout[15], x[15], y[15], Cout[14]);
	fulladdr f17(out[16], Cout[16], x[16], y[16], Cout[15]);
	fulladdr f18(out[17], Cout[17], x[17], y[17], Cout[16]);
	fulladdr f19(out[18], Cout[18], x[18], y[18], Cout[17]);
	fulladdr f20(out[19], Cout[19], x[19], y[19], Cout[18]);
	fulladdr f21(out[20], Cout[20], x[20], y[20], Cout[19]);
	fulladdr f22(out[21], Cout[21], x[21], y[21], Cout[20]);
	fulladdr f23(out[22], Cout[22], x[22], y[22], Cout[21]);
	fulladdr f24(out[23], Cout[23], x[23], y[23], Cout[22]);
	fulladdr f25(out[24], Cout[24], x[24], y[24], Cout[23]);
	fulladdr f26(out[25], Cout[25], x[25], y[25], Cout[24]);
	fulladdr f27(out[26], Cout[26], x[26], y[26], Cout[25]);
	fulladdr f28(out[27], Cout[27], x[27], y[27], Cout[26]);
	fulladdr f29(out[28], Cout[28], x[28], y[28], Cout[27]);
	fulladdr f30(out[29], Cout[29], x[29], y[29], Cout[28]);
	fulladdr f31(out[30], Cout[30], x[30], y[30], Cout[29]);
	fulladdr f32(out[31], Cout[31], x[31], y[31], Cout[30]);
endmodule	// end of module Adder
