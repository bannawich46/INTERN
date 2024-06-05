library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity OneShot Is
    Port (
        -- Clk 50 MHz
        Clk50   : in  STD_LOGIC;
		
		-- Dobouced KEY0 & KEY1
        Counter4bits_0		: in  STD_LOGIC_VECTOR( 3 downto 0 );
		Counter4bits_1		: in  STD_LOGIC_VECTOR( 3 downto 0 );
		KEY0_LastState  	: in  STD_LOGIC;
        KEY1_LastState  	: in  STD_LOGIC;
		
        -- Oneshot KEY0 & KEY1
        DKEY0    			: out STD_LOGIC;
		DKEY1    			: out STD_LOGIC
    );
End Entity OneShot;

Architecture rtl Of OneShot Is
	constant Counter4bits_Const : STD_LOGIC_VECTOR (3 downto 0) := x"9";
	signal	rCounter4bits_0	:	STD_LOGIC_VECTOR( 3 downto 0 ); -- D Flip Flop
	signal	rCounter4bits_1	:	STD_LOGIC_VECTOR( 3 downto 0 ); -- D Flip Flop
	
	signal 	rDKEY0    		:	STD_LOGIC;
	signal	rDKEY1			:	STD_LOGIC;
    
Begin
    -- Output assignment
	DKEY0 <= rDKEY0;
	DKEY1 <= rDKEY1;
	
	u_rCounter4bits_0 : Process (Clk50) Is
    Begin
		if ( rising_edge(Clk50) ) then
			rCounter4bits_0 <= Counter4bits_0;
        end if;
    End Process u_rCounter4bits_0;
	
	u_rCounter4bits_1 : Process (Clk50) Is
    Begin
		if ( rising_edge(Clk50) ) then
			rCounter4bits_1 <= Counter4bits_1;
        end if;
    End Process u_rCounter4bits_1;
	
	u_rDKEY0 : Process (Clk50) Is
    Begin
		if ( rising_edge(Clk50) ) then
			if (Counter4bits_0 = Counter4bits_Const and rCounter4bits_0 = Counter4bits_Const-1) then
				rDKEY0 <= KEY0_LastState;
			else
				rDKEY0 <= rDKEY0;
            end if;
        end if;
    End Process u_rDKEY0;
	
	u_rDKEY1 : Process (Clk50) Is
    Begin
		if ( rising_edge(Clk50) ) then
			if (Counter4bits_0 = Counter4bits_Const and rCounter4bits_0 = Counter4bits_Const-1) then
				rDKEY1 <= KEY1_LastState;
			else
				rDKEY1 <= rDKEY1;
            end if;
        end if;
    End Process u_rDKEY1;

End Architecture rtl;