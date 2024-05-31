library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity LEDcounter Is
    Port (
        -- Clk 50 MHz
        Clk50   : in  std_logic;
		
		-- Input KEY[0] & KEY[1]
        KEY0		: in  std_logic;
		KEY1		: in  std_logic;
		
        -- LED Output
        LED    		: out std_logic_vector(7 downto 0) := (others=>'0')
    );
End Entity LEDcounter;

Architecture rtl Of LEDcounter Is

-- Signal declaration
	signal 	rLED    		:	std_logic_vector(7 downto 0) := (others=>'0');
	signal	rKEY0Cnt		:	std_logic_vector(22 downto 0) := (others=>'0');
	signal	rKEY1Cnt		:	std_logic_vector(22 downto 0) := (others=>'0');
	
	type	StateType is
						(
							st0	,
							st0P,
							st1	,
							st1P,
							st2,
							st2P,
							st3,
							st3P,
							st4,
							st4P,
							st5,
							st5P,
							st6,
							st6P,
							st7,
							st7P,
							st8,
							st8P
						);
	signal rState			: StateType;
    
Begin
    -- Output assignment
    LED(0)	<=	not rLED(0);
	LED(1)	<=	not rLED(1);
	LED(2)	<=	not rLED(2);
	LED(3)	<=	not rLED(3);
	LED(4)	<=	not rLED(4);
	LED(5)	<=	not rLED(5);
	LED(6)	<=	not rLED(6);
	LED(7)	<=	not rLED(7);
	
	-- Debounce Button KEY0
	u_rKEY0Cnt : Process (Clk50) Is
	Begin
		if ( rising_edge(Clk50) ) then
			if ( KEY0='1' ) then
				rKEY0Cnt	<= (others=>'0');
			else
				if ( rKEY0Cnt(22)='1' ) then
					rKEY0Cnt	<= rKEY0Cnt;
				else
					rKEY0Cnt	<= rKEY0Cnt + 1;
				end if;
			end if;
		end if;
	End Process u_rKEY0Cnt;
	
	-- Debounce Button KEY1
	u_rKEY1Cnt : Process (Clk50) Is
	Begin
		if ( rising_edge(Clk50) ) then
			if ( KEY1='1' ) then
				rKEY1Cnt	<= (others=>'0');
			else
				if ( rKEY1Cnt(22)='1' ) then
					rKEY1Cnt	<= rKEY1Cnt;
				else
					rKEY1Cnt	<= rKEY1Cnt + 1;
				end if;
			end if;
		end if;
	End Process u_rKEY1Cnt;
	
    -- Process to control the LED Freq based on the tact switch input and reset
	u_rState : Process (Clk50) Is
	Begin
		if (rising_edge(Clk50)) then
			case (rState) is
				when st0	=>
					if (rKEY1Cnt(22) = '1' and rKEY0Cnt(22) = '1') then
						rState		 <=	st0;
					elsif (rKEY1Cnt(22) = '1') then
						rState		 <=	st0P;
					elsif (rKEY0Cnt(22) = '1') then
						rState		 <=	st7P;
					else
						rState		 <=	st0;
					end if;
				when st0P	=>
					if (rKEY1Cnt(22) = '0' and rKEY0Cnt(22) = '0') then
						rState	<=	st1;
						rLED(0) <=	'1';
						rLED(7 downto 1) <=	(others=>'0');
					else
						rState		 <=	st0P;
					end if;
				when st1	=>
					if (rKEY1Cnt(22) = '1' and rKEY0Cnt(22) = '1') then
						rState		 <=	st1;
					elsif (rKEY1Cnt(22) = '1') then
						rState		 <=	st1P;
					elsif (rKEY0Cnt(22) = '1') then
						rState		 <=	st8P;
					else
						rState		 <=	st1;
					end if;
				when st1P	=>
					if (rKEY1Cnt(22) = '0' and rKEY0Cnt(22) = '0') then
						rState	<=	st2;
						rLED(1 downto 0) <=	"11";
						rLED(7 downto 2) <=	(others=>'0');
					else
						rState		 <=	st1P;
					end if;
				when st2	=>
					if (rKEY1Cnt(22) = '1' and rKEY0Cnt(22) = '1') then
						rState		 <=	st2;
					elsif (rKEY1Cnt(22) = '1') then
						rState		 <=	st2P;
					elsif (rKEY0Cnt(22) = '1') then
						rState		 <=	st0P;
					else
						rState		 <=	st2;
					end if;
				when st2P	=>
					if (rKEY1Cnt(22) = '0' and rKEY0Cnt(22) = '0') then
						rState	<=	st3;
						rLED(2 downto 0) <=	"111";
						rLED(7 downto 3) <=	(others=>'0');
					else
						rState		 <=	st2P;
					end if;
				when st3	=>
					if (rKEY1Cnt(22) = '1' and rKEY0Cnt(22) = '1') then
						rState		 <=	st3;
					elsif (rKEY1Cnt(22) = '1') then
						rState		 <=	st3P;
					elsif (rKEY0Cnt(22) = '1') then
						rState		 <=	st1P;
					else
						rState		 <=	st3;
					end if;
				when st3P	=>
					if (rKEY1Cnt(22) = '0' and rKEY0Cnt(22) = '0') then
						rState	<=	st4;
						rLED(3 downto 0) <=	"1111";
						rLED(7 downto 4) <=	(others=>'0');
					else
						rState		 <=	st3P;
					end if;
				when st4	=>
					if (rKEY1Cnt(22) = '1' and rKEY0Cnt(22) = '1') then
						rState		 <=	st4;
					elsif (rKEY1Cnt(22) = '1') then
						rState		 <=	st4P;
					elsif (rKEY0Cnt(22) = '1') then
						rState		 <=	st2P;
					else
						rState		 <=	st4;
					end if;
				when st4P	=>
					if (rKEY1Cnt(22) = '0' and rKEY0Cnt(22) = '0') then
						rState	<=	st5;
						rLED(4 downto 0) <=	"11111";
						rLED(7 downto 5) <=	(others=>'0');
					else
						rState		 <=	st4P;
					end if;
				when st5	=>
					if (rKEY1Cnt(22) = '1' and rKEY0Cnt(22) = '1') then
						rState		 <=	st5;
					elsif (rKEY1Cnt(22) = '1') then
						rState		 <=	st5P;
					elsif (rKEY0Cnt(22) = '1') then
						rState		 <=	st3P;
					else
						rState		 <=	st5;
					end if;
				when st5P	=>
					if (rKEY1Cnt(22) = '0' and rKEY0Cnt(22) = '0') then
						rState	<=	st6;
						rLED(5 downto 0) <=	"111111";
						rLED(7 downto 6) <=	(others=>'0');
					else
						rState		 <=	st5P;
					end if;
				when st6	=>
					if (rKEY1Cnt(22) = '1' and rKEY0Cnt(22) = '1') then
						rState		 <=	st6;
					elsif (rKEY1Cnt(22) = '1') then
						rState		 <=	st6P;
					elsif (rKEY0Cnt(22) = '1') then
						rState		 <=	st4P;
					else
						rState		 <=	st6;
					end if;
				when st6P	=>
					if (rKEY1Cnt(22) = '0' and rKEY0Cnt(22) = '0') then
						rState	<=	st7;
						rLED(6 downto 0) <=	"1111111";
						rLED(7) <=	'0';
					else
						rState		 <=	st6P;
					end if;
				when st7	=>
					if (rKEY1Cnt(22) = '1' and rKEY0Cnt(22) = '1') then
						rState		 <=	st7;
					elsif (rKEY1Cnt(22) = '1') then
						rState		 <=	st7P;
					elsif (rKEY0Cnt(22) = '1') then
						rState		 <=	st5P;
					else
						rState		 <=	st7;
					end if;
				when st7P	=>
					if (rKEY1Cnt(22) = '0' and rKEY0Cnt(22) = '0') then
						rState	<=	st8;
						rLED(7 downto 0) <=	"11111111";
					else
						rState		 <=	st7P;
					end if;
				when st8	=>
					if (rKEY1Cnt(22) = '1' and rKEY0Cnt(22) = '1') then
						rState		 <=	st8;
					elsif (rKEY1Cnt(22) = '1') then
						rState		 <=	st8P;
					elsif (rKEY0Cnt(22) = '1') then
						rState		 <=	st6P;
					else
						rState		 <=	st8;
					end if;
				when st8P	=>
					if (rKEY1Cnt(22) = '0' and rKEY0Cnt(22) = '0') then
						rState	<=	st0;
						rLED(7 downto 0) <=	(others=>'0');
					else
						rState		 <=	st8P;
					end if;
			end case;
		end if;
	end process u_rState;

End Architecture rtl;