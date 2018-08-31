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
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Standard Edition"

-- DATE "08/27/2018 18:41:59"

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

ENTITY 	addr_counter IS
    PORT (
	CLK_IN : IN std_logic;
	resetN : IN std_logic;
	en : IN std_logic;
	en1 : IN std_logic;
	addr : OUT std_logic_vector(7 DOWNTO 0);
	finish : OUT std_logic
	);
END addr_counter;

-- Design Ports Information
-- addr[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finish	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_IN	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetN	=>  Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- en1	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF addr_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_IN : std_logic;
SIGNAL ww_resetN : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_en1 : std_logic;
SIGNAL ww_addr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_finish : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK_IN~input_o\ : std_logic;
SIGNAL \CLK_IN~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \resetN~input_o\ : std_logic;
SIGNAL \en1~input_o\ : std_logic;
SIGNAL \temp[4]~feeder_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \temp[3]~feeder_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \temp[6]~feeder_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \temp[0]~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \finish~0_combout\ : std_logic;
SIGNAL \finish~reg0_q\ : std_logic;
SIGNAL temp : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL ALT_INV_temp : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_en~input_o\ : std_logic;
SIGNAL \ALT_INV_en1~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;

BEGIN

ww_CLK_IN <= CLK_IN;
ww_resetN <= resetN;
ww_en <= en;
ww_en1 <= en1;
addr <= ww_addr;
finish <= ww_finish;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
ALT_INV_temp(0) <= NOT temp(0);
ALT_INV_temp(1) <= NOT temp(1);
ALT_INV_temp(2) <= NOT temp(2);
ALT_INV_temp(3) <= NOT temp(3);
ALT_INV_temp(4) <= NOT temp(4);
ALT_INV_temp(5) <= NOT temp(5);
ALT_INV_temp(6) <= NOT temp(6);
ALT_INV_temp(7) <= NOT temp(7);
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_en~input_o\ <= NOT \en~input_o\;
\ALT_INV_en1~input_o\ <= NOT \en1~input_o\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;

-- Location: IOOBUF_X20_Y0_N2
\addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(0),
	devoe => ww_devoe,
	o => ww_addr(0));

-- Location: IOOBUF_X24_Y0_N19
\addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(1),
	devoe => ww_devoe,
	o => ww_addr(1));

-- Location: IOOBUF_X20_Y0_N53
\addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(2),
	devoe => ww_devoe,
	o => ww_addr(2));

-- Location: IOOBUF_X24_Y0_N36
\addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(3),
	devoe => ww_devoe,
	o => ww_addr(3));

-- Location: IOOBUF_X22_Y0_N2
\addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(4),
	devoe => ww_devoe,
	o => ww_addr(4));

-- Location: IOOBUF_X20_Y0_N19
\addr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(5),
	devoe => ww_devoe,
	o => ww_addr(5));

-- Location: IOOBUF_X22_Y0_N53
\addr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(6),
	devoe => ww_devoe,
	o => ww_addr(6));

-- Location: IOOBUF_X20_Y0_N36
\addr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(7),
	devoe => ww_devoe,
	o => ww_addr(7));

-- Location: IOOBUF_X22_Y0_N19
\finish~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \finish~reg0_q\,
	devoe => ww_devoe,
	o => ww_finish);

-- Location: IOIBUF_X89_Y25_N21
\CLK_IN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_IN,
	o => \CLK_IN~input_o\);

-- Location: CLKCTRL_G10
\CLK_IN~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_IN~input_o\,
	outclk => \CLK_IN~inputCLKENA0_outclk\);

-- Location: LABCELL_X22_Y1_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( temp(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( temp(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_temp(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: IOIBUF_X22_Y0_N35
\resetN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetN,
	o => \resetN~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\en1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en1,
	o => \en1~input_o\);

-- Location: LABCELL_X22_Y1_N33
\temp[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp[4]~feeder_combout\ = ( \Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \temp[4]~feeder_combout\);

-- Location: IOIBUF_X24_Y0_N52
\en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: FF_X22_Y1_N35
\temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputCLKENA0_outclk\,
	d => \temp[4]~feeder_combout\,
	clrn => \resetN~input_o\,
	sclr => \temp[0]~0_combout\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(4));

-- Location: LABCELL_X22_Y1_N3
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( temp(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~22\ = CARRY(( temp(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_temp(1),
	cin => \Add0~2\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X22_Y1_N38
\temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputCLKENA0_outclk\,
	asdata => \Add0~21_sumout\,
	clrn => \resetN~input_o\,
	sclr => \temp[0]~0_combout\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(1));

-- Location: LABCELL_X22_Y1_N6
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( temp(2) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( temp(2) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(2),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X22_Y1_N26
\temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputCLKENA0_outclk\,
	asdata => \Add0~25_sumout\,
	clrn => \resetN~input_o\,
	sclr => \temp[0]~0_combout\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(2));

-- Location: LABCELL_X22_Y1_N9
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( temp(3) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( temp(3) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(3),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X22_Y1_N30
\temp[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp[3]~feeder_combout\ = ( \Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \temp[3]~feeder_combout\);

-- Location: FF_X22_Y1_N32
\temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputCLKENA0_outclk\,
	d => \temp[3]~feeder_combout\,
	clrn => \resetN~input_o\,
	sclr => \temp[0]~0_combout\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(3));

-- Location: LABCELL_X22_Y1_N12
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( temp(4) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~6\ = CARRY(( temp(4) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(4),
	cin => \Add0~30\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X22_Y1_N50
\temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputCLKENA0_outclk\,
	asdata => \Add0~9_sumout\,
	clrn => \resetN~input_o\,
	sclr => \temp[0]~0_combout\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(5));

-- Location: LABCELL_X22_Y1_N15
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( temp(5) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( temp(5) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(5),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X22_Y1_N27
\temp[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp[6]~feeder_combout\ = ( \Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \temp[6]~feeder_combout\);

-- Location: FF_X22_Y1_N29
\temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputCLKENA0_outclk\,
	d => \temp[6]~feeder_combout\,
	clrn => \resetN~input_o\,
	sclr => \temp[0]~0_combout\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(6));

-- Location: LABCELL_X22_Y1_N18
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( temp(6) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( temp(6) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_temp(6),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X22_Y1_N53
\temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputCLKENA0_outclk\,
	asdata => \Add0~17_sumout\,
	clrn => \resetN~input_o\,
	sclr => \temp[0]~0_combout\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(7));

-- Location: LABCELL_X22_Y1_N21
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( temp(7) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_temp(7),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\);

-- Location: LABCELL_X22_Y1_N51
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \Add0~21_sumout\ & ( \Add0~29_sumout\ & ( (\Add0~25_sumout\ & \Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_Add0~1_sumout\,
	datae => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X22_Y1_N57
\temp[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp[0]~0_combout\ = ( \Add0~17_sumout\ & ( \Equal0~0_combout\ & ( (!\en1~input_o\) # ((\Add0~5_sumout\ & (\Add0~9_sumout\ & \Add0~13_sumout\))) ) ) ) # ( !\Add0~17_sumout\ & ( \Equal0~0_combout\ & ( !\en1~input_o\ ) ) ) # ( \Add0~17_sumout\ & ( 
-- !\Equal0~0_combout\ & ( !\en1~input_o\ ) ) ) # ( !\Add0~17_sumout\ & ( !\Equal0~0_combout\ & ( !\en1~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en1~input_o\,
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_Add0~17_sumout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \temp[0]~0_combout\);

-- Location: FF_X22_Y1_N56
\temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputCLKENA0_outclk\,
	asdata => \Add0~1_sumout\,
	clrn => \resetN~input_o\,
	sclr => \temp[0]~0_combout\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(0));

-- Location: LABCELL_X22_Y1_N39
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \Add0~25_sumout\ & ( \Add0~21_sumout\ & ( (\Add0~1_sumout\ & (\Add0~29_sumout\ & \Add0~5_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_Add0~29_sumout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datae => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X22_Y1_N42
\finish~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \finish~0_combout\ = ( \Add0~9_sumout\ & ( \Add0~17_sumout\ & ( (\en1~input_o\ & (\Equal0~1_combout\ & (\Add0~13_sumout\ & \en~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en1~input_o\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_en~input_o\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \finish~0_combout\);

-- Location: FF_X22_Y1_N43
\finish~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN~inputCLKENA0_outclk\,
	d => \finish~0_combout\,
	clrn => \resetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \finish~reg0_q\);

-- Location: LABCELL_X46_Y10_N3
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


