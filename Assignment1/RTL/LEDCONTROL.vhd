library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity LEDCONTROL Is
	Port (
		-- Clk 50 MHz
		CLK50		: in  STD_LOGIC;
		RST_L		: in  STD_LOGIC;

		-- Debounced KEY0 & KEY1 One Shot
		iKEY0_ONESHOT	: in  STD_LOGIC;
		iKEY1_ONESHOT	: in  STD_LOGIC;

		-- LED[7: 0]
		LED_L		: out STD_LOGIC_VECTOR (7 downto 0)
	);
End Entity LEDCONTROL;

Architecture RTL Of LEDCONTROL Is
	signal wCOUNTER8BITS	: STD_LOGIC_VECTOR (7 downto 0) := (others => '0');

Begin
	-- Output Assignment
	LED_L	<=	not wCOUNTER8BITS;

	u_wCOUNTER8BITS : Process (CLK50,RST_L) Is
	Begin
		if (RST_L = '0') then
			wCOUNTER8BITS	<=	(others => '0');
		else
			if ( rising_edge(CLK50) ) then
				if (iKEY0_ONESHOT = '1' and iKEY1_ONESHOT = '1') then
					wCOUNTER8BITS	<=	wCOUNTER8BITS;
				elsif (iKEY0_ONESHOT = '1') then
					wCOUNTER8BITS	<=	wCOUNTER8BITS - '1';
				elsif (iKEY1_ONESHOT = '1') then
					wCOUNTER8BITS	<=	wCOUNTER8BITS + '1';
				else
					wCOUNTER8BITS	<=	wCOUNTER8BITS;
				end if;
			end if;
		end if;
	End Process u_wCOUNTER8BITS;

End Architecture RTL;