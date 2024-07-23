library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use STD.TEXTIO.ALL;

Entity Tb_PRJ_SIM is
End Entity Tb_PRJ_SIM;

Architecture HTWTestBench of Tb_PRJ_SIM is
	component PRJ_SIM is
	port (
		Avalon_Simple_Master_0_avm_m0_address     : in  std_logic_vector(7 downto 0)  := (others => '0'); -- Avalon_Simple_Master_0_avm_m0.address
		Avalon_Simple_Master_0_avm_m0_read        : in  std_logic                     := '0';             --                              .read
		Avalon_Simple_Master_0_avm_m0_waitrequest : out std_logic;                                        --                              .waitrequest
		Avalon_Simple_Master_0_avm_m0_readdata    : out std_logic_vector(31 downto 0);                    --                              .readdata
		Avalon_Simple_Master_0_avm_m0_write       : in  std_logic                     := '0';             --                              .write
		Avalon_Simple_Master_0_avm_m0_writedata   : in  std_logic_vector(31 downto 0) := (others => '0'); --                              .writedata
		Avalon_Simple_Master_0_reset_reset        : out std_logic;                                        --  Avalon_Simple_Master_0_reset.reset
		avalon_export_0_avs_s0_address            : out std_logic_vector(1 downto 0);                     --        avalon_export_0_avs_s0.address
		avalon_export_0_avs_s0_read               : out std_logic;                                        --                              .read
		avalon_export_0_avs_s0_readdata           : in  std_logic_vector(31 downto 0) := (others => '0'); --                              .readdata
		avalon_export_0_avs_s0_write              : out std_logic;                                        --                              .write
		avalon_export_0_avs_s0_writedata          : out std_logic_vector(31 downto 0);                    --                              .writedata
		avalon_export_0_avs_s0_waitrequest        : in  std_logic                     := '0';             --                              .waitrequest
		avalon_export_0_reset_reset               : out std_logic;                                        --         avalon_export_0_reset.reset
		clk_clk                                   : in  std_logic                     := '0';             --                           clk.clk
		reset_reset_n                             : in  std_logic                     := '0'              --                         reset.reset_n
	);
	end component PRJ_SIM;
	
	component FIFO_CTRL is
	port (
		CLK50			: in	std_logic;

		iADDRESS		: in	std_logic_vector(7 downto 0);
		iREAD			: in	std_logic;
		iREADDATA		: out	std_logic_vector(31 downto 0);
		iWRITE			: in	std_logic;
		iWRITEDATA		: in	std_logic_vector(31 downto 0);
		iWAITREQUEST	: out	std_logic;
		iRESET			: in	std_logic;

		LED_L			: out	std_logic_vector( 7 downto 0 )
	);
	end component FIFO_CTRL;
	
	constant kCLK		: time := 20 ns;
	signal wCLK50		: std_logic;
	signal CLK			: std_logic;
	signal RST_L		: std_logic;
	
	signal wLED_L		: std_logic_vector(7 downto 0) := (others => '0');
	signal wADDRESS		: std_logic_vector(7 downto 0) := (others => '0');
	signal wWAITREQ		: std_logic := 'Z';
	signal wREAD		: std_logic := '0';
	signal wREADDATA	: std_logic_vector(31 downto 0);
	signal wWRITE		: std_logic := '0';
	signal wWRITEDATA	: std_logic_vector(31 downto 0) := (others => '0');
	signal wRESET		: std_logic;
	
	signal wADDRESS_EX		: std_logic_vector(7 downto 0) := (others => '0');
	signal wWAITREQ_EX		: std_logic := 'Z';
	signal wREAD_EX		: std_logic := '0';
	signal wREADDATA_EX	: std_logic_vector(31 downto 0) := (others => '0');
	signal wWRITE_EX		: std_logic := '0';
	signal wWRITEDATA_EX	: std_logic_vector(31 downto 0) := (others => '0');
	signal wRESET_EX		: std_logic;

	Procedure	IO_WRITE (
		address				: in std_logic_vector(7 downto 0);
		data				: in std_logic_vector(31 downto 0);
		signal wADDRESS		: out std_logic_vector(7 downto 0);
		signal wWAITREQ		: in std_logic;
		signal wWRITE		: out std_logic;
		signal wWRITEDATA	: out std_logic_vector(31 downto 0)
		)	is
	Begin
		wait until CLK'event and CLK = '1';
		wADDRESS <= address;
		wWRITEDATA <= data;
		wWRITE <= '1';
		
		wait until CLK'event and CLK = '0';
		if (wWAITREQ = '1') then
			wait until CLK'event and CLK = '1';
			while ( wWAITREQ = '1' ) loop
				wait until CLK'event and CLK = '1';
			end loop;
		else
			wait until CLK'event and CLK = '1';
		end if;
		
		wWRITE <= '0';
		wait until CLK'event and CLK = '1';
	End Procedure;
	
	Procedure	IO_READ (
		address				: in std_logic_vector(7 downto 0);
		signal wADDRESS		: out std_logic_vector(7 downto 0);
		signal wWAITREQ		: in std_logic;
		signal wREAD		: out std_logic
		)	is
	Begin
		wADDRESS <= address;
		wREAD <= '1';
		wait until CLK'event and CLK = '0';
		if (wWAITREQ = '1') then
			wait until CLK'event and CLK = '1';
			while ( wWAITREQ = '1' ) loop
				wait until CLK'event and CLK = '1';
			end loop;
		else
			wait until CLK'event and CLK = '1';
		end if;
		
		wREAD <= '0';
		wait until CLK'event and CLK = '1';
	End procedure;

Begin
	process
	begin
		wCLK50 <= '0';
		wait for kCLK / 2 ;
		wCLK50 <= '1';
		wait for kCLK - ( kCLK / 2 );
	end process;
	CLK		<=	wCLK50	;
	
	SIM_PRJ_SIM : PRJ_SIM
	port map 
	(
		clk_clk => CLK,
		reset_reset_n => RST_L,
		Avalon_Simple_Master_0_avm_m0_address => wADDRESS,
		Avalon_Simple_Master_0_avm_m0_waitrequest => wWAITREQ,
		Avalon_Simple_Master_0_avm_m0_read => wREAD,
		Avalon_Simple_Master_0_avm_m0_readdata => wREADDATA,
		Avalon_Simple_Master_0_avm_m0_write => wWRITE,
		Avalon_Simple_Master_0_avm_m0_writedata => wWRITEDATA,
		Avalon_Simple_Master_0_reset_reset => wRESET,
		avalon_export_0_avs_s0_address => wADDRESS_EX(1 downto 0),
		avalon_export_0_avs_s0_read => wREAD_EX,
		avalon_export_0_avs_s0_readdata => wREADDATA_EX,
		avalon_export_0_avs_s0_write => wWRITE_EX,
		avalon_export_0_avs_s0_writedata => wWRITEDATA_EX,
		avalon_export_0_avs_s0_waitrequest => wWAITREQ_EX,
		avalon_export_0_reset_reset => wRESET_EX
	);
	
	SIM_FIFO_CTRL : FIFO_CTRL
	Port map
	(
		CLK50			=> CLK,

		iADDRESS		=> wADDRESS_EX,
		iREAD			=> wREAD_EX,
		iREADDATA		=> wREADDATA_EX,
		iWRITE			=> wWRITE_EX,
		iWRITEDATA		=> wWRITEDATA_EX,
		iWAITREQUEST	=> wWAITREQ_EX,
		iRESET			=> wRESET_EX,
		
		LED_L			=> wLED_L
	);
	
	Process
	Begin
		RST_L		<=	'0'		;
		wait for kCLK * 5 ;
		wait until wCLK50'event and wCLK50 = '0';
		RST_L <= '1';
		
		wait until CLK'event and CLK = '1';
		
		wait for 100 us;
		IO_WRITE(x"00", x"0000_00A5",wADDRESS,wWAITREQ,wWRITE,wWRITEDATA);
		wait for 100 us;
		IO_WRITE(x"00", x"0000_005A",wADDRESS,wWAITREQ,wWRITE,wWRITEDATA);
		wait for 100 us;
		IO_WRITE(x"00", x"0000_00FF",wADDRESS,wWAITREQ,wWRITE,wWRITEDATA);
		wait for 100 us;
		IO_READ(x"00", wADDRESS,wWAITREQ,wREAD);
		wait for 100 us;

		wait;
	End process;
End Architecture HTWTestBench;