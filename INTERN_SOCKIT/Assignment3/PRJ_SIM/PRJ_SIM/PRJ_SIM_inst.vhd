	component PRJ_SIM is
		port (
			Avalon_Simple_Master_0_avm_m0_address     : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- address
			Avalon_Simple_Master_0_avm_m0_read        : in  std_logic                     := 'X';             -- read
			Avalon_Simple_Master_0_avm_m0_waitrequest : out std_logic;                                        -- waitrequest
			Avalon_Simple_Master_0_avm_m0_readdata    : out std_logic_vector(31 downto 0);                    -- readdata
			Avalon_Simple_Master_0_avm_m0_write       : in  std_logic                     := 'X';             -- write
			Avalon_Simple_Master_0_avm_m0_writedata   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			Avalon_Simple_Master_0_reset_reset        : out std_logic;                                        -- reset
			avalon_export_0_avs_s0_address            : out std_logic_vector(1 downto 0);                     -- address
			avalon_export_0_avs_s0_read               : out std_logic;                                        -- read
			avalon_export_0_avs_s0_readdata           : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			avalon_export_0_avs_s0_write              : out std_logic;                                        -- write
			avalon_export_0_avs_s0_writedata          : out std_logic_vector(31 downto 0);                    -- writedata
			avalon_export_0_avs_s0_waitrequest        : in  std_logic                     := 'X';             -- waitrequest
			avalon_export_0_reset_reset               : out std_logic;                                        -- reset
			clk_clk                                   : in  std_logic                     := 'X';             -- clk
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
			avalon_export_0_avs_s0_address            => CONNECTED_TO_avalon_export_0_avs_s0_address,            --        avalon_export_0_avs_s0.address
			avalon_export_0_avs_s0_read               => CONNECTED_TO_avalon_export_0_avs_s0_read,               --                              .read
			avalon_export_0_avs_s0_readdata           => CONNECTED_TO_avalon_export_0_avs_s0_readdata,           --                              .readdata
			avalon_export_0_avs_s0_write              => CONNECTED_TO_avalon_export_0_avs_s0_write,              --                              .write
			avalon_export_0_avs_s0_writedata          => CONNECTED_TO_avalon_export_0_avs_s0_writedata,          --                              .writedata
			avalon_export_0_avs_s0_waitrequest        => CONNECTED_TO_avalon_export_0_avs_s0_waitrequest,        --                              .waitrequest
			avalon_export_0_reset_reset               => CONNECTED_TO_avalon_export_0_reset_reset,               --         avalon_export_0_reset.reset
			clk_clk                                   => CONNECTED_TO_clk_clk,                                   --                           clk.clk
			reset_reset_n                             => CONNECTED_TO_reset_reset_n                              --                         reset.reset_n
		);

