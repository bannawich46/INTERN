library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

Entity PRJ_TOP is
	Port
	(
		CLK	:	in  std_logic;
		RST	:	in  std_logic;
		SW	:	inout  std_logic_vector(0 downto 0);
		LED	: 	inout std_logic_vector(7 downto 0)
	);
End PRJ_TOP;

Architecture RTL of PRJ_TOP is 

	Component Assignment4 is
		Port (
			clk_clk						: in  std_logic;
			reset_reset_n				: in  std_logic;
			pio_0_conduit_end_export	: inout std_logic_vector(7 downto 0);
			pio_1_conduit_end_export	: inout std_logic_vector(0 downto 0)
		);
	End component Assignment4;


signal	wLED	:  std_logic_vector(7 downto 0);

Begin

	u_Assignment4: Assignment4
	Port map	(
		clk_clk									=> CLK,
		reset_reset_n							=> RST,
		pio_0_conduit_end_export				=> wLED,
		pio_1_conduit_end_export				=> SW
	);
	
	LED <= not wLED;

End RTL;