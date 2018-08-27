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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 17.0.0 Build 595 04/25/2017 SJ Standard Edition"
-- CREATED		"Mon Aug 20 11:51:40 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY KBDINTF IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		resetN :  IN  STD_LOGIC;
		KBD_CLK :  IN  STD_LOGIC;
		KBD_DAT :  IN  STD_LOGIC;
		make :  OUT  STD_LOGIC;
		break :  OUT  STD_LOGIC;
		dout :  OUT  STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END KBDINTF;

ARCHITECTURE bdf_type OF KBDINTF IS 

COMPONENT byterec
	PORT(resetN : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 din_new : IN STD_LOGIC;
		 din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 make : OUT STD_LOGIC;
		 break : OUT STD_LOGIC;
		 dout : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpf
GENERIC (width : INTEGER
			);
	PORT(resetN : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 din : IN STD_LOGIC;
		 dout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT bitrec
	PORT(resetN : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 kbd_clk : IN STD_LOGIC;
		 kbd_dat : IN STD_LOGIC;
		 dout_new : OUT STD_LOGIC;
		 dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	d_bitrec :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



b2v_byterec : byterec
PORT MAP(resetN => resetN,
		 clk => clk,
		 din_new => SYNTHESIZED_WIRE_0,
		 din => d_bitrec,
		 make => make,
		 break => break,
		 dout => dout);


b2v_cleaner : lpf
GENERIC MAP(width => 4
			)
PORT MAP(resetN => resetN,
		 clk => clk,
		 din => KBD_CLK,
		 dout => SYNTHESIZED_WIRE_1);


b2v_inst : bitrec
PORT MAP(resetN => resetN,
		 clk => clk,
		 kbd_clk => SYNTHESIZED_WIRE_1,
		 kbd_dat => KBD_DAT,
		 dout_new => SYNTHESIZED_WIRE_0,
		 dout => d_bitrec);


END bdf_type;