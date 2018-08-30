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

-- DATE "08/30/2018 11:24:10"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	noteGraph IS
    PORT (
	clk : IN std_logic;
	resetN : IN std_logic;
	timer_done : IN std_logic;
	note_length : IN std_logic_vector(31 DOWNTO 0);
	droawing_request : BUFFER std_logic
	);
END noteGraph;

-- Design Ports Information
-- clk	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetN	=>  Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- timer_done	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[0]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[2]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[3]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[5]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[6]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[7]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[9]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[10]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[11]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[12]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[13]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[14]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[15]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[16]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[17]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[18]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[19]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[20]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[21]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[22]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[23]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[24]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[25]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[26]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[27]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[28]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[29]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[30]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[31]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- droawing_request	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF noteGraph IS
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
SIGNAL ww_timer_done : std_logic;
SIGNAL ww_note_length : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_droawing_request : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \resetN~input_o\ : std_logic;
SIGNAL \timer_done~input_o\ : std_logic;
SIGNAL \note_length[0]~input_o\ : std_logic;
SIGNAL \note_length[1]~input_o\ : std_logic;
SIGNAL \note_length[2]~input_o\ : std_logic;
SIGNAL \note_length[3]~input_o\ : std_logic;
SIGNAL \note_length[4]~input_o\ : std_logic;
SIGNAL \note_length[5]~input_o\ : std_logic;
SIGNAL \note_length[6]~input_o\ : std_logic;
SIGNAL \note_length[7]~input_o\ : std_logic;
SIGNAL \note_length[8]~input_o\ : std_logic;
SIGNAL \note_length[9]~input_o\ : std_logic;
SIGNAL \note_length[10]~input_o\ : std_logic;
SIGNAL \note_length[11]~input_o\ : std_logic;
SIGNAL \note_length[12]~input_o\ : std_logic;
SIGNAL \note_length[13]~input_o\ : std_logic;
SIGNAL \note_length[14]~input_o\ : std_logic;
SIGNAL \note_length[15]~input_o\ : std_logic;
SIGNAL \note_length[16]~input_o\ : std_logic;
SIGNAL \note_length[17]~input_o\ : std_logic;
SIGNAL \note_length[18]~input_o\ : std_logic;
SIGNAL \note_length[19]~input_o\ : std_logic;
SIGNAL \note_length[20]~input_o\ : std_logic;
SIGNAL \note_length[21]~input_o\ : std_logic;
SIGNAL \note_length[22]~input_o\ : std_logic;
SIGNAL \note_length[23]~input_o\ : std_logic;
SIGNAL \note_length[24]~input_o\ : std_logic;
SIGNAL \note_length[25]~input_o\ : std_logic;
SIGNAL \note_length[26]~input_o\ : std_logic;
SIGNAL \note_length[27]~input_o\ : std_logic;
SIGNAL \note_length[28]~input_o\ : std_logic;
SIGNAL \note_length[29]~input_o\ : std_logic;
SIGNAL \note_length[30]~input_o\ : std_logic;
SIGNAL \note_length[31]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_resetN <= resetN;
ww_timer_done <= timer_done;
ww_note_length <= note_length;
droawing_request <= ww_droawing_request;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X89_Y23_N22
\droawing_request~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_droawing_request);

-- Location: IOIBUF_X6_Y81_N52
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

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

-- Location: IOIBUF_X26_Y81_N58
\timer_done~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_done,
	o => \timer_done~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\note_length[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(0),
	o => \note_length[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\note_length[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(1),
	o => \note_length[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\note_length[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(2),
	o => \note_length[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\note_length[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(3),
	o => \note_length[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\note_length[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(4),
	o => \note_length[4]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\note_length[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(5),
	o => \note_length[5]~input_o\);

-- Location: IOIBUF_X74_Y0_N58
\note_length[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(6),
	o => \note_length[6]~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\note_length[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(7),
	o => \note_length[7]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\note_length[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(8),
	o => \note_length[8]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\note_length[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(9),
	o => \note_length[9]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\note_length[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(10),
	o => \note_length[10]~input_o\);

-- Location: IOIBUF_X14_Y81_N35
\note_length[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(11),
	o => \note_length[11]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\note_length[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(12),
	o => \note_length[12]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\note_length[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(13),
	o => \note_length[13]~input_o\);

-- Location: IOIBUF_X89_Y11_N44
\note_length[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(14),
	o => \note_length[14]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\note_length[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(15),
	o => \note_length[15]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\note_length[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(16),
	o => \note_length[16]~input_o\);

-- Location: IOIBUF_X74_Y0_N75
\note_length[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(17),
	o => \note_length[17]~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\note_length[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(18),
	o => \note_length[18]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\note_length[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(19),
	o => \note_length[19]~input_o\);

-- Location: IOIBUF_X40_Y81_N35
\note_length[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(20),
	o => \note_length[20]~input_o\);

-- Location: IOIBUF_X26_Y81_N92
\note_length[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(21),
	o => \note_length[21]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\note_length[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(22),
	o => \note_length[22]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\note_length[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(23),
	o => \note_length[23]~input_o\);

-- Location: IOIBUF_X78_Y0_N52
\note_length[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(24),
	o => \note_length[24]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\note_length[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(25),
	o => \note_length[25]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\note_length[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(26),
	o => \note_length[26]~input_o\);

-- Location: IOIBUF_X38_Y81_N18
\note_length[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(27),
	o => \note_length[27]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\note_length[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(28),
	o => \note_length[28]~input_o\);

-- Location: IOIBUF_X32_Y81_N35
\note_length[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(29),
	o => \note_length[29]~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\note_length[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(30),
	o => \note_length[30]~input_o\);

-- Location: IOIBUF_X12_Y81_N18
\note_length[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_note_length(31),
	o => \note_length[31]~input_o\);

-- Location: LABCELL_X35_Y11_N3
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


