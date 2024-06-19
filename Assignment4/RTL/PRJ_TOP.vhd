library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

Entity PRJ_TOP is
	Port
	(
		CLK	:	in  std_logic;
		RST	:	in  std_logic;
		SW	:	in  std_logic;
		LED	: 	out std_logic_vector(7 downto 0)
	);
End PRJ_TOP;

Architecture RTL of PRJ_TOP is 

	Component Assignment4 is
		Port (
			clk_clk                              : in  std_logic                     := 'X';             -- clk
			reset_reset_n                        : in  std_logic                     := 'X';             -- reset_n
			pio_0_conduit_end_readdata           : out std_logic_vector(7 downto 0)                    -- readdata
		);
	End component Assignment4;


signal	wLED	:  std_logic_vector(7 downto 0);

Begin

	u_Assignment4: Assignment4
	Port map	(
		clk_clk									=> CLK,
		reset_reset_n							=> RST,
		pio_0_conduit_end_readdata				=> wLED
	);
	
	LED <= not wLED;

End RTL;