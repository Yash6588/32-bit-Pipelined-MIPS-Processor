// Verilog code
module dec9x512(out[511:0], in[8:0]);
	// inputs, outputs and internal variable declaration
	input [8:0] in;
	output [511:0] out;
	wire [7:0] select;
	wire [511:0] preout;
	// code start
	dec3x8 dec_main(select[7:0], in[8:6]);
	dec6x64 dec0(preout[63:0], in[5:0]);
	assign out[63:0] = select[0] ? preout[63:0] : preout[63:0] & 1'b0;
	dec6x64 dec1(preout[127:64], in[5:0]);
	assign out[127:64] = select[1] ? preout[127:64] : preout[127:64] & 1'b0;
	dec6x64 dec2(preout[191:128], in[5:0]);
	assign out[191:128] = select[2] ? preout[191:128] : preout[191:128] & 1'b0;
	dec6x64 dec3(preout[255:192], in[5:0]);
	assign out[255:192] = select[3] ? preout[255:192] : preout[255:192] & 1'b0;
	dec6x64 dec4(preout[319:256], in[5:0]);
	assign out[319:256] = select[4] ? preout[319:256] : preout[319:256] & 1'b0;
	dec6x64 dec5(preout[383:320], in[5:0]);
	assign out[383:320] = select[5] ? preout[383:320] : preout[383:320] & 1'b0;
	dec6x64 dec6(preout[447:384], in[5:0]);
	assign out[447:384] = select[6] ? preout[447:384] : preout[447:384] & 1'b0;
	dec6x64 dec7(preout[511:448], in[5:0]);
	assign out[511:448] = select[7] ? preout[511:448] : preout[511:448] & 1'b0;
endmodule	// end of module
