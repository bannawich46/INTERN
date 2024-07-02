	component Assignment5 is
		port (
			clk_clk                     : in  std_logic                    := 'X'; -- clk
			reset_reset_n               : in  std_logic                    := 'X'; -- reset_n
			pwm_0_conduit_end_writedata : out std_logic_vector(7 downto 0)         -- writedata
		);
	end component Assignment5;

	u0 : component Assignment5
		port map (
			clk_clk                     => CONNECTED_TO_clk_clk,                     --               clk.clk
			reset_reset_n               => CONNECTED_TO_reset_reset_n,               --             reset.reset_n
			pwm_0_conduit_end_writedata => CONNECTED_TO_pwm_0_conduit_end_writedata  -- pwm_0_conduit_end.writedata
		);

