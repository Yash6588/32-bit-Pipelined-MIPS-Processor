module xorgate(OUT, IN1, IN2);
	input IN1, IN2;
	output OUT;
	assign OUT = (IN1 ^ IN2);
endmodule
