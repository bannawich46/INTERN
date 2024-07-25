library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use STD.TEXTIO.ALL;

Entity Tb_PRJ_SIM is
End Entity Tb_PRJ_SIM;

Architecture HTWTestBench of Tb_PRJ_SIM is
	component PRJ_SIM is
	port (
		Avalon_Simple_Master_0_avm_m0_address     : in  std_logic_vector(8 downto 0)  := (others => '0'); -- Avalon_Simple_Master_0_avm_m0.address
		Avalon_Simple_Master_0_avm_m0_read        : in  std_logic                     := '0';             --                              .read
		Avalon_Simple_Master_0_avm_m0_waitrequest : out std_logic;                                        --                              .waitrequest
		Avalon_Simple_Master_0_avm_m0_readdata    : out std_logic_vector(31 downto 0);                    --                              .readdata
		Avalon_Simple_Master_0_avm_m0_write       : in  std_logic                     := '0';             --                              .write
		Avalon_Simple_Master_0_avm_m0_writedata   : in  std_logic_vector(31 downto 0) := (others => '0'); --                              .writedata
		Avalon_Simple_Master_0_reset_reset        : out std_logic;                                        --  Avalon_Simple_Master_0_reset.reset
		clk_clk                                   : in  std_logic                     := 'X';             -- clk
		ocram_master_0_conduit_end_export         : out std_logic_vector(7 downto 0);                     -- export
		reset_reset_n                             : in  std_logic                     := 'X'              -- reset_n
	);
	end component PRJ_SIM;

	constant kCLK		: time := 20 ns;
	signal wCLK50		: std_logic;
	signal CLK			: std_logic;
	signal RST_L		: std_logic;
	
	signal wLED_L		: std_logic_vector(7 downto 0) := (others => '0');
	signal wADDRESS		: std_logic_vector(8 downto 0) := (others => '0');
	signal wWAITREQ		: std_logic := 'Z';
	signal wREAD		: std_logic := '0';
	signal wREADDATA	: std_logic_vector(31 downto 0);
	signal wWRITE		: std_logic := '0';
	signal wWRITEDATA	: std_logic_vector(31 downto 0) := (others => '0');
	signal wRESET		: std_logic;

	Procedure	IO_WRITE (
		address				: in std_logic_vector(8 downto 0);
		data				: in std_logic_vector(31 downto 0);
		signal wADDRESS		: out std_logic_vector(8 downto 0);
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
		address				: in std_logic_vector(8 downto 0);
		signal wADDRESS		: out std_logic_vector(8 downto 0);
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
		Avalon_Simple_Master_0_avm_m0_address => wADDRESS,
		Avalon_Simple_Master_0_avm_m0_waitrequest => wWAITREQ,
		Avalon_Simple_Master_0_avm_m0_read => wREAD,
		Avalon_Simple_Master_0_avm_m0_readdata => wREADDATA,
		Avalon_Simple_Master_0_avm_m0_write => wWRITE,
		Avalon_Simple_Master_0_avm_m0_writedata => wWRITEDATA,
		Avalon_Simple_Master_0_reset_reset => wRESET,
		clk_clk => CLK,
		ocram_master_0_conduit_end_export => wLED_L,
		reset_reset_n => RST_L
	);

	Process
	Begin
		RST_L		<=	'0'		;
		wait for kCLK * 5 ;
		wait until wCLK50'event and wCLK50 = '0';
		RST_L <= '1';
		
		wait until CLK'event and CLK = '1';
		
		wait for 100 us;
		IO_WRITE("0" & x"00", x"0000_00A5",wADDRESS,wWAITREQ,wWRITE,wWRITEDATA);
		wait for 100 us;
		IO_WRITE("0" & x"04", x"0000_005A",wADDRESS,wWAITREQ,wWRITE,wWRITEDATA);
		wait for 100 us;
		IO_WRITE("0" & x"08", x"0000_00FF",wADDRESS,wWAITREQ,wWRITE,wWRITEDATA);
		wait for 100 us;
		IO_READ("1" & x"00", wADDRESS,wWAITREQ,wREAD);
		wait for 100 us;

		wait;
	End process;
End Architecture HTWTestBench;