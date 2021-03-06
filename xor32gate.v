// Verilog code for 32 bit XORgate
module xor32gate(OUT[31:0], IN1[31:0], IN2);
	// inputs, outputs and internal variables declaration
	input [31:0] IN1;
	input IN2;
	wire [31:0] ext;
	output [31:0] OUT;
	// code start
	assign ext[0] = IN2;
	assign ext[1] = IN2;
	assign ext[2] = IN2;
	assign ext[3] = IN2;
	assign ext[4] = IN2;
	assign ext[5] = IN2;
	assign ext[6] = IN2;
	assign ext[7] = IN2;
	assign ext[8] = IN2;
	assign ext[9] = IN2;
	assign ext[10] = IN2;
	assign ext[11] = IN2;
	assign ext[12] = IN2;
	assign ext[13] = IN2;
	assign ext[14] = IN2;
	assign ext[15] = IN2;
	assign ext[16] = IN2;
	assign ext[17] = IN2;
	assign ext[18] = IN2;
	assign ext[19] = IN2;
	assign ext[20] = IN2;
	assign ext[21] = IN2;
	assign ext[22] = IN2;
	assign ext[23] = IN2;
	assign ext[24] = IN2;
	assign ext[25] = IN2;
	assign ext[26] = IN2;
	assign ext[27] = IN2;
	assign ext[28] = IN2;
	assign ext[29] = IN2;
	assign ext[30] = IN2;
	assign ext[31] = IN2;
	assign OUT = IN1 ^ ext;
endmodule	//end of module xorgate
