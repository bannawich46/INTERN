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

-- DATE "06/07/2024 10:19:37"

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

ENTITY 	PRJ_TOP IS
    PORT (
	CLK50 : IN std_logic;
	RST_L : IN std_logic;
	KEY0_L : IN std_logic;
	KEY1_L : IN std_logic;
	LED_L : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END PRJ_TOP;

-- Design Ports Information
-- LED_L[0]	=>  Location: PIN_C7,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED_L[1]	=>  Location: PIN_C8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED_L[2]	=>  Location: PIN_A6,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED_L[3]	=>  Location: PIN_B7,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED_L[4]	=>  Location: PIN_C4,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED_L[5]	=>  Location: PIN_A5,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED_L[6]	=>  Location: PIN_B4,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED_L[7]	=>  Location: PIN_C5,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- CLK50	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_L	=>  Location: PIN_J21,	 I/O Standard: 1.5 V Schmitt Trigger,	 Current Strength: Default
-- KEY1_L	=>  Location: PIN_H22,	 I/O Standard: 1.5 V Schmitt Trigger,	 Current Strength: Default
-- KEY0_L	=>  Location: PIN_H21,	 I/O Standard: 1.5 V Schmitt Trigger,	 Current Strength: Default


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
SIGNAL ww_KEY0_L : std_logic;
SIGNAL ww_KEY1_L : std_logic;
SIGNAL ww_LED_L : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_CLKDIVIDER|wCLK1K~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LED_L[0]~output_o\ : std_logic;
SIGNAL \LED_L[1]~output_o\ : std_logic;
SIGNAL \LED_L[2]~output_o\ : std_logic;
SIGNAL \LED_L[3]~output_o\ : std_logic;
SIGNAL \LED_L[4]~output_o\ : std_logic;
SIGNAL \LED_L[5]~output_o\ : std_logic;
SIGNAL \LED_L[6]~output_o\ : std_logic;
SIGNAL \LED_L[7]~output_o\ : std_logic;
SIGNAL \CLK50~input_o\ : std_logic;
SIGNAL \CLK50~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~0_combout\ : std_logic;
SIGNAL \RST_L~input_o\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~1\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~2_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~3\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~4_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~5\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~6_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLKCNT~5_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~7\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~8_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~9\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~10_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLKCNT~4_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~11\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~12_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~13\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~14_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLKCNT~3_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~15\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~16_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLKCNT~2_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~17\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~18_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~19\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~20_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~21\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~22_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Equal0~1_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~23\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~24_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~25\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~26_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLKCNT~1_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~27\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~28_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLKCNT~0_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~29\ : std_logic;
SIGNAL \u_CLKDIVIDER|Add0~30_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Equal0~0_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Equal0~2_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Equal0~3_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|Equal0~4_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLK1K~0_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLK1K~feeder_combout\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLK1K~q\ : std_logic;
SIGNAL \u_CLKDIVIDER|wCLK1K~clkctrl_outclk\ : std_logic;
SIGNAL \KEY0_L~input_o\ : std_logic;
SIGNAL \u_DEBOUNCE|wKEY0_LASTSTATE~0_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wKEY0_LASTSTATE~q\ : std_logic;
SIGNAL \u_DEBOUNCE|u_wCOUNTER4BITS_0~0_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|Add0~0_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_0[3]~3_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_0[3]~4_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_0[3]~1_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_0[1]~5_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_0[1]~feeder_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|u_wKEY0_ONESHOT~3_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_0[0]~0_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_0[0]~feeder_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_0[2]~2_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_0[2]~feeder_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_0_DFF[2]~feeder_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wKEY0_LAST2STATE~q\ : std_logic;
SIGNAL \u_DEBOUNCE|u_wKEY0_ONESHOT~0_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|u_wKEY0_ONESHOT~1_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|u_wKEY0_ONESHOT~2_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wKEY0_ONESHOT~q\ : std_logic;
SIGNAL \KEY1_L~input_o\ : std_logic;
SIGNAL \u_DEBOUNCE|wKEY1_LASTSTATE~0_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wKEY1_LASTSTATE~q\ : std_logic;
SIGNAL \u_DEBOUNCE|u_wCOUNTER4BITS_1~0_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_1[3]~0_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_1[1]~2_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_1[1]~feeder_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_1[2]~1_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_1[2]~feeder_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|u_wKEY1_ONESHOT~3_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_1[0]~5_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_1[0]~feeder_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|Add1~0_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_1[3]~3_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_1[3]~4_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wKEY1_LAST2STATE~feeder_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wKEY1_LAST2STATE~q\ : std_logic;
SIGNAL \u_DEBOUNCE|u_wKEY1_ONESHOT~0_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|u_wKEY1_ONESHOT~1_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|u_wKEY1_ONESHOT~2_combout\ : std_logic;
SIGNAL \u_DEBOUNCE|wKEY1_ONESHOT~q\ : std_logic;
SIGNAL \u_LEDCONTROL|Add1~0_combout\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS[0]~8_combout\ : std_logic;
SIGNAL \u_LEDCONTROL|u_wCOUNTER8BITS~0_combout\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS[0]~9\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS[1]~10_combout\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS[1]~11\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS[2]~12_combout\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS[2]~13\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS[3]~14_combout\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS[3]~15\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS[4]~16_combout\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS[4]~17\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS[5]~18_combout\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS[5]~19\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS[6]~20_combout\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS[6]~21\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS[7]~22_combout\ : std_logic;
SIGNAL \u_LEDCONTROL|wCOUNTER8BITS\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_1_DFF\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_CLKDIVIDER|wCLKCNT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_DEBOUNCE|wCOUNTER4BITS_0_DFF\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK50 <= CLK50;
ww_RST_L <= RST_L;
ww_KEY0_L <= KEY0_L;
ww_KEY1_L <= KEY1_L;
LED_L <= ww_LED_L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\u_CLKDIVIDER|wCLK1K~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_CLKDIVIDER|wCLK1K~q\);

\CLK50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK50~input_o\);
\u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(7) <= NOT \u_LEDCONTROL|wCOUNTER8BITS\(7);
\u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(6) <= NOT \u_LEDCONTROL|wCOUNTER8BITS\(6);
\u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(5) <= NOT \u_LEDCONTROL|wCOUNTER8BITS\(5);
\u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(4) <= NOT \u_LEDCONTROL|wCOUNTER8BITS\(4);
\u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(3) <= NOT \u_LEDCONTROL|wCOUNTER8BITS\(3);
\u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(2) <= NOT \u_LEDCONTROL|wCOUNTER8BITS\(2);
\u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(1) <= NOT \u_LEDCONTROL|wCOUNTER8BITS\(1);
\u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(0) <= NOT \u_LEDCONTROL|wCOUNTER8BITS\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N20
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
\LED_L[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(0),
	devoe => ww_devoe,
	o => \LED_L[0]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\LED_L[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(1),
	devoe => ww_devoe,
	o => \LED_L[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\LED_L[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(2),
	devoe => ww_devoe,
	o => \LED_L[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\LED_L[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(3),
	devoe => ww_devoe,
	o => \LED_L[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\LED_L[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(4),
	devoe => ww_devoe,
	o => \LED_L[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\LED_L[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(5),
	devoe => ww_devoe,
	o => \LED_L[5]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\LED_L[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(6),
	devoe => ww_devoe,
	o => \LED_L[6]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\LED_L[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_LEDCONTROL|ALT_INV_wCOUNTER8BITS\(7),
	devoe => ww_devoe,
	o => \LED_L[7]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK50,
	o => \CLK50~input_o\);

-- Location: CLKCTRL_G3
\CLK50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK50~inputclkctrl_outclk\);

-- Location: LCCOMB_X76_Y35_N0
\u_CLKDIVIDER|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~0_combout\ = \u_CLKDIVIDER|wCLKCNT\(0) $ (VCC)
-- \u_CLKDIVIDER|Add0~1\ = CARRY(\u_CLKDIVIDER|wCLKCNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|wCLKCNT\(0),
	datad => VCC,
	combout => \u_CLKDIVIDER|Add0~0_combout\,
	cout => \u_CLKDIVIDER|Add0~1\);

-- Location: IOIBUF_X78_Y30_N1
\RST_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_L,
	o => \RST_L~input_o\);

-- Location: FF_X76_Y35_N1
\u_CLKDIVIDER|wCLKCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|Add0~0_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(0));

-- Location: LCCOMB_X76_Y35_N2
\u_CLKDIVIDER|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~2_combout\ = (\u_CLKDIVIDER|wCLKCNT\(1) & (!\u_CLKDIVIDER|Add0~1\)) # (!\u_CLKDIVIDER|wCLKCNT\(1) & ((\u_CLKDIVIDER|Add0~1\) # (GND)))
-- \u_CLKDIVIDER|Add0~3\ = CARRY((!\u_CLKDIVIDER|Add0~1\) # (!\u_CLKDIVIDER|wCLKCNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|wCLKCNT\(1),
	datad => VCC,
	cin => \u_CLKDIVIDER|Add0~1\,
	combout => \u_CLKDIVIDER|Add0~2_combout\,
	cout => \u_CLKDIVIDER|Add0~3\);

-- Location: FF_X76_Y35_N3
\u_CLKDIVIDER|wCLKCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|Add0~2_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(1));

-- Location: LCCOMB_X76_Y35_N4
\u_CLKDIVIDER|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~4_combout\ = (\u_CLKDIVIDER|wCLKCNT\(2) & (\u_CLKDIVIDER|Add0~3\ $ (GND))) # (!\u_CLKDIVIDER|wCLKCNT\(2) & (!\u_CLKDIVIDER|Add0~3\ & VCC))
-- \u_CLKDIVIDER|Add0~5\ = CARRY((\u_CLKDIVIDER|wCLKCNT\(2) & !\u_CLKDIVIDER|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|wCLKCNT\(2),
	datad => VCC,
	cin => \u_CLKDIVIDER|Add0~3\,
	combout => \u_CLKDIVIDER|Add0~4_combout\,
	cout => \u_CLKDIVIDER|Add0~5\);

-- Location: FF_X76_Y35_N5
\u_CLKDIVIDER|wCLKCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|Add0~4_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(2));

-- Location: LCCOMB_X76_Y35_N6
\u_CLKDIVIDER|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~6_combout\ = (\u_CLKDIVIDER|wCLKCNT\(3) & (!\u_CLKDIVIDER|Add0~5\)) # (!\u_CLKDIVIDER|wCLKCNT\(3) & ((\u_CLKDIVIDER|Add0~5\) # (GND)))
-- \u_CLKDIVIDER|Add0~7\ = CARRY((!\u_CLKDIVIDER|Add0~5\) # (!\u_CLKDIVIDER|wCLKCNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|wCLKCNT\(3),
	datad => VCC,
	cin => \u_CLKDIVIDER|Add0~5\,
	combout => \u_CLKDIVIDER|Add0~6_combout\,
	cout => \u_CLKDIVIDER|Add0~7\);

-- Location: LCCOMB_X77_Y35_N4
\u_CLKDIVIDER|wCLKCNT~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|wCLKCNT~5_combout\ = (\u_CLKDIVIDER|Add0~6_combout\ & !\u_CLKDIVIDER|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_CLKDIVIDER|Add0~6_combout\,
	datad => \u_CLKDIVIDER|Equal0~4_combout\,
	combout => \u_CLKDIVIDER|wCLKCNT~5_combout\);

-- Location: FF_X77_Y35_N5
\u_CLKDIVIDER|wCLKCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|wCLKCNT~5_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(3));

-- Location: LCCOMB_X76_Y35_N8
\u_CLKDIVIDER|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~8_combout\ = (\u_CLKDIVIDER|wCLKCNT\(4) & (\u_CLKDIVIDER|Add0~7\ $ (GND))) # (!\u_CLKDIVIDER|wCLKCNT\(4) & (!\u_CLKDIVIDER|Add0~7\ & VCC))
-- \u_CLKDIVIDER|Add0~9\ = CARRY((\u_CLKDIVIDER|wCLKCNT\(4) & !\u_CLKDIVIDER|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|wCLKCNT\(4),
	datad => VCC,
	cin => \u_CLKDIVIDER|Add0~7\,
	combout => \u_CLKDIVIDER|Add0~8_combout\,
	cout => \u_CLKDIVIDER|Add0~9\);

-- Location: FF_X76_Y35_N9
\u_CLKDIVIDER|wCLKCNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|Add0~8_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(4));

-- Location: LCCOMB_X76_Y35_N10
\u_CLKDIVIDER|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~10_combout\ = (\u_CLKDIVIDER|wCLKCNT\(5) & (!\u_CLKDIVIDER|Add0~9\)) # (!\u_CLKDIVIDER|wCLKCNT\(5) & ((\u_CLKDIVIDER|Add0~9\) # (GND)))
-- \u_CLKDIVIDER|Add0~11\ = CARRY((!\u_CLKDIVIDER|Add0~9\) # (!\u_CLKDIVIDER|wCLKCNT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|wCLKCNT\(5),
	datad => VCC,
	cin => \u_CLKDIVIDER|Add0~9\,
	combout => \u_CLKDIVIDER|Add0~10_combout\,
	cout => \u_CLKDIVIDER|Add0~11\);

-- Location: LCCOMB_X77_Y35_N16
\u_CLKDIVIDER|wCLKCNT~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|wCLKCNT~4_combout\ = (!\u_CLKDIVIDER|Equal0~4_combout\ & \u_CLKDIVIDER|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|Equal0~4_combout\,
	datad => \u_CLKDIVIDER|Add0~10_combout\,
	combout => \u_CLKDIVIDER|wCLKCNT~4_combout\);

-- Location: FF_X77_Y35_N17
\u_CLKDIVIDER|wCLKCNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|wCLKCNT~4_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(5));

-- Location: LCCOMB_X76_Y35_N12
\u_CLKDIVIDER|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~12_combout\ = (\u_CLKDIVIDER|wCLKCNT\(6) & (\u_CLKDIVIDER|Add0~11\ $ (GND))) # (!\u_CLKDIVIDER|wCLKCNT\(6) & (!\u_CLKDIVIDER|Add0~11\ & VCC))
-- \u_CLKDIVIDER|Add0~13\ = CARRY((\u_CLKDIVIDER|wCLKCNT\(6) & !\u_CLKDIVIDER|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|wCLKCNT\(6),
	datad => VCC,
	cin => \u_CLKDIVIDER|Add0~11\,
	combout => \u_CLKDIVIDER|Add0~12_combout\,
	cout => \u_CLKDIVIDER|Add0~13\);

-- Location: FF_X76_Y35_N13
\u_CLKDIVIDER|wCLKCNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|Add0~12_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(6));

-- Location: LCCOMB_X76_Y35_N14
\u_CLKDIVIDER|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~14_combout\ = (\u_CLKDIVIDER|wCLKCNT\(7) & (!\u_CLKDIVIDER|Add0~13\)) # (!\u_CLKDIVIDER|wCLKCNT\(7) & ((\u_CLKDIVIDER|Add0~13\) # (GND)))
-- \u_CLKDIVIDER|Add0~15\ = CARRY((!\u_CLKDIVIDER|Add0~13\) # (!\u_CLKDIVIDER|wCLKCNT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|wCLKCNT\(7),
	datad => VCC,
	cin => \u_CLKDIVIDER|Add0~13\,
	combout => \u_CLKDIVIDER|Add0~14_combout\,
	cout => \u_CLKDIVIDER|Add0~15\);

-- Location: LCCOMB_X77_Y35_N30
\u_CLKDIVIDER|wCLKCNT~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|wCLKCNT~3_combout\ = (!\u_CLKDIVIDER|Equal0~4_combout\ & \u_CLKDIVIDER|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|Equal0~4_combout\,
	datad => \u_CLKDIVIDER|Add0~14_combout\,
	combout => \u_CLKDIVIDER|wCLKCNT~3_combout\);

-- Location: FF_X77_Y35_N31
\u_CLKDIVIDER|wCLKCNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|wCLKCNT~3_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(7));

-- Location: LCCOMB_X76_Y35_N16
\u_CLKDIVIDER|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~16_combout\ = (\u_CLKDIVIDER|wCLKCNT\(8) & (\u_CLKDIVIDER|Add0~15\ $ (GND))) # (!\u_CLKDIVIDER|wCLKCNT\(8) & (!\u_CLKDIVIDER|Add0~15\ & VCC))
-- \u_CLKDIVIDER|Add0~17\ = CARRY((\u_CLKDIVIDER|wCLKCNT\(8) & !\u_CLKDIVIDER|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|wCLKCNT\(8),
	datad => VCC,
	cin => \u_CLKDIVIDER|Add0~15\,
	combout => \u_CLKDIVIDER|Add0~16_combout\,
	cout => \u_CLKDIVIDER|Add0~17\);

-- Location: LCCOMB_X77_Y35_N12
\u_CLKDIVIDER|wCLKCNT~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|wCLKCNT~2_combout\ = (\u_CLKDIVIDER|Add0~16_combout\ & !\u_CLKDIVIDER|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_CLKDIVIDER|Add0~16_combout\,
	datad => \u_CLKDIVIDER|Equal0~4_combout\,
	combout => \u_CLKDIVIDER|wCLKCNT~2_combout\);

-- Location: FF_X77_Y35_N13
\u_CLKDIVIDER|wCLKCNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|wCLKCNT~2_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(8));

-- Location: LCCOMB_X76_Y35_N18
\u_CLKDIVIDER|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~18_combout\ = (\u_CLKDIVIDER|wCLKCNT\(9) & (!\u_CLKDIVIDER|Add0~17\)) # (!\u_CLKDIVIDER|wCLKCNT\(9) & ((\u_CLKDIVIDER|Add0~17\) # (GND)))
-- \u_CLKDIVIDER|Add0~19\ = CARRY((!\u_CLKDIVIDER|Add0~17\) # (!\u_CLKDIVIDER|wCLKCNT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|wCLKCNT\(9),
	datad => VCC,
	cin => \u_CLKDIVIDER|Add0~17\,
	combout => \u_CLKDIVIDER|Add0~18_combout\,
	cout => \u_CLKDIVIDER|Add0~19\);

-- Location: FF_X76_Y35_N19
\u_CLKDIVIDER|wCLKCNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|Add0~18_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(9));

-- Location: LCCOMB_X76_Y35_N20
\u_CLKDIVIDER|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~20_combout\ = (\u_CLKDIVIDER|wCLKCNT\(10) & (\u_CLKDIVIDER|Add0~19\ $ (GND))) # (!\u_CLKDIVIDER|wCLKCNT\(10) & (!\u_CLKDIVIDER|Add0~19\ & VCC))
-- \u_CLKDIVIDER|Add0~21\ = CARRY((\u_CLKDIVIDER|wCLKCNT\(10) & !\u_CLKDIVIDER|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|wCLKCNT\(10),
	datad => VCC,
	cin => \u_CLKDIVIDER|Add0~19\,
	combout => \u_CLKDIVIDER|Add0~20_combout\,
	cout => \u_CLKDIVIDER|Add0~21\);

-- Location: FF_X76_Y35_N21
\u_CLKDIVIDER|wCLKCNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|Add0~20_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(10));

-- Location: LCCOMB_X76_Y35_N22
\u_CLKDIVIDER|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~22_combout\ = (\u_CLKDIVIDER|wCLKCNT\(11) & (!\u_CLKDIVIDER|Add0~21\)) # (!\u_CLKDIVIDER|wCLKCNT\(11) & ((\u_CLKDIVIDER|Add0~21\) # (GND)))
-- \u_CLKDIVIDER|Add0~23\ = CARRY((!\u_CLKDIVIDER|Add0~21\) # (!\u_CLKDIVIDER|wCLKCNT\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|wCLKCNT\(11),
	datad => VCC,
	cin => \u_CLKDIVIDER|Add0~21\,
	combout => \u_CLKDIVIDER|Add0~22_combout\,
	cout => \u_CLKDIVIDER|Add0~23\);

-- Location: FF_X76_Y35_N23
\u_CLKDIVIDER|wCLKCNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|Add0~22_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(11));

-- Location: LCCOMB_X77_Y35_N6
\u_CLKDIVIDER|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Equal0~1_combout\ = (\u_CLKDIVIDER|wCLKCNT\(8) & (!\u_CLKDIVIDER|wCLKCNT\(9) & (!\u_CLKDIVIDER|wCLKCNT\(10) & !\u_CLKDIVIDER|wCLKCNT\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|wCLKCNT\(8),
	datab => \u_CLKDIVIDER|wCLKCNT\(9),
	datac => \u_CLKDIVIDER|wCLKCNT\(10),
	datad => \u_CLKDIVIDER|wCLKCNT\(11),
	combout => \u_CLKDIVIDER|Equal0~1_combout\);

-- Location: LCCOMB_X76_Y35_N24
\u_CLKDIVIDER|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~24_combout\ = (\u_CLKDIVIDER|wCLKCNT\(12) & (\u_CLKDIVIDER|Add0~23\ $ (GND))) # (!\u_CLKDIVIDER|wCLKCNT\(12) & (!\u_CLKDIVIDER|Add0~23\ & VCC))
-- \u_CLKDIVIDER|Add0~25\ = CARRY((\u_CLKDIVIDER|wCLKCNT\(12) & !\u_CLKDIVIDER|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|wCLKCNT\(12),
	datad => VCC,
	cin => \u_CLKDIVIDER|Add0~23\,
	combout => \u_CLKDIVIDER|Add0~24_combout\,
	cout => \u_CLKDIVIDER|Add0~25\);

-- Location: FF_X76_Y35_N25
\u_CLKDIVIDER|wCLKCNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|Add0~24_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(12));

-- Location: LCCOMB_X76_Y35_N26
\u_CLKDIVIDER|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~26_combout\ = (\u_CLKDIVIDER|wCLKCNT\(13) & (!\u_CLKDIVIDER|Add0~25\)) # (!\u_CLKDIVIDER|wCLKCNT\(13) & ((\u_CLKDIVIDER|Add0~25\) # (GND)))
-- \u_CLKDIVIDER|Add0~27\ = CARRY((!\u_CLKDIVIDER|Add0~25\) # (!\u_CLKDIVIDER|wCLKCNT\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|wCLKCNT\(13),
	datad => VCC,
	cin => \u_CLKDIVIDER|Add0~25\,
	combout => \u_CLKDIVIDER|Add0~26_combout\,
	cout => \u_CLKDIVIDER|Add0~27\);

-- Location: LCCOMB_X77_Y35_N18
\u_CLKDIVIDER|wCLKCNT~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|wCLKCNT~1_combout\ = (\u_CLKDIVIDER|Add0~26_combout\ & !\u_CLKDIVIDER|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_CLKDIVIDER|Add0~26_combout\,
	datad => \u_CLKDIVIDER|Equal0~4_combout\,
	combout => \u_CLKDIVIDER|wCLKCNT~1_combout\);

-- Location: FF_X77_Y35_N19
\u_CLKDIVIDER|wCLKCNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|wCLKCNT~1_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(13));

-- Location: LCCOMB_X76_Y35_N28
\u_CLKDIVIDER|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~28_combout\ = (\u_CLKDIVIDER|wCLKCNT\(14) & (\u_CLKDIVIDER|Add0~27\ $ (GND))) # (!\u_CLKDIVIDER|wCLKCNT\(14) & (!\u_CLKDIVIDER|Add0~27\ & VCC))
-- \u_CLKDIVIDER|Add0~29\ = CARRY((\u_CLKDIVIDER|wCLKCNT\(14) & !\u_CLKDIVIDER|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|wCLKCNT\(14),
	datad => VCC,
	cin => \u_CLKDIVIDER|Add0~27\,
	combout => \u_CLKDIVIDER|Add0~28_combout\,
	cout => \u_CLKDIVIDER|Add0~29\);

-- Location: LCCOMB_X77_Y35_N10
\u_CLKDIVIDER|wCLKCNT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|wCLKCNT~0_combout\ = (!\u_CLKDIVIDER|Equal0~4_combout\ & \u_CLKDIVIDER|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|Equal0~4_combout\,
	datad => \u_CLKDIVIDER|Add0~28_combout\,
	combout => \u_CLKDIVIDER|wCLKCNT~0_combout\);

-- Location: FF_X77_Y35_N11
\u_CLKDIVIDER|wCLKCNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|wCLKCNT~0_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(14));

-- Location: LCCOMB_X76_Y35_N30
\u_CLKDIVIDER|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Add0~30_combout\ = \u_CLKDIVIDER|wCLKCNT\(15) $ (\u_CLKDIVIDER|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|wCLKCNT\(15),
	cin => \u_CLKDIVIDER|Add0~29\,
	combout => \u_CLKDIVIDER|Add0~30_combout\);

-- Location: FF_X76_Y35_N31
\u_CLKDIVIDER|wCLKCNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|Add0~30_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLKCNT\(15));

-- Location: LCCOMB_X77_Y35_N28
\u_CLKDIVIDER|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Equal0~0_combout\ = (\u_CLKDIVIDER|wCLKCNT\(14) & (!\u_CLKDIVIDER|wCLKCNT\(15) & (\u_CLKDIVIDER|wCLKCNT\(13) & !\u_CLKDIVIDER|wCLKCNT\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|wCLKCNT\(14),
	datab => \u_CLKDIVIDER|wCLKCNT\(15),
	datac => \u_CLKDIVIDER|wCLKCNT\(13),
	datad => \u_CLKDIVIDER|wCLKCNT\(12),
	combout => \u_CLKDIVIDER|Equal0~0_combout\);

-- Location: LCCOMB_X77_Y35_N26
\u_CLKDIVIDER|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Equal0~2_combout\ = (!\u_CLKDIVIDER|wCLKCNT\(4) & (\u_CLKDIVIDER|wCLKCNT\(5) & (\u_CLKDIVIDER|wCLKCNT\(7) & !\u_CLKDIVIDER|wCLKCNT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|wCLKCNT\(4),
	datab => \u_CLKDIVIDER|wCLKCNT\(5),
	datac => \u_CLKDIVIDER|wCLKCNT\(7),
	datad => \u_CLKDIVIDER|wCLKCNT\(6),
	combout => \u_CLKDIVIDER|Equal0~2_combout\);

-- Location: LCCOMB_X77_Y35_N24
\u_CLKDIVIDER|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Equal0~3_combout\ = (\u_CLKDIVIDER|wCLKCNT\(0) & (!\u_CLKDIVIDER|wCLKCNT\(3) & (\u_CLKDIVIDER|wCLKCNT\(2) & \u_CLKDIVIDER|wCLKCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|wCLKCNT\(0),
	datab => \u_CLKDIVIDER|wCLKCNT\(3),
	datac => \u_CLKDIVIDER|wCLKCNT\(2),
	datad => \u_CLKDIVIDER|wCLKCNT\(1),
	combout => \u_CLKDIVIDER|Equal0~3_combout\);

-- Location: LCCOMB_X77_Y35_N20
\u_CLKDIVIDER|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|Equal0~4_combout\ = (\u_CLKDIVIDER|Equal0~1_combout\ & (\u_CLKDIVIDER|Equal0~0_combout\ & (\u_CLKDIVIDER|Equal0~2_combout\ & \u_CLKDIVIDER|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_CLKDIVIDER|Equal0~1_combout\,
	datab => \u_CLKDIVIDER|Equal0~0_combout\,
	datac => \u_CLKDIVIDER|Equal0~2_combout\,
	datad => \u_CLKDIVIDER|Equal0~3_combout\,
	combout => \u_CLKDIVIDER|Equal0~4_combout\);

-- Location: LCCOMB_X77_Y35_N14
\u_CLKDIVIDER|wCLK1K~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|wCLK1K~0_combout\ = \u_CLKDIVIDER|wCLK1K~q\ $ (\u_CLKDIVIDER|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_CLKDIVIDER|wCLK1K~q\,
	datad => \u_CLKDIVIDER|Equal0~4_combout\,
	combout => \u_CLKDIVIDER|wCLK1K~0_combout\);

-- Location: LCCOMB_X77_Y35_N22
\u_CLKDIVIDER|wCLK1K~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_CLKDIVIDER|wCLK1K~feeder_combout\ = \u_CLKDIVIDER|wCLK1K~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_CLKDIVIDER|wCLK1K~0_combout\,
	combout => \u_CLKDIVIDER|wCLK1K~feeder_combout\);

-- Location: FF_X77_Y35_N23
\u_CLKDIVIDER|wCLK1K\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_CLKDIVIDER|wCLK1K~feeder_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CLKDIVIDER|wCLK1K~q\);

-- Location: CLKCTRL_G9
\u_CLKDIVIDER|wCLK1K~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_CLKDIVIDER|wCLK1K~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_CLKDIVIDER|wCLK1K~clkctrl_outclk\);

-- Location: IOIBUF_X78_Y29_N1
\KEY0_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0_L,
	o => \KEY0_L~input_o\);

-- Location: LCCOMB_X71_Y30_N28
\u_DEBOUNCE|wKEY0_LASTSTATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wKEY0_LASTSTATE~0_combout\ = !\KEY0_L~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY0_L~input_o\,
	combout => \u_DEBOUNCE|wKEY0_LASTSTATE~0_combout\);

-- Location: FF_X71_Y30_N29
\u_DEBOUNCE|wKEY0_LASTSTATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_CLKDIVIDER|wCLK1K~clkctrl_outclk\,
	d => \u_DEBOUNCE|wKEY0_LASTSTATE~0_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wKEY0_LASTSTATE~q\);

-- Location: LCCOMB_X71_Y30_N8
\u_DEBOUNCE|u_wCOUNTER4BITS_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|u_wCOUNTER4BITS_0~0_combout\ = \KEY0_L~input_o\ $ (!\u_DEBOUNCE|wKEY0_LASTSTATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_L~input_o\,
	datad => \u_DEBOUNCE|wKEY0_LASTSTATE~q\,
	combout => \u_DEBOUNCE|u_wCOUNTER4BITS_0~0_combout\);

-- Location: LCCOMB_X71_Y30_N22
\u_DEBOUNCE|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|Add0~0_combout\ = \u_DEBOUNCE|wCOUNTER4BITS_0\(3) $ (((\u_DEBOUNCE|wCOUNTER4BITS_0\(0) & (\u_DEBOUNCE|wCOUNTER4BITS_0\(1) & \u_DEBOUNCE|wCOUNTER4BITS_0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_0\(0),
	datab => \u_DEBOUNCE|wCOUNTER4BITS_0\(3),
	datac => \u_DEBOUNCE|wCOUNTER4BITS_0\(1),
	datad => \u_DEBOUNCE|wCOUNTER4BITS_0\(2),
	combout => \u_DEBOUNCE|Add0~0_combout\);

-- Location: LCCOMB_X71_Y30_N30
\u_DEBOUNCE|wCOUNTER4BITS_0[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_0[3]~3_combout\ = (\u_DEBOUNCE|wCOUNTER4BITS_0\(0) & (!\u_DEBOUNCE|u_wCOUNTER4BITS_0~0_combout\ & (\u_DEBOUNCE|u_wKEY0_ONESHOT~3_combout\ & \u_DEBOUNCE|wCOUNTER4BITS_0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_0\(0),
	datab => \u_DEBOUNCE|u_wCOUNTER4BITS_0~0_combout\,
	datac => \u_DEBOUNCE|u_wKEY0_ONESHOT~3_combout\,
	datad => \u_DEBOUNCE|wCOUNTER4BITS_0\(3),
	combout => \u_DEBOUNCE|wCOUNTER4BITS_0[3]~3_combout\);

-- Location: LCCOMB_X71_Y30_N20
\u_DEBOUNCE|wCOUNTER4BITS_0[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_0[3]~4_combout\ = (\u_DEBOUNCE|wCOUNTER4BITS_0[3]~3_combout\) # ((\u_DEBOUNCE|Add0~0_combout\ & \u_DEBOUNCE|wCOUNTER4BITS_0[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|Add0~0_combout\,
	datac => \u_DEBOUNCE|wCOUNTER4BITS_0[3]~3_combout\,
	datad => \u_DEBOUNCE|wCOUNTER4BITS_0[3]~1_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_0[3]~4_combout\);

-- Location: FF_X71_Y30_N21
\u_DEBOUNCE|wCOUNTER4BITS_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_CLKDIVIDER|wCLK1K~clkctrl_outclk\,
	d => \u_DEBOUNCE|wCOUNTER4BITS_0[3]~4_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_0\(3));

-- Location: LCCOMB_X71_Y30_N2
\u_DEBOUNCE|wCOUNTER4BITS_0[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_0[3]~1_combout\ = (!\u_DEBOUNCE|u_wCOUNTER4BITS_0~0_combout\ & (((!\u_DEBOUNCE|u_wKEY0_ONESHOT~3_combout\) # (!\u_DEBOUNCE|wCOUNTER4BITS_0\(3))) # (!\u_DEBOUNCE|wCOUNTER4BITS_0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_0\(0),
	datab => \u_DEBOUNCE|wCOUNTER4BITS_0\(3),
	datac => \u_DEBOUNCE|u_wCOUNTER4BITS_0~0_combout\,
	datad => \u_DEBOUNCE|u_wKEY0_ONESHOT~3_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_0[3]~1_combout\);

-- Location: LCCOMB_X71_Y30_N0
\u_DEBOUNCE|wCOUNTER4BITS_0[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_0[1]~5_combout\ = (\u_DEBOUNCE|wCOUNTER4BITS_0[3]~1_combout\ & (\u_DEBOUNCE|wCOUNTER4BITS_0\(1) $ (\u_DEBOUNCE|wCOUNTER4BITS_0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_DEBOUNCE|wCOUNTER4BITS_0\(1),
	datac => \u_DEBOUNCE|wCOUNTER4BITS_0\(0),
	datad => \u_DEBOUNCE|wCOUNTER4BITS_0[3]~1_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_0[1]~5_combout\);

-- Location: LCCOMB_X71_Y30_N6
\u_DEBOUNCE|wCOUNTER4BITS_0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_0[1]~feeder_combout\ = \u_DEBOUNCE|wCOUNTER4BITS_0[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_DEBOUNCE|wCOUNTER4BITS_0[1]~5_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_0[1]~feeder_combout\);

-- Location: FF_X71_Y30_N7
\u_DEBOUNCE|wCOUNTER4BITS_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_CLKDIVIDER|wCLK1K~clkctrl_outclk\,
	d => \u_DEBOUNCE|wCOUNTER4BITS_0[1]~feeder_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_0\(1));

-- Location: LCCOMB_X71_Y30_N10
\u_DEBOUNCE|u_wKEY0_ONESHOT~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|u_wKEY0_ONESHOT~3_combout\ = (!\u_DEBOUNCE|wCOUNTER4BITS_0\(2) & !\u_DEBOUNCE|wCOUNTER4BITS_0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_DEBOUNCE|wCOUNTER4BITS_0\(2),
	datad => \u_DEBOUNCE|wCOUNTER4BITS_0\(1),
	combout => \u_DEBOUNCE|u_wKEY0_ONESHOT~3_combout\);

-- Location: LCCOMB_X71_Y30_N16
\u_DEBOUNCE|wCOUNTER4BITS_0[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_0[0]~0_combout\ = (!\u_DEBOUNCE|u_wCOUNTER4BITS_0~0_combout\ & (((\u_DEBOUNCE|u_wKEY0_ONESHOT~3_combout\ & \u_DEBOUNCE|wCOUNTER4BITS_0\(3))) # (!\u_DEBOUNCE|wCOUNTER4BITS_0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_0\(0),
	datab => \u_DEBOUNCE|u_wCOUNTER4BITS_0~0_combout\,
	datac => \u_DEBOUNCE|u_wKEY0_ONESHOT~3_combout\,
	datad => \u_DEBOUNCE|wCOUNTER4BITS_0\(3),
	combout => \u_DEBOUNCE|wCOUNTER4BITS_0[0]~0_combout\);

-- Location: LCCOMB_X71_Y30_N26
\u_DEBOUNCE|wCOUNTER4BITS_0[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_0[0]~feeder_combout\ = \u_DEBOUNCE|wCOUNTER4BITS_0[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_DEBOUNCE|wCOUNTER4BITS_0[0]~0_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_0[0]~feeder_combout\);

-- Location: FF_X71_Y30_N27
\u_DEBOUNCE|wCOUNTER4BITS_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_CLKDIVIDER|wCLK1K~clkctrl_outclk\,
	d => \u_DEBOUNCE|wCOUNTER4BITS_0[0]~feeder_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_0\(0));

-- Location: LCCOMB_X71_Y30_N12
\u_DEBOUNCE|wCOUNTER4BITS_0[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_0[2]~2_combout\ = (\u_DEBOUNCE|wCOUNTER4BITS_0[3]~1_combout\ & (\u_DEBOUNCE|wCOUNTER4BITS_0\(2) $ (((\u_DEBOUNCE|wCOUNTER4BITS_0\(0) & \u_DEBOUNCE|wCOUNTER4BITS_0\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_0\(0),
	datab => \u_DEBOUNCE|wCOUNTER4BITS_0\(1),
	datac => \u_DEBOUNCE|wCOUNTER4BITS_0\(2),
	datad => \u_DEBOUNCE|wCOUNTER4BITS_0[3]~1_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_0[2]~2_combout\);

-- Location: LCCOMB_X71_Y30_N14
\u_DEBOUNCE|wCOUNTER4BITS_0[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_0[2]~feeder_combout\ = \u_DEBOUNCE|wCOUNTER4BITS_0[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_DEBOUNCE|wCOUNTER4BITS_0[2]~2_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_0[2]~feeder_combout\);

-- Location: FF_X71_Y30_N15
\u_DEBOUNCE|wCOUNTER4BITS_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_CLKDIVIDER|wCLK1K~clkctrl_outclk\,
	d => \u_DEBOUNCE|wCOUNTER4BITS_0[2]~feeder_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_0\(2));

-- Location: FF_X71_Y30_N25
\u_DEBOUNCE|wCOUNTER4BITS_0_DFF[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	asdata => \u_DEBOUNCE|wCOUNTER4BITS_0\(0),
	clrn => \RST_L~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_0_DFF\(0));

-- Location: FF_X71_Y30_N9
\u_DEBOUNCE|wCOUNTER4BITS_0_DFF[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	asdata => \u_DEBOUNCE|wCOUNTER4BITS_0\(3),
	clrn => \RST_L~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_0_DFF\(3));

-- Location: LCCOMB_X71_Y30_N4
\u_DEBOUNCE|wCOUNTER4BITS_0_DFF[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_0_DFF[2]~feeder_combout\ = \u_DEBOUNCE|wCOUNTER4BITS_0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_DEBOUNCE|wCOUNTER4BITS_0\(2),
	combout => \u_DEBOUNCE|wCOUNTER4BITS_0_DFF[2]~feeder_combout\);

-- Location: FF_X71_Y30_N5
\u_DEBOUNCE|wCOUNTER4BITS_0_DFF[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_DEBOUNCE|wCOUNTER4BITS_0_DFF[2]~feeder_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_0_DFF\(2));

-- Location: FF_X71_Y30_N19
\u_DEBOUNCE|wKEY0_LAST2STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_CLKDIVIDER|wCLK1K~clkctrl_outclk\,
	asdata => \u_DEBOUNCE|wKEY0_LASTSTATE~q\,
	clrn => \RST_L~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wKEY0_LAST2STATE~q\);

-- Location: FF_X71_Y30_N23
\u_DEBOUNCE|wCOUNTER4BITS_0_DFF[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	asdata => \u_DEBOUNCE|wCOUNTER4BITS_0\(1),
	clrn => \RST_L~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_0_DFF\(1));

-- Location: LCCOMB_X71_Y30_N18
\u_DEBOUNCE|u_wKEY0_ONESHOT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|u_wKEY0_ONESHOT~0_combout\ = (\u_DEBOUNCE|wCOUNTER4BITS_0_DFF\(3) & (!\u_DEBOUNCE|wCOUNTER4BITS_0_DFF\(2) & (\u_DEBOUNCE|wKEY0_LAST2STATE~q\ & !\u_DEBOUNCE|wCOUNTER4BITS_0_DFF\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_0_DFF\(3),
	datab => \u_DEBOUNCE|wCOUNTER4BITS_0_DFF\(2),
	datac => \u_DEBOUNCE|wKEY0_LAST2STATE~q\,
	datad => \u_DEBOUNCE|wCOUNTER4BITS_0_DFF\(1),
	combout => \u_DEBOUNCE|u_wKEY0_ONESHOT~0_combout\);

-- Location: LCCOMB_X71_Y30_N24
\u_DEBOUNCE|u_wKEY0_ONESHOT~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|u_wKEY0_ONESHOT~1_combout\ = (!\u_DEBOUNCE|wCOUNTER4BITS_0\(1) & (\u_DEBOUNCE|wCOUNTER4BITS_0_DFF\(0) & \u_DEBOUNCE|u_wKEY0_ONESHOT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_DEBOUNCE|wCOUNTER4BITS_0\(1),
	datac => \u_DEBOUNCE|wCOUNTER4BITS_0_DFF\(0),
	datad => \u_DEBOUNCE|u_wKEY0_ONESHOT~0_combout\,
	combout => \u_DEBOUNCE|u_wKEY0_ONESHOT~1_combout\);

-- Location: LCCOMB_X70_Y30_N30
\u_DEBOUNCE|u_wKEY0_ONESHOT~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|u_wKEY0_ONESHOT~2_combout\ = (!\u_DEBOUNCE|wCOUNTER4BITS_0\(2) & (!\u_DEBOUNCE|wCOUNTER4BITS_0\(3) & (!\u_DEBOUNCE|wCOUNTER4BITS_0\(0) & \u_DEBOUNCE|u_wKEY0_ONESHOT~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_0\(2),
	datab => \u_DEBOUNCE|wCOUNTER4BITS_0\(3),
	datac => \u_DEBOUNCE|wCOUNTER4BITS_0\(0),
	datad => \u_DEBOUNCE|u_wKEY0_ONESHOT~1_combout\,
	combout => \u_DEBOUNCE|u_wKEY0_ONESHOT~2_combout\);

-- Location: FF_X70_Y30_N31
\u_DEBOUNCE|wKEY0_ONESHOT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_DEBOUNCE|u_wKEY0_ONESHOT~2_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wKEY0_ONESHOT~q\);

-- Location: IOIBUF_X78_Y29_N8
\KEY1_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1_L,
	o => \KEY1_L~input_o\);

-- Location: LCCOMB_X69_Y30_N28
\u_DEBOUNCE|wKEY1_LASTSTATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wKEY1_LASTSTATE~0_combout\ = !\KEY1_L~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1_L~input_o\,
	combout => \u_DEBOUNCE|wKEY1_LASTSTATE~0_combout\);

-- Location: FF_X69_Y30_N29
\u_DEBOUNCE|wKEY1_LASTSTATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_CLKDIVIDER|wCLK1K~clkctrl_outclk\,
	d => \u_DEBOUNCE|wKEY1_LASTSTATE~0_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wKEY1_LASTSTATE~q\);

-- Location: LCCOMB_X69_Y30_N22
\u_DEBOUNCE|u_wCOUNTER4BITS_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|u_wCOUNTER4BITS_1~0_combout\ = \KEY1_L~input_o\ $ (!\u_DEBOUNCE|wKEY1_LASTSTATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1_L~input_o\,
	datad => \u_DEBOUNCE|wKEY1_LASTSTATE~q\,
	combout => \u_DEBOUNCE|u_wCOUNTER4BITS_1~0_combout\);

-- Location: LCCOMB_X69_Y30_N24
\u_DEBOUNCE|wCOUNTER4BITS_1[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_1[3]~0_combout\ = (!\u_DEBOUNCE|u_wCOUNTER4BITS_1~0_combout\ & (((!\u_DEBOUNCE|u_wKEY1_ONESHOT~3_combout\) # (!\u_DEBOUNCE|wCOUNTER4BITS_1\(3))) # (!\u_DEBOUNCE|wCOUNTER4BITS_1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_1\(0),
	datab => \u_DEBOUNCE|wCOUNTER4BITS_1\(3),
	datac => \u_DEBOUNCE|u_wCOUNTER4BITS_1~0_combout\,
	datad => \u_DEBOUNCE|u_wKEY1_ONESHOT~3_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_1[3]~0_combout\);

-- Location: LCCOMB_X69_Y30_N6
\u_DEBOUNCE|wCOUNTER4BITS_1[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_1[1]~2_combout\ = (\u_DEBOUNCE|wCOUNTER4BITS_1[3]~0_combout\ & (\u_DEBOUNCE|wCOUNTER4BITS_1\(1) $ (\u_DEBOUNCE|wCOUNTER4BITS_1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_1\(1),
	datac => \u_DEBOUNCE|wCOUNTER4BITS_1\(0),
	datad => \u_DEBOUNCE|wCOUNTER4BITS_1[3]~0_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_1[1]~2_combout\);

-- Location: LCCOMB_X69_Y30_N14
\u_DEBOUNCE|wCOUNTER4BITS_1[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_1[1]~feeder_combout\ = \u_DEBOUNCE|wCOUNTER4BITS_1[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_DEBOUNCE|wCOUNTER4BITS_1[1]~2_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_1[1]~feeder_combout\);

-- Location: FF_X69_Y30_N15
\u_DEBOUNCE|wCOUNTER4BITS_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_CLKDIVIDER|wCLK1K~clkctrl_outclk\,
	d => \u_DEBOUNCE|wCOUNTER4BITS_1[1]~feeder_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_1\(1));

-- Location: LCCOMB_X69_Y30_N16
\u_DEBOUNCE|wCOUNTER4BITS_1[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_1[2]~1_combout\ = (\u_DEBOUNCE|wCOUNTER4BITS_1[3]~0_combout\ & (\u_DEBOUNCE|wCOUNTER4BITS_1\(2) $ (((\u_DEBOUNCE|wCOUNTER4BITS_1\(1) & \u_DEBOUNCE|wCOUNTER4BITS_1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_1\(1),
	datab => \u_DEBOUNCE|wCOUNTER4BITS_1\(0),
	datac => \u_DEBOUNCE|wCOUNTER4BITS_1\(2),
	datad => \u_DEBOUNCE|wCOUNTER4BITS_1[3]~0_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_1[2]~1_combout\);

-- Location: LCCOMB_X69_Y30_N30
\u_DEBOUNCE|wCOUNTER4BITS_1[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_1[2]~feeder_combout\ = \u_DEBOUNCE|wCOUNTER4BITS_1[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_DEBOUNCE|wCOUNTER4BITS_1[2]~1_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_1[2]~feeder_combout\);

-- Location: FF_X69_Y30_N31
\u_DEBOUNCE|wCOUNTER4BITS_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_CLKDIVIDER|wCLK1K~clkctrl_outclk\,
	d => \u_DEBOUNCE|wCOUNTER4BITS_1[2]~feeder_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_1\(2));

-- Location: LCCOMB_X69_Y30_N18
\u_DEBOUNCE|u_wKEY1_ONESHOT~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|u_wKEY1_ONESHOT~3_combout\ = (!\u_DEBOUNCE|wCOUNTER4BITS_1\(2) & !\u_DEBOUNCE|wCOUNTER4BITS_1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_1\(2),
	datad => \u_DEBOUNCE|wCOUNTER4BITS_1\(1),
	combout => \u_DEBOUNCE|u_wKEY1_ONESHOT~3_combout\);

-- Location: LCCOMB_X69_Y30_N10
\u_DEBOUNCE|wCOUNTER4BITS_1[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_1[0]~5_combout\ = (!\u_DEBOUNCE|u_wCOUNTER4BITS_1~0_combout\ & (((\u_DEBOUNCE|wCOUNTER4BITS_1\(3) & \u_DEBOUNCE|u_wKEY1_ONESHOT~3_combout\)) # (!\u_DEBOUNCE|wCOUNTER4BITS_1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_1\(3),
	datab => \u_DEBOUNCE|u_wKEY1_ONESHOT~3_combout\,
	datac => \u_DEBOUNCE|wCOUNTER4BITS_1\(0),
	datad => \u_DEBOUNCE|u_wCOUNTER4BITS_1~0_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_1[0]~5_combout\);

-- Location: LCCOMB_X69_Y30_N26
\u_DEBOUNCE|wCOUNTER4BITS_1[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_1[0]~feeder_combout\ = \u_DEBOUNCE|wCOUNTER4BITS_1[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_DEBOUNCE|wCOUNTER4BITS_1[0]~5_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_1[0]~feeder_combout\);

-- Location: FF_X69_Y30_N27
\u_DEBOUNCE|wCOUNTER4BITS_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_CLKDIVIDER|wCLK1K~clkctrl_outclk\,
	d => \u_DEBOUNCE|wCOUNTER4BITS_1[0]~feeder_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_1\(0));

-- Location: LCCOMB_X69_Y30_N20
\u_DEBOUNCE|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|Add1~0_combout\ = \u_DEBOUNCE|wCOUNTER4BITS_1\(3) $ (((\u_DEBOUNCE|wCOUNTER4BITS_1\(0) & (\u_DEBOUNCE|wCOUNTER4BITS_1\(2) & \u_DEBOUNCE|wCOUNTER4BITS_1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_1\(0),
	datab => \u_DEBOUNCE|wCOUNTER4BITS_1\(3),
	datac => \u_DEBOUNCE|wCOUNTER4BITS_1\(2),
	datad => \u_DEBOUNCE|wCOUNTER4BITS_1\(1),
	combout => \u_DEBOUNCE|Add1~0_combout\);

-- Location: LCCOMB_X69_Y30_N12
\u_DEBOUNCE|wCOUNTER4BITS_1[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_1[3]~3_combout\ = (\u_DEBOUNCE|wCOUNTER4BITS_1\(0) & (\u_DEBOUNCE|u_wKEY1_ONESHOT~3_combout\ & (\u_DEBOUNCE|wCOUNTER4BITS_1\(3) & !\u_DEBOUNCE|u_wCOUNTER4BITS_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_1\(0),
	datab => \u_DEBOUNCE|u_wKEY1_ONESHOT~3_combout\,
	datac => \u_DEBOUNCE|wCOUNTER4BITS_1\(3),
	datad => \u_DEBOUNCE|u_wCOUNTER4BITS_1~0_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_1[3]~3_combout\);

-- Location: LCCOMB_X69_Y30_N4
\u_DEBOUNCE|wCOUNTER4BITS_1[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wCOUNTER4BITS_1[3]~4_combout\ = (\u_DEBOUNCE|wCOUNTER4BITS_1[3]~3_combout\) # ((\u_DEBOUNCE|Add1~0_combout\ & \u_DEBOUNCE|wCOUNTER4BITS_1[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|Add1~0_combout\,
	datab => \u_DEBOUNCE|wCOUNTER4BITS_1[3]~0_combout\,
	datad => \u_DEBOUNCE|wCOUNTER4BITS_1[3]~3_combout\,
	combout => \u_DEBOUNCE|wCOUNTER4BITS_1[3]~4_combout\);

-- Location: FF_X69_Y30_N5
\u_DEBOUNCE|wCOUNTER4BITS_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_CLKDIVIDER|wCLK1K~clkctrl_outclk\,
	d => \u_DEBOUNCE|wCOUNTER4BITS_1[3]~4_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_1\(3));

-- Location: LCCOMB_X69_Y30_N8
\u_DEBOUNCE|wKEY1_LAST2STATE~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|wKEY1_LAST2STATE~feeder_combout\ = \u_DEBOUNCE|wKEY1_LASTSTATE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_DEBOUNCE|wKEY1_LASTSTATE~q\,
	combout => \u_DEBOUNCE|wKEY1_LAST2STATE~feeder_combout\);

-- Location: FF_X69_Y30_N9
\u_DEBOUNCE|wKEY1_LAST2STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_CLKDIVIDER|wCLK1K~clkctrl_outclk\,
	d => \u_DEBOUNCE|wKEY1_LAST2STATE~feeder_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wKEY1_LAST2STATE~q\);

-- Location: FF_X69_Y30_N19
\u_DEBOUNCE|wCOUNTER4BITS_1_DFF[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	asdata => \u_DEBOUNCE|wCOUNTER4BITS_1\(3),
	clrn => \RST_L~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_1_DFF\(3));

-- Location: FF_X69_Y30_N11
\u_DEBOUNCE|wCOUNTER4BITS_1_DFF[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	asdata => \u_DEBOUNCE|wCOUNTER4BITS_1\(0),
	clrn => \RST_L~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_1_DFF\(0));

-- Location: FF_X69_Y30_N1
\u_DEBOUNCE|wCOUNTER4BITS_1_DFF[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	asdata => \u_DEBOUNCE|wCOUNTER4BITS_1\(1),
	clrn => \RST_L~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_1_DFF\(1));

-- Location: FF_X69_Y30_N21
\u_DEBOUNCE|wCOUNTER4BITS_1_DFF[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	asdata => \u_DEBOUNCE|wCOUNTER4BITS_1\(2),
	clrn => \RST_L~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wCOUNTER4BITS_1_DFF\(2));

-- Location: LCCOMB_X69_Y30_N0
\u_DEBOUNCE|u_wKEY1_ONESHOT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|u_wKEY1_ONESHOT~0_combout\ = (\u_DEBOUNCE|wCOUNTER4BITS_1_DFF\(3) & (\u_DEBOUNCE|wCOUNTER4BITS_1_DFF\(0) & (!\u_DEBOUNCE|wCOUNTER4BITS_1_DFF\(1) & !\u_DEBOUNCE|wCOUNTER4BITS_1_DFF\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_1_DFF\(3),
	datab => \u_DEBOUNCE|wCOUNTER4BITS_1_DFF\(0),
	datac => \u_DEBOUNCE|wCOUNTER4BITS_1_DFF\(1),
	datad => \u_DEBOUNCE|wCOUNTER4BITS_1_DFF\(2),
	combout => \u_DEBOUNCE|u_wKEY1_ONESHOT~0_combout\);

-- Location: LCCOMB_X69_Y30_N2
\u_DEBOUNCE|u_wKEY1_ONESHOT~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|u_wKEY1_ONESHOT~1_combout\ = (\u_DEBOUNCE|wKEY1_LAST2STATE~q\ & (\u_DEBOUNCE|u_wKEY1_ONESHOT~0_combout\ & !\u_DEBOUNCE|wCOUNTER4BITS_1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_DEBOUNCE|wKEY1_LAST2STATE~q\,
	datac => \u_DEBOUNCE|u_wKEY1_ONESHOT~0_combout\,
	datad => \u_DEBOUNCE|wCOUNTER4BITS_1\(0),
	combout => \u_DEBOUNCE|u_wKEY1_ONESHOT~1_combout\);

-- Location: LCCOMB_X70_Y30_N28
\u_DEBOUNCE|u_wKEY1_ONESHOT~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_DEBOUNCE|u_wKEY1_ONESHOT~2_combout\ = (!\u_DEBOUNCE|wCOUNTER4BITS_1\(3) & (!\u_DEBOUNCE|wCOUNTER4BITS_1\(2) & (!\u_DEBOUNCE|wCOUNTER4BITS_1\(1) & \u_DEBOUNCE|u_wKEY1_ONESHOT~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wCOUNTER4BITS_1\(3),
	datab => \u_DEBOUNCE|wCOUNTER4BITS_1\(2),
	datac => \u_DEBOUNCE|wCOUNTER4BITS_1\(1),
	datad => \u_DEBOUNCE|u_wKEY1_ONESHOT~1_combout\,
	combout => \u_DEBOUNCE|u_wKEY1_ONESHOT~2_combout\);

-- Location: FF_X70_Y30_N29
\u_DEBOUNCE|wKEY1_ONESHOT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_DEBOUNCE|u_wKEY1_ONESHOT~2_combout\,
	clrn => \RST_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_DEBOUNCE|wKEY1_ONESHOT~q\);

-- Location: LCCOMB_X70_Y30_N24
\u_LEDCONTROL|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_LEDCONTROL|Add1~0_combout\ = (\u_DEBOUNCE|wKEY0_ONESHOT~q\) # (\u_DEBOUNCE|wKEY1_ONESHOT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_DEBOUNCE|wKEY0_ONESHOT~q\,
	datad => \u_DEBOUNCE|wKEY1_ONESHOT~q\,
	combout => \u_LEDCONTROL|Add1~0_combout\);

-- Location: LCCOMB_X70_Y30_N8
\u_LEDCONTROL|wCOUNTER8BITS[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_LEDCONTROL|wCOUNTER8BITS[0]~8_combout\ = (\u_LEDCONTROL|wCOUNTER8BITS\(0) & (\u_LEDCONTROL|Add1~0_combout\ $ (VCC))) # (!\u_LEDCONTROL|wCOUNTER8BITS\(0) & (\u_LEDCONTROL|Add1~0_combout\ & VCC))
-- \u_LEDCONTROL|wCOUNTER8BITS[0]~9\ = CARRY((\u_LEDCONTROL|wCOUNTER8BITS\(0) & \u_LEDCONTROL|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_LEDCONTROL|wCOUNTER8BITS\(0),
	datab => \u_LEDCONTROL|Add1~0_combout\,
	datad => VCC,
	combout => \u_LEDCONTROL|wCOUNTER8BITS[0]~8_combout\,
	cout => \u_LEDCONTROL|wCOUNTER8BITS[0]~9\);

-- Location: LCCOMB_X70_Y30_N26
\u_LEDCONTROL|u_wCOUNTER8BITS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_LEDCONTROL|u_wCOUNTER8BITS~0_combout\ = (!\u_DEBOUNCE|wKEY0_ONESHOT~q\) # (!\u_DEBOUNCE|wKEY1_ONESHOT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_DEBOUNCE|wKEY1_ONESHOT~q\,
	datad => \u_DEBOUNCE|wKEY0_ONESHOT~q\,
	combout => \u_LEDCONTROL|u_wCOUNTER8BITS~0_combout\);

-- Location: FF_X70_Y30_N9
\u_LEDCONTROL|wCOUNTER8BITS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_LEDCONTROL|wCOUNTER8BITS[0]~8_combout\,
	clrn => \RST_L~input_o\,
	ena => \u_LEDCONTROL|u_wCOUNTER8BITS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_LEDCONTROL|wCOUNTER8BITS\(0));

-- Location: LCCOMB_X70_Y30_N10
\u_LEDCONTROL|wCOUNTER8BITS[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_LEDCONTROL|wCOUNTER8BITS[1]~10_combout\ = (\u_LEDCONTROL|wCOUNTER8BITS\(1) & ((\u_DEBOUNCE|wKEY0_ONESHOT~q\ & (\u_LEDCONTROL|wCOUNTER8BITS[0]~9\ & VCC)) # (!\u_DEBOUNCE|wKEY0_ONESHOT~q\ & (!\u_LEDCONTROL|wCOUNTER8BITS[0]~9\)))) # 
-- (!\u_LEDCONTROL|wCOUNTER8BITS\(1) & ((\u_DEBOUNCE|wKEY0_ONESHOT~q\ & (!\u_LEDCONTROL|wCOUNTER8BITS[0]~9\)) # (!\u_DEBOUNCE|wKEY0_ONESHOT~q\ & ((\u_LEDCONTROL|wCOUNTER8BITS[0]~9\) # (GND)))))
-- \u_LEDCONTROL|wCOUNTER8BITS[1]~11\ = CARRY((\u_LEDCONTROL|wCOUNTER8BITS\(1) & (!\u_DEBOUNCE|wKEY0_ONESHOT~q\ & !\u_LEDCONTROL|wCOUNTER8BITS[0]~9\)) # (!\u_LEDCONTROL|wCOUNTER8BITS\(1) & ((!\u_LEDCONTROL|wCOUNTER8BITS[0]~9\) # 
-- (!\u_DEBOUNCE|wKEY0_ONESHOT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_LEDCONTROL|wCOUNTER8BITS\(1),
	datab => \u_DEBOUNCE|wKEY0_ONESHOT~q\,
	datad => VCC,
	cin => \u_LEDCONTROL|wCOUNTER8BITS[0]~9\,
	combout => \u_LEDCONTROL|wCOUNTER8BITS[1]~10_combout\,
	cout => \u_LEDCONTROL|wCOUNTER8BITS[1]~11\);

-- Location: FF_X70_Y30_N11
\u_LEDCONTROL|wCOUNTER8BITS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_LEDCONTROL|wCOUNTER8BITS[1]~10_combout\,
	clrn => \RST_L~input_o\,
	ena => \u_LEDCONTROL|u_wCOUNTER8BITS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_LEDCONTROL|wCOUNTER8BITS\(1));

-- Location: LCCOMB_X70_Y30_N12
\u_LEDCONTROL|wCOUNTER8BITS[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_LEDCONTROL|wCOUNTER8BITS[2]~12_combout\ = ((\u_LEDCONTROL|wCOUNTER8BITS\(2) $ (\u_DEBOUNCE|wKEY0_ONESHOT~q\ $ (!\u_LEDCONTROL|wCOUNTER8BITS[1]~11\)))) # (GND)
-- \u_LEDCONTROL|wCOUNTER8BITS[2]~13\ = CARRY((\u_LEDCONTROL|wCOUNTER8BITS\(2) & ((\u_DEBOUNCE|wKEY0_ONESHOT~q\) # (!\u_LEDCONTROL|wCOUNTER8BITS[1]~11\))) # (!\u_LEDCONTROL|wCOUNTER8BITS\(2) & (\u_DEBOUNCE|wKEY0_ONESHOT~q\ & 
-- !\u_LEDCONTROL|wCOUNTER8BITS[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_LEDCONTROL|wCOUNTER8BITS\(2),
	datab => \u_DEBOUNCE|wKEY0_ONESHOT~q\,
	datad => VCC,
	cin => \u_LEDCONTROL|wCOUNTER8BITS[1]~11\,
	combout => \u_LEDCONTROL|wCOUNTER8BITS[2]~12_combout\,
	cout => \u_LEDCONTROL|wCOUNTER8BITS[2]~13\);

-- Location: FF_X70_Y30_N13
\u_LEDCONTROL|wCOUNTER8BITS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_LEDCONTROL|wCOUNTER8BITS[2]~12_combout\,
	clrn => \RST_L~input_o\,
	ena => \u_LEDCONTROL|u_wCOUNTER8BITS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_LEDCONTROL|wCOUNTER8BITS\(2));

-- Location: LCCOMB_X70_Y30_N14
\u_LEDCONTROL|wCOUNTER8BITS[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_LEDCONTROL|wCOUNTER8BITS[3]~14_combout\ = (\u_DEBOUNCE|wKEY0_ONESHOT~q\ & ((\u_LEDCONTROL|wCOUNTER8BITS\(3) & (\u_LEDCONTROL|wCOUNTER8BITS[2]~13\ & VCC)) # (!\u_LEDCONTROL|wCOUNTER8BITS\(3) & (!\u_LEDCONTROL|wCOUNTER8BITS[2]~13\)))) # 
-- (!\u_DEBOUNCE|wKEY0_ONESHOT~q\ & ((\u_LEDCONTROL|wCOUNTER8BITS\(3) & (!\u_LEDCONTROL|wCOUNTER8BITS[2]~13\)) # (!\u_LEDCONTROL|wCOUNTER8BITS\(3) & ((\u_LEDCONTROL|wCOUNTER8BITS[2]~13\) # (GND)))))
-- \u_LEDCONTROL|wCOUNTER8BITS[3]~15\ = CARRY((\u_DEBOUNCE|wKEY0_ONESHOT~q\ & (!\u_LEDCONTROL|wCOUNTER8BITS\(3) & !\u_LEDCONTROL|wCOUNTER8BITS[2]~13\)) # (!\u_DEBOUNCE|wKEY0_ONESHOT~q\ & ((!\u_LEDCONTROL|wCOUNTER8BITS[2]~13\) # 
-- (!\u_LEDCONTROL|wCOUNTER8BITS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wKEY0_ONESHOT~q\,
	datab => \u_LEDCONTROL|wCOUNTER8BITS\(3),
	datad => VCC,
	cin => \u_LEDCONTROL|wCOUNTER8BITS[2]~13\,
	combout => \u_LEDCONTROL|wCOUNTER8BITS[3]~14_combout\,
	cout => \u_LEDCONTROL|wCOUNTER8BITS[3]~15\);

-- Location: FF_X70_Y30_N15
\u_LEDCONTROL|wCOUNTER8BITS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_LEDCONTROL|wCOUNTER8BITS[3]~14_combout\,
	clrn => \RST_L~input_o\,
	ena => \u_LEDCONTROL|u_wCOUNTER8BITS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_LEDCONTROL|wCOUNTER8BITS\(3));

-- Location: LCCOMB_X70_Y30_N16
\u_LEDCONTROL|wCOUNTER8BITS[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_LEDCONTROL|wCOUNTER8BITS[4]~16_combout\ = ((\u_DEBOUNCE|wKEY0_ONESHOT~q\ $ (\u_LEDCONTROL|wCOUNTER8BITS\(4) $ (!\u_LEDCONTROL|wCOUNTER8BITS[3]~15\)))) # (GND)
-- \u_LEDCONTROL|wCOUNTER8BITS[4]~17\ = CARRY((\u_DEBOUNCE|wKEY0_ONESHOT~q\ & ((\u_LEDCONTROL|wCOUNTER8BITS\(4)) # (!\u_LEDCONTROL|wCOUNTER8BITS[3]~15\))) # (!\u_DEBOUNCE|wKEY0_ONESHOT~q\ & (\u_LEDCONTROL|wCOUNTER8BITS\(4) & 
-- !\u_LEDCONTROL|wCOUNTER8BITS[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wKEY0_ONESHOT~q\,
	datab => \u_LEDCONTROL|wCOUNTER8BITS\(4),
	datad => VCC,
	cin => \u_LEDCONTROL|wCOUNTER8BITS[3]~15\,
	combout => \u_LEDCONTROL|wCOUNTER8BITS[4]~16_combout\,
	cout => \u_LEDCONTROL|wCOUNTER8BITS[4]~17\);

-- Location: FF_X70_Y30_N17
\u_LEDCONTROL|wCOUNTER8BITS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_LEDCONTROL|wCOUNTER8BITS[4]~16_combout\,
	clrn => \RST_L~input_o\,
	ena => \u_LEDCONTROL|u_wCOUNTER8BITS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_LEDCONTROL|wCOUNTER8BITS\(4));

-- Location: LCCOMB_X70_Y30_N18
\u_LEDCONTROL|wCOUNTER8BITS[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_LEDCONTROL|wCOUNTER8BITS[5]~18_combout\ = (\u_LEDCONTROL|wCOUNTER8BITS\(5) & ((\u_DEBOUNCE|wKEY0_ONESHOT~q\ & (\u_LEDCONTROL|wCOUNTER8BITS[4]~17\ & VCC)) # (!\u_DEBOUNCE|wKEY0_ONESHOT~q\ & (!\u_LEDCONTROL|wCOUNTER8BITS[4]~17\)))) # 
-- (!\u_LEDCONTROL|wCOUNTER8BITS\(5) & ((\u_DEBOUNCE|wKEY0_ONESHOT~q\ & (!\u_LEDCONTROL|wCOUNTER8BITS[4]~17\)) # (!\u_DEBOUNCE|wKEY0_ONESHOT~q\ & ((\u_LEDCONTROL|wCOUNTER8BITS[4]~17\) # (GND)))))
-- \u_LEDCONTROL|wCOUNTER8BITS[5]~19\ = CARRY((\u_LEDCONTROL|wCOUNTER8BITS\(5) & (!\u_DEBOUNCE|wKEY0_ONESHOT~q\ & !\u_LEDCONTROL|wCOUNTER8BITS[4]~17\)) # (!\u_LEDCONTROL|wCOUNTER8BITS\(5) & ((!\u_LEDCONTROL|wCOUNTER8BITS[4]~17\) # 
-- (!\u_DEBOUNCE|wKEY0_ONESHOT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_LEDCONTROL|wCOUNTER8BITS\(5),
	datab => \u_DEBOUNCE|wKEY0_ONESHOT~q\,
	datad => VCC,
	cin => \u_LEDCONTROL|wCOUNTER8BITS[4]~17\,
	combout => \u_LEDCONTROL|wCOUNTER8BITS[5]~18_combout\,
	cout => \u_LEDCONTROL|wCOUNTER8BITS[5]~19\);

-- Location: FF_X70_Y30_N19
\u_LEDCONTROL|wCOUNTER8BITS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_LEDCONTROL|wCOUNTER8BITS[5]~18_combout\,
	clrn => \RST_L~input_o\,
	ena => \u_LEDCONTROL|u_wCOUNTER8BITS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_LEDCONTROL|wCOUNTER8BITS\(5));

-- Location: LCCOMB_X70_Y30_N20
\u_LEDCONTROL|wCOUNTER8BITS[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_LEDCONTROL|wCOUNTER8BITS[6]~20_combout\ = ((\u_DEBOUNCE|wKEY0_ONESHOT~q\ $ (\u_LEDCONTROL|wCOUNTER8BITS\(6) $ (!\u_LEDCONTROL|wCOUNTER8BITS[5]~19\)))) # (GND)
-- \u_LEDCONTROL|wCOUNTER8BITS[6]~21\ = CARRY((\u_DEBOUNCE|wKEY0_ONESHOT~q\ & ((\u_LEDCONTROL|wCOUNTER8BITS\(6)) # (!\u_LEDCONTROL|wCOUNTER8BITS[5]~19\))) # (!\u_DEBOUNCE|wKEY0_ONESHOT~q\ & (\u_LEDCONTROL|wCOUNTER8BITS\(6) & 
-- !\u_LEDCONTROL|wCOUNTER8BITS[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_DEBOUNCE|wKEY0_ONESHOT~q\,
	datab => \u_LEDCONTROL|wCOUNTER8BITS\(6),
	datad => VCC,
	cin => \u_LEDCONTROL|wCOUNTER8BITS[5]~19\,
	combout => \u_LEDCONTROL|wCOUNTER8BITS[6]~20_combout\,
	cout => \u_LEDCONTROL|wCOUNTER8BITS[6]~21\);

-- Location: FF_X70_Y30_N21
\u_LEDCONTROL|wCOUNTER8BITS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_LEDCONTROL|wCOUNTER8BITS[6]~20_combout\,
	clrn => \RST_L~input_o\,
	ena => \u_LEDCONTROL|u_wCOUNTER8BITS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_LEDCONTROL|wCOUNTER8BITS\(6));

-- Location: LCCOMB_X70_Y30_N22
\u_LEDCONTROL|wCOUNTER8BITS[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_LEDCONTROL|wCOUNTER8BITS[7]~22_combout\ = \u_LEDCONTROL|wCOUNTER8BITS\(7) $ (\u_LEDCONTROL|wCOUNTER8BITS[6]~21\ $ (\u_DEBOUNCE|wKEY0_ONESHOT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_LEDCONTROL|wCOUNTER8BITS\(7),
	datad => \u_DEBOUNCE|wKEY0_ONESHOT~q\,
	cin => \u_LEDCONTROL|wCOUNTER8BITS[6]~21\,
	combout => \u_LEDCONTROL|wCOUNTER8BITS[7]~22_combout\);

-- Location: FF_X70_Y30_N23
\u_LEDCONTROL|wCOUNTER8BITS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK50~inputclkctrl_outclk\,
	d => \u_LEDCONTROL|wCOUNTER8BITS[7]~22_combout\,
	clrn => \RST_L~input_o\,
	ena => \u_LEDCONTROL|u_wCOUNTER8BITS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_LEDCONTROL|wCOUNTER8BITS\(7));

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

ww_LED_L(0) <= \LED_L[0]~output_o\;

ww_LED_L(1) <= \LED_L[1]~output_o\;

ww_LED_L(2) <= \LED_L[2]~output_o\;

ww_LED_L(3) <= \LED_L[3]~output_o\;

ww_LED_L(4) <= \LED_L[4]~output_o\;

ww_LED_L(5) <= \LED_L[5]~output_o\;

ww_LED_L(6) <= \LED_L[6]~output_o\;

ww_LED_L(7) <= \LED_L[7]~output_o\;
END structure;


