library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

Entity RxSerial Is
Port(
	RstB		: in	std_logic;
	Clk			: in	std_logic;
	
	SerDataIn	: in	std_logic;
	
	RxFfFull	: in	std_logic;
	RxFfWrData	: out	std_logic_vector( 7 downto 0 );
	RxFfWrEn	: out	std_logic
);
End Entity RxSerial;

Architecture rtl Of RxSerial Is

----------------------------------------------------------------------------------
-- Constant declaration
----------------------------------------------------------------------------------

constant	cBuadRate	:	integer:= 217;

----------------------------------------------------------------------------------
-- Signal declaration
----------------------------------------------------------------------------------
	
	signal	rSerDataIn	: std_logic;
	
	signal		rBuadCnt	:	std_logic_vector(9 downto 0);
	
	Signal		rRxFfWrEn	:	std_logic;
	Signal		rRxFfWrData	:	std_logic_vector(7 downto 0);
	
	Signal		rRxFfWrCnt	:	integer range 0 to 7;
	
	type	SerStateType is
						(
							stIdle	,
							stStart	,
							stWrData	,
							stStop	,
							stEnd
						);
	signal rState	:	SerStateType;	
	
	
	

Begin

----------------------------------------------------------------------------------
-- Output assignment
----------------------------------------------------------------------------------
	
	RxFfWrEn	<=		rRxFfWrEn;
	RxFfWrData	<=		rRxFfWrData;

----------------------------------------------------------------------------------
-- DFF 
----------------------------------------------------------------------------------
	
	u_rState : Process (Clk) Is
	Begin
		if (rising_edge(Clk)) then
			if ( RstB='0' ) then
				rState	<=	stIdle;
			else
				case (rState) is
					when stIdle		=>
						rRxFfWrEn	<=	'0';
						rBuadCnt(9 downto 0) <= (others=>'0');
						rRxFfWrCnt <= 0;
						if (rSerDataIn = '0') then
							rState	<=	stStart;
						else
							rState	<=	stIdle;
						end if;
					when stStart	=>
						if (rBuadCnt = cBuadRate/2) then
							if (rSerDataIn = '0') then
								rBuadCnt(9 downto 0) <= (others=>'0');
								rState		<=	stWrData;
							else
								rState	<=	stIdle;
							end if;
						else
							rState	<=	stStart;
							rBuadCnt(9 downto 0) <= rBuadCnt(9 downto 0)+1;
						end if;
					when stWrData =>
						if rBuadCnt < cBuadRate-1 then
							rBuadCnt <= rBuadCnt + 1;
							rState   <= stWrData;
						else
							rBuadCnt(9 downto 0) <= (others=>'0');
							rRxFfWrData(rRxFfWrCnt) <= rSerDataIn;
							if rRxFfWrCnt < 7 then
								rRxFfWrCnt <= rRxFfWrCnt + 1;
								rState   <= stWrData;
							else
								rRxFfWrCnt <= 0;
								rState   <= stStop;
							end if;
						end if;
						
					when stStop =>
						if rBuadCnt < cBuadRate-1 then
							rBuadCnt <= rBuadCnt + 1;
							rState   <= stStop;
						else
							rRxFfWrEn     <= '1';
							rBuadCnt(9 downto 0) <= (others=>'0');
							rState  <= stEnd;
						end if;

					when stEnd =>
						rState <= stIdle;
						rRxFfWrEn   <= '0';

            
					when others =>
						rState <= stIdle;
				end case;
			end if;
		end if;
	end process u_rState;
	
	u_rSerDataIn : Process (Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			rSerDataIn		<= SerDataIn;
		end if;
	End Process u_rSerDataIn;

	
End Architecture rtl;