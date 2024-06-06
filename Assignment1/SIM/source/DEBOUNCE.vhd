library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity DEBOUNCE Is
	Port (
		-- Clk 50 MHz & Clk 1 kHz
		CLK50		: in  STD_LOGIC;
		iCLK1K		: in  STD_LOGIC;
		RST_L		: in  STD_LOGIC;

		-- KEY0 & KEY1 Input
		KEY0		: in  STD_LOGIC;
		KEY1		: in  STD_LOGIC;

		-- Debounced KEY0 & KEY1 One Shot
		iKEY0_ONESHOT	: out STD_LOGIC;
		iKEY1_ONESHOT	: out STD_LOGIC
	);
End Entity DEBOUNCE;

Architecture RTL Of DEBOUNCE Is
	signal wKEY0_LASTSTATE			: STD_LOGIC := '1';
	signal wKEY1_LASTSTATE			: STD_LOGIC := '1';

	constant kCOUNTER4BITS_CONST	: STD_LOGIC_VECTOR (3 downto 0) := x"9";
	signal wCOUNTER4BITS_0			: STD_LOGIC_VECTOR( 3 downto 0 ) := (others => '0');
	signal wCOUNTER4BITS_1			: STD_LOGIC_VECTOR( 3 downto 0 ) := (others => '0');

	signal wCOUNTER4BITS_0_DFF		: STD_LOGIC_VECTOR( 3 downto 0 ) := (others => '0');	-- D Flip Flop
	signal wCOUNTER4BITS_1_DFF		: STD_LOGIC_VECTOR( 3 downto 0 ) := (others => '0');	-- D Flip Flop

	signal wKEY0_ONESHOT			: STD_LOGIC := '0';
	signal wKEY1_ONESHOT			: STD_LOGIC := '0';

Begin
	-- Output assignment
	iKEY0_ONESHOT	<=	wKEY0_ONESHOT;
	iKEY1_ONESHOT	<=	wKEY1_ONESHOT;

	u_wKEY0_LASTSTATE : Process (iCLK1K,RST_L) Is
	Begin
		if (RST_L = '0') then
			wKEY0_LASTSTATE	<=	'1';
		else
			if ( rising_edge(iCLK1K) ) then
				wKEY0_LASTSTATE	<=	KEY0;
			end if;
		end if;
	End Process u_wKEY0_LASTSTATE;

	u_wKEY1_LASTSTATE : Process (iCLK1K,RST_L) Is
	Begin
		if (RST_L = '0') then
			wKEY1_LASTSTATE	<=	'1';
		else
			if ( rising_edge(iCLK1K) ) then
				wKEY1_LASTSTATE	<=	KEY1;
			end if;
		end if;
	End Process u_wKEY1_LASTSTATE;

	u_wCOUNTER4BITS_0 : Process (iCLK1K,RST_L) Is
	Begin
		if (RST_L = '0') then
			wCOUNTER4BITS_0	<=	(others => '0');
		else
			if ( rising_edge(iCLK1K) ) then
				if (KEY0 /= wKEY0_LASTSTATE) then
					wCOUNTER4BITS_0 <= (others => '0');
				else
					if (wCOUNTER4BITS_0 = kCOUNTER4BITS_CONST) then
						wCOUNTER4BITS_0 <= wCOUNTER4BITS_0;
					else
						wCOUNTER4BITS_0 <= wCOUNTER4BITS_0 + '1';
					end if;
				end if;
			end if;
		end if;
	End Process u_wCOUNTER4BITS_0;

	u_wCOUNTER4BITS_1 : Process (iCLK1K,RST_L) Is
	Begin
		if (RST_L = '0') then
			wCOUNTER4BITS_1	<=	(others => '0');
		else
			if ( rising_edge(iCLK1K) ) then
				if (KEY1 /= wKEY1_LASTSTATE) then
					wCOUNTER4BITS_1 <= (others => '0');
				else
					if (wCOUNTER4BITS_1 = kCOUNTER4BITS_CONST) then
						wCOUNTER4BITS_1 <= wCOUNTER4BITS_1;
					else
						wCOUNTER4BITS_1 <= wCOUNTER4BITS_1 + '1';
					end if;
				end if;
			end if;
		end if;
	End Process u_wCOUNTER4BITS_1;

	u_wCOUNTER4BITS_0_DFF : Process (CLK50,RST_L) Is
	Begin
		if (RST_L = '0') then
			wCOUNTER4BITS_0_DFF	<=	(others => '0');
		else
			if ( rising_edge(CLK50) ) then
				wCOUNTER4BITS_0_DFF	<=	wCOUNTER4BITS_0;
			end if;
		end if;
	End Process u_wCOUNTER4BITS_0_DFF;

	u_wCOUNTER4BITS_1_DFF : Process (CLK50,RST_L) Is
	Begin
		if (RST_L = '0') then
			wCOUNTER4BITS_1_DFF	<=	(others => '0');
		else
			if ( rising_edge(CLK50) ) then
				wCOUNTER4BITS_1_DFF	<=	wCOUNTER4BITS_1;
			end if;
		end if;
	End Process u_wCOUNTER4BITS_1_DFF;

	u_wKEY0_ONESHOT : Process (CLK50,RST_L) Is
	Begin
		if (RST_L = '0') then
			wKEY0_ONESHOT	<=	'0';
		else
			if ( rising_edge(CLK50) ) then
				if (wCOUNTER4BITS_0 = kCOUNTER4BITS_CONST and wCOUNTER4BITS_0_DFF = kCOUNTER4BITS_CONST-'1' and wKEY0_LASTSTATE = '0') then
					wKEY0_ONESHOT <= '1';
				else
					wKEY0_ONESHOT <= '0';
				end if;
			end if;
		end if;
	End Process u_wKEY0_ONESHOT;

	u_wKEY1_ONESHOT : Process (CLK50,RST_L) Is
	Begin
		if (RST_L = '0') then
			wKEY1_ONESHOT	<=	'0';
		else
			if ( rising_edge(CLK50) ) then
				if (wCOUNTER4BITS_1 = kCOUNTER4BITS_CONST and wCOUNTER4BITS_1_DFF = kCOUNTER4BITS_CONST-'1' and wKEY1_LASTSTATE = '0') then
					wKEY1_ONESHOT <= '1';
				else
					wKEY1_ONESHOT <= '0';
				end if;
			end if;
		end if;
	End Process u_wKEY1_ONESHOT;

End Architecture RTL;