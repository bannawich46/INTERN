-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "07/09/2024 00:02:58"

-- 
-- Device: Altera 5CSXFC6D6F31C8ES Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PRJ_TOP IS
    PORT (
	CLK50 : IN std_logic;
	RST_L : IN std_logic;
	LED_L : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END PRJ_TOP;

-- Design Ports Information
-- LED_L[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED_L[1]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED_L[2]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED_L[3]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLK50	=>  Location: PIN_AF14,	 I/O Standard: 1.5 V,	 Current Strength: Default
-- RST_L	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PRJ_TOP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK50 : std_logic;
SIGNAL ww_RST_L : std_logic;
SIGNAL ww_LED_L : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK50~input_o\ : std_logic;
SIGNAL \CLK50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~1_sumout\ : std_logic;
SIGNAL \RST_L~input_o\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLKCNT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLKCNT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u_CLKDIVIDER|Equal0~1_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~86\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~81_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~82\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~77_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~78\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~73_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~74\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~69_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~70\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~65_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~66\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~61_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~62\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~57_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~58\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~53_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Equal0~2_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Equal0~0_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Equal0~4_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~2\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~25_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLKCNT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~26\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~21_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~22\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~17_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~18\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~13_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~14\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~9_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~10\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~5_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~6\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~49_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~50\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~45_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~46\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~41_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~42\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~37_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~38\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~33_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~34\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~29_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLKCNT[12]~feeder_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~30\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~97_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~98\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~93_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~94\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~89_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~90\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~85_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Equal0~3_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLK1~0_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLK1~q\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLKCNT\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \u_CLKDIVIDER|ALT_INV_wCLKCNT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u_CLKDIVIDER|ALT_INV_wCLKCNT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u_CLKDIVIDER|ALT_INV_wCLKCNT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u_CLKDIVIDER|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|ALT_INV_wCLK1~q\ : std_logic;
SIGNAL \u_CLKDIVIDER|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \u_CLKDIVIDER|ALT_INV_wCLKCNT\ : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_CLK50 <= CLK50;
ww_RST_L <= RST_L;
LED_L <= ww_LED_L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u_CLKDIVIDER|ALT_INV_wCLKCNT[11]~DUPLICATE_q\ <= NOT \u_CLKDIVIDER|wCLKCNT[11]~DUPLICATE_q\;
\u_CLKDIVIDER|ALT_INV_wCLKCNT[1]~DUPLICATE_q\ <= NOT \u_CLKDIVIDER|wCLKCNT[1]~DUPLICATE_q\;
\u_CLKDIVIDER|ALT_INV_wCLKCNT[0]~DUPLICATE_q\ <= NOT \u_CLKDIVIDER|wCLKCNT[0]~DUPLICATE_q\;
\u_CLKDIVIDER|ALT_INV_Equal0~3_combout\ <= NOT \u_CLKDIVIDER|Equal0~3_combout\;
\u_CLKDIVIDER|ALT_INV_Equal0~2_combout\ <= NOT \u_CLKDIVIDER|Equal0~2_combout\;
\u_CLKDIVIDER|ALT_INV_Equal0~1_combout\ <= NOT \u_CLKDIVIDER|Equal0~1_combout\;
\u_CLKDIVIDER|ALT_INV_Equal0~0_combout\ <= NOT \u_CLKDIVIDER|Equal0~0_combout\;
\u_CLKDIVIDER|ALT_INV_wCLK1~q\ <= NOT \u_CLKDIVIDER|wCLK1~q\;
\u_CLKDIVIDER|ALT_INV_Add0~29_sumout\ <= NOT \u_CLKDIVIDER|Add0~29_sumout\;
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(13) <= NOT \u_CLKDIVIDER|wCLKCNT\(13);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(14) <= NOT \u_CLKDIVIDER|wCLKCNT\(14);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(15) <= NOT \u_CLKDIVIDER|wCLKCNT\(15);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(16) <= NOT \u_CLKDIVIDER|wCLKCNT\(16);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(17) <= NOT \u_CLKDIVIDER|wCLKCNT\(17);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(18) <= NOT \u_CLKDIVIDER|wCLKCNT\(18);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(19) <= NOT \u_CLKDIVIDER|wCLKCNT\(19);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(20) <= NOT \u_CLKDIVIDER|wCLKCNT\(20);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(21) <= NOT \u_CLKDIVIDER|wCLKCNT\(21);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(22) <= NOT \u_CLKDIVIDER|wCLKCNT\(22);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(23) <= NOT \u_CLKDIVIDER|wCLKCNT\(23);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(24) <= NOT \u_CLKDIVIDER|wCLKCNT\(24);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(7) <= NOT \u_CLKDIVIDER|wCLKCNT\(7);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(8) <= NOT \u_CLKDIVIDER|wCLKCNT\(8);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(9) <= NOT \u_CLKDIVIDER|wCLKCNT\(9);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(10) <= NOT \u_CLKDIVIDER|wCLKCNT\(10);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(11) <= NOT \u_CLKDIVIDER|wCLKCNT\(11);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(12) <= NOT \u_CLKDIVIDER|wCLKCNT\(12);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(1) <= NOT \u_CLKDIVIDER|wCLKCNT\(1);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(2) <= NOT \u_CLKDIVIDER|wCLKCNT\(2);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(3) <= NOT \u_CLKDIVIDER|wCLKCNT\(3);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(4) <= NOT \u_CLKDIVIDER|wCLKCNT\(4);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(5) <= NOT \u_CLKDIVIDER|wCLKCNT\(5);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(6) <= NOT \u_CLKDIVIDER|wCLKCNT\(6);
\u_CLKDIVIDER|ALT_INV_wCLKCNT\(0) <= NOT \u_CLKDIVIDER|wCLKCNT\(0);

-- Location: IOOBUF_X4_Y0_N53
\LED_L[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CLKDIVIDER|wCLK1~q\,
	devoe => ww_devoe,
	o => ww_LED_L(0));

-- Location: IOOBUF_X4_Y0_N19
\LED_L[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED_L(1));

-- Location: IOOBUF_X4_Y0_N36
\LED_L[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED_L(2));

-- Location: IOOBUF_X6_Y0_N2
\LED_L[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED_L(3));

-- Location: IOIBUF_X32_Y0_N1
\CLK50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK50,
	o => \CLK50~input_o\);

-- Location: CLKCTRL_G6
\CLK50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK50~input_o\,
	outclk => \CLK50~inputCLKENA0_outclk\);

-- Location: LABCELL_X1_Y2_N30
\u_CLKDIVIDER|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~1_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(0) ) + ( VCC ) + ( !VCC ))
-- \u_CLKDIVIDER|Add0~2\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(0),
	cin => GND,
	sumout => \u_CLKDIVIDER|Add0~1_sumout\,
	cout => \u_CLKDIVIDER|Add0~2\);

-- Location: IOIBUF_X2_Y0_N92
\RST_L~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_L,
	o => \RST_L~input_o\);

-- Location: FF_X1_Y2_N32
\u_CLKDIVIDER|wCLKCNT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~1_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT[0]~DUPLICATE_q\);

-- Location: FF_X1_Y2_N8
\u_CLKDIVIDER|wCLKCNT[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	asdata => \u_CLKDIVIDER|Add0~33_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT[11]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y2_N21
\u_CLKDIVIDER|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Equal0~1_combout\ = ( !\u_CLKDIVIDER|wCLKCNT\(7) & ( \u_CLKDIVIDER|wCLKCNT\(12) & ( (!\u_CLKDIVIDER|wCLKCNT\(10) & (\u_CLKDIVIDER|wCLKCNT[11]~DUPLICATE_q\ & (!\u_CLKDIVIDER|wCLKCNT\(9) & !\u_CLKDIVIDER|wCLKCNT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(10),
	datab => \u_CLKDIVIDER|ALT_INV_wCLKCNT[11]~DUPLICATE_q\,
	datac => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(9),
	datad => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(8),
	datae => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(7),
	dataf => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(12),
	combout => \u_CLKDIVIDER|Equal0~1_combout\);

-- Location: LABCELL_X1_Y1_N18
\u_CLKDIVIDER|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~85_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(16) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~90\ ))
-- \u_CLKDIVIDER|Add0~86\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(16) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(16),
	cin => \u_CLKDIVIDER|Add0~90\,
	sumout => \u_CLKDIVIDER|Add0~85_sumout\,
	cout => \u_CLKDIVIDER|Add0~86\);

-- Location: LABCELL_X1_Y1_N21
\u_CLKDIVIDER|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~81_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(17) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~86\ ))
-- \u_CLKDIVIDER|Add0~82\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(17) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(17),
	cin => \u_CLKDIVIDER|Add0~86\,
	sumout => \u_CLKDIVIDER|Add0~81_sumout\,
	cout => \u_CLKDIVIDER|Add0~82\);

-- Location: FF_X1_Y1_N23
\u_CLKDIVIDER|wCLKCNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~81_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(17));

-- Location: LABCELL_X1_Y1_N24
\u_CLKDIVIDER|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~77_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(18) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~82\ ))
-- \u_CLKDIVIDER|Add0~78\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(18) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(18),
	cin => \u_CLKDIVIDER|Add0~82\,
	sumout => \u_CLKDIVIDER|Add0~77_sumout\,
	cout => \u_CLKDIVIDER|Add0~78\);

-- Location: FF_X1_Y1_N26
\u_CLKDIVIDER|wCLKCNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~77_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(18));

-- Location: LABCELL_X1_Y1_N27
\u_CLKDIVIDER|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~73_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(19) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~78\ ))
-- \u_CLKDIVIDER|Add0~74\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(19) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(19),
	cin => \u_CLKDIVIDER|Add0~78\,
	sumout => \u_CLKDIVIDER|Add0~73_sumout\,
	cout => \u_CLKDIVIDER|Add0~74\);

-- Location: FF_X1_Y1_N29
\u_CLKDIVIDER|wCLKCNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~73_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(19));

-- Location: LABCELL_X1_Y1_N30
\u_CLKDIVIDER|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~69_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(20) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~74\ ))
-- \u_CLKDIVIDER|Add0~70\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(20) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(20),
	cin => \u_CLKDIVIDER|Add0~74\,
	sumout => \u_CLKDIVIDER|Add0~69_sumout\,
	cout => \u_CLKDIVIDER|Add0~70\);

-- Location: FF_X1_Y1_N32
\u_CLKDIVIDER|wCLKCNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~69_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(20));

-- Location: LABCELL_X1_Y1_N33
\u_CLKDIVIDER|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~65_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(21) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~70\ ))
-- \u_CLKDIVIDER|Add0~66\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(21) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(21),
	cin => \u_CLKDIVIDER|Add0~70\,
	sumout => \u_CLKDIVIDER|Add0~65_sumout\,
	cout => \u_CLKDIVIDER|Add0~66\);

-- Location: FF_X1_Y1_N35
\u_CLKDIVIDER|wCLKCNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~65_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(21));

-- Location: LABCELL_X1_Y1_N36
\u_CLKDIVIDER|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~61_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(22) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~66\ ))
-- \u_CLKDIVIDER|Add0~62\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(22) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(22),
	cin => \u_CLKDIVIDER|Add0~66\,
	sumout => \u_CLKDIVIDER|Add0~61_sumout\,
	cout => \u_CLKDIVIDER|Add0~62\);

-- Location: FF_X1_Y1_N38
\u_CLKDIVIDER|wCLKCNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~61_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(22));

-- Location: LABCELL_X1_Y1_N39
\u_CLKDIVIDER|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~57_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(23) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~62\ ))
-- \u_CLKDIVIDER|Add0~58\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(23) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(23),
	cin => \u_CLKDIVIDER|Add0~62\,
	sumout => \u_CLKDIVIDER|Add0~57_sumout\,
	cout => \u_CLKDIVIDER|Add0~58\);

-- Location: FF_X1_Y1_N41
\u_CLKDIVIDER|wCLKCNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~57_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(23));

-- Location: LABCELL_X1_Y1_N42
\u_CLKDIVIDER|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~53_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(24) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(24),
	cin => \u_CLKDIVIDER|Add0~58\,
	sumout => \u_CLKDIVIDER|Add0~53_sumout\);

-- Location: FF_X1_Y1_N44
\u_CLKDIVIDER|wCLKCNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~53_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(24));

-- Location: LABCELL_X1_Y1_N48
\u_CLKDIVIDER|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Equal0~2_combout\ = ( \u_CLKDIVIDER|wCLKCNT\(22) & ( \u_CLKDIVIDER|wCLKCNT\(24) & ( (\u_CLKDIVIDER|wCLKCNT\(19) & (\u_CLKDIVIDER|wCLKCNT\(20) & (\u_CLKDIVIDER|wCLKCNT\(21) & !\u_CLKDIVIDER|wCLKCNT\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(19),
	datab => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(20),
	datac => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(21),
	datad => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(23),
	datae => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(22),
	dataf => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(24),
	combout => \u_CLKDIVIDER|Equal0~2_combout\);

-- Location: FF_X1_Y2_N35
\u_CLKDIVIDER|wCLKCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~25_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(1));

-- Location: LABCELL_X1_Y2_N9
\u_CLKDIVIDER|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Equal0~0_combout\ = ( \u_CLKDIVIDER|wCLKCNT\(2) & ( \u_CLKDIVIDER|wCLKCNT\(4) & ( (!\u_CLKDIVIDER|wCLKCNT\(6) & (\u_CLKDIVIDER|wCLKCNT\(3) & (\u_CLKDIVIDER|wCLKCNT\(5) & \u_CLKDIVIDER|wCLKCNT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(6),
	datab => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(3),
	datac => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(5),
	datad => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(1),
	datae => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(2),
	dataf => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(4),
	combout => \u_CLKDIVIDER|Equal0~0_combout\);

-- Location: LABCELL_X1_Y2_N12
\u_CLKDIVIDER|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Equal0~4_combout\ = ( \u_CLKDIVIDER|Equal0~2_combout\ & ( \u_CLKDIVIDER|Equal0~0_combout\ & ( (\u_CLKDIVIDER|wCLKCNT[0]~DUPLICATE_q\ & (\u_CLKDIVIDER|Equal0~1_combout\ & \u_CLKDIVIDER|Equal0~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|ALT_INV_wCLKCNT[0]~DUPLICATE_q\,
	datac => \u_CLKDIVIDER|ALT_INV_Equal0~1_combout\,
	datad => \u_CLKDIVIDER|ALT_INV_Equal0~3_combout\,
	datae => \u_CLKDIVIDER|ALT_INV_Equal0~2_combout\,
	dataf => \u_CLKDIVIDER|ALT_INV_Equal0~0_combout\,
	combout => \u_CLKDIVIDER|Equal0~4_combout\);

-- Location: FF_X1_Y2_N31
\u_CLKDIVIDER|wCLKCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~1_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(0));

-- Location: LABCELL_X1_Y2_N33
\u_CLKDIVIDER|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~25_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT[1]~DUPLICATE_q\ ) + ( GND ) + ( \u_CLKDIVIDER|Add0~2\ ))
-- \u_CLKDIVIDER|Add0~26\ = CARRY(( \u_CLKDIVIDER|wCLKCNT[1]~DUPLICATE_q\ ) + ( GND ) + ( \u_CLKDIVIDER|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_CLKDIVIDER|ALT_INV_wCLKCNT[1]~DUPLICATE_q\,
	cin => \u_CLKDIVIDER|Add0~2\,
	sumout => \u_CLKDIVIDER|Add0~25_sumout\,
	cout => \u_CLKDIVIDER|Add0~26\);

-- Location: FF_X1_Y2_N34
\u_CLKDIVIDER|wCLKCNT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~25_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT[1]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y2_N36
\u_CLKDIVIDER|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~21_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(2) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~26\ ))
-- \u_CLKDIVIDER|Add0~22\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(2) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(2),
	cin => \u_CLKDIVIDER|Add0~26\,
	sumout => \u_CLKDIVIDER|Add0~21_sumout\,
	cout => \u_CLKDIVIDER|Add0~22\);

-- Location: FF_X1_Y2_N38
\u_CLKDIVIDER|wCLKCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~21_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(2));

-- Location: LABCELL_X1_Y2_N39
\u_CLKDIVIDER|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~17_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(3) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~22\ ))
-- \u_CLKDIVIDER|Add0~18\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(3) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(3),
	cin => \u_CLKDIVIDER|Add0~22\,
	sumout => \u_CLKDIVIDER|Add0~17_sumout\,
	cout => \u_CLKDIVIDER|Add0~18\);

-- Location: FF_X1_Y2_N41
\u_CLKDIVIDER|wCLKCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~17_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(3));

-- Location: LABCELL_X1_Y2_N42
\u_CLKDIVIDER|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~13_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(4) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~18\ ))
-- \u_CLKDIVIDER|Add0~14\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(4) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(4),
	cin => \u_CLKDIVIDER|Add0~18\,
	sumout => \u_CLKDIVIDER|Add0~13_sumout\,
	cout => \u_CLKDIVIDER|Add0~14\);

-- Location: FF_X1_Y2_N44
\u_CLKDIVIDER|wCLKCNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~13_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(4));

-- Location: LABCELL_X1_Y2_N45
\u_CLKDIVIDER|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~9_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(5) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~14\ ))
-- \u_CLKDIVIDER|Add0~10\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(5) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(5),
	cin => \u_CLKDIVIDER|Add0~14\,
	sumout => \u_CLKDIVIDER|Add0~9_sumout\,
	cout => \u_CLKDIVIDER|Add0~10\);

-- Location: FF_X1_Y2_N47
\u_CLKDIVIDER|wCLKCNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~9_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(5));

-- Location: LABCELL_X1_Y2_N48
\u_CLKDIVIDER|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~5_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(6) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~10\ ))
-- \u_CLKDIVIDER|Add0~6\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(6) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(6),
	cin => \u_CLKDIVIDER|Add0~10\,
	sumout => \u_CLKDIVIDER|Add0~5_sumout\,
	cout => \u_CLKDIVIDER|Add0~6\);

-- Location: FF_X1_Y2_N50
\u_CLKDIVIDER|wCLKCNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~5_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(6));

-- Location: LABCELL_X1_Y2_N51
\u_CLKDIVIDER|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~49_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(7) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~6\ ))
-- \u_CLKDIVIDER|Add0~50\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(7) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(7),
	cin => \u_CLKDIVIDER|Add0~6\,
	sumout => \u_CLKDIVIDER|Add0~49_sumout\,
	cout => \u_CLKDIVIDER|Add0~50\);

-- Location: FF_X1_Y2_N52
\u_CLKDIVIDER|wCLKCNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~49_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(7));

-- Location: LABCELL_X1_Y2_N54
\u_CLKDIVIDER|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~45_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(8) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~50\ ))
-- \u_CLKDIVIDER|Add0~46\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(8) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(8),
	cin => \u_CLKDIVIDER|Add0~50\,
	sumout => \u_CLKDIVIDER|Add0~45_sumout\,
	cout => \u_CLKDIVIDER|Add0~46\);

-- Location: FF_X1_Y2_N56
\u_CLKDIVIDER|wCLKCNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~45_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(8));

-- Location: LABCELL_X1_Y2_N57
\u_CLKDIVIDER|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~41_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(9) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~46\ ))
-- \u_CLKDIVIDER|Add0~42\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(9) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(9),
	cin => \u_CLKDIVIDER|Add0~46\,
	sumout => \u_CLKDIVIDER|Add0~41_sumout\,
	cout => \u_CLKDIVIDER|Add0~42\);

-- Location: FF_X1_Y2_N59
\u_CLKDIVIDER|wCLKCNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~41_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(9));

-- Location: LABCELL_X1_Y1_N0
\u_CLKDIVIDER|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~37_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(10) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~42\ ))
-- \u_CLKDIVIDER|Add0~38\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(10) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(10),
	cin => \u_CLKDIVIDER|Add0~42\,
	sumout => \u_CLKDIVIDER|Add0~37_sumout\,
	cout => \u_CLKDIVIDER|Add0~38\);

-- Location: FF_X1_Y2_N5
\u_CLKDIVIDER|wCLKCNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	asdata => \u_CLKDIVIDER|Add0~37_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(10));

-- Location: LABCELL_X1_Y1_N3
\u_CLKDIVIDER|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~33_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(11) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~38\ ))
-- \u_CLKDIVIDER|Add0~34\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(11) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(11),
	cin => \u_CLKDIVIDER|Add0~38\,
	sumout => \u_CLKDIVIDER|Add0~33_sumout\,
	cout => \u_CLKDIVIDER|Add0~34\);

-- Location: FF_X1_Y2_N7
\u_CLKDIVIDER|wCLKCNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	asdata => \u_CLKDIVIDER|Add0~33_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(11));

-- Location: LABCELL_X1_Y1_N6
\u_CLKDIVIDER|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~29_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(12) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~34\ ))
-- \u_CLKDIVIDER|Add0~30\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(12) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(12),
	cin => \u_CLKDIVIDER|Add0~34\,
	sumout => \u_CLKDIVIDER|Add0~29_sumout\,
	cout => \u_CLKDIVIDER|Add0~30\);

-- Location: LABCELL_X1_Y2_N24
\u_CLKDIVIDER|wCLKCNT[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|wCLKCNT[12]~feeder_combout\ = ( \u_CLKDIVIDER|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_CLKDIVIDER|ALT_INV_Add0~29_sumout\,
	combout => \u_CLKDIVIDER|wCLKCNT[12]~feeder_combout\);

-- Location: FF_X1_Y2_N26
\u_CLKDIVIDER|wCLKCNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|wCLKCNT[12]~feeder_combout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(12));

-- Location: LABCELL_X1_Y1_N9
\u_CLKDIVIDER|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~97_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(13) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~30\ ))
-- \u_CLKDIVIDER|Add0~98\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(13) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(13),
	cin => \u_CLKDIVIDER|Add0~30\,
	sumout => \u_CLKDIVIDER|Add0~97_sumout\,
	cout => \u_CLKDIVIDER|Add0~98\);

-- Location: FF_X1_Y1_N11
\u_CLKDIVIDER|wCLKCNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~97_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(13));

-- Location: LABCELL_X1_Y1_N12
\u_CLKDIVIDER|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~93_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(14) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~98\ ))
-- \u_CLKDIVIDER|Add0~94\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(14) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(14),
	cin => \u_CLKDIVIDER|Add0~98\,
	sumout => \u_CLKDIVIDER|Add0~93_sumout\,
	cout => \u_CLKDIVIDER|Add0~94\);

-- Location: FF_X1_Y1_N14
\u_CLKDIVIDER|wCLKCNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~93_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(14));

-- Location: LABCELL_X1_Y1_N15
\u_CLKDIVIDER|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~89_sumout\ = SUM(( \u_CLKDIVIDER|wCLKCNT\(15) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~94\ ))
-- \u_CLKDIVIDER|Add0~90\ = CARRY(( \u_CLKDIVIDER|wCLKCNT\(15) ) + ( GND ) + ( \u_CLKDIVIDER|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(15),
	cin => \u_CLKDIVIDER|Add0~94\,
	sumout => \u_CLKDIVIDER|Add0~89_sumout\,
	cout => \u_CLKDIVIDER|Add0~90\);

-- Location: FF_X1_Y1_N17
\u_CLKDIVIDER|wCLKCNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~89_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(15));

-- Location: FF_X1_Y1_N20
\u_CLKDIVIDER|wCLKCNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|Add0~85_sumout\,
	clrn => \RST_L~input_o\,
	sclr => \u_CLKDIVIDER|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(16));

-- Location: LABCELL_X1_Y1_N54
\u_CLKDIVIDER|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Equal0~3_combout\ = ( !\u_CLKDIVIDER|wCLKCNT\(17) & ( \u_CLKDIVIDER|wCLKCNT\(13) & ( (\u_CLKDIVIDER|wCLKCNT\(16) & (!\u_CLKDIVIDER|wCLKCNT\(15) & (\u_CLKDIVIDER|wCLKCNT\(18) & \u_CLKDIVIDER|wCLKCNT\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(16),
	datab => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(15),
	datac => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(18),
	datad => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(14),
	datae => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(17),
	dataf => \u_CLKDIVIDER|ALT_INV_wCLKCNT\(13),
	combout => \u_CLKDIVIDER|Equal0~3_combout\);

-- Location: LABCELL_X1_Y2_N0
\u_CLKDIVIDER|wCLK1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|wCLK1~0_combout\ = ( \u_CLKDIVIDER|wCLK1~q\ & ( \u_CLKDIVIDER|Equal0~1_combout\ & ( (!\u_CLKDIVIDER|Equal0~3_combout\) # ((!\u_CLKDIVIDER|wCLKCNT[0]~DUPLICATE_q\) # ((!\u_CLKDIVIDER|Equal0~2_combout\) # (!\u_CLKDIVIDER|Equal0~0_combout\))) ) 
-- ) ) # ( !\u_CLKDIVIDER|wCLK1~q\ & ( \u_CLKDIVIDER|Equal0~1_combout\ & ( (\u_CLKDIVIDER|Equal0~3_combout\ & (\u_CLKDIVIDER|wCLKCNT[0]~DUPLICATE_q\ & (\u_CLKDIVIDER|Equal0~2_combout\ & \u_CLKDIVIDER|Equal0~0_combout\))) ) ) ) # ( \u_CLKDIVIDER|wCLK1~q\ & ( 
-- !\u_CLKDIVIDER|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|ALT_INV_Equal0~3_combout\,
	datab => \u_CLKDIVIDER|ALT_INV_wCLKCNT[0]~DUPLICATE_q\,
	datac => \u_CLKDIVIDER|ALT_INV_Equal0~2_combout\,
	datad => \u_CLKDIVIDER|ALT_INV_Equal0~0_combout\,
	datae => \u_CLKDIVIDER|ALT_INV_wCLK1~q\,
	dataf => \u_CLKDIVIDER|ALT_INV_Equal0~1_combout\,
	combout => \u_CLKDIVIDER|wCLK1~0_combout\);

-- Location: FF_X1_Y2_N1
\u_CLKDIVIDER|wCLK1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputCLKENA0_outclk\,
	d => \u_CLKDIVIDER|wCLK1~0_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLK1~q\);

-- Location: LABCELL_X12_Y65_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


