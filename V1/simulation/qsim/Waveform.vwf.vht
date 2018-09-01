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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/01/2018 14:27:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          createSongs
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

PACKAGE createSongs_data_type IS 
TYPE note_length_7_0_type IS ARRAY (7 DOWNTO 0) OF STD_LOGIC;
TYPE note_length_7_0_0_12_type IS ARRAY (0 TO 12) OF note_length_7_0_type;
SUBTYPE note_length_type IS note_length_7_0_0_12_type;
END createSongs_data_type;

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

library work;
use work.createSongs_data_type.all;

ENTITY createSongs_vhd_vec_tst IS
END createSongs_vhd_vec_tst;
ARCHITECTURE createSongs_arch OF createSongs_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL note_length : note_length_type;
SIGNAL resetN : STD_LOGIC;
SIGNAL screen_end : STD_LOGIC;
SIGNAL song_choose : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT createSongs
	PORT (
	CLK : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	note_length : BUFFER note_length_type;
	resetN : IN STD_LOGIC;
	screen_end : IN STD_LOGIC;
	song_choose : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : createSongs
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	enable => enable,
	note_length => note_length,
	resetN => resetN,
	screen_end => screen_end,
	song_choose => song_choose
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 2500 ps;
	CLK <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- resetN
t_prcs_resetN: PROCESS
BEGIN
	resetN <= '0';
	WAIT FOR 10000 ps;
	resetN <= '1';
WAIT;
END PROCESS t_prcs_resetN;

-- screen_end
t_prcs_screen_end: PROCESS
BEGIN
LOOP
	screen_end <= '0';
	WAIT FOR 7500 ps;
	screen_end <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_screen_end;
-- song_choose[1]
t_prcs_song_choose_1: PROCESS
BEGIN
	song_choose(1) <= '0';
WAIT;
END PROCESS t_prcs_song_choose_1;
-- song_choose[0]
t_prcs_song_choose_0: PROCESS
BEGIN
	song_choose(0) <= '0';
WAIT;
END PROCESS t_prcs_song_choose_0;
END createSongs_arch;
