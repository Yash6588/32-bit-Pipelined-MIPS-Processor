// Verilog code for decoder
module dec6x64(out[63:0], in[5:0]);
	// inputs , outputs and internal variables declaration
	input [5:0] in;
	output [63:0] out;
	wire [7:0] select;
	// code start
	dec3x8 dec_main(select[7:0], in[5:3], 1'b1);
	dec3x8 dec0(out[7:0], in[2:0], select[0]);
	dec3x8 dec1(out[15:8], in[2:0], select[1]);
	dec3x8 dec2(out[23:16], in[2:0], select[2]);
	dec3x8 dec3(out[31:24], in[2:0], select[3]);
	dec3x8 dec4(out[39:32], in[2:0], select[4]);
	dec3x8 dec5(out[47:40], in[2:0], select[5]);
	dec3x8 dec6(out[55:48], in[2:0], select[6]);
	dec3x8 dec7(out[63:56], in[2:0], select[7]);
endmodule	// end of module decoder
	
