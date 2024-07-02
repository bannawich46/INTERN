	component PRJ_SIM is
		port (
			AvalonSimpleMaster_0_avm_m0_address     : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- address
			AvalonSimpleMaster_0_avm_m0_read        : in  std_logic                     := 'X';             -- read
			AvalonSimpleMaster_0_avm_m0_waitrequest : out std_logic;                                        -- waitrequest
			AvalonSimpleMaster_0_avm_m0_readdata    : out std_logic_vector(31 downto 0);                    -- readdata
			AvalonSimpleMaster_0_avm_m0_write       : in  std_logic                     := 'X';             -- write
			AvalonSimpleMaster_0_avm_m0_writedata   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			AvalonSimpleMaster_0_reset_reset        : out std_logic;                                        -- reset
			clk_clk                                 : in  std_logic                     := 'X';             -- clk
			reset_reset_n                           : in  std_logic                     := 'X';             -- reset_n
			pwm_0_conduit_end_writedata             : out std_logic_vector(7 downto 0)                      -- writedata
		);
	end component PRJ_SIM;

	u0 : component PRJ_SIM
		port map (
			AvalonSimpleMaster_0_avm_m0_address     => CONNECTED_TO_AvalonSimpleMaster_0_avm_m0_address,     -- AvalonSimpleMaster_0_avm_m0.address
			AvalonSimpleMaster_0_avm_m0_read        => CONNECTED_TO_AvalonSimpleMaster_0_avm_m0_read,        --                            .read
			AvalonSimpleMaster_0_avm_m0_waitrequest => CONNECTED_TO_AvalonSimpleMaster_0_avm_m0_waitrequest, --                            .waitrequest
			AvalonSimpleMaster_0_avm_m0_readdata    => CONNECTED_TO_AvalonSimpleMaster_0_avm_m0_readdata,    --                            .readdata
			AvalonSimpleMaster_0_avm_m0_write       => CONNECTED_TO_AvalonSimpleMaster_0_avm_m0_write,       --                            .write
			AvalonSimpleMaster_0_avm_m0_writedata   => CONNECTED_TO_AvalonSimpleMaster_0_avm_m0_writedata,   --                            .writedata
			AvalonSimpleMaster_0_reset_reset        => CONNECTED_TO_AvalonSimpleMaster_0_reset_reset,        --  AvalonSimpleMaster_0_reset.reset
			clk_clk                                 => CONNECTED_TO_clk_clk,                                 --                         clk.clk
			reset_reset_n                           => CONNECTED_TO_reset_reset_n,                           --                       reset.reset_n
			pwm_0_conduit_end_writedata             => CONNECTED_TO_pwm_0_conduit_end_writedata              --           pwm_0_conduit_end.writedata
		);

