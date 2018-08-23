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
-- Generated on "08/21/2018 19:49:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          play_controller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY play_controller_vhd_vec_tst IS
END play_controller_vhd_vec_tst;
ARCHITECTURE play_controller_arch OF play_controller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL break : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL collision : STD_LOGIC;
SIGNAL error : STD_LOGIC;
SIGNAL make : STD_LOGIC;
SIGNAL resetN : STD_LOGIC;
SIGNAL scors : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sound : STD_LOGIC;
COMPONENT play_controller
	PORT (
	break : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	collision : IN STD_LOGIC;
	error : OUT STD_LOGIC;
	make : IN STD_LOGIC;
	resetN : IN STD_LOGIC;
	scors : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sound : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : play_controller
	PORT MAP (
-- list connections between master ports and signals
	break => break,
	clk => clk,
	collision => collision,
	error => error,
	make => make,
	resetN => resetN,
	scors => scors,
	sound => sound
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 2500 ps;
	clk <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- collision
t_prcs_collision: PROCESS
BEGIN
	collision <= '0';
	WAIT FOR 150000 ps;
	collision <= '1';
	WAIT FOR 290000 ps;
	collision <= '0';
	WAIT FOR 130000 ps;
	collision <= '1';
	WAIT FOR 250000 ps;
	collision <= '0';
	WAIT FOR 100000 ps;
	collision <= '1';
	WAIT FOR 50000 ps;
	collision <= '0';
WAIT;
END PROCESS t_prcs_collision;

-- make
t_prcs_make: PROCESS
BEGIN
	make <= '0';
	WAIT FOR 50000 ps;
	make <= '1';
	WAIT FOR 60000 ps;
	make <= '0';
	WAIT FOR 70000 ps;
	make <= '1';
	WAIT FOR 70000 ps;
	make <= '0';
	WAIT FOR 80000 ps;
	make <= '1';
	WAIT FOR 50000 ps;
	make <= '0';
	WAIT FOR 160000 ps;
	make <= '1';
	WAIT FOR 90000 ps;
	make <= '0';
	WAIT FOR 160000 ps;
	make <= '1';
	WAIT FOR 90000 ps;
	make <= '0';
WAIT;
END PROCESS t_prcs_make;

-- break
t_prcs_break: PROCESS
BEGIN
	break <= '0';
	WAIT FOR 110000 ps;
	break <= '1';
	WAIT FOR 10000 ps;
	break <= '0';
	WAIT FOR 130000 ps;
	break <= '1';
	WAIT FOR 10000 ps;
	break <= '0';
	WAIT FOR 120000 ps;
	break <= '1';
	WAIT FOR 10000 ps;
	break <= '0';
	WAIT FOR 240000 ps;
	break <= '1';
	WAIT FOR 10000 ps;
	break <= '0';
	WAIT FOR 240000 ps;
	break <= '1';
	WAIT FOR 10000 ps;
	break <= '0';
WAIT;
END PROCESS t_prcs_break;

-- resetN
t_prcs_resetN: PROCESS
BEGIN
	resetN <= '0';
	WAIT FOR 10000 ps;
	resetN <= '1';
WAIT;
END PROCESS t_prcs_resetN;
END play_controller_arch;
