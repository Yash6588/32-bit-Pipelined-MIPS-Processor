// Verilog code for zero detector
module zero_detector(out, in[31:0]);
	// input and output variables declaration
	input [31:0] in;
	output out;
	// code start
	assign out = ~(in[0]|in[1]|in[2]|in[3]|in[4]|in[5]|in[6]|in[7]|in[8]|in[9]|in[10]|in[11]|in[12]|in[13]|in[14]|in[15]|in[16]|in[17]|in[18]
						|in[19]|in[20]|in[21]|in[22]|in[23]|in[24]|in[25]|in[26]|in[27]|in[28]|in[29]|in[30]|in[31]);
endmodule  // end module of zero detector
