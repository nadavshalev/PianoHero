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
-- Generated on "08/27/2018 10:17:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          score
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY score_vhd_vec_tst IS
END score_vhd_vec_tst;
ARCHITECTURE score_arch OF score_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL resetN : STD_LOGIC;
SIGNAL score_note0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL tens : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL unit : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT score
	PORT (
	clk : IN STD_LOGIC;
	resetN : IN STD_LOGIC;
	score_note0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	tens : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	unit : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : score
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	resetN => resetN,
	score_note0 => score_note0,
	tens => tens,
	unit => unit
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- resetN
t_prcs_resetN: PROCESS
BEGIN
	resetN <= '0';
	WAIT FOR 20000 ps;
	resetN <= '1';
WAIT;
END PROCESS t_prcs_resetN;
-- score_note0[31]
t_prcs_score_note0_31: PROCESS
BEGIN
	score_note0(31) <= '0';
	WAIT FOR 230000 ps;
	score_note0(31) <= '1';
	WAIT FOR 10000 ps;
	score_note0(31) <= '0';
	WAIT FOR 280000 ps;
	score_note0(31) <= '1';
	WAIT FOR 10000 ps;
	score_note0(31) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_31;
-- score_note0[30]
t_prcs_score_note0_30: PROCESS
BEGIN
	score_note0(30) <= '0';
	WAIT FOR 230000 ps;
	score_note0(30) <= '1';
	WAIT FOR 10000 ps;
	score_note0(30) <= '0';
	WAIT FOR 280000 ps;
	score_note0(30) <= '1';
	WAIT FOR 10000 ps;
	score_note0(30) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_30;
-- score_note0[29]
t_prcs_score_note0_29: PROCESS
BEGIN
	score_note0(29) <= '0';
	WAIT FOR 230000 ps;
	score_note0(29) <= '1';
	WAIT FOR 10000 ps;
	score_note0(29) <= '0';
	WAIT FOR 280000 ps;
	score_note0(29) <= '1';
	WAIT FOR 10000 ps;
	score_note0(29) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_29;
-- score_note0[28]
t_prcs_score_note0_28: PROCESS
BEGIN
	score_note0(28) <= '0';
	WAIT FOR 230000 ps;
	score_note0(28) <= '1';
	WAIT FOR 10000 ps;
	score_note0(28) <= '0';
	WAIT FOR 280000 ps;
	score_note0(28) <= '1';
	WAIT FOR 10000 ps;
	score_note0(28) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_28;
-- score_note0[27]
t_prcs_score_note0_27: PROCESS
BEGIN
	score_note0(27) <= '0';
	WAIT FOR 230000 ps;
	score_note0(27) <= '1';
	WAIT FOR 10000 ps;
	score_note0(27) <= '0';
	WAIT FOR 280000 ps;
	score_note0(27) <= '1';
	WAIT FOR 10000 ps;
	score_note0(27) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_27;
-- score_note0[26]
t_prcs_score_note0_26: PROCESS
BEGIN
	score_note0(26) <= '0';
	WAIT FOR 230000 ps;
	score_note0(26) <= '1';
	WAIT FOR 10000 ps;
	score_note0(26) <= '0';
	WAIT FOR 280000 ps;
	score_note0(26) <= '1';
	WAIT FOR 10000 ps;
	score_note0(26) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_26;
-- score_note0[25]
t_prcs_score_note0_25: PROCESS
BEGIN
	score_note0(25) <= '0';
	WAIT FOR 230000 ps;
	score_note0(25) <= '1';
	WAIT FOR 10000 ps;
	score_note0(25) <= '0';
	WAIT FOR 280000 ps;
	score_note0(25) <= '1';
	WAIT FOR 10000 ps;
	score_note0(25) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_25;
-- score_note0[24]
t_prcs_score_note0_24: PROCESS
BEGIN
	score_note0(24) <= '0';
	WAIT FOR 230000 ps;
	score_note0(24) <= '1';
	WAIT FOR 10000 ps;
	score_note0(24) <= '0';
	WAIT FOR 280000 ps;
	score_note0(24) <= '1';
	WAIT FOR 10000 ps;
	score_note0(24) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_24;
-- score_note0[23]
t_prcs_score_note0_23: PROCESS
BEGIN
	score_note0(23) <= '0';
	WAIT FOR 230000 ps;
	score_note0(23) <= '1';
	WAIT FOR 10000 ps;
	score_note0(23) <= '0';
	WAIT FOR 280000 ps;
	score_note0(23) <= '1';
	WAIT FOR 10000 ps;
	score_note0(23) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_23;
-- score_note0[22]
t_prcs_score_note0_22: PROCESS
BEGIN
	score_note0(22) <= '0';
	WAIT FOR 230000 ps;
	score_note0(22) <= '1';
	WAIT FOR 10000 ps;
	score_note0(22) <= '0';
	WAIT FOR 280000 ps;
	score_note0(22) <= '1';
	WAIT FOR 10000 ps;
	score_note0(22) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_22;
-- score_note0[21]
t_prcs_score_note0_21: PROCESS
BEGIN
	score_note0(21) <= '0';
	WAIT FOR 230000 ps;
	score_note0(21) <= '1';
	WAIT FOR 10000 ps;
	score_note0(21) <= '0';
	WAIT FOR 280000 ps;
	score_note0(21) <= '1';
	WAIT FOR 10000 ps;
	score_note0(21) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_21;
-- score_note0[20]
t_prcs_score_note0_20: PROCESS
BEGIN
	score_note0(20) <= '0';
	WAIT FOR 230000 ps;
	score_note0(20) <= '1';
	WAIT FOR 10000 ps;
	score_note0(20) <= '0';
	WAIT FOR 280000 ps;
	score_note0(20) <= '1';
	WAIT FOR 10000 ps;
	score_note0(20) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_20;
-- score_note0[19]
t_prcs_score_note0_19: PROCESS
BEGIN
	score_note0(19) <= '0';
	WAIT FOR 230000 ps;
	score_note0(19) <= '1';
	WAIT FOR 10000 ps;
	score_note0(19) <= '0';
	WAIT FOR 280000 ps;
	score_note0(19) <= '1';
	WAIT FOR 10000 ps;
	score_note0(19) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_19;
-- score_note0[18]
t_prcs_score_note0_18: PROCESS
BEGIN
	score_note0(18) <= '0';
	WAIT FOR 230000 ps;
	score_note0(18) <= '1';
	WAIT FOR 10000 ps;
	score_note0(18) <= '0';
	WAIT FOR 280000 ps;
	score_note0(18) <= '1';
	WAIT FOR 10000 ps;
	score_note0(18) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_18;
-- score_note0[17]
t_prcs_score_note0_17: PROCESS
BEGIN
	score_note0(17) <= '0';
	WAIT FOR 230000 ps;
	score_note0(17) <= '1';
	WAIT FOR 10000 ps;
	score_note0(17) <= '0';
	WAIT FOR 280000 ps;
	score_note0(17) <= '1';
	WAIT FOR 10000 ps;
	score_note0(17) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_17;
-- score_note0[16]
t_prcs_score_note0_16: PROCESS
BEGIN
	score_note0(16) <= '0';
	WAIT FOR 230000 ps;
	score_note0(16) <= '1';
	WAIT FOR 10000 ps;
	score_note0(16) <= '0';
	WAIT FOR 280000 ps;
	score_note0(16) <= '1';
	WAIT FOR 10000 ps;
	score_note0(16) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_16;
-- score_note0[15]
t_prcs_score_note0_15: PROCESS
BEGIN
	score_note0(15) <= '0';
	WAIT FOR 230000 ps;
	score_note0(15) <= '1';
	WAIT FOR 10000 ps;
	score_note0(15) <= '0';
	WAIT FOR 280000 ps;
	score_note0(15) <= '1';
	WAIT FOR 10000 ps;
	score_note0(15) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_15;
-- score_note0[14]
t_prcs_score_note0_14: PROCESS
BEGIN
	score_note0(14) <= '0';
	WAIT FOR 230000 ps;
	score_note0(14) <= '1';
	WAIT FOR 10000 ps;
	score_note0(14) <= '0';
	WAIT FOR 280000 ps;
	score_note0(14) <= '1';
	WAIT FOR 10000 ps;
	score_note0(14) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_14;
-- score_note0[13]
t_prcs_score_note0_13: PROCESS
BEGIN
	score_note0(13) <= '0';
	WAIT FOR 230000 ps;
	score_note0(13) <= '1';
	WAIT FOR 10000 ps;
	score_note0(13) <= '0';
	WAIT FOR 280000 ps;
	score_note0(13) <= '1';
	WAIT FOR 10000 ps;
	score_note0(13) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_13;
-- score_note0[12]
t_prcs_score_note0_12: PROCESS
BEGIN
	score_note0(12) <= '0';
	WAIT FOR 230000 ps;
	score_note0(12) <= '1';
	WAIT FOR 10000 ps;
	score_note0(12) <= '0';
	WAIT FOR 280000 ps;
	score_note0(12) <= '1';
	WAIT FOR 10000 ps;
	score_note0(12) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_12;
-- score_note0[11]
t_prcs_score_note0_11: PROCESS
BEGIN
	score_note0(11) <= '0';
	WAIT FOR 230000 ps;
	score_note0(11) <= '1';
	WAIT FOR 10000 ps;
	score_note0(11) <= '0';
	WAIT FOR 280000 ps;
	score_note0(11) <= '1';
	WAIT FOR 10000 ps;
	score_note0(11) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_11;
-- score_note0[10]
t_prcs_score_note0_10: PROCESS
BEGIN
	score_note0(10) <= '0';
	WAIT FOR 230000 ps;
	score_note0(10) <= '1';
	WAIT FOR 10000 ps;
	score_note0(10) <= '0';
	WAIT FOR 280000 ps;
	score_note0(10) <= '1';
	WAIT FOR 10000 ps;
	score_note0(10) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_10;
-- score_note0[9]
t_prcs_score_note0_9: PROCESS
BEGIN
	score_note0(9) <= '0';
	WAIT FOR 230000 ps;
	score_note0(9) <= '1';
	WAIT FOR 10000 ps;
	score_note0(9) <= '0';
	WAIT FOR 280000 ps;
	score_note0(9) <= '1';
	WAIT FOR 10000 ps;
	score_note0(9) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_9;
-- score_note0[8]
t_prcs_score_note0_8: PROCESS
BEGIN
	score_note0(8) <= '0';
	WAIT FOR 230000 ps;
	score_note0(8) <= '1';
	WAIT FOR 10000 ps;
	score_note0(8) <= '0';
	WAIT FOR 280000 ps;
	score_note0(8) <= '1';
	WAIT FOR 10000 ps;
	score_note0(8) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_8;
-- score_note0[7]
t_prcs_score_note0_7: PROCESS
BEGIN
	score_note0(7) <= '0';
	WAIT FOR 230000 ps;
	score_note0(7) <= '1';
	WAIT FOR 10000 ps;
	score_note0(7) <= '0';
	WAIT FOR 280000 ps;
	score_note0(7) <= '1';
	WAIT FOR 10000 ps;
	score_note0(7) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_7;
-- score_note0[6]
t_prcs_score_note0_6: PROCESS
BEGIN
	score_note0(6) <= '0';
	WAIT FOR 230000 ps;
	score_note0(6) <= '1';
	WAIT FOR 10000 ps;
	score_note0(6) <= '0';
	WAIT FOR 280000 ps;
	score_note0(6) <= '1';
	WAIT FOR 10000 ps;
	score_note0(6) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_6;
-- score_note0[5]
t_prcs_score_note0_5: PROCESS
BEGIN
	score_note0(5) <= '0';
	WAIT FOR 230000 ps;
	score_note0(5) <= '1';
	WAIT FOR 10000 ps;
	score_note0(5) <= '0';
	WAIT FOR 280000 ps;
	score_note0(5) <= '1';
	WAIT FOR 10000 ps;
	score_note0(5) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_5;
-- score_note0[4]
t_prcs_score_note0_4: PROCESS
BEGIN
	score_note0(4) <= '0';
	WAIT FOR 230000 ps;
	score_note0(4) <= '1';
	WAIT FOR 10000 ps;
	score_note0(4) <= '0';
	WAIT FOR 280000 ps;
	score_note0(4) <= '1';
	WAIT FOR 10000 ps;
	score_note0(4) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_4;
-- score_note0[3]
t_prcs_score_note0_3: PROCESS
BEGIN
	score_note0(3) <= '0';
	WAIT FOR 230000 ps;
	score_note0(3) <= '1';
	WAIT FOR 10000 ps;
	score_note0(3) <= '0';
	WAIT FOR 280000 ps;
	score_note0(3) <= '1';
	WAIT FOR 10000 ps;
	score_note0(3) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_3;
-- score_note0[2]
t_prcs_score_note0_2: PROCESS
BEGIN
	score_note0(2) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_2;
-- score_note0[1]
t_prcs_score_note0_1: PROCESS
BEGIN
	score_note0(1) <= '0';
	WAIT FOR 230000 ps;
	score_note0(1) <= '1';
	WAIT FOR 10000 ps;
	score_note0(1) <= '0';
	WAIT FOR 280000 ps;
	score_note0(1) <= '1';
	WAIT FOR 10000 ps;
	score_note0(1) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_1;
-- score_note0[0]
t_prcs_score_note0_0: PROCESS
BEGIN
	score_note0(0) <= '0';
	WAIT FOR 70000 ps;
	score_note0(0) <= '1';
	WAIT FOR 10000 ps;
	score_note0(0) <= '0';
	WAIT FOR 50000 ps;
	score_note0(0) <= '1';
	WAIT FOR 10000 ps;
	score_note0(0) <= '0';
	WAIT FOR 20000 ps;
	score_note0(0) <= '1';
	WAIT FOR 10000 ps;
	score_note0(0) <= '0';
	WAIT FOR 60000 ps;
	score_note0(0) <= '1';
	WAIT FOR 10000 ps;
	score_note0(0) <= '0';
	WAIT FOR 50000 ps;
	score_note0(0) <= '1';
	WAIT FOR 30000 ps;
	score_note0(0) <= '0';
	WAIT FOR 120000 ps;
	score_note0(0) <= '1';
	WAIT FOR 10000 ps;
	score_note0(0) <= '0';
	WAIT FOR 60000 ps;
	score_note0(0) <= '1';
	WAIT FOR 20000 ps;
	score_note0(0) <= '0';
WAIT;
END PROCESS t_prcs_score_note0_0;
END score_arch;
