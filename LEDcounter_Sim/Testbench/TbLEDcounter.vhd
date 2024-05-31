library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
USE STD.TEXTIO.ALL;

Entity TbLEDcounter is
End Entity TbLEDcounter;

Architecture HTWTestBench of TbLEDcounter is
    
    signal KEY0		: STD_LOGIC := '1';
	signal KEY1		: STD_LOGIC := '1';
	signal Clk50	: STD_LOGIC;
	
    signal LED		: std_logic_vector( 7 downto 0 );
	
	constant tClk	: time := 20 ns;

    component LEDcounter is
    Port (
        -- Clk 50 MHz
        Clk50   : in  std_logic;
		
		-- Input KEY[0] & KEY[1]
        KEY0		: in  std_logic;
		KEY1		: in  std_logic;
		
        -- LED Output
        LED    : out std_logic_vector( 7 downto 0 )
    );
    end component;

Begin
	
	u_Clk50 : Process
	Begin
		Clk50		<= '1';
		wait for tClk/2;
		Clk50		<= '0';
		wait for tClk/2;
	End Process u_Clk50;
	
    u_LEDcounter : LEDcounter
	Port map 
	(
		Clk50	=> Clk50,
		KEY0	=> KEY0,
		KEY1	=> KEY1,
        LED		=> LED
    );

    u_Test : process
    Begin
		wait until rising_edge(Clk50);
        -- Test case 1: KEY1 pressed
		for i in 1 to 9 loop
            KEY1 <= '0';
			wait for 20 ns;
			KEY1 <= '1';
			wait for 20 ns;
        end loop;

        -- Test case 2: KEY0 pressed
        for i in 1 to 9 loop
            KEY0 <= '0';
			wait for 20 ns;
			KEY0 <= '1';
			wait for 20 ns;
        end loop;
		
		-- Test case 3: Random Press each KEY
        KEY1 <= '0';
		wait for 20 ns;
		KEY1 <= '1';
		wait for 20 ns;
		KEY1 <= '0';
		wait for 20 ns;
		KEY1 <= '1';
		wait for 20 ns;
		KEY0 <= '0';
		wait for 20 ns;
		KEY0 <= '1';
		wait for 20 ns;
		
		-- Test case 4: Press Both KEY @ the same time
        KEY1 <= '0';
		KEY0 <= '0';
		wait for 20 ns;
		KEY0 <= '1';
		wait for 20 ns;
		KEY1 <= '1';
		
        -- End of test
        wait;
    End process u_Test;
End Architecture HTWTestBench;