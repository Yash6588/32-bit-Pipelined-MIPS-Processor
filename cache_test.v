module cache_test(out[31:0], address[31:0], write_signal, read_signal);
	input [31:0] address;
	input write_signal, read_signal;
	output [31:0] out;
	wire [15:0] tag;
	wire [11:0] line_index;
	wire [3:0] byte_offset;
endmodule