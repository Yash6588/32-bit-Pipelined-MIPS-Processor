module D_FlipFlop(q,q1,d,c);
output reg q,q1;
 input d,c;
  
	initial 
	   begin
		   q=1'b0; q1=1'b0;
	  end
	always @ (posedge c)
	   begin 
		 q=d;
		 q1= ~d;
	   end
endmodule
