library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity LEDonoffXXs Is
    Port (
        -- Clk 50 MHz
        Clk50   : in  std_logic;
		
		-- Input KEY[0] & KEY[1]
        Rst		: in  std_logic;
		TSW		: in  std_logic;
		
        -- LED Output
        LED0    : out std_logic
    );
End Entity LEDonoffXXs;

Architecture rtl Of LEDonoffXXs Is

-- Signal declaration
	signal 	rLED0    		:	std_logic;
	constant MaxCnt			: 	std_logic_vector(7 downto 0) := x"32"; -- 50 for 1us at 50MHz
	constant MaxCnt2		: 	std_logic_vector(7 downto 0) := x"19"; -- 25 for 0.5us at 50MHz
	signal	rLED0Cnt		:	std_logic_vector(25 downto 0) := (others=>'0');
	
	type	StateType is
						(
							st0	,
							st0P,
							st1	,
							st1P,
							st2,
							st2P
						);
	signal rState			: StateType;
    
Begin
    -- Output assignment
    LED0	<=	not rLED0;
	
    -- Process to control the LED Freq based on the tact switch input and reset
    
	u_rState : Process (Clk50) Is
	Begin
		if (rising_edge(Clk50)) then
			if ( Rst='0' ) then
				rState		<=	st0;	
			else
				case (rState) is
					when st0	=>
						if (TSW = '0') then
							rState		 <=	st0P;
						else
							rState	<=	st0;
						end if;
					when st0P	=>
						if (TSW = '0') then
							rState		 <=	st0P;
						else
							rState	<=	st1;
						end if;
					when st1	=>
						if (TSW = '0') then
							rState		 <=	st1P;
						else
							rState	<=	st1;
						end if;
					when st1P	=>
						if (TSW = '0') then
							rState		 <=	st1P;
						else
							rState	<=	st2;
						end if;
					when st2	=>
						if (TSW = '0') then
							rState		 <=	st2P;
						else
							rState	<=	st2;
						end if;
					when st2P	=>
						if (TSW = '0') then
							rState		 <=	st2P;
						else
							rState	<=	st1;
						end if;
				end case;
			end if;
		end if;
	end process u_rState;
				
	u_rLED0 : Process(Clk50) Is
    Begin
        if (rising_edge(Clk50)) then
            if (rState = st0 or rState = st0P) then
                rLED0 <= '0';  -- Turn off the LED if tact switch not pressed
				rLED0Cnt <= (others => '0'); -- Reset Counter
            elsif (rState = st1 or rState = st1P) then
				if (rLED0Cnt = MaxCnt) then
					rLED0 	<= not rLED0; -- Toggle LED
					rLED0Cnt <= (others => '0'); -- Reset Counter
				else
					rLED0Cnt <= rLED0Cnt + 1; -- Counter
				end if;
			else
				if (rLED0Cnt >= MaxCnt2) then
					rLED0 	<= not rLED0; -- Toggle LED
					rLED0Cnt <= (others => '0'); -- Reset Counter
				else
					rLED0Cnt <= rLED0Cnt + 1; -- Counter
				end if;
			end if;
        end if;
    End process;

End Architecture rtl;