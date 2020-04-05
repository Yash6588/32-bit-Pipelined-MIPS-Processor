module pipeline_processor(out[31:0], zero_flag, ovf_flag, rd[4:0], rs[4:0], rt[4:0], write_mode, read_mode, chip_select,
									const_amt[4:0],amt_sel[1:0],logic_func[1:0],shift_func[1:0],add_sub,final_func[1:0]);
	input [4:0] rd, rs, rt;
	input [4:0] const_amt;
	input [1:0] amt_sel, logic_func, shift_func, final_func;
	input add_sub, write_mode, read_mode, chip_select;
	output [31:0] out;
	wire [4:0] rd0out, rd1out, rd2out, rd3out, rd4out;
	wire [4:0] rs0out;
	wire [4:0] rt0out;
	//reg [31:0] reg_rs_out, reg_rt_out;
	wire [31:0] reg_rs_out, reg_rt_out, temp_reg_rs, temp_reg_rt;
	//reg [31:0] alu_i_out, alu_i1_out;
	wire [31:0] alu_i_out, alu_i1_out;
	wire [31:0] istream = 32'bz;
	wire [31:0] mux_out1, mux_out2, mux_out3, mux_out4;
	wire select_mux1, select_mux2, select_mux3, select_mux4;
	output zero_flag, ovf_flag;
	delay rd0(rd0out[4:0], rd[4:0]);
	delay rd1(rd1out[4:0], rd0out[4:0]);
	delay rd2(rd2out[4:0], rd1out[4:0]);
	delay rd3(rd3out[4:0], rd2out[4:0]);
	delay rd4(rd4out[4:0], rd3out[4:0]);
	delay rs0(rs0out[4:0], rs[4:0]);
	delay rt0(rt0out[4:0], rt[4:0]);
	register_file regrs(reg_rs_out[31:0], istream[31:0], rs[4:0], write_mode, read_mode, chip_select);
	register_storage rs_temp(temp_reg_rs[31:0], reg_rs_out[31:0], 1'b1);
	register_file regrt(reg_rt_out[31:0], istream[31:0], rt[4:0], write_mode, read_mode, chip_select);
	register_storage rt_temp(temp_reg_rt[31:0], reg_rt_out[31:0], 1'b1);
	comparator c1(select_mux1, rd1out[4:0], rs0out[4:0]);
	comparator c2(select_mux2, rd1out[4:0], rt0out[4:0]);
	comparator c3(select_mux3, rd2out[4:0], rs0out[4:0]);
	comparator c4(select_mux4, rd2out[4:0], rt0out[4:0]);
	mux32b2x1 mux4(mux_out4[31:0], reg_rt_out[31:0], out[31:0], select_mux4);
	mux32b2x1 mux3(mux_out3[31:0], reg_rs_out[31:0], out[31:0], select_mux3);
	mux32b2x1 mux1(mux_out1[31:0], mux_out3[31:0], alu_i1_out[31:0], select_mux1);
	mux32b2x1 mux2(mux_out2[31:0], mux_out4[31:0], alu_i1_out[31:0], select_mux2);
	ALU alumod(alu_i_out[31:0], zero_flag, ovf_flag, mux_out1[31:0], mux_out2[31:0], const_amt[4:0], amt_sel[1:0], logic_func[1:0], 
					shift_func[1:0], add_sub, final_func[1:0]);
	register_storage alu_i_temp(alu_i1_out[31:0], alu_i_out[31:0], 1'b1);
	register_storage alu_i1_temp(out[31:0], alu_i1_out[31:0], 1'b1);
	/*initial begin
		alu_i_out = alu_i1_out;
	end*/
	//assign out = alu_i1_out;
endmodule
