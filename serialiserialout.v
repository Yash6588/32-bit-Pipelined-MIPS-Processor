module serialiserialout(q,d,clk);
output reg q;
input d,clk;
wire a,b;
	D_FlipFlop d1(a, d, clk);
	D_FlipFlop d2(b, a, clk);
	D_FlipFlop d3(q, b, clk);
endmodule
