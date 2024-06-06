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

-- DATE "05/30/2024 22:43:31"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LEDonoffXXs IS
    PORT (
	Clk50 : IN std_logic;
	Rst : IN std_logic;
	TSW : IN std_logic;
	LED0 : OUT std_logic
	);
END LEDonoffXXs;

-- Design Ports Information
-- LED0	=>  Location: PIN_C7,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Clk50	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_H21,	 I/O Standard: 1.5 V Schmitt Trigger,	 Current Strength: Default
-- TSW	=>  Location: PIN_H22,	 I/O Standard: 1.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF LEDonoffXXs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk50 : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_TSW : std_logic;
SIGNAL ww_LED0 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Clk50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LED0~output_o\ : std_logic;
SIGNAL \Clk50~input_o\ : std_logic;
SIGNAL \Clk50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \TSW~input_o\ : std_logic;
SIGNAL \rState~12_combout\ : std_logic;
SIGNAL \rState.st0~q\ : std_logic;
SIGNAL \rState~13_combout\ : std_logic;
SIGNAL \rState.st2~q\ : std_logic;
SIGNAL \rState~9_combout\ : std_logic;
SIGNAL \rState~10_combout\ : std_logic;
SIGNAL \rState.st1~q\ : std_logic;
SIGNAL \rState~11_combout\ : std_logic;
SIGNAL \rState.st1P~q\ : std_logic;
SIGNAL \rLED0Cnt[0]~26_combout\ : std_logic;
SIGNAL \rLED0Cnt[15]~28_combout\ : std_logic;
SIGNAL \rLED0Cnt[0]~27\ : std_logic;
SIGNAL \rLED0Cnt[1]~29_combout\ : std_logic;
SIGNAL \rLED0Cnt[1]~30\ : std_logic;
SIGNAL \rLED0Cnt[2]~31_combout\ : std_logic;
SIGNAL \rLED0Cnt[2]~32\ : std_logic;
SIGNAL \rLED0Cnt[3]~33_combout\ : std_logic;
SIGNAL \rLED0Cnt[3]~34\ : std_logic;
SIGNAL \rLED0Cnt[4]~35_combout\ : std_logic;
SIGNAL \rLED0Cnt[4]~36\ : std_logic;
SIGNAL \rLED0Cnt[5]~37_combout\ : std_logic;
SIGNAL \rLED0Cnt[5]~38\ : std_logic;
SIGNAL \rLED0Cnt[6]~39_combout\ : std_logic;
SIGNAL \rLED0Cnt[6]~40\ : std_logic;
SIGNAL \rLED0Cnt[7]~41_combout\ : std_logic;
SIGNAL \rLED0~5_combout\ : std_logic;
SIGNAL \rLED0Cnt[7]~42\ : std_logic;
SIGNAL \rLED0Cnt[8]~43_combout\ : std_logic;
SIGNAL \rLED0Cnt[8]~44\ : std_logic;
SIGNAL \rLED0Cnt[9]~45_combout\ : std_logic;
SIGNAL \rLED0Cnt[9]~46\ : std_logic;
SIGNAL \rLED0Cnt[10]~47_combout\ : std_logic;
SIGNAL \rLED0Cnt[10]~48\ : std_logic;
SIGNAL \rLED0Cnt[11]~49_combout\ : std_logic;
SIGNAL \rLED0Cnt[11]~50\ : std_logic;
SIGNAL \rLED0Cnt[12]~51_combout\ : std_logic;
SIGNAL \rLED0Cnt[12]~52\ : std_logic;
SIGNAL \rLED0Cnt[13]~53_combout\ : std_logic;
SIGNAL \rLED0Cnt[13]~54\ : std_logic;
SIGNAL \rLED0Cnt[14]~55_combout\ : std_logic;
SIGNAL \rLED0Cnt[14]~56\ : std_logic;
SIGNAL \rLED0Cnt[15]~57_combout\ : std_logic;
SIGNAL \rLED0Cnt[15]~58\ : std_logic;
SIGNAL \rLED0Cnt[16]~59_combout\ : std_logic;
SIGNAL \rLED0Cnt[16]~60\ : std_logic;
SIGNAL \rLED0Cnt[17]~61_combout\ : std_logic;
SIGNAL \rLED0Cnt[17]~62\ : std_logic;
SIGNAL \rLED0Cnt[18]~63_combout\ : std_logic;
SIGNAL \rLED0Cnt[18]~64\ : std_logic;
SIGNAL \rLED0Cnt[19]~65_combout\ : std_logic;
SIGNAL \rLED0Cnt[19]~66\ : std_logic;
SIGNAL \rLED0Cnt[20]~67_combout\ : std_logic;
SIGNAL \rLED0Cnt[20]~68\ : std_logic;
SIGNAL \rLED0Cnt[21]~69_combout\ : std_logic;
SIGNAL \rLED0Cnt[21]~70\ : std_logic;
SIGNAL \rLED0Cnt[22]~71_combout\ : std_logic;
SIGNAL \rLED0Cnt[22]~72\ : std_logic;
SIGNAL \rLED0Cnt[23]~73_combout\ : std_logic;
SIGNAL \rLED0Cnt[23]~74\ : std_logic;
SIGNAL \rLED0Cnt[24]~75_combout\ : std_logic;
SIGNAL \rLED0Cnt[24]~76\ : std_logic;
SIGNAL \rLED0Cnt[25]~77_combout\ : std_logic;
SIGNAL \rLED0~7_combout\ : std_logic;
SIGNAL \rLED0~6_combout\ : std_logic;
SIGNAL \rLED0~8_combout\ : std_logic;
SIGNAL \rLED0~11_combout\ : std_logic;
SIGNAL \rLED0~10_combout\ : std_logic;
SIGNAL \rLED0~9_combout\ : std_logic;
SIGNAL \rLED0~12_combout\ : std_logic;
SIGNAL \rLED0~2_combout\ : std_logic;
SIGNAL \rLED0~3_combout\ : std_logic;
SIGNAL \rLED0~0_combout\ : std_logic;
SIGNAL \rLED0~1_combout\ : std_logic;
SIGNAL \rLED0~4_combout\ : std_logic;
SIGNAL \rLED0~13_combout\ : std_logic;
SIGNAL \rLED0~14_combout\ : std_logic;
SIGNAL \rLED0~q\ : std_logic;
SIGNAL rLED0Cnt : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_rLED0~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk50 <= Clk50;
ww_Rst <= Rst;
ww_TSW <= TSW;
LED0 <= ww_LED0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Clk50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk50~input_o\);
\ALT_INV_rLED0~q\ <= NOT \rLED0~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X34_Y39_N2
\LED0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_rLED0~q\,
	devoe => ww_devoe,
	o => \LED0~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\Clk50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk50,
	o => \Clk50~input_o\);

-- Location: CLKCTRL_G3
\Clk50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk50~inputclkctrl_outclk\);

-- Location: IOIBUF_X78_Y29_N1
\Rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: IOIBUF_X78_Y29_N8
\TSW~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TSW,
	o => \TSW~input_o\);

-- Location: LCCOMB_X76_Y31_N20
\rState~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rState~12_combout\ = (\Rst~input_o\ & ((\rState.st0~q\) # (!\TSW~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datac => \rState.st0~q\,
	datad => \TSW~input_o\,
	combout => \rState~12_combout\);

-- Location: FF_X76_Y31_N21
\rState.st0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st0~q\);

-- Location: LCCOMB_X76_Y31_N28
\rState~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rState~13_combout\ = (\Rst~input_o\ & (\TSW~input_o\ & ((\rState.st2~q\) # (\rState.st1P~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \TSW~input_o\,
	datac => \rState.st2~q\,
	datad => \rState.st1P~q\,
	combout => \rState~13_combout\);

-- Location: FF_X76_Y31_N29
\rState.st2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st2~q\);

-- Location: LCCOMB_X76_Y31_N26
\rState~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rState~9_combout\ = (\Rst~input_o\ & (\TSW~input_o\ & (!\rState.st1P~q\ & !\rState.st2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => \TSW~input_o\,
	datac => \rState.st1P~q\,
	datad => \rState.st2~q\,
	combout => \rState~9_combout\);

-- Location: LCCOMB_X76_Y31_N30
\rState~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rState~10_combout\ = (\rState.st0~q\ & \rState~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rState.st0~q\,
	datac => \rState~9_combout\,
	combout => \rState~10_combout\);

-- Location: FF_X76_Y31_N31
\rState.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st1~q\);

-- Location: LCCOMB_X76_Y31_N16
\rState~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rState~11_combout\ = (!\TSW~input_o\ & (\Rst~input_o\ & ((\rState.st1~q\) # (\rState.st1P~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st1~q\,
	datab => \TSW~input_o\,
	datac => \rState.st1P~q\,
	datad => \Rst~input_o\,
	combout => \rState~11_combout\);

-- Location: FF_X76_Y31_N17
\rState.st1P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st1P~q\);

-- Location: LCCOMB_X75_Y32_N6
\rLED0Cnt[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[0]~26_combout\ = rLED0Cnt(0) $ (VCC)
-- \rLED0Cnt[0]~27\ = CARRY(rLED0Cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(0),
	datad => VCC,
	combout => \rLED0Cnt[0]~26_combout\,
	cout => \rLED0Cnt[0]~27\);

-- Location: LCCOMB_X76_Y31_N6
\rLED0Cnt[15]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[15]~28_combout\ = (!\rLED0~13_combout\) # (!\rState.st0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rState.st0~q\,
	datad => \rLED0~13_combout\,
	combout => \rLED0Cnt[15]~28_combout\);

-- Location: FF_X75_Y32_N7
\rLED0Cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[0]~26_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(0));

-- Location: LCCOMB_X75_Y32_N8
\rLED0Cnt[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[1]~29_combout\ = (rLED0Cnt(1) & (!\rLED0Cnt[0]~27\)) # (!rLED0Cnt(1) & ((\rLED0Cnt[0]~27\) # (GND)))
-- \rLED0Cnt[1]~30\ = CARRY((!\rLED0Cnt[0]~27\) # (!rLED0Cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(1),
	datad => VCC,
	cin => \rLED0Cnt[0]~27\,
	combout => \rLED0Cnt[1]~29_combout\,
	cout => \rLED0Cnt[1]~30\);

-- Location: FF_X75_Y32_N9
\rLED0Cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[1]~29_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(1));

-- Location: LCCOMB_X75_Y32_N10
\rLED0Cnt[2]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[2]~31_combout\ = (rLED0Cnt(2) & (\rLED0Cnt[1]~30\ $ (GND))) # (!rLED0Cnt(2) & (!\rLED0Cnt[1]~30\ & VCC))
-- \rLED0Cnt[2]~32\ = CARRY((rLED0Cnt(2) & !\rLED0Cnt[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(2),
	datad => VCC,
	cin => \rLED0Cnt[1]~30\,
	combout => \rLED0Cnt[2]~31_combout\,
	cout => \rLED0Cnt[2]~32\);

-- Location: FF_X75_Y32_N11
\rLED0Cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[2]~31_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(2));

-- Location: LCCOMB_X75_Y32_N12
\rLED0Cnt[3]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[3]~33_combout\ = (rLED0Cnt(3) & (!\rLED0Cnt[2]~32\)) # (!rLED0Cnt(3) & ((\rLED0Cnt[2]~32\) # (GND)))
-- \rLED0Cnt[3]~34\ = CARRY((!\rLED0Cnt[2]~32\) # (!rLED0Cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(3),
	datad => VCC,
	cin => \rLED0Cnt[2]~32\,
	combout => \rLED0Cnt[3]~33_combout\,
	cout => \rLED0Cnt[3]~34\);

-- Location: FF_X75_Y32_N13
\rLED0Cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[3]~33_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(3));

-- Location: LCCOMB_X75_Y32_N14
\rLED0Cnt[4]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[4]~35_combout\ = (rLED0Cnt(4) & (\rLED0Cnt[3]~34\ $ (GND))) # (!rLED0Cnt(4) & (!\rLED0Cnt[3]~34\ & VCC))
-- \rLED0Cnt[4]~36\ = CARRY((rLED0Cnt(4) & !\rLED0Cnt[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(4),
	datad => VCC,
	cin => \rLED0Cnt[3]~34\,
	combout => \rLED0Cnt[4]~35_combout\,
	cout => \rLED0Cnt[4]~36\);

-- Location: FF_X75_Y32_N15
\rLED0Cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[4]~35_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(4));

-- Location: LCCOMB_X75_Y32_N16
\rLED0Cnt[5]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[5]~37_combout\ = (rLED0Cnt(5) & (!\rLED0Cnt[4]~36\)) # (!rLED0Cnt(5) & ((\rLED0Cnt[4]~36\) # (GND)))
-- \rLED0Cnt[5]~38\ = CARRY((!\rLED0Cnt[4]~36\) # (!rLED0Cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(5),
	datad => VCC,
	cin => \rLED0Cnt[4]~36\,
	combout => \rLED0Cnt[5]~37_combout\,
	cout => \rLED0Cnt[5]~38\);

-- Location: FF_X75_Y32_N17
\rLED0Cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[5]~37_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(5));

-- Location: LCCOMB_X75_Y32_N18
\rLED0Cnt[6]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[6]~39_combout\ = (rLED0Cnt(6) & (\rLED0Cnt[5]~38\ $ (GND))) # (!rLED0Cnt(6) & (!\rLED0Cnt[5]~38\ & VCC))
-- \rLED0Cnt[6]~40\ = CARRY((rLED0Cnt(6) & !\rLED0Cnt[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(6),
	datad => VCC,
	cin => \rLED0Cnt[5]~38\,
	combout => \rLED0Cnt[6]~39_combout\,
	cout => \rLED0Cnt[6]~40\);

-- Location: FF_X75_Y32_N19
\rLED0Cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[6]~39_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(6));

-- Location: LCCOMB_X75_Y32_N20
\rLED0Cnt[7]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[7]~41_combout\ = (rLED0Cnt(7) & (!\rLED0Cnt[6]~40\)) # (!rLED0Cnt(7) & ((\rLED0Cnt[6]~40\) # (GND)))
-- \rLED0Cnt[7]~42\ = CARRY((!\rLED0Cnt[6]~40\) # (!rLED0Cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(7),
	datad => VCC,
	cin => \rLED0Cnt[6]~40\,
	combout => \rLED0Cnt[7]~41_combout\,
	cout => \rLED0Cnt[7]~42\);

-- Location: FF_X75_Y32_N21
\rLED0Cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[7]~41_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(7));

-- Location: LCCOMB_X76_Y31_N14
\rLED0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~5_combout\ = (!\rState.st1P~q\ & (!rLED0Cnt(7) & (!\rState.st1~q\ & rLED0Cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st1P~q\,
	datab => rLED0Cnt(7),
	datac => \rState.st1~q\,
	datad => rLED0Cnt(6),
	combout => \rLED0~5_combout\);

-- Location: LCCOMB_X75_Y32_N22
\rLED0Cnt[8]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[8]~43_combout\ = (rLED0Cnt(8) & (\rLED0Cnt[7]~42\ $ (GND))) # (!rLED0Cnt(8) & (!\rLED0Cnt[7]~42\ & VCC))
-- \rLED0Cnt[8]~44\ = CARRY((rLED0Cnt(8) & !\rLED0Cnt[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(8),
	datad => VCC,
	cin => \rLED0Cnt[7]~42\,
	combout => \rLED0Cnt[8]~43_combout\,
	cout => \rLED0Cnt[8]~44\);

-- Location: FF_X75_Y32_N23
\rLED0Cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[8]~43_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(8));

-- Location: LCCOMB_X75_Y32_N24
\rLED0Cnt[9]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[9]~45_combout\ = (rLED0Cnt(9) & (!\rLED0Cnt[8]~44\)) # (!rLED0Cnt(9) & ((\rLED0Cnt[8]~44\) # (GND)))
-- \rLED0Cnt[9]~46\ = CARRY((!\rLED0Cnt[8]~44\) # (!rLED0Cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(9),
	datad => VCC,
	cin => \rLED0Cnt[8]~44\,
	combout => \rLED0Cnt[9]~45_combout\,
	cout => \rLED0Cnt[9]~46\);

-- Location: FF_X75_Y32_N25
\rLED0Cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[9]~45_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(9));

-- Location: LCCOMB_X75_Y32_N26
\rLED0Cnt[10]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[10]~47_combout\ = (rLED0Cnt(10) & (\rLED0Cnt[9]~46\ $ (GND))) # (!rLED0Cnt(10) & (!\rLED0Cnt[9]~46\ & VCC))
-- \rLED0Cnt[10]~48\ = CARRY((rLED0Cnt(10) & !\rLED0Cnt[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(10),
	datad => VCC,
	cin => \rLED0Cnt[9]~46\,
	combout => \rLED0Cnt[10]~47_combout\,
	cout => \rLED0Cnt[10]~48\);

-- Location: FF_X75_Y32_N27
\rLED0Cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[10]~47_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(10));

-- Location: LCCOMB_X75_Y32_N28
\rLED0Cnt[11]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[11]~49_combout\ = (rLED0Cnt(11) & (!\rLED0Cnt[10]~48\)) # (!rLED0Cnt(11) & ((\rLED0Cnt[10]~48\) # (GND)))
-- \rLED0Cnt[11]~50\ = CARRY((!\rLED0Cnt[10]~48\) # (!rLED0Cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(11),
	datad => VCC,
	cin => \rLED0Cnt[10]~48\,
	combout => \rLED0Cnt[11]~49_combout\,
	cout => \rLED0Cnt[11]~50\);

-- Location: FF_X76_Y31_N3
\rLED0Cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \rLED0Cnt[11]~49_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(11));

-- Location: LCCOMB_X75_Y32_N30
\rLED0Cnt[12]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[12]~51_combout\ = (rLED0Cnt(12) & (\rLED0Cnt[11]~50\ $ (GND))) # (!rLED0Cnt(12) & (!\rLED0Cnt[11]~50\ & VCC))
-- \rLED0Cnt[12]~52\ = CARRY((rLED0Cnt(12) & !\rLED0Cnt[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(12),
	datad => VCC,
	cin => \rLED0Cnt[11]~50\,
	combout => \rLED0Cnt[12]~51_combout\,
	cout => \rLED0Cnt[12]~52\);

-- Location: FF_X76_Y31_N9
\rLED0Cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \rLED0Cnt[12]~51_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(12));

-- Location: LCCOMB_X75_Y31_N0
\rLED0Cnt[13]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[13]~53_combout\ = (rLED0Cnt(13) & (!\rLED0Cnt[12]~52\)) # (!rLED0Cnt(13) & ((\rLED0Cnt[12]~52\) # (GND)))
-- \rLED0Cnt[13]~54\ = CARRY((!\rLED0Cnt[12]~52\) # (!rLED0Cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(13),
	datad => VCC,
	cin => \rLED0Cnt[12]~52\,
	combout => \rLED0Cnt[13]~53_combout\,
	cout => \rLED0Cnt[13]~54\);

-- Location: FF_X75_Y31_N1
\rLED0Cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[13]~53_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(13));

-- Location: LCCOMB_X75_Y31_N2
\rLED0Cnt[14]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[14]~55_combout\ = (rLED0Cnt(14) & (\rLED0Cnt[13]~54\ $ (GND))) # (!rLED0Cnt(14) & (!\rLED0Cnt[13]~54\ & VCC))
-- \rLED0Cnt[14]~56\ = CARRY((rLED0Cnt(14) & !\rLED0Cnt[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(14),
	datad => VCC,
	cin => \rLED0Cnt[13]~54\,
	combout => \rLED0Cnt[14]~55_combout\,
	cout => \rLED0Cnt[14]~56\);

-- Location: FF_X75_Y31_N3
\rLED0Cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[14]~55_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(14));

-- Location: LCCOMB_X75_Y31_N4
\rLED0Cnt[15]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[15]~57_combout\ = (rLED0Cnt(15) & (!\rLED0Cnt[14]~56\)) # (!rLED0Cnt(15) & ((\rLED0Cnt[14]~56\) # (GND)))
-- \rLED0Cnt[15]~58\ = CARRY((!\rLED0Cnt[14]~56\) # (!rLED0Cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(15),
	datad => VCC,
	cin => \rLED0Cnt[14]~56\,
	combout => \rLED0Cnt[15]~57_combout\,
	cout => \rLED0Cnt[15]~58\);

-- Location: FF_X75_Y31_N5
\rLED0Cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[15]~57_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(15));

-- Location: LCCOMB_X75_Y31_N6
\rLED0Cnt[16]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[16]~59_combout\ = (rLED0Cnt(16) & (\rLED0Cnt[15]~58\ $ (GND))) # (!rLED0Cnt(16) & (!\rLED0Cnt[15]~58\ & VCC))
-- \rLED0Cnt[16]~60\ = CARRY((rLED0Cnt(16) & !\rLED0Cnt[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(16),
	datad => VCC,
	cin => \rLED0Cnt[15]~58\,
	combout => \rLED0Cnt[16]~59_combout\,
	cout => \rLED0Cnt[16]~60\);

-- Location: FF_X75_Y31_N7
\rLED0Cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[16]~59_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(16));

-- Location: LCCOMB_X75_Y31_N8
\rLED0Cnt[17]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[17]~61_combout\ = (rLED0Cnt(17) & (!\rLED0Cnt[16]~60\)) # (!rLED0Cnt(17) & ((\rLED0Cnt[16]~60\) # (GND)))
-- \rLED0Cnt[17]~62\ = CARRY((!\rLED0Cnt[16]~60\) # (!rLED0Cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(17),
	datad => VCC,
	cin => \rLED0Cnt[16]~60\,
	combout => \rLED0Cnt[17]~61_combout\,
	cout => \rLED0Cnt[17]~62\);

-- Location: FF_X75_Y31_N9
\rLED0Cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[17]~61_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(17));

-- Location: LCCOMB_X75_Y31_N10
\rLED0Cnt[18]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[18]~63_combout\ = (rLED0Cnt(18) & (\rLED0Cnt[17]~62\ $ (GND))) # (!rLED0Cnt(18) & (!\rLED0Cnt[17]~62\ & VCC))
-- \rLED0Cnt[18]~64\ = CARRY((rLED0Cnt(18) & !\rLED0Cnt[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(18),
	datad => VCC,
	cin => \rLED0Cnt[17]~62\,
	combout => \rLED0Cnt[18]~63_combout\,
	cout => \rLED0Cnt[18]~64\);

-- Location: FF_X75_Y31_N11
\rLED0Cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[18]~63_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(18));

-- Location: LCCOMB_X75_Y31_N12
\rLED0Cnt[19]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[19]~65_combout\ = (rLED0Cnt(19) & (!\rLED0Cnt[18]~64\)) # (!rLED0Cnt(19) & ((\rLED0Cnt[18]~64\) # (GND)))
-- \rLED0Cnt[19]~66\ = CARRY((!\rLED0Cnt[18]~64\) # (!rLED0Cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(19),
	datad => VCC,
	cin => \rLED0Cnt[18]~64\,
	combout => \rLED0Cnt[19]~65_combout\,
	cout => \rLED0Cnt[19]~66\);

-- Location: FF_X75_Y31_N13
\rLED0Cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[19]~65_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(19));

-- Location: LCCOMB_X75_Y31_N14
\rLED0Cnt[20]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[20]~67_combout\ = (rLED0Cnt(20) & (\rLED0Cnt[19]~66\ $ (GND))) # (!rLED0Cnt(20) & (!\rLED0Cnt[19]~66\ & VCC))
-- \rLED0Cnt[20]~68\ = CARRY((rLED0Cnt(20) & !\rLED0Cnt[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(20),
	datad => VCC,
	cin => \rLED0Cnt[19]~66\,
	combout => \rLED0Cnt[20]~67_combout\,
	cout => \rLED0Cnt[20]~68\);

-- Location: FF_X75_Y31_N15
\rLED0Cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[20]~67_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(20));

-- Location: LCCOMB_X75_Y31_N16
\rLED0Cnt[21]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[21]~69_combout\ = (rLED0Cnt(21) & (!\rLED0Cnt[20]~68\)) # (!rLED0Cnt(21) & ((\rLED0Cnt[20]~68\) # (GND)))
-- \rLED0Cnt[21]~70\ = CARRY((!\rLED0Cnt[20]~68\) # (!rLED0Cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(21),
	datad => VCC,
	cin => \rLED0Cnt[20]~68\,
	combout => \rLED0Cnt[21]~69_combout\,
	cout => \rLED0Cnt[21]~70\);

-- Location: FF_X75_Y31_N17
\rLED0Cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[21]~69_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(21));

-- Location: LCCOMB_X75_Y31_N18
\rLED0Cnt[22]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[22]~71_combout\ = (rLED0Cnt(22) & (\rLED0Cnt[21]~70\ $ (GND))) # (!rLED0Cnt(22) & (!\rLED0Cnt[21]~70\ & VCC))
-- \rLED0Cnt[22]~72\ = CARRY((rLED0Cnt(22) & !\rLED0Cnt[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(22),
	datad => VCC,
	cin => \rLED0Cnt[21]~70\,
	combout => \rLED0Cnt[22]~71_combout\,
	cout => \rLED0Cnt[22]~72\);

-- Location: FF_X75_Y31_N19
\rLED0Cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[22]~71_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(22));

-- Location: LCCOMB_X75_Y31_N20
\rLED0Cnt[23]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[23]~73_combout\ = (rLED0Cnt(23) & (!\rLED0Cnt[22]~72\)) # (!rLED0Cnt(23) & ((\rLED0Cnt[22]~72\) # (GND)))
-- \rLED0Cnt[23]~74\ = CARRY((!\rLED0Cnt[22]~72\) # (!rLED0Cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(23),
	datad => VCC,
	cin => \rLED0Cnt[22]~72\,
	combout => \rLED0Cnt[23]~73_combout\,
	cout => \rLED0Cnt[23]~74\);

-- Location: FF_X75_Y31_N21
\rLED0Cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[23]~73_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(23));

-- Location: LCCOMB_X75_Y31_N22
\rLED0Cnt[24]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[24]~75_combout\ = (rLED0Cnt(24) & (\rLED0Cnt[23]~74\ $ (GND))) # (!rLED0Cnt(24) & (!\rLED0Cnt[23]~74\ & VCC))
-- \rLED0Cnt[24]~76\ = CARRY((rLED0Cnt(24) & !\rLED0Cnt[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rLED0Cnt(24),
	datad => VCC,
	cin => \rLED0Cnt[23]~74\,
	combout => \rLED0Cnt[24]~75_combout\,
	cout => \rLED0Cnt[24]~76\);

-- Location: FF_X75_Y31_N23
\rLED0Cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[24]~75_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(24));

-- Location: LCCOMB_X75_Y31_N24
\rLED0Cnt[25]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0Cnt[25]~77_combout\ = \rLED0Cnt[24]~76\ $ (rLED0Cnt(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => rLED0Cnt(25),
	cin => \rLED0Cnt[24]~76\,
	combout => \rLED0Cnt[25]~77_combout\);

-- Location: FF_X75_Y31_N25
\rLED0Cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0Cnt[25]~77_combout\,
	sclr => \rLED0Cnt[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED0Cnt(25));

-- Location: LCCOMB_X75_Y31_N28
\rLED0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~7_combout\ = (rLED0Cnt(18) & (!rLED0Cnt(23) & (rLED0Cnt(24) & !rLED0Cnt(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(18),
	datab => rLED0Cnt(23),
	datac => rLED0Cnt(24),
	datad => rLED0Cnt(25),
	combout => \rLED0~7_combout\);

-- Location: LCCOMB_X76_Y31_N2
\rLED0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~6_combout\ = (rLED0Cnt(11) & !rLED0Cnt(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => rLED0Cnt(11),
	datad => rLED0Cnt(15),
	combout => \rLED0~6_combout\);

-- Location: LCCOMB_X76_Y31_N4
\rLED0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~8_combout\ = (!rLED0Cnt(17) & (rLED0Cnt(16) & (\rLED0~7_combout\ & \rLED0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(17),
	datab => rLED0Cnt(16),
	datac => \rLED0~7_combout\,
	datad => \rLED0~6_combout\,
	combout => \rLED0~8_combout\);

-- Location: LCCOMB_X75_Y31_N26
\rLED0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~11_combout\ = (!rLED0Cnt(18) & (rLED0Cnt(23) & (!rLED0Cnt(24) & rLED0Cnt(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(18),
	datab => rLED0Cnt(23),
	datac => rLED0Cnt(24),
	datad => rLED0Cnt(25),
	combout => \rLED0~11_combout\);

-- Location: LCCOMB_X76_Y31_N12
\rLED0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~10_combout\ = (!rLED0Cnt(11) & (!rLED0Cnt(16) & (rLED0Cnt(15) & rLED0Cnt(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(11),
	datab => rLED0Cnt(16),
	datac => rLED0Cnt(15),
	datad => rLED0Cnt(17),
	combout => \rLED0~10_combout\);

-- Location: LCCOMB_X76_Y31_N18
\rLED0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~9_combout\ = (!rLED0Cnt(6) & (rLED0Cnt(7) & ((\rState.st1~q\) # (\rState.st1P~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st1~q\,
	datab => \rState.st1P~q\,
	datac => rLED0Cnt(6),
	datad => rLED0Cnt(7),
	combout => \rLED0~9_combout\);

-- Location: LCCOMB_X76_Y31_N8
\rLED0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~12_combout\ = (\rLED0~11_combout\ & (\rLED0~10_combout\ & \rLED0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rLED0~11_combout\,
	datab => \rLED0~10_combout\,
	datad => \rLED0~9_combout\,
	combout => \rLED0~12_combout\);

-- Location: LCCOMB_X76_Y31_N22
\rLED0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~2_combout\ = (((rLED0Cnt(10)) # (!rLED0Cnt(13))) # (!rLED0Cnt(14))) # (!rLED0Cnt(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(12),
	datab => rLED0Cnt(14),
	datac => rLED0Cnt(10),
	datad => rLED0Cnt(13),
	combout => \rLED0~2_combout\);

-- Location: LCCOMB_X75_Y31_N30
\rLED0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~3_combout\ = (((!rLED0Cnt(21)) # (!rLED0Cnt(20))) # (!rLED0Cnt(22))) # (!rLED0Cnt(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(19),
	datab => rLED0Cnt(22),
	datac => rLED0Cnt(20),
	datad => rLED0Cnt(21),
	combout => \rLED0~3_combout\);

-- Location: LCCOMB_X75_Y32_N4
\rLED0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~0_combout\ = (rLED0Cnt(3)) # ((rLED0Cnt(0)) # ((rLED0Cnt(1)) # (rLED0Cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(3),
	datab => rLED0Cnt(0),
	datac => rLED0Cnt(1),
	datad => rLED0Cnt(2),
	combout => \rLED0~0_combout\);

-- Location: LCCOMB_X75_Y32_N2
\rLED0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~1_combout\ = (rLED0Cnt(9)) # ((rLED0Cnt(4)) # ((rLED0Cnt(8)) # (rLED0Cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rLED0Cnt(9),
	datab => rLED0Cnt(4),
	datac => rLED0Cnt(8),
	datad => rLED0Cnt(5),
	combout => \rLED0~1_combout\);

-- Location: LCCOMB_X76_Y31_N0
\rLED0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~4_combout\ = (\rLED0~2_combout\) # ((\rLED0~3_combout\) # ((\rLED0~0_combout\) # (\rLED0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rLED0~2_combout\,
	datab => \rLED0~3_combout\,
	datac => \rLED0~0_combout\,
	datad => \rLED0~1_combout\,
	combout => \rLED0~4_combout\);

-- Location: LCCOMB_X76_Y31_N10
\rLED0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~13_combout\ = (\rLED0~4_combout\) # ((!\rLED0~12_combout\ & ((!\rLED0~8_combout\) # (!\rLED0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rLED0~5_combout\,
	datab => \rLED0~8_combout\,
	datac => \rLED0~12_combout\,
	datad => \rLED0~4_combout\,
	combout => \rLED0~13_combout\);

-- Location: LCCOMB_X76_Y31_N24
\rLED0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~14_combout\ = (\rState.st0~q\ & (\rLED0~q\ $ (!\rLED0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rState.st0~q\,
	datac => \rLED0~q\,
	datad => \rLED0~13_combout\,
	combout => \rLED0~14_combout\);

-- Location: FF_X76_Y31_N25
rLED0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rLED0~q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LED0 <= \LED0~output_o\;
END structure;


