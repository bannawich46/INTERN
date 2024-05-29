library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity SWLEDonoff Is
    Port (
        -- Input from Switch & Reset Button
        SW0     : in  std_logic;
        Rst     : in  std_logic;  -- Active-low reset
        Clk50   : in  std_logic;
        
        -- LED Output
        LED0    : out std_logic
    );
End Entity SWLEDonoff;

Architecture rtl Of SWLEDonoff Is
    Component PLL100 Is
    Port (
        areset  : in  std_logic  := '0';
        inclk0  : in  std_logic  := '0';
        c0      : out std_logic;
        locked  : out std_logic
    );
    End Component PLL100;

    -- Signal declaration
    signal LED0_State  : std_logic := '0';  -- Internal signal to maintain the LED state
    signal Stop        : std_logic := '0';  -- Internal signal to indicate reset was pressed
    
    -- Clk50
    signal PLL50Rst    : std_logic;
    signal PLLLock     : std_logic;
    signal Clk100      : std_logic;
    
Begin
    -- Output assignment
    LED0 <= not LED0_State;  -- Assign the internal LED state to the output

    -- PLL instantiation
    u_PLL100 : PLL100
    port map (
        areset  => PLL50Rst,
        inclk0  => Clk50,
        c0      => Clk100,    
        locked  => PLLLock
    );
    
    -- Process to control the LED based on the switch input and reset
    u_LED0 : Process(Clk50) Is
    Begin
        if rising_edge(Clk50) then
            if Rst = '0' then
                Stop <= '1';  -- Latch the stop condition when reset is pressed
            elsif Stop = '0' then
                LED0_State <= SW0;  -- Control LED based on the switch when reset is not pressed
            else
                LED0_State <= '0';  -- Turn off the LED if stop condition is latched
            end if;
        end if;
    End process;

End Architecture rtl;