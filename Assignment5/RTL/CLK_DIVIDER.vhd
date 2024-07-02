library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.FRQ_PKG.ALL;

Entity CLK_DIVIDER is
	Port (
		CLK50M			: in  STD_LOGIC;
		RST_L			: in  STD_LOGIC;
		iFREQ			: in  STD_LOGIC_VECTOR( 3 downto 0 );
		iCLK_ONESHOT	: out STD_LOGIC
	);
End CLK_DIVIDER;

Architecture RTL Of CLK_DIVIDER Is
	signal kDIV_FACTOR		: STD_LOGIC_VECTOR( 18 downto 0 );
	signal wCLKCNT			: STD_LOGIC_VECTOR( 18 downto 0 ) := (others => '0');
	signal wCLK_ONESHOT		: STD_LOGIC := '0';

Begin
	-- Output assignment
	iCLK_ONESHOT	<=	wCLK_ONESHOT;

	Process(CLK50M,RST_L)
	Begin
		if (RST_L = '0') then
			kDIV_FACTOR <= kFREQ_DEFAULT;
		elsif ( rising_edge(CLK50M) ) then
			case iFREQ is
				when x"1" => kDIV_FACTOR <= kFREQ_1HZ;
				when x"2" => kDIV_FACTOR <= kFREQ_2HZ;
				when x"3" => kDIV_FACTOR <= kFREQ_5HZ;
				when x"4" => kDIV_FACTOR <= kFREQ_10HZ;
				when x"5" => kDIV_FACTOR <= kFREQ_20HZ;
				when x"6" => kDIV_FACTOR <= kFREQ_50HZ;
				when x"7" => kDIV_FACTOR <= kFREQ_100HZ;
				when x"8" => kDIV_FACTOR <= kFREQ_200HZ;
				when x"9" => kDIV_FACTOR <= kFREQ_500HZ;
				when x"A" => kDIV_FACTOR <= kFREQ_2KHZ;
				when x"B" => kDIV_FACTOR <= kFREQ_5KHZ;
				when x"C" => kDIV_FACTOR <= kFREQ_10KHZ;
				when x"D" => kDIV_FACTOR <= kFREQ_20KHZ;
				when x"E" => kDIV_FACTOR <= kFREQ_50KHZ;
				when x"F" => kDIV_FACTOR <= kFREQ_100KHZ;
				when others => kDIV_FACTOR <= kFREQ_DEFAULT; -- Default value
			End case;
		end if;
	End process;
	
	Process (CLK50M,RST_L) Is
	Begin
		if (RST_L = '0') then
			wCLKCNT	<=	(others => '0');
			wCLK_ONESHOT	<=	'0';
		else
			if ( rising_edge(CLK50M) ) then
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