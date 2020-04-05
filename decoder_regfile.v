// Verilog code for decoder 
module decoder_regfile(out[31:0], address[4:0]);
	// inputs, outputs and internal variables declaration
 	input [4:0] address;
	reg [31:0] temp = 32'b00000000000000000000000000000001;
	output [31:0] out;
	assign out = temp << address;
endmodule
				
