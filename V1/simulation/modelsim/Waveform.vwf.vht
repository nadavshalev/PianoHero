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
-- Generated on "08/30/2018 11:23:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          noteGraph
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY noteGraph_vhd_vec_tst IS
END noteGraph_vhd_vec_tst;
ARCHITECTURE noteGraph_arch OF noteGraph_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL droawing_request : STD_LOGIC;
SIGNAL note_length : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL resetN : STD_LOGIC;
SIGNAL timer_done : STD_LOGIC;
COMPONENT noteGraph
	PORT (
	clk : IN STD_LOGIC;
	droawing_request : BUFFER STD_LOGIC;
	note_length : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	resetN : IN STD_LOGIC;
	timer_done : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : noteGraph
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	droawing_request => droawing_request,
	note_length => note_length,
	resetN => resetN,
	timer_done => timer_done
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- note_length[31]
t_prcs_note_length_31: PROCESS
BEGIN
	note_length(31) <= '0';
WAIT;
END PROCESS t_prcs_note_length_31;
-- note_length[30]
t_prcs_note_length_30: PROCESS
BEGIN
	note_length(30) <= '0';
WAIT;
END PROCESS t_prcs_note_length_30;
-- note_length[29]
t_prcs_note_length_29: PROCESS
BEGIN
	note_length(29) <= '0';
WAIT;
END PROCESS t_prcs_note_length_29;
-- note_length[28]
t_prcs_note_length_28: PROCESS
BEGIN
	note_length(28) <= '0';
WAIT;
END PROCESS t_prcs_note_length_28;
-- note_length[27]
t_prcs_note_length_27: PROCESS
BEGIN
	note_length(27) <= '0';
WAIT;
END PROCESS t_prcs_note_length_27;
-- note_length[26]
t_prcs_note_length_26: PROCESS
BEGIN
	note_length(26) <= '0';
WAIT;
END PROCESS t_prcs_note_length_26;
-- note_length[25]
t_prcs_note_length_25: PROCESS
BEGIN
	note_length(25) <= '0';
WAIT;
END PROCESS t_prcs_note_length_25;
-- note_length[24]
t_prcs_note_length_24: PROCESS
BEGIN
	note_length(24) <= '0';
WAIT;
END PROCESS t_prcs_note_length_24;
-- note_length[23]
t_prcs_note_length_23: PROCESS
BEGIN
	note_length(23) <= '0';
WAIT;
END PROCESS t_prcs_note_length_23;
-- note_length[22]
t_prcs_note_length_22: PROCESS
BEGIN
	note_length(22) <= '0';
WAIT;
END PROCESS t_prcs_note_length_22;
-- note_length[21]
t_prcs_note_length_21: PROCESS
BEGIN
	note_length(21) <= '0';
WAIT;
END PROCESS t_prcs_note_length_21;
-- note_length[20]
t_prcs_note_length_20: PROCESS
BEGIN
	note_length(20) <= '0';
WAIT;
END PROCESS t_prcs_note_length_20;
-- note_length[19]
t_prcs_note_length_19: PROCESS
BEGIN
	note_length(19) <= '0';
WAIT;
END PROCESS t_prcs_note_length_19;
-- note_length[18]
t_prcs_note_length_18: PROCESS
BEGIN
	note_length(18) <= '0';
WAIT;
END PROCESS t_prcs_note_length_18;
-- note_length[17]
t_prcs_note_length_17: PROCESS
BEGIN
	note_length(17) <= '0';
WAIT;
END PROCESS t_prcs_note_length_17;
-- note_length[16]
t_prcs_note_length_16: PROCESS
BEGIN
	note_length(16) <= '0';
WAIT;
END PROCESS t_prcs_note_length_16;
-- note_length[15]
t_prcs_note_length_15: PROCESS
BEGIN
	note_length(15) <= '0';
WAIT;
END PROCESS t_prcs_note_length_15;
-- note_length[14]
t_prcs_note_length_14: PROCESS
BEGIN
	note_length(14) <= '0';
WAIT;
END PROCESS t_prcs_note_length_14;
-- note_length[13]
t_prcs_note_length_13: PROCESS
BEGIN
	note_length(13) <= '0';
WAIT;
END PROCESS t_prcs_note_length_13;
-- note_length[12]
t_prcs_note_length_12: PROCESS
BEGIN
	note_length(12) <= '0';
WAIT;
END PROCESS t_prcs_note_length_12;
-- note_length[11]
t_prcs_note_length_11: PROCESS
BEGIN
	note_length(11) <= '0';
WAIT;
END PROCESS t_prcs_note_length_11;
-- note_length[10]
t_prcs_note_length_10: PROCESS
BEGIN
	note_length(10) <= '0';
WAIT;
END PROCESS t_prcs_note_length_10;
-- note_length[9]
t_prcs_note_length_9: PROCESS
BEGIN
	note_length(9) <= '0';
WAIT;
END PROCESS t_prcs_note_length_9;
-- note_length[8]
t_prcs_note_length_8: PROCESS
BEGIN
	note_length(8) <= '0';
WAIT;
END PROCESS t_prcs_note_length_8;
-- note_length[7]
t_prcs_note_length_7: PROCESS
BEGIN
	note_length(7) <= '0';
WAIT;
END PROCESS t_prcs_note_length_7;
-- note_length[6]
t_prcs_note_length_6: PROCESS
BEGIN
	note_length(6) <= '0';
WAIT;
END PROCESS t_prcs_note_length_6;
-- note_length[5]
t_prcs_note_length_5: PROCESS
BEGIN
	note_length(5) <= '0';
WAIT;
END PROCESS t_prcs_note_length_5;
-- note_length[4]
t_prcs_note_length_4: PROCESS
BEGIN
	note_length(4) <= '0';
WAIT;
END PROCESS t_prcs_note_length_4;
-- note_length[3]
t_prcs_note_length_3: PROCESS
BEGIN
	note_length(3) <= '0';
WAIT;
END PROCESS t_prcs_note_length_3;
-- note_length[2]
t_prcs_note_length_2: PROCESS
BEGIN
	note_length(2) <= '0';
WAIT;
END PROCESS t_prcs_note_length_2;
-- note_length[1]
t_prcs_note_length_1: PROCESS
BEGIN
	note_length(1) <= '0';
WAIT;
END PROCESS t_prcs_note_length_1;
-- note_length[0]
t_prcs_note_length_0: PROCESS
BEGIN
	note_length(0) <= '0';
WAIT;
END PROCESS t_prcs_note_length_0;

-- resetN
t_prcs_resetN: PROCESS
BEGIN
	resetN <= '0';
WAIT;
END PROCESS t_prcs_resetN;

-- timer_done
t_prcs_timer_done: PROCESS
BEGIN
	timer_done <= '0';
WAIT;
END PROCESS t_prcs_timer_done;
END noteGraph_arch;
