----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- Filename     UserWrDdr.vhd
-- Title        Top
--
-- Company      Design Gateway Co., Ltd.
-- Project      DDCamp
-- PJ No.       
-- Syntax       VHDL
-- Note         

-- Version      1.00
-- Author       B.Attapon
-- Date         2017/12/20
-- Remark       New Creation
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

Entity UserWrDdr Is
	Port
	(
		RstB			: in	std_logic;								-- use push button Key0 (active low)
		Clk				: in	std_logic;								-- clock input 100 MHz

		-- WrCtrl I/F
		MemInitDone		: in	std_logic;
		MtDdrWrReq		: out	std_logic;
		MtDdrWrBusy		: in	std_logic;
		MtDdrWrAddr		: out	std_logic_vector( 28 downto 7 );
		
		-- T2UWrFf I/F
		T2UWrFfRdEn		: out	std_logic;
		T2UWrFfRdData	: in	std_logic_vector( 63 downto 0 );
		T2UWrFfRdCnt	: in	std_logic_vector( 15 downto 0 );
		
		-- UWr2DFf I/F
		UWr2DFfRdEn		: in	std_logic;
		UWr2DFfRdData	: out	std_logic_vector( 63 downto 0 );
		UWr2DFfRdCnt	: out	std_logic_vector( 15 downto 0 )
	);
End Entity UserWrDdr;

Architecture rtl Of UserWrDdr Is

----------------------------------------------------------------------------------
-- Component declaration
----------------------------------------------------------------------------------
	
	
----------------------------------------------------------------------------------
-- Signal declaration
----------------------------------------------------------------------------------
	
	signal	rMemInitDone	: std_logic_vector( 1 downto 0 );
	
	-- WrCtrl I/F
	signal	rMtDdrWrReq		: std_logic;
	Signal	rMtDdrWrAddr	: std_logic_vector( 28 downto 7 );
	signal	rUWr2DFfRdEnCnt	: integer range 0 to 15;
	signal	rSortCnt		: std_logic_vector( 4 downto 0 );
Begin

----------------------------------------------------------------------------------
-- Output assignment
----------------------------------------------------------------------------------
	
	-- WrCtrl I/F
	MtDdrWrReq	<=	rMtDdrWrReq;
	MtDdrWrAddr	<=	rMtDdrWrAddr;
	
	-- T2UWrFf I/F --> UWr2DFf I/F
	T2UWrFfRdEn		<=	UWr2DFfRdEn;
	UWr2DFfRdData	<=	T2UWrFfRdData;
	UWr2DFfRdCnt	<=	T2UWrFfRdCnt;
	
----------------------------------------------------------------------------------
-- DFF 
----------------------------------------------------------------------------------
	
	u_rMemInitDone : Process (Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB='0' ) then
				rMemInitDone	<= "00";
			else
				-- Use rMemInitDone(1) in your design
				rMemInitDone	<= rMemInitDone(0) & MemInitDone;
			end if;
		end if;
	End Process u_rMemInitDone;
	
----------------------------------------------------------------------------------
	
	u_rMtDdrWrReq : Process (Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if (MtDdrWrBusy	='0' and rMemInitDone(1)='1') then
				rMtDdrWrReq	<=	'1';
			else
				rMtDdrWrReq	<=	'0';
			end if;
		end if;
	End process u_rMtDdrWrReq;
		
	u_rMtDdrWrAddr : Process (Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB='0' ) then
				rMtDdrWrAddr(28 downto 27) 	<= (others => '0');
				rMtDdrWrAddr(26 downto 7) 	<= x"05FE0";
				rSortCnt(4 downto 0) <= (others => '0');
			else
				if (rMtDdrWrReq = '1'and MtDdrWrBusy = '1') then
					if (rMtDdrWrAddr(26 downto 7) = x"0001F") then	-- Last Pixel Address
						rMtDdrWrAddr(28 downto 27)	<=	rMtDdrWrAddr(28 downto 27)+1;
						rMtDdrWrAddr(26 downto 7) 	<= x"05FE0";		-- First Pixel Address
						rSortCnt(4 downto 0) 		<= (others => '0');
					elsif (rSortCnt(4 downto 0) = 31) then				-- Last Pixel (Horizontal)
						rMtDdrWrAddr(26 downto 7)	<=	rMtDdrWrAddr(26 downto 7)-63;
						rSortCnt(4 downto 0) 		<= (others => '0');
					else
						rMtDdrWrAddr(26 downto 7)	<=	rMtDdrWrAddr(26 downto 7)+1;
						rSortCnt(4 downto 0) 		<= rSortCnt(4 downto 0)+1;
					end if;
				else
					rMtDdrWrAddr(28 downto 7)	<=	rMtDdrWrAddr(28 downto 7);
				end if;
			end if;			
		end if;
	End process u_rMtDdrWrAddr;
End Architecture rtl;