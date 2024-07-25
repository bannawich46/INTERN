
module PRJ_SIM (
	Avalon_Simple_Master_0_avm_m0_address,
	Avalon_Simple_Master_0_avm_m0_read,
	Avalon_Simple_Master_0_avm_m0_waitrequest,
	Avalon_Simple_Master_0_avm_m0_readdata,
	Avalon_Simple_Master_0_avm_m0_write,
	Avalon_Simple_Master_0_avm_m0_writedata,
	Avalon_Simple_Master_0_reset_reset,
	clk_clk,
	ocram_master_0_conduit_end_export,
	reset_reset_n);	

	input	[9:0]	Avalon_Simple_Master_0_avm_m0_address;
	input		Avalon_Simple_Master_0_avm_m0_read;
	output		Avalon_Simple_Master_0_avm_m0_waitrequest;
	output	[31:0]	Avalon_Simple_Master_0_avm_m0_readdata;
	input		Avalon_Simple_Master_0_avm_m0_write;
	input	[31:0]	Avalon_Simple_Master_0_avm_m0_writedata;
	output		Avalon_Simple_Master_0_reset_reset;
	input		clk_clk;
	output	[7:0]	ocram_master_0_conduit_end_export;
	input		reset_reset_n;
endmodule
