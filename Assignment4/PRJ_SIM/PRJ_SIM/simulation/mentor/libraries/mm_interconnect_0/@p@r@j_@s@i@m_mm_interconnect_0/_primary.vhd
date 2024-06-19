library verilog;
use verilog.vl_types.all;
entity PRJ_SIM_mm_interconnect_0 is
    port(
        clk_0_clk_clk   : in     vl_logic;
        AvalonSimpleMaster_0_reset_reset_bridge_in_reset_reset: in     vl_logic;
        AvalonSimpleMaster_0_avm_m0_address: in     vl_logic_vector(7 downto 0);
        AvalonSimpleMaster_0_avm_m0_waitrequest: out    vl_logic;
        AvalonSimpleMaster_0_avm_m0_read: in     vl_logic;
        AvalonSimpleMaster_0_avm_m0_readdata: out    vl_logic_vector(31 downto 0);
        AvalonSimpleMaster_0_avm_m0_write: in     vl_logic;
        AvalonSimpleMaster_0_avm_m0_writedata: in     vl_logic_vector(31 downto 0);
        pio_0_s1_address: out    vl_logic_vector(1 downto 0);
        pio_0_s1_write  : out    vl_logic;
        pio_0_s1_readdata: in     vl_logic_vector(31 downto 0);
        pio_0_s1_writedata: out    vl_logic_vector(31 downto 0);
        pio_0_s1_chipselect: out    vl_logic
    );
end PRJ_SIM_mm_interconnect_0;
