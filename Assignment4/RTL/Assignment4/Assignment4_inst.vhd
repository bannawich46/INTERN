	component Assignment4 is
		port (
			clk_clk                  : in    std_logic                    := 'X';             -- clk
			reset_reset_n            : in    std_logic                    := 'X';             -- reset_n
			pio_0_conduit_end_export : inout std_logic_vector(7 downto 0) := (others => 'X'); -- export
			pio_1_conduit_end_export : inout std_logic_vector(0 downto 0) := (others => 'X')  -- export
		);
	end component Assignment4;

	u0 : component Assignment4
		port map (
			clk_clk                  => CONNECTED_TO_clk_clk,                  --               clk.clk
			reset_reset_n            => CONNECTED_TO_reset_reset_n,            --             reset.reset_n
			pio_0_conduit_end_export => CONNECTED_TO_pio_0_conduit_end_export, -- pio_0_conduit_end.export
			pio_1_conduit_end_export => CONNECTED_TO_pio_1_conduit_end_export  -- pio_1_conduit_end.export
		);

