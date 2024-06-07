library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity PRJ_TOP Is
	Port (
		-- Clk 50 MHz
		CLK50		: in  STD_LOGIC;
		RST_L		: in  STD_LOGIC;

		-- Input KEY[0] & KEY[1]
		KEY0_L		: in  STD_LOGIC;
		KEY1_L		: in  STD_LOGIC;

		-- LED Output
		LED_L		: out STD_LOGIC_VECTOR(7 downto 0) := (others=>'0')
	);
End Entity PRJ_TOP;

Architecture RTL Of PRJ_TOP Is

	-- Signal declaration
	signal	wCLK1K			: STD_LOGIC;
	signal	wKEY0_ONESHOT	: STD_LOGIC;
	signal	wKEY1_ONESHOT	: STD_LOGIC;
	signal	wLED_L			: STD_LOGIC_VECTOR (7 downto 0);

	Component CLKDIVIDER Is
	Port 
	(
		CLK50		: in  STD_LOGIC;
		RST_L		: in  STD_LOGIC;
		iCLK1K		: out STD_LOGIC
	);
	End Component CLKDIVIDER;

	Component DEBOUNCE Is
	Port 
	(
		-- Clk 50 MHz & Clk 1 kHz
		CLK50		: in  STD_LOGIC;
		iCLK1K		: in  STD_LOGIC;
		RST_L		: in STD_LOGIC;

		-- KEY0 & KEY1 Input
		KEY0_L		: in  STD_LOGIC;
		KEY1_L		: in  STD_LOGIC;

		-- Debounced KEY0 & KEY1 One Shot
		iKEY0_ONESHOT	: out STD_LOGIC;
		iKEY1_ONESHOT	: out STD_LOGIC
	);
	End Component DEBOUNCE;

	Component LEDCONTROL Is
	Port 
	(
		-- Clk 50 MHz
		CLK50		: in  STD_LOGIC;
		RST_L		: in  STD_LOGIC;

		-- Debounced KEY0 & KEY1 One Shot
		iKEY0_ONESHOT	: in  STD_LOGIC;
		iKEY1_ONESHOT	: in  STD_LOGIC;

		-- LED[7: 0]
		LED_L		: out STD_LOGIC_VECTOR (7 downto 0)
	);
	End Component LEDCONTROL;

Begin
	-- Output assignment
	LED_L	<=	wLED_L;

	u_CLKDIVIDER : CLKDIVIDER
	Port map
	(
		CLK50	=>	CLK50	,
		RST_L	=>	RST_L	,
		iCLK1K	=>	wCLK1K
	);

	u_DEBOUNCE : DEBOUNCE
	Port map
	(
		CLK50	=>	CLK50	,
		iCLK1K	=>	wCLK1K	,
		RST_L	=>	RST_L	,

		KEY0_L	=>	KEY0_L	,
		KEY1_L	=>	KEY1_L	,

		iKEY0_ONESHOT	=>	wKEY0_ONESHOT	,
		iKEY1_ONESHOT	=>	wKEY1_ONESHOT	
	);

	u_LEDCONTROL : LEDCONTROL
	Port map
	(
		CLK50	=>	CLK50	,
		RST_L	=>	RST_L	,

		iKEY0_ONESHOT	=>	wKEY0_ONESHOT	,
		iKEY1_ONESHOT	=>	wKEY1_ONESHOT	,

		LED_L	=>	wLED_L
	);

End Architecture RTL;