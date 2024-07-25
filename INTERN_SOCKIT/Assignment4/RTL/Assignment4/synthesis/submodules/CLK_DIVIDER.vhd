library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity CLK_DIVIDER is
	Port (
		CLK50			: in  std_logic;
		RST				: in  std_logic;
		iCLK_ONESHOT	: out std_logic
	);
End CLK_DIVIDER;

Architecture RTL Of CLK_DIVIDER Is
	-- constant kDIV_FACTOR	: std_logic_vector( 11 downto 0 ) := x"9C4"; -- 50 MHz / 2.5 kHz / 2 = 10 Hz
	constant kDIV_FACTOR	: std_logic_vector( 11 downto 0 ) := x"002"; -- 50 MHz / 2  / 2 = 12.5 MHz
	signal wCLKCNT			: std_logic_vector( 11 downto 0 ) := (others => '0');
	signal wCLK_ONESHOT	: std_logic := '0';

Begin
	-- Output assignment
	iCLK_ONESHOT	<=	wCLK_ONESHOT;

	Process (CLK50,RST) Is
	Begin
		if (RST = '1') then
			wCLKCNT	<=	(others => '0');
			wCLK_ONESHOT	<=	'0';
		else
			if ( rising_edge(CLK50) ) then
				if (wCLKCNT = (kDIV_FACTOR - '1')) then
					wCLK_ONESHOT	<=	'1';
					wCLKCNT	<=	(others => '0');
				else
					wCLK_ONESHOT	<=	'0';
					wCLKCNT	<=	wCLKCNT + '1';
				end if;
			end if;
		end if;
	End Process;

End Architecture RTL;