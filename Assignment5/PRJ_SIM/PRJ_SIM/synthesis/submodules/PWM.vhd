library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity PWM is
	generic (
		wDATA_WIDTH		: integer := 8
	);
	
	Port (
		CLK				: in std_logic;
		RST_L			: in std_logic;
		iADDRESS		: in std_logic_vector(1 downto 0);
		iREAD			: in std_logic;
		iREADDATA		: out std_logic_vector(31 downto 0);
		iWRITE			: in std_logic;
		iWRITEDATA		: in std_logic_vector(31 downto 0);
		iCHIPSELECT		: in std_logic;  -- Chip select signal
		PIO_EXTERNAL	: out std_logic_vector(wDATA_WIDTH-1 downto 0)
	);
end entity PWM;

Architecture RTL Of PWM Is
	Component CLK_DIVIDER Is
		Port (
			CLK50M			: in  STD_LOGIC;
			RST_L			: in  STD_LOGIC;
			iFREQ			: in  STD_LOGIC_VECTOR( 3 downto 0 );
			iCLK_ONESHOT	: out STD_LOGIC
		);
	End Component CLK_DIVIDER;

	signal iCLK_ONESHOT	: std_logic;

	signal wDATA		: std_logic_vector(wDATA_WIDTH-1 downto 0);
	signal wDUTY		: std_logic_vector(6 downto 0);
	signal iFREQ		: std_logic_vector(3 downto 0);
	signal wREADDATA	: std_logic_vector(31 downto 0);

	signal wPWM_COUNTER	: std_logic_vector(6 downto 0);
	signal wPWM_SIGNAL	: std_logic;

	constant kDUTY_DEFAULT	: std_logic_vector(6 downto 0)	:=	conv_std_logic_vector(100,7);
	constant kPWM_COUNTER	: std_logic_vector(6 downto 0)	:=	conv_std_logic_vector(100,7);

Begin
	Process(CLK, RST_L)
	Begin
		if (RST_L = '0') then
			wDATA <= (others => '0');
			wDUTY <= kDUTY_DEFAULT;
			iFREQ <= (others => '0');
			wREADDATA <= (others => '0');
		elsif rising_edge(CLK) then
			if (iCHIPSELECT = '1') then
				if (iWRITE = '1') then
					case iADDRESS is
						when "00" =>
							wDATA <= iWRITEDATA(wDATA_WIDTH-1 downto 0);
						when "01" =>
							if ( (iWRITEDATA(31 downto 7) > "0" & x"000000") OR iWRITEDATA(6 downto 0) > "110" & x"4" ) then
								wDUTY <= kDUTY_DEFAULT;
							else
								wDUTY <= iWRITEDATA(6 downto 0);
							end if;
						when "10" =>
							iFREQ <= iWRITEDATA(3 downto 0);
						when others =>
							null;
					end case;
				end if;
				if (iREAD = '1') then
					case iADDRESS is
						when "00" =>
							wREADDATA(31 downto wDATA_WIDTH) <= (others => '0');
							wREADDATA(wDATA_WIDTH-1 downto 0) <= wDATA;
						when "01" =>
							wREADDATA(31 downto 7) <= (others => '0');
							wREADDATA(6 downto 0) <= wDUTY;
						when "10" =>
							wREADDATA(31 downto 4) <= (others => '0');
							wREADDATA(3 downto 0) <= iFREQ;
						when others =>
							null;
					end case;
				end if;
			end if;
		end if;
	End Process;

	Process(CLK, RST_L)
	Begin
		if RST_L = '0' then
			wPWM_COUNTER <= (others => '0');
			wPWM_SIGNAL <= '0';
		elsif rising_edge(CLK) then
			if ( iCLK_ONESHOT = '1' ) then
				if ( wPWM_COUNTER < kPWM_COUNTER - '1' ) then
					wPWM_COUNTER <= wPWM_COUNTER + '1';
				else
					wPWM_COUNTER <= (others => '0');
				end if;
			end if;

			if ( wPWM_COUNTER < wDUTY ) then
				wPWM_SIGNAL <= '1';
			else
				wPWM_SIGNAL <= '0';
			end if;
		end if;
	End Process;

	iREADDATA <= wREADDATA;

	GEN_PWM : for i in 0 to wDATA_WIDTH-1 generate
		PIO_EXTERNAL(i) <= wDATA(i) AND wPWM_SIGNAL;
	End generate;

	u_CLK_DIVIDER: CLK_DIVIDER
	Port map	(
		CLK50M			=> CLK,
		RST_L			=> RST_L,
		iFREQ			=> iFREQ,
		iCLK_ONESHOT	=> iCLK_ONESHOT
	);

End Architecture RTL;