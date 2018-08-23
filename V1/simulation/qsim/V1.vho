-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "08/21/2018 19:49:17"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
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

ENTITY 	play_controller IS
    PORT (
	clk : IN std_logic;
	resetN : IN std_logic;
	make : IN std_logic;
	break : IN std_logic;
	collision : IN std_logic;
	sound : OUT std_logic;
	error : OUT std_logic;
	scors : OUT std_logic_vector(15 DOWNTO 0)
	);
END play_controller;

-- Design Ports Information
-- sound	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[0]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[2]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[3]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[4]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[5]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[6]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[7]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[8]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[9]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[10]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[11]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[12]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[13]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[14]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scors[15]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- break	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- collision	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- make	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetN	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF play_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_resetN : std_logic;
SIGNAL ww_make : std_logic;
SIGNAL ww_break : std_logic;
SIGNAL ww_collision : std_logic;
SIGNAL ww_sound : std_logic;
SIGNAL ww_error : std_logic;
SIGNAL ww_scors : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \make~input_o\ : std_logic;
SIGNAL \break~input_o\ : std_logic;
SIGNAL \collision~input_o\ : std_logic;
SIGNAL \state.uncol_pre_err~0_combout\ : std_logic;
SIGNAL \resetN~input_o\ : std_logic;
SIGNAL \state.uncol_pre_err~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \state.second_pre_err~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \state.col_pre_play~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \press~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.uncol_unpre~q\ : std_logic;
SIGNAL \state.col_unpre~0_combout\ : std_logic;
SIGNAL \state.col_unpre~q\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector39~1_combout\ : std_logic;
SIGNAL \sound~reg0_q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \error~reg0_q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \scors_num[12]~0_combout\ : std_logic;
SIGNAL \scors_num[12]~1_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL scors_num : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_make~input_o\ : std_logic;
SIGNAL \ALT_INV_collision~input_o\ : std_logic;
SIGNAL \ALT_INV_break~input_o\ : std_logic;
SIGNAL \ALT_INV_scors_num[12]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.uncol_unpre~q\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.second_pre_err~q\ : std_logic;
SIGNAL \ALT_INV_state.col_unpre~q\ : std_logic;
SIGNAL \ALT_INV_press~q\ : std_logic;
SIGNAL \ALT_INV_Selector39~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.uncol_pre_err~q\ : std_logic;
SIGNAL \ALT_INV_state.col_pre_play~q\ : std_logic;
SIGNAL ALT_INV_scors_num : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_scors_num[12]~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_resetN <= resetN;
ww_make <= make;
ww_break <= break;
ww_collision <= collision;
sound <= ww_sound;
error <= ww_error;
scors <= ww_scors;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_make~input_o\ <= NOT \make~input_o\;
\ALT_INV_collision~input_o\ <= NOT \collision~input_o\;
\ALT_INV_break~input_o\ <= NOT \break~input_o\;
\ALT_INV_scors_num[12]~0_combout\ <= NOT \scors_num[12]~0_combout\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_state.uncol_unpre~q\ <= NOT \state.uncol_unpre~q\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_state.second_pre_err~q\ <= NOT \state.second_pre_err~q\;
\ALT_INV_state.col_unpre~q\ <= NOT \state.col_unpre~q\;
\ALT_INV_press~q\ <= NOT \press~q\;
\ALT_INV_Selector39~0_combout\ <= NOT \Selector39~0_combout\;
\ALT_INV_state.uncol_pre_err~q\ <= NOT \state.uncol_pre_err~q\;
\ALT_INV_state.col_pre_play~q\ <= NOT \state.col_pre_play~q\;
ALT_INV_scors_num(15) <= NOT scors_num(15);
ALT_INV_scors_num(14) <= NOT scors_num(14);
ALT_INV_scors_num(13) <= NOT scors_num(13);
ALT_INV_scors_num(12) <= NOT scors_num(12);
ALT_INV_scors_num(11) <= NOT scors_num(11);
ALT_INV_scors_num(10) <= NOT scors_num(10);
ALT_INV_scors_num(9) <= NOT scors_num(9);
ALT_INV_scors_num(8) <= NOT scors_num(8);
ALT_INV_scors_num(7) <= NOT scors_num(7);
ALT_INV_scors_num(6) <= NOT scors_num(6);
ALT_INV_scors_num(5) <= NOT scors_num(5);
ALT_INV_scors_num(4) <= NOT scors_num(4);
ALT_INV_scors_num(3) <= NOT scors_num(3);
ALT_INV_scors_num(2) <= NOT scors_num(2);
ALT_INV_scors_num(1) <= NOT scors_num(1);
ALT_INV_scors_num(0) <= NOT scors_num(0);
\ALT_INV_scors_num[12]~1_combout\ <= NOT \scors_num[12]~1_combout\;

-- Location: IOOBUF_X6_Y0_N36
\sound~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sound~reg0_q\,
	devoe => ww_devoe,
	o => ww_sound);

-- Location: IOOBUF_X10_Y0_N59
\error~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \error~reg0_q\,
	devoe => ww_devoe,
	o => ww_error);

-- Location: IOOBUF_X6_Y0_N53
\scors[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(0),
	devoe => ww_devoe,
	o => ww_scors(0));

-- Location: IOOBUF_X8_Y0_N2
\scors[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(1),
	devoe => ww_devoe,
	o => ww_scors(1));

-- Location: IOOBUF_X8_Y0_N53
\scors[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(2),
	devoe => ww_devoe,
	o => ww_scors(2));

-- Location: IOOBUF_X6_Y0_N2
\scors[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(3),
	devoe => ww_devoe,
	o => ww_scors(3));

-- Location: IOOBUF_X16_Y0_N53
\scors[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(4),
	devoe => ww_devoe,
	o => ww_scors(4));

-- Location: IOOBUF_X10_Y0_N42
\scors[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(5),
	devoe => ww_devoe,
	o => ww_scors(5));

-- Location: IOOBUF_X14_Y0_N36
\scors[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(6),
	devoe => ww_devoe,
	o => ww_scors(6));

-- Location: IOOBUF_X6_Y0_N19
\scors[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(7),
	devoe => ww_devoe,
	o => ww_scors(7));

-- Location: IOOBUF_X12_Y0_N2
\scors[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(8),
	devoe => ww_devoe,
	o => ww_scors(8));

-- Location: IOOBUF_X16_Y0_N19
\scors[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(9),
	devoe => ww_devoe,
	o => ww_scors(9));

-- Location: IOOBUF_X14_Y0_N53
\scors[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(10),
	devoe => ww_devoe,
	o => ww_scors(10));

-- Location: IOOBUF_X14_Y0_N2
\scors[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(11),
	devoe => ww_devoe,
	o => ww_scors(11));

-- Location: IOOBUF_X14_Y0_N19
\scors[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(12),
	devoe => ww_devoe,
	o => ww_scors(12));

-- Location: IOOBUF_X12_Y0_N36
\scors[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(13),
	devoe => ww_devoe,
	o => ww_scors(13));

-- Location: IOOBUF_X12_Y0_N53
\scors[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(14),
	devoe => ww_devoe,
	o => ww_scors(14));

-- Location: IOOBUF_X12_Y0_N19
\scors[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => scors_num(15),
	devoe => ww_devoe,
	o => ww_scors(15));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X8_Y0_N35
\make~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_make,
	o => \make~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\break~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_break,
	o => \break~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\collision~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_collision,
	o => \collision~input_o\);

-- Location: LABCELL_X11_Y2_N48
\state.uncol_pre_err~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.uncol_pre_err~0_combout\ = ( \state.uncol_pre_err~q\ & ( \make~input_o\ & ( !\state.col_unpre~q\ $ (((\collision~input_o\) # (\break~input_o\))) ) ) ) # ( !\state.uncol_pre_err~q\ & ( \make~input_o\ & ( (!\collision~input_o\ & (!\state.col_unpre~q\ 
-- & ((!\break~input_o\) # (!\state.uncol_unpre~q\)))) ) ) ) # ( \state.uncol_pre_err~q\ & ( !\make~input_o\ & ( (!\collision~input_o\ & (!\break~input_o\ $ (\state.col_unpre~q\))) ) ) ) # ( !\state.uncol_pre_err~q\ & ( !\make~input_o\ & ( (!\break~input_o\ 
-- & (!\collision~input_o\ & (!\state.col_unpre~q\ & \state.uncol_unpre~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000100001001000010011000000100000001000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_break~input_o\,
	datab => \ALT_INV_collision~input_o\,
	datac => \ALT_INV_state.col_unpre~q\,
	datad => \ALT_INV_state.uncol_unpre~q\,
	datae => \ALT_INV_state.uncol_pre_err~q\,
	dataf => \ALT_INV_make~input_o\,
	combout => \state.uncol_pre_err~0_combout\);

-- Location: IOIBUF_X8_Y0_N18
\resetN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetN,
	o => \resetN~input_o\);

-- Location: FF_X11_Y2_N50
\state.uncol_pre_err\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.uncol_pre_err~0_combout\,
	clrn => \resetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.uncol_pre_err~q\);

-- Location: LABCELL_X10_Y2_N6
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \break~input_o\ & ( \press~q\ & ( (\state.col_unpre~q\ & ((!\collision~input_o\) # (\make~input_o\))) ) ) ) # ( !\break~input_o\ & ( \press~q\ & ( ((\state.col_unpre~q\ & ((!\collision~input_o\) # (\make~input_o\)))) # 
-- (\state.second_pre_err~q\) ) ) ) # ( \break~input_o\ & ( !\press~q\ & ( (!\make~input_o\ & (\state.col_unpre~q\ & !\collision~input_o\)) ) ) ) # ( !\break~input_o\ & ( !\press~q\ & ( (!\state.col_unpre~q\ & (((\state.second_pre_err~q\)))) # 
-- (\state.col_unpre~q\ & (!\make~input_o\ & ((!\collision~input_o\) # (\state.second_pre_err~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000001110001000100000000000111111000111110011001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_make~input_o\,
	datab => \ALT_INV_state.col_unpre~q\,
	datac => \ALT_INV_state.second_pre_err~q\,
	datad => \ALT_INV_collision~input_o\,
	datae => \ALT_INV_break~input_o\,
	dataf => \ALT_INV_press~q\,
	combout => \Selector5~0_combout\);

-- Location: LABCELL_X10_Y2_N3
\Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ( \Selector5~0_combout\ & ( (\collision~input_o\ & !\state.uncol_pre_err~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_collision~input_o\,
	datab => \ALT_INV_state.uncol_pre_err~q\,
	dataf => \ALT_INV_Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X10_Y2_N5
\state.second_pre_err\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~1_combout\,
	clrn => \resetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.second_pre_err~q\);

-- Location: LABCELL_X10_Y2_N42
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \state.uncol_pre_err~q\ & ( \press~q\ & ( (\collision~input_o\ & !\break~input_o\) ) ) ) # ( \state.uncol_pre_err~q\ & ( !\press~q\ & ( (!\break~input_o\ & (((\make~input_o\ & \state.col_unpre~q\)) # (\collision~input_o\))) ) ) ) 
-- # ( !\state.uncol_pre_err~q\ & ( !\press~q\ & ( (\make~input_o\ & \state.col_unpre~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010001000100110000000000000000000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_collision~input_o\,
	datab => \ALT_INV_break~input_o\,
	datac => \ALT_INV_make~input_o\,
	datad => \ALT_INV_state.col_unpre~q\,
	datae => \ALT_INV_state.uncol_pre_err~q\,
	dataf => \ALT_INV_press~q\,
	combout => \Selector1~0_combout\);

-- Location: LABCELL_X10_Y2_N48
\Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = ( \state.uncol_pre_err~q\ & ( \state.uncol_unpre~q\ & ( (!\collision~input_o\ & (!\state.col_unpre~q\ $ (((!\break~input_o\))))) # (\collision~input_o\ & ((!\state.col_unpre~q\) # ((!\make~input_o\)))) ) ) ) # ( 
-- !\state.uncol_pre_err~q\ & ( \state.uncol_unpre~q\ & ( (!\collision~input_o\) # ((!\state.col_unpre~q\ & ((\break~input_o\))) # (\state.col_unpre~q\ & (\make~input_o\))) ) ) ) # ( \state.uncol_pre_err~q\ & ( !\state.uncol_unpre~q\ & ( 
-- (!\collision~input_o\ & (!\state.col_unpre~q\ $ (((!\break~input_o\))))) # (\collision~input_o\ & ((!\state.col_unpre~q\) # ((!\make~input_o\)))) ) ) ) # ( !\state.uncol_pre_err~q\ & ( !\state.uncol_unpre~q\ & ( (!\collision~input_o\ $ 
-- (!\state.col_unpre~q\)) # (\make~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111101101111011101101101110010101011111011110111011011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_collision~input_o\,
	datab => \ALT_INV_state.col_unpre~q\,
	datac => \ALT_INV_make~input_o\,
	datad => \ALT_INV_break~input_o\,
	datae => \ALT_INV_state.uncol_pre_err~q\,
	dataf => \ALT_INV_state.uncol_unpre~q\,
	combout => \Selector2~1_combout\);

-- Location: FF_X10_Y2_N44
\state.col_pre_play\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \resetN~input_o\,
	ena => \Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.col_pre_play~q\);

-- Location: LABCELL_X10_Y2_N39
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \press~q\ & ( (((\state.col_unpre~q\) # (\state.col_pre_play~q\)) # (\state.uncol_pre_err~q\)) # (\state.second_pre_err~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.second_pre_err~q\,
	datab => \ALT_INV_state.uncol_pre_err~q\,
	datac => \ALT_INV_state.col_pre_play~q\,
	datad => \ALT_INV_state.col_unpre~q\,
	dataf => \ALT_INV_press~q\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X10_Y2_N12
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( \state.uncol_pre_err~q\ & ( \Selector0~0_combout\ ) ) # ( !\state.uncol_pre_err~q\ & ( \Selector0~0_combout\ ) ) # ( \state.uncol_pre_err~q\ & ( !\Selector0~0_combout\ & ( (!\make~input_o\ & (!\break~input_o\ & 
-- (\collision~input_o\))) # (\make~input_o\ & (((!\break~input_o\ & \collision~input_o\)) # (\state.col_unpre~q\))) ) ) ) # ( !\state.uncol_pre_err~q\ & ( !\Selector0~0_combout\ & ( (\make~input_o\ & \state.col_unpre~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011000101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_make~input_o\,
	datab => \ALT_INV_break~input_o\,
	datac => \ALT_INV_collision~input_o\,
	datad => \ALT_INV_state.col_unpre~q\,
	datae => \ALT_INV_state.uncol_pre_err~q\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X10_Y2_N14
press : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~1_combout\,
	clrn => \resetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \press~q\);

-- Location: LABCELL_X10_Y2_N30
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \state.uncol_pre_err~q\ & ( \press~q\ & ( (!\break~input_o\ & ((!\state.col_unpre~q\) # (\collision~input_o\))) ) ) ) # ( !\state.uncol_pre_err~q\ & ( \press~q\ & ( (!\state.col_unpre~q\) # (\collision~input_o\) ) ) ) # ( 
-- \state.uncol_pre_err~q\ & ( !\press~q\ & ( (!\break~input_o\ & (((!\state.col_unpre~q\) # (\make~input_o\)) # (\collision~input_o\))) ) ) ) # ( !\state.uncol_pre_err~q\ & ( !\press~q\ & ( ((!\state.col_unpre~q\) # (\make~input_o\)) # (\collision~input_o\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101011111110011000100110011111111010101011100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_collision~input_o\,
	datab => \ALT_INV_break~input_o\,
	datac => \ALT_INV_make~input_o\,
	datad => \ALT_INV_state.col_unpre~q\,
	datae => \ALT_INV_state.uncol_pre_err~q\,
	dataf => \ALT_INV_press~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X10_Y2_N32
\state.uncol_unpre\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \resetN~input_o\,
	ena => \Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.uncol_unpre~q\);

-- Location: LABCELL_X11_Y2_N54
\state.col_unpre~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.col_unpre~0_combout\ = ( \state.col_unpre~q\ & ( \state.uncol_pre_err~q\ & ( (!\collision~input_o\ & (\break~input_o\)) # (\collision~input_o\ & ((\make~input_o\))) ) ) ) # ( \state.col_unpre~q\ & ( !\state.uncol_pre_err~q\ & ( (!\make~input_o\ & 
-- \collision~input_o\) ) ) ) # ( !\state.col_unpre~q\ & ( !\state.uncol_pre_err~q\ & ( (!\state.uncol_unpre~q\ & ((\collision~input_o\))) # (\state.uncol_unpre~q\ & (\break~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011000000110000000000000000000101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_break~input_o\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_collision~input_o\,
	datad => \ALT_INV_state.uncol_unpre~q\,
	datae => \ALT_INV_state.col_unpre~q\,
	dataf => \ALT_INV_state.uncol_pre_err~q\,
	combout => \state.col_unpre~0_combout\);

-- Location: FF_X11_Y2_N56
\state.col_unpre\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.col_unpre~0_combout\,
	clrn => \resetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.col_unpre~q\);

-- Location: LABCELL_X10_Y2_N0
\Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = ( \state.col_pre_play~q\ & ( !\break~input_o\ ) ) # ( !\state.col_pre_play~q\ & ( (\collision~input_o\ & (\state.uncol_pre_err~q\ & !\break~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_collision~input_o\,
	datab => \ALT_INV_state.uncol_pre_err~q\,
	datac => \ALT_INV_break~input_o\,
	dataf => \ALT_INV_state.col_pre_play~q\,
	combout => \Selector39~0_combout\);

-- Location: LABCELL_X9_Y2_N36
\Selector39~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector39~1_combout\ = ( \Selector39~0_combout\ & ( \press~q\ ) ) # ( \Selector39~0_combout\ & ( !\press~q\ ) ) # ( !\Selector39~0_combout\ & ( !\press~q\ & ( (\make~input_o\ & \state.col_unpre~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.col_unpre~q\,
	datae => \ALT_INV_Selector39~0_combout\,
	dataf => \ALT_INV_press~q\,
	combout => \Selector39~1_combout\);

-- Location: FF_X9_Y2_N37
\sound~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector39~1_combout\,
	clrn => \resetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sound~reg0_q\);

-- Location: LABCELL_X10_Y2_N36
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \state.col_pre_play~q\ & ( (!\break~input_o\ & (((!\collision~input_o\) # (\state.uncol_pre_err~q\)) # (\state.second_pre_err~q\))) ) ) # ( !\state.col_pre_play~q\ & ( (!\break~input_o\ & ((\state.uncol_pre_err~q\) # 
-- (\state.second_pre_err~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100000000011101110000000011110111000000001111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.second_pre_err~q\,
	datab => \ALT_INV_state.uncol_pre_err~q\,
	datac => \ALT_INV_collision~input_o\,
	datad => \ALT_INV_break~input_o\,
	dataf => \ALT_INV_state.col_pre_play~q\,
	combout => \Selector6~0_combout\);

-- Location: LABCELL_X10_Y2_N18
\Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ( \state.col_unpre~q\ & ( \collision~input_o\ & ( ((\make~input_o\ & \press~q\)) # (\Selector6~0_combout\) ) ) ) # ( !\state.col_unpre~q\ & ( \collision~input_o\ & ( \Selector6~0_combout\ ) ) ) # ( \state.col_unpre~q\ & ( 
-- !\collision~input_o\ & ( ((!\make~input_o\ & ((!\press~q\))) # (\make~input_o\ & (!\state.uncol_unpre~q\))) # (\Selector6~0_combout\) ) ) ) # ( !\state.col_unpre~q\ & ( !\collision~input_o\ & ( ((\make~input_o\ & !\state.uncol_unpre~q\)) # 
-- (\Selector6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101111111010111010101010101010101010101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector6~0_combout\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.uncol_unpre~q\,
	datad => \ALT_INV_press~q\,
	datae => \ALT_INV_state.col_unpre~q\,
	dataf => \ALT_INV_collision~input_o\,
	combout => \Selector6~1_combout\);

-- Location: FF_X10_Y2_N19
\error~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector6~1_combout\,
	clrn => \resetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error~reg0_q\);

-- Location: LABCELL_X11_Y2_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( scors_num(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( scors_num(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_scors_num(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X10_Y2_N24
\scors_num[12]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \scors_num[12]~0_combout\ = ( \state.uncol_pre_err~q\ & ( \press~q\ & ( (!\collision~input_o\) # (\break~input_o\) ) ) ) # ( !\state.uncol_pre_err~q\ & ( \press~q\ & ( (\state.col_unpre~q\ & ((!\collision~input_o\) # (!\make~input_o\))) ) ) ) # ( 
-- \state.uncol_pre_err~q\ & ( !\press~q\ & ( (!\collision~input_o\) # (\break~input_o\) ) ) ) # ( !\state.uncol_pre_err~q\ & ( !\press~q\ & ( (\collision~input_o\ & (!\make~input_o\ & \state.col_unpre~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100101011111010111100000000111011101010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_collision~input_o\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_break~input_o\,
	datad => \ALT_INV_state.col_unpre~q\,
	datae => \ALT_INV_state.uncol_pre_err~q\,
	dataf => \ALT_INV_press~q\,
	combout => \scors_num[12]~0_combout\);

-- Location: LABCELL_X10_Y2_N54
\scors_num[12]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \scors_num[12]~1_combout\ = ( !\state.uncol_unpre~q\ & ( (!\make~input_o\) # (((\break~input_o\ & ((\state.col_pre_play~q\) # (\state.second_pre_err~q\)))) # (\collision~input_o\)) ) ) # ( \state.uncol_unpre~q\ & ( ((!\state.second_pre_err~q\ & 
-- (\state.col_pre_play~q\ & ((\collision~input_o\) # (\break~input_o\)))) # (\state.second_pre_err~q\ & (((\collision~input_o\)) # (\break~input_o\)))) # (\scors_num[12]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111000111111111000111110101111111110011111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.second_pre_err~q\,
	datab => \ALT_INV_break~input_o\,
	datac => \ALT_INV_scors_num[12]~0_combout\,
	datad => \ALT_INV_collision~input_o\,
	datae => \ALT_INV_state.uncol_unpre~q\,
	dataf => \ALT_INV_state.col_pre_play~q\,
	datag => \ALT_INV_make~input_o\,
	combout => \scors_num[12]~1_combout\);

-- Location: FF_X11_Y2_N2
\scors_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(0));

-- Location: LABCELL_X11_Y2_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( scors_num(1) ) + ( (!\state.uncol_pre_err~q\ & ((!\state.col_unpre~q\) # ((!\make~input_o\) # (\press~q\)))) ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( scors_num(1) ) + ( (!\state.uncol_pre_err~q\ & ((!\state.col_unpre~q\) # ((!\make~input_o\) # (\press~q\)))) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.col_unpre~q\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.uncol_pre_err~q\,
	datad => ALT_INV_scors_num(1),
	dataf => \ALT_INV_press~q\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X11_Y2_N5
\scors_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(1));

-- Location: LABCELL_X11_Y2_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( scors_num(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( scors_num(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_scors_num(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X11_Y2_N8
\scors_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(2));

-- Location: LABCELL_X11_Y2_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( scors_num(3) ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( scors_num(3) ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.uncol_pre_err~q\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.col_unpre~q\,
	datad => \ALT_INV_press~q\,
	dataf => ALT_INV_scors_num(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X11_Y2_N11
\scors_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(3));

-- Location: LABCELL_X11_Y2_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( (!\state.uncol_pre_err~q\ & ((!\state.col_unpre~q\) # ((!\make~input_o\) # (\press~q\)))) ) + ( scors_num(4) ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( (!\state.uncol_pre_err~q\ & ((!\state.col_unpre~q\) # ((!\make~input_o\) # (\press~q\)))) ) + ( scors_num(4) ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.col_unpre~q\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.uncol_pre_err~q\,
	datad => \ALT_INV_press~q\,
	dataf => ALT_INV_scors_num(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X11_Y2_N14
\scors_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(4));

-- Location: LABCELL_X11_Y2_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( (!\state.uncol_pre_err~q\ & ((!\state.col_unpre~q\) # ((!\make~input_o\) # (\press~q\)))) ) + ( scors_num(5) ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( (!\state.uncol_pre_err~q\ & ((!\state.col_unpre~q\) # ((!\make~input_o\) # (\press~q\)))) ) + ( scors_num(5) ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.col_unpre~q\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.uncol_pre_err~q\,
	datad => \ALT_INV_press~q\,
	dataf => ALT_INV_scors_num(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X11_Y2_N17
\scors_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(5));

-- Location: LABCELL_X11_Y2_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( scors_num(6) ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( scors_num(6) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.uncol_pre_err~q\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.col_unpre~q\,
	datad => \ALT_INV_press~q\,
	dataf => ALT_INV_scors_num(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X11_Y2_N20
\scors_num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(6));

-- Location: LABCELL_X11_Y2_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( scors_num(7) ) + ( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( scors_num(7) ) + ( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101110101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.uncol_pre_err~q\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.col_unpre~q\,
	datad => ALT_INV_scors_num(7),
	dataf => \ALT_INV_press~q\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X11_Y2_N23
\scors_num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(7));

-- Location: LABCELL_X11_Y2_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( scors_num(8) ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( scors_num(8) ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.uncol_pre_err~q\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.col_unpre~q\,
	datad => \ALT_INV_press~q\,
	dataf => ALT_INV_scors_num(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X11_Y2_N26
\scors_num[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(8));

-- Location: LABCELL_X11_Y2_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( scors_num(9) ) + ( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( scors_num(9) ) + ( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101110101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.uncol_pre_err~q\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.col_unpre~q\,
	datad => ALT_INV_scors_num(9),
	dataf => \ALT_INV_press~q\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X11_Y2_N29
\scors_num[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(9));

-- Location: LABCELL_X11_Y2_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( scors_num(10) ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( scors_num(10) ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.uncol_pre_err~q\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.col_unpre~q\,
	datad => \ALT_INV_press~q\,
	dataf => ALT_INV_scors_num(10),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X11_Y2_N32
\scors_num[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(10));

-- Location: LABCELL_X11_Y2_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( scors_num(11) ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( scors_num(11) ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.uncol_pre_err~q\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.col_unpre~q\,
	datad => \ALT_INV_press~q\,
	dataf => ALT_INV_scors_num(11),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X11_Y2_N35
\scors_num[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(11));

-- Location: LABCELL_X11_Y2_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( scors_num(12) ) + ( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( scors_num(12) ) + ( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101110101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.uncol_pre_err~q\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.col_unpre~q\,
	datad => ALT_INV_scors_num(12),
	dataf => \ALT_INV_press~q\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X11_Y2_N38
\scors_num[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(12));

-- Location: LABCELL_X11_Y2_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( scors_num(13) ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( scors_num(13) ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.uncol_pre_err~q\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.col_unpre~q\,
	datad => \ALT_INV_press~q\,
	dataf => ALT_INV_scors_num(13),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X11_Y2_N41
\scors_num[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(13));

-- Location: LABCELL_X11_Y2_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( scors_num(14) ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( scors_num(14) ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.uncol_pre_err~q\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.col_unpre~q\,
	datad => \ALT_INV_press~q\,
	dataf => ALT_INV_scors_num(14),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X11_Y2_N44
\scors_num[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(14));

-- Location: LABCELL_X11_Y2_N45
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( (!\state.uncol_pre_err~q\ & ((!\make~input_o\) # ((!\state.col_unpre~q\) # (\press~q\)))) ) + ( scors_num(15) ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.uncol_pre_err~q\,
	datab => \ALT_INV_make~input_o\,
	datac => \ALT_INV_state.col_unpre~q\,
	datad => \ALT_INV_press~q\,
	dataf => ALT_INV_scors_num(15),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\);

-- Location: FF_X11_Y2_N47
\scors_num[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \resetN~input_o\,
	ena => \ALT_INV_scors_num[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scors_num(15));

-- Location: MLABCELL_X3_Y44_N0
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


