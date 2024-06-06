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

-- DATE "06/05/2024 15:53:32"

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

ENTITY 	LEDsBinaryCounter IS
    PORT (
	Clk50 : IN std_logic;
	KEY0 : IN std_logic;
	KEY1 : IN std_logic;
	LED : OUT std_logic_vector(7 DOWNTO 0)
	);
END LEDsBinaryCounter;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_C7,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_C8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_A6,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_B7,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_C4,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_A5,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_B4,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_C5,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Clk50	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY1	=>  Location: PIN_H22,	 I/O Standard: 1.5 V Schmitt Trigger,	 Current Strength: Default
-- KEY0	=>  Location: PIN_H21,	 I/O Standard: 1.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF LEDsBinaryCounter IS
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
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_ClkDivider|rClk1k~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \Clk50~input_o\ : std_logic;
SIGNAL \Clk50~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[0]~8_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~0_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~1\ : std_logic;
SIGNAL \u_ClkDivider|Add0~2_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~3\ : std_logic;
SIGNAL \u_ClkDivider|Add0~4_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~5\ : std_logic;
SIGNAL \u_ClkDivider|Add0~6_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~7\ : std_logic;
SIGNAL \u_ClkDivider|Add0~8_combout\ : std_logic;
SIGNAL \u_ClkDivider|ClkCnt~0_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~9\ : std_logic;
SIGNAL \u_ClkDivider|Add0~10_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~11\ : std_logic;
SIGNAL \u_ClkDivider|Add0~12_combout\ : std_logic;
SIGNAL \u_ClkDivider|ClkCnt~1_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~13\ : std_logic;
SIGNAL \u_ClkDivider|Add0~14_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~15\ : std_logic;
SIGNAL \u_ClkDivider|Add0~16_combout\ : std_logic;
SIGNAL \u_ClkDivider|ClkCnt~2_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~17\ : std_logic;
SIGNAL \u_ClkDivider|Add0~18_combout\ : std_logic;
SIGNAL \u_ClkDivider|ClkCnt~3_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~19\ : std_logic;
SIGNAL \u_ClkDivider|Add0~20_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~21\ : std_logic;
SIGNAL \u_ClkDivider|Add0~22_combout\ : std_logic;
SIGNAL \u_ClkDivider|Equal0~2_combout\ : std_logic;
SIGNAL \u_ClkDivider|Equal0~0_combout\ : std_logic;
SIGNAL \u_ClkDivider|Equal0~1_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~23\ : std_logic;
SIGNAL \u_ClkDivider|Add0~24_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~25\ : std_logic;
SIGNAL \u_ClkDivider|Add0~26_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~27\ : std_logic;
SIGNAL \u_ClkDivider|Add0~28_combout\ : std_logic;
SIGNAL \u_ClkDivider|ClkCnt~4_combout\ : std_logic;
SIGNAL \u_ClkDivider|Add0~29\ : std_logic;
SIGNAL \u_ClkDivider|Add0~30_combout\ : std_logic;
SIGNAL \u_ClkDivider|ClkCnt~5_combout\ : std_logic;
SIGNAL \u_ClkDivider|Equal0~3_combout\ : std_logic;
SIGNAL \u_ClkDivider|Equal0~4_combout\ : std_logic;
SIGNAL \u_ClkDivider|rClk1k~0_combout\ : std_logic;
SIGNAL \u_ClkDivider|rClk1k~feeder_combout\ : std_logic;
SIGNAL \u_ClkDivider|rClk1k~q\ : std_logic;
SIGNAL \u_ClkDivider|rClk1k~clkctrl_outclk\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \KEY0_LastState~q\ : std_logic;
SIGNAL \u_Counter|u_rCounter4bits_0~0_combout\ : std_logic;
SIGNAL \u_Counter|rCounter4bits_0[1]~2_combout\ : std_logic;
SIGNAL \u_Counter|rCounter4bits_0[1]~feeder_combout\ : std_logic;
SIGNAL \u_Counter|rCounter4bits_0[2]~3_combout\ : std_logic;
SIGNAL \u_Counter|rCounter4bits_0[2]~4_combout\ : std_logic;
SIGNAL \u_Counter|rCounter4bits_0[2]~feeder_combout\ : std_logic;
SIGNAL \u_Counter|Add0~0_combout\ : std_logic;
SIGNAL \u_Counter|rCounter4bits_0[3]~5_combout\ : std_logic;
SIGNAL \u_Counter|rCounter4bits_0[3]~feeder_combout\ : std_logic;
SIGNAL \u_Counter|Equal0~0_combout\ : std_logic;
SIGNAL \u_Counter|rCounter4bits_0[0]~6_combout\ : std_logic;
SIGNAL \u_Counter|rCounter4bits_0[0]~feeder_combout\ : std_logic;
SIGNAL \u_OneShot|rCounter4bits_0[1]~feeder_combout\ : std_logic;
SIGNAL \u_OneShot|rCounter4bits_0[3]~feeder_combout\ : std_logic;
SIGNAL \u_OneShot|u_rDKEY0~0_combout\ : std_logic;
SIGNAL \u_OneShot|u_rDKEY0~1_combout\ : std_logic;
SIGNAL \u_OneShot|u_rDKEY0~2_combout\ : std_logic;
SIGNAL \u_OneShot|rDKEY0~q\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \KEY1_LastState~q\ : std_logic;
SIGNAL \u_OneShot|rDKEY1~feeder_combout\ : std_logic;
SIGNAL \u_OneShot|rDKEY1~q\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[0]~10_combout\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[0]~9\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[1]~11_combout\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[1]~12\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[2]~13_combout\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[2]~14\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[3]~15_combout\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[3]~16\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[4]~17_combout\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[4]~18\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[5]~19_combout\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[5]~20\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[6]~21_combout\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[6]~22\ : std_logic;
SIGNAL \u_Counter|rCounter8bits[7]~23_combout\ : std_logic;
SIGNAL \u_ClkDivider|ClkCnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_Counter|rCounter8bits\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_OneShot|rCounter4bits_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_Counter|rCounter4bits_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_Counter|ALT_INV_rCounter8bits\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk50 <= Clk50;
ww_KEY0 <= KEY0;
ww_KEY1 <= KEY1;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\u_ClkDivider|rClk1k~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_ClkDivider|rClk1k~q\);

\Clk50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk50~input_o\);
\u_Counter|ALT_INV_rCounter8bits\(7) <= NOT \u_Counter|rCounter8bits\(7);
\u_Counter|ALT_INV_rCounter8bits\(6) <= NOT \u_Counter|rCounter8bits\(6);
\u_Counter|ALT_INV_rCounter8bits\(5) <= NOT \u_Counter|rCounter8bits\(5);
\u_Counter|ALT_INV_rCounter8bits\(4) <= NOT \u_Counter|rCounter8bits\(4);
\u_Counter|ALT_INV_rCounter8bits\(3) <= NOT \u_Counter|rCounter8bits\(3);
\u_Counter|ALT_INV_rCounter8bits\(2) <= NOT \u_Counter|rCounter8bits\(2);
\u_Counter|ALT_INV_rCounter8bits\(1) <= NOT \u_Counter|rCounter8bits\(1);
\u_Counter|ALT_INV_rCounter8bits\(0) <= NOT \u_Counter|rCounter8bits\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
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
\LED[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Counter|ALT_INV_rCounter8bits\(0),
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\LED[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Counter|ALT_INV_rCounter8bits\(1),
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\LED[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Counter|ALT_INV_rCounter8bits\(2),
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\LED[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Counter|ALT_INV_rCounter8bits\(3),
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\LED[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Counter|ALT_INV_rCounter8bits\(4),
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\LED[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Counter|ALT_INV_rCounter8bits\(5),
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\LED[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Counter|ALT_INV_rCounter8bits\(6),
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\LED[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_Counter|ALT_INV_rCounter8bits\(7),
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

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

-- Location: LCCOMB_X45_Y36_N8
\u_Counter|rCounter8bits[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter8bits[0]~8_combout\ = \u_Counter|rCounter8bits\(0) $ (VCC)
-- \u_Counter|rCounter8bits[0]~9\ = CARRY(\u_Counter|rCounter8bits\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Counter|rCounter8bits\(0),
	datad => VCC,
	combout => \u_Counter|rCounter8bits[0]~8_combout\,
	cout => \u_Counter|rCounter8bits[0]~9\);

-- Location: LCCOMB_X46_Y53_N0
\u_ClkDivider|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~0_combout\ = \u_ClkDivider|ClkCnt\(0) $ (VCC)
-- \u_ClkDivider|Add0~1\ = CARRY(\u_ClkDivider|ClkCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ClkDivider|ClkCnt\(0),
	datad => VCC,
	combout => \u_ClkDivider|Add0~0_combout\,
	cout => \u_ClkDivider|Add0~1\);

-- Location: FF_X46_Y53_N1
\u_ClkDivider|ClkCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(0));

-- Location: LCCOMB_X46_Y53_N2
\u_ClkDivider|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~2_combout\ = (\u_ClkDivider|ClkCnt\(1) & (!\u_ClkDivider|Add0~1\)) # (!\u_ClkDivider|ClkCnt\(1) & ((\u_ClkDivider|Add0~1\) # (GND)))
-- \u_ClkDivider|Add0~3\ = CARRY((!\u_ClkDivider|Add0~1\) # (!\u_ClkDivider|ClkCnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_ClkDivider|ClkCnt\(1),
	datad => VCC,
	cin => \u_ClkDivider|Add0~1\,
	combout => \u_ClkDivider|Add0~2_combout\,
	cout => \u_ClkDivider|Add0~3\);

-- Location: FF_X46_Y53_N3
\u_ClkDivider|ClkCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(1));

-- Location: LCCOMB_X46_Y53_N4
\u_ClkDivider|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~4_combout\ = (\u_ClkDivider|ClkCnt\(2) & (\u_ClkDivider|Add0~3\ $ (GND))) # (!\u_ClkDivider|ClkCnt\(2) & (!\u_ClkDivider|Add0~3\ & VCC))
-- \u_ClkDivider|Add0~5\ = CARRY((\u_ClkDivider|ClkCnt\(2) & !\u_ClkDivider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_ClkDivider|ClkCnt\(2),
	datad => VCC,
	cin => \u_ClkDivider|Add0~3\,
	combout => \u_ClkDivider|Add0~4_combout\,
	cout => \u_ClkDivider|Add0~5\);

-- Location: FF_X46_Y53_N5
\u_ClkDivider|ClkCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(2));

-- Location: LCCOMB_X46_Y53_N6
\u_ClkDivider|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~6_combout\ = (\u_ClkDivider|ClkCnt\(3) & (!\u_ClkDivider|Add0~5\)) # (!\u_ClkDivider|ClkCnt\(3) & ((\u_ClkDivider|Add0~5\) # (GND)))
-- \u_ClkDivider|Add0~7\ = CARRY((!\u_ClkDivider|Add0~5\) # (!\u_ClkDivider|ClkCnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|ClkCnt\(3),
	datad => VCC,
	cin => \u_ClkDivider|Add0~5\,
	combout => \u_ClkDivider|Add0~6_combout\,
	cout => \u_ClkDivider|Add0~7\);

-- Location: FF_X46_Y53_N7
\u_ClkDivider|ClkCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(3));

-- Location: LCCOMB_X46_Y53_N8
\u_ClkDivider|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~8_combout\ = (\u_ClkDivider|ClkCnt\(4) & (\u_ClkDivider|Add0~7\ $ (GND))) # (!\u_ClkDivider|ClkCnt\(4) & (!\u_ClkDivider|Add0~7\ & VCC))
-- \u_ClkDivider|Add0~9\ = CARRY((\u_ClkDivider|ClkCnt\(4) & !\u_ClkDivider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|ClkCnt\(4),
	datad => VCC,
	cin => \u_ClkDivider|Add0~7\,
	combout => \u_ClkDivider|Add0~8_combout\,
	cout => \u_ClkDivider|Add0~9\);

-- Location: LCCOMB_X45_Y53_N16
\u_ClkDivider|ClkCnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|ClkCnt~0_combout\ = (!\u_ClkDivider|Equal0~4_combout\ & \u_ClkDivider|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|Equal0~4_combout\,
	datac => \u_ClkDivider|Add0~8_combout\,
	combout => \u_ClkDivider|ClkCnt~0_combout\);

-- Location: FF_X45_Y53_N17
\u_ClkDivider|ClkCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|ClkCnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(4));

-- Location: LCCOMB_X46_Y53_N10
\u_ClkDivider|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~10_combout\ = (\u_ClkDivider|ClkCnt\(5) & (!\u_ClkDivider|Add0~9\)) # (!\u_ClkDivider|ClkCnt\(5) & ((\u_ClkDivider|Add0~9\) # (GND)))
-- \u_ClkDivider|Add0~11\ = CARRY((!\u_ClkDivider|Add0~9\) # (!\u_ClkDivider|ClkCnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|ClkCnt\(5),
	datad => VCC,
	cin => \u_ClkDivider|Add0~9\,
	combout => \u_ClkDivider|Add0~10_combout\,
	cout => \u_ClkDivider|Add0~11\);

-- Location: FF_X46_Y53_N11
\u_ClkDivider|ClkCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(5));

-- Location: LCCOMB_X46_Y53_N12
\u_ClkDivider|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~12_combout\ = (\u_ClkDivider|ClkCnt\(6) & (\u_ClkDivider|Add0~11\ $ (GND))) # (!\u_ClkDivider|ClkCnt\(6) & (!\u_ClkDivider|Add0~11\ & VCC))
-- \u_ClkDivider|Add0~13\ = CARRY((\u_ClkDivider|ClkCnt\(6) & !\u_ClkDivider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_ClkDivider|ClkCnt\(6),
	datad => VCC,
	cin => \u_ClkDivider|Add0~11\,
	combout => \u_ClkDivider|Add0~12_combout\,
	cout => \u_ClkDivider|Add0~13\);

-- Location: LCCOMB_X45_Y53_N6
\u_ClkDivider|ClkCnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|ClkCnt~1_combout\ = (!\u_ClkDivider|Equal0~4_combout\ & \u_ClkDivider|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|Equal0~4_combout\,
	datac => \u_ClkDivider|Add0~12_combout\,
	combout => \u_ClkDivider|ClkCnt~1_combout\);

-- Location: FF_X45_Y53_N7
\u_ClkDivider|ClkCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|ClkCnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(6));

-- Location: LCCOMB_X46_Y53_N14
\u_ClkDivider|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~14_combout\ = (\u_ClkDivider|ClkCnt\(7) & (!\u_ClkDivider|Add0~13\)) # (!\u_ClkDivider|ClkCnt\(7) & ((\u_ClkDivider|Add0~13\) # (GND)))
-- \u_ClkDivider|Add0~15\ = CARRY((!\u_ClkDivider|Add0~13\) # (!\u_ClkDivider|ClkCnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_ClkDivider|ClkCnt\(7),
	datad => VCC,
	cin => \u_ClkDivider|Add0~13\,
	combout => \u_ClkDivider|Add0~14_combout\,
	cout => \u_ClkDivider|Add0~15\);

-- Location: FF_X46_Y53_N15
\u_ClkDivider|ClkCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(7));

-- Location: LCCOMB_X46_Y53_N16
\u_ClkDivider|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~16_combout\ = (\u_ClkDivider|ClkCnt\(8) & (\u_ClkDivider|Add0~15\ $ (GND))) # (!\u_ClkDivider|ClkCnt\(8) & (!\u_ClkDivider|Add0~15\ & VCC))
-- \u_ClkDivider|Add0~17\ = CARRY((\u_ClkDivider|ClkCnt\(8) & !\u_ClkDivider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|ClkCnt\(8),
	datad => VCC,
	cin => \u_ClkDivider|Add0~15\,
	combout => \u_ClkDivider|Add0~16_combout\,
	cout => \u_ClkDivider|Add0~17\);

-- Location: LCCOMB_X45_Y53_N26
\u_ClkDivider|ClkCnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|ClkCnt~2_combout\ = (!\u_ClkDivider|Equal0~4_combout\ & \u_ClkDivider|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_ClkDivider|Equal0~4_combout\,
	datad => \u_ClkDivider|Add0~16_combout\,
	combout => \u_ClkDivider|ClkCnt~2_combout\);

-- Location: FF_X45_Y53_N27
\u_ClkDivider|ClkCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|ClkCnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(8));

-- Location: LCCOMB_X46_Y53_N18
\u_ClkDivider|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~18_combout\ = (\u_ClkDivider|ClkCnt\(9) & (!\u_ClkDivider|Add0~17\)) # (!\u_ClkDivider|ClkCnt\(9) & ((\u_ClkDivider|Add0~17\) # (GND)))
-- \u_ClkDivider|Add0~19\ = CARRY((!\u_ClkDivider|Add0~17\) # (!\u_ClkDivider|ClkCnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|ClkCnt\(9),
	datad => VCC,
	cin => \u_ClkDivider|Add0~17\,
	combout => \u_ClkDivider|Add0~18_combout\,
	cout => \u_ClkDivider|Add0~19\);

-- Location: LCCOMB_X45_Y53_N8
\u_ClkDivider|ClkCnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|ClkCnt~3_combout\ = (!\u_ClkDivider|Equal0~4_combout\ & \u_ClkDivider|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_ClkDivider|Equal0~4_combout\,
	datad => \u_ClkDivider|Add0~18_combout\,
	combout => \u_ClkDivider|ClkCnt~3_combout\);

-- Location: FF_X45_Y53_N9
\u_ClkDivider|ClkCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|ClkCnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(9));

-- Location: LCCOMB_X46_Y53_N20
\u_ClkDivider|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~20_combout\ = (\u_ClkDivider|ClkCnt\(10) & (\u_ClkDivider|Add0~19\ $ (GND))) # (!\u_ClkDivider|ClkCnt\(10) & (!\u_ClkDivider|Add0~19\ & VCC))
-- \u_ClkDivider|Add0~21\ = CARRY((\u_ClkDivider|ClkCnt\(10) & !\u_ClkDivider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_ClkDivider|ClkCnt\(10),
	datad => VCC,
	cin => \u_ClkDivider|Add0~19\,
	combout => \u_ClkDivider|Add0~20_combout\,
	cout => \u_ClkDivider|Add0~21\);

-- Location: FF_X46_Y53_N21
\u_ClkDivider|ClkCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(10));

-- Location: LCCOMB_X46_Y53_N22
\u_ClkDivider|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~22_combout\ = (\u_ClkDivider|ClkCnt\(11) & (!\u_ClkDivider|Add0~21\)) # (!\u_ClkDivider|ClkCnt\(11) & ((\u_ClkDivider|Add0~21\) # (GND)))
-- \u_ClkDivider|Add0~23\ = CARRY((!\u_ClkDivider|Add0~21\) # (!\u_ClkDivider|ClkCnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|ClkCnt\(11),
	datad => VCC,
	cin => \u_ClkDivider|Add0~21\,
	combout => \u_ClkDivider|Add0~22_combout\,
	cout => \u_ClkDivider|Add0~23\);

-- Location: FF_X46_Y53_N23
\u_ClkDivider|ClkCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(11));

-- Location: LCCOMB_X45_Y53_N22
\u_ClkDivider|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Equal0~2_combout\ = (\u_ClkDivider|ClkCnt\(8) & (\u_ClkDivider|ClkCnt\(9) & (!\u_ClkDivider|ClkCnt\(10) & !\u_ClkDivider|ClkCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|ClkCnt\(8),
	datab => \u_ClkDivider|ClkCnt\(9),
	datac => \u_ClkDivider|ClkCnt\(10),
	datad => \u_ClkDivider|ClkCnt\(11),
	combout => \u_ClkDivider|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y53_N18
\u_ClkDivider|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Equal0~0_combout\ = (\u_ClkDivider|ClkCnt\(2) & (!\u_ClkDivider|ClkCnt\(4) & (\u_ClkDivider|ClkCnt\(3) & \u_ClkDivider|ClkCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|ClkCnt\(2),
	datab => \u_ClkDivider|ClkCnt\(4),
	datac => \u_ClkDivider|ClkCnt\(3),
	datad => \u_ClkDivider|ClkCnt\(1),
	combout => \u_ClkDivider|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y53_N30
\u_ClkDivider|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Equal0~1_combout\ = (\u_ClkDivider|ClkCnt\(6) & (!\u_ClkDivider|ClkCnt\(5) & (\u_ClkDivider|ClkCnt\(0) & !\u_ClkDivider|ClkCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|ClkCnt\(6),
	datab => \u_ClkDivider|ClkCnt\(5),
	datac => \u_ClkDivider|ClkCnt\(0),
	datad => \u_ClkDivider|ClkCnt\(7),
	combout => \u_ClkDivider|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y53_N24
\u_ClkDivider|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~24_combout\ = (\u_ClkDivider|ClkCnt\(12) & (\u_ClkDivider|Add0~23\ $ (GND))) # (!\u_ClkDivider|ClkCnt\(12) & (!\u_ClkDivider|Add0~23\ & VCC))
-- \u_ClkDivider|Add0~25\ = CARRY((\u_ClkDivider|ClkCnt\(12) & !\u_ClkDivider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_ClkDivider|ClkCnt\(12),
	datad => VCC,
	cin => \u_ClkDivider|Add0~23\,
	combout => \u_ClkDivider|Add0~24_combout\,
	cout => \u_ClkDivider|Add0~25\);

-- Location: FF_X46_Y53_N25
\u_ClkDivider|ClkCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(12));

-- Location: LCCOMB_X46_Y53_N26
\u_ClkDivider|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~26_combout\ = (\u_ClkDivider|ClkCnt\(13) & (!\u_ClkDivider|Add0~25\)) # (!\u_ClkDivider|ClkCnt\(13) & ((\u_ClkDivider|Add0~25\) # (GND)))
-- \u_ClkDivider|Add0~27\ = CARRY((!\u_ClkDivider|Add0~25\) # (!\u_ClkDivider|ClkCnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|ClkCnt\(13),
	datad => VCC,
	cin => \u_ClkDivider|Add0~25\,
	combout => \u_ClkDivider|Add0~26_combout\,
	cout => \u_ClkDivider|Add0~27\);

-- Location: FF_X46_Y53_N27
\u_ClkDivider|ClkCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(13));

-- Location: LCCOMB_X46_Y53_N28
\u_ClkDivider|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~28_combout\ = (\u_ClkDivider|ClkCnt\(14) & (\u_ClkDivider|Add0~27\ $ (GND))) # (!\u_ClkDivider|ClkCnt\(14) & (!\u_ClkDivider|Add0~27\ & VCC))
-- \u_ClkDivider|Add0~29\ = CARRY((\u_ClkDivider|ClkCnt\(14) & !\u_ClkDivider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|ClkCnt\(14),
	datad => VCC,
	cin => \u_ClkDivider|Add0~27\,
	combout => \u_ClkDivider|Add0~28_combout\,
	cout => \u_ClkDivider|Add0~29\);

-- Location: LCCOMB_X45_Y53_N12
\u_ClkDivider|ClkCnt~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|ClkCnt~4_combout\ = (!\u_ClkDivider|Equal0~4_combout\ & \u_ClkDivider|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_ClkDivider|Equal0~4_combout\,
	datad => \u_ClkDivider|Add0~28_combout\,
	combout => \u_ClkDivider|ClkCnt~4_combout\);

-- Location: FF_X45_Y53_N13
\u_ClkDivider|ClkCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|ClkCnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(14));

-- Location: LCCOMB_X46_Y53_N30
\u_ClkDivider|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Add0~30_combout\ = \u_ClkDivider|Add0~29\ $ (\u_ClkDivider|ClkCnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_ClkDivider|ClkCnt\(15),
	cin => \u_ClkDivider|Add0~29\,
	combout => \u_ClkDivider|Add0~30_combout\);

-- Location: LCCOMB_X45_Y53_N14
\u_ClkDivider|ClkCnt~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|ClkCnt~5_combout\ = (!\u_ClkDivider|Equal0~4_combout\ & \u_ClkDivider|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|Equal0~4_combout\,
	datac => \u_ClkDivider|Add0~30_combout\,
	combout => \u_ClkDivider|ClkCnt~5_combout\);

-- Location: FF_X45_Y53_N15
\u_ClkDivider|ClkCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|ClkCnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|ClkCnt\(15));

-- Location: LCCOMB_X45_Y53_N28
\u_ClkDivider|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Equal0~3_combout\ = (\u_ClkDivider|ClkCnt\(14) & (!\u_ClkDivider|ClkCnt\(13) & (\u_ClkDivider|ClkCnt\(15) & !\u_ClkDivider|ClkCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|ClkCnt\(14),
	datab => \u_ClkDivider|ClkCnt\(13),
	datac => \u_ClkDivider|ClkCnt\(15),
	datad => \u_ClkDivider|ClkCnt\(12),
	combout => \u_ClkDivider|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y53_N20
\u_ClkDivider|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|Equal0~4_combout\ = (\u_ClkDivider|Equal0~2_combout\ & (\u_ClkDivider|Equal0~0_combout\ & (\u_ClkDivider|Equal0~1_combout\ & \u_ClkDivider|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ClkDivider|Equal0~2_combout\,
	datab => \u_ClkDivider|Equal0~0_combout\,
	datac => \u_ClkDivider|Equal0~1_combout\,
	datad => \u_ClkDivider|Equal0~3_combout\,
	combout => \u_ClkDivider|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y53_N24
\u_ClkDivider|rClk1k~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|rClk1k~0_combout\ = \u_ClkDivider|rClk1k~q\ $ (\u_ClkDivider|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_ClkDivider|rClk1k~q\,
	datad => \u_ClkDivider|Equal0~4_combout\,
	combout => \u_ClkDivider|rClk1k~0_combout\);

-- Location: LCCOMB_X45_Y53_N10
\u_ClkDivider|rClk1k~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_ClkDivider|rClk1k~feeder_combout\ = \u_ClkDivider|rClk1k~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ClkDivider|rClk1k~0_combout\,
	combout => \u_ClkDivider|rClk1k~feeder_combout\);

-- Location: FF_X45_Y53_N11
\u_ClkDivider|rClk1k\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_ClkDivider|rClk1k~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ClkDivider|rClk1k~q\);

-- Location: CLKCTRL_G12
\u_ClkDivider|rClk1k~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_ClkDivider|rClk1k~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_ClkDivider|rClk1k~clkctrl_outclk\);

-- Location: IOIBUF_X78_Y29_N1
\KEY0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: FF_X46_Y36_N7
KEY0_LastState : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_ClkDivider|rClk1k~clkctrl_outclk\,
	asdata => \KEY0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_LastState~q\);

-- Location: LCCOMB_X46_Y36_N30
\u_Counter|u_rCounter4bits_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|u_rCounter4bits_0~0_combout\ = \KEY0~input_o\ $ (\KEY0_LastState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY0~input_o\,
	datad => \KEY0_LastState~q\,
	combout => \u_Counter|u_rCounter4bits_0~0_combout\);

-- Location: LCCOMB_X46_Y36_N16
\u_Counter|rCounter4bits_0[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter4bits_0[1]~2_combout\ = (!\u_Counter|Equal0~0_combout\ & (!\u_Counter|u_rCounter4bits_0~0_combout\ & (\u_Counter|rCounter4bits_0\(0) $ (\u_Counter|rCounter4bits_0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Counter|Equal0~0_combout\,
	datab => \u_Counter|rCounter4bits_0\(0),
	datac => \u_Counter|rCounter4bits_0\(1),
	datad => \u_Counter|u_rCounter4bits_0~0_combout\,
	combout => \u_Counter|rCounter4bits_0[1]~2_combout\);

-- Location: LCCOMB_X46_Y36_N18
\u_Counter|rCounter4bits_0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter4bits_0[1]~feeder_combout\ = \u_Counter|rCounter4bits_0[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_Counter|rCounter4bits_0[1]~2_combout\,
	combout => \u_Counter|rCounter4bits_0[1]~feeder_combout\);

-- Location: FF_X46_Y36_N19
\u_Counter|rCounter4bits_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_ClkDivider|rClk1k~clkctrl_outclk\,
	d => \u_Counter|rCounter4bits_0[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Counter|rCounter4bits_0\(1));

-- Location: LCCOMB_X46_Y36_N28
\u_Counter|rCounter4bits_0[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter4bits_0[2]~3_combout\ = (!\u_Counter|rCounter4bits_0\(1)) # (!\u_Counter|rCounter4bits_0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Counter|rCounter4bits_0\(0),
	datad => \u_Counter|rCounter4bits_0\(1),
	combout => \u_Counter|rCounter4bits_0[2]~3_combout\);

-- Location: LCCOMB_X46_Y36_N8
\u_Counter|rCounter4bits_0[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter4bits_0[2]~4_combout\ = (\KEY0_LastState~q\ & (\KEY0~input_o\ & (\u_Counter|rCounter4bits_0\(2) $ (!\u_Counter|rCounter4bits_0[2]~3_combout\)))) # (!\KEY0_LastState~q\ & (!\KEY0~input_o\ & (\u_Counter|rCounter4bits_0\(2) $ 
-- (!\u_Counter|rCounter4bits_0[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_LastState~q\,
	datab => \u_Counter|rCounter4bits_0\(2),
	datac => \KEY0~input_o\,
	datad => \u_Counter|rCounter4bits_0[2]~3_combout\,
	combout => \u_Counter|rCounter4bits_0[2]~4_combout\);

-- Location: LCCOMB_X46_Y36_N14
\u_Counter|rCounter4bits_0[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter4bits_0[2]~feeder_combout\ = \u_Counter|rCounter4bits_0[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_Counter|rCounter4bits_0[2]~4_combout\,
	combout => \u_Counter|rCounter4bits_0[2]~feeder_combout\);

-- Location: FF_X46_Y36_N15
\u_Counter|rCounter4bits_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_ClkDivider|rClk1k~clkctrl_outclk\,
	d => \u_Counter|rCounter4bits_0[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Counter|rCounter4bits_0\(2));

-- Location: LCCOMB_X46_Y36_N0
\u_Counter|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|Add0~0_combout\ = \u_Counter|rCounter4bits_0\(3) $ (((\u_Counter|rCounter4bits_0\(0) & (\u_Counter|rCounter4bits_0\(1) & \u_Counter|rCounter4bits_0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Counter|rCounter4bits_0\(0),
	datab => \u_Counter|rCounter4bits_0\(1),
	datac => \u_Counter|rCounter4bits_0\(2),
	datad => \u_Counter|rCounter4bits_0\(3),
	combout => \u_Counter|Add0~0_combout\);

-- Location: LCCOMB_X46_Y36_N10
\u_Counter|rCounter4bits_0[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter4bits_0[3]~5_combout\ = (\u_Counter|Equal0~0_combout\ & (((\u_Counter|rCounter4bits_0\(3))))) # (!\u_Counter|Equal0~0_combout\ & (!\u_Counter|u_rCounter4bits_0~0_combout\ & ((\u_Counter|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Counter|Equal0~0_combout\,
	datab => \u_Counter|u_rCounter4bits_0~0_combout\,
	datac => \u_Counter|rCounter4bits_0\(3),
	datad => \u_Counter|Add0~0_combout\,
	combout => \u_Counter|rCounter4bits_0[3]~5_combout\);

-- Location: LCCOMB_X46_Y36_N24
\u_Counter|rCounter4bits_0[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter4bits_0[3]~feeder_combout\ = \u_Counter|rCounter4bits_0[3]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_Counter|rCounter4bits_0[3]~5_combout\,
	combout => \u_Counter|rCounter4bits_0[3]~feeder_combout\);

-- Location: FF_X46_Y36_N25
\u_Counter|rCounter4bits_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_ClkDivider|rClk1k~clkctrl_outclk\,
	d => \u_Counter|rCounter4bits_0[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Counter|rCounter4bits_0\(3));

-- Location: LCCOMB_X46_Y36_N12
\u_Counter|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|Equal0~0_combout\ = (\u_Counter|rCounter4bits_0\(3) & (!\u_Counter|rCounter4bits_0\(2) & (\u_Counter|rCounter4bits_0\(0) & !\u_Counter|rCounter4bits_0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Counter|rCounter4bits_0\(3),
	datab => \u_Counter|rCounter4bits_0\(2),
	datac => \u_Counter|rCounter4bits_0\(0),
	datad => \u_Counter|rCounter4bits_0\(1),
	combout => \u_Counter|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y36_N20
\u_Counter|rCounter4bits_0[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter4bits_0[0]~6_combout\ = (\u_Counter|Equal0~0_combout\) # ((!\u_Counter|rCounter4bits_0\(0) & (\KEY0_LastState~q\ $ (!\KEY0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_LastState~q\,
	datab => \KEY0~input_o\,
	datac => \u_Counter|rCounter4bits_0\(0),
	datad => \u_Counter|Equal0~0_combout\,
	combout => \u_Counter|rCounter4bits_0[0]~6_combout\);

-- Location: LCCOMB_X46_Y36_N26
\u_Counter|rCounter4bits_0[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter4bits_0[0]~feeder_combout\ = \u_Counter|rCounter4bits_0[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_Counter|rCounter4bits_0[0]~6_combout\,
	combout => \u_Counter|rCounter4bits_0[0]~feeder_combout\);

-- Location: FF_X46_Y36_N27
\u_Counter|rCounter4bits_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_ClkDivider|rClk1k~clkctrl_outclk\,
	d => \u_Counter|rCounter4bits_0[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Counter|rCounter4bits_0\(0));

-- Location: FF_X46_Y36_N31
\u_OneShot|rCounter4bits_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \u_Counter|rCounter4bits_0\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_OneShot|rCounter4bits_0\(0));

-- Location: LCCOMB_X46_Y36_N4
\u_OneShot|rCounter4bits_0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_OneShot|rCounter4bits_0[1]~feeder_combout\ = \u_Counter|rCounter4bits_0\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_Counter|rCounter4bits_0\(1),
	combout => \u_OneShot|rCounter4bits_0[1]~feeder_combout\);

-- Location: FF_X46_Y36_N5
\u_OneShot|rCounter4bits_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_OneShot|rCounter4bits_0[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_OneShot|rCounter4bits_0\(1));

-- Location: FF_X46_Y36_N23
\u_OneShot|rCounter4bits_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \u_Counter|rCounter4bits_0\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_OneShot|rCounter4bits_0\(2));

-- Location: LCCOMB_X46_Y36_N2
\u_OneShot|rCounter4bits_0[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_OneShot|rCounter4bits_0[3]~feeder_combout\ = \u_Counter|rCounter4bits_0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Counter|rCounter4bits_0\(3),
	combout => \u_OneShot|rCounter4bits_0[3]~feeder_combout\);

-- Location: FF_X46_Y36_N3
\u_OneShot|rCounter4bits_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_OneShot|rCounter4bits_0[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_OneShot|rCounter4bits_0\(3));

-- Location: LCCOMB_X46_Y36_N22
\u_OneShot|u_rDKEY0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_OneShot|u_rDKEY0~0_combout\ = (!\u_OneShot|rCounter4bits_0\(0) & (!\u_OneShot|rCounter4bits_0\(1) & (!\u_OneShot|rCounter4bits_0\(2) & \u_OneShot|rCounter4bits_0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_OneShot|rCounter4bits_0\(0),
	datab => \u_OneShot|rCounter4bits_0\(1),
	datac => \u_OneShot|rCounter4bits_0\(2),
	datad => \u_OneShot|rCounter4bits_0\(3),
	combout => \u_OneShot|u_rDKEY0~0_combout\);

-- Location: LCCOMB_X46_Y36_N6
\u_OneShot|u_rDKEY0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_OneShot|u_rDKEY0~1_combout\ = (\u_OneShot|u_rDKEY0~0_combout\ & \u_Counter|rCounter4bits_0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_OneShot|u_rDKEY0~0_combout\,
	datad => \u_Counter|rCounter4bits_0\(3),
	combout => \u_OneShot|u_rDKEY0~1_combout\);

-- Location: LCCOMB_X45_Y36_N28
\u_OneShot|u_rDKEY0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_OneShot|u_rDKEY0~2_combout\ = (\u_Counter|rCounter4bits_0\(0) & (!\u_Counter|rCounter4bits_0\(1) & (!\u_Counter|rCounter4bits_0\(2) & \u_OneShot|u_rDKEY0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_Counter|rCounter4bits_0\(0),
	datab => \u_Counter|rCounter4bits_0\(1),
	datac => \u_Counter|rCounter4bits_0\(2),
	datad => \u_OneShot|u_rDKEY0~1_combout\,
	combout => \u_OneShot|u_rDKEY0~2_combout\);

-- Location: FF_X45_Y36_N7
\u_OneShot|rDKEY0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \KEY0_LastState~q\,
	sload => VCC,
	ena => \u_OneShot|u_rDKEY0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_OneShot|rDKEY0~q\);

-- Location: IOIBUF_X78_Y29_N8
\KEY1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

-- Location: FF_X46_Y36_N29
KEY1_LastState : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_ClkDivider|rClk1k~clkctrl_outclk\,
	asdata => \KEY1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_LastState~q\);

-- Location: LCCOMB_X45_Y36_N0
\u_OneShot|rDKEY1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_OneShot|rDKEY1~feeder_combout\ = \KEY1_LastState~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_LastState~q\,
	combout => \u_OneShot|rDKEY1~feeder_combout\);

-- Location: FF_X45_Y36_N1
\u_OneShot|rDKEY1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_OneShot|rDKEY1~feeder_combout\,
	ena => \u_OneShot|u_rDKEY0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_OneShot|rDKEY1~q\);

-- Location: LCCOMB_X45_Y36_N6
\u_Counter|rCounter8bits[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter8bits[0]~10_combout\ = \u_OneShot|rDKEY0~q\ $ (\u_OneShot|rDKEY1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_OneShot|rDKEY0~q\,
	datad => \u_OneShot|rDKEY1~q\,
	combout => \u_Counter|rCounter8bits[0]~10_combout\);

-- Location: FF_X45_Y36_N9
\u_Counter|rCounter8bits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_Counter|rCounter8bits[0]~8_combout\,
	ena => \u_Counter|rCounter8bits[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Counter|rCounter8bits\(0));

-- Location: LCCOMB_X45_Y36_N10
\u_Counter|rCounter8bits[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter8bits[1]~11_combout\ = (\u_Counter|rCounter8bits\(1) & ((\u_OneShot|rDKEY1~q\ & (\u_Counter|rCounter8bits[0]~9\ & VCC)) # (!\u_OneShot|rDKEY1~q\ & (!\u_Counter|rCounter8bits[0]~9\)))) # (!\u_Counter|rCounter8bits\(1) & 
-- ((\u_OneShot|rDKEY1~q\ & (!\u_Counter|rCounter8bits[0]~9\)) # (!\u_OneShot|rDKEY1~q\ & ((\u_Counter|rCounter8bits[0]~9\) # (GND)))))
-- \u_Counter|rCounter8bits[1]~12\ = CARRY((\u_Counter|rCounter8bits\(1) & (!\u_OneShot|rDKEY1~q\ & !\u_Counter|rCounter8bits[0]~9\)) # (!\u_Counter|rCounter8bits\(1) & ((!\u_Counter|rCounter8bits[0]~9\) # (!\u_OneShot|rDKEY1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_Counter|rCounter8bits\(1),
	datab => \u_OneShot|rDKEY1~q\,
	datad => VCC,
	cin => \u_Counter|rCounter8bits[0]~9\,
	combout => \u_Counter|rCounter8bits[1]~11_combout\,
	cout => \u_Counter|rCounter8bits[1]~12\);

-- Location: FF_X45_Y36_N11
\u_Counter|rCounter8bits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_Counter|rCounter8bits[1]~11_combout\,
	ena => \u_Counter|rCounter8bits[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Counter|rCounter8bits\(1));

-- Location: LCCOMB_X45_Y36_N12
\u_Counter|rCounter8bits[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter8bits[2]~13_combout\ = ((\u_Counter|rCounter8bits\(2) $ (\u_OneShot|rDKEY1~q\ $ (!\u_Counter|rCounter8bits[1]~12\)))) # (GND)
-- \u_Counter|rCounter8bits[2]~14\ = CARRY((\u_Counter|rCounter8bits\(2) & ((\u_OneShot|rDKEY1~q\) # (!\u_Counter|rCounter8bits[1]~12\))) # (!\u_Counter|rCounter8bits\(2) & (\u_OneShot|rDKEY1~q\ & !\u_Counter|rCounter8bits[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_Counter|rCounter8bits\(2),
	datab => \u_OneShot|rDKEY1~q\,
	datad => VCC,
	cin => \u_Counter|rCounter8bits[1]~12\,
	combout => \u_Counter|rCounter8bits[2]~13_combout\,
	cout => \u_Counter|rCounter8bits[2]~14\);

-- Location: FF_X45_Y36_N13
\u_Counter|rCounter8bits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_Counter|rCounter8bits[2]~13_combout\,
	ena => \u_Counter|rCounter8bits[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Counter|rCounter8bits\(2));

-- Location: LCCOMB_X45_Y36_N14
\u_Counter|rCounter8bits[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter8bits[3]~15_combout\ = (\u_Counter|rCounter8bits\(3) & ((\u_OneShot|rDKEY1~q\ & (\u_Counter|rCounter8bits[2]~14\ & VCC)) # (!\u_OneShot|rDKEY1~q\ & (!\u_Counter|rCounter8bits[2]~14\)))) # (!\u_Counter|rCounter8bits\(3) & 
-- ((\u_OneShot|rDKEY1~q\ & (!\u_Counter|rCounter8bits[2]~14\)) # (!\u_OneShot|rDKEY1~q\ & ((\u_Counter|rCounter8bits[2]~14\) # (GND)))))
-- \u_Counter|rCounter8bits[3]~16\ = CARRY((\u_Counter|rCounter8bits\(3) & (!\u_OneShot|rDKEY1~q\ & !\u_Counter|rCounter8bits[2]~14\)) # (!\u_Counter|rCounter8bits\(3) & ((!\u_Counter|rCounter8bits[2]~14\) # (!\u_OneShot|rDKEY1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_Counter|rCounter8bits\(3),
	datab => \u_OneShot|rDKEY1~q\,
	datad => VCC,
	cin => \u_Counter|rCounter8bits[2]~14\,
	combout => \u_Counter|rCounter8bits[3]~15_combout\,
	cout => \u_Counter|rCounter8bits[3]~16\);

-- Location: FF_X45_Y36_N15
\u_Counter|rCounter8bits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_Counter|rCounter8bits[3]~15_combout\,
	ena => \u_Counter|rCounter8bits[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Counter|rCounter8bits\(3));

-- Location: LCCOMB_X45_Y36_N16
\u_Counter|rCounter8bits[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter8bits[4]~17_combout\ = ((\u_OneShot|rDKEY1~q\ $ (\u_Counter|rCounter8bits\(4) $ (!\u_Counter|rCounter8bits[3]~16\)))) # (GND)
-- \u_Counter|rCounter8bits[4]~18\ = CARRY((\u_OneShot|rDKEY1~q\ & ((\u_Counter|rCounter8bits\(4)) # (!\u_Counter|rCounter8bits[3]~16\))) # (!\u_OneShot|rDKEY1~q\ & (\u_Counter|rCounter8bits\(4) & !\u_Counter|rCounter8bits[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_OneShot|rDKEY1~q\,
	datab => \u_Counter|rCounter8bits\(4),
	datad => VCC,
	cin => \u_Counter|rCounter8bits[3]~16\,
	combout => \u_Counter|rCounter8bits[4]~17_combout\,
	cout => \u_Counter|rCounter8bits[4]~18\);

-- Location: FF_X45_Y36_N17
\u_Counter|rCounter8bits[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_Counter|rCounter8bits[4]~17_combout\,
	ena => \u_Counter|rCounter8bits[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Counter|rCounter8bits\(4));

-- Location: LCCOMB_X45_Y36_N18
\u_Counter|rCounter8bits[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter8bits[5]~19_combout\ = (\u_OneShot|rDKEY1~q\ & ((\u_Counter|rCounter8bits\(5) & (\u_Counter|rCounter8bits[4]~18\ & VCC)) # (!\u_Counter|rCounter8bits\(5) & (!\u_Counter|rCounter8bits[4]~18\)))) # (!\u_OneShot|rDKEY1~q\ & 
-- ((\u_Counter|rCounter8bits\(5) & (!\u_Counter|rCounter8bits[4]~18\)) # (!\u_Counter|rCounter8bits\(5) & ((\u_Counter|rCounter8bits[4]~18\) # (GND)))))
-- \u_Counter|rCounter8bits[5]~20\ = CARRY((\u_OneShot|rDKEY1~q\ & (!\u_Counter|rCounter8bits\(5) & !\u_Counter|rCounter8bits[4]~18\)) # (!\u_OneShot|rDKEY1~q\ & ((!\u_Counter|rCounter8bits[4]~18\) # (!\u_Counter|rCounter8bits\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_OneShot|rDKEY1~q\,
	datab => \u_Counter|rCounter8bits\(5),
	datad => VCC,
	cin => \u_Counter|rCounter8bits[4]~18\,
	combout => \u_Counter|rCounter8bits[5]~19_combout\,
	cout => \u_Counter|rCounter8bits[5]~20\);

-- Location: FF_X45_Y36_N19
\u_Counter|rCounter8bits[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_Counter|rCounter8bits[5]~19_combout\,
	ena => \u_Counter|rCounter8bits[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Counter|rCounter8bits\(5));

-- Location: LCCOMB_X45_Y36_N20
\u_Counter|rCounter8bits[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter8bits[6]~21_combout\ = ((\u_Counter|rCounter8bits\(6) $ (\u_OneShot|rDKEY1~q\ $ (!\u_Counter|rCounter8bits[5]~20\)))) # (GND)
-- \u_Counter|rCounter8bits[6]~22\ = CARRY((\u_Counter|rCounter8bits\(6) & ((\u_OneShot|rDKEY1~q\) # (!\u_Counter|rCounter8bits[5]~20\))) # (!\u_Counter|rCounter8bits\(6) & (\u_OneShot|rDKEY1~q\ & !\u_Counter|rCounter8bits[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_Counter|rCounter8bits\(6),
	datab => \u_OneShot|rDKEY1~q\,
	datad => VCC,
	cin => \u_Counter|rCounter8bits[5]~20\,
	combout => \u_Counter|rCounter8bits[6]~21_combout\,
	cout => \u_Counter|rCounter8bits[6]~22\);

-- Location: FF_X45_Y36_N21
\u_Counter|rCounter8bits[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_Counter|rCounter8bits[6]~21_combout\,
	ena => \u_Counter|rCounter8bits[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Counter|rCounter8bits\(6));

-- Location: LCCOMB_X45_Y36_N22
\u_Counter|rCounter8bits[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_Counter|rCounter8bits[7]~23_combout\ = \u_Counter|rCounter8bits\(7) $ (\u_OneShot|rDKEY1~q\ $ (\u_Counter|rCounter8bits[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_Counter|rCounter8bits\(7),
	datab => \u_OneShot|rDKEY1~q\,
	cin => \u_Counter|rCounter8bits[6]~22\,
	combout => \u_Counter|rCounter8bits[7]~23_combout\);

-- Location: FF_X45_Y36_N23
\u_Counter|rCounter8bits[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \u_Counter|rCounter8bits[7]~23_combout\,
	ena => \u_Counter|rCounter8bits[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_Counter|rCounter8bits\(7));

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

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;
END structure;


