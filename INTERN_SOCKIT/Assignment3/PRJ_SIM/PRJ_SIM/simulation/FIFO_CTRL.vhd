library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_ARITH.all;
use IEEE.std_logic_UNSIGNED.all;

Entity FIFO_CTRL Is
	Port
	(
		CLK50			: in	std_logic;

		iADDRESS		: in	std_logic_vector(7 downto 0);
		iREAD			: in	std_logic;
		iREADDATA		: out	std_logic_vector(31 downto 0);
		iWRITE			: in	std_logic;
		iWRITEDATA		: in	std_logic_vector(31 downto 0);
		iWAITREQUEST	: out	std_logic;
		iRESET			: in	std_logic;

		LED_L			: out	std_logic_vector( 7 downto 0 )
	);
End Entity FIFO_CTRL;

Architecture RTL Of FIFO_CTRL Is

	Component FIFO IS
	Port
	(
		clock		: in	std_logic;
		data		: in	std_logic_vector (7 downto 0);
		rdreq		: in	std_logic;
		wrreq		: in	std_logic;
		empty		: out	std_logic;
		full		: out	std_logic;
		q			: out	std_logic_vector (7 downto 0);
		usedw		: out	std_logic_vector (7 downto 0)
	);
	End Component FIFO;

	Component CLK_DIVIDER IS
	Port (
		CLK50			: in  STD_LOGIC;
		RST_L			: in  STD_LOGIC;
		iCLK10k_ONESHOT	: out STD_LOGIC
	);
	End Component CLK_DIVIDER;

	signal iCLK10k_ONESHOT	: std_logic;

	signal iRDREQ	: std_logic;
	signal wRD		: std_logic;
	signal iWRREQ	: std_logic;
	signal iEMPTY	: std_logic;
	signal iFULL	: std_logic;
	signal iQ		: std_logic_vector( 7 downto 0 );
	signal iUSEDW	: std_logic_vector( 7 downto 0 );
	
	signal wLED_L	: std_logic_vector( 7 downto 0 );
	
	signal wWAITREQUEST		: std_logic;

Begin

	Process (CLK50, iRESET) Is
	Begin
		if ( iRESET = '1' ) then
			iRDREQ <= '0';
			wRD <= '0';
		elsif ( rising_edge(CLK50) ) then
			if ( iREAD = '1' and iADDRESS = x"00" and iEMPTY = '0' ) then
				wRD	<= '1';
			elsif ( iEMPTY = '1' ) then
				wRD <= '0';
			end if;

			if ( iCLK10k_ONESHOT = '1' and wRD = '1' ) then
				iRDREQ <= '1';
			else
				iRDREQ <= '0';
			end if;
		end if;
	End Process;

	Process (CLK50, iRESET) Is
	Begin
		if ( iRESET = '1' ) then
			iWRREQ <= '0';
		elsif ( rising_edge(CLK50) ) then
			if ( iWRITE = '1' and iADDRESS = x"00" and iFULL = '0' ) then
				iWRREQ	<= '1';
			else
				iWRREQ	<= '0';
			end if;
		end if;
	End Process;

	Process (CLK50, iRESET) Is
	Begin
		if ( iRESET = '1' ) then
			wWAITREQUEST <= '0';
		elsif ( rising_edge(CLK50) ) then
			if (iREAD = '1' and iEMPTY = '1') or (iWRITE = '1' and iFULL = '1') then
				wWAITREQUEST <= '1';
			else
				wWAITREQUEST <= '0';
			end if;
		end if;
	End Process;

	u_FIFO : FIFO
	Port map
	(
		clock		=> CLK50,
		data		=> iWRITEDATA( 7 downto 0 ),
		rdreq		=> iRDREQ,
		wrreq		=> iWRREQ,
		empty		=> iEMPTY,
		full		=> iFULL,
		q			=> iQ,
		usedw		=> iUSEDW
	);

	u_CLK_DIVIDER : CLK_DIVIDER
	Port map
	(
		CLK50			=> CLK50,
		RST_L			=> iRESET,
		iCLK10k_ONESHOT	=> iCLK10k_ONESHOT
	);

	iREADDATA( 7 downto 0 )		<= iQ;
	iWAITREQUEST				<= wWAITREQUEST;
	LED_L						<= iQ;

End Architecture RTL;