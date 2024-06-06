library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity Counter is
    Port (
        Clk50 				: in STD_LOGIC;
		Clk1k				: in STD_LOGIC;
		-- Two Counter 4 bits
		KEY0  				: in STD_LOGIC;
        KEY1  				: in STD_LOGIC;
		KEY0_LastState  	: in STD_LOGIC;
        KEY1_LastState  	: in STD_LOGIC;
        Counter4bits_0   	: out STD_LOGIC_VECTOR (3 downto 0);
		Counter4bits_1   	: out STD_LOGIC_VECTOR (3 downto 0);
		-- Counter 8 bits
		DKEY0  				: in STD_LOGIC;
        DKEY1  				: in STD_LOGIC;
		Counter8bits   		: out STD_LOGIC_VECTOR (7 downto 0)
    );
End Counter;

Architecture rtl of Counter is
	constant Counter4bits_Const : STD_LOGIC_VECTOR (3 downto 0) := x"9";
    signal rCounter4bits_0 		: STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal rCounter4bits_1 		: STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal rCounter8bits   		: STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
	
Begin
	-- Output assignment
	Counter4bits_0 <= rCounter4bits_0;
	Counter4bits_1 <= rCounter4bits_1;
	Counter8bits   <= rCounter8bits;
	
    u_rCounter4bits_0 : Process (Clk1k) Is
    Begin
		if ( rising_edge(Clk1k) ) then
			if (rCounter4bits_0 = Counter4bits_Const) then
				rCounter4bits_0 <= rCounter4bits_0;
			else
				if (KEY0 /= KEY0_LastState ) then
					rCounter4bits_0 <= (others => '0');
				else
					rCounter4bits_0 <= rCounter4bits_0+'1';
				end if;
            end if;
        end if;
    End Process u_rCounter4bits_0;
	
	u_rCounter4bits_1 : Process (Clk1k) Is
    Begin
		if ( rising_edge(Clk1k) ) then
			if (rCounter4bits_1 = Counter4bits_Const) then
				rCounter4bits_1 <= rCounter4bits_1;
			else
				if (KEY1 /= KEY1_LastState ) then
					rCounter4bits_1 <= (others => '0');
				else
					rCounter4bits_1 <= rCounter4bits_1+'1';
				end if;
            end if;
        end if;
    End Process u_rCounter4bits_1;
	
	u_rCounter8bits : Process (Clk50) Is
    Begin
		if ( rising_edge(Clk50) ) then
			if (DKEY0 = '0' and DKEY1 = '0') then
				rCounter8bits <= rCounter8bits;
            elsif (DKEY1 = '0') then
				rCounter8bits <= rCounter8bits + '1';
			elsif (DKEY0 = '0') then
				rCounter8bits <= rCounter8bits - '1';
			else
				rCounter8bits <= rCounter8bits;
            end if;
        end if;
    End Process u_rCounter8bits;

End Architecture rtl;