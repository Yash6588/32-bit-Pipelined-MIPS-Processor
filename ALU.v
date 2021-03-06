// Verilog code for ALU
module ALU(out[31:0],zero_flag,ovf_flag,x[31:0],y[31:0],const_amt[4:0],amt_sel,logic_func[1:0],shift_func[1:0]
				,add_sub,final_func[1:0]);
	// inputs, outputs, and internal variables declaration
	output [31:0] out;
	output zero_flag, ovf_flag;
	wire [31:0] out_addr, out_carry;
	wire [31:0] no_shift, logic_left, logic_right, arith_right;
	wire [31:0] and_out, or_out, xor_out, nor_out;
	wire [31:0] addsub_out;
	wire [4:0] final_shift_amt;
	wire [31:0] logical_final_output, shifter_final_output;
	wire [31:0] slt;
	input [31:0] x, y;
	input [4:0] const_amt;
	input [1:0] logic_func, shift_func, final_func;
	input amt_sel, add_sub;
	// code start
	mux2x1 shift_val_select(final_shift_amt[4:0], const_amt[4:0], x[4:0], amt_sel);
	shifter shift(no_shift[31:0], logic_left[31:0], logic_right[31:0], arith_right[31:0], y[31:0], final_shift_amt[4:0]);
	mux4x1 shift_out(shifter_final_output[31:0], no_shift[31:0], logic_left[31:0], logic_right[31:0], arith_right[31:0], shift_func[1:0]);
	xor32gate twocomp(addsub_out[31:0], y[31:0], add_sub);
	alu_addr adder(out_addr[31:0], out_carry[31:0], x[31:0], addsub_out[31:0], add_sub);
	logic_unit logU(and_out[31:0], or_out[31:0], xor_out[31:0], nor_out[31:0], x[31:0], y[31:0]);
	mux4x1 logic_out(logical_final_output[31:0], and_out[31:0], or_out[31:0], xor_out[31:0], nor_out[31:0], logic_func[1:0]);
	xorgate ovfl(ovf_flag, out_carry[31], out_carry[30]);
	assign slt[0] = out_addr[31];
	assign slt[1] = out_addr[31];
	assign slt[2] = out_addr[31];
	assign slt[3] = out_addr[31];
	assign slt[4] = out_addr[31];
	assign slt[5] = out_addr[31];
	assign slt[6] = out_addr[31];
	assign slt[7] = out_addr[31];
	assign slt[8] = out_addr[31];
	assign slt[9] = out_addr[31];
	assign slt[10] = out_addr[31];
	assign slt[11] = out_addr[31];
	assign slt[12] = out_addr[31];
	assign slt[13] = out_addr[31];
	assign slt[14] = out_addr[31];
	assign slt[15] = out_addr[31];
	assign slt[16] = out_addr[31];
	assign slt[17] = out_addr[31];
	assign slt[18] = out_addr[31];
	assign slt[19] = out_addr[31];
	assign slt[20] = out_addr[31];
	assign slt[21] = out_addr[31];
	assign slt[22] = out_addr[31];
	assign slt[23] = out_addr[31];
	assign slt[24] = out_addr[31];
	assign slt[25] = out_addr[31];
	assign slt[26] = out_addr[31];
	assign slt[27] = out_addr[31];
	assign slt[28] = out_addr[31];
	assign slt[29] = out_addr[31];
	assign slt[30] = out_addr[31];
	assign slt[31] = out_addr[31];
	mux4x1 final_out(out[31:0], shifter_final_output[31:0], slt[31:0], out_addr[31:0], logical_final_output[31:0], final_func[1:0]);
	zero_detector zeroOUT(zero_flag, out[31:0]);
endmodule	// end of module ALU

	
