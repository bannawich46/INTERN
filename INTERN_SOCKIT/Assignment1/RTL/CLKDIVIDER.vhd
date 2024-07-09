library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity CLKDIVIDER is
	Port (
		CLK50		: in  STD_LOGIC;
		RST_L		: in  STD_LOGIC;
		iCLK1		: out STD_LOGIC
	);
End CLKDIVIDER;

Architecture RTL Of CLKDIVIDER Is
	constant kDIV_FACTOR	: STD_LOGIC_VECTOR( 24 downto 0 ) := "1" & x"7D7840"; -- 50 MHz / 1 Hz / 2 = 25 MHz
	signal wCLKCNT			: STD_LOGIC_VECTOR( 24 downto 0 ) := (others => '0');
	signal wCLK1			: STD_LOGIC := '0';
\
Begin
	-- Output assignment
	iCLK1	<=	wCLK1;

	u_wCLK1 : Process (CLK50,RST_L) Is
	Begin
		if (RST_L = '0') then
			wCLKCNT	<=	(others => '0');
			wCLK1	<=	'0';
		else
			if ( rising_edge(CLK50) ) then
				if (wCLKCNT = (kDIV_FACTOR - '1')) then
					wCLKCNT	<=	(others => '0');
					wCLK1	<=	not wCLK1;
				else
					wCLKCNT	<=	wCLKCNT + '1';
				end if;
			end if;
		end if;
	End Process u_wCLK1;

End Architecture RTL;