// Verilog code for D Flip Flop
module D_FlipFlop(q,q1,d,c);
	//inputs and outputs variables declaration
	output reg q,q1;
	input d,c;
	initial 
	begin
		   q=1'b0; q1=1'b0;
	end
	//Always block with inputs in the sensitivity list.
	always @ (posedge c)
	begin 
		 q=d;
		 q1= ~d;
	end
endmodule
