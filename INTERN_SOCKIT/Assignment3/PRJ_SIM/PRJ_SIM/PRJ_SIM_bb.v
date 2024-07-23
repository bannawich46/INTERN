
module PRJ_SIM (
	Avalon_Simple_Master_0_avm_m0_address,
	Avalon_Simple_Master_0_avm_m0_read,
	Avalon_Simple_Master_0_avm_m0_waitrequest,
	Avalon_Simple_Master_0_avm_m0_readdata,
	Avalon_Simple_Master_0_avm_m0_write,
	Avalon_Simple_Master_0_avm_m0_writedata,
	Avalon_Simple_Master_0_reset_reset,
	avalon_export_0_avs_s0_address,
	avalon_export_0_avs_s0_read,
	avalon_export_0_avs_s0_readdata,
	avalon_export_0_avs_s0_write,
	avalon_export_0_avs_s0_writedata,
	avalon_export_0_avs_s0_waitrequest,
	avalon_export_0_reset_reset,
	clk_clk,
	reset_reset_n);	

	input	[7:0]	Avalon_Simple_Master_0_avm_m0_address;
	input		Avalon_Simple_Master_0_avm_m0_read;
	output		Avalon_Simple_Master_0_avm_m0_waitrequest;
	output	[31:0]	Avalon_Simple_Master_0_avm_m0_readdata;
	input		Avalon_Simple_Master_0_avm_m0_write;
	input	[31:0]	Avalon_Simple_Master_0_avm_m0_writedata;
	output		Avalon_Simple_Master_0_reset_reset;
	output	[1:0]	avalon_export_0_avs_s0_address;
	output		avalon_export_0_avs_s0_read;
	input	[31:0]	avalon_export_0_avs_s0_readdata;
	output		avalon_export_0_avs_s0_write;
	output	[31:0]	avalon_export_0_avs_s0_writedata;
	input		avalon_export_0_avs_s0_waitrequest;
	output		avalon_export_0_reset_reset;
	input		clk_clk;
	input		reset_reset_n;
endmodule
