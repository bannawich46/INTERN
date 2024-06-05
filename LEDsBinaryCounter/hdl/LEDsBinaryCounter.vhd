library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity LEDsBinaryCounter Is
    Port (
        -- Clk 50 MHz
        Clk50   	: in  STD_LOGIC;
		
		-- Input KEY[0] & KEY[1]
        KEY0		: in  STD_LOGIC;
		KEY1		: in  STD_LOGIC;
		
        -- LED Output
        LED    		: out STD_LOGIC_VECTOR(7 downto 0) := (others=>'0')
    );
End Entity LEDsBinaryCounter;

Architecture rtl Of LEDsBinaryCounter Is

-- Signal declaration
	signal	wClk1k			:	STD_LOGIC;
    signal	wKEY0_LastState	:	STD_LOGIC;
	signal	wKEY1_LastState	:	STD_LOGIC;
	signal	wCounter4bits_0	:	STD_LOGIC_VECTOR (3 downto 0);
	signal	wCounter4bits_1	:	STD_LOGIC_VECTOR (3 downto 0);
	signal	wCounter8bits	:	STD_LOGIC_VECTOR (7 downto 0);
	signal	wDKEY0			:	STD_LOGIC;
	signal	wDKEY1			:	STD_LOGIC;
	signal	wrLED			:	STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');
	
	Component ClkDivider Is
	Port (
        Clk50 : in 	STD_LOGIC;
        Clk1k : out STD_LOGIC
    );
	End Component ClkDivider;
	
	Component Counter Is
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
	End Component Counter;
	
	Component OneShot Is
	Port (
        -- Clk 50 MHz
        Clk50   : in  STD_LOGIC;
		
		-- Dobouced KEY0 & KEY1
        Counter4bits_0		: in  STD_LOGIC_VECTOR( 3 downto 0 );
		Counter4bits_1		: in  STD_LOGIC_VECTOR( 3 downto 0 );
		KEY0_LastState  	: in STD_LOGIC;
        KEY1_LastState  	: in STD_LOGIC;
		
        -- Oneshot KEY0 & KEY1
        DKEY0    			: out STD_LOGIC;
		DKEY1    			: out STD_LOGIC
    );
	End Component OneShot;
	
Begin
    -- Output assignment
	rLED	<=	Counter8bits;
	LED		<=	not rLED;
	
	u_ClkDivider : ClkDivider
	Port map
	(
		Clk50	=>	Clk50		,
        Clk1k   =>	Clk1k
	);
	
	u_Counter : Counter
	Port map
	(
		Clk50	=>	Clk50		,
        Clk1k   =>	Clk1k		,
		-- Two Counter 4 bits
		KEY0	=>	KEY0		,
        KEY1	=>	KEY1		,
		KEY0_LastState	=>	KEY0_LastState	,
        KEY1_LastState	=>	KEY1_LastState	,
        Counter4bits_0	=>	Counter4bits_0	,
		Counter4bits_1	=>	Counter4bits_1	,
		-- Counter 8 bits
		DKEY0			=>	DKEY0			,
		DKEY1			=>	DKEY1			,
		Counter8bits   	=>	Counter8bits
	);
	
	u_OneShot : OneShot
	Port map
	(
        Clk50   		=>	Clk50			,
		-- Dobouced KEY0 & KEY1
        Counter4bits_0	=>	Counter4bits_0	,
		Counter4bits_1	=>	Counter4bits_1	,
		KEY0_LastState	=>	KEY0_LastState	,
        KEY1_LastState  =>	KEY1_LastState	,
        -- Oneshot KEY0 & KEY1
        DKEY0    		=>	DKEY0			,
		DKEY1    		=>	DKEY1
	);
	
	u_KEY0_LastState : Process (Clk1k) Is
	Begin
		if ( rising_edge(Clk1k) ) then
			KEY0_LastState	<=	KEY0;
		end if;
	End Process u_KEY0_LastState;
	
	u_KEY1_LastState : Process (Clk1k) Is
	Begin
		if ( rising_edge(Clk1k) ) then
			KEY1_LastState	<=	KEY1;
		end if;
	End Process u_KEY1_LastState;
	
End Architecture rtl;