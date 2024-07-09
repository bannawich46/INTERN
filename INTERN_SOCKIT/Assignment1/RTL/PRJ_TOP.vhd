library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity PRJ_TOP Is
	Port (
		-- Clk 50 MHz
		CLK50		: in  STD_LOGIC;
		RST_L		: in  STD_LOGIC;

		-- LED Output
		LED_L		: out STD_LOGIC_VECTOR( 3 downto 0 ) := (others => '0')
	);
End Entity PRJ_TOP;

Architecture RTL Of PRJ_TOP Is

	-- Signal declaration
	signal	wCLK1			: STD_LOGIC;
	signal	wLED_L			: STD_LOGIC_VECTOR( 3 downto 0 ) := (others => '0');

	Component CLKDIVIDER Is
	Port 
	(
		CLK50		: in  STD_LOGIC;
		RST_L		: in  STD_LOGIC;
		iCLK1		: out STD_LOGIC
	);
	End Component CLKDIVIDER;

Begin
	-- Output assignment
	wLED_L(0)	<=	wCLK1;
	LED_L		<=	wLED_L;

	u_CLKDIVIDER : CLKDIVIDER
	Port map
	(
		CLK50	=>	CLK50	,
		RST_L	=>	RST_L	,
		iCLK1	=>	wCLK1
	);

End Architecture RTL;