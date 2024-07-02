transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib Assignment5
vmap Assignment5 Assignment5
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_mm_interconnect_0.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_onchip_memory2_0.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_nios2_gen2_0.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_nios2_gen2_0_cpu.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_nios2_gen2_0_cpu_debug_slave_sysclk.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_nios2_gen2_0_cpu_debug_slave_tck.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_nios2_gen2_0_cpu_debug_slave_wrapper.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_nios2_gen2_0_cpu_test_bench.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_master_0.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_avalon_packets_to_master.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_avalon_st_packets_to_bytes.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_avalon_st_bytes_to_packets.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_avalon_st_jtag_interface.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_jtag_dc_streaming.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_jtag_sld_node.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_jtag_streaming.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_avalon_st_clock_crosser.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_std_synchronizer_nocut.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_avalon_st_idle_remover.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_avalon_st_idle_inserter.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_jtag_uart_0.v}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_irq_mapper.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_mm_interconnect_0_rsp_mux_002.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_mm_interconnect_0_rsp_demux_002.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_mm_interconnect_0_cmd_mux_002.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_mm_interconnect_0_cmd_demux_002.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_mm_interconnect_0_cmd_demux_001.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_merlin_traffic_limiter.sv}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -vlog01compat -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_avalon_st_pipeline_base.v}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_mm_interconnect_0_router_005.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_mm_interconnect_0_router_003.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_mm_interconnect_0_router_002.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_mm_interconnect_0_router.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/altera_merlin_master_translator.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_master_0_p2b_adapter.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_master_0_b2p_adapter.sv}
vlog -sv -work Assignment5 +incdir+D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/Assignment5_master_0_timing_adt.sv}
vcom -93 -work Assignment5 {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/Assignment5.vhd}
vcom -93 -work Assignment5 {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/assignment5_rst_controller.vhd}
vcom -93 -work Assignment5 {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/assignment5_rst_controller_001.vhd}
vcom -93 -work Assignment5 {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/FRQ_PKG.vhd}
vcom -93 -work Assignment5 {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/PWM.vhd}
vcom -93 -work work {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/PRJ_TOP.vhd}
vcom -93 -work Assignment5 {D:/Git/INTERN_MAX10_DECA/Assignment5/RTL/Assignment5/synthesis/submodules/CLK_DIVIDER.vhd}

