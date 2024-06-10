-- Assignment2.vhd

-- Generated using ACDS version 17.1 590

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Assignment2 is
	port (
		clk_clk : in std_logic := '0'  -- clk.clk
	);
end entity Assignment2;

architecture rtl of Assignment2 is
	component Assignment2_JTAG is
		port (
			clk            : in  std_logic                     := 'X';             -- clk
			rst_n          : in  std_logic                     := 'X';             -- reset_n
			av_chipselect  : in  std_logic                     := 'X';             -- chipselect
			av_address     : in  std_logic                     := 'X';             -- address
			av_read_n      : in  std_logic                     := 'X';             -- read_n
			av_readdata    : out std_logic_vector(31 downto 0);                    -- readdata
			av_write_n     : in  std_logic                     := 'X';             -- write_n
			av_writedata   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			av_waitrequest : out std_logic;                                        -- waitrequest
			av_irq         : out std_logic                                         -- irq
		);
	end component Assignment2_JTAG;

	component Assignment2_NIOS is
		port (
			clk                                 : in  std_logic                     := 'X';             -- clk
			reset_n                             : in  std_logic                     := 'X';             -- reset_n
			reset_req                           : in  std_logic                     := 'X';             -- reset_req
			d_address                           : out std_logic_vector(13 downto 0);                    -- address
			d_byteenable                        : out std_logic_vector(3 downto 0);                     -- byteenable
			d_read                              : out std_logic;                                        -- read
			d_readdata                          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			d_waitrequest                       : in  std_logic                     := 'X';             -- waitrequest
			d_write                             : out std_logic;                                        -- write
			d_writedata                         : out std_logic_vector(31 downto 0);                    -- writedata
			debug_mem_slave_debugaccess_to_roms : out std_logic;                                        -- debugaccess
			i_address                           : out std_logic_vector(13 downto 0);                    -- address
			i_read                              : out std_logic;                                        -- read
			i_readdata                          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			i_waitrequest                       : in  std_logic                     := 'X';             -- waitrequest
			irq                                 : in  std_logic_vector(31 downto 0) := (others => 'X'); -- irq
			debug_reset_request                 : out std_logic;                                        -- reset
			debug_mem_slave_address             : in  std_logic_vector(8 downto 0)  := (others => 'X'); -- address
			debug_mem_slave_byteenable          : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			debug_mem_slave_debugaccess         : in  std_logic                     := 'X';             -- debugaccess
			debug_mem_slave_read                : in  std_logic                     := 'X';             -- read
			debug_mem_slave_readdata            : out std_logic_vector(31 downto 0);                    -- readdata
			debug_mem_slave_waitrequest         : out std_logic;                                        -- waitrequest
			debug_mem_slave_write               : in  std_logic                     := 'X';             -- write
			debug_mem_slave_writedata           : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			dummy_ci_port                       : out std_logic                                         -- readra
		);
	end component Assignment2_NIOS;

	component Assignment2_SRAM is
		port (
			clk        : in  std_logic                     := 'X';             -- clk
			address    : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- address
			clken      : in  std_logic                     := 'X';             -- clken
			chipselect : in  std_logic                     := 'X';             -- chipselect
			write      : in  std_logic                     := 'X';             -- write
			readdata   : out std_logic_vector(31 downto 0);                    -- readdata
			writedata  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			byteenable : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			reset      : in  std_logic                     := 'X';             -- reset
			reset_req  : in  std_logic                     := 'X';             -- reset_req
			freeze     : in  std_logic                     := 'X'              -- freeze
		);
	end component Assignment2_SRAM;

	component Assignment2_mm_interconnect_0 is
		port (
			clk_0_clk_clk                          : in  std_logic                     := 'X';             -- clk
			NIOS_reset_reset_bridge_in_reset_reset : in  std_logic                     := 'X';             -- reset
			NIOS_data_master_address               : in  std_logic_vector(13 downto 0) := (others => 'X'); -- address
			NIOS_data_master_waitrequest           : out std_logic;                                        -- waitrequest
			NIOS_data_master_byteenable            : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			NIOS_data_master_read                  : in  std_logic                     := 'X';             -- read
			NIOS_data_master_readdata              : out std_logic_vector(31 downto 0);                    -- readdata
			NIOS_data_master_write                 : in  std_logic                     := 'X';             -- write
			NIOS_data_master_writedata             : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			NIOS_data_master_debugaccess           : in  std_logic                     := 'X';             -- debugaccess
			NIOS_instruction_master_address        : in  std_logic_vector(13 downto 0) := (others => 'X'); -- address
			NIOS_instruction_master_waitrequest    : out std_logic;                                        -- waitrequest
			NIOS_instruction_master_read           : in  std_logic                     := 'X';             -- read
			NIOS_instruction_master_readdata       : out std_logic_vector(31 downto 0);                    -- readdata
			JTAG_avalon_jtag_slave_address         : out std_logic_vector(0 downto 0);                     -- address
			JTAG_avalon_jtag_slave_write           : out std_logic;                                        -- write
			JTAG_avalon_jtag_slave_read            : out std_logic;                                        -- read
			JTAG_avalon_jtag_slave_readdata        : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			JTAG_avalon_jtag_slave_writedata       : out std_logic_vector(31 downto 0);                    -- writedata
			JTAG_avalon_jtag_slave_waitrequest     : in  std_logic                     := 'X';             -- waitrequest
			JTAG_avalon_jtag_slave_chipselect      : out std_logic;                                        -- chipselect
			NIOS_debug_mem_slave_address           : out std_logic_vector(8 downto 0);                     -- address
			NIOS_debug_mem_slave_write             : out std_logic;                                        -- write
			NIOS_debug_mem_slave_read              : out std_logic;                                        -- read
			NIOS_debug_mem_slave_readdata          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			NIOS_debug_mem_slave_writedata         : out std_logic_vector(31 downto 0);                    -- writedata
			NIOS_debug_mem_slave_byteenable        : out std_logic_vector(3 downto 0);                     -- byteenable
			NIOS_debug_mem_slave_waitrequest       : in  std_logic                     := 'X';             -- waitrequest
			NIOS_debug_mem_slave_debugaccess       : out std_logic;                                        -- debugaccess
			SRAM_s1_address                        : out std_logic_vector(9 downto 0);                     -- address
			SRAM_s1_write                          : out std_logic;                                        -- write
			SRAM_s1_readdata                       : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			SRAM_s1_writedata                      : out std_logic_vector(31 downto 0);                    -- writedata
			SRAM_s1_byteenable                     : out std_logic_vector(3 downto 0);                     -- byteenable
			SRAM_s1_chipselect                     : out std_logic;                                        -- chipselect
			SRAM_s1_clken                          : out std_logic                                         -- clken
		);
	end component Assignment2_mm_interconnect_0;

	component Assignment2_irq_mapper is
		port (
			clk           : in  std_logic                     := 'X'; -- clk
			reset         : in  std_logic                     := 'X'; -- reset
			receiver0_irq : in  std_logic                     := 'X'; -- irq
			sender_irq    : out std_logic_vector(31 downto 0)         -- irq
		);
	end component Assignment2_irq_mapper;

	component altera_reset_controller is
		generic (
			NUM_RESET_INPUTS          : integer := 6;
			OUTPUT_RESET_SYNC_EDGES   : string  := "deassert";
			SYNC_DEPTH                : integer := 2;
			RESET_REQUEST_PRESENT     : integer := 0;
			RESET_REQ_WAIT_TIME       : integer := 1;
			MIN_RST_ASSERTION_TIME    : integer := 3;
			RESET_REQ_EARLY_DSRT_TIME : integer := 1;
			USE_RESET_REQUEST_IN0     : integer := 0;
			USE_RESET_REQUEST_IN1     : integer := 0;
			USE_RESET_REQUEST_IN2     : integer := 0;
			USE_RESET_REQUEST_IN3     : integer := 0;
			USE_RESET_REQUEST_IN4     : integer := 0;
			USE_RESET_REQUEST_IN5     : integer := 0;
			USE_RESET_REQUEST_IN6     : integer := 0;
			USE_RESET_REQUEST_IN7     : integer := 0;
			USE_RESET_REQUEST_IN8     : integer := 0;
			USE_RESET_REQUEST_IN9     : integer := 0;
			USE_RESET_REQUEST_IN10    : integer := 0;
			USE_RESET_REQUEST_IN11    : integer := 0;
			USE_RESET_REQUEST_IN12    : integer := 0;
			USE_RESET_REQUEST_IN13    : integer := 0;
			USE_RESET_REQUEST_IN14    : integer := 0;
			USE_RESET_REQUEST_IN15    : integer := 0;
			ADAPT_RESET_REQUEST       : integer := 0
		);
		port (
			reset_in0      : in  std_logic := 'X'; -- reset
			clk            : in  std_logic := 'X'; -- clk
			reset_out      : out std_logic;        -- reset
			reset_req      : out std_logic;        -- reset_req
			reset_req_in0  : in  std_logic := 'X'; -- reset_req
			reset_in1      : in  std_logic := 'X'; -- reset
			reset_req_in1  : in  std_logic := 'X'; -- reset_req
			reset_in2      : in  std_logic := 'X'; -- reset
			reset_req_in2  : in  std_logic := 'X'; -- reset_req
			reset_in3      : in  std_logic := 'X'; -- reset
			reset_req_in3  : in  std_logic := 'X'; -- reset_req
			reset_in4      : in  std_logic := 'X'; -- reset
			reset_req_in4  : in  std_logic := 'X'; -- reset_req
			reset_in5      : in  std_logic := 'X'; -- reset
			reset_req_in5  : in  std_logic := 'X'; -- reset_req
			reset_in6      : in  std_logic := 'X'; -- reset
			reset_req_in6  : in  std_logic := 'X'; -- reset_req
			reset_in7      : in  std_logic := 'X'; -- reset
			reset_req_in7  : in  std_logic := 'X'; -- reset_req
			reset_in8      : in  std_logic := 'X'; -- reset
			reset_req_in8  : in  std_logic := 'X'; -- reset_req
			reset_in9      : in  std_logic := 'X'; -- reset
			reset_req_in9  : in  std_logic := 'X'; -- reset_req
			reset_in10     : in  std_logic := 'X'; -- reset
			reset_req_in10 : in  std_logic := 'X'; -- reset_req
			reset_in11     : in  std_logic := 'X'; -- reset
			reset_req_in11 : in  std_logic := 'X'; -- reset_req
			reset_in12     : in  std_logic := 'X'; -- reset
			reset_req_in12 : in  std_logic := 'X'; -- reset_req
			reset_in13     : in  std_logic := 'X'; -- reset
			reset_req_in13 : in  std_logic := 'X'; -- reset_req
			reset_in14     : in  std_logic := 'X'; -- reset
			reset_req_in14 : in  std_logic := 'X'; -- reset_req
			reset_in15     : in  std_logic := 'X'; -- reset
			reset_req_in15 : in  std_logic := 'X'  -- reset_req
		);
	end component altera_reset_controller;

	signal nios_debug_reset_request_reset                           : std_logic;                     -- NIOS:debug_reset_request -> rst_controller:reset_in0
	signal nios_data_master_readdata                                : std_logic_vector(31 downto 0); -- mm_interconnect_0:NIOS_data_master_readdata -> NIOS:d_readdata
	signal nios_data_master_waitrequest                             : std_logic;                     -- mm_interconnect_0:NIOS_data_master_waitrequest -> NIOS:d_waitrequest
	signal nios_data_master_debugaccess                             : std_logic;                     -- NIOS:debug_mem_slave_debugaccess_to_roms -> mm_interconnect_0:NIOS_data_master_debugaccess
	signal nios_data_master_address                                 : std_logic_vector(13 downto 0); -- NIOS:d_address -> mm_interconnect_0:NIOS_data_master_address
	signal nios_data_master_byteenable                              : std_logic_vector(3 downto 0);  -- NIOS:d_byteenable -> mm_interconnect_0:NIOS_data_master_byteenable
	signal nios_data_master_read                                    : std_logic;                     -- NIOS:d_read -> mm_interconnect_0:NIOS_data_master_read
	signal nios_data_master_write                                   : std_logic;                     -- NIOS:d_write -> mm_interconnect_0:NIOS_data_master_write
	signal nios_data_master_writedata                               : std_logic_vector(31 downto 0); -- NIOS:d_writedata -> mm_interconnect_0:NIOS_data_master_writedata
	signal nios_instruction_master_readdata                         : std_logic_vector(31 downto 0); -- mm_interconnect_0:NIOS_instruction_master_readdata -> NIOS:i_readdata
	signal nios_instruction_master_waitrequest                      : std_logic;                     -- mm_interconnect_0:NIOS_instruction_master_waitrequest -> NIOS:i_waitrequest
	signal nios_instruction_master_address                          : std_logic_vector(13 downto 0); -- NIOS:i_address -> mm_interconnect_0:NIOS_instruction_master_address
	signal nios_instruction_master_read                             : std_logic;                     -- NIOS:i_read -> mm_interconnect_0:NIOS_instruction_master_read
	signal mm_interconnect_0_jtag_avalon_jtag_slave_chipselect      : std_logic;                     -- mm_interconnect_0:JTAG_avalon_jtag_slave_chipselect -> JTAG:av_chipselect
	signal mm_interconnect_0_jtag_avalon_jtag_slave_readdata        : std_logic_vector(31 downto 0); -- JTAG:av_readdata -> mm_interconnect_0:JTAG_avalon_jtag_slave_readdata
	signal mm_interconnect_0_jtag_avalon_jtag_slave_waitrequest     : std_logic;                     -- JTAG:av_waitrequest -> mm_interconnect_0:JTAG_avalon_jtag_slave_waitrequest
	signal mm_interconnect_0_jtag_avalon_jtag_slave_address         : std_logic_vector(0 downto 0);  -- mm_interconnect_0:JTAG_avalon_jtag_slave_address -> JTAG:av_address
	signal mm_interconnect_0_jtag_avalon_jtag_slave_read            : std_logic;                     -- mm_interconnect_0:JTAG_avalon_jtag_slave_read -> mm_interconnect_0_jtag_avalon_jtag_slave_read:in
	signal mm_interconnect_0_jtag_avalon_jtag_slave_write           : std_logic;                     -- mm_interconnect_0:JTAG_avalon_jtag_slave_write -> mm_interconnect_0_jtag_avalon_jtag_slave_write:in
	signal mm_interconnect_0_jtag_avalon_jtag_slave_writedata       : std_logic_vector(31 downto 0); -- mm_interconnect_0:JTAG_avalon_jtag_slave_writedata -> JTAG:av_writedata
	signal mm_interconnect_0_nios_debug_mem_slave_readdata          : std_logic_vector(31 downto 0); -- NIOS:debug_mem_slave_readdata -> mm_interconnect_0:NIOS_debug_mem_slave_readdata
	signal mm_interconnect_0_nios_debug_mem_slave_waitrequest       : std_logic;                     -- NIOS:debug_mem_slave_waitrequest -> mm_interconnect_0:NIOS_debug_mem_slave_waitrequest
	signal mm_interconnect_0_nios_debug_mem_slave_debugaccess       : std_logic;                     -- mm_interconnect_0:NIOS_debug_mem_slave_debugaccess -> NIOS:debug_mem_slave_debugaccess
	signal mm_interconnect_0_nios_debug_mem_slave_address           : std_logic_vector(8 downto 0);  -- mm_interconnect_0:NIOS_debug_mem_slave_address -> NIOS:debug_mem_slave_address
	signal mm_interconnect_0_nios_debug_mem_slave_read              : std_logic;                     -- mm_interconnect_0:NIOS_debug_mem_slave_read -> NIOS:debug_mem_slave_read
	signal mm_interconnect_0_nios_debug_mem_slave_byteenable        : std_logic_vector(3 downto 0);  -- mm_interconnect_0:NIOS_debug_mem_slave_byteenable -> NIOS:debug_mem_slave_byteenable
	signal mm_interconnect_0_nios_debug_mem_slave_write             : std_logic;                     -- mm_interconnect_0:NIOS_debug_mem_slave_write -> NIOS:debug_mem_slave_write
	signal mm_interconnect_0_nios_debug_mem_slave_writedata         : std_logic_vector(31 downto 0); -- mm_interconnect_0:NIOS_debug_mem_slave_writedata -> NIOS:debug_mem_slave_writedata
	signal mm_interconnect_0_sram_s1_chipselect                     : std_logic;                     -- mm_interconnect_0:SRAM_s1_chipselect -> SRAM:chipselect
	signal mm_interconnect_0_sram_s1_readdata                       : std_logic_vector(31 downto 0); -- SRAM:readdata -> mm_interconnect_0:SRAM_s1_readdata
	signal mm_interconnect_0_sram_s1_address                        : std_logic_vector(9 downto 0);  -- mm_interconnect_0:SRAM_s1_address -> SRAM:address
	signal mm_interconnect_0_sram_s1_byteenable                     : std_logic_vector(3 downto 0);  -- mm_interconnect_0:SRAM_s1_byteenable -> SRAM:byteenable
	signal mm_interconnect_0_sram_s1_write                          : std_logic;                     -- mm_interconnect_0:SRAM_s1_write -> SRAM:write
	signal mm_interconnect_0_sram_s1_writedata                      : std_logic_vector(31 downto 0); -- mm_interconnect_0:SRAM_s1_writedata -> SRAM:writedata
	signal mm_interconnect_0_sram_s1_clken                          : std_logic;                     -- mm_interconnect_0:SRAM_s1_clken -> SRAM:clken
	signal irq_mapper_receiver0_irq                                 : std_logic;                     -- JTAG:av_irq -> irq_mapper:receiver0_irq
	signal nios_irq_irq                                             : std_logic_vector(31 downto 0); -- irq_mapper:sender_irq -> NIOS:irq
	signal rst_controller_reset_out_reset                           : std_logic;                     -- rst_controller:reset_out -> [SRAM:reset, irq_mapper:reset, mm_interconnect_0:NIOS_reset_reset_bridge_in_reset_reset, rst_controller_reset_out_reset:in, rst_translator:in_reset]
	signal rst_controller_reset_out_reset_req                       : std_logic;                     -- rst_controller:reset_req -> [NIOS:reset_req, SRAM:reset_req, rst_translator:reset_req_in]
	signal mm_interconnect_0_jtag_avalon_jtag_slave_read_ports_inv  : std_logic;                     -- mm_interconnect_0_jtag_avalon_jtag_slave_read:inv -> JTAG:av_read_n
	signal mm_interconnect_0_jtag_avalon_jtag_slave_write_ports_inv : std_logic;                     -- mm_interconnect_0_jtag_avalon_jtag_slave_write:inv -> JTAG:av_write_n
	signal rst_controller_reset_out_reset_ports_inv                 : std_logic;                     -- rst_controller_reset_out_reset:inv -> [JTAG:rst_n, NIOS:reset_n]

begin

	jtag : component Assignment2_JTAG
		port map (
			clk            => clk_clk,                                                  --               clk.clk
			rst_n          => rst_controller_reset_out_reset_ports_inv,                 --             reset.reset_n
			av_chipselect  => mm_interconnect_0_jtag_avalon_jtag_slave_chipselect,      -- avalon_jtag_slave.chipselect
			av_address     => mm_interconnect_0_jtag_avalon_jtag_slave_address(0),      --                  .address
			av_read_n      => mm_interconnect_0_jtag_avalon_jtag_slave_read_ports_inv,  --                  .read_n
			av_readdata    => mm_interconnect_0_jtag_avalon_jtag_slave_readdata,        --                  .readdata
			av_write_n     => mm_interconnect_0_jtag_avalon_jtag_slave_write_ports_inv, --                  .write_n
			av_writedata   => mm_interconnect_0_jtag_avalon_jtag_slave_writedata,       --                  .writedata
			av_waitrequest => mm_interconnect_0_jtag_avalon_jtag_slave_waitrequest,     --                  .waitrequest
			av_irq         => irq_mapper_receiver0_irq                                  --               irq.irq
		);

	nios : component Assignment2_NIOS
		port map (
			clk                                 => clk_clk,                                            --                       clk.clk
			reset_n                             => rst_controller_reset_out_reset_ports_inv,           --                     reset.reset_n
			reset_req                           => rst_controller_reset_out_reset_req,                 --                          .reset_req
			d_address                           => nios_data_master_address,                           --               data_master.address
			d_byteenable                        => nios_data_master_byteenable,                        --                          .byteenable
			d_read                              => nios_data_master_read,                              --                          .read
			d_readdata                          => nios_data_master_readdata,                          --                          .readdata
			d_waitrequest                       => nios_data_master_waitrequest,                       --                          .waitrequest
			d_write                             => nios_data_master_write,                             --                          .write
			d_writedata                         => nios_data_master_writedata,                         --                          .writedata
			debug_mem_slave_debugaccess_to_roms => nios_data_master_debugaccess,                       --                          .debugaccess
			i_address                           => nios_instruction_master_address,                    --        instruction_master.address
			i_read                              => nios_instruction_master_read,                       --                          .read
			i_readdata                          => nios_instruction_master_readdata,                   --                          .readdata
			i_waitrequest                       => nios_instruction_master_waitrequest,                --                          .waitrequest
			irq                                 => nios_irq_irq,                                       --                       irq.irq
			debug_reset_request                 => nios_debug_reset_request_reset,                     --       debug_reset_request.reset
			debug_mem_slave_address             => mm_interconnect_0_nios_debug_mem_slave_address,     --           debug_mem_slave.address
			debug_mem_slave_byteenable          => mm_interconnect_0_nios_debug_mem_slave_byteenable,  --                          .byteenable
			debug_mem_slave_debugaccess         => mm_interconnect_0_nios_debug_mem_slave_debugaccess, --                          .debugaccess
			debug_mem_slave_read                => mm_interconnect_0_nios_debug_mem_slave_read,        --                          .read
			debug_mem_slave_readdata            => mm_interconnect_0_nios_debug_mem_slave_readdata,    --                          .readdata
			debug_mem_slave_waitrequest         => mm_interconnect_0_nios_debug_mem_slave_waitrequest, --                          .waitrequest
			debug_mem_slave_write               => mm_interconnect_0_nios_debug_mem_slave_write,       --                          .write
			debug_mem_slave_writedata           => mm_interconnect_0_nios_debug_mem_slave_writedata,   --                          .writedata
			dummy_ci_port                       => open                                                -- custom_instruction_master.readra
		);

	sram : component Assignment2_SRAM
		port map (
			clk        => clk_clk,                              --   clk1.clk
			address    => mm_interconnect_0_sram_s1_address,    --     s1.address
			clken      => mm_interconnect_0_sram_s1_clken,      --       .clken
			chipselect => mm_interconnect_0_sram_s1_chipselect, --       .chipselect
			write      => mm_interconnect_0_sram_s1_write,      --       .write
			readdata   => mm_interconnect_0_sram_s1_readdata,   --       .readdata
			writedata  => mm_interconnect_0_sram_s1_writedata,  --       .writedata
			byteenable => mm_interconnect_0_sram_s1_byteenable, --       .byteenable
			reset      => rst_controller_reset_out_reset,       -- reset1.reset
			reset_req  => rst_controller_reset_out_reset_req,   --       .reset_req
			freeze     => '0'                                   -- (terminated)
		);

	mm_interconnect_0 : component Assignment2_mm_interconnect_0
		port map (
			clk_0_clk_clk                          => clk_clk,                                              --                        clk_0_clk.clk
			NIOS_reset_reset_bridge_in_reset_reset => rst_controller_reset_out_reset,                       -- NIOS_reset_reset_bridge_in_reset.reset
			NIOS_data_master_address               => nios_data_master_address,                             --                 NIOS_data_master.address
			NIOS_data_master_waitrequest           => nios_data_master_waitrequest,                         --                                 .waitrequest
			NIOS_data_master_byteenable            => nios_data_master_byteenable,                          --                                 .byteenable
			NIOS_data_master_read                  => nios_data_master_read,                                --                                 .read
			NIOS_data_master_readdata              => nios_data_master_readdata,                            --                                 .readdata
			NIOS_data_master_write                 => nios_data_master_write,                               --                                 .write
			NIOS_data_master_writedata             => nios_data_master_writedata,                           --                                 .writedata
			NIOS_data_master_debugaccess           => nios_data_master_debugaccess,                         --                                 .debugaccess
			NIOS_instruction_master_address        => nios_instruction_master_address,                      --          NIOS_instruction_master.address
			NIOS_instruction_master_waitrequest    => nios_instruction_master_waitrequest,                  --                                 .waitrequest
			NIOS_instruction_master_read           => nios_instruction_master_read,                         --                                 .read
			NIOS_instruction_master_readdata       => nios_instruction_master_readdata,                     --                                 .readdata
			JTAG_avalon_jtag_slave_address         => mm_interconnect_0_jtag_avalon_jtag_slave_address,     --           JTAG_avalon_jtag_slave.address
			JTAG_avalon_jtag_slave_write           => mm_interconnect_0_jtag_avalon_jtag_slave_write,       --                                 .write
			JTAG_avalon_jtag_slave_read            => mm_interconnect_0_jtag_avalon_jtag_slave_read,        --                                 .read
			JTAG_avalon_jtag_slave_readdata        => mm_interconnect_0_jtag_avalon_jtag_slave_readdata,    --                                 .readdata
			JTAG_avalon_jtag_slave_writedata       => mm_interconnect_0_jtag_avalon_jtag_slave_writedata,   --                                 .writedata
			JTAG_avalon_jtag_slave_waitrequest     => mm_interconnect_0_jtag_avalon_jtag_slave_waitrequest, --                                 .waitrequest
			JTAG_avalon_jtag_slave_chipselect      => mm_interconnect_0_jtag_avalon_jtag_slave_chipselect,  --                                 .chipselect
			NIOS_debug_mem_slave_address           => mm_interconnect_0_nios_debug_mem_slave_address,       --             NIOS_debug_mem_slave.address
			NIOS_debug_mem_slave_write             => mm_interconnect_0_nios_debug_mem_slave_write,         --                                 .write
			NIOS_debug_mem_slave_read              => mm_interconnect_0_nios_debug_mem_slave_read,          --                                 .read
			NIOS_debug_mem_slave_readdata          => mm_interconnect_0_nios_debug_mem_slave_readdata,      --                                 .readdata
			NIOS_debug_mem_slave_writedata         => mm_interconnect_0_nios_debug_mem_slave_writedata,     --                                 .writedata
			NIOS_debug_mem_slave_byteenable        => mm_interconnect_0_nios_debug_mem_slave_byteenable,    --                                 .byteenable
			NIOS_debug_mem_slave_waitrequest       => mm_interconnect_0_nios_debug_mem_slave_waitrequest,   --                                 .waitrequest
			NIOS_debug_mem_slave_debugaccess       => mm_interconnect_0_nios_debug_mem_slave_debugaccess,   --                                 .debugaccess
			SRAM_s1_address                        => mm_interconnect_0_sram_s1_address,                    --                          SRAM_s1.address
			SRAM_s1_write                          => mm_interconnect_0_sram_s1_write,                      --                                 .write
			SRAM_s1_readdata                       => mm_interconnect_0_sram_s1_readdata,                   --                                 .readdata
			SRAM_s1_writedata                      => mm_interconnect_0_sram_s1_writedata,                  --                                 .writedata
			SRAM_s1_byteenable                     => mm_interconnect_0_sram_s1_byteenable,                 --                                 .byteenable
			SRAM_s1_chipselect                     => mm_interconnect_0_sram_s1_chipselect,                 --                                 .chipselect
			SRAM_s1_clken                          => mm_interconnect_0_sram_s1_clken                       --                                 .clken
		);

	irq_mapper : component Assignment2_irq_mapper
		port map (
			clk           => clk_clk,                        --       clk.clk
			reset         => rst_controller_reset_out_reset, -- clk_reset.reset
			receiver0_irq => irq_mapper_receiver0_irq,       -- receiver0.irq
			sender_irq    => nios_irq_irq                    --    sender.irq
		);

	rst_controller : component altera_reset_controller
		generic map (
			NUM_RESET_INPUTS          => 1,
			OUTPUT_RESET_SYNC_EDGES   => "deassert",
			SYNC_DEPTH                => 2,
			RESET_REQUEST_PRESENT     => 1,
			RESET_REQ_WAIT_TIME       => 1,
			MIN_RST_ASSERTION_TIME    => 3,
			RESET_REQ_EARLY_DSRT_TIME => 1,
			USE_RESET_REQUEST_IN0     => 0,
			USE_RESET_REQUEST_IN1     => 0,
			USE_RESET_REQUEST_IN2     => 0,
			USE_RESET_REQUEST_IN3     => 0,
			USE_RESET_REQUEST_IN4     => 0,
			USE_RESET_REQUEST_IN5     => 0,
			USE_RESET_REQUEST_IN6     => 0,
			USE_RESET_REQUEST_IN7     => 0,
			USE_RESET_REQUEST_IN8     => 0,
			USE_RESET_REQUEST_IN9     => 0,
			USE_RESET_REQUEST_IN10    => 0,
			USE_RESET_REQUEST_IN11    => 0,
			USE_RESET_REQUEST_IN12    => 0,
			USE_RESET_REQUEST_IN13    => 0,
			USE_RESET_REQUEST_IN14    => 0,
			USE_RESET_REQUEST_IN15    => 0,
			ADAPT_RESET_REQUEST       => 0
		)
		port map (
			reset_in0      => nios_debug_reset_request_reset,     -- reset_in0.reset
			clk            => clk_clk,                            --       clk.clk
			reset_out      => rst_controller_reset_out_reset,     -- reset_out.reset
			reset_req      => rst_controller_reset_out_reset_req, --          .reset_req
			reset_req_in0  => '0',                                -- (terminated)
			reset_in1      => '0',                                -- (terminated)
			reset_req_in1  => '0',                                -- (terminated)
			reset_in2      => '0',                                -- (terminated)
			reset_req_in2  => '0',                                -- (terminated)
			reset_in3      => '0',                                -- (terminated)
			reset_req_in3  => '0',                                -- (terminated)
			reset_in4      => '0',                                -- (terminated)
			reset_req_in4  => '0',                                -- (terminated)
			reset_in5      => '0',                                -- (terminated)
			reset_req_in5  => '0',                                -- (terminated)
			reset_in6      => '0',                                -- (terminated)
			reset_req_in6  => '0',                                -- (terminated)
			reset_in7      => '0',                                -- (terminated)
			reset_req_in7  => '0',                                -- (terminated)
			reset_in8      => '0',                                -- (terminated)
			reset_req_in8  => '0',                                -- (terminated)
			reset_in9      => '0',                                -- (terminated)
			reset_req_in9  => '0',                                -- (terminated)
			reset_in10     => '0',                                -- (terminated)
			reset_req_in10 => '0',                                -- (terminated)
			reset_in11     => '0',                                -- (terminated)
			reset_req_in11 => '0',                                -- (terminated)
			reset_in12     => '0',                                -- (terminated)
			reset_req_in12 => '0',                                -- (terminated)
			reset_in13     => '0',                                -- (terminated)
			reset_req_in13 => '0',                                -- (terminated)
			reset_in14     => '0',                                -- (terminated)
			reset_req_in14 => '0',                                -- (terminated)
			reset_in15     => '0',                                -- (terminated)
			reset_req_in15 => '0'                                 -- (terminated)
		);

	mm_interconnect_0_jtag_avalon_jtag_slave_read_ports_inv <= not mm_interconnect_0_jtag_avalon_jtag_slave_read;

	mm_interconnect_0_jtag_avalon_jtag_slave_write_ports_inv <= not mm_interconnect_0_jtag_avalon_jtag_slave_write;

	rst_controller_reset_out_reset_ports_inv <= not rst_controller_reset_out_reset;

end architecture rtl; -- of Assignment2
