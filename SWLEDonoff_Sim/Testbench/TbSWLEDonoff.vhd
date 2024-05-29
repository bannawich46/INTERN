library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
USE STD.TEXTIO.ALL;

Entity TbSWLEDonoff is
End Entity TbSWLEDonoff;

Architecture HTWTestBench of TbSWLEDonoff is
    
	signal SW0		: STD_LOGIC := '0';
    signal Rst		: STD_LOGIC := '1';
	signal Clk50	: STD_LOGIC;
	
    signal LED0		: STD_LOGIC;
	
	constant tClk	: time := 20 ns;

    component SWLEDonoff is
    Port (
        SW0     : in  std_logic;
        Rst     : in  std_logic;  -- Active-low reset
        Clk50   : in  std_logic;
        
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
	
    u_SWLEDonoff : SWLEDonoff
	Port map 
	(
        SW0		=> SW0,
        Rst		=> Rst,
		Clk50	=> Clk50,
        LED0	=> LED0
    );

    u_Test : process
    Begin
		wait until rising_edge(Clk50);
        -- Test case 1: Switch off, Reset not pressed
        SW0 <= '0';
        Rst <= '1';
        wait for 100 ns;
        --assert (LED0 = '0') report "Test Case 1 Failed" severity failure;

        -- Test case 2: Switch on, Reset not pressed
        SW0 <= '1';
        wait for 100 ns;
        --assert (LED0 = '1') report "Test Case 2 Failed" severity failure;

        -- Test case 3: Press Reset
        Rst <= '0';
        wait for 100 ns;
        --assert (LED0 = '0') report "Test Case 3 Failed" severity failure;

        -- Test case 4: Release Reset
        Rst <= '1';
        wait for 100 ns;
        --assert (LED0 = '0') report "Test Case 4 Failed" severity failure;

        -- Test case 5: Switch off while reset is latched
        SW0 <= '0';
        wait for 100 ns;
        --assert (LED0 = '0') report "Test Case 5 Failed" severity failure;

        -- Test case 6: Switch on while reset is latched
        SW0 <= '1';
        wait for 100 ns;
        --assert (LED0 = '0') report "Test Case 6 Failed" severity failure;

        -- End of test
        wait;
    End process u_Test;
End Architecture HTWTestBench;