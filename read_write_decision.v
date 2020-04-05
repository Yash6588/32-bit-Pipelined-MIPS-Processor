// Verilog code for decision of read-write operation
module read_write_decision(write_mode, read_mode, out_enable, chip_select, wire_enable);
	// inputs and outputs ports declaration
	input out_enable, chip_select, wire_enable;
	output write_mode, read_mode;
	// code start
	assign read_mode = out_enable & chip_select;
	assign write_mode = wire_enable & chip_select;
endmodule // end module of read write decision
