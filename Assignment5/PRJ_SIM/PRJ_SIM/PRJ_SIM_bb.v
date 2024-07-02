
module PRJ_SIM (
	AvalonSimpleMaster_0_avm_m0_address,
	AvalonSimpleMaster_0_avm_m0_read,
	AvalonSimpleMaster_0_avm_m0_waitrequest,
	AvalonSimpleMaster_0_avm_m0_readdata,
	AvalonSimpleMaster_0_avm_m0_write,
	AvalonSimpleMaster_0_avm_m0_writedata,
	AvalonSimpleMaster_0_reset_reset,
	clk_clk,
	reset_reset_n,
	pwm_0_conduit_end_writedata);	

	input	[7:0]	AvalonSimpleMaster_0_avm_m0_address;
	input		AvalonSimpleMaster_0_avm_m0_read;
	output		AvalonSimpleMaster_0_avm_m0_waitrequest;
	output	[31:0]	AvalonSimpleMaster_0_avm_m0_readdata;
	input		AvalonSimpleMaster_0_avm_m0_write;
	input	[31:0]	AvalonSimpleMaster_0_avm_m0_writedata;
	output		AvalonSimpleMaster_0_reset_reset;
	input		clk_clk;
	input		reset_reset_n;
	output	[7:0]	pwm_0_conduit_end_writedata;
endmodule
