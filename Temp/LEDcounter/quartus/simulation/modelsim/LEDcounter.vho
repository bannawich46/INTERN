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

-- DATE "05/31/2024 15:36:15"

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

ENTITY 	LEDcounter IS
    PORT (
	Clk50 : IN std_logic;
	KEY0 : IN std_logic;
	KEY1 : IN std_logic;
	LED : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END LEDcounter;

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


ARCHITECTURE structure OF LEDcounter IS
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
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \rKEY1Cnt~23_combout\ : std_logic;
SIGNAL \rKEY1Cnt[16]~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \rKEY1Cnt~22_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \rKEY1Cnt~21_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \rKEY1Cnt~20_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \rKEY1Cnt~19_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \rKEY1Cnt~18_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \rKEY1Cnt~17_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \rKEY1Cnt~16_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \rKEY1Cnt~15_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \rKEY1Cnt~14_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \rKEY1Cnt~13_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \rKEY1Cnt~12_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \rKEY1Cnt~11_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \rKEY1Cnt~10_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \rKEY1Cnt~9_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \rKEY1Cnt~8_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \rKEY1Cnt~7_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \rKEY1Cnt~6_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \rKEY1Cnt~5_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \rKEY1Cnt~4_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \rKEY1Cnt~3_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \rKEY1Cnt~1_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \rKEY1Cnt~0_combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \rKEY0Cnt~23_combout\ : std_logic;
SIGNAL \rKEY0Cnt[8]~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \rKEY0Cnt~22_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \rKEY0Cnt~21_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \rKEY0Cnt~20_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \rKEY0Cnt~19_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \rKEY0Cnt~18_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \rKEY0Cnt~17_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \rKEY0Cnt~16_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \rKEY0Cnt~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \rKEY0Cnt~14_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \rKEY0Cnt~13_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \rKEY0Cnt~12_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \rKEY0Cnt~11_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \rKEY0Cnt~10_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \rKEY0Cnt~9_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \rKEY0Cnt~8_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \rKEY0Cnt~7_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \rKEY0Cnt~6_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \rKEY0Cnt~5_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \rKEY0Cnt~4_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \rKEY0Cnt~3_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \rKEY0Cnt~1_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \rKEY0Cnt~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \rState.st7P~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \rState.st8~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \rState.st6P~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \rState.st7~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \rState.st5P~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \rState.st6~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \rState.st4P~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \rState.st5~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \rState.st3P~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \rState.st4~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \rState.st2P~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \rState.st3~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \rState.st1P~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \rState.st2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \rState.st0P~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \rState.st1~q\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \rState.st8P~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \rState.st0~q\ : std_logic;
SIGNAL \WideOr18~0_combout\ : std_logic;
SIGNAL \WideOr18~1_combout\ : std_logic;
SIGNAL \WideOr18~2_combout\ : std_logic;
SIGNAL \u_rState~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Selector25~3_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \Selector24~3_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector24~4_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \Selector25~4_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~2_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL rKEY1Cnt : std_logic_vector(22 DOWNTO 0);
SIGNAL rKEY0Cnt : std_logic_vector(22 DOWNTO 0);
SIGNAL rLED : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_rLED : std_logic_vector(7 DOWNTO 0);

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

\Clk50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk50~input_o\);
ALT_INV_rLED(7) <= NOT rLED(7);
ALT_INV_rLED(6) <= NOT rLED(6);
ALT_INV_rLED(5) <= NOT rLED(5);
ALT_INV_rLED(4) <= NOT rLED(4);
ALT_INV_rLED(3) <= NOT rLED(3);
ALT_INV_rLED(2) <= NOT rLED(2);
ALT_INV_rLED(1) <= NOT rLED(1);
ALT_INV_rLED(0) <= NOT rLED(0);
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
	i => ALT_INV_rLED(0),
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
	i => ALT_INV_rLED(1),
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
	i => ALT_INV_rLED(2),
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
	i => ALT_INV_rLED(3),
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
	i => ALT_INV_rLED(4),
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
	i => ALT_INV_rLED(5),
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
	i => ALT_INV_rLED(6),
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
	i => ALT_INV_rLED(7),
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

-- Location: LCCOMB_X52_Y30_N10
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = rKEY1Cnt(0) $ (VCC)
-- \Add1~1\ = CARRY(rKEY1Cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rKEY1Cnt(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X51_Y30_N10
\rKEY1Cnt~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~23_combout\ = (!\KEY1~input_o\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY1~input_o\,
	datac => \Add1~0_combout\,
	combout => \rKEY1Cnt~23_combout\);

-- Location: LCCOMB_X51_Y29_N0
\rKEY1Cnt[16]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt[16]~2_combout\ = (\KEY1~input_o\) # (!rKEY1Cnt(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1~input_o\,
	datad => rKEY1Cnt(22),
	combout => \rKEY1Cnt[16]~2_combout\);

-- Location: FF_X52_Y30_N17
\rKEY1Cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \rKEY1Cnt~23_combout\,
	sload => VCC,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(0));

-- Location: LCCOMB_X52_Y30_N12
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (rKEY1Cnt(1) & (!\Add1~1\)) # (!rKEY1Cnt(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!rKEY1Cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X51_Y30_N16
\rKEY1Cnt~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~22_combout\ = (!\KEY1~input_o\ & \Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY1~input_o\,
	datac => \Add1~2_combout\,
	combout => \rKEY1Cnt~22_combout\);

-- Location: FF_X52_Y30_N27
\rKEY1Cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \rKEY1Cnt~22_combout\,
	sload => VCC,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(1));

-- Location: LCCOMB_X52_Y30_N14
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (rKEY1Cnt(2) & (\Add1~3\ $ (GND))) # (!rKEY1Cnt(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((rKEY1Cnt(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY1Cnt(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X51_Y30_N6
\rKEY1Cnt~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~21_combout\ = (!\KEY1~input_o\ & \Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY1~input_o\,
	datac => \Add1~4_combout\,
	combout => \rKEY1Cnt~21_combout\);

-- Location: FF_X52_Y30_N25
\rKEY1Cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \rKEY1Cnt~21_combout\,
	sload => VCC,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(2));

-- Location: LCCOMB_X52_Y30_N16
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (rKEY1Cnt(3) & (!\Add1~5\)) # (!rKEY1Cnt(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!rKEY1Cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X51_Y30_N4
\rKEY1Cnt~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~20_combout\ = (!\KEY1~input_o\ & \Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1~input_o\,
	datad => \Add1~6_combout\,
	combout => \rKEY1Cnt~20_combout\);

-- Location: FF_X52_Y30_N31
\rKEY1Cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \rKEY1Cnt~20_combout\,
	sload => VCC,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(3));

-- Location: LCCOMB_X52_Y30_N18
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (rKEY1Cnt(4) & (\Add1~7\ $ (GND))) # (!rKEY1Cnt(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((rKEY1Cnt(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY1Cnt(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X51_Y30_N26
\rKEY1Cnt~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~19_combout\ = (!\KEY1~input_o\ & \Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1~input_o\,
	datad => \Add1~8_combout\,
	combout => \rKEY1Cnt~19_combout\);

-- Location: FF_X52_Y30_N19
\rKEY1Cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \rKEY1Cnt~19_combout\,
	sload => VCC,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(4));

-- Location: LCCOMB_X52_Y30_N20
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (rKEY1Cnt(5) & (!\Add1~9\)) # (!rKEY1Cnt(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!rKEY1Cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY1Cnt(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X52_Y30_N0
\rKEY1Cnt~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~18_combout\ = (!\KEY1~input_o\ & \Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1~input_o\,
	datad => \Add1~10_combout\,
	combout => \rKEY1Cnt~18_combout\);

-- Location: FF_X52_Y30_N1
\rKEY1Cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~18_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(5));

-- Location: LCCOMB_X52_Y30_N22
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (rKEY1Cnt(6) & (\Add1~11\ $ (GND))) # (!rKEY1Cnt(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((rKEY1Cnt(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X52_Y30_N6
\rKEY1Cnt~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~17_combout\ = (!\KEY1~input_o\ & \Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY1~input_o\,
	datac => \Add1~12_combout\,
	combout => \rKEY1Cnt~17_combout\);

-- Location: FF_X52_Y30_N7
\rKEY1Cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~17_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(6));

-- Location: LCCOMB_X52_Y30_N24
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (rKEY1Cnt(7) & (!\Add1~13\)) # (!rKEY1Cnt(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!rKEY1Cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY1Cnt(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X52_Y30_N4
\rKEY1Cnt~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~16_combout\ = (!\KEY1~input_o\ & \Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY1~input_o\,
	datac => \Add1~14_combout\,
	combout => \rKEY1Cnt~16_combout\);

-- Location: FF_X52_Y30_N5
\rKEY1Cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~16_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(7));

-- Location: LCCOMB_X52_Y30_N26
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (rKEY1Cnt(8) & (\Add1~15\ $ (GND))) # (!rKEY1Cnt(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((rKEY1Cnt(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X51_Y30_N12
\rKEY1Cnt~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~15_combout\ = (!\KEY1~input_o\ & \Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1~input_o\,
	datad => \Add1~16_combout\,
	combout => \rKEY1Cnt~15_combout\);

-- Location: FF_X51_Y30_N13
\rKEY1Cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~15_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(8));

-- Location: LCCOMB_X52_Y30_N28
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (rKEY1Cnt(9) & (!\Add1~17\)) # (!rKEY1Cnt(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!rKEY1Cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY1Cnt(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X52_Y30_N2
\rKEY1Cnt~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~14_combout\ = (!\KEY1~input_o\ & \Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1~input_o\,
	datad => \Add1~18_combout\,
	combout => \rKEY1Cnt~14_combout\);

-- Location: FF_X52_Y30_N3
\rKEY1Cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~14_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(9));

-- Location: LCCOMB_X52_Y30_N30
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (rKEY1Cnt(10) & (\Add1~19\ $ (GND))) # (!rKEY1Cnt(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((rKEY1Cnt(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY1Cnt(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X52_Y30_N8
\rKEY1Cnt~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~13_combout\ = (!\KEY1~input_o\ & \Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY1~input_o\,
	datad => \Add1~20_combout\,
	combout => \rKEY1Cnt~13_combout\);

-- Location: FF_X52_Y30_N9
\rKEY1Cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~13_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(10));

-- Location: LCCOMB_X52_Y29_N0
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (rKEY1Cnt(11) & (!\Add1~21\)) # (!rKEY1Cnt(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!rKEY1Cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X52_Y29_N26
\rKEY1Cnt~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~12_combout\ = (!\KEY1~input_o\ & \Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1~input_o\,
	datad => \Add1~22_combout\,
	combout => \rKEY1Cnt~12_combout\);

-- Location: FF_X52_Y29_N27
\rKEY1Cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~12_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(11));

-- Location: LCCOMB_X52_Y29_N2
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (rKEY1Cnt(12) & (\Add1~23\ $ (GND))) # (!rKEY1Cnt(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((rKEY1Cnt(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY1Cnt(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X52_Y29_N28
\rKEY1Cnt~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~11_combout\ = (!\KEY1~input_o\ & \Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1~input_o\,
	datad => \Add1~24_combout\,
	combout => \rKEY1Cnt~11_combout\);

-- Location: FF_X52_Y29_N29
\rKEY1Cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~11_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(12));

-- Location: LCCOMB_X52_Y29_N4
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (rKEY1Cnt(13) & (!\Add1~25\)) # (!rKEY1Cnt(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!rKEY1Cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X52_Y29_N30
\rKEY1Cnt~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~10_combout\ = (!\KEY1~input_o\ & \Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY1~input_o\,
	datac => \Add1~26_combout\,
	combout => \rKEY1Cnt~10_combout\);

-- Location: FF_X52_Y29_N31
\rKEY1Cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~10_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(13));

-- Location: LCCOMB_X52_Y29_N6
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (rKEY1Cnt(14) & (\Add1~27\ $ (GND))) # (!rKEY1Cnt(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((rKEY1Cnt(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY1Cnt(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X52_Y29_N24
\rKEY1Cnt~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~9_combout\ = (!\KEY1~input_o\ & \Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1~input_o\,
	datad => \Add1~28_combout\,
	combout => \rKEY1Cnt~9_combout\);

-- Location: FF_X52_Y29_N25
\rKEY1Cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~9_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(14));

-- Location: LCCOMB_X52_Y29_N8
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (rKEY1Cnt(15) & (!\Add1~29\)) # (!rKEY1Cnt(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!rKEY1Cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X51_Y29_N2
\rKEY1Cnt~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~8_combout\ = (!\KEY1~input_o\ & \Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY1~input_o\,
	datac => \Add1~30_combout\,
	combout => \rKEY1Cnt~8_combout\);

-- Location: FF_X51_Y29_N3
\rKEY1Cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~8_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(15));

-- Location: LCCOMB_X52_Y29_N10
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (rKEY1Cnt(16) & (\Add1~31\ $ (GND))) # (!rKEY1Cnt(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((rKEY1Cnt(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X51_Y29_N8
\rKEY1Cnt~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~7_combout\ = (!\KEY1~input_o\ & \Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY1~input_o\,
	datac => \Add1~32_combout\,
	combout => \rKEY1Cnt~7_combout\);

-- Location: FF_X51_Y29_N9
\rKEY1Cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~7_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(16));

-- Location: LCCOMB_X52_Y29_N12
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (rKEY1Cnt(17) & (!\Add1~33\)) # (!rKEY1Cnt(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!rKEY1Cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY1Cnt(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X51_Y29_N22
\rKEY1Cnt~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~6_combout\ = (!\KEY1~input_o\ & \Add1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY1~input_o\,
	datac => \Add1~34_combout\,
	combout => \rKEY1Cnt~6_combout\);

-- Location: FF_X51_Y29_N23
\rKEY1Cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~6_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(17));

-- Location: LCCOMB_X52_Y29_N14
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (rKEY1Cnt(18) & (\Add1~35\ $ (GND))) # (!rKEY1Cnt(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((rKEY1Cnt(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X51_Y29_N16
\rKEY1Cnt~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~5_combout\ = (!\KEY1~input_o\ & \Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY1~input_o\,
	datac => \Add1~36_combout\,
	combout => \rKEY1Cnt~5_combout\);

-- Location: FF_X51_Y29_N17
\rKEY1Cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~5_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(18));

-- Location: LCCOMB_X52_Y29_N16
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (rKEY1Cnt(19) & (!\Add1~37\)) # (!rKEY1Cnt(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!rKEY1Cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X51_Y29_N10
\rKEY1Cnt~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~4_combout\ = (!\KEY1~input_o\ & \Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1~input_o\,
	datad => \Add1~38_combout\,
	combout => \rKEY1Cnt~4_combout\);

-- Location: FF_X51_Y29_N11
\rKEY1Cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~4_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(19));

-- Location: LCCOMB_X52_Y29_N18
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (rKEY1Cnt(20) & (\Add1~39\ $ (GND))) # (!rKEY1Cnt(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((rKEY1Cnt(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X51_Y29_N12
\rKEY1Cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~3_combout\ = (!\KEY1~input_o\ & \Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1~input_o\,
	datad => \Add1~40_combout\,
	combout => \rKEY1Cnt~3_combout\);

-- Location: FF_X51_Y29_N13
\rKEY1Cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~3_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(20));

-- Location: LCCOMB_X52_Y29_N20
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (rKEY1Cnt(21) & (!\Add1~41\)) # (!rKEY1Cnt(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!rKEY1Cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY1Cnt(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X51_Y29_N6
\rKEY1Cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~1_combout\ = (!\KEY1~input_o\ & \Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY1~input_o\,
	datac => \Add1~42_combout\,
	combout => \rKEY1Cnt~1_combout\);

-- Location: FF_X51_Y29_N7
\rKEY1Cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~1_combout\,
	ena => \rKEY1Cnt[16]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(21));

-- Location: LCCOMB_X52_Y29_N22
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = \Add1~43\ $ (!rKEY1Cnt(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => rKEY1Cnt(22),
	cin => \Add1~43\,
	combout => \Add1~44_combout\);

-- Location: LCCOMB_X51_Y29_N24
\rKEY1Cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY1Cnt~0_combout\ = (rKEY1Cnt(22)) # (\Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => rKEY1Cnt(22),
	datad => \Add1~44_combout\,
	combout => \rKEY1Cnt~0_combout\);

-- Location: FF_X51_Y29_N25
\rKEY1Cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY1Cnt~0_combout\,
	sclr => \KEY1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY1Cnt(22));

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

-- Location: LCCOMB_X58_Y35_N10
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = rKEY0Cnt(0) $ (VCC)
-- \Add0~1\ = CARRY(rKEY0Cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rKEY0Cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X57_Y35_N10
\rKEY0Cnt~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~23_combout\ = (!\KEY0~input_o\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY0~input_o\,
	datac => \Add0~0_combout\,
	combout => \rKEY0Cnt~23_combout\);

-- Location: LCCOMB_X57_Y34_N24
\rKEY0Cnt[8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt[8]~2_combout\ = (\KEY0~input_o\) # (!rKEY0Cnt(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => rKEY0Cnt(22),
	datad => \KEY0~input_o\,
	combout => \rKEY0Cnt[8]~2_combout\);

-- Location: FF_X58_Y35_N21
\rKEY0Cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \rKEY0Cnt~23_combout\,
	sload => VCC,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(0));

-- Location: LCCOMB_X58_Y35_N12
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (rKEY0Cnt(1) & (!\Add0~1\)) # (!rKEY0Cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!rKEY0Cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY0Cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X57_Y35_N16
\rKEY0Cnt~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~22_combout\ = (!\KEY0~input_o\ & \Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY0~input_o\,
	datac => \Add0~2_combout\,
	combout => \rKEY0Cnt~22_combout\);

-- Location: FF_X58_Y35_N15
\rKEY0Cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \rKEY0Cnt~22_combout\,
	sload => VCC,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(1));

-- Location: LCCOMB_X58_Y35_N14
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (rKEY0Cnt(2) & (\Add0~3\ $ (GND))) # (!rKEY0Cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((rKEY0Cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY0Cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X57_Y35_N6
\rKEY0Cnt~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~21_combout\ = (!\KEY0~input_o\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY0~input_o\,
	datac => \Add0~4_combout\,
	combout => \rKEY0Cnt~21_combout\);

-- Location: FF_X58_Y35_N29
\rKEY0Cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \rKEY0Cnt~21_combout\,
	sload => VCC,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(2));

-- Location: LCCOMB_X58_Y35_N16
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (rKEY0Cnt(3) & (!\Add0~5\)) # (!rKEY0Cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!rKEY0Cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY0Cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X57_Y35_N4
\rKEY0Cnt~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~20_combout\ = (!\KEY0~input_o\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY0~input_o\,
	datad => \Add0~6_combout\,
	combout => \rKEY0Cnt~20_combout\);

-- Location: FF_X58_Y35_N25
\rKEY0Cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \rKEY0Cnt~20_combout\,
	sload => VCC,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(3));

-- Location: LCCOMB_X58_Y35_N18
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (rKEY0Cnt(4) & (\Add0~7\ $ (GND))) # (!rKEY0Cnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((rKEY0Cnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X57_Y35_N26
\rKEY0Cnt~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~19_combout\ = (!\KEY0~input_o\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY0~input_o\,
	datad => \Add0~8_combout\,
	combout => \rKEY0Cnt~19_combout\);

-- Location: FF_X58_Y35_N23
\rKEY0Cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \rKEY0Cnt~19_combout\,
	sload => VCC,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(4));

-- Location: LCCOMB_X58_Y35_N20
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (rKEY0Cnt(5) & (!\Add0~9\)) # (!rKEY0Cnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!rKEY0Cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY0Cnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X58_Y35_N0
\rKEY0Cnt~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~18_combout\ = (!\KEY0~input_o\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0~input_o\,
	datac => \Add0~10_combout\,
	combout => \rKEY0Cnt~18_combout\);

-- Location: FF_X58_Y35_N1
\rKEY0Cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~18_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(5));

-- Location: LCCOMB_X58_Y35_N22
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (rKEY0Cnt(6) & (\Add0~11\ $ (GND))) # (!rKEY0Cnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((rKEY0Cnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X58_Y35_N6
\rKEY0Cnt~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~17_combout\ = (!\KEY0~input_o\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0~input_o\,
	datad => \Add0~12_combout\,
	combout => \rKEY0Cnt~17_combout\);

-- Location: FF_X58_Y35_N7
\rKEY0Cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~17_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(6));

-- Location: LCCOMB_X58_Y35_N24
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (rKEY0Cnt(7) & (!\Add0~13\)) # (!rKEY0Cnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!rKEY0Cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY0Cnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X58_Y35_N4
\rKEY0Cnt~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~16_combout\ = (!\KEY0~input_o\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0~input_o\,
	datac => \Add0~14_combout\,
	combout => \rKEY0Cnt~16_combout\);

-- Location: FF_X58_Y35_N5
\rKEY0Cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~16_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(7));

-- Location: LCCOMB_X58_Y35_N26
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (rKEY0Cnt(8) & (\Add0~15\ $ (GND))) # (!rKEY0Cnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((rKEY0Cnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X57_Y35_N12
\rKEY0Cnt~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~15_combout\ = (!\KEY0~input_o\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY0~input_o\,
	datad => \Add0~16_combout\,
	combout => \rKEY0Cnt~15_combout\);

-- Location: FF_X57_Y35_N13
\rKEY0Cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~15_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(8));

-- Location: LCCOMB_X58_Y35_N28
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (rKEY0Cnt(9) & (!\Add0~17\)) # (!rKEY0Cnt(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!rKEY0Cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY0Cnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X58_Y35_N2
\rKEY0Cnt~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~14_combout\ = (!\KEY0~input_o\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0~input_o\,
	datad => \Add0~18_combout\,
	combout => \rKEY0Cnt~14_combout\);

-- Location: FF_X58_Y35_N3
\rKEY0Cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~14_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(9));

-- Location: LCCOMB_X58_Y35_N30
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (rKEY0Cnt(10) & (\Add0~19\ $ (GND))) # (!rKEY0Cnt(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((rKEY0Cnt(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY0Cnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X58_Y35_N8
\rKEY0Cnt~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~13_combout\ = (\Add0~20_combout\ & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	datad => \KEY0~input_o\,
	combout => \rKEY0Cnt~13_combout\);

-- Location: FF_X58_Y35_N9
\rKEY0Cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~13_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(10));

-- Location: LCCOMB_X58_Y34_N0
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (rKEY0Cnt(11) & (!\Add0~21\)) # (!rKEY0Cnt(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!rKEY0Cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X58_Y34_N26
\rKEY0Cnt~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~12_combout\ = (!\KEY0~input_o\ & \Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY0~input_o\,
	datad => \Add0~22_combout\,
	combout => \rKEY0Cnt~12_combout\);

-- Location: FF_X58_Y34_N27
\rKEY0Cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~12_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(11));

-- Location: LCCOMB_X58_Y34_N2
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (rKEY0Cnt(12) & (\Add0~23\ $ (GND))) # (!rKEY0Cnt(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((rKEY0Cnt(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY0Cnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X58_Y34_N28
\rKEY0Cnt~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~11_combout\ = (!\KEY0~input_o\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY0~input_o\,
	datad => \Add0~24_combout\,
	combout => \rKEY0Cnt~11_combout\);

-- Location: FF_X58_Y34_N29
\rKEY0Cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~11_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(12));

-- Location: LCCOMB_X58_Y34_N4
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (rKEY0Cnt(13) & (!\Add0~25\)) # (!rKEY0Cnt(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!rKEY0Cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X58_Y34_N30
\rKEY0Cnt~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~10_combout\ = (!\KEY0~input_o\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY0~input_o\,
	datac => \Add0~26_combout\,
	combout => \rKEY0Cnt~10_combout\);

-- Location: FF_X58_Y34_N31
\rKEY0Cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~10_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(13));

-- Location: LCCOMB_X58_Y34_N6
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (rKEY0Cnt(14) & (\Add0~27\ $ (GND))) # (!rKEY0Cnt(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((rKEY0Cnt(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X57_Y34_N10
\rKEY0Cnt~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~9_combout\ = (!\KEY0~input_o\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0~input_o\,
	datad => \Add0~28_combout\,
	combout => \rKEY0Cnt~9_combout\);

-- Location: FF_X57_Y34_N11
\rKEY0Cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~9_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(14));

-- Location: LCCOMB_X58_Y34_N8
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (rKEY0Cnt(15) & (!\Add0~29\)) # (!rKEY0Cnt(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!rKEY0Cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X57_Y34_N12
\rKEY0Cnt~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~8_combout\ = (\Add0~30_combout\ & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \KEY0~input_o\,
	combout => \rKEY0Cnt~8_combout\);

-- Location: FF_X57_Y34_N13
\rKEY0Cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~8_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(15));

-- Location: LCCOMB_X58_Y34_N10
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (rKEY0Cnt(16) & (\Add0~31\ $ (GND))) # (!rKEY0Cnt(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((rKEY0Cnt(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY0Cnt(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X57_Y34_N22
\rKEY0Cnt~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~7_combout\ = (\Add0~32_combout\ & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \KEY0~input_o\,
	combout => \rKEY0Cnt~7_combout\);

-- Location: FF_X57_Y34_N23
\rKEY0Cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~7_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(16));

-- Location: LCCOMB_X58_Y34_N12
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (rKEY0Cnt(17) & (!\Add0~33\)) # (!rKEY0Cnt(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!rKEY0Cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY0Cnt(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X58_Y34_N24
\rKEY0Cnt~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~6_combout\ = (!\KEY0~input_o\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY0~input_o\,
	datad => \Add0~34_combout\,
	combout => \rKEY0Cnt~6_combout\);

-- Location: FF_X58_Y34_N25
\rKEY0Cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~6_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(17));

-- Location: LCCOMB_X58_Y34_N14
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (rKEY0Cnt(18) & (\Add0~35\ $ (GND))) # (!rKEY0Cnt(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((rKEY0Cnt(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X57_Y34_N0
\rKEY0Cnt~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~5_combout\ = (\Add0~36_combout\ & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~36_combout\,
	datad => \KEY0~input_o\,
	combout => \rKEY0Cnt~5_combout\);

-- Location: FF_X57_Y34_N1
\rKEY0Cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~5_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(18));

-- Location: LCCOMB_X58_Y34_N16
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (rKEY0Cnt(19) & (!\Add0~37\)) # (!rKEY0Cnt(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!rKEY0Cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X57_Y34_N14
\rKEY0Cnt~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~4_combout\ = (!\KEY0~input_o\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0~input_o\,
	datad => \Add0~38_combout\,
	combout => \rKEY0Cnt~4_combout\);

-- Location: FF_X57_Y34_N15
\rKEY0Cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~4_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(19));

-- Location: LCCOMB_X58_Y34_N18
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (rKEY0Cnt(20) & (\Add0~39\ $ (GND))) # (!rKEY0Cnt(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((rKEY0Cnt(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X57_Y34_N16
\rKEY0Cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~3_combout\ = (!\KEY0~input_o\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0~input_o\,
	datad => \Add0~40_combout\,
	combout => \rKEY0Cnt~3_combout\);

-- Location: FF_X57_Y34_N17
\rKEY0Cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~3_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(20));

-- Location: LCCOMB_X58_Y34_N20
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (rKEY0Cnt(21) & (!\Add0~41\)) # (!rKEY0Cnt(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!rKEY0Cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X57_Y34_N2
\rKEY0Cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~1_combout\ = (\Add0~42_combout\ & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~42_combout\,
	datad => \KEY0~input_o\,
	combout => \rKEY0Cnt~1_combout\);

-- Location: FF_X57_Y34_N3
\rKEY0Cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~1_combout\,
	ena => \rKEY0Cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(21));

-- Location: LCCOMB_X58_Y34_N22
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = rKEY0Cnt(22) $ (!\Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rKEY0Cnt(22),
	cin => \Add0~43\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X57_Y34_N4
\rKEY0Cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rKEY0Cnt~0_combout\ = (rKEY0Cnt(22)) # (\Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => rKEY0Cnt(22),
	datad => \Add0~44_combout\,
	combout => \rKEY0Cnt~0_combout\);

-- Location: FF_X57_Y34_N5
\rKEY0Cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rKEY0Cnt~0_combout\,
	sclr => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rKEY0Cnt(22));

-- Location: LCCOMB_X54_Y34_N10
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (rKEY0Cnt(22) & (((\rState.st7P~q\)))) # (!rKEY0Cnt(22) & (rKEY1Cnt(22) & ((\rState.st7P~q\) # (\rState.st7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => \rState.st7P~q\,
	datac => \rState.st7~q\,
	datad => rKEY0Cnt(22),
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X54_Y34_N18
\Selector15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\Selector15~0_combout\) # ((rKEY0Cnt(22) & (!\rState.st0~q\ & !rKEY1Cnt(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(22),
	datab => \rState.st0~q\,
	datac => rKEY1Cnt(22),
	datad => \Selector15~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: FF_X54_Y34_N19
\rState.st7P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st7P~q\);

-- Location: LCCOMB_X54_Y34_N22
\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (rKEY1Cnt(22) & (((\rState.st8~q\ & rKEY0Cnt(22))))) # (!rKEY1Cnt(22) & (!rKEY0Cnt(22) & ((\rState.st7P~q\) # (\rState.st8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => \rState.st7P~q\,
	datac => \rState.st8~q\,
	datad => rKEY0Cnt(22),
	combout => \Selector16~0_combout\);

-- Location: FF_X54_Y34_N23
\rState.st8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st8~q\);

-- Location: LCCOMB_X54_Y34_N12
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (rKEY1Cnt(22) & (((\rState.st6P~q\)))) # (!rKEY1Cnt(22) & (rKEY0Cnt(22) & ((\rState.st8~q\) # (\rState.st6P~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st8~q\,
	datab => \rState.st6P~q\,
	datac => rKEY1Cnt(22),
	datad => rKEY0Cnt(22),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X54_Y34_N4
\Selector13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\Selector13~0_combout\) # ((!rKEY0Cnt(22) & (\rState.st6~q\ & rKEY1Cnt(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(22),
	datab => \rState.st6~q\,
	datac => rKEY1Cnt(22),
	datad => \Selector13~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: FF_X54_Y34_N5
\rState.st6P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st6P~q\);

-- Location: LCCOMB_X54_Y34_N14
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (rKEY1Cnt(22) & (((\rState.st7~q\ & rKEY0Cnt(22))))) # (!rKEY1Cnt(22) & (!rKEY0Cnt(22) & ((\rState.st6P~q\) # (\rState.st7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => \rState.st6P~q\,
	datac => \rState.st7~q\,
	datad => rKEY0Cnt(22),
	combout => \Selector14~0_combout\);

-- Location: FF_X54_Y34_N15
\rState.st7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st7~q\);

-- Location: LCCOMB_X54_Y34_N20
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (rKEY1Cnt(22) & (\rState.st5P~q\)) # (!rKEY1Cnt(22) & (rKEY0Cnt(22) & ((\rState.st5P~q\) # (\rState.st7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => \rState.st5P~q\,
	datac => \rState.st7~q\,
	datad => rKEY0Cnt(22),
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X54_Y34_N16
\Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\Selector11~0_combout\) # ((\rState.st5~q\ & (rKEY1Cnt(22) & !rKEY0Cnt(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st5~q\,
	datab => \Selector11~0_combout\,
	datac => rKEY1Cnt(22),
	datad => rKEY0Cnt(22),
	combout => \Selector11~1_combout\);

-- Location: FF_X54_Y34_N17
\rState.st5P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st5P~q\);

-- Location: LCCOMB_X54_Y34_N0
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (rKEY1Cnt(22) & (((\rState.st6~q\ & rKEY0Cnt(22))))) # (!rKEY1Cnt(22) & (!rKEY0Cnt(22) & ((\rState.st5P~q\) # (\rState.st6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => \rState.st5P~q\,
	datac => \rState.st6~q\,
	datad => rKEY0Cnt(22),
	combout => \Selector12~0_combout\);

-- Location: FF_X54_Y34_N1
\rState.st6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st6~q\);

-- Location: LCCOMB_X54_Y34_N30
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (rKEY1Cnt(22) & (\rState.st4P~q\)) # (!rKEY1Cnt(22) & (rKEY0Cnt(22) & ((\rState.st4P~q\) # (\rState.st6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st4P~q\,
	datab => \rState.st6~q\,
	datac => rKEY1Cnt(22),
	datad => rKEY0Cnt(22),
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X54_Y34_N26
\Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\Selector9~0_combout\) # ((rKEY1Cnt(22) & (\rState.st4~q\ & !rKEY0Cnt(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => \rState.st4~q\,
	datac => \Selector9~0_combout\,
	datad => rKEY0Cnt(22),
	combout => \Selector9~1_combout\);

-- Location: FF_X54_Y34_N27
\rState.st4P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st4P~q\);

-- Location: LCCOMB_X54_Y34_N6
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (rKEY1Cnt(22) & (((\rState.st5~q\ & rKEY0Cnt(22))))) # (!rKEY1Cnt(22) & (!rKEY0Cnt(22) & ((\rState.st4P~q\) # (\rState.st5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => \rState.st4P~q\,
	datac => \rState.st5~q\,
	datad => rKEY0Cnt(22),
	combout => \Selector10~0_combout\);

-- Location: FF_X54_Y34_N7
\rState.st5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st5~q\);

-- Location: LCCOMB_X55_Y34_N8
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (rKEY1Cnt(22) & (((\rState.st3P~q\)))) # (!rKEY1Cnt(22) & (rKEY0Cnt(22) & ((\rState.st5~q\) # (\rState.st3P~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => \rState.st5~q\,
	datac => \rState.st3P~q\,
	datad => rKEY0Cnt(22),
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X55_Y34_N14
\Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((rKEY1Cnt(22) & (\rState.st3~q\ & !rKEY0Cnt(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => \rState.st3~q\,
	datac => \Selector7~0_combout\,
	datad => rKEY0Cnt(22),
	combout => \Selector7~1_combout\);

-- Location: FF_X55_Y34_N15
\rState.st3P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st3P~q\);

-- Location: LCCOMB_X54_Y34_N28
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (rKEY1Cnt(22) & (((\rState.st4~q\ & rKEY0Cnt(22))))) # (!rKEY1Cnt(22) & (!rKEY0Cnt(22) & ((\rState.st3P~q\) # (\rState.st4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => \rState.st3P~q\,
	datac => \rState.st4~q\,
	datad => rKEY0Cnt(22),
	combout => \Selector8~0_combout\);

-- Location: FF_X54_Y34_N29
\rState.st4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st4~q\);

-- Location: LCCOMB_X55_Y34_N20
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (rKEY1Cnt(22) & (\rState.st2P~q\)) # (!rKEY1Cnt(22) & (rKEY0Cnt(22) & ((\rState.st2P~q\) # (\rState.st4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st2P~q\,
	datab => \rState.st4~q\,
	datac => rKEY1Cnt(22),
	datad => rKEY0Cnt(22),
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X55_Y34_N6
\Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((!rKEY0Cnt(22) & (\rState.st2~q\ & rKEY1Cnt(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(22),
	datab => \rState.st2~q\,
	datac => rKEY1Cnt(22),
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X55_Y34_N7
\rState.st2P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st2P~q\);

-- Location: LCCOMB_X55_Y34_N24
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (rKEY1Cnt(22) & (rKEY0Cnt(22) & (\rState.st3~q\))) # (!rKEY1Cnt(22) & (!rKEY0Cnt(22) & ((\rState.st3~q\) # (\rState.st2P~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => rKEY0Cnt(22),
	datac => \rState.st3~q\,
	datad => \rState.st2P~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X55_Y34_N25
\rState.st3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st3~q\);

-- Location: LCCOMB_X55_Y34_N18
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (rKEY1Cnt(22) & (((\rState.st1P~q\)))) # (!rKEY1Cnt(22) & (rKEY0Cnt(22) & ((\rState.st1P~q\) # (\rState.st3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(22),
	datab => \rState.st1P~q\,
	datac => rKEY1Cnt(22),
	datad => \rState.st3~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X55_Y34_N16
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((!rKEY0Cnt(22) & (\rState.st1~q\ & rKEY1Cnt(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(22),
	datab => \rState.st1~q\,
	datac => rKEY1Cnt(22),
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X55_Y34_N17
\rState.st1P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st1P~q\);

-- Location: LCCOMB_X55_Y34_N2
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (rKEY1Cnt(22) & (((\rState.st2~q\ & rKEY0Cnt(22))))) # (!rKEY1Cnt(22) & (!rKEY0Cnt(22) & ((\rState.st1P~q\) # (\rState.st2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => \rState.st1P~q\,
	datac => \rState.st2~q\,
	datad => rKEY0Cnt(22),
	combout => \Selector4~0_combout\);

-- Location: FF_X55_Y34_N3
\rState.st2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st2~q\);

-- Location: LCCOMB_X55_Y34_N22
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (rKEY1Cnt(22) & (((\rState.st0P~q\)))) # (!rKEY1Cnt(22) & (rKEY0Cnt(22) & ((\rState.st0P~q\) # (\rState.st2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(22),
	datab => \rState.st0P~q\,
	datac => rKEY1Cnt(22),
	datad => \rState.st2~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X55_Y34_N28
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((rKEY1Cnt(22) & (!\rState.st0~q\ & !rKEY0Cnt(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => \rState.st0~q\,
	datac => \Selector1~0_combout\,
	datad => rKEY0Cnt(22),
	combout => \Selector1~1_combout\);

-- Location: FF_X55_Y34_N29
\rState.st0P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st0P~q\);

-- Location: LCCOMB_X55_Y34_N4
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (rKEY1Cnt(22) & (((\rState.st1~q\ & rKEY0Cnt(22))))) # (!rKEY1Cnt(22) & (!rKEY0Cnt(22) & ((\rState.st0P~q\) # (\rState.st1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => \rState.st0P~q\,
	datac => \rState.st1~q\,
	datad => rKEY0Cnt(22),
	combout => \Selector2~0_combout\);

-- Location: FF_X55_Y34_N5
\rState.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st1~q\);

-- Location: LCCOMB_X55_Y34_N10
\Selector17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (rKEY0Cnt(22) & (\rState.st1~q\ & (!rKEY1Cnt(22)))) # (!rKEY0Cnt(22) & (((rKEY1Cnt(22) & \rState.st8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY0Cnt(22),
	datab => \rState.st1~q\,
	datac => rKEY1Cnt(22),
	datad => \rState.st8~q\,
	combout => \Selector17~2_combout\);

-- Location: LCCOMB_X55_Y34_N30
\Selector17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = (\Selector17~2_combout\) # ((\rState.st8P~q\ & ((rKEY1Cnt(22)) # (rKEY0Cnt(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => rKEY0Cnt(22),
	datac => \rState.st8P~q\,
	datad => \Selector17~2_combout\,
	combout => \Selector17~3_combout\);

-- Location: FF_X55_Y34_N31
\rState.st8P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector17~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st8P~q\);

-- Location: LCCOMB_X55_Y34_N26
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (rKEY1Cnt(22) & (((\rState.st0~q\) # (!rKEY0Cnt(22))))) # (!rKEY1Cnt(22) & ((rKEY0Cnt(22)) # ((!\rState.st8P~q\ & \rState.st0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rKEY1Cnt(22),
	datab => \rState.st8P~q\,
	datac => \rState.st0~q\,
	datad => rKEY0Cnt(22),
	combout => \Selector0~0_combout\);

-- Location: FF_X55_Y34_N27
\rState.st0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rState.st0~q\);

-- Location: LCCOMB_X55_Y34_N0
\WideOr18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr18~0_combout\ = ((\rState.st2~q\) # ((\rState.st1~q\) # (\rState.st3~q\))) # (!\rState.st0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st0~q\,
	datab => \rState.st2~q\,
	datac => \rState.st1~q\,
	datad => \rState.st3~q\,
	combout => \WideOr18~0_combout\);

-- Location: LCCOMB_X54_Y34_N24
\WideOr18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr18~1_combout\ = (\rState.st5~q\) # ((\rState.st6~q\) # ((\rState.st7~q\) # (\rState.st4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st5~q\,
	datab => \rState.st6~q\,
	datac => \rState.st7~q\,
	datad => \rState.st4~q\,
	combout => \WideOr18~1_combout\);

-- Location: LCCOMB_X51_Y34_N0
\WideOr18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr18~2_combout\ = (\WideOr18~0_combout\) # ((\rState.st8~q\) # (\WideOr18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr18~0_combout\,
	datac => \rState.st8~q\,
	datad => \WideOr18~1_combout\,
	combout => \WideOr18~2_combout\);

-- Location: LCCOMB_X52_Y34_N0
\u_rState~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_rState~0_combout\ = (rKEY0Cnt(22)) # (rKEY1Cnt(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => rKEY0Cnt(22),
	datad => rKEY1Cnt(22),
	combout => \u_rState~0_combout\);

-- Location: LCCOMB_X54_Y34_N8
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!\rState.st6P~q\ & !\rState.st7P~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rState.st6P~q\,
	datad => \rState.st7P~q\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X55_Y34_N12
\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (!\rState.st2P~q\ & (!\rState.st0P~q\ & (!\rState.st3P~q\ & !\rState.st1P~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st2P~q\,
	datab => \rState.st0P~q\,
	datac => \rState.st3P~q\,
	datad => \rState.st1P~q\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X51_Y34_N28
\Selector25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\rState.st4P~q\) # (((\rState.st5P~q\) # (!\Selector25~0_combout\)) # (!\Selector19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st4P~q\,
	datab => \Selector19~0_combout\,
	datac => \rState.st5P~q\,
	datad => \Selector25~0_combout\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X51_Y34_N6
\Selector25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (\u_rState~0_combout\ & (rLED(0) & ((\rState.st8P~q\) # (\Selector25~1_combout\)))) # (!\u_rState~0_combout\ & (((\Selector25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rLED(0),
	datab => \rState.st8P~q\,
	datac => \u_rState~0_combout\,
	datad => \Selector25~1_combout\,
	combout => \Selector25~2_combout\);

-- Location: LCCOMB_X51_Y34_N12
\Selector25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~3_combout\ = (\Selector25~2_combout\) # ((\WideOr18~2_combout\ & rLED(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr18~2_combout\,
	datac => rLED(0),
	datad => \Selector25~2_combout\,
	combout => \Selector25~3_combout\);

-- Location: FF_X51_Y34_N13
\rLED[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector25~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED(0));

-- Location: LCCOMB_X54_Y34_N2
\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (!\rState.st4P~q\ & (!\rState.st7P~q\ & (!\rState.st6P~q\ & !\rState.st5P~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st4P~q\,
	datab => \rState.st7P~q\,
	datac => \rState.st6P~q\,
	datad => \rState.st5P~q\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X52_Y34_N30
\Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\rState.st2P~q\) # (((\rState.st3P~q\) # (\rState.st1P~q\)) # (!\Selector21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st2P~q\,
	datab => \Selector21~0_combout\,
	datac => \rState.st3P~q\,
	datad => \rState.st1P~q\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X52_Y34_N4
\Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (!\rState.st8P~q\ & !\rState.st0P~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st8P~q\,
	datac => \rState.st0P~q\,
	combout => \Selector24~1_combout\);

-- Location: LCCOMB_X52_Y34_N10
\Selector24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (\u_rState~0_combout\ & (rLED(1) & ((\Selector24~0_combout\) # (!\Selector24~1_combout\)))) # (!\u_rState~0_combout\ & (\Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => rLED(1),
	datac => \Selector24~1_combout\,
	datad => \u_rState~0_combout\,
	combout => \Selector24~2_combout\);

-- Location: LCCOMB_X52_Y34_N20
\Selector24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~3_combout\ = (\Selector24~2_combout\) # ((\WideOr18~2_combout\ & rLED(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr18~2_combout\,
	datac => rLED(1),
	datad => \Selector24~2_combout\,
	combout => \Selector24~3_combout\);

-- Location: FF_X52_Y34_N21
\rLED[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector24~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED(1));

-- Location: LCCOMB_X52_Y34_N28
\Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (rLED(2) & (\u_rState~0_combout\ & ((\rState.st1P~q\) # (!\Selector24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st1P~q\,
	datab => \Selector24~1_combout\,
	datac => rLED(2),
	datad => \u_rState~0_combout\,
	combout => \Selector23~1_combout\);

-- Location: LCCOMB_X52_Y34_N8
\Selector24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~4_combout\ = (!\rState.st4P~q\ & (!\rState.st3P~q\ & (!\rState.st5P~q\ & \Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st4P~q\,
	datab => \rState.st3P~q\,
	datac => \rState.st5P~q\,
	datad => \Selector19~0_combout\,
	combout => \Selector24~4_combout\);

-- Location: LCCOMB_X52_Y34_N18
\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\rState.st2P~q\ & (((rLED(2)) # (!\u_rState~0_combout\)))) # (!\rState.st2P~q\ & (!\Selector24~4_combout\ & ((rLED(2)) # (!\u_rState~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st2P~q\,
	datab => \Selector24~4_combout\,
	datac => rLED(2),
	datad => \u_rState~0_combout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X52_Y34_N22
\Selector23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = (\Selector23~1_combout\) # ((\Selector23~0_combout\) # ((\WideOr18~2_combout\ & rLED(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr18~2_combout\,
	datab => \Selector23~1_combout\,
	datac => rLED(2),
	datad => \Selector23~0_combout\,
	combout => \Selector23~2_combout\);

-- Location: FF_X52_Y34_N23
\rLED[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED(2));

-- Location: LCCOMB_X52_Y34_N26
\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\rState.st8P~q\ & (!\rState.st2P~q\ & (!\rState.st0P~q\ & !\rState.st1P~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st8P~q\,
	datab => \rState.st2P~q\,
	datac => \rState.st0P~q\,
	datad => \rState.st1P~q\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X52_Y34_N24
\Selector22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\u_rState~0_combout\ & (rLED(3) & ((!\Selector24~4_combout\) # (!\Selector22~0_combout\)))) # (!\u_rState~0_combout\ & (((!\Selector24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => rLED(3),
	datac => \Selector24~4_combout\,
	datad => \u_rState~0_combout\,
	combout => \Selector22~1_combout\);

-- Location: LCCOMB_X52_Y34_N16
\Selector22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = (\Selector22~1_combout\) # ((\WideOr18~2_combout\ & rLED(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr18~2_combout\,
	datac => rLED(3),
	datad => \Selector22~1_combout\,
	combout => \Selector22~2_combout\);

-- Location: FF_X52_Y34_N17
\rLED[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED(3));

-- Location: LCCOMB_X52_Y34_N6
\Selector21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\Selector21~0_combout\ & (((\Selector22~0_combout\ & !\rState.st3P~q\)) # (!\u_rState~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \rState.st3P~q\,
	datac => \Selector21~0_combout\,
	datad => \u_rState~0_combout\,
	combout => \Selector21~1_combout\);

-- Location: LCCOMB_X52_Y34_N14
\Selector21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = (rLED(4) & ((\WideOr18~2_combout\) # ((!\Selector21~1_combout\)))) # (!rLED(4) & (((!\u_rState~0_combout\ & !\Selector21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr18~2_combout\,
	datab => \u_rState~0_combout\,
	datac => rLED(4),
	datad => \Selector21~1_combout\,
	combout => \Selector21~2_combout\);

-- Location: FF_X52_Y34_N15
\rLED[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED(4));

-- Location: LCCOMB_X51_Y34_N20
\Selector25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~4_combout\ = (!\rState.st4P~q\ & \Selector25~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rState.st4P~q\,
	datad => \Selector25~0_combout\,
	combout => \Selector25~4_combout\);

-- Location: LCCOMB_X51_Y34_N22
\Selector20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (rLED(5) & (\u_rState~0_combout\ & ((\rState.st8P~q\) # (!\Selector25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rLED(5),
	datab => \rState.st8P~q\,
	datac => \u_rState~0_combout\,
	datad => \Selector25~4_combout\,
	combout => \Selector20~1_combout\);

-- Location: LCCOMB_X51_Y34_N2
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\rState.st5P~q\ & (((rLED(5))) # (!\u_rState~0_combout\))) # (!\rState.st5P~q\ & (!\Selector19~0_combout\ & ((rLED(5)) # (!\u_rState~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st5P~q\,
	datab => \u_rState~0_combout\,
	datac => rLED(5),
	datad => \Selector19~0_combout\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X51_Y34_N30
\Selector20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~2_combout\ = (\Selector20~1_combout\) # ((\Selector20~0_combout\) # ((\WideOr18~2_combout\ & rLED(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~1_combout\,
	datab => \WideOr18~2_combout\,
	datac => rLED(5),
	datad => \Selector20~0_combout\,
	combout => \Selector20~2_combout\);

-- Location: FF_X51_Y34_N31
\rLED[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector20~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED(5));

-- Location: LCCOMB_X51_Y34_N26
\Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (!\rState.st5P~q\ & (!\rState.st8P~q\ & (!\rState.st4P~q\ & \Selector25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st5P~q\,
	datab => \rState.st8P~q\,
	datac => \rState.st4P~q\,
	datad => \Selector25~0_combout\,
	combout => \Selector19~2_combout\);

-- Location: LCCOMB_X51_Y34_N24
\Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (rLED(6) & (((\WideOr18~2_combout\)) # (!\Selector19~0_combout\))) # (!rLED(6) & (!\Selector19~0_combout\ & (!\u_rState~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rLED(6),
	datab => \Selector19~0_combout\,
	datac => \u_rState~0_combout\,
	datad => \WideOr18~2_combout\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X51_Y34_N4
\Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = (\Selector19~1_combout\) # ((!\Selector19~2_combout\ & (\u_rState~0_combout\ & rLED(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~2_combout\,
	datab => \u_rState~0_combout\,
	datac => rLED(6),
	datad => \Selector19~1_combout\,
	combout => \Selector19~3_combout\);

-- Location: FF_X51_Y34_N5
\rLED[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector19~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED(6));

-- Location: LCCOMB_X51_Y34_N16
\Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\rState.st5P~q\) # ((\rState.st8P~q\) # ((\rState.st6P~q\) # (!\Selector25~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st5P~q\,
	datab => \rState.st8P~q\,
	datac => \rState.st6P~q\,
	datad => \Selector25~4_combout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X51_Y34_N18
\Selector18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (rLED(7) & ((\WideOr18~2_combout\) # ((\u_rState~0_combout\ & \Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rLED(7),
	datab => \WideOr18~2_combout\,
	datac => \u_rState~0_combout\,
	datad => \Selector18~0_combout\,
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X51_Y34_N14
\Selector18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\Selector18~1_combout\) # ((\rState.st7P~q\ & ((rLED(7)) # (!\u_rState~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rState.st7P~q\,
	datab => \u_rState~0_combout\,
	datac => rLED(7),
	datad => \Selector18~1_combout\,
	combout => \Selector18~2_combout\);

-- Location: FF_X51_Y34_N15
\rLED[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rLED(7));

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


