library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity LEDonoff1s Is
    Port (
        -- Clk 50 MHz
        Clk50   : in  std_logic;
        Rst		: in  std_logic;
        -- LED Output
        LED0    : out std_logic
    );
End Entity LEDonoff1s;

Architecture rtl Of LEDonoff1s Is

-- Signal declaration
	signal 		rLED0	:	std_logic := '0';
	signal		LED0Cnt	:	std_logic_vector(7 downto 0) := (others=>'0');
	constant	MaxCnt	: 	std_logic_vector(7 downto 0) := x"32"; -- 50 for 1 us at 50MHz
Begin
    -- Output assignment
    LED0	<=	not rLED0;

    -- Process to control the LED on/off
    u_rLED0 : Process(Clk50) Is
    Begin
        if (rising_edge(Clk50)) then
            if (Rst = '0') then
                rLED0 <= '0';  -- Turn off the LED when Reset
            else
				if LED0Cnt = MaxCnt then
					LED0Cnt <= (others => '0'); -- Reset Counter
					rLED0 	<= not rLED0; -- Toggle LED
				else
					LED0Cnt <= LED0Cnt + 1; -- Counter
				end if;
            end if;
        end if;
    End process;

End Architecture rtl;