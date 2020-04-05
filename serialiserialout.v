// Verilog code for Serial in serial out
module serialiserialout(q,d,clk);
	// inputs, output and internal variables declaration
	input d,clk;
	wire a,b;
	output reg q;
	// code start
	D_FlipFlop d1(a, d, clk);
	D_FlipFlop d2(b, a, clk);
	D_FlipFlop d3(q, b, clk);
endmodule// end of module serial in serial out
