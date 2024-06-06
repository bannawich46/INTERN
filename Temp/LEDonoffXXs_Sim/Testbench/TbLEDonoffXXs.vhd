library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
USE STD.TEXTIO.ALL;

Entity TbLEDonoffXXs is
End Entity TbLEDonoffXXs;

Architecture HTWTestBench of TbLEDonoffXXs is
    
    signal Rst		: STD_LOGIC := '1';
	signal TSW		: STD_LOGIC := '1';
	signal Clk50	: STD_LOGIC;
	
    signal LED0		: STD_LOGIC;
	
	constant tClk	: time := 20 ns;

    component LEDonoffXXs is
    Port (
        -- Clk 50 MHz
        Clk50   : in  std_logic;
		
		-- Input KEY[0] & KEY[1]
        Rst		: in  std_logic;
		TSW		: in  std_logic;
		
        -- LED Output
        LED0    : out std_logic
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
	
    u_LEDonoffXXs : LEDonoffXXs
	Port map 
	(
		Clk50	=> Clk50,
		Rst		=> Rst,
		TSW		=> TSW,
        LED0	=> LED0
    );

    u_Test : process
    Begin
		wait until rising_edge(Clk50);
        -- Test case 1: Reset not pressed
        Rst <= '1';
        wait for 1000 ns;

        -- Test case 2: Tact Switch pressed
        TSW <= '0';
        wait for 1000 ns;
		TSW <= '1';
		wait for 2000 ns;
		TSW <= '0';
        wait for 1000 ns;
		TSW <= '1';
		wait for 2000 ns;
		TSW <= '0';
        wait for 1000 ns;
		TSW <= '1';
		wait for 2000 ns;
		
		-- Test case 3: Reset pressed
		Rst <= '0';
		wait for 1000 ns;
		Rst <= '1';
		
        -- End of test
        wait;
    End process u_Test;
End Architecture HTWTestBench;