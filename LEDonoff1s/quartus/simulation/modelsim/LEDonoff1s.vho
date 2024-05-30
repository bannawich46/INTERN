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

-- DATE "05/30/2024 15:36:32"

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

ENTITY 	LEDonoff1s IS
    PORT (
	Clk50 : IN std_logic;
	Rst : IN std_logic;
	LED0 : BUFFER std_logic
	);
END LEDonoff1s;

-- Design Ports Information
-- LED0	=>  Location: PIN_C7,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Clk50	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_H21,	 I/O Standard: 1.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF LEDonoff1s IS
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
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \LED0Cnt~0_combout\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \LED0Cnt~1_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \LED0Cnt~2_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \LED0Cnt~3_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \LED0Cnt~4_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \LED0Cnt~5_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \LED0Cnt~6_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \LED0Cnt~7_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \LED0Cnt~8_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \LED0Cnt~9_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \LED0Cnt~10_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \LED0Cnt~11_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \LED0Cnt~12_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \rLED0~0_combout\ : std_logic;
SIGNAL \rLED0~q\ : std_logic;
SIGNAL LED0Cnt : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_Rst~input_o\ : std_logic;
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
LED0 <= ww_LED0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Clk50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk50~input_o\);
\ALT_INV_Rst~input_o\ <= NOT \Rst~input_o\;
\ALT_INV_rLED0~q\ <= NOT \rLED0~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: LCCOMB_X67_Y28_N6
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = LED0Cnt(0) $ (VCC)
-- \Add0~1\ = CARRY(LED0Cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LED0Cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X67_Y28_N4
\LED0Cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED0Cnt~0_combout\ = (!\Equal0~8_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~0_combout\,
	combout => \LED0Cnt~0_combout\);

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

-- Location: FF_X67_Y28_N5
\LED0Cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \LED0Cnt~0_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(0));

-- Location: LCCOMB_X67_Y28_N8
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (LED0Cnt(1) & (!\Add0~1\)) # (!LED0Cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!LED0Cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LED0Cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X67_Y28_N9
\LED0Cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(1));

-- Location: LCCOMB_X67_Y28_N10
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (LED0Cnt(2) & (\Add0~3\ $ (GND))) # (!LED0Cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((LED0Cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X67_Y28_N11
\LED0Cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(2));

-- Location: LCCOMB_X67_Y28_N12
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (LED0Cnt(3) & (!\Add0~5\)) # (!LED0Cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!LED0Cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X67_Y28_N13
\LED0Cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(3));

-- Location: LCCOMB_X67_Y28_N14
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (LED0Cnt(4) & (\Add0~7\ $ (GND))) # (!LED0Cnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((LED0Cnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LED0Cnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X67_Y28_N15
\LED0Cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(4));

-- Location: LCCOMB_X67_Y28_N16
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (LED0Cnt(5) & (!\Add0~9\)) # (!LED0Cnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!LED0Cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LED0Cnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X67_Y28_N17
\LED0Cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(5));

-- Location: LCCOMB_X67_Y28_N18
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (LED0Cnt(6) & (\Add0~11\ $ (GND))) # (!LED0Cnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((LED0Cnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LED0Cnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X67_Y28_N19
\LED0Cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(6));

-- Location: LCCOMB_X67_Y28_N20
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (LED0Cnt(7) & (!\Add0~13\)) # (!LED0Cnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!LED0Cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LED0Cnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X67_Y28_N2
\LED0Cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED0Cnt~1_combout\ = (!\Equal0~8_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~14_combout\,
	combout => \LED0Cnt~1_combout\);

-- Location: FF_X67_Y28_N3
\LED0Cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \LED0Cnt~1_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(7));

-- Location: LCCOMB_X67_Y28_N22
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (LED0Cnt(8) & (\Add0~15\ $ (GND))) # (!LED0Cnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((LED0Cnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X67_Y28_N23
\LED0Cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(8));

-- Location: LCCOMB_X67_Y28_N24
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (LED0Cnt(9) & (!\Add0~17\)) # (!LED0Cnt(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!LED0Cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LED0Cnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X67_Y28_N25
\LED0Cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(9));

-- Location: LCCOMB_X67_Y28_N26
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (LED0Cnt(10) & (\Add0~19\ $ (GND))) # (!LED0Cnt(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((LED0Cnt(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X67_Y28_N27
\LED0Cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(10));

-- Location: LCCOMB_X67_Y28_N28
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (LED0Cnt(11) & (!\Add0~21\)) # (!LED0Cnt(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!LED0Cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LED0Cnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X67_Y28_N29
\LED0Cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(11));

-- Location: LCCOMB_X67_Y28_N30
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (LED0Cnt(12) & (\Add0~23\ $ (GND))) # (!LED0Cnt(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((LED0Cnt(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X66_Y27_N14
\LED0Cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED0Cnt~2_combout\ = (\Add0~24_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \Equal0~8_combout\,
	combout => \LED0Cnt~2_combout\);

-- Location: FF_X66_Y27_N15
\LED0Cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \LED0Cnt~2_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(12));

-- Location: LCCOMB_X67_Y27_N0
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (LED0Cnt(13) & (!\Add0~25\)) # (!LED0Cnt(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!LED0Cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X66_Y27_N8
\LED0Cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED0Cnt~3_combout\ = (\Add0~26_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~26_combout\,
	datad => \Equal0~8_combout\,
	combout => \LED0Cnt~3_combout\);

-- Location: FF_X66_Y27_N9
\LED0Cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \LED0Cnt~3_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(13));

-- Location: LCCOMB_X67_Y27_N2
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (LED0Cnt(14) & (\Add0~27\ $ (GND))) # (!LED0Cnt(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((LED0Cnt(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X67_Y27_N26
\LED0Cnt~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED0Cnt~4_combout\ = (\Add0~28_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datad => \Equal0~8_combout\,
	combout => \LED0Cnt~4_combout\);

-- Location: FF_X67_Y27_N27
\LED0Cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \LED0Cnt~4_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(14));

-- Location: LCCOMB_X67_Y27_N4
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (LED0Cnt(15) & (!\Add0~29\)) # (!LED0Cnt(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!LED0Cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X66_Y27_N26
\LED0Cnt~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED0Cnt~5_combout\ = (!\Equal0~8_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add0~30_combout\,
	combout => \LED0Cnt~5_combout\);

-- Location: FF_X66_Y27_N27
\LED0Cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \LED0Cnt~5_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(15));

-- Location: LCCOMB_X67_Y27_N6
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (LED0Cnt(16) & (\Add0~31\ $ (GND))) # (!LED0Cnt(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((LED0Cnt(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X67_Y27_N7
\LED0Cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(16));

-- Location: LCCOMB_X67_Y27_N8
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (LED0Cnt(17) & (!\Add0~33\)) # (!LED0Cnt(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!LED0Cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X66_Y27_N0
\LED0Cnt~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED0Cnt~6_combout\ = (\Add0~34_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~34_combout\,
	datad => \Equal0~8_combout\,
	combout => \LED0Cnt~6_combout\);

-- Location: FF_X66_Y27_N1
\LED0Cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \LED0Cnt~6_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(17));

-- Location: LCCOMB_X67_Y27_N10
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (LED0Cnt(18) & (\Add0~35\ $ (GND))) # (!LED0Cnt(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((LED0Cnt(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X67_Y27_N11
\LED0Cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(18));

-- Location: LCCOMB_X67_Y27_N12
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (LED0Cnt(19) & (!\Add0~37\)) # (!LED0Cnt(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!LED0Cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LED0Cnt(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X66_Y27_N6
\LED0Cnt~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED0Cnt~7_combout\ = (\Add0~38_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \Equal0~8_combout\,
	combout => \LED0Cnt~7_combout\);

-- Location: FF_X66_Y27_N7
\LED0Cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \LED0Cnt~7_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(19));

-- Location: LCCOMB_X67_Y27_N14
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (LED0Cnt(20) & (\Add0~39\ $ (GND))) # (!LED0Cnt(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((LED0Cnt(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LED0Cnt(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X67_Y27_N28
\LED0Cnt~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED0Cnt~8_combout\ = (\Add0~40_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~40_combout\,
	datad => \Equal0~8_combout\,
	combout => \LED0Cnt~8_combout\);

-- Location: FF_X67_Y27_N29
\LED0Cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \LED0Cnt~8_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(20));

-- Location: LCCOMB_X67_Y27_N16
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (LED0Cnt(21) & (!\Add0~41\)) # (!LED0Cnt(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!LED0Cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LED0Cnt(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X66_Y27_N30
\LED0Cnt~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED0Cnt~9_combout\ = (!\Equal0~8_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add0~42_combout\,
	combout => \LED0Cnt~9_combout\);

-- Location: FF_X66_Y27_N31
\LED0Cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \LED0Cnt~9_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(21));

-- Location: LCCOMB_X67_Y27_N18
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (LED0Cnt(22) & (\Add0~43\ $ (GND))) # (!LED0Cnt(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((LED0Cnt(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X67_Y27_N30
\LED0Cnt~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED0Cnt~10_combout\ = (!\Equal0~8_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add0~44_combout\,
	combout => \LED0Cnt~10_combout\);

-- Location: FF_X67_Y27_N31
\LED0Cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \LED0Cnt~10_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(22));

-- Location: LCCOMB_X67_Y27_N20
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (LED0Cnt(23) & (!\Add0~45\)) # (!LED0Cnt(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!LED0Cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X66_Y27_N16
\LED0Cnt~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED0Cnt~11_combout\ = (\Add0~46_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~46_combout\,
	datad => \Equal0~8_combout\,
	combout => \LED0Cnt~11_combout\);

-- Location: FF_X66_Y27_N17
\LED0Cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \LED0Cnt~11_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(23));

-- Location: LCCOMB_X66_Y27_N22
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (LED0Cnt(21) & (LED0Cnt(23) & (LED0Cnt(22) & LED0Cnt(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(21),
	datab => LED0Cnt(23),
	datac => LED0Cnt(22),
	datad => LED0Cnt(20),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X67_Y27_N22
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (LED0Cnt(24) & (\Add0~47\ $ (GND))) # (!LED0Cnt(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((LED0Cnt(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X67_Y27_N23
\LED0Cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(24));

-- Location: LCCOMB_X67_Y27_N24
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \Add0~49\ $ (LED0Cnt(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => LED0Cnt(25),
	cin => \Add0~49\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X66_Y27_N24
\LED0Cnt~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED0Cnt~12_combout\ = (!\Equal0~8_combout\ & \Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add0~50_combout\,
	combout => \LED0Cnt~12_combout\);

-- Location: FF_X66_Y27_N25
\LED0Cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \LED0Cnt~12_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED0Cnt(25));

-- Location: LCCOMB_X66_Y27_N18
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (LED0Cnt(25) & !LED0Cnt(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LED0Cnt(25),
	datac => LED0Cnt(24),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X66_Y27_N4
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (LED0Cnt(19) & (LED0Cnt(17) & (!LED0Cnt(18) & !LED0Cnt(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(19),
	datab => LED0Cnt(17),
	datac => LED0Cnt(18),
	datad => LED0Cnt(16),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X66_Y28_N30
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!LED0Cnt(9) & (!LED0Cnt(11) & (!LED0Cnt(10) & !LED0Cnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(9),
	datab => LED0Cnt(11),
	datac => LED0Cnt(10),
	datad => LED0Cnt(8),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X66_Y27_N20
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (LED0Cnt(15) & (LED0Cnt(12) & (LED0Cnt(13) & LED0Cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(15),
	datab => LED0Cnt(12),
	datac => LED0Cnt(13),
	datad => LED0Cnt(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X67_Y28_N0
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!LED0Cnt(5) & (!LED0Cnt(6) & (!LED0Cnt(4) & LED0Cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(5),
	datab => LED0Cnt(6),
	datac => LED0Cnt(4),
	datad => LED0Cnt(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X66_Y28_N20
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!LED0Cnt(0) & (!LED0Cnt(2) & (!LED0Cnt(1) & !LED0Cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LED0Cnt(0),
	datab => LED0Cnt(2),
	datac => LED0Cnt(1),
	datad => LED0Cnt(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X66_Y27_N10
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~3_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X66_Y27_N12
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~6_combout\ & (\Equal0~7_combout\ & (\Equal0~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X66_Y27_N28
\rLED0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rLED0~0_combout\ = \rLED0~q\ $ (\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rLED0~q\,
	datad => \Equal0~8_combout\,
	combout => \rLED0~0_combout\);

-- Location: FF_X66_Y27_N29
rLED0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rLED0~0_combout\,
	sclr => \ALT_INV_Rst~input_o\,
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


