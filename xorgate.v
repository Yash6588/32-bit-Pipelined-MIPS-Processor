// Verilog code for XORgate 
module xorgate(OUT, IN1, IN2);
	// inputs and output variables declaration
	input IN1, IN2;
	output OUT;
	// code start
	assign OUT = (IN1 ^ IN2);
endmodule// module end
