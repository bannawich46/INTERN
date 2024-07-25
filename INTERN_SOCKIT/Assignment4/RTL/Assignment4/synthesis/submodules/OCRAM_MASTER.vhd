library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

Entity OCRAM_MASTER Is
	Port (
		CLK					: in std_logic;
		RST					: in std_logic;

		iADDRESS			: in std_logic_vector(1 downto 0);
		iREAD				: in std_logic;
		iREADDATA			: out std_logic_vector(31 downto 0);
		-- iWRITE				: in std_logic;
		-- iWRITEDATA			: in std_logic_vector(31 downto 0);
		iCHIPSELECT			: in std_logic;
		iWAITREQUEST		: out std_logic;

		iADDRESS_OCRAM		: out std_logic_vector(9 downto 0);
		iREAD_OCRAM			: out std_logic;
		iREADDATA_OCRAM		: in std_logic_vector(31 downto 0);
		iWAITREQUEST_OCRAM	: in std_logic;
		-- iWRITE_OCRAM		: out std_logic;
		-- iWRITEDATA_OCRAM	: out std_logic_vector(31 downto 0);
		-- iCHIPSELECT_OCRAM	: out std_logic;

		EXTERNAL			: out std_logic_vector(7 downto 0)
	);
End Entity OCRAM_MASTER;

Architecture RTL Of OCRAM_MASTER Is
	Component CLK_DIVIDER Is
		Port (
			CLK50			: in  std_logic;
			RST				: in  std_logic;
			iCLK_ONESHOT	: out std_logic
		);
	End Component CLK_DIVIDER;

	signal iCLK_ONESHOT		: std_logic := '0';

	signal wREAD			: std_logic := '0';
	signal wREADDATA		: std_logic_vector(31 downto 0) := (others => '0');

	signal wADDRESS_OCRAM	: std_logic_vector(5 downto 0) := (others => '0');
	signal wREAD_OCRAM		: std_logic := '0';

	signal wEXTERNAL		: std_logic_vector(7 downto 0);

Begin
	iREADDATA					<= wREADDATA;
	iADDRESS_OCRAM(9 downto 8)	<= (others => '0');
	iADDRESS_OCRAM(7 downto 2)	<= wADDRESS_OCRAM;
	iADDRESS_OCRAM(1 downto 0)	<= (others => '0');
	iREAD_OCRAM					<= wREAD_OCRAM;

	iWAITREQUEST				<= iWAITREQUEST_OCRAM;

	EXTERNAL					<= wEXTERNAL;

	Process(CLK, RST)
	Begin
		if (RST = '1') then
			wREAD			<= '0';
			wREADDATA		<= (others => '0');
			wADDRESS_OCRAM	<= (others => '0');
			wREAD_OCRAM		<= '0';
			wEXTERNAL		<= (others => '0');
		elsif rising_edge(CLK) then
			wREADDATA		<= iREADDATA_OCRAM;
			wEXTERNAL		<= iREADDATA_OCRAM(7 downto 0);
			if ( iCHIPSELECT = '1' and iREAD = '1' ) then
				wREAD			<= '1';
			end if;

			if ( iCLK_ONESHOT = '1' and wREAD = '1' ) then
				wREAD_OCRAM		<= '1';
				wADDRESS_OCRAM	<= wADDRESS_OCRAM + '1';
			else
				wREAD_OCRAM		<= '0';
			end if;
		end if;
	End Process;

	u_CLK_DIVIDER: CLK_DIVIDER
	Port map	(
		CLK50			=> CLK,
		RST				=> RST,
		iCLK_ONESHOT	=> iCLK_ONESHOT
	);

End Architecture RTL;