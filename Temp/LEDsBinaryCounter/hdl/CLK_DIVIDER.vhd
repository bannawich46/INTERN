library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity CLK_DIVIDER is
    Port (
        CLK50		: in STD_LOGIC;
		RST_L		: in STD_LOGIC;
        iCLK1K		: out STD_LOGIC
    );
End CLK_DIVIDER;

Architecture rtl Of CLK_DIVIDER Is
    constant kDIV_FACTOR	: STD_LOGIC_VECTOR( 15 downto 0 ) := x"61A8"; -- 50 MHz / 1 kHz / 2 = 25000
    signal wCLKCNT			: STD_LOGIC_VECTOR( 15 downto 0 );
    signal wCLK1K			: STD_LOGIC := '0';
	
Begin
	-- Output assignment
	CLK1K <= wCLK1K;
	
    u_wCLK1K : Process (CLK50,RST_L) Is
    Begin
		if (RST_L = '0') then
			wCLKCNT	<=	(others => '0');
			wCLK1K	<=	'0';
		else
			if ( rising_edge(CLK50) ) then
				if (wCLKCNT = (kDIV_FACTOR - '1')) then
					wCLKCNT	<=	(others => '0');
					wCLK1K	<=	not wCLK1K;
				else
					wCLKCNT	<=	wCLKCNT + '1';
				end if;
			end if;
        end if;
    End Process u_wCLK1K;
End Architecture rtl;