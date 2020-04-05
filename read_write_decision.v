module read_write_decision(write_mode, read_mode, out_enable, chip_select, wire_enable);
	output write_mode, read_mode;
	input out_enable, chip_select, wire_enable;
	assign read_mode = out_enable & chip_select;
	assign write_mode = wire_enable & chip_select;
endmodule