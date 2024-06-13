	component Assignment2 is
		port (
			clk_clk : in std_logic := 'X'  -- clk
		);
	end component Assignment2;

	u0 : component Assignment2
		port map (
			clk_clk => CONNECTED_TO_clk_clk  -- clk.clk
		);

