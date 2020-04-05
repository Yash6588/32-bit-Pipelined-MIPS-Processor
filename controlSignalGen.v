// Verilog code for controlsignal
module controlSignalGen(write_mode, shift_func[1:0], ALU_func[1:0], logic_func[1:0], ALUSrc, add_sub, read_mode, 
								amt_sel, PCSrc, chip_select, opcode[5:0], fn[5:0]);
	// inputs, outputs and internal variables declaration
	input [5:0] opcode, fn;
	output write_mode, ALUSrc, add_sub, read_mode, amt_sel, PCSrc, chip_select;
	output [1:0] shift_func, ALU_func, logic_func;
	wire [63:0] op_dec_out;
	wire [63:0] fn_dec_out;
	// code start
	dec6x64 dec_op(op_dec_out[63:0], opcode[5:0]);
	dec6x64 dec_fn(fn_dec_out[63:0], fn[5:0]);
	
	wire arith = fn_dec_out[32] | fn_dec_out[34] | fn_dec_out[42] | op_dec_out[8] | op_dec_out[10];
	wire logic = fn_dec_out[36] | fn_dec_out[37] | fn_dec_out[38] | fn_dec_out[39] | op_dec_out[12] | op_dec_out[13] | op_dec_out[14];
	wire imm = op_dec_out[15] | op_dec_out[8] | op_dec_out[10] | op_dec_out[12] | op_dec_out[13] | op_dec_out[14];
	wire shift = (op_dec_out[0] & fn_dec_out[0]) | fn_dec_out[2] | fn_dec_out[3] | fn_dec_out[4] | fn_dec_out[6] | fn_dec_out[7];
	
	assign write_mode = op_dec_out[15] | arith | logic | op_dec_out[35] | op_dec_out[3];
	assign ALUSrc = imm | op_dec_out[35] | op_dec_out[43];
	assign add_sub = fn_dec_out[34] | fn_dec_out[42] | op_dec_out[10];
	assign read_mode = op_dec_out[35];
	assign chip_select = read_mode ^ write_mode;
	assign PCSrc = op_dec_out[2] | op_dec_out[3] | fn_dec_out[12];
	assign amt_sel = fn_dec_out[4] | fn_dec_out[6] | fn_dec_out[7];
	
	assign shift_func[0] = (op_dec_out[0] & fn_dec_out[0]) | fn_dec_out[3];
	assign shift_func[1] = fn_dec_out[2] | fn_dec_out[3];
	assign logic_func[0] = fn_dec_out[37] | fn_dec_out[39];
	assign logic_func[1] = fn_dec_out[38] | fn_dec_out[39];
	assign ALU_func[0] = (fn_dec_out[42] | op_dec_out[10]) | (logic);
	assign ALU_func[1] = arith | logic;
	
endmodule	// end of module controlsignal
	
