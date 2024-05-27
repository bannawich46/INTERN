library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

Entity BitMapPattern Is
	Port
	(
		RstB			: in	std_logic;
		Clk				: in	std_logic;
		
		-- DataIn
		RxFfWrData		: in	std_logic_vector( 7 downto 0 );
		RxFfWrEn		: in	std_logic;
		
		--DipSwitch
		Start			: in	std_logic;
		DipSwitch		: in 	std_logic_vector( 1 downto 0 );
		
		-- HDMI Data Interface
		HDMIFfWrEn		: out	std_logic;
		HDMIFfWrData	: out	std_logic_vector( 23 downto 0 );
		HDMIFfWrCnt		: in	std_logic_vector( 15 downto 0 )
	);
End Entity BitMapPattern;

Architecture rtl Of BitMapPattern Is

----------------------------------------------------------------------------------
-- Constant Declaration
----------------------------------------------------------------------------------

	
----------------------------------------------------------------------------------
-- Signal declaration
----------------------------------------------------------------------------------
	
	signal	rHDMIFfWrEn		: std_logic;
	signal	rHDMIBlue		: std_logic_vector( 7 downto 0 );
	signal	rHDMIGreen		: std_logic_vector( 7 downto 0 );
	signal	rHDMIRed		: std_logic_vector( 7 downto 0 );
	
	-- Cnt
	signal	rDataCnt			: std_logic_vector( 21 downto 0 );
	signal	rRGBCnt				: std_logic_vector( 1 downto 0 );
	
Begin

----------------------------------------------------------------------------------
-- Output assignment
----------------------------------------------------------------------------------
	
	HDMIFfWrEn					<= rHDMIFfWrEn;
	HDMIFfWrData(7 downto 0)	<= rHDMIBlue(7 downto 0);
	HDMIFfWrData(15 downto 8)	<= rHDMIGreen(7 downto 0);
	HDMIFfWrData(23 downto 16)	<= rHDMIRed(7 downto 0);
	
----------------------------------------------------------------------------------
-- DFF 
----------------------------------------------------------------------------------
	
	u_rDataCnt : Process(Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB='0' ) then
				rDataCnt(21 downto 0)	<= (others=>'0');
			else
				if	(RxFfWrEn='1' and rDataCnt=2359349) then
					rDataCnt(21 downto 0)	<= (others=>'0');
				elsif (RxFfWrEn='1') then
					rDataCnt(21 downto 0)	<= rDataCnt(21 downto 0)+1;
				else
					rDataCnt(21 downto 0)	<= rDataCnt(21 downto 0);
				end if;
			end if;
		end if;
	End Process u_rDataCnt;

	u_HDMIFfWrData : Process (Clk) Is
	Begin	
		if ( rising_edge(Clk) ) then
			if ( RstB='0' ) then
				rHDMIRed	<= x"00";
				rHDMIGreen	<= x"00";
				rHDMIBlue	<= x"00";
				rRGBCnt		<= (others=>'0');
			else
				if (rDataCnt>53) then
					if (rRGBCnt=0 and RxFfWrEn='1') then
						rHDMIBlue	<= RxFfWrData;
						rRGBCnt		<= rRGBCnt+1;
						rHDMIFfWrEn	<=	'0';
					elsif (rRGBCnt=1 and RxFfWrEn='1') then
						rHDMIGreen	<= RxFfWrData;
						rRGBCnt		<= rRGBCnt+1;
						rHDMIFfWrEn	<=	'0';
					elsif (rRGBCnt=2 and RxFfWrEn='1') then
						rHDMIRed	<= RxFfWrData;
						rRGBCnt		<= (others=>'0');
						rHDMIFfWrEn	<=	'1';
					else
						rHDMIBlue	<= rHDMIBlue;
						rHDMIGreen	<= rHDMIGreen;
						rHDMIRed		<= rHDMIRed;
						rHDMIFfWrEn	<=	'0';
					end if;
				else
					rHDMIRed	<= x"00";
					rHDMIGreen	<= x"00";
					rHDMIBlue	<= x"00";
					rRGBCnt		<= (others=>'0');
					rHDMIFfWrEn	<=	'0';
				end if;
			end if;
		end if;
	End Process u_HDMIFfWrData;
	
End Architecture rtl;