library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

Entity PRJ_TOP is
	Port
	(
		CLK	:	in  std_logic;
		RST	:	in  std_logic;
		SW		:	in  std_logic;
		LED	: 	out std_logic_vector(7 downto 0)
	);
End PRJ_TOP;

Architecture rtl of PRJ_TOP is 

	Component Assignment3 is
		Port (
			clk_clk					: in  std_logic := '0';
			reset_reset_n				: in  std_logic := '1';
			pio_0_external_connection_export	: in  std_logic := '1';
			pio_1_external_connection_export	: out std_logic_vector(7 downto 0)        
		);
	End component Assignment3;


signal	wSW		:  std_logic;
signal	wLED	:  std_logic_vector(7 downto 0);

Begin
	wSW <= not SW;

	u_Assignment3: Assignment3
	Port map	(
		clk_clk					=> CLK,
		reset_reset_n				=> RST,
		pio_0_external_connection_export	=> wSW,
		pio_1_external_connection_export	=> wLED
	);
	
	LED <= not wLED;

End rtl;