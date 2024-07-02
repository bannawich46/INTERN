library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Package FRQ_PKG is
	constant kFREQ_1HZ		: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(500000,19);
	constant kFREQ_2HZ		: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(250000,19);
	constant kFREQ_5HZ		: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(100000,19);
	constant kFREQ_10HZ		: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(50000,19);
	constant kFREQ_20HZ		: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(25000,19);
	constant kFREQ_50HZ		: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(10000,19);
	constant kFREQ_100HZ	: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(5000,19);
	constant kFREQ_200HZ	: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(2500,19);
	constant kFREQ_500HZ	: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(1000,19);
	constant kFREQ_2KHZ		: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(250,19);
	constant kFREQ_5KHZ		: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(100,19);
	constant kFREQ_10KHZ	: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(50,19);
	constant kFREQ_20KHZ	: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(25,19);
	constant kFREQ_50KHZ	: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(10,19);
	constant kFREQ_100KHZ	: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(5,19);
	constant kFREQ_DEFAULT	: std_logic_vector(18 downto 0)	:=	conv_std_logic_vector(500,19);
End package FRQ_PKG;