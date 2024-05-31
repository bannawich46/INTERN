library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
USE STD.TEXTIO.ALL;

Entity TbLEDonoff1s is
End Entity TbLEDonoff1s;

Architecture HTWTestBench of TbLEDonoff1s is
    
    signal Rst		: STD_LOGIC := '1';
	signal Clk50	: STD_LOGIC;
	
    signal LED0		: STD_LOGIC;
	
	constant tClk	: time := 20 ns;

    component LEDonoff1s is
    Port (
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
	
    u_LEDonoff1s : LEDonoff1s
	Port map 
	(
        Rst		=> Rst,
		Clk50	=> Clk50,
        LED0	=> LED0
    );

    u_Test : process
    Begin
		wait until rising_edge(Clk50);
        -- Test case 1: Reset not pressed
        Rst <= '1';
        wait for 5000 ns;

        -- Test case 2: Press Reset
        Rst <= '0';
        wait for 2000 ns;

        -- Test case 3: Release Reset
        Rst <= '1';

        -- End of test
        wait;
    End process u_Test;
End Architecture HTWTestBench;