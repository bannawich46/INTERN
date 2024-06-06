library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity ClkDivider is
    Port (
        Clk50 : in 	STD_LOGIC;
        Clk1k : out STD_LOGIC
    );
End ClkDivider;

Architecture rtl Of ClkDivider Is
    constant DIV_FACTOR : STD_LOGIC_VECTOR( 15 downto 0 ) := x"C350"; -- 50 MHz / 1 kHz = 25000
    signal ClkCnt  		: STD_LOGIC_VECTOR( 15 downto 0 );
    signal rClk1k 		: STD_LOGIC := '0';
	
Begin
	-- Output assignment
	Clk1k <= rClk1k;
	
    u_rClk1k : Process (Clk50) Is
    Begin
		if ( rising_edge(Clk50) ) then
            if (ClkCnt = (DIV_FACTOR - 1)) then
                ClkCnt <= (others => '0');
                rClk1k <= not rClk1k;
            else
                ClkCnt <= ClkCnt + 1;
            end if;
        end if;
    End Process u_rClk1k;
End Architecture rtl;