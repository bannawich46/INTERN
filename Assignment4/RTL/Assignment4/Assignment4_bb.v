
module Assignment4 (
	clk_clk,
	reset_reset_n,
	pio_1_conduit_end_export,
	pio_0_conduit_end_export);	

	input		clk_clk;
	input		reset_reset_n;
	inout	[0:0]	pio_1_conduit_end_export;
	inout	[7:0]	pio_0_conduit_end_export;
endmodule
