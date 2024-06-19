library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use STD.TEXTIO.ALL;

Entity Tb_PRJ_SIM is
End Entity Tb_PRJ_SIM;

Architecture HTWTestBench of Tb_PRJ_SIM is
	Component PRJ_SIM is
	port (
		clk_clk                             : in  std_logic := 'X';
		reset_reset_n                       : in  std_logic := 'X';
		pio_0_external_connection_export  : out std_logic_vector(7 downto 0);
		AvalonSimpleMaster_0_avm_m0_address : in  std_logic_vector(7 downto 0) := (others => 'X');
		AvalonSimpleMaster_0_avm_m0_read    : in  std_logic := 'X';
		AvalonSimpleMaster_0_avm_m0_waitrequest : out std_logic;
		AvalonSimpleMaster_0_avm_m0_readdata : out std_logic_vector(31 downto 0) := (others => 'X');
		AvalonSimpleMaster_0_avm_m0_write   : in  std_logic := 'X';
		AvalonSimpleMaster_0_avm_m0_writedata : in  std_logic_vector(31 downto 0) := (others => 'X');
		AvalonSimpleMaster_0_reset_reset    : out std_logic
	);
	end Component;
	
	constant tCLK : time := 20 ns;
	signal iCLK_50M  : std_logic;
	signal CLK       : std_logic;
	signal RST_L     : std_logic;
	
	signal pio_0_external_connection_export    : std_logic_vector(7 downto 0);
	signal AvalonSimpleMaster_0_avm_m0_address : std_logic_vector(7 downto 0);
	signal AvalonSimpleMaster_0_avm_m0_waitrequest : std_logic;
	signal AvalonSimpleMaster_0_avm_m0_read    : std_logic;
	signal AvalonSimpleMaster_0_avm_m0_readdata : std_logic_vector(31 downto 0);
	signal AvalonSimpleMaster_0_avm_m0_write   : std_logic;
	signal AvalonSimpleMaster_0_avm_m0_writedata : std_logic_vector(31 downto 0);
	signal AvalonSimpleMaster_0_reset_reset    : std_logic;
	
Begin
	SIM_PRJ_SIM : PRJ_SIM
	port map 
	(
		clk_clk => CLK,
		reset_reset_n => RST_L,
		pio_0_external_connection_export => pio_0_external_connection_export,
		AvalonSimpleMaster_0_avm_m0_address => AvalonSimpleMaster_0_avm_m0_address,
		AvalonSimpleMaster_0_avm_m0_waitrequest => AvalonSimpleMaster_0_avm_m0_waitrequest,
		AvalonSimpleMaster_0_avm_m0_read => AvalonSimpleMaster_0_avm_m0_read,
		AvalonSimpleMaster_0_avm_m0_readdata => AvalonSimpleMaster_0_avm_m0_readdata,
		AvalonSimpleMaster_0_avm_m0_write => AvalonSimpleMaster_0_avm_m0_write,
		AvalonSimpleMaster_0_avm_m0_writedata => AvalonSimpleMaster_0_avm_m0_writedata,
		AvalonSimpleMaster_0_reset_reset => AvalonSimpleMaster_0_reset_reset
	);
	
	process
	begin
		AvalonSimpleMaster_0_avm_m0_address <= x"00";
		AvalonSimpleMaster_0_avm_m0_write <= '0';
		AvalonSimpleMaster_0_avm_m0_writedata <= x"00000000";
		AvalonSimpleMaster_0_avm_m0_read <= '0';
		RST_L <= '0';
		wait for tCLK * 5;
		wait until iCLK_50M'event and iCLK_50M = '0';
		RST_L <= '1';
	
		-- set PIO direction
		wait for 100 us;
		wait until CLK'event and CLK = '1';
		AvalonSimpleMaster_0_avm_m0_address <= x"04";
		AvalonSimpleMaster_0_avm_m0_writedata <= x"00000FFF";
		AvalonSimpleMaster_0_avm_m0_write <= '1';
		wait until CLK'event and CLK = '1';
		AvalonSimpleMaster_0_avm_m0_write <= '0';
		while (AvalonSimpleMaster_0_avm_m0_waitrequest = '1') loop
			wait for tCLK;
		end loop;
		wait until CLK'event and CLK = '1';
	
		-- set PIO output
		wait for 100 us;
		wait until CLK'event and CLK = '1';
		AvalonSimpleMaster_0_avm_m0_address <= x"00";
		AvalonSimpleMaster_0_avm_m0_writedata <= x"00000055";
		AvalonSimpleMaster_0_avm_m0_write <= '1';
		wait until CLK'event and CLK = '1';
		AvalonSimpleMaster_0_avm_m0_write <= '0';
		while (AvalonSimpleMaster_0_avm_m0_waitrequest = '1') loop
			wait for tCLK;
		end loop;
		wait until CLK'event and CLK = '1';
	
		-- set PIO output
		wait for 100 us;
		wait until CLK'event and CLK = '1';
		AvalonSimpleMaster_0_avm_m0_address <= x"00";
		AvalonSimpleMaster_0_avm_m0_writedata <= x"000000AA";
		AvalonSimpleMaster_0_avm_m0_write <= '1';
		wait until CLK'event and CLK = '1';
		AvalonSimpleMaster_0_avm_m0_write <= '0';
		while (AvalonSimpleMaster_0_avm_m0_waitrequest = '1') loop
			wait for tCLK;
		end loop;
		wait until CLK'event and CLK = '1';
	end process;
End Architecture HTWTestBench;