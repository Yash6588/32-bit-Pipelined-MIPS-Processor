module dec3x8(out[7:0], sel[2:0], enable);
	input [2:0] sel;
	input enable;
	output [7:0] out;
	assign out[0] = ~sel[2] & ~sel[1] & ~sel[0] & enable;
	assign out[1] = ~sel[2] & ~sel[1] & sel[0] & enable;
	assign out[2] = ~sel[2] & sel[1] & ~sel[0] & enable;
	assign out[3] = ~sel[2] & sel[1] & sel[0] & enable;
	assign out[4] = sel[2] & ~sel[1] & ~sel[0] & enable;
	assign out[5] = sel[2] & ~sel[1] & sel[0] & enable;
	assign out[6] = sel[2] & sel[1] & ~sel[0] & enable;
	assign out[7] = sel[2] & sel[1] & sel[0] & enable;
endmodule