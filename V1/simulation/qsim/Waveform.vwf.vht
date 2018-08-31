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
-- Generated on "08/27/2018 18:41:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          addr_counter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY addr_counter_vhd_vec_tst IS
END addr_counter_vhd_vec_tst;
ARCHITECTURE addr_counter_arch OF addr_counter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLK_IN : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL en1 : STD_LOGIC;
SIGNAL finish : STD_LOGIC;
SIGNAL resetN : STD_LOGIC;
COMPONENT addr_counter
	PORT (
	addr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLK_IN : IN STD_LOGIC;
	en : IN STD_LOGIC;
	en1 : IN STD_LOGIC;
	finish : OUT STD_LOGIC;
	resetN : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : addr_counter
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	CLK_IN => CLK_IN,
	en => en,
	en1 => en1,
	finish => finish,
	resetN => resetN
	);

-- CLK_IN
t_prcs_CLK_IN: PROCESS
BEGIN
LOOP
	CLK_IN <= '0';
	WAIT FOR 1000 ps;
	CLK_IN <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_IN;

-- en
t_prcs_en: PROCESS
BEGIN
LOOP
	en <= '0';
	WAIT FOR 3000 ps;
	en <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en;

-- en1
t_prcs_en1: PROCESS
BEGIN
	en1 <= '0';
	WAIT FOR 40000 ps;
	en1 <= '1';
	WAIT FOR 30000 ps;
	en1 <= '0';
	WAIT FOR 630000 ps;
	en1 <= '1';
	WAIT FOR 220000 ps;
	en1 <= '0';
WAIT;
END PROCESS t_prcs_en1;

-- resetN
t_prcs_resetN: PROCESS
BEGIN
	resetN <= '0';
	WAIT FOR 10000 ps;
	resetN <= '1';
WAIT;
END PROCESS t_prcs_resetN;
END addr_counter_arch;
