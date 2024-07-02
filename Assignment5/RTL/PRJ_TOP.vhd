library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

Entity PRJ_TOP is
	Port
	(
		CLK	:	in  std_logic;
		RST	:	in  std_logic;
		LED	: 	inout std_logic_vector(7 downto 0)
	);
End PRJ_TOP;

Architecture RTL of PRJ_TOP is 

	Component Assignment5 is
		port (
			clk_clk                     : in  std_logic                    := 'X'; -- clk
			reset_reset_n               : in  std_logic                    := 'X'; -- reset_n
			pwm_0_conduit_end_writedata : out std_logic_vector(7 downto 0)         -- writedata
		);
	End component Assignment5;


signal	wLED	:  std_logic_vector(7 downto 0);

Begin

	u_Assignment5: Assignment5
	Port map	(
		clk_clk									=> CLK,
		reset_reset_n							=> RST,
		pwm_0_conduit_end_writedata				=> wLED
	);
	
	LED <= not wLED;

End RTL;