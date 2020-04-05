module decoder_regfile(out[31:0], address[4:0]);
	input [4:0] address;
	//integer addrdecimal;
	reg [31:0] temp = 32'b00000000000000000000000000000001;
	output [31:0] out;
	/*always @( address )
		addrdecimal = address;
	end*/
	assign out = temp << address;
endmodule
				