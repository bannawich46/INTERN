	component PRJ_SIM is
		port (
			Avalon_Simple_Master_0_avm_m0_address     : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- address
			Avalon_Simple_Master_0_avm_m0_read        : in  std_logic                     := 'X';             -- read
			Avalon_Simple_Master_0_avm_m0_waitrequest : out std_logic;                                        -- waitrequest
			Avalon_Simple_Master_0_avm_m0_readdata    : out std_logic_vector(31 downto 0);                    -- readdata
			Avalon_Simple_Master_0_avm_m0_write       : in  std_logic                     := 'X';             -- write
			Avalon_Simple_Master_0_avm_m0_writedata   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			Avalon_Simple_Master_0_reset_reset        : out std_logic;                                        -- reset
			clk_clk                                   : in  std_logic                     := 'X';             -- clk
			ocram_master_0_conduit_end_export         : out std_logic_vector(7 downto 0);                     -- export
			reset_reset_n                             : in  std_logic                     := 'X'              -- reset_n
		);
	end component PRJ_SIM;

	u0 : component PRJ_SIM
		port map (
			Avalon_Simple_Master_0_avm_m0_address     => CONNECTED_TO_Avalon_Simple_Master_0_avm_m0_address,     -- Avalon_Simple_Master_0_avm_m0.address
			Avalon_Simple_Master_0_avm_m0_read        => CONNECTED_TO_Avalon_Simple_Master_0_avm_m0_read,        --                              .read
			Avalon_Simple_Master_0_avm_m0_waitrequest => CONNECTED_TO_Avalon_Simple_Master_0_avm_m0_waitrequest, --                              .waitrequest
			Avalon_Simple_Master_0_avm_m0_readdata    => CONNECTED_TO_Avalon_Simple_Master_0_avm_m0_readdata,    --                              .readdata
			Avalon_Simple_Master_0_avm_m0_write       => CONNECTED_TO_Avalon_Simple_Master_0_avm_m0_write,       --                              .write
			Avalon_Simple_Master_0_avm_m0_writedata   => CONNECTED_TO_Avalon_Simple_Master_0_avm_m0_writedata,   --                              .writedata
			Avalon_Simple_Master_0_reset_reset        => CONNECTED_TO_Avalon_Simple_Master_0_reset_reset,        --  Avalon_Simple_Master_0_reset.reset
			clk_clk                                   => CONNECTED_TO_clk_clk,                                   --                           clk.clk
			ocram_master_0_conduit_end_export         => CONNECTED_TO_ocram_master_0_conduit_end_export,         --    ocram_master_0_conduit_end.export
			reset_reset_n                             => CONNECTED_TO_reset_reset_n                              --                         reset.reset_n
		);

