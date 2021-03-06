// Verilog code for register file
module register_file(ostream[31:0], istream[31:0], addr[4:0], write_mode, read_mode, chip_select);
	// inputs, outputs and internal variables declaration
	input [31:0] istream;
	input write_mode, read_mode, chip_select;
	input [4:0] addr;
	output [31:0] ostream;
	wire [31:0] select_reg;
	wire [31:0] reg_out0, reg_out1, reg_out2, reg_out3, reg_out4, reg_out5, reg_out6, reg_out7, reg_out8, 
					reg_out9, reg_out10, reg_out11, reg_out12, reg_out13, reg_out14, reg_out15, reg_out16, 
					reg_out17, reg_out18, reg_out19, reg_out20, reg_out21, reg_out22, reg_out23, reg_out24, 
					reg_out25, reg_out26, reg_out27, reg_out28, reg_out29, reg_out30, reg_out31;
	wire [31:0] ff_out0, ff_out1, ff_out2, ff_out3, ff_out4, ff_out5, ff_out6, ff_out7, ff_out8, 
					ff_out9, ff_out10, ff_out11, ff_out12, ff_out13, ff_out14, ff_out15, ff_out16, 
					ff_out17, ff_out18, ff_out19, ff_out20, ff_out21, ff_out22, ff_out23, ff_out24, 
					ff_out25, ff_out26, ff_out27, ff_out28, ff_out29, ff_out30, ff_out31;
	wire [31:0] bufout;
	wire write_op, read_op;
	// code start
	read_write_decision r_w_op(write_op, read_op, read_mode, chip_select, write_mode);
	decoder_regfile dec(select_reg[31:0], addr[4:0]);
	register_storage reg0(reg_out0[31:0],istream[31:0], select_reg[0] & write_op);
	tristate databuf0(ff_out0, select_reg[0], reg_out0);
	register_storage reg1(reg_out1[31:0],istream[31:0], select_reg[1] & write_op);
	tristate databuf1(ff_out1, select_reg[1], reg_out1);
	register_storage reg2(reg_out2[31:0],istream[31:0], select_reg[2] & write_op);
	tristate databuf2(ff_out2, select_reg[2], reg_out2);
	register_storage reg3(reg_out3[31:0],istream[31:0], select_reg[3] & write_op);
	tristate databuf3(ff_out3, select_reg[3], reg_out3);
	register_storage reg4(reg_out4[31:0],istream[31:0], select_reg[4] & write_op);
	tristate databuf4(ff_out4, select_reg[4], reg_out4);
	register_storage reg5(reg_out5[31:0],istream[31:0], select_reg[5] & write_op);
	tristate databuf5(ff_out5, select_reg[5], reg_out5);
	register_storage reg6(reg_out6[31:0],istream[31:0], select_reg[6] & write_op);
	tristate databuf6(ff_out6, select_reg[6], reg_out6);
	register_storage reg7(reg_out7[31:0],istream[31:0], select_reg[7] & write_op);
	tristate databuf7(ff_out7, select_reg[7], reg_out7);
	register_storage reg8(reg_out8[31:0],istream[31:0], select_reg[8] & write_op);
	tristate databuf8(ff_out8, select_reg[8], reg_out8);
	register_storage reg9(reg_out9[31:0],istream[31:0], select_reg[9] & write_op);
	tristate databuf9(ff_out9, select_reg[9], reg_out9);
	register_storage reg10(reg_out10[31:0],istream[31:0], select_reg[10] & write_op);
	tristate databuf10(ff_out10, select_reg[10], reg_out10);
	register_storage reg11(reg_out11[31:0],istream[31:0], select_reg[11] & write_op);
	tristate databuf11(ff_out11, select_reg[11], reg_out11);
	register_storage reg12(reg_out12[31:0],istream[31:0], select_reg[12] & write_op);
	tristate databuf12(ff_out12, select_reg[12], reg_out12);
	register_storage reg13(reg_out13[31:0],istream[31:0], select_reg[13] & write_op);
	tristate databuf13(ff_out13, select_reg[13], reg_out13);
	register_storage reg14(reg_out14[31:0],istream[31:0], select_reg[14] & write_op);
	tristate databuf14(ff_out14, select_reg[14], reg_out14);
	register_storage reg15(reg_out15[31:0],istream[31:0], select_reg[15] & write_op);
	tristate databuf15(ff_out15, select_reg[15], reg_out15);
	register_storage reg16(reg_out16[31:0],istream[31:0], select_reg[16] & write_op);
	tristate databuf16(ff_out16, select_reg[16], reg_out16);
	register_storage reg17(reg_out17[31:0],istream[31:0], select_reg[17] & write_op);
	tristate databuf17(ff_out17, select_reg[17], reg_out17);
	register_storage reg18(reg_out18[31:0],istream[31:0], select_reg[18] & write_op);
	tristate databuf18(ff_out18, select_reg[18], reg_out18);
	register_storage reg19(reg_out19[31:0],istream[31:0], select_reg[19] & write_op);
	tristate databuf19(ff_out19, select_reg[19], reg_out19);
	register_storage reg20(reg_out20[31:0],istream[31:0], select_reg[20] & write_op);
	tristate databuf20(ff_out20, select_reg[20], reg_out20);
	register_storage reg21(reg_out21[31:0],istream[31:0], select_reg[21] & write_op);
	tristate databuf21(ff_out21, select_reg[21], reg_out21);
	register_storage reg22(reg_out22[31:0],istream[31:0], select_reg[22] & write_op);
	tristate databuf22(ff_out22, select_reg[22], reg_out22);
	register_storage reg23(reg_out23[31:0],istream[31:0], select_reg[23] & write_op);
	tristate databuf23(ff_out23, select_reg[23], reg_out23);
	register_storage reg24(reg_out24[31:0],istream[31:0], select_reg[24] & write_op);
	tristate databuf24(ff_out24, select_reg[24], reg_out24);
	register_storage reg25(reg_out25[31:0],istream[31:0], select_reg[25] & write_op);
	tristate databuf25(ff_out25, select_reg[25], reg_out25);
	register_storage reg26(reg_out26[31:0],istream[31:0], select_reg[26] & write_op);
	tristate databuf26(ff_out26, select_reg[26], reg_out26);
	register_storage reg27(reg_out27[31:0],istream[31:0], select_reg[27] & write_op);
	tristate databuf27(ff_out27, select_reg[27], reg_out27);
	register_storage reg28(reg_out28[31:0],istream[31:0], select_reg[28] & write_op);
	tristate databuf28(ff_out28, select_reg[28], reg_out28);
	register_storage reg29(reg_out29[31:0],istream[31:0], select_reg[29] & write_op);
	tristate databuf29(ff_out29, select_reg[29], reg_out29);
	register_storage reg30(reg_out30[31:0],istream[31:0], select_reg[30] & write_op);
	tristate databuf30(ff_out30, select_reg[30], reg_out30);
	register_storage reg31(reg_out31[31:0],istream[31:0], select_reg[31] & write_op);
	tristate databuf31(ff_out31, select_reg[31], reg_out31);
	wor [31:0] data_bus;
	assign data_bus = ff_out0[31:0];
	assign data_bus = ff_out1[31:0];
	assign data_bus = ff_out2[31:0];
	assign data_bus = ff_out3[31:0];
	assign data_bus = ff_out4[31:0];
	assign data_bus = ff_out5[31:0];
	assign data_bus = ff_out6[31:0];
	assign data_bus = ff_out7[31:0];
	assign data_bus = ff_out8[31:0];
	assign data_bus = ff_out9[31:0];
	assign data_bus = ff_out10[31:0];
	assign data_bus = ff_out11[31:0];
	assign data_bus = ff_out12[31:0];
	assign data_bus = ff_out13[31:0];
	assign data_bus = ff_out14[31:0];
	assign data_bus = ff_out15[31:0];
	assign data_bus = ff_out16[31:0];
	assign data_bus = ff_out17[31:0];
	assign data_bus = ff_out18[31:0];
	assign data_bus = ff_out19[31:0];
	assign data_bus = ff_out20[31:0];
	assign data_bus = ff_out21[31:0];
	assign data_bus = ff_out22[31:0];
	assign data_bus = ff_out23[31:0];
	assign data_bus = ff_out24[31:0];
	assign data_bus = ff_out25[31:0];
	assign data_bus = ff_out26[31:0];
	assign data_bus = ff_out27[31:0];
	assign data_bus = ff_out28[31:0];
	assign data_bus = ff_out29[31:0];
	assign data_bus = ff_out30[31:0];
	assign data_bus = ff_out31[31:0];
	tristate outbuf(bufout, read_op, data_bus);
	assign ostream = bufout;
endmodule	// end of module register file
