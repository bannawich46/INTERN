library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use STD.TEXTIO.ALL;

Entity TBPRJ_TOP is
End Entity TBPRJ_TOP;

Architecture HTWTestBench of TBPRJ_TOP is
	constant kTCLK		: time := 20 ns;
	signal wCLK50		: STD_LOGIC := '0';
	signal wRST_L		: STD_LOGIC := '1';
	signal wKEY0		: STD_LOGIC := '1';
	signal wKEY1		: STD_LOGIC := '1';
	signal wLED_L		: STD_LOGIC_VECTOR(7 downto 0) := (others=>'0');

	signal	wCLK1K			: STD_LOGIC;
	signal	wKEY0_ONESHOT	: STD_LOGIC;
	signal	wKEY1_ONESHOT	: STD_LOGIC;

	Component PRJ_TOP is
	Port (
		-- Clk 50 MHz
		CLK50		: in  STD_LOGIC;
		RST_L		: in  STD_LOGIC;

		-- Input KEY[0] & KEY[1]
		KEY0		: in  STD_LOGIC;
		KEY1		: in  STD_LOGIC;

		-- LED Output
		LED_L		: out STD_LOGIC_VECTOR(7 downto 0) := (others=>'0')
	);
	End component;

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
		KEY0		: in  STD_LOGIC;
		KEY1		: in  STD_LOGIC;

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
	
	u_wCLK50 : Process
	Begin
		wCLK50		<= '1';
		wait for kTCLK/2;
		wCLK50		<= '0';
		wait for kTCLK/2;
	End Process u_wCLK50;

	u_PRJ_TOP : PRJ_TOP
	Port map 
	(
		CLK50	=>	wCLK50	,
		RST_L	=>	wRST_L	,
		KEY0	=>	wKEY0	,
		KEY1	=>	wKEY1	,
		LED_L	=>	wLED_L
	);
	
	u_CLKDIVIDER : CLKDIVIDER
	Port map
	(
		CLK50	=>	wCLK50	,
		RST_L	=>	wRST_L	,
		iCLK1K	=>	wCLK1K
	);

	u_DEBOUNCE : DEBOUNCE
	Port map
	(
		CLK50	=>	wCLK50	,
		iCLK1K	=>	wCLK1K	,
		RST_L	=>	wRST_L	,

		KEY0	=>	wKEY0	,
		KEY1	=>	wKEY1	,

		iKEY0_ONESHOT	=>	wKEY0_ONESHOT	,
		iKEY1_ONESHOT	=>	wKEY1_ONESHOT	
	);

	u_LEDCONTROL : LEDCONTROL
	Port map
	(
		CLK50	=>	wCLK50	,
		RST_L	=>	wRST_L	,

		iKEY0_ONESHOT	=>	wKEY0_ONESHOT	,
		iKEY1_ONESHOT	=>	wKEY1_ONESHOT	,

		LED_L	=>	wLED_L
	);

	u_Test : process
	Begin
		wRST_L	<=	'0';
		wait for 1 us;
		wRST_L	<=	'1';
		wait for 1 us;
		
		wait until rising_edge(wCLK50);
		-- Test case 1: KEY0 pressed
		for i in 1 to 10 loop
			wKEY0 <= '0';
			wait for 10 us;
			wKEY0 <= '1';
			wait for 10 us;
		end loop;

		-- Test case 2: KEY1 pressed
		for i in 1 to 8 loop
			wKEY1 <= '0';
			wait for 20 us;
			wKEY1 <= '1';
			wait for 10 us;
		end loop;

		-- Test case 3: RESET
		wRST_L	<=	'0';
		wait for 10 us;
		wRST_L	<=	'1';
		wait for 10 us;

		-- Test case 4: KEY0 & KEY1 pressed at the same time
		wKEY0 <= '0';
		wKEY1 <= '0';
		wait for 10 us;
		wKEY0 <= '1';
		wKEY1 <= '1';
		wait for 10 us;

        -- End of test
        wait;
    End process u_Test;
End Architecture HTWTestBench;