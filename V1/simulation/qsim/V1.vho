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

-- DATE "08/27/2018 10:18:01"

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
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY 	score IS
    PORT (
	resetN : IN std_logic;
	clk : IN std_logic;
	score_note0 : IN STD.STANDARD.integer;
	unit : OUT STD.STANDARD.integer;
	tens : OUT STD.STANDARD.integer
	);
END score;

-- Design Ports Information
-- unit[0]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[1]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[2]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[4]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[5]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[6]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[7]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[8]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[9]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[10]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[11]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[12]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[13]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[14]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[15]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[16]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[17]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[18]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[19]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[20]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[21]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[22]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[23]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[24]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[25]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[26]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[27]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[28]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[29]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[30]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unit[31]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[1]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[4]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[5]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[7]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[8]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[9]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[10]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[11]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[12]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[13]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[14]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[15]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[16]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[17]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[18]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[19]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[20]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[21]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[22]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[23]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[24]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[25]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[26]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[27]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[28]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[29]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[30]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tens[31]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[31]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetN	=>  Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- score_note0[22]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[23]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[24]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[25]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[27]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[12]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[13]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[14]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[15]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[17]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[6]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[3]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[2]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[21]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[26]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[28]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[29]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[30]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[11]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[16]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[18]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[19]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[20]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[7]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[8]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[9]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[10]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score_note0[0]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF score IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_resetN : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_score_note0 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_unit : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_tens : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \score_note0[31]~input_o\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \resetN~input_o\ : std_logic;
SIGNAL \tmp_tens[28]~3_combout\ : std_logic;
SIGNAL \score_note0[30]~input_o\ : std_logic;
SIGNAL \tmp_unit~4_combout\ : std_logic;
SIGNAL \score_note0[29]~input_o\ : std_logic;
SIGNAL \score_note0[28]~input_o\ : std_logic;
SIGNAL \score_note0[27]~input_o\ : std_logic;
SIGNAL \score_note0[26]~input_o\ : std_logic;
SIGNAL \score_note0[25]~input_o\ : std_logic;
SIGNAL \score_note0[24]~input_o\ : std_logic;
SIGNAL \score_note0[23]~input_o\ : std_logic;
SIGNAL \score_note0[22]~input_o\ : std_logic;
SIGNAL \score_note0[21]~input_o\ : std_logic;
SIGNAL \score_note0[20]~input_o\ : std_logic;
SIGNAL \score_note0[19]~input_o\ : std_logic;
SIGNAL \score_note0[18]~input_o\ : std_logic;
SIGNAL \score_note0[17]~input_o\ : std_logic;
SIGNAL \score_note0[16]~input_o\ : std_logic;
SIGNAL \score_note0[15]~input_o\ : std_logic;
SIGNAL \score_note0[14]~input_o\ : std_logic;
SIGNAL \score_note0[13]~input_o\ : std_logic;
SIGNAL \score_note0[12]~input_o\ : std_logic;
SIGNAL \score_note0[11]~input_o\ : std_logic;
SIGNAL \score_note0[10]~input_o\ : std_logic;
SIGNAL \score_note0[9]~input_o\ : std_logic;
SIGNAL \score_note0[8]~input_o\ : std_logic;
SIGNAL \score_note0[7]~input_o\ : std_logic;
SIGNAL \score_note0[6]~input_o\ : std_logic;
SIGNAL \score_note0[5]~input_o\ : std_logic;
SIGNAL \score_note0[4]~input_o\ : std_logic;
SIGNAL \score_note0[3]~input_o\ : std_logic;
SIGNAL \score_note0[2]~input_o\ : std_logic;
SIGNAL \score_note0[1]~input_o\ : std_logic;
SIGNAL \score_note0[0]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add5~126\ : std_logic;
SIGNAL \Add5~61_sumout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \tmp_unit~5_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~63\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~71\ : std_logic;
SIGNAL \Add0~75\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~83\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~95\ : std_logic;
SIGNAL \Add0~99\ : std_logic;
SIGNAL \Add0~103\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~111\ : std_logic;
SIGNAL \Add0~115\ : std_logic;
SIGNAL \Add0~119\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~123\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add5~77_sumout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~73_sumout\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add5~106\ : std_logic;
SIGNAL \Add5~69_sumout\ : std_logic;
SIGNAL \Add5~98\ : std_logic;
SIGNAL \Add5~101_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \Add5~90\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add5~118\ : std_logic;
SIGNAL \Add5~121_sumout\ : std_logic;
SIGNAL \Add5~110\ : std_logic;
SIGNAL \Add5~113_sumout\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~53_sumout\ : std_logic;
SIGNAL \Add5~66\ : std_logic;
SIGNAL \Add5~57_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~66\ : std_logic;
SIGNAL \Add3~70\ : std_logic;
SIGNAL \Add3~74\ : std_logic;
SIGNAL \Add3~78\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~86\ : std_logic;
SIGNAL \Add3~90\ : std_logic;
SIGNAL \Add3~94\ : std_logic;
SIGNAL \Add3~98\ : std_logic;
SIGNAL \Add3~102\ : std_logic;
SIGNAL \Add3~106\ : std_logic;
SIGNAL \Add3~110\ : std_logic;
SIGNAL \Add3~114\ : std_logic;
SIGNAL \Add3~118\ : std_logic;
SIGNAL \Add3~121_sumout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \LessThan2~10_combout\ : std_logic;
SIGNAL \LessThan2~11_combout\ : std_logic;
SIGNAL \LessThan2~12_combout\ : std_logic;
SIGNAL \LessThan2~13_combout\ : std_logic;
SIGNAL \tmp_unit~36_combout\ : std_logic;
SIGNAL \tmp_unit~37_combout\ : std_logic;
SIGNAL \Add5~82\ : std_logic;
SIGNAL \Add5~86\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \tmp_unit[8]~6_combout\ : std_logic;
SIGNAL \Add5~62\ : std_logic;
SIGNAL \Add5~65_sumout\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \tmp_unit~7_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \tmp_unit~8_combout\ : std_logic;
SIGNAL \Add5~58\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \tmp_unit~9_combout\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~49_sumout\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \tmp_unit~10_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \tmp_unit~11_combout\ : std_logic;
SIGNAL \Add5~54\ : std_logic;
SIGNAL \Add5~109_sumout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \tmp_unit~12_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \tmp_unit~13_combout\ : std_logic;
SIGNAL \Add5~114\ : std_logic;
SIGNAL \Add5~117_sumout\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \tmp_unit~14_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \tmp_unit~15_combout\ : std_logic;
SIGNAL \Add5~122\ : std_logic;
SIGNAL \Add5~89_sumout\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \tmp_unit~16_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \tmp_unit~17_combout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \tmp_unit~18_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \tmp_unit~19_combout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \tmp_unit~20_combout\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~93_sumout\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \tmp_unit~21_combout\ : std_logic;
SIGNAL \Add5~94\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add3~65_sumout\ : std_logic;
SIGNAL \tmp_unit~22_combout\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~97_sumout\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add3~69_sumout\ : std_logic;
SIGNAL \tmp_unit~23_combout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add3~73_sumout\ : std_logic;
SIGNAL \tmp_unit~24_combout\ : std_logic;
SIGNAL \Add5~102\ : std_logic;
SIGNAL \Add5~105_sumout\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add3~77_sumout\ : std_logic;
SIGNAL \tmp_unit~25_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add3~81_sumout\ : std_logic;
SIGNAL \tmp_unit~26_combout\ : std_logic;
SIGNAL \Add5~70\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add3~85_sumout\ : std_logic;
SIGNAL \tmp_unit~27_combout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add3~89_sumout\ : std_logic;
SIGNAL \tmp_unit~28_combout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add3~93_sumout\ : std_logic;
SIGNAL \tmp_unit~29_combout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add3~97_sumout\ : std_logic;
SIGNAL \tmp_unit~30_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add3~101_sumout\ : std_logic;
SIGNAL \tmp_unit~31_combout\ : std_logic;
SIGNAL \Add5~74\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add3~105_sumout\ : std_logic;
SIGNAL \tmp_unit~32_combout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~78\ : std_logic;
SIGNAL \Add5~81_sumout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \tmp_unit[8]~2_combout\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add3~109_sumout\ : std_logic;
SIGNAL \tmp_unit~33_combout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add3~113_sumout\ : std_logic;
SIGNAL \tmp_unit~34_combout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add3~117_sumout\ : std_logic;
SIGNAL \tmp_unit~35_combout\ : std_logic;
SIGNAL \Add5~85_sumout\ : std_logic;
SIGNAL \tmp_unit~3_combout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \tmp_tens[28]~1_combout\ : std_logic;
SIGNAL \tmp_tens~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \tmp_tens~0_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \tmp_tens~2_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add5~125_sumout\ : std_logic;
SIGNAL \tmp_unit~0_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \tmp_unit~1_combout\ : std_logic;
SIGNAL tmp_unit : std_logic_vector(31 DOWNTO 0);
SIGNAL tmp_tens : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Add5~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL ALT_INV_tmp_tens : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_tmp_unit : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~113_sumout\ : std_logic;
SIGNAL \ALT_INV_tmp_unit~4_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_unit~3_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_unit[8]~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_unit~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~93_sumout\ : std_logic;
SIGNAL \ALT_INV_score_note0[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_score_note0[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_tmp_unit~36_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_tens[28]~3_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_tens[28]~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~9_combout\ : std_logic;

BEGIN

ww_resetN <= resetN;
ww_clk <= clk;
ww_score_note0 <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(score_note0, 32);
unit <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_unit));
tens <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_tens));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add5~109_sumout\ <= NOT \Add5~109_sumout\;
\ALT_INV_Add5~105_sumout\ <= NOT \Add5~105_sumout\;
\ALT_INV_Add5~101_sumout\ <= NOT \Add5~101_sumout\;
\ALT_INV_Add5~97_sumout\ <= NOT \Add5~97_sumout\;
\ALT_INV_Add5~93_sumout\ <= NOT \Add5~93_sumout\;
\ALT_INV_Add5~89_sumout\ <= NOT \Add5~89_sumout\;
\ALT_INV_Add5~85_sumout\ <= NOT \Add5~85_sumout\;
\ALT_INV_Add5~81_sumout\ <= NOT \Add5~81_sumout\;
\ALT_INV_Add5~77_sumout\ <= NOT \Add5~77_sumout\;
\ALT_INV_Add5~73_sumout\ <= NOT \Add5~73_sumout\;
\ALT_INV_Add5~69_sumout\ <= NOT \Add5~69_sumout\;
\ALT_INV_Add5~65_sumout\ <= NOT \Add5~65_sumout\;
\ALT_INV_Add5~61_sumout\ <= NOT \Add5~61_sumout\;
\ALT_INV_Add5~57_sumout\ <= NOT \Add5~57_sumout\;
\ALT_INV_Add5~53_sumout\ <= NOT \Add5~53_sumout\;
\ALT_INV_Add5~49_sumout\ <= NOT \Add5~49_sumout\;
\ALT_INV_Add5~45_sumout\ <= NOT \Add5~45_sumout\;
\ALT_INV_Add5~41_sumout\ <= NOT \Add5~41_sumout\;
\ALT_INV_Add5~37_sumout\ <= NOT \Add5~37_sumout\;
\ALT_INV_Add5~33_sumout\ <= NOT \Add5~33_sumout\;
\ALT_INV_Add5~29_sumout\ <= NOT \Add5~29_sumout\;
\ALT_INV_Add5~25_sumout\ <= NOT \Add5~25_sumout\;
\ALT_INV_Add5~21_sumout\ <= NOT \Add5~21_sumout\;
\ALT_INV_Add5~17_sumout\ <= NOT \Add5~17_sumout\;
\ALT_INV_Add5~13_sumout\ <= NOT \Add5~13_sumout\;
\ALT_INV_Add5~9_sumout\ <= NOT \Add5~9_sumout\;
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
ALT_INV_tmp_tens(30) <= NOT tmp_tens(30);
ALT_INV_tmp_tens(29) <= NOT tmp_tens(29);
ALT_INV_tmp_tens(28) <= NOT tmp_tens(28);
ALT_INV_tmp_tens(27) <= NOT tmp_tens(27);
ALT_INV_tmp_tens(26) <= NOT tmp_tens(26);
ALT_INV_tmp_tens(25) <= NOT tmp_tens(25);
ALT_INV_tmp_tens(24) <= NOT tmp_tens(24);
ALT_INV_tmp_tens(23) <= NOT tmp_tens(23);
ALT_INV_tmp_tens(22) <= NOT tmp_tens(22);
ALT_INV_tmp_tens(21) <= NOT tmp_tens(21);
ALT_INV_tmp_tens(20) <= NOT tmp_tens(20);
ALT_INV_tmp_tens(19) <= NOT tmp_tens(19);
ALT_INV_tmp_tens(18) <= NOT tmp_tens(18);
ALT_INV_tmp_tens(17) <= NOT tmp_tens(17);
ALT_INV_tmp_tens(16) <= NOT tmp_tens(16);
ALT_INV_tmp_tens(15) <= NOT tmp_tens(15);
ALT_INV_tmp_tens(14) <= NOT tmp_tens(14);
ALT_INV_tmp_tens(13) <= NOT tmp_tens(13);
ALT_INV_tmp_tens(12) <= NOT tmp_tens(12);
ALT_INV_tmp_tens(11) <= NOT tmp_tens(11);
ALT_INV_tmp_tens(10) <= NOT tmp_tens(10);
ALT_INV_tmp_tens(9) <= NOT tmp_tens(9);
ALT_INV_tmp_tens(8) <= NOT tmp_tens(8);
ALT_INV_tmp_tens(7) <= NOT tmp_tens(7);
ALT_INV_tmp_tens(6) <= NOT tmp_tens(6);
ALT_INV_tmp_tens(5) <= NOT tmp_tens(5);
ALT_INV_tmp_tens(4) <= NOT tmp_tens(4);
ALT_INV_tmp_tens(3) <= NOT tmp_tens(3);
ALT_INV_tmp_tens(2) <= NOT tmp_tens(2);
ALT_INV_tmp_tens(1) <= NOT tmp_tens(1);
ALT_INV_tmp_unit(30) <= NOT tmp_unit(30);
ALT_INV_tmp_unit(29) <= NOT tmp_unit(29);
ALT_INV_tmp_unit(28) <= NOT tmp_unit(28);
ALT_INV_tmp_unit(27) <= NOT tmp_unit(27);
ALT_INV_tmp_unit(26) <= NOT tmp_unit(26);
ALT_INV_tmp_unit(25) <= NOT tmp_unit(25);
ALT_INV_tmp_unit(24) <= NOT tmp_unit(24);
ALT_INV_tmp_unit(23) <= NOT tmp_unit(23);
ALT_INV_tmp_unit(22) <= NOT tmp_unit(22);
ALT_INV_tmp_unit(21) <= NOT tmp_unit(21);
ALT_INV_tmp_unit(20) <= NOT tmp_unit(20);
ALT_INV_tmp_unit(19) <= NOT tmp_unit(19);
ALT_INV_tmp_unit(18) <= NOT tmp_unit(18);
ALT_INV_tmp_unit(17) <= NOT tmp_unit(17);
ALT_INV_tmp_unit(16) <= NOT tmp_unit(16);
ALT_INV_tmp_unit(15) <= NOT tmp_unit(15);
ALT_INV_tmp_unit(14) <= NOT tmp_unit(14);
ALT_INV_tmp_unit(13) <= NOT tmp_unit(13);
ALT_INV_tmp_unit(12) <= NOT tmp_unit(12);
ALT_INV_tmp_unit(11) <= NOT tmp_unit(11);
ALT_INV_tmp_unit(10) <= NOT tmp_unit(10);
ALT_INV_tmp_unit(9) <= NOT tmp_unit(9);
ALT_INV_tmp_unit(8) <= NOT tmp_unit(8);
ALT_INV_tmp_unit(7) <= NOT tmp_unit(7);
ALT_INV_tmp_unit(6) <= NOT tmp_unit(6);
ALT_INV_tmp_unit(5) <= NOT tmp_unit(5);
ALT_INV_tmp_unit(4) <= NOT tmp_unit(4);
ALT_INV_tmp_unit(3) <= NOT tmp_unit(3);
ALT_INV_tmp_unit(2) <= NOT tmp_unit(2);
ALT_INV_tmp_unit(1) <= NOT tmp_unit(1);
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
\ALT_INV_Add3~89_sumout\ <= NOT \Add3~89_sumout\;
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\ALT_INV_Add3~85_sumout\ <= NOT \Add3~85_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
\ALT_INV_Add3~81_sumout\ <= NOT \Add3~81_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\ALT_INV_Add3~77_sumout\ <= NOT \Add3~77_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add3~73_sumout\ <= NOT \Add3~73_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add3~69_sumout\ <= NOT \Add3~69_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
\ALT_INV_Add3~65_sumout\ <= NOT \Add3~65_sumout\;
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\ALT_INV_Add3~61_sumout\ <= NOT \Add3~61_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add3~57_sumout\ <= NOT \Add3~57_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add3~53_sumout\ <= NOT \Add3~53_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add3~49_sumout\ <= NOT \Add3~49_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add3~45_sumout\ <= NOT \Add3~45_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add3~41_sumout\ <= NOT \Add3~41_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add3~37_sumout\ <= NOT \Add3~37_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add3~33_sumout\ <= NOT \Add3~33_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add5~125_sumout\ <= NOT \Add5~125_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add5~121_sumout\ <= NOT \Add5~121_sumout\;
\ALT_INV_Add5~117_sumout\ <= NOT \Add5~117_sumout\;
\ALT_INV_Add5~113_sumout\ <= NOT \Add5~113_sumout\;
\ALT_INV_tmp_unit~4_combout\ <= NOT \tmp_unit~4_combout\;
\ALT_INV_tmp_unit~3_combout\ <= NOT \tmp_unit~3_combout\;
\ALT_INV_tmp_unit[8]~2_combout\ <= NOT \tmp_unit[8]~2_combout\;
\ALT_INV_LessThan2~8_combout\ <= NOT \LessThan2~8_combout\;
\ALT_INV_LessThan2~7_combout\ <= NOT \LessThan2~7_combout\;
\ALT_INV_LessThan2~6_combout\ <= NOT \LessThan2~6_combout\;
\ALT_INV_tmp_unit~0_combout\ <= NOT \tmp_unit~0_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_LessThan2~5_combout\ <= NOT \LessThan2~5_combout\;
\ALT_INV_LessThan2~4_combout\ <= NOT \LessThan2~4_combout\;
\ALT_INV_LessThan2~3_combout\ <= NOT \LessThan2~3_combout\;
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_tmp_tens(31) <= NOT tmp_tens(31);
ALT_INV_tmp_tens(0) <= NOT tmp_tens(0);
ALT_INV_tmp_unit(31) <= NOT tmp_unit(31);
ALT_INV_tmp_unit(0) <= NOT tmp_unit(0);
\ALT_INV_Add2~125_sumout\ <= NOT \Add2~125_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_Add0~125_sumout\ <= NOT \Add0~125_sumout\;
\ALT_INV_Add3~121_sumout\ <= NOT \Add3~121_sumout\;
\ALT_INV_Add3~117_sumout\ <= NOT \Add3~117_sumout\;
\ALT_INV_Add0~121_sumout\ <= NOT \Add0~121_sumout\;
\ALT_INV_Add3~113_sumout\ <= NOT \Add3~113_sumout\;
\ALT_INV_Add0~117_sumout\ <= NOT \Add0~117_sumout\;
\ALT_INV_Add3~109_sumout\ <= NOT \Add3~109_sumout\;
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
\ALT_INV_Add3~105_sumout\ <= NOT \Add3~105_sumout\;
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\ALT_INV_Add3~101_sumout\ <= NOT \Add3~101_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\ALT_INV_Add3~97_sumout\ <= NOT \Add3~97_sumout\;
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\ALT_INV_Add3~93_sumout\ <= NOT \Add3~93_sumout\;
\ALT_INV_score_note0[0]~input_o\ <= NOT \score_note0[0]~input_o\;
\ALT_INV_score_note0[10]~input_o\ <= NOT \score_note0[10]~input_o\;
\ALT_INV_score_note0[9]~input_o\ <= NOT \score_note0[9]~input_o\;
\ALT_INV_score_note0[8]~input_o\ <= NOT \score_note0[8]~input_o\;
\ALT_INV_score_note0[7]~input_o\ <= NOT \score_note0[7]~input_o\;
\ALT_INV_score_note0[20]~input_o\ <= NOT \score_note0[20]~input_o\;
\ALT_INV_score_note0[19]~input_o\ <= NOT \score_note0[19]~input_o\;
\ALT_INV_score_note0[18]~input_o\ <= NOT \score_note0[18]~input_o\;
\ALT_INV_score_note0[16]~input_o\ <= NOT \score_note0[16]~input_o\;
\ALT_INV_score_note0[11]~input_o\ <= NOT \score_note0[11]~input_o\;
\ALT_INV_score_note0[30]~input_o\ <= NOT \score_note0[30]~input_o\;
\ALT_INV_score_note0[29]~input_o\ <= NOT \score_note0[29]~input_o\;
\ALT_INV_score_note0[28]~input_o\ <= NOT \score_note0[28]~input_o\;
\ALT_INV_score_note0[26]~input_o\ <= NOT \score_note0[26]~input_o\;
\ALT_INV_score_note0[21]~input_o\ <= NOT \score_note0[21]~input_o\;
\ALT_INV_score_note0[2]~input_o\ <= NOT \score_note0[2]~input_o\;
\ALT_INV_score_note0[1]~input_o\ <= NOT \score_note0[1]~input_o\;
\ALT_INV_score_note0[3]~input_o\ <= NOT \score_note0[3]~input_o\;
\ALT_INV_score_note0[6]~input_o\ <= NOT \score_note0[6]~input_o\;
\ALT_INV_score_note0[5]~input_o\ <= NOT \score_note0[5]~input_o\;
\ALT_INV_score_note0[4]~input_o\ <= NOT \score_note0[4]~input_o\;
\ALT_INV_score_note0[17]~input_o\ <= NOT \score_note0[17]~input_o\;
\ALT_INV_score_note0[15]~input_o\ <= NOT \score_note0[15]~input_o\;
\ALT_INV_score_note0[14]~input_o\ <= NOT \score_note0[14]~input_o\;
\ALT_INV_score_note0[13]~input_o\ <= NOT \score_note0[13]~input_o\;
\ALT_INV_score_note0[12]~input_o\ <= NOT \score_note0[12]~input_o\;
\ALT_INV_score_note0[27]~input_o\ <= NOT \score_note0[27]~input_o\;
\ALT_INV_score_note0[25]~input_o\ <= NOT \score_note0[25]~input_o\;
\ALT_INV_score_note0[24]~input_o\ <= NOT \score_note0[24]~input_o\;
\ALT_INV_score_note0[23]~input_o\ <= NOT \score_note0[23]~input_o\;
\ALT_INV_score_note0[22]~input_o\ <= NOT \score_note0[22]~input_o\;
\ALT_INV_score_note0[31]~input_o\ <= NOT \score_note0[31]~input_o\;
\ALT_INV_tmp_unit~36_combout\ <= NOT \tmp_unit~36_combout\;
\ALT_INV_tmp_tens[28]~3_combout\ <= NOT \tmp_tens[28]~3_combout\;
\ALT_INV_tmp_tens[28]~1_combout\ <= NOT \tmp_tens[28]~1_combout\;
\ALT_INV_LessThan2~13_combout\ <= NOT \LessThan2~13_combout\;
\ALT_INV_LessThan2~12_combout\ <= NOT \LessThan2~12_combout\;
\ALT_INV_LessThan2~11_combout\ <= NOT \LessThan2~11_combout\;
\ALT_INV_LessThan2~10_combout\ <= NOT \LessThan2~10_combout\;
\ALT_INV_LessThan2~9_combout\ <= NOT \LessThan2~9_combout\;

-- Location: IOOBUF_X12_Y0_N53
\unit[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(0),
	devoe => ww_devoe,
	o => ww_unit(0));

-- Location: IOOBUF_X54_Y0_N19
\unit[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(1),
	devoe => ww_devoe,
	o => ww_unit(1));

-- Location: IOOBUF_X62_Y0_N2
\unit[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(2),
	devoe => ww_devoe,
	o => ww_unit(2));

-- Location: IOOBUF_X20_Y0_N19
\unit[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(3),
	devoe => ww_devoe,
	o => ww_unit(3));

-- Location: IOOBUF_X54_Y0_N2
\unit[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(4),
	devoe => ww_devoe,
	o => ww_unit(4));

-- Location: IOOBUF_X12_Y0_N36
\unit[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(5),
	devoe => ww_devoe,
	o => ww_unit(5));

-- Location: IOOBUF_X16_Y0_N53
\unit[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(6),
	devoe => ww_devoe,
	o => ww_unit(6));

-- Location: IOOBUF_X14_Y0_N19
\unit[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(7),
	devoe => ww_devoe,
	o => ww_unit(7));

-- Location: IOOBUF_X14_Y0_N36
\unit[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(8),
	devoe => ww_devoe,
	o => ww_unit(8));

-- Location: IOOBUF_X12_Y0_N2
\unit[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(9),
	devoe => ww_devoe,
	o => ww_unit(9));

-- Location: IOOBUF_X18_Y0_N93
\unit[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(10),
	devoe => ww_devoe,
	o => ww_unit(10));

-- Location: IOOBUF_X20_Y0_N36
\unit[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(11),
	devoe => ww_devoe,
	o => ww_unit(11));

-- Location: IOOBUF_X58_Y0_N93
\unit[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(12),
	devoe => ww_devoe,
	o => ww_unit(12));

-- Location: IOOBUF_X28_Y0_N36
\unit[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(13),
	devoe => ww_devoe,
	o => ww_unit(13));

-- Location: IOOBUF_X28_Y0_N53
\unit[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(14),
	devoe => ww_devoe,
	o => ww_unit(14));

-- Location: IOOBUF_X38_Y0_N2
\unit[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(15),
	devoe => ww_devoe,
	o => ww_unit(15));

-- Location: IOOBUF_X14_Y0_N53
\unit[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(16),
	devoe => ww_devoe,
	o => ww_unit(16));

-- Location: IOOBUF_X28_Y0_N19
\unit[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(17),
	devoe => ww_devoe,
	o => ww_unit(17));

-- Location: IOOBUF_X18_Y0_N59
\unit[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(18),
	devoe => ww_devoe,
	o => ww_unit(18));

-- Location: IOOBUF_X54_Y0_N36
\unit[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(19),
	devoe => ww_devoe,
	o => ww_unit(19));

-- Location: IOOBUF_X20_Y0_N53
\unit[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(20),
	devoe => ww_devoe,
	o => ww_unit(20));

-- Location: IOOBUF_X38_Y0_N36
\unit[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(21),
	devoe => ww_devoe,
	o => ww_unit(21));

-- Location: IOOBUF_X22_Y81_N19
\unit[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(22),
	devoe => ww_devoe,
	o => ww_unit(22));

-- Location: IOOBUF_X20_Y81_N53
\unit[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(23),
	devoe => ww_devoe,
	o => ww_unit(23));

-- Location: IOOBUF_X18_Y0_N42
\unit[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(24),
	devoe => ww_devoe,
	o => ww_unit(24));

-- Location: IOOBUF_X18_Y0_N76
\unit[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(25),
	devoe => ww_devoe,
	o => ww_unit(25));

-- Location: IOOBUF_X14_Y0_N2
\unit[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(26),
	devoe => ww_devoe,
	o => ww_unit(26));

-- Location: IOOBUF_X40_Y0_N19
\unit[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(27),
	devoe => ww_devoe,
	o => ww_unit(27));

-- Location: IOOBUF_X16_Y0_N19
\unit[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(28),
	devoe => ww_devoe,
	o => ww_unit(28));

-- Location: IOOBUF_X16_Y0_N36
\unit[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(29),
	devoe => ww_devoe,
	o => ww_unit(29));

-- Location: IOOBUF_X10_Y0_N42
\unit[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(30),
	devoe => ww_devoe,
	o => ww_unit(30));

-- Location: IOOBUF_X16_Y0_N2
\unit[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_unit(31),
	devoe => ww_devoe,
	o => ww_unit(31));

-- Location: IOOBUF_X24_Y81_N2
\tens[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(0),
	devoe => ww_devoe,
	o => ww_tens(0));

-- Location: IOOBUF_X30_Y0_N19
\tens[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(1),
	devoe => ww_devoe,
	o => ww_tens(1));

-- Location: IOOBUF_X36_Y0_N2
\tens[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(2),
	devoe => ww_devoe,
	o => ww_tens(2));

-- Location: IOOBUF_X20_Y0_N2
\tens[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(3),
	devoe => ww_devoe,
	o => ww_tens(3));

-- Location: IOOBUF_X34_Y0_N93
\tens[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(4),
	devoe => ww_devoe,
	o => ww_tens(4));

-- Location: IOOBUF_X52_Y0_N2
\tens[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(5),
	devoe => ww_devoe,
	o => ww_tens(5));

-- Location: IOOBUF_X36_Y0_N19
\tens[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(6),
	devoe => ww_devoe,
	o => ww_tens(6));

-- Location: IOOBUF_X54_Y0_N53
\tens[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(7),
	devoe => ww_devoe,
	o => ww_tens(7));

-- Location: IOOBUF_X40_Y0_N36
\tens[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(8),
	devoe => ww_devoe,
	o => ww_tens(8));

-- Location: IOOBUF_X34_Y0_N76
\tens[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(9),
	devoe => ww_devoe,
	o => ww_tens(9));

-- Location: IOOBUF_X36_Y0_N53
\tens[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(10),
	devoe => ww_devoe,
	o => ww_tens(10));

-- Location: IOOBUF_X52_Y0_N19
\tens[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(11),
	devoe => ww_devoe,
	o => ww_tens(11));

-- Location: IOOBUF_X34_Y0_N59
\tens[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(12),
	devoe => ww_devoe,
	o => ww_tens(12));

-- Location: IOOBUF_X58_Y0_N59
\tens[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(13),
	devoe => ww_devoe,
	o => ww_tens(13));

-- Location: IOOBUF_X30_Y81_N19
\tens[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(14),
	devoe => ww_devoe,
	o => ww_tens(14));

-- Location: IOOBUF_X32_Y0_N53
\tens[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(15),
	devoe => ww_devoe,
	o => ww_tens(15));

-- Location: IOOBUF_X30_Y0_N53
\tens[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(16),
	devoe => ww_devoe,
	o => ww_tens(16));

-- Location: IOOBUF_X32_Y0_N2
\tens[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(17),
	devoe => ww_devoe,
	o => ww_tens(17));

-- Location: IOOBUF_X36_Y0_N36
\tens[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(18),
	devoe => ww_devoe,
	o => ww_tens(18));

-- Location: IOOBUF_X32_Y0_N36
\tens[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(19),
	devoe => ww_devoe,
	o => ww_tens(19));

-- Location: IOOBUF_X24_Y0_N53
\tens[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(20),
	devoe => ww_devoe,
	o => ww_tens(20));

-- Location: IOOBUF_X26_Y0_N93
\tens[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(21),
	devoe => ww_devoe,
	o => ww_tens(21));

-- Location: IOOBUF_X28_Y0_N2
\tens[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(22),
	devoe => ww_devoe,
	o => ww_tens(22));

-- Location: IOOBUF_X30_Y0_N36
\tens[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(23),
	devoe => ww_devoe,
	o => ww_tens(23));

-- Location: IOOBUF_X24_Y0_N19
\tens[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(24),
	devoe => ww_devoe,
	o => ww_tens(24));

-- Location: IOOBUF_X32_Y0_N19
\tens[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(25),
	devoe => ww_devoe,
	o => ww_tens(25));

-- Location: IOOBUF_X24_Y0_N2
\tens[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(26),
	devoe => ww_devoe,
	o => ww_tens(26));

-- Location: IOOBUF_X26_Y0_N42
\tens[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(27),
	devoe => ww_devoe,
	o => ww_tens(27));

-- Location: IOOBUF_X30_Y0_N2
\tens[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(28),
	devoe => ww_devoe,
	o => ww_tens(28));

-- Location: IOOBUF_X24_Y0_N36
\tens[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(29),
	devoe => ww_devoe,
	o => ww_tens(29));

-- Location: IOOBUF_X26_Y0_N59
\tens[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(30),
	devoe => ww_devoe,
	o => ww_tens(30));

-- Location: IOOBUF_X26_Y0_N76
\tens[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tmp_tens(31),
	devoe => ww_devoe,
	o => ww_tens(31));

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

-- Location: IOIBUF_X22_Y0_N18
\score_note0[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(31),
	o => \score_note0[31]~input_o\);

-- Location: LABCELL_X24_Y2_N0
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( tmp_tens(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~2\ = CARRY(( tmp_tens(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_tmp_tens(0),
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X24_Y2_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( tmp_tens(3) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( tmp_tens(3) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datac => ALT_INV_tmp_tens(3),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: LABCELL_X24_Y2_N12
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( tmp_tens(4) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( tmp_tens(4) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_tmp_tens(4),
	datac => \ALT_INV_score_note0[31]~input_o\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

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

-- Location: MLABCELL_X21_Y1_N39
\tmp_tens[28]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_tens[28]~3_combout\ = ( \Equal0~6_combout\ & ( \score_note0[31]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_score_note0[31]~input_o\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \tmp_tens[28]~3_combout\);

-- Location: IOIBUF_X10_Y0_N75
\score_note0[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(30),
	o => \score_note0[30]~input_o\);

-- Location: MLABCELL_X21_Y1_N15
\tmp_unit~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~4_combout\ = ( !\Equal1~0_combout\ & ( !\score_note0[31]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[31]~input_o\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \tmp_unit~4_combout\);

-- Location: IOIBUF_X10_Y0_N92
\score_note0[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(29),
	o => \score_note0[29]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\score_note0[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(28),
	o => \score_note0[28]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\score_note0[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(27),
	o => \score_note0[27]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\score_note0[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(26),
	o => \score_note0[26]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\score_note0[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(25),
	o => \score_note0[25]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\score_note0[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(24),
	o => \score_note0[24]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\score_note0[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(23),
	o => \score_note0[23]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\score_note0[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(22),
	o => \score_note0[22]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\score_note0[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(21),
	o => \score_note0[21]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\score_note0[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(20),
	o => \score_note0[20]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\score_note0[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(19),
	o => \score_note0[19]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\score_note0[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(18),
	o => \score_note0[18]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\score_note0[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(17),
	o => \score_note0[17]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\score_note0[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(16),
	o => \score_note0[16]~input_o\);

-- Location: IOIBUF_X24_Y81_N52
\score_note0[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(15),
	o => \score_note0[15]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\score_note0[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(14),
	o => \score_note0[14]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\score_note0[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(13),
	o => \score_note0[13]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\score_note0[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(12),
	o => \score_note0[12]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\score_note0[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(11),
	o => \score_note0[11]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\score_note0[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(10),
	o => \score_note0[10]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\score_note0[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(9),
	o => \score_note0[9]~input_o\);

-- Location: IOIBUF_X22_Y81_N52
\score_note0[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(8),
	o => \score_note0[8]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\score_note0[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(7),
	o => \score_note0[7]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\score_note0[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(6),
	o => \score_note0[6]~input_o\);

-- Location: IOIBUF_X22_Y81_N35
\score_note0[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(5),
	o => \score_note0[5]~input_o\);

-- Location: IOIBUF_X24_Y81_N35
\score_note0[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(4),
	o => \score_note0[4]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\score_note0[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(3),
	o => \score_note0[3]~input_o\);

-- Location: IOIBUF_X24_Y81_N18
\score_note0[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(2),
	o => \score_note0[2]~input_o\);

-- Location: IOIBUF_X22_Y81_N1
\score_note0[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(1),
	o => \score_note0[1]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\score_note0[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_score_note0(0),
	o => \score_note0[0]~input_o\);

-- Location: LABCELL_X23_Y4_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !tmp_unit(0) $ (!\score_note0[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !tmp_unit(0) $ (!\score_note0[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add0~3\ = SHARE((tmp_unit(0) & \score_note0[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_tmp_unit(0),
	datac => \ALT_INV_score_note0[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\,
	shareout => \Add0~3\);

-- Location: LABCELL_X23_Y4_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\score_note0[1]~input_o\ $ (tmp_unit(1)) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\score_note0[1]~input_o\ $ (tmp_unit(1)) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~7\ = SHARE((tmp_unit(1)) # (\score_note0[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111100000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[1]~input_o\,
	datac => ALT_INV_tmp_unit(1),
	cin => \Add0~2\,
	sharein => \Add0~3\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\,
	shareout => \Add0~7\);

-- Location: LABCELL_X22_Y2_N0
\Add5~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~125_sumout\ = SUM(( \score_note0[0]~input_o\ ) + ( tmp_unit(0) ) + ( !VCC ))
-- \Add5~126\ = CARRY(( \score_note0[0]~input_o\ ) + ( tmp_unit(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_tmp_unit(0),
	datac => \ALT_INV_score_note0[0]~input_o\,
	cin => GND,
	sumout => \Add5~125_sumout\,
	cout => \Add5~126\);

-- Location: LABCELL_X22_Y2_N3
\Add5~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~61_sumout\ = SUM(( \score_note0[1]~input_o\ ) + ( tmp_unit(1) ) + ( \Add5~126\ ))
-- \Add5~62\ = CARRY(( \score_note0[1]~input_o\ ) + ( tmp_unit(1) ) + ( \Add5~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_tmp_unit(1),
	datad => \ALT_INV_score_note0[1]~input_o\,
	cin => \Add5~126\,
	sumout => \Add5~61_sumout\,
	cout => \Add5~62\);

-- Location: LABCELL_X22_Y4_N0
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( \Add5~61_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Add3~2\ = CARRY(( \Add5~61_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~61_sumout\,
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: LABCELL_X23_Y2_N18
\tmp_unit~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~5_combout\ = ( \tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( (\Add3~1_sumout\ & \tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( \Add3~1_sumout\ ) ) ) # ( \tmp_unit~3_combout\ & ( 
-- !\tmp_unit[8]~2_combout\ & ( (!\tmp_unit~4_combout\ & (\Add0~5_sumout\)) # (\tmp_unit~4_combout\ & ((\Add5~61_sumout\))) ) ) ) # ( !\tmp_unit~3_combout\ & ( !\tmp_unit[8]~2_combout\ & ( \Add5~61_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010011001100001111000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~5_sumout\,
	datab => \ALT_INV_Add5~61_sumout\,
	datac => \ALT_INV_Add3~1_sumout\,
	datad => \ALT_INV_tmp_unit~4_combout\,
	datae => \ALT_INV_tmp_unit~3_combout\,
	dataf => \ALT_INV_tmp_unit[8]~2_combout\,
	combout => \tmp_unit~5_combout\);

-- Location: LABCELL_X23_Y4_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !tmp_unit(2) $ (!\score_note0[2]~input_o\) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !tmp_unit(2) $ (!\score_note0[2]~input_o\) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~11\ = SHARE((tmp_unit(2) & \score_note0[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_tmp_unit(2),
	datad => \ALT_INV_score_note0[2]~input_o\,
	cin => \Add0~6\,
	sharein => \Add0~7\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\,
	shareout => \Add0~11\);

-- Location: LABCELL_X23_Y4_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\score_note0[3]~input_o\ $ (tmp_unit(3)) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\score_note0[3]~input_o\ $ (tmp_unit(3)) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~15\ = SHARE((tmp_unit(3)) # (\score_note0[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111100000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[3]~input_o\,
	datac => ALT_INV_tmp_unit(3),
	cin => \Add0~10\,
	sharein => \Add0~11\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\,
	shareout => \Add0~15\);

-- Location: LABCELL_X23_Y4_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\score_note0[4]~input_o\ $ (!tmp_unit(4)) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !\score_note0[4]~input_o\ $ (!tmp_unit(4)) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~19\ = SHARE((\score_note0[4]~input_o\ & tmp_unit(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_score_note0[4]~input_o\,
	datac => ALT_INV_tmp_unit(4),
	cin => \Add0~14\,
	sharein => \Add0~15\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\,
	shareout => \Add0~19\);

-- Location: LABCELL_X23_Y4_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\score_note0[5]~input_o\ $ (!tmp_unit(5)) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !\score_note0[5]~input_o\ $ (!tmp_unit(5)) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~23\ = SHARE((\score_note0[5]~input_o\ & tmp_unit(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[5]~input_o\,
	datac => ALT_INV_tmp_unit(5),
	cin => \Add0~18\,
	sharein => \Add0~19\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\,
	shareout => \Add0~23\);

-- Location: LABCELL_X23_Y4_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !\score_note0[6]~input_o\ $ (!tmp_unit(6)) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !\score_note0[6]~input_o\ $ (!tmp_unit(6)) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~27\ = SHARE((\score_note0[6]~input_o\ & tmp_unit(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_score_note0[6]~input_o\,
	datad => ALT_INV_tmp_unit(6),
	cin => \Add0~22\,
	sharein => \Add0~23\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\,
	shareout => \Add0~27\);

-- Location: LABCELL_X23_Y4_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !\score_note0[7]~input_o\ $ (!tmp_unit(7)) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !\score_note0[7]~input_o\ $ (!tmp_unit(7)) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~31\ = SHARE((\score_note0[7]~input_o\ & tmp_unit(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[7]~input_o\,
	datad => ALT_INV_tmp_unit(7),
	cin => \Add0~26\,
	sharein => \Add0~27\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\,
	shareout => \Add0~31\);

-- Location: LABCELL_X23_Y4_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !tmp_unit(8) $ (!\score_note0[8]~input_o\) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( !tmp_unit(8) $ (!\score_note0[8]~input_o\) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~35\ = SHARE((tmp_unit(8) & \score_note0[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_tmp_unit(8),
	datac => \ALT_INV_score_note0[8]~input_o\,
	cin => \Add0~30\,
	sharein => \Add0~31\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\,
	shareout => \Add0~35\);

-- Location: LABCELL_X23_Y4_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( !\score_note0[9]~input_o\ $ (!tmp_unit(9)) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( !\score_note0[9]~input_o\ $ (!tmp_unit(9)) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~39\ = SHARE((\score_note0[9]~input_o\ & tmp_unit(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[9]~input_o\,
	datad => ALT_INV_tmp_unit(9),
	cin => \Add0~34\,
	sharein => \Add0~35\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\,
	shareout => \Add0~39\);

-- Location: LABCELL_X23_Y4_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( !tmp_unit(10) $ (!\score_note0[10]~input_o\) ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( !tmp_unit(10) $ (!\score_note0[10]~input_o\) ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~43\ = SHARE((tmp_unit(10) & \score_note0[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_tmp_unit(10),
	datac => \ALT_INV_score_note0[10]~input_o\,
	cin => \Add0~38\,
	sharein => \Add0~39\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\,
	shareout => \Add0~43\);

-- Location: LABCELL_X23_Y4_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( !tmp_unit(11) $ (!\score_note0[11]~input_o\) ) + ( \Add0~43\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( !tmp_unit(11) $ (!\score_note0[11]~input_o\) ) + ( \Add0~43\ ) + ( \Add0~42\ ))
-- \Add0~47\ = SHARE((tmp_unit(11) & \score_note0[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tmp_unit(11),
	datac => \ALT_INV_score_note0[11]~input_o\,
	cin => \Add0~42\,
	sharein => \Add0~43\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\,
	shareout => \Add0~47\);

-- Location: LABCELL_X23_Y4_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( !\score_note0[12]~input_o\ $ (!tmp_unit(12)) ) + ( \Add0~47\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( !\score_note0[12]~input_o\ $ (!tmp_unit(12)) ) + ( \Add0~47\ ) + ( \Add0~46\ ))
-- \Add0~51\ = SHARE((\score_note0[12]~input_o\ & tmp_unit(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_score_note0[12]~input_o\,
	datac => ALT_INV_tmp_unit(12),
	cin => \Add0~46\,
	sharein => \Add0~47\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\,
	shareout => \Add0~51\);

-- Location: LABCELL_X23_Y4_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( !\score_note0[13]~input_o\ $ (!tmp_unit(13)) ) + ( \Add0~51\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( !\score_note0[13]~input_o\ $ (!tmp_unit(13)) ) + ( \Add0~51\ ) + ( \Add0~50\ ))
-- \Add0~55\ = SHARE((\score_note0[13]~input_o\ & tmp_unit(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[13]~input_o\,
	datad => ALT_INV_tmp_unit(13),
	cin => \Add0~50\,
	sharein => \Add0~51\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\,
	shareout => \Add0~55\);

-- Location: LABCELL_X23_Y4_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( !\score_note0[14]~input_o\ $ (!tmp_unit(14)) ) + ( \Add0~55\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( !\score_note0[14]~input_o\ $ (!tmp_unit(14)) ) + ( \Add0~55\ ) + ( \Add0~54\ ))
-- \Add0~59\ = SHARE((\score_note0[14]~input_o\ & tmp_unit(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[14]~input_o\,
	datad => ALT_INV_tmp_unit(14),
	cin => \Add0~54\,
	sharein => \Add0~55\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\,
	shareout => \Add0~59\);

-- Location: LABCELL_X23_Y4_N45
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( !tmp_unit(15) $ (!\score_note0[15]~input_o\) ) + ( \Add0~59\ ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( !tmp_unit(15) $ (!\score_note0[15]~input_o\) ) + ( \Add0~59\ ) + ( \Add0~58\ ))
-- \Add0~63\ = SHARE((tmp_unit(15) & \score_note0[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_tmp_unit(15),
	datad => \ALT_INV_score_note0[15]~input_o\,
	cin => \Add0~58\,
	sharein => \Add0~59\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\,
	shareout => \Add0~63\);

-- Location: LABCELL_X23_Y4_N48
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( !\score_note0[16]~input_o\ $ (!tmp_unit(16)) ) + ( \Add0~63\ ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( !\score_note0[16]~input_o\ $ (!tmp_unit(16)) ) + ( \Add0~63\ ) + ( \Add0~62\ ))
-- \Add0~67\ = SHARE((\score_note0[16]~input_o\ & tmp_unit(16)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[16]~input_o\,
	datad => ALT_INV_tmp_unit(16),
	cin => \Add0~62\,
	sharein => \Add0~63\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\,
	shareout => \Add0~67\);

-- Location: LABCELL_X23_Y4_N51
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( !\score_note0[17]~input_o\ $ (!tmp_unit(17)) ) + ( \Add0~67\ ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( !\score_note0[17]~input_o\ $ (!tmp_unit(17)) ) + ( \Add0~67\ ) + ( \Add0~66\ ))
-- \Add0~71\ = SHARE((\score_note0[17]~input_o\ & tmp_unit(17)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_score_note0[17]~input_o\,
	datac => ALT_INV_tmp_unit(17),
	cin => \Add0~66\,
	sharein => \Add0~67\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\,
	shareout => \Add0~71\);

-- Location: LABCELL_X23_Y4_N54
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( !\score_note0[18]~input_o\ $ (!tmp_unit(18)) ) + ( \Add0~71\ ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( !\score_note0[18]~input_o\ $ (!tmp_unit(18)) ) + ( \Add0~71\ ) + ( \Add0~70\ ))
-- \Add0~75\ = SHARE((\score_note0[18]~input_o\ & tmp_unit(18)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[18]~input_o\,
	datad => ALT_INV_tmp_unit(18),
	cin => \Add0~70\,
	sharein => \Add0~71\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\,
	shareout => \Add0~75\);

-- Location: LABCELL_X23_Y4_N57
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( !\score_note0[19]~input_o\ $ (!tmp_unit(19)) ) + ( \Add0~75\ ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( !\score_note0[19]~input_o\ $ (!tmp_unit(19)) ) + ( \Add0~75\ ) + ( \Add0~74\ ))
-- \Add0~79\ = SHARE((\score_note0[19]~input_o\ & tmp_unit(19)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[19]~input_o\,
	datad => ALT_INV_tmp_unit(19),
	cin => \Add0~74\,
	sharein => \Add0~75\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\,
	shareout => \Add0~79\);

-- Location: LABCELL_X23_Y3_N0
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( !\score_note0[20]~input_o\ $ (!tmp_unit(20)) ) + ( \Add0~79\ ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( !\score_note0[20]~input_o\ $ (!tmp_unit(20)) ) + ( \Add0~79\ ) + ( \Add0~78\ ))
-- \Add0~83\ = SHARE((\score_note0[20]~input_o\ & tmp_unit(20)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[20]~input_o\,
	datac => ALT_INV_tmp_unit(20),
	cin => \Add0~78\,
	sharein => \Add0~79\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\,
	shareout => \Add0~83\);

-- Location: LABCELL_X23_Y3_N3
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( !\score_note0[21]~input_o\ $ (!tmp_unit(21)) ) + ( \Add0~83\ ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( !\score_note0[21]~input_o\ $ (!tmp_unit(21)) ) + ( \Add0~83\ ) + ( \Add0~82\ ))
-- \Add0~87\ = SHARE((\score_note0[21]~input_o\ & tmp_unit(21)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_score_note0[21]~input_o\,
	datac => ALT_INV_tmp_unit(21),
	cin => \Add0~82\,
	sharein => \Add0~83\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\,
	shareout => \Add0~87\);

-- Location: LABCELL_X23_Y3_N6
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( !\score_note0[22]~input_o\ $ (!tmp_unit(22)) ) + ( \Add0~87\ ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( !\score_note0[22]~input_o\ $ (!tmp_unit(22)) ) + ( \Add0~87\ ) + ( \Add0~86\ ))
-- \Add0~91\ = SHARE((\score_note0[22]~input_o\ & tmp_unit(22)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[22]~input_o\,
	datac => ALT_INV_tmp_unit(22),
	cin => \Add0~86\,
	sharein => \Add0~87\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\,
	shareout => \Add0~91\);

-- Location: LABCELL_X23_Y3_N9
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( !\score_note0[23]~input_o\ $ (!tmp_unit(23)) ) + ( \Add0~91\ ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( !\score_note0[23]~input_o\ $ (!tmp_unit(23)) ) + ( \Add0~91\ ) + ( \Add0~90\ ))
-- \Add0~95\ = SHARE((\score_note0[23]~input_o\ & tmp_unit(23)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[23]~input_o\,
	datad => ALT_INV_tmp_unit(23),
	cin => \Add0~90\,
	sharein => \Add0~91\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\,
	shareout => \Add0~95\);

-- Location: LABCELL_X23_Y3_N12
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( !\score_note0[24]~input_o\ $ (!tmp_unit(24)) ) + ( \Add0~95\ ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( !\score_note0[24]~input_o\ $ (!tmp_unit(24)) ) + ( \Add0~95\ ) + ( \Add0~94\ ))
-- \Add0~99\ = SHARE((\score_note0[24]~input_o\ & tmp_unit(24)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[24]~input_o\,
	datac => ALT_INV_tmp_unit(24),
	cin => \Add0~94\,
	sharein => \Add0~95\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\,
	shareout => \Add0~99\);

-- Location: LABCELL_X23_Y3_N15
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( !tmp_unit(25) $ (!\score_note0[25]~input_o\) ) + ( \Add0~99\ ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( !tmp_unit(25) $ (!\score_note0[25]~input_o\) ) + ( \Add0~99\ ) + ( \Add0~98\ ))
-- \Add0~103\ = SHARE((tmp_unit(25) & \score_note0[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_tmp_unit(25),
	datad => \ALT_INV_score_note0[25]~input_o\,
	cin => \Add0~98\,
	sharein => \Add0~99\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\,
	shareout => \Add0~103\);

-- Location: LABCELL_X23_Y3_N18
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( !\score_note0[26]~input_o\ $ (!tmp_unit(26)) ) + ( \Add0~103\ ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( !\score_note0[26]~input_o\ $ (!tmp_unit(26)) ) + ( \Add0~103\ ) + ( \Add0~102\ ))
-- \Add0~107\ = SHARE((\score_note0[26]~input_o\ & tmp_unit(26)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_score_note0[26]~input_o\,
	datac => ALT_INV_tmp_unit(26),
	cin => \Add0~102\,
	sharein => \Add0~103\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\,
	shareout => \Add0~107\);

-- Location: LABCELL_X23_Y3_N21
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( !tmp_unit(27) $ (!\score_note0[27]~input_o\) ) + ( \Add0~107\ ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( !tmp_unit(27) $ (!\score_note0[27]~input_o\) ) + ( \Add0~107\ ) + ( \Add0~106\ ))
-- \Add0~111\ = SHARE((tmp_unit(27) & \score_note0[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tmp_unit(27),
	datad => \ALT_INV_score_note0[27]~input_o\,
	cin => \Add0~106\,
	sharein => \Add0~107\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\,
	shareout => \Add0~111\);

-- Location: LABCELL_X23_Y3_N24
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( !tmp_unit(28) $ (!\score_note0[28]~input_o\) ) + ( \Add0~111\ ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( !tmp_unit(28) $ (!\score_note0[28]~input_o\) ) + ( \Add0~111\ ) + ( \Add0~110\ ))
-- \Add0~115\ = SHARE((tmp_unit(28) & \score_note0[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_tmp_unit(28),
	datac => \ALT_INV_score_note0[28]~input_o\,
	cin => \Add0~110\,
	sharein => \Add0~111\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\,
	shareout => \Add0~115\);

-- Location: LABCELL_X23_Y3_N27
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( !\score_note0[29]~input_o\ $ (!tmp_unit(29)) ) + ( \Add0~115\ ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( !\score_note0[29]~input_o\ $ (!tmp_unit(29)) ) + ( \Add0~115\ ) + ( \Add0~114\ ))
-- \Add0~119\ = SHARE((\score_note0[29]~input_o\ & tmp_unit(29)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[29]~input_o\,
	datac => ALT_INV_tmp_unit(29),
	cin => \Add0~114\,
	sharein => \Add0~115\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\,
	shareout => \Add0~119\);

-- Location: LABCELL_X23_Y3_N30
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( !\score_note0[30]~input_o\ $ (!tmp_unit(30)) ) + ( \Add0~119\ ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( !\score_note0[30]~input_o\ $ (!tmp_unit(30)) ) + ( \Add0~119\ ) + ( \Add0~118\ ))
-- \Add0~123\ = SHARE((\score_note0[30]~input_o\ & tmp_unit(30)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_score_note0[30]~input_o\,
	datac => ALT_INV_tmp_unit(30),
	cin => \Add0~118\,
	sharein => \Add0~119\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\,
	shareout => \Add0~123\);

-- Location: LABCELL_X23_Y3_N33
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( !\score_note0[31]~input_o\ $ (!tmp_unit(31)) ) + ( \Add0~123\ ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datad => ALT_INV_tmp_unit(31),
	cin => \Add0~122\,
	sharein => \Add0~123\,
	sumout => \Add0~125_sumout\);

-- Location: LABCELL_X22_Y1_N24
\Add5~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~77_sumout\ = SUM(( tmp_unit(28) ) + ( \score_note0[28]~input_o\ ) + ( \Add5~22\ ))
-- \Add5~78\ = CARRY(( tmp_unit(28) ) + ( \score_note0[28]~input_o\ ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_score_note0[28]~input_o\,
	datac => ALT_INV_tmp_unit(28),
	cin => \Add5~22\,
	sumout => \Add5~77_sumout\,
	cout => \Add5~78\);

-- Location: LABCELL_X22_Y1_N12
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( tmp_unit(24) ) + ( \score_note0[24]~input_o\ ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( tmp_unit(24) ) + ( \score_note0[24]~input_o\ ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[24]~input_o\,
	datad => ALT_INV_tmp_unit(24),
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: LABCELL_X22_Y1_N15
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( tmp_unit(25) ) + ( \score_note0[25]~input_o\ ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( tmp_unit(25) ) + ( \score_note0[25]~input_o\ ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[25]~input_o\,
	datac => ALT_INV_tmp_unit(25),
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: LABCELL_X22_Y1_N18
\Add5~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~73_sumout\ = SUM(( tmp_unit(26) ) + ( \score_note0[26]~input_o\ ) + ( \Add5~18\ ))
-- \Add5~74\ = CARRY(( tmp_unit(26) ) + ( \score_note0[26]~input_o\ ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[26]~input_o\,
	datad => ALT_INV_tmp_unit(26),
	cin => \Add5~18\,
	sumout => \Add5~73_sumout\,
	cout => \Add5~74\);

-- Location: LABCELL_X22_Y1_N0
\Add5~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~105_sumout\ = SUM(( tmp_unit(20) ) + ( \score_note0[20]~input_o\ ) + ( \Add5~102\ ))
-- \Add5~106\ = CARRY(( tmp_unit(20) ) + ( \score_note0[20]~input_o\ ) + ( \Add5~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[20]~input_o\,
	datac => ALT_INV_tmp_unit(20),
	cin => \Add5~102\,
	sumout => \Add5~105_sumout\,
	cout => \Add5~106\);

-- Location: LABCELL_X22_Y1_N3
\Add5~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~69_sumout\ = SUM(( tmp_unit(21) ) + ( \score_note0[21]~input_o\ ) + ( \Add5~106\ ))
-- \Add5~70\ = CARRY(( tmp_unit(21) ) + ( \score_note0[21]~input_o\ ) + ( \Add5~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[21]~input_o\,
	datad => ALT_INV_tmp_unit(21),
	cin => \Add5~106\,
	sumout => \Add5~69_sumout\,
	cout => \Add5~70\);

-- Location: LABCELL_X22_Y2_N54
\Add5~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~97_sumout\ = SUM(( tmp_unit(18) ) + ( \score_note0[18]~input_o\ ) + ( \Add5~42\ ))
-- \Add5~98\ = CARRY(( tmp_unit(18) ) + ( \score_note0[18]~input_o\ ) + ( \Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_tmp_unit(18),
	dataf => \ALT_INV_score_note0[18]~input_o\,
	cin => \Add5~42\,
	sumout => \Add5~97_sumout\,
	cout => \Add5~98\);

-- Location: LABCELL_X22_Y2_N57
\Add5~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~101_sumout\ = SUM(( tmp_unit(19) ) + ( \score_note0[19]~input_o\ ) + ( \Add5~98\ ))
-- \Add5~102\ = CARRY(( tmp_unit(19) ) + ( \score_note0[19]~input_o\ ) + ( \Add5~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[19]~input_o\,
	datad => ALT_INV_tmp_unit(19),
	cin => \Add5~98\,
	sumout => \Add5~101_sumout\,
	cout => \Add5~102\);

-- Location: LABCELL_X22_Y2_N39
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( tmp_unit(13) ) + ( \score_note0[13]~input_o\ ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( tmp_unit(13) ) + ( \score_note0[13]~input_o\ ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[13]~input_o\,
	datad => ALT_INV_tmp_unit(13),
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: LABCELL_X22_Y2_N42
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( tmp_unit(14) ) + ( \score_note0[14]~input_o\ ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( tmp_unit(14) ) + ( \score_note0[14]~input_o\ ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_tmp_unit(14),
	dataf => \ALT_INV_score_note0[14]~input_o\,
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: LABCELL_X22_Y2_N33
\Add5~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~89_sumout\ = SUM(( tmp_unit(11) ) + ( \score_note0[11]~input_o\ ) + ( \Add5~122\ ))
-- \Add5~90\ = CARRY(( tmp_unit(11) ) + ( \score_note0[11]~input_o\ ) + ( \Add5~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_score_note0[11]~input_o\,
	datac => ALT_INV_tmp_unit(11),
	cin => \Add5~122\,
	sumout => \Add5~89_sumout\,
	cout => \Add5~90\);

-- Location: LABCELL_X22_Y2_N36
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( tmp_unit(12) ) + ( \score_note0[12]~input_o\ ) + ( \Add5~90\ ))
-- \Add5~26\ = CARRY(( tmp_unit(12) ) + ( \score_note0[12]~input_o\ ) + ( \Add5~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[12]~input_o\,
	datac => ALT_INV_tmp_unit(12),
	cin => \Add5~90\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: LABCELL_X22_Y2_N27
\Add5~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~117_sumout\ = SUM(( tmp_unit(9) ) + ( \score_note0[9]~input_o\ ) + ( \Add5~114\ ))
-- \Add5~118\ = CARRY(( tmp_unit(9) ) + ( \score_note0[9]~input_o\ ) + ( \Add5~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[9]~input_o\,
	datad => ALT_INV_tmp_unit(9),
	cin => \Add5~114\,
	sumout => \Add5~117_sumout\,
	cout => \Add5~118\);

-- Location: LABCELL_X22_Y2_N30
\Add5~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~121_sumout\ = SUM(( tmp_unit(10) ) + ( \score_note0[10]~input_o\ ) + ( \Add5~118\ ))
-- \Add5~122\ = CARRY(( tmp_unit(10) ) + ( \score_note0[10]~input_o\ ) + ( \Add5~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[10]~input_o\,
	datad => ALT_INV_tmp_unit(10),
	cin => \Add5~118\,
	sumout => \Add5~121_sumout\,
	cout => \Add5~122\);

-- Location: LABCELL_X22_Y2_N21
\Add5~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~109_sumout\ = SUM(( tmp_unit(7) ) + ( \score_note0[7]~input_o\ ) + ( \Add5~54\ ))
-- \Add5~110\ = CARRY(( tmp_unit(7) ) + ( \score_note0[7]~input_o\ ) + ( \Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[7]~input_o\,
	datad => ALT_INV_tmp_unit(7),
	cin => \Add5~54\,
	sumout => \Add5~109_sumout\,
	cout => \Add5~110\);

-- Location: LABCELL_X22_Y2_N24
\Add5~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~113_sumout\ = SUM(( tmp_unit(8) ) + ( \score_note0[8]~input_o\ ) + ( \Add5~110\ ))
-- \Add5~114\ = CARRY(( tmp_unit(8) ) + ( \score_note0[8]~input_o\ ) + ( \Add5~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[8]~input_o\,
	datad => ALT_INV_tmp_unit(8),
	cin => \Add5~110\,
	sumout => \Add5~113_sumout\,
	cout => \Add5~114\);

-- Location: LABCELL_X22_Y2_N15
\Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~49_sumout\ = SUM(( tmp_unit(5) ) + ( \score_note0[5]~input_o\ ) + ( \Add5~46\ ))
-- \Add5~50\ = CARRY(( tmp_unit(5) ) + ( \score_note0[5]~input_o\ ) + ( \Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[5]~input_o\,
	datad => ALT_INV_tmp_unit(5),
	cin => \Add5~46\,
	sumout => \Add5~49_sumout\,
	cout => \Add5~50\);

-- Location: LABCELL_X22_Y2_N18
\Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~53_sumout\ = SUM(( tmp_unit(6) ) + ( \score_note0[6]~input_o\ ) + ( \Add5~50\ ))
-- \Add5~54\ = CARRY(( tmp_unit(6) ) + ( \score_note0[6]~input_o\ ) + ( \Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[6]~input_o\,
	datad => ALT_INV_tmp_unit(6),
	cin => \Add5~50\,
	sumout => \Add5~53_sumout\,
	cout => \Add5~54\);

-- Location: LABCELL_X22_Y2_N6
\Add5~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~65_sumout\ = SUM(( tmp_unit(2) ) + ( \score_note0[2]~input_o\ ) + ( \Add5~62\ ))
-- \Add5~66\ = CARRY(( tmp_unit(2) ) + ( \score_note0[2]~input_o\ ) + ( \Add5~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[2]~input_o\,
	datad => ALT_INV_tmp_unit(2),
	cin => \Add5~62\,
	sumout => \Add5~65_sumout\,
	cout => \Add5~66\);

-- Location: LABCELL_X22_Y2_N9
\Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~57_sumout\ = SUM(( tmp_unit(3) ) + ( \score_note0[3]~input_o\ ) + ( \Add5~66\ ))
-- \Add5~58\ = CARRY(( tmp_unit(3) ) + ( \score_note0[3]~input_o\ ) + ( \Add5~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[3]~input_o\,
	datad => ALT_INV_tmp_unit(3),
	cin => \Add5~66\,
	sumout => \Add5~57_sumout\,
	cout => \Add5~58\);

-- Location: LABCELL_X22_Y4_N3
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( \Add5~65_sumout\ ) + ( VCC ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( \Add5~65_sumout\ ) + ( VCC ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~65_sumout\,
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: LABCELL_X22_Y4_N6
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( \Add5~57_sumout\ ) + ( GND ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( \Add5~57_sumout\ ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~57_sumout\,
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: LABCELL_X22_Y4_N9
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( \Add5~45_sumout\ ) + ( VCC ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( \Add5~45_sumout\ ) + ( VCC ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~45_sumout\,
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: LABCELL_X22_Y4_N12
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( \Add5~49_sumout\ ) + ( VCC ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( \Add5~49_sumout\ ) + ( VCC ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~49_sumout\,
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: LABCELL_X22_Y4_N15
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( \Add5~53_sumout\ ) + ( VCC ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( \Add5~53_sumout\ ) + ( VCC ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~53_sumout\,
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: LABCELL_X22_Y4_N18
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( \Add5~109_sumout\ ) + ( VCC ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( \Add5~109_sumout\ ) + ( VCC ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~109_sumout\,
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: LABCELL_X22_Y4_N21
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( \Add5~113_sumout\ ) + ( VCC ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( \Add5~113_sumout\ ) + ( VCC ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~113_sumout\,
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: LABCELL_X22_Y4_N24
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( \Add5~117_sumout\ ) + ( VCC ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( \Add5~117_sumout\ ) + ( VCC ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~117_sumout\,
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: LABCELL_X22_Y4_N27
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( \Add5~121_sumout\ ) + ( VCC ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( \Add5~121_sumout\ ) + ( VCC ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~121_sumout\,
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: LABCELL_X22_Y4_N30
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( \Add5~89_sumout\ ) + ( VCC ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( \Add5~89_sumout\ ) + ( VCC ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~89_sumout\,
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: LABCELL_X22_Y4_N33
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( \Add5~25_sumout\ ) + ( VCC ) + ( \Add3~42\ ))
-- \Add3~46\ = CARRY(( \Add5~25_sumout\ ) + ( VCC ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~25_sumout\,
	cin => \Add3~42\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: LABCELL_X22_Y4_N36
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( \Add5~29_sumout\ ) + ( VCC ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( \Add5~29_sumout\ ) + ( VCC ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~29_sumout\,
	cin => \Add3~46\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: LABCELL_X22_Y4_N39
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( \Add5~33_sumout\ ) + ( VCC ) + ( \Add3~50\ ))
-- \Add3~54\ = CARRY(( \Add5~33_sumout\ ) + ( VCC ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~33_sumout\,
	cin => \Add3~50\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: LABCELL_X22_Y4_N42
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( \Add5~37_sumout\ ) + ( VCC ) + ( \Add3~54\ ))
-- \Add3~58\ = CARRY(( \Add5~37_sumout\ ) + ( VCC ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~37_sumout\,
	cin => \Add3~54\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\);

-- Location: LABCELL_X22_Y4_N45
\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( \Add5~93_sumout\ ) + ( VCC ) + ( \Add3~58\ ))
-- \Add3~62\ = CARRY(( \Add5~93_sumout\ ) + ( VCC ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~93_sumout\,
	cin => \Add3~58\,
	sumout => \Add3~61_sumout\,
	cout => \Add3~62\);

-- Location: LABCELL_X22_Y4_N48
\Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~65_sumout\ = SUM(( \Add5~41_sumout\ ) + ( VCC ) + ( \Add3~62\ ))
-- \Add3~66\ = CARRY(( \Add5~41_sumout\ ) + ( VCC ) + ( \Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~41_sumout\,
	cin => \Add3~62\,
	sumout => \Add3~65_sumout\,
	cout => \Add3~66\);

-- Location: LABCELL_X22_Y4_N51
\Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~69_sumout\ = SUM(( \Add5~97_sumout\ ) + ( VCC ) + ( \Add3~66\ ))
-- \Add3~70\ = CARRY(( \Add5~97_sumout\ ) + ( VCC ) + ( \Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~97_sumout\,
	cin => \Add3~66\,
	sumout => \Add3~69_sumout\,
	cout => \Add3~70\);

-- Location: LABCELL_X22_Y4_N54
\Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~73_sumout\ = SUM(( \Add5~101_sumout\ ) + ( VCC ) + ( \Add3~70\ ))
-- \Add3~74\ = CARRY(( \Add5~101_sumout\ ) + ( VCC ) + ( \Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~101_sumout\,
	cin => \Add3~70\,
	sumout => \Add3~73_sumout\,
	cout => \Add3~74\);

-- Location: LABCELL_X22_Y4_N57
\Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~77_sumout\ = SUM(( \Add5~105_sumout\ ) + ( VCC ) + ( \Add3~74\ ))
-- \Add3~78\ = CARRY(( \Add5~105_sumout\ ) + ( VCC ) + ( \Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~105_sumout\,
	cin => \Add3~74\,
	sumout => \Add3~77_sumout\,
	cout => \Add3~78\);

-- Location: LABCELL_X22_Y3_N0
\Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~81_sumout\ = SUM(( \Add5~69_sumout\ ) + ( VCC ) + ( \Add3~78\ ))
-- \Add3~82\ = CARRY(( \Add5~69_sumout\ ) + ( VCC ) + ( \Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~69_sumout\,
	cin => \Add3~78\,
	sumout => \Add3~81_sumout\,
	cout => \Add3~82\);

-- Location: LABCELL_X22_Y3_N3
\Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~85_sumout\ = SUM(( \Add5~5_sumout\ ) + ( VCC ) + ( \Add3~82\ ))
-- \Add3~86\ = CARRY(( \Add5~5_sumout\ ) + ( VCC ) + ( \Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~5_sumout\,
	cin => \Add3~82\,
	sumout => \Add3~85_sumout\,
	cout => \Add3~86\);

-- Location: LABCELL_X22_Y3_N6
\Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~89_sumout\ = SUM(( \Add5~9_sumout\ ) + ( VCC ) + ( \Add3~86\ ))
-- \Add3~90\ = CARRY(( \Add5~9_sumout\ ) + ( VCC ) + ( \Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~9_sumout\,
	cin => \Add3~86\,
	sumout => \Add3~89_sumout\,
	cout => \Add3~90\);

-- Location: LABCELL_X22_Y3_N9
\Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~93_sumout\ = SUM(( \Add5~13_sumout\ ) + ( VCC ) + ( \Add3~90\ ))
-- \Add3~94\ = CARRY(( \Add5~13_sumout\ ) + ( VCC ) + ( \Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~13_sumout\,
	cin => \Add3~90\,
	sumout => \Add3~93_sumout\,
	cout => \Add3~94\);

-- Location: LABCELL_X22_Y3_N12
\Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~97_sumout\ = SUM(( \Add5~17_sumout\ ) + ( VCC ) + ( \Add3~94\ ))
-- \Add3~98\ = CARRY(( \Add5~17_sumout\ ) + ( VCC ) + ( \Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~17_sumout\,
	cin => \Add3~94\,
	sumout => \Add3~97_sumout\,
	cout => \Add3~98\);

-- Location: LABCELL_X22_Y3_N15
\Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~101_sumout\ = SUM(( \Add5~73_sumout\ ) + ( VCC ) + ( \Add3~98\ ))
-- \Add3~102\ = CARRY(( \Add5~73_sumout\ ) + ( VCC ) + ( \Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~73_sumout\,
	cin => \Add3~98\,
	sumout => \Add3~101_sumout\,
	cout => \Add3~102\);

-- Location: LABCELL_X22_Y3_N18
\Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~105_sumout\ = SUM(( \Add5~21_sumout\ ) + ( VCC ) + ( \Add3~102\ ))
-- \Add3~106\ = CARRY(( \Add5~21_sumout\ ) + ( VCC ) + ( \Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~21_sumout\,
	cin => \Add3~102\,
	sumout => \Add3~105_sumout\,
	cout => \Add3~106\);

-- Location: LABCELL_X22_Y3_N21
\Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~109_sumout\ = SUM(( \Add5~77_sumout\ ) + ( VCC ) + ( \Add3~106\ ))
-- \Add3~110\ = CARRY(( \Add5~77_sumout\ ) + ( VCC ) + ( \Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~77_sumout\,
	cin => \Add3~106\,
	sumout => \Add3~109_sumout\,
	cout => \Add3~110\);

-- Location: LABCELL_X22_Y3_N24
\Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~113_sumout\ = SUM(( \Add5~81_sumout\ ) + ( VCC ) + ( \Add3~110\ ))
-- \Add3~114\ = CARRY(( \Add5~81_sumout\ ) + ( VCC ) + ( \Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~81_sumout\,
	cin => \Add3~110\,
	sumout => \Add3~113_sumout\,
	cout => \Add3~114\);

-- Location: LABCELL_X22_Y3_N27
\Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~117_sumout\ = SUM(( \Add5~85_sumout\ ) + ( VCC ) + ( \Add3~114\ ))
-- \Add3~118\ = CARRY(( \Add5~85_sumout\ ) + ( VCC ) + ( \Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add5~85_sumout\,
	cin => \Add3~114\,
	sumout => \Add3~117_sumout\,
	cout => \Add3~118\);

-- Location: LABCELL_X22_Y3_N30
\Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~121_sumout\ = SUM(( \Add5~1_sumout\ ) + ( VCC ) + ( \Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~1_sumout\,
	cin => \Add3~118\,
	sumout => \Add3~121_sumout\);

-- Location: MLABCELL_X21_Y3_N24
\LessThan2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = ( \Add5~65_sumout\ & ( !\Add5~49_sumout\ & ( (!\Add5~57_sumout\ & !\Add5~45_sumout\) ) ) ) # ( !\Add5~65_sumout\ & ( !\Add5~49_sumout\ & ( (!\Add5~45_sumout\ & ((!\Add5~61_sumout\) # (!\Add5~57_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~61_sumout\,
	datab => \ALT_INV_Add5~57_sumout\,
	datac => \ALT_INV_Add5~45_sumout\,
	datae => \ALT_INV_Add5~65_sumout\,
	dataf => \ALT_INV_Add5~49_sumout\,
	combout => \LessThan2~9_combout\);

-- Location: MLABCELL_X21_Y3_N6
\LessThan2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~10_combout\ = ( !\Add5~25_sumout\ & ( !\Add5~37_sumout\ & ( (\LessThan2~9_combout\ & (!\Add5~33_sumout\ & (!\Add5~29_sumout\ & !\Add5~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~9_combout\,
	datab => \ALT_INV_Add5~33_sumout\,
	datac => \ALT_INV_Add5~29_sumout\,
	datad => \ALT_INV_Add5~53_sumout\,
	datae => \ALT_INV_Add5~25_sumout\,
	dataf => \ALT_INV_Add5~37_sumout\,
	combout => \LessThan2~10_combout\);

-- Location: MLABCELL_X21_Y1_N6
\LessThan2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~11_combout\ = ( \LessThan2~10_combout\ & ( !\Add5~17_sumout\ & ( (!\Add5~5_sumout\ & (!\Add5~9_sumout\ & (!\Add5~13_sumout\ & !\Add5~41_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~5_sumout\,
	datab => \ALT_INV_Add5~9_sumout\,
	datac => \ALT_INV_Add5~13_sumout\,
	datad => \ALT_INV_Add5~41_sumout\,
	datae => \ALT_INV_LessThan2~10_combout\,
	dataf => \ALT_INV_Add5~17_sumout\,
	combout => \LessThan2~11_combout\);

-- Location: MLABCELL_X21_Y2_N6
\LessThan2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~12_combout\ = ( !\Add5~117_sumout\ & ( !\Add5~89_sumout\ & ( (!\Add5~109_sumout\ & (!\Add5~113_sumout\ & (!\Add5~121_sumout\ & !\Add5~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~109_sumout\,
	datab => \ALT_INV_Add5~113_sumout\,
	datac => \ALT_INV_Add5~121_sumout\,
	datad => \ALT_INV_Add5~93_sumout\,
	datae => \ALT_INV_Add5~117_sumout\,
	dataf => \ALT_INV_Add5~89_sumout\,
	combout => \LessThan2~12_combout\);

-- Location: MLABCELL_X21_Y1_N48
\LessThan2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~13_combout\ = ( !\Add5~101_sumout\ & ( !\Add5~73_sumout\ & ( (!\Add5~97_sumout\ & (!\Add5~105_sumout\ & (!\Add5~69_sumout\ & \LessThan2~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~97_sumout\,
	datab => \ALT_INV_Add5~105_sumout\,
	datac => \ALT_INV_Add5~69_sumout\,
	datad => \ALT_INV_LessThan2~12_combout\,
	datae => \ALT_INV_Add5~101_sumout\,
	dataf => \ALT_INV_Add5~73_sumout\,
	combout => \LessThan2~13_combout\);

-- Location: MLABCELL_X21_Y1_N54
\tmp_unit~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~36_combout\ = ( \Add5~81_sumout\ & ( \LessThan2~13_combout\ ) ) # ( !\Add5~81_sumout\ & ( \LessThan2~13_combout\ & ( (((!\LessThan2~11_combout\) # (\Add5~85_sumout\)) # (\Add5~77_sumout\)) # (\Add5~21_sumout\) ) ) ) # ( \Add5~81_sumout\ & ( 
-- !\LessThan2~13_combout\ ) ) # ( !\Add5~81_sumout\ & ( !\LessThan2~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~21_sumout\,
	datab => \ALT_INV_Add5~77_sumout\,
	datac => \ALT_INV_Add5~85_sumout\,
	datad => \ALT_INV_LessThan2~11_combout\,
	datae => \ALT_INV_Add5~81_sumout\,
	dataf => \ALT_INV_LessThan2~13_combout\,
	combout => \tmp_unit~36_combout\);

-- Location: MLABCELL_X21_Y1_N0
\tmp_unit~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~37_combout\ = ( !\score_note0[31]~input_o\ & ( (((!\Equal1~0_combout\ & (\tmp_unit~36_combout\ & \Add3~121_sumout\))) # (\Add5~1_sumout\)) ) ) # ( \score_note0[31]~input_o\ & ( (!\Equal0~6_combout\ & (((\Add0~125_sumout\ & (\Add5~1_sumout\))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000000000101000001100111111110000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~6_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Add0~125_sumout\,
	datad => \ALT_INV_Add5~1_sumout\,
	datae => \ALT_INV_score_note0[31]~input_o\,
	dataf => \ALT_INV_Add3~121_sumout\,
	datag => \ALT_INV_tmp_unit~36_combout\,
	combout => \tmp_unit~37_combout\);

-- Location: FF_X21_Y1_N2
\tmp_unit[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~37_combout\,
	clrn => \resetN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(31));

-- Location: LABCELL_X22_Y1_N27
\Add5~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~81_sumout\ = SUM(( tmp_unit(29) ) + ( \score_note0[29]~input_o\ ) + ( \Add5~78\ ))
-- \Add5~82\ = CARRY(( tmp_unit(29) ) + ( \score_note0[29]~input_o\ ) + ( \Add5~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_tmp_unit(29),
	dataf => \ALT_INV_score_note0[29]~input_o\,
	cin => \Add5~78\,
	sumout => \Add5~81_sumout\,
	cout => \Add5~82\);

-- Location: LABCELL_X22_Y1_N30
\Add5~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~85_sumout\ = SUM(( tmp_unit(30) ) + ( \score_note0[30]~input_o\ ) + ( \Add5~82\ ))
-- \Add5~86\ = CARRY(( tmp_unit(30) ) + ( \score_note0[30]~input_o\ ) + ( \Add5~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[30]~input_o\,
	datad => ALT_INV_tmp_unit(30),
	cin => \Add5~82\,
	sumout => \Add5~85_sumout\,
	cout => \Add5~86\);

-- Location: LABCELL_X22_Y1_N33
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( tmp_unit(31) ) + ( \score_note0[31]~input_o\ ) + ( \Add5~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[31]~input_o\,
	datad => ALT_INV_tmp_unit(31),
	cin => \Add5~86\,
	sumout => \Add5~1_sumout\);

-- Location: MLABCELL_X21_Y1_N36
\tmp_unit[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit[8]~6_combout\ = ( \Add5~1_sumout\ & ( (\Equal0~6_combout\ & \score_note0[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~6_combout\,
	datab => \ALT_INV_score_note0[31]~input_o\,
	dataf => \ALT_INV_Add5~1_sumout\,
	combout => \tmp_unit[8]~6_combout\);

-- Location: FF_X23_Y2_N20
\tmp_unit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~5_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(1));

-- Location: LABCELL_X23_Y2_N36
\tmp_unit~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~7_combout\ = ( \tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( (\Add3~5_sumout\ & \tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( \Add3~5_sumout\ ) ) ) # ( \tmp_unit~3_combout\ & ( 
-- !\tmp_unit[8]~2_combout\ & ( (!\tmp_unit~4_combout\ & (\Add0~9_sumout\)) # (\tmp_unit~4_combout\ & ((\Add5~65_sumout\))) ) ) ) # ( !\tmp_unit~3_combout\ & ( !\tmp_unit[8]~2_combout\ & ( \Add5~65_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110000111101010101010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~5_sumout\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_Add5~65_sumout\,
	datad => \ALT_INV_tmp_unit~4_combout\,
	datae => \ALT_INV_tmp_unit~3_combout\,
	dataf => \ALT_INV_tmp_unit[8]~2_combout\,
	combout => \tmp_unit~7_combout\);

-- Location: FF_X23_Y2_N38
\tmp_unit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~7_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(2));

-- Location: LABCELL_X23_Y2_N0
\tmp_unit~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~8_combout\ = ( \tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( (!\tmp_unit~4_combout\) # (\Add3~9_sumout\) ) ) ) # ( !\tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( \Add3~9_sumout\ ) ) ) # ( \tmp_unit~3_combout\ & ( 
-- !\tmp_unit[8]~2_combout\ & ( (!\tmp_unit~4_combout\ & (\Add0~13_sumout\)) # (\tmp_unit~4_combout\ & ((\Add5~57_sumout\))) ) ) ) # ( !\tmp_unit~3_combout\ & ( !\tmp_unit[8]~2_combout\ & ( \Add5~57_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010011001100001111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~13_sumout\,
	datab => \ALT_INV_Add5~57_sumout\,
	datac => \ALT_INV_Add3~9_sumout\,
	datad => \ALT_INV_tmp_unit~4_combout\,
	datae => \ALT_INV_tmp_unit~3_combout\,
	dataf => \ALT_INV_tmp_unit[8]~2_combout\,
	combout => \tmp_unit~8_combout\);

-- Location: FF_X23_Y2_N2
\tmp_unit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~8_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(3));

-- Location: LABCELL_X22_Y2_N12
\Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( tmp_unit(4) ) + ( \score_note0[4]~input_o\ ) + ( \Add5~58\ ))
-- \Add5~46\ = CARRY(( tmp_unit(4) ) + ( \score_note0[4]~input_o\ ) + ( \Add5~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[4]~input_o\,
	datad => ALT_INV_tmp_unit(4),
	cin => \Add5~58\,
	sumout => \Add5~45_sumout\,
	cout => \Add5~46\);

-- Location: LABCELL_X23_Y2_N48
\tmp_unit~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~9_combout\ = ( \tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( (\Add3~13_sumout\ & \tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( \Add3~13_sumout\ ) ) ) # ( \tmp_unit~3_combout\ & ( 
-- !\tmp_unit[8]~2_combout\ & ( (!\tmp_unit~4_combout\ & ((\Add0~17_sumout\))) # (\tmp_unit~4_combout\ & (\Add5~45_sumout\)) ) ) ) # ( !\tmp_unit~3_combout\ & ( !\tmp_unit[8]~2_combout\ & ( \Add5~45_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110101010100110011001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~45_sumout\,
	datab => \ALT_INV_Add3~13_sumout\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_tmp_unit~4_combout\,
	datae => \ALT_INV_tmp_unit~3_combout\,
	dataf => \ALT_INV_tmp_unit[8]~2_combout\,
	combout => \tmp_unit~9_combout\);

-- Location: FF_X23_Y2_N50
\tmp_unit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~9_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(4));

-- Location: LABCELL_X23_Y2_N42
\tmp_unit~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~10_combout\ = ( \tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( (\tmp_unit~4_combout\ & \Add3~17_sumout\) ) ) ) # ( !\tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( \Add3~17_sumout\ ) ) ) # ( \tmp_unit~3_combout\ & ( 
-- !\tmp_unit[8]~2_combout\ & ( (!\tmp_unit~4_combout\ & ((\Add0~21_sumout\))) # (\tmp_unit~4_combout\ & (\Add5~49_sumout\)) ) ) ) # ( !\tmp_unit~3_combout\ & ( !\tmp_unit[8]~2_combout\ & ( \Add5~49_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000100011101110100001111000011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~49_sumout\,
	datab => \ALT_INV_tmp_unit~4_combout\,
	datac => \ALT_INV_Add3~17_sumout\,
	datad => \ALT_INV_Add0~21_sumout\,
	datae => \ALT_INV_tmp_unit~3_combout\,
	dataf => \ALT_INV_tmp_unit[8]~2_combout\,
	combout => \tmp_unit~10_combout\);

-- Location: FF_X23_Y2_N44
\tmp_unit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~10_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(5));

-- Location: LABCELL_X23_Y2_N54
\tmp_unit~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~11_combout\ = ( \tmp_unit~4_combout\ & ( \tmp_unit[8]~2_combout\ & ( \Add3~21_sumout\ ) ) ) # ( !\tmp_unit~4_combout\ & ( \tmp_unit[8]~2_combout\ & ( (\Add3~21_sumout\ & !\tmp_unit~3_combout\) ) ) ) # ( \tmp_unit~4_combout\ & ( 
-- !\tmp_unit[8]~2_combout\ & ( \Add5~53_sumout\ ) ) ) # ( !\tmp_unit~4_combout\ & ( !\tmp_unit[8]~2_combout\ & ( (!\tmp_unit~3_combout\ & ((\Add5~53_sumout\))) # (\tmp_unit~3_combout\ & (\Add0~25_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000001111111100110000001100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~25_sumout\,
	datab => \ALT_INV_Add3~21_sumout\,
	datac => \ALT_INV_tmp_unit~3_combout\,
	datad => \ALT_INV_Add5~53_sumout\,
	datae => \ALT_INV_tmp_unit~4_combout\,
	dataf => \ALT_INV_tmp_unit[8]~2_combout\,
	combout => \tmp_unit~11_combout\);

-- Location: FF_X23_Y2_N56
\tmp_unit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~11_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(6));

-- Location: MLABCELL_X21_Y2_N36
\tmp_unit~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~12_combout\ = ( \tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( (\tmp_unit~4_combout\ & \Add3~25_sumout\) ) ) ) # ( !\tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( \Add3~25_sumout\ ) ) ) # ( \tmp_unit~3_combout\ & ( 
-- !\tmp_unit[8]~2_combout\ & ( (!\tmp_unit~4_combout\ & ((\Add0~29_sumout\))) # (\tmp_unit~4_combout\ & (\Add5~109_sumout\)) ) ) ) # ( !\tmp_unit~3_combout\ & ( !\tmp_unit[8]~2_combout\ & ( \Add5~109_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000111010001110100000000111111110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~109_sumout\,
	datab => \ALT_INV_tmp_unit~4_combout\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_Add3~25_sumout\,
	datae => \ALT_INV_tmp_unit~3_combout\,
	dataf => \ALT_INV_tmp_unit[8]~2_combout\,
	combout => \tmp_unit~12_combout\);

-- Location: FF_X21_Y2_N38
\tmp_unit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~12_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(7));

-- Location: MLABCELL_X21_Y2_N48
\tmp_unit~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~13_combout\ = ( \tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( (\Add3~29_sumout\ & \tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( \Add3~29_sumout\ ) ) ) # ( \tmp_unit~3_combout\ & ( 
-- !\tmp_unit[8]~2_combout\ & ( (!\tmp_unit~4_combout\ & (\Add0~33_sumout\)) # (\tmp_unit~4_combout\ & ((\Add5~113_sumout\))) ) ) ) # ( !\tmp_unit~3_combout\ & ( !\tmp_unit[8]~2_combout\ & ( \Add5~113_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010011001100001111000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_Add5~113_sumout\,
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_tmp_unit~4_combout\,
	datae => \ALT_INV_tmp_unit~3_combout\,
	dataf => \ALT_INV_tmp_unit[8]~2_combout\,
	combout => \tmp_unit~13_combout\);

-- Location: FF_X21_Y2_N50
\tmp_unit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~13_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(8));

-- Location: MLABCELL_X21_Y2_N12
\tmp_unit~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~14_combout\ = ( \tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( (\Add3~33_sumout\ & \tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( \Add3~33_sumout\ ) ) ) # ( \tmp_unit~3_combout\ & ( 
-- !\tmp_unit[8]~2_combout\ & ( (!\tmp_unit~4_combout\ & ((\Add0~37_sumout\))) # (\tmp_unit~4_combout\ & (\Add5~117_sumout\)) ) ) ) # ( !\tmp_unit~3_combout\ & ( !\tmp_unit[8]~2_combout\ & ( \Add5~117_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110101010100001111000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~117_sumout\,
	datab => \ALT_INV_Add0~37_sumout\,
	datac => \ALT_INV_Add3~33_sumout\,
	datad => \ALT_INV_tmp_unit~4_combout\,
	datae => \ALT_INV_tmp_unit~3_combout\,
	dataf => \ALT_INV_tmp_unit[8]~2_combout\,
	combout => \tmp_unit~14_combout\);

-- Location: FF_X21_Y2_N14
\tmp_unit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~14_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(9));

-- Location: LABCELL_X23_Y1_N42
\tmp_unit~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~15_combout\ = ( \tmp_unit[8]~2_combout\ & ( \Add3~37_sumout\ & ( (!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( \Add3~37_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & 
-- ((\Add5~121_sumout\))) # (\tmp_unit~3_combout\ & (\Add0~41_sumout\)))) # (\tmp_unit~4_combout\ & (((\Add5~121_sumout\)))) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( !\Add3~37_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & 
-- ((\Add5~121_sumout\))) # (\tmp_unit~3_combout\ & (\Add0~41_sumout\)))) # (\tmp_unit~4_combout\ & (((\Add5~121_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100100111000000000000000000001111001001111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_unit~4_combout\,
	datab => \ALT_INV_Add0~41_sumout\,
	datac => \ALT_INV_Add5~121_sumout\,
	datad => \ALT_INV_tmp_unit~3_combout\,
	datae => \ALT_INV_tmp_unit[8]~2_combout\,
	dataf => \ALT_INV_Add3~37_sumout\,
	combout => \tmp_unit~15_combout\);

-- Location: FF_X23_Y1_N44
\tmp_unit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~15_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(10));

-- Location: LABCELL_X23_Y1_N18
\tmp_unit~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~16_combout\ = ( \Add0~45_sumout\ & ( \Add3~41_sumout\ & ( (!\tmp_unit[8]~2_combout\ & (((!\tmp_unit~4_combout\ & \tmp_unit~3_combout\)) # (\Add5~89_sumout\))) # (\tmp_unit[8]~2_combout\ & (((!\tmp_unit~3_combout\)) # (\tmp_unit~4_combout\))) ) ) 
-- ) # ( !\Add0~45_sumout\ & ( \Add3~41_sumout\ & ( (!\tmp_unit~4_combout\ & (!\tmp_unit~3_combout\ & ((\tmp_unit[8]~2_combout\) # (\Add5~89_sumout\)))) # (\tmp_unit~4_combout\ & (((\tmp_unit[8]~2_combout\)) # (\Add5~89_sumout\))) ) ) ) # ( \Add0~45_sumout\ 
-- & ( !\Add3~41_sumout\ & ( (!\tmp_unit[8]~2_combout\ & (((!\tmp_unit~4_combout\ & \tmp_unit~3_combout\)) # (\Add5~89_sumout\))) ) ) ) # ( !\Add0~45_sumout\ & ( !\Add3~41_sumout\ & ( (\Add5~89_sumout\ & (!\tmp_unit[8]~2_combout\ & ((!\tmp_unit~3_combout\) # 
-- (\tmp_unit~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000010000001100001011000000111111000101010011111110110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_unit~4_combout\,
	datab => \ALT_INV_Add5~89_sumout\,
	datac => \ALT_INV_tmp_unit[8]~2_combout\,
	datad => \ALT_INV_tmp_unit~3_combout\,
	datae => \ALT_INV_Add0~45_sumout\,
	dataf => \ALT_INV_Add3~41_sumout\,
	combout => \tmp_unit~16_combout\);

-- Location: FF_X23_Y1_N20
\tmp_unit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~16_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(11));

-- Location: LABCELL_X23_Y2_N30
\tmp_unit~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~17_combout\ = ( \tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( (\tmp_unit~4_combout\ & \Add3~45_sumout\) ) ) ) # ( !\tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( \Add3~45_sumout\ ) ) ) # ( \tmp_unit~3_combout\ & ( 
-- !\tmp_unit[8]~2_combout\ & ( (!\tmp_unit~4_combout\ & (\Add0~49_sumout\)) # (\tmp_unit~4_combout\ & ((\Add5~25_sumout\))) ) ) ) # ( !\tmp_unit~3_combout\ & ( !\tmp_unit[8]~2_combout\ & ( \Add5~25_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010001000111011100001111000011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~49_sumout\,
	datab => \ALT_INV_tmp_unit~4_combout\,
	datac => \ALT_INV_Add3~45_sumout\,
	datad => \ALT_INV_Add5~25_sumout\,
	datae => \ALT_INV_tmp_unit~3_combout\,
	dataf => \ALT_INV_tmp_unit[8]~2_combout\,
	combout => \tmp_unit~17_combout\);

-- Location: FF_X23_Y2_N32
\tmp_unit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~17_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(12));

-- Location: LABCELL_X23_Y1_N48
\tmp_unit~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~18_combout\ = ( \tmp_unit[8]~2_combout\ & ( \Add3~49_sumout\ & ( (!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( \Add3~49_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & (\Add5~29_sumout\)) 
-- # (\tmp_unit~3_combout\ & ((\Add0~53_sumout\))))) # (\tmp_unit~4_combout\ & (\Add5~29_sumout\)) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( !\Add3~49_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & (\Add5~29_sumout\)) # (\tmp_unit~3_combout\ & 
-- ((\Add0~53_sumout\))))) # (\tmp_unit~4_combout\ & (\Add5~29_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100011101000000000000000001010101000111011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~29_sumout\,
	datab => \ALT_INV_tmp_unit~4_combout\,
	datac => \ALT_INV_Add0~53_sumout\,
	datad => \ALT_INV_tmp_unit~3_combout\,
	datae => \ALT_INV_tmp_unit[8]~2_combout\,
	dataf => \ALT_INV_Add3~49_sumout\,
	combout => \tmp_unit~18_combout\);

-- Location: FF_X23_Y1_N50
\tmp_unit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~18_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(13));

-- Location: LABCELL_X23_Y1_N54
\tmp_unit~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~19_combout\ = ( \tmp_unit[8]~2_combout\ & ( \Add3~53_sumout\ & ( (!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( \Add3~53_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & 
-- ((\Add5~33_sumout\))) # (\tmp_unit~3_combout\ & (\Add0~57_sumout\)))) # (\tmp_unit~4_combout\ & (((\Add5~33_sumout\)))) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( !\Add3~53_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & ((\Add5~33_sumout\))) # 
-- (\tmp_unit~3_combout\ & (\Add0~57_sumout\)))) # (\tmp_unit~4_combout\ & (((\Add5~33_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101000111000000000000000000001111010001111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~57_sumout\,
	datab => \ALT_INV_tmp_unit~4_combout\,
	datac => \ALT_INV_Add5~33_sumout\,
	datad => \ALT_INV_tmp_unit~3_combout\,
	datae => \ALT_INV_tmp_unit[8]~2_combout\,
	dataf => \ALT_INV_Add3~53_sumout\,
	combout => \tmp_unit~19_combout\);

-- Location: FF_X23_Y1_N56
\tmp_unit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~19_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(14));

-- Location: LABCELL_X22_Y2_N45
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( tmp_unit(15) ) + ( \score_note0[15]~input_o\ ) + ( \Add5~34\ ))
-- \Add5~38\ = CARRY(( tmp_unit(15) ) + ( \score_note0[15]~input_o\ ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[15]~input_o\,
	datac => ALT_INV_tmp_unit(15),
	cin => \Add5~34\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: LABCELL_X23_Y2_N12
\tmp_unit~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~20_combout\ = ( \tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( (\tmp_unit~4_combout\ & \Add3~57_sumout\) ) ) ) # ( !\tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( \Add3~57_sumout\ ) ) ) # ( \tmp_unit~3_combout\ & ( 
-- !\tmp_unit[8]~2_combout\ & ( (!\tmp_unit~4_combout\ & ((\Add0~61_sumout\))) # (\tmp_unit~4_combout\ & (\Add5~37_sumout\)) ) ) ) # ( !\tmp_unit~3_combout\ & ( !\tmp_unit[8]~2_combout\ & ( \Add5~37_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000100011101110100001111000011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~37_sumout\,
	datab => \ALT_INV_tmp_unit~4_combout\,
	datac => \ALT_INV_Add3~57_sumout\,
	datad => \ALT_INV_Add0~61_sumout\,
	datae => \ALT_INV_tmp_unit~3_combout\,
	dataf => \ALT_INV_tmp_unit[8]~2_combout\,
	combout => \tmp_unit~20_combout\);

-- Location: FF_X23_Y2_N14
\tmp_unit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~20_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(15));

-- Location: LABCELL_X22_Y2_N48
\Add5~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~93_sumout\ = SUM(( tmp_unit(16) ) + ( \score_note0[16]~input_o\ ) + ( \Add5~38\ ))
-- \Add5~94\ = CARRY(( tmp_unit(16) ) + ( \score_note0[16]~input_o\ ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_score_note0[16]~input_o\,
	datac => ALT_INV_tmp_unit(16),
	cin => \Add5~38\,
	sumout => \Add5~93_sumout\,
	cout => \Add5~94\);

-- Location: LABCELL_X22_Y3_N51
\tmp_unit~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~21_combout\ = ( \tmp_unit[8]~2_combout\ & ( \tmp_unit~3_combout\ & ( (\Add3~61_sumout\ & \tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( \tmp_unit~3_combout\ & ( (!\tmp_unit~4_combout\ & (\Add0~65_sumout\)) # (\tmp_unit~4_combout\ & 
-- ((\Add5~93_sumout\))) ) ) ) # ( \tmp_unit[8]~2_combout\ & ( !\tmp_unit~3_combout\ & ( \Add3~61_sumout\ ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( !\tmp_unit~3_combout\ & ( \Add5~93_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011000011110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~61_sumout\,
	datab => \ALT_INV_Add0~65_sumout\,
	datac => \ALT_INV_Add5~93_sumout\,
	datad => \ALT_INV_tmp_unit~4_combout\,
	datae => \ALT_INV_tmp_unit[8]~2_combout\,
	dataf => \ALT_INV_tmp_unit~3_combout\,
	combout => \tmp_unit~21_combout\);

-- Location: FF_X22_Y3_N53
\tmp_unit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~21_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(16));

-- Location: LABCELL_X22_Y2_N51
\Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( tmp_unit(17) ) + ( \score_note0[17]~input_o\ ) + ( \Add5~94\ ))
-- \Add5~42\ = CARRY(( tmp_unit(17) ) + ( \score_note0[17]~input_o\ ) + ( \Add5~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[17]~input_o\,
	datad => ALT_INV_tmp_unit(17),
	cin => \Add5~94\,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\);

-- Location: LABCELL_X23_Y1_N30
\tmp_unit~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~22_combout\ = ( \tmp_unit[8]~2_combout\ & ( \Add3~65_sumout\ & ( (!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( \Add3~65_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & (\Add5~41_sumout\)) 
-- # (\tmp_unit~3_combout\ & ((\Add0~69_sumout\))))) # (\tmp_unit~4_combout\ & (\Add5~41_sumout\)) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( !\Add3~65_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & (\Add5~41_sumout\)) # (\tmp_unit~3_combout\ & 
-- ((\Add0~69_sumout\))))) # (\tmp_unit~4_combout\ & (\Add5~41_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100011011000000000000000000110011000110111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_unit~4_combout\,
	datab => \ALT_INV_Add5~41_sumout\,
	datac => \ALT_INV_Add0~69_sumout\,
	datad => \ALT_INV_tmp_unit~3_combout\,
	datae => \ALT_INV_tmp_unit[8]~2_combout\,
	dataf => \ALT_INV_Add3~65_sumout\,
	combout => \tmp_unit~22_combout\);

-- Location: FF_X23_Y1_N32
\tmp_unit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~22_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(17));

-- Location: LABCELL_X23_Y1_N36
\tmp_unit~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~23_combout\ = ( \tmp_unit[8]~2_combout\ & ( \Add3~69_sumout\ & ( (!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( \Add3~69_sumout\ & ( (!\tmp_unit~3_combout\ & (\Add5~97_sumout\)) # (\tmp_unit~3_combout\ & 
-- ((!\tmp_unit~4_combout\ & ((\Add0~73_sumout\))) # (\tmp_unit~4_combout\ & (\Add5~97_sumout\)))) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( !\Add3~69_sumout\ & ( (!\tmp_unit~3_combout\ & (\Add5~97_sumout\)) # (\tmp_unit~3_combout\ & ((!\tmp_unit~4_combout\ & 
-- ((\Add0~73_sumout\))) # (\tmp_unit~4_combout\ & (\Add5~97_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101110101000000000000000001000101011101011100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~97_sumout\,
	datab => \ALT_INV_tmp_unit~3_combout\,
	datac => \ALT_INV_tmp_unit~4_combout\,
	datad => \ALT_INV_Add0~73_sumout\,
	datae => \ALT_INV_tmp_unit[8]~2_combout\,
	dataf => \ALT_INV_Add3~69_sumout\,
	combout => \tmp_unit~23_combout\);

-- Location: FF_X23_Y1_N38
\tmp_unit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~23_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(18));

-- Location: LABCELL_X23_Y1_N12
\tmp_unit~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~24_combout\ = ( \tmp_unit[8]~2_combout\ & ( \Add3~73_sumout\ & ( (!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( \Add3~73_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & 
-- ((\Add5~101_sumout\))) # (\tmp_unit~3_combout\ & (\Add0~77_sumout\)))) # (\tmp_unit~4_combout\ & (((\Add5~101_sumout\)))) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( !\Add3~73_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & 
-- ((\Add5~101_sumout\))) # (\tmp_unit~3_combout\ & (\Add0~77_sumout\)))) # (\tmp_unit~4_combout\ & (((\Add5~101_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000000000000000000010110111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_unit~4_combout\,
	datab => \ALT_INV_tmp_unit~3_combout\,
	datac => \ALT_INV_Add0~77_sumout\,
	datad => \ALT_INV_Add5~101_sumout\,
	datae => \ALT_INV_tmp_unit[8]~2_combout\,
	dataf => \ALT_INV_Add3~73_sumout\,
	combout => \tmp_unit~24_combout\);

-- Location: FF_X23_Y1_N14
\tmp_unit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~24_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(19));

-- Location: LABCELL_X22_Y1_N36
\tmp_unit~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~25_combout\ = ( \tmp_unit[8]~2_combout\ & ( \Add3~77_sumout\ & ( (!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( \Add3~77_sumout\ & ( (!\tmp_unit~3_combout\ & (\Add5~105_sumout\)) # (\tmp_unit~3_combout\ & 
-- ((!\tmp_unit~4_combout\ & ((\Add0~81_sumout\))) # (\tmp_unit~4_combout\ & (\Add5~105_sumout\)))) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( !\Add3~77_sumout\ & ( (!\tmp_unit~3_combout\ & (\Add5~105_sumout\)) # (\tmp_unit~3_combout\ & ((!\tmp_unit~4_combout\ & 
-- ((\Add0~81_sumout\))) # (\tmp_unit~4_combout\ & (\Add5~105_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101010101000000000000000001000111010101011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~105_sumout\,
	datab => \ALT_INV_tmp_unit~3_combout\,
	datac => \ALT_INV_Add0~81_sumout\,
	datad => \ALT_INV_tmp_unit~4_combout\,
	datae => \ALT_INV_tmp_unit[8]~2_combout\,
	dataf => \ALT_INV_Add3~77_sumout\,
	combout => \tmp_unit~25_combout\);

-- Location: FF_X22_Y1_N38
\tmp_unit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~25_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(20));

-- Location: LABCELL_X22_Y1_N54
\tmp_unit~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~26_combout\ = ( \tmp_unit[8]~2_combout\ & ( \Add3~81_sumout\ & ( (!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( \Add3~81_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & 
-- ((\Add5~69_sumout\))) # (\tmp_unit~3_combout\ & (\Add0~85_sumout\)))) # (\tmp_unit~4_combout\ & (((\Add5~69_sumout\)))) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( !\Add3~81_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & ((\Add5~69_sumout\))) # 
-- (\tmp_unit~3_combout\ & (\Add0~85_sumout\)))) # (\tmp_unit~4_combout\ & (((\Add5~69_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100100111000000000000000000001111001001111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_unit~4_combout\,
	datab => \ALT_INV_Add0~85_sumout\,
	datac => \ALT_INV_Add5~69_sumout\,
	datad => \ALT_INV_tmp_unit~3_combout\,
	datae => \ALT_INV_tmp_unit[8]~2_combout\,
	dataf => \ALT_INV_Add3~81_sumout\,
	combout => \tmp_unit~26_combout\);

-- Location: FF_X22_Y1_N56
\tmp_unit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~26_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(21));

-- Location: LABCELL_X22_Y1_N6
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( tmp_unit(22) ) + ( \score_note0[22]~input_o\ ) + ( \Add5~70\ ))
-- \Add5~6\ = CARRY(( tmp_unit(22) ) + ( \score_note0[22]~input_o\ ) + ( \Add5~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_tmp_unit(22),
	dataf => \ALT_INV_score_note0[22]~input_o\,
	cin => \Add5~70\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: LABCELL_X22_Y1_N48
\tmp_unit~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~27_combout\ = ( \Add3~85_sumout\ & ( \tmp_unit~3_combout\ & ( (!\tmp_unit~4_combout\ & (((!\tmp_unit[8]~2_combout\ & \Add0~89_sumout\)))) # (\tmp_unit~4_combout\ & (((\tmp_unit[8]~2_combout\)) # (\Add5~5_sumout\))) ) ) ) # ( !\Add3~85_sumout\ & 
-- ( \tmp_unit~3_combout\ & ( (!\tmp_unit[8]~2_combout\ & ((!\tmp_unit~4_combout\ & ((\Add0~89_sumout\))) # (\tmp_unit~4_combout\ & (\Add5~5_sumout\)))) ) ) ) # ( \Add3~85_sumout\ & ( !\tmp_unit~3_combout\ & ( (\tmp_unit[8]~2_combout\) # (\Add5~5_sumout\) ) 
-- ) ) # ( !\Add3~85_sumout\ & ( !\tmp_unit~3_combout\ & ( (\Add5~5_sumout\ & !\tmp_unit[8]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100010000101100000001010110110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_unit~4_combout\,
	datab => \ALT_INV_Add5~5_sumout\,
	datac => \ALT_INV_tmp_unit[8]~2_combout\,
	datad => \ALT_INV_Add0~89_sumout\,
	datae => \ALT_INV_Add3~85_sumout\,
	dataf => \ALT_INV_tmp_unit~3_combout\,
	combout => \tmp_unit~27_combout\);

-- Location: FF_X22_Y1_N50
\tmp_unit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~27_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(22));

-- Location: LABCELL_X22_Y1_N9
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( tmp_unit(23) ) + ( \score_note0[23]~input_o\ ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( tmp_unit(23) ) + ( \score_note0[23]~input_o\ ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[23]~input_o\,
	datac => ALT_INV_tmp_unit(23),
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: LABCELL_X22_Y1_N42
\tmp_unit~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~28_combout\ = ( \tmp_unit[8]~2_combout\ & ( \Add3~89_sumout\ & ( (!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( \Add3~89_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & (\Add5~9_sumout\)) # 
-- (\tmp_unit~3_combout\ & ((\Add0~93_sumout\))))) # (\tmp_unit~4_combout\ & (\Add5~9_sumout\)) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( !\Add3~89_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & (\Add5~9_sumout\)) # (\tmp_unit~3_combout\ & 
-- ((\Add0~93_sumout\))))) # (\tmp_unit~4_combout\ & (\Add5~9_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100111011000000000000000000110001001110111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_unit~4_combout\,
	datab => \ALT_INV_Add5~9_sumout\,
	datac => \ALT_INV_tmp_unit~3_combout\,
	datad => \ALT_INV_Add0~93_sumout\,
	datae => \ALT_INV_tmp_unit[8]~2_combout\,
	dataf => \ALT_INV_Add3~89_sumout\,
	combout => \tmp_unit~28_combout\);

-- Location: FF_X22_Y1_N44
\tmp_unit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~28_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(23));

-- Location: MLABCELL_X21_Y1_N24
\tmp_unit~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~29_combout\ = ( \tmp_unit~3_combout\ & ( \Add3~93_sumout\ & ( (!\tmp_unit~4_combout\ & (((!\tmp_unit[8]~2_combout\ & \Add0~97_sumout\)))) # (\tmp_unit~4_combout\ & (((\tmp_unit[8]~2_combout\)) # (\Add5~13_sumout\))) ) ) ) # ( 
-- !\tmp_unit~3_combout\ & ( \Add3~93_sumout\ & ( (\tmp_unit[8]~2_combout\) # (\Add5~13_sumout\) ) ) ) # ( \tmp_unit~3_combout\ & ( !\Add3~93_sumout\ & ( (!\tmp_unit[8]~2_combout\ & ((!\tmp_unit~4_combout\ & ((\Add0~97_sumout\))) # (\tmp_unit~4_combout\ & 
-- (\Add5~13_sumout\)))) ) ) ) # ( !\tmp_unit~3_combout\ & ( !\Add3~93_sumout\ & ( (\Add5~13_sumout\ & !\tmp_unit[8]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000100001101000001011111010111110001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~13_sumout\,
	datab => \ALT_INV_tmp_unit~4_combout\,
	datac => \ALT_INV_tmp_unit[8]~2_combout\,
	datad => \ALT_INV_Add0~97_sumout\,
	datae => \ALT_INV_tmp_unit~3_combout\,
	dataf => \ALT_INV_Add3~93_sumout\,
	combout => \tmp_unit~29_combout\);

-- Location: FF_X21_Y1_N26
\tmp_unit[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~29_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(24));

-- Location: MLABCELL_X21_Y1_N18
\tmp_unit~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~30_combout\ = ( \tmp_unit~3_combout\ & ( \Add3~97_sumout\ & ( (!\tmp_unit~4_combout\ & (\Add0~101_sumout\ & (!\tmp_unit[8]~2_combout\))) # (\tmp_unit~4_combout\ & (((\Add5~17_sumout\) # (\tmp_unit[8]~2_combout\)))) ) ) ) # ( 
-- !\tmp_unit~3_combout\ & ( \Add3~97_sumout\ & ( (\Add5~17_sumout\) # (\tmp_unit[8]~2_combout\) ) ) ) # ( \tmp_unit~3_combout\ & ( !\Add3~97_sumout\ & ( (!\tmp_unit[8]~2_combout\ & ((!\tmp_unit~4_combout\ & (\Add0~101_sumout\)) # (\tmp_unit~4_combout\ & 
-- ((\Add5~17_sumout\))))) ) ) ) # ( !\tmp_unit~3_combout\ & ( !\Add3~97_sumout\ & ( (!\tmp_unit[8]~2_combout\ & \Add5~17_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010000000111000000001111111111110100001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~101_sumout\,
	datab => \ALT_INV_tmp_unit~4_combout\,
	datac => \ALT_INV_tmp_unit[8]~2_combout\,
	datad => \ALT_INV_Add5~17_sumout\,
	datae => \ALT_INV_tmp_unit~3_combout\,
	dataf => \ALT_INV_Add3~97_sumout\,
	combout => \tmp_unit~30_combout\);

-- Location: FF_X21_Y1_N20
\tmp_unit[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~30_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(25));

-- Location: LABCELL_X22_Y3_N54
\tmp_unit~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~31_combout\ = ( \tmp_unit[8]~2_combout\ & ( \Add3~101_sumout\ & ( (!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( \Add3~101_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & 
-- ((\Add5~73_sumout\))) # (\tmp_unit~3_combout\ & (\Add0~105_sumout\)))) # (\tmp_unit~4_combout\ & (((\Add5~73_sumout\)))) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( !\Add3~101_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & ((\Add5~73_sumout\))) 
-- # (\tmp_unit~3_combout\ & (\Add0~105_sumout\)))) # (\tmp_unit~4_combout\ & (((\Add5~73_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011110111000000000000000000000010111101111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_unit~4_combout\,
	datab => \ALT_INV_Add0~105_sumout\,
	datac => \ALT_INV_tmp_unit~3_combout\,
	datad => \ALT_INV_Add5~73_sumout\,
	datae => \ALT_INV_tmp_unit[8]~2_combout\,
	dataf => \ALT_INV_Add3~101_sumout\,
	combout => \tmp_unit~31_combout\);

-- Location: FF_X22_Y3_N56
\tmp_unit[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~31_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(26));

-- Location: LABCELL_X22_Y1_N21
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( tmp_unit(27) ) + ( \score_note0[27]~input_o\ ) + ( \Add5~74\ ))
-- \Add5~22\ = CARRY(( tmp_unit(27) ) + ( \score_note0[27]~input_o\ ) + ( \Add5~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_score_note0[27]~input_o\,
	datad => ALT_INV_tmp_unit(27),
	cin => \Add5~74\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: LABCELL_X23_Y3_N48
\tmp_unit~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~32_combout\ = ( \tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( (\tmp_unit~4_combout\ & \Add3~105_sumout\) ) ) ) # ( !\tmp_unit~3_combout\ & ( \tmp_unit[8]~2_combout\ & ( \Add3~105_sumout\ ) ) ) # ( \tmp_unit~3_combout\ & ( 
-- !\tmp_unit[8]~2_combout\ & ( (!\tmp_unit~4_combout\ & ((\Add0~109_sumout\))) # (\tmp_unit~4_combout\ & (\Add5~21_sumout\)) ) ) ) # ( !\tmp_unit~3_combout\ & ( !\tmp_unit[8]~2_combout\ & ( \Add5~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000110110001101100000000111111110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_unit~4_combout\,
	datab => \ALT_INV_Add5~21_sumout\,
	datac => \ALT_INV_Add0~109_sumout\,
	datad => \ALT_INV_Add3~105_sumout\,
	datae => \ALT_INV_tmp_unit~3_combout\,
	dataf => \ALT_INV_tmp_unit[8]~2_combout\,
	combout => \tmp_unit~32_combout\);

-- Location: FF_X23_Y3_N50
\tmp_unit[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~32_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(27));

-- Location: LABCELL_X23_Y2_N24
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( !\Add5~49_sumout\ & ( !\Add5~53_sumout\ & ( (!\Add5~45_sumout\ & ((!\Add5~57_sumout\) # ((!\Add5~61_sumout\ & !\Add5~65_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~45_sumout\,
	datab => \ALT_INV_Add5~61_sumout\,
	datac => \ALT_INV_Add5~65_sumout\,
	datad => \ALT_INV_Add5~57_sumout\,
	datae => \ALT_INV_Add5~49_sumout\,
	dataf => \ALT_INV_Add5~53_sumout\,
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X23_Y2_N6
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( !\Add5~33_sumout\ & ( !\Add5~41_sumout\ & ( (!\Add5~29_sumout\ & (!\Add5~25_sumout\ & (!\Add5~37_sumout\ & \LessThan2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~29_sumout\,
	datab => \ALT_INV_Add5~25_sumout\,
	datac => \ALT_INV_Add5~37_sumout\,
	datad => \ALT_INV_LessThan2~0_combout\,
	datae => \ALT_INV_Add5~33_sumout\,
	dataf => \ALT_INV_Add5~41_sumout\,
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X24_Y1_N36
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( !\Add5~5_sumout\ & ( !\Add5~21_sumout\ & ( (!\Add5~13_sumout\ & (!\Add5~17_sumout\ & (\LessThan2~1_combout\ & !\Add5~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~13_sumout\,
	datab => \ALT_INV_Add5~17_sumout\,
	datac => \ALT_INV_LessThan2~1_combout\,
	datad => \ALT_INV_Add5~9_sumout\,
	datae => \ALT_INV_Add5~5_sumout\,
	dataf => \ALT_INV_Add5~21_sumout\,
	combout => \LessThan2~2_combout\);

-- Location: MLABCELL_X21_Y2_N3
\LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ( !\Add5~109_sumout\ & ( !\Add5~113_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add5~109_sumout\,
	dataf => \ALT_INV_Add5~113_sumout\,
	combout => \LessThan2~6_combout\);

-- Location: LABCELL_X24_Y1_N54
\LessThan2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = ( \LessThan2~6_combout\ & ( !\Add5~97_sumout\ & ( (!\Add5~121_sumout\ & (!\Add5~117_sumout\ & (!\Add5~89_sumout\ & !\Add5~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~121_sumout\,
	datab => \ALT_INV_Add5~117_sumout\,
	datac => \ALT_INV_Add5~89_sumout\,
	datad => \ALT_INV_Add5~93_sumout\,
	datae => \ALT_INV_LessThan2~6_combout\,
	dataf => \ALT_INV_Add5~97_sumout\,
	combout => \LessThan2~7_combout\);

-- Location: LABCELL_X24_Y1_N48
\LessThan2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = ( \LessThan2~7_combout\ & ( !\Add5~77_sumout\ & ( (!\Add5~73_sumout\ & (!\Add5~69_sumout\ & (!\Add5~101_sumout\ & !\Add5~105_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~73_sumout\,
	datab => \ALT_INV_Add5~69_sumout\,
	datac => \ALT_INV_Add5~101_sumout\,
	datad => \ALT_INV_Add5~105_sumout\,
	datae => \ALT_INV_LessThan2~7_combout\,
	dataf => \ALT_INV_Add5~77_sumout\,
	combout => \LessThan2~8_combout\);

-- Location: LABCELL_X23_Y1_N0
\tmp_unit[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit[8]~2_combout\ = ( \LessThan2~2_combout\ & ( \LessThan2~8_combout\ & ( (!\score_note0[31]~input_o\ & (!\Add5~1_sumout\ & ((\Add5~85_sumout\) # (\Add5~81_sumout\)))) ) ) ) # ( !\LessThan2~2_combout\ & ( \LessThan2~8_combout\ & ( 
-- (!\score_note0[31]~input_o\ & !\Add5~1_sumout\) ) ) ) # ( \LessThan2~2_combout\ & ( !\LessThan2~8_combout\ & ( (!\score_note0[31]~input_o\ & !\Add5~1_sumout\) ) ) ) # ( !\LessThan2~2_combout\ & ( !\LessThan2~8_combout\ & ( (!\score_note0[31]~input_o\ & 
-- !\Add5~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datab => \ALT_INV_Add5~81_sumout\,
	datac => \ALT_INV_Add5~85_sumout\,
	datad => \ALT_INV_Add5~1_sumout\,
	datae => \ALT_INV_LessThan2~2_combout\,
	dataf => \ALT_INV_LessThan2~8_combout\,
	combout => \tmp_unit[8]~2_combout\);

-- Location: LABCELL_X23_Y1_N6
\tmp_unit~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~33_combout\ = ( \Add0~113_sumout\ & ( \Add3~109_sumout\ & ( (!\tmp_unit[8]~2_combout\ & (((!\tmp_unit~4_combout\ & \tmp_unit~3_combout\)) # (\Add5~77_sumout\))) # (\tmp_unit[8]~2_combout\ & (((!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\)))) ) 
-- ) ) # ( !\Add0~113_sumout\ & ( \Add3~109_sumout\ & ( (!\tmp_unit[8]~2_combout\ & (\Add5~77_sumout\ & ((!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\)))) # (\tmp_unit[8]~2_combout\ & (((!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\)))) ) ) ) # ( 
-- \Add0~113_sumout\ & ( !\Add3~109_sumout\ & ( (!\tmp_unit[8]~2_combout\ & (((!\tmp_unit~4_combout\ & \tmp_unit~3_combout\)) # (\Add5~77_sumout\))) ) ) ) # ( !\Add0~113_sumout\ & ( !\Add3~109_sumout\ & ( (!\tmp_unit[8]~2_combout\ & (\Add5~77_sumout\ & 
-- ((!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000010001000101010001001110111000001110111011110100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_unit[8]~2_combout\,
	datab => \ALT_INV_Add5~77_sumout\,
	datac => \ALT_INV_tmp_unit~4_combout\,
	datad => \ALT_INV_tmp_unit~3_combout\,
	datae => \ALT_INV_Add0~113_sumout\,
	dataf => \ALT_INV_Add3~109_sumout\,
	combout => \tmp_unit~33_combout\);

-- Location: FF_X23_Y1_N8
\tmp_unit[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~33_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(28));

-- Location: LABCELL_X23_Y1_N24
\tmp_unit~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~34_combout\ = ( \tmp_unit[8]~2_combout\ & ( \Add3~113_sumout\ & ( (!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( \Add3~113_sumout\ & ( (!\tmp_unit~3_combout\ & (((\Add5~81_sumout\)))) # 
-- (\tmp_unit~3_combout\ & ((!\tmp_unit~4_combout\ & (\Add0~117_sumout\)) # (\tmp_unit~4_combout\ & ((\Add5~81_sumout\))))) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( !\Add3~113_sumout\ & ( (!\tmp_unit~3_combout\ & (((\Add5~81_sumout\)))) # (\tmp_unit~3_combout\ 
-- & ((!\tmp_unit~4_combout\ & (\Add0~117_sumout\)) # (\tmp_unit~4_combout\ & ((\Add5~81_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011011111000000000000000000010000110111111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~117_sumout\,
	datab => \ALT_INV_tmp_unit~3_combout\,
	datac => \ALT_INV_tmp_unit~4_combout\,
	datad => \ALT_INV_Add5~81_sumout\,
	datae => \ALT_INV_tmp_unit[8]~2_combout\,
	dataf => \ALT_INV_Add3~113_sumout\,
	combout => \tmp_unit~34_combout\);

-- Location: FF_X23_Y1_N26
\tmp_unit[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~34_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(29));

-- Location: LABCELL_X22_Y3_N36
\tmp_unit~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~35_combout\ = ( \tmp_unit[8]~2_combout\ & ( \Add3~117_sumout\ & ( (!\tmp_unit~3_combout\) # (\tmp_unit~4_combout\) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( \Add3~117_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & 
-- ((\Add5~85_sumout\))) # (\tmp_unit~3_combout\ & (\Add0~121_sumout\)))) # (\tmp_unit~4_combout\ & (((\Add5~85_sumout\)))) ) ) ) # ( !\tmp_unit[8]~2_combout\ & ( !\Add3~117_sumout\ & ( (!\tmp_unit~4_combout\ & ((!\tmp_unit~3_combout\ & ((\Add5~85_sumout\))) 
-- # (\tmp_unit~3_combout\ & (\Add0~121_sumout\)))) # (\tmp_unit~4_combout\ & (((\Add5~85_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011110111000000000000000000000010111101111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_unit~4_combout\,
	datab => \ALT_INV_Add0~121_sumout\,
	datac => \ALT_INV_tmp_unit~3_combout\,
	datad => \ALT_INV_Add5~85_sumout\,
	datae => \ALT_INV_tmp_unit[8]~2_combout\,
	dataf => \ALT_INV_Add3~117_sumout\,
	combout => \tmp_unit~35_combout\);

-- Location: FF_X22_Y3_N38
\tmp_unit[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_unit~35_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_unit[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(30));

-- Location: LABCELL_X24_Y1_N42
\tmp_unit~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~3_combout\ = ( \LessThan2~2_combout\ & ( \LessThan2~8_combout\ & ( (!\score_note0[31]~input_o\ & (!\Add5~1_sumout\ & ((\Add5~81_sumout\) # (\Add5~85_sumout\)))) # (\score_note0[31]~input_o\ & (((\Add5~1_sumout\)))) ) ) ) # ( 
-- !\LessThan2~2_combout\ & ( \LessThan2~8_combout\ & ( !\score_note0[31]~input_o\ $ (\Add5~1_sumout\) ) ) ) # ( \LessThan2~2_combout\ & ( !\LessThan2~8_combout\ & ( !\score_note0[31]~input_o\ $ (\Add5~1_sumout\) ) ) ) # ( !\LessThan2~2_combout\ & ( 
-- !\LessThan2~8_combout\ & ( !\score_note0[31]~input_o\ $ (\Add5~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010110100101101001010010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datab => \ALT_INV_Add5~85_sumout\,
	datac => \ALT_INV_Add5~1_sumout\,
	datad => \ALT_INV_Add5~81_sumout\,
	datae => \ALT_INV_LessThan2~2_combout\,
	dataf => \ALT_INV_LessThan2~8_combout\,
	combout => \tmp_unit~3_combout\);

-- Location: FF_X24_Y2_N14
\tmp_tens[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(4));

-- Location: LABCELL_X24_Y2_N15
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( tmp_tens(5) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( tmp_tens(5) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datac => ALT_INV_tmp_tens(5),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X24_Y2_N17
\tmp_tens[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(5));

-- Location: LABCELL_X24_Y2_N18
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( tmp_tens(6) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( tmp_tens(6) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datac => ALT_INV_tmp_tens(6),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X24_Y2_N20
\tmp_tens[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(6));

-- Location: LABCELL_X24_Y2_N21
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( tmp_tens(7) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( tmp_tens(7) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datad => ALT_INV_tmp_tens(7),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X24_Y2_N23
\tmp_tens[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(7));

-- Location: LABCELL_X24_Y2_N24
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( tmp_tens(8) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( tmp_tens(8) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datac => ALT_INV_tmp_tens(8),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X24_Y2_N26
\tmp_tens[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(8));

-- Location: LABCELL_X24_Y2_N27
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( tmp_tens(9) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( tmp_tens(9) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datad => ALT_INV_tmp_tens(9),
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X24_Y2_N29
\tmp_tens[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(9));

-- Location: LABCELL_X24_Y2_N30
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( tmp_tens(10) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( tmp_tens(10) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_tmp_tens(10),
	datac => \ALT_INV_score_note0[31]~input_o\,
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X24_Y2_N32
\tmp_tens[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(10));

-- Location: LABCELL_X24_Y2_N33
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( tmp_tens(11) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( tmp_tens(11) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tmp_tens(11),
	dataf => \ALT_INV_score_note0[31]~input_o\,
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X24_Y2_N35
\tmp_tens[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(11));

-- Location: LABCELL_X24_Y2_N36
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( tmp_tens(12) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( tmp_tens(12) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datac => ALT_INV_tmp_tens(12),
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X24_Y2_N38
\tmp_tens[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(12));

-- Location: LABCELL_X24_Y2_N39
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( tmp_tens(13) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( tmp_tens(13) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datac => ALT_INV_tmp_tens(13),
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X24_Y2_N41
\tmp_tens[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(13));

-- Location: LABCELL_X24_Y2_N42
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( tmp_tens(14) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~54\ ))
-- \Add2~58\ = CARRY(( tmp_tens(14) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_tmp_tens(14),
	datac => \ALT_INV_score_note0[31]~input_o\,
	cin => \Add2~54\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X24_Y2_N44
\tmp_tens[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~57_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(14));

-- Location: LABCELL_X24_Y2_N45
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( tmp_tens(15) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~58\ ))
-- \Add2~62\ = CARRY(( tmp_tens(15) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datac => ALT_INV_tmp_tens(15),
	cin => \Add2~58\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X24_Y2_N47
\tmp_tens[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~61_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(15));

-- Location: LABCELL_X24_Y2_N48
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( tmp_tens(16) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~62\ ))
-- \Add2~66\ = CARRY(( tmp_tens(16) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_tmp_tens(16),
	dataf => \ALT_INV_score_note0[31]~input_o\,
	cin => \Add2~62\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X24_Y2_N50
\tmp_tens[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~65_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(16));

-- Location: LABCELL_X24_Y2_N51
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( tmp_tens(17) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~66\ ))
-- \Add2~70\ = CARRY(( tmp_tens(17) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tmp_tens(17),
	dataf => \ALT_INV_score_note0[31]~input_o\,
	cin => \Add2~66\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X24_Y2_N53
\tmp_tens[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~69_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(17));

-- Location: LABCELL_X24_Y2_N54
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( tmp_tens(18) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~70\ ))
-- \Add2~74\ = CARRY(( tmp_tens(18) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datac => ALT_INV_tmp_tens(18),
	cin => \Add2~70\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X24_Y2_N56
\tmp_tens[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~73_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(18));

-- Location: LABCELL_X24_Y2_N57
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( tmp_tens(19) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~74\ ))
-- \Add2~78\ = CARRY(( tmp_tens(19) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datac => ALT_INV_tmp_tens(19),
	cin => \Add2~74\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: FF_X24_Y2_N59
\tmp_tens[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~77_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(19));

-- Location: LABCELL_X24_Y1_N0
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( tmp_tens(20) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~78\ ))
-- \Add2~82\ = CARRY(( tmp_tens(20) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datac => ALT_INV_tmp_tens(20),
	cin => \Add2~78\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: FF_X24_Y1_N2
\tmp_tens[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~81_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(20));

-- Location: LABCELL_X24_Y1_N3
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( tmp_tens(21) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~82\ ))
-- \Add2~86\ = CARRY(( tmp_tens(21) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datad => ALT_INV_tmp_tens(21),
	cin => \Add2~82\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: FF_X24_Y1_N5
\tmp_tens[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~85_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(21));

-- Location: MLABCELL_X25_Y1_N18
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !tmp_tens(19) & ( !tmp_tens(18) & ( (!tmp_tens(16) & (!tmp_tens(21) & (!tmp_tens(17) & !tmp_tens(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tmp_tens(16),
	datab => ALT_INV_tmp_tens(21),
	datac => ALT_INV_tmp_tens(17),
	datad => ALT_INV_tmp_tens(20),
	datae => ALT_INV_tmp_tens(19),
	dataf => ALT_INV_tmp_tens(18),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X24_Y1_N6
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( tmp_tens(22) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~86\ ))
-- \Add2~90\ = CARRY(( tmp_tens(22) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datab => ALT_INV_tmp_tens(22),
	cin => \Add2~86\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: FF_X24_Y1_N8
\tmp_tens[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~89_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(22));

-- Location: LABCELL_X24_Y1_N9
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( tmp_tens(23) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~90\ ))
-- \Add2~94\ = CARRY(( tmp_tens(23) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datac => ALT_INV_tmp_tens(23),
	cin => \Add2~90\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: FF_X24_Y1_N11
\tmp_tens[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~93_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(23));

-- Location: LABCELL_X24_Y1_N12
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( tmp_tens(24) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~94\ ))
-- \Add2~98\ = CARRY(( tmp_tens(24) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datab => ALT_INV_tmp_tens(24),
	cin => \Add2~94\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: FF_X24_Y1_N14
\tmp_tens[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~97_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(24));

-- Location: LABCELL_X24_Y1_N15
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( tmp_tens(25) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~98\ ))
-- \Add2~102\ = CARRY(( tmp_tens(25) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datac => ALT_INV_tmp_tens(25),
	cin => \Add2~98\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: FF_X24_Y1_N17
\tmp_tens[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~101_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(25));

-- Location: LABCELL_X24_Y1_N18
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( tmp_tens(26) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~102\ ))
-- \Add2~106\ = CARRY(( tmp_tens(26) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datac => ALT_INV_tmp_tens(26),
	cin => \Add2~102\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: FF_X24_Y1_N20
\tmp_tens[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~105_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(26));

-- Location: LABCELL_X24_Y1_N21
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( tmp_tens(27) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~106\ ))
-- \Add2~110\ = CARRY(( tmp_tens(27) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datad => ALT_INV_tmp_tens(27),
	cin => \Add2~106\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: FF_X24_Y1_N23
\tmp_tens[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~109_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(27));

-- Location: MLABCELL_X25_Y1_N12
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !tmp_tens(24) & ( !tmp_tens(27) & ( (!tmp_tens(1) & (!tmp_tens(23) & (!tmp_tens(26) & !tmp_tens(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tmp_tens(1),
	datab => ALT_INV_tmp_tens(23),
	datac => ALT_INV_tmp_tens(26),
	datad => ALT_INV_tmp_tens(22),
	datae => ALT_INV_tmp_tens(24),
	dataf => ALT_INV_tmp_tens(27),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X25_Y1_N51
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !tmp_tens(9) & ( (!tmp_tens(4) & (!tmp_tens(5) & (!tmp_tens(6) & !tmp_tens(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tmp_tens(4),
	datab => ALT_INV_tmp_tens(5),
	datac => ALT_INV_tmp_tens(6),
	datad => ALT_INV_tmp_tens(7),
	dataf => ALT_INV_tmp_tens(9),
	combout => \Equal0~4_combout\);

-- Location: MLABCELL_X25_Y1_N0
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !tmp_tens(12) & ( !tmp_tens(14) & ( (!tmp_tens(10) & (!tmp_tens(11) & (!tmp_tens(15) & !tmp_tens(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tmp_tens(10),
	datab => ALT_INV_tmp_tens(11),
	datac => ALT_INV_tmp_tens(15),
	datad => ALT_INV_tmp_tens(13),
	datae => ALT_INV_tmp_tens(12),
	dataf => ALT_INV_tmp_tens(14),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X24_Y1_N24
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( tmp_tens(28) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~110\ ))
-- \Add2~114\ = CARRY(( tmp_tens(28) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datac => ALT_INV_tmp_tens(28),
	cin => \Add2~110\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: FF_X24_Y1_N26
\tmp_tens[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~113_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(28));

-- Location: LABCELL_X24_Y1_N27
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( tmp_tens(29) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~114\ ))
-- \Add2~118\ = CARRY(( tmp_tens(29) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datad => ALT_INV_tmp_tens(29),
	cin => \Add2~114\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: FF_X24_Y1_N29
\tmp_tens[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~117_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(29));

-- Location: LABCELL_X24_Y1_N30
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( tmp_tens(30) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~118\ ))
-- \Add2~122\ = CARRY(( tmp_tens(30) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_tmp_tens(30),
	datac => \ALT_INV_score_note0[31]~input_o\,
	cin => \Add2~118\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: FF_X24_Y1_N32
\tmp_tens[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~121_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(30));

-- Location: LABCELL_X24_Y1_N33
\Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( tmp_tens(31) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datad => ALT_INV_tmp_tens(31),
	cin => \Add2~122\,
	sumout => \Add2~125_sumout\);

-- Location: MLABCELL_X25_Y1_N48
\tmp_tens[28]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_tens[28]~1_combout\ = ( \Equal1~0_combout\ & ( !\score_note0[31]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_score_note0[31]~input_o\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \tmp_tens[28]~1_combout\);

-- Location: MLABCELL_X25_Y1_N9
\tmp_tens~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_tens~4_combout\ = ( \Add2~125_sumout\ & ( !\tmp_tens[28]~1_combout\ & ( !\tmp_tens[28]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_tens[28]~3_combout\,
	datae => \ALT_INV_Add2~125_sumout\,
	dataf => \ALT_INV_tmp_tens[28]~1_combout\,
	combout => \tmp_tens~4_combout\);

-- Location: FF_X25_Y1_N11
\tmp_tens[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_tens~4_combout\,
	clrn => \resetN~input_o\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(31));

-- Location: MLABCELL_X25_Y1_N42
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !tmp_tens(28) & ( !tmp_tens(2) & ( (!tmp_tens(25) & (!tmp_tens(29) & (!tmp_tens(30) & !tmp_tens(31)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_tmp_tens(25),
	datab => ALT_INV_tmp_tens(29),
	datac => ALT_INV_tmp_tens(30),
	datad => ALT_INV_tmp_tens(31),
	datae => ALT_INV_tmp_tens(28),
	dataf => ALT_INV_tmp_tens(2),
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X25_Y1_N30
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~2_combout\ & ( \Equal0~3_combout\ & ( (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~4_combout\ & !tmp_tens(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~4_combout\,
	datad => ALT_INV_tmp_tens(8),
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~5_combout\);

-- Location: MLABCELL_X21_Y1_N33
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( !tmp_tens(3) & ( \Equal0~5_combout\ & ( !tmp_tens(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_tmp_tens(0),
	datae => ALT_INV_tmp_tens(3),
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: MLABCELL_X21_Y1_N42
\tmp_tens~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_tens~0_combout\ = ( !\score_note0[31]~input_o\ & ( \Equal0~6_combout\ & ( (\Add2~1_sumout\) # (\Equal1~0_combout\) ) ) ) # ( \score_note0[31]~input_o\ & ( !\Equal0~6_combout\ & ( \Add2~1_sumout\ ) ) ) # ( !\score_note0[31]~input_o\ & ( 
-- !\Equal0~6_combout\ & ( (\Add2~1_sumout\) # (\Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011110000111100111111001111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Add2~1_sumout\,
	datae => \ALT_INV_score_note0[31]~input_o\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \tmp_tens~0_combout\);

-- Location: FF_X21_Y1_N44
\tmp_tens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_tens~0_combout\,
	clrn => \resetN~input_o\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(0));

-- Location: LABCELL_X24_Y2_N3
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( tmp_tens(1) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( tmp_tens(1) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datac => ALT_INV_tmp_tens(1),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: MLABCELL_X25_Y1_N36
\tmp_tens~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_tens~2_combout\ = ( !\tmp_tens[28]~1_combout\ & ( \Add2~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add2~5_sumout\,
	dataf => \ALT_INV_tmp_tens[28]~1_combout\,
	combout => \tmp_tens~2_combout\);

-- Location: FF_X25_Y1_N38
\tmp_tens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tmp_tens~2_combout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(1));

-- Location: LABCELL_X24_Y2_N6
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( tmp_tens(2) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( tmp_tens(2) ) + ( \score_note0[31]~input_o\ ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_score_note0[31]~input_o\,
	datab => ALT_INV_tmp_tens(2),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X24_Y2_N8
\tmp_tens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(2));

-- Location: FF_X24_Y2_N11
\tmp_tens[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	clrn => \resetN~input_o\,
	sclr => \tmp_tens[28]~3_combout\,
	ena => \tmp_unit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_tens(3));

-- Location: MLABCELL_X21_Y1_N12
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( tmp_tens(0) & ( (tmp_tens(3) & \Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_tmp_tens(3),
	datad => \ALT_INV_Equal0~5_combout\,
	dataf => ALT_INV_tmp_tens(0),
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X21_Y2_N54
\tmp_unit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~0_combout\ = ( \Equal0~6_combout\ & ( \Add5~1_sumout\ & ( (\Add5~125_sumout\ & !\score_note0[31]~input_o\) ) ) ) # ( !\Equal0~6_combout\ & ( \Add5~1_sumout\ & ( (!\score_note0[31]~input_o\ & ((\Add5~125_sumout\))) # (\score_note0[31]~input_o\ & 
-- (\Add0~1_sumout\)) ) ) ) # ( \Equal0~6_combout\ & ( !\Add5~1_sumout\ & ( \Add5~125_sumout\ ) ) ) # ( !\Equal0~6_combout\ & ( !\Add5~1_sumout\ & ( \Add5~125_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001100110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Add5~125_sumout\,
	datad => \ALT_INV_score_note0[31]~input_o\,
	datae => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Add5~1_sumout\,
	combout => \tmp_unit~0_combout\);

-- Location: MLABCELL_X21_Y2_N24
\LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ( !\Add5~117_sumout\ & ( !\Add5~113_sumout\ & ( (!\Add5~121_sumout\ & !\Add5~109_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~121_sumout\,
	datac => \ALT_INV_Add5~109_sumout\,
	datae => \ALT_INV_Add5~117_sumout\,
	dataf => \ALT_INV_Add5~113_sumout\,
	combout => \LessThan2~3_combout\);

-- Location: MLABCELL_X21_Y2_N42
\LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ( !\Add5~101_sumout\ & ( !\Add5~105_sumout\ & ( (\LessThan2~3_combout\ & (!\Add5~93_sumout\ & (!\Add5~89_sumout\ & !\Add5~97_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~3_combout\,
	datab => \ALT_INV_Add5~93_sumout\,
	datac => \ALT_INV_Add5~89_sumout\,
	datad => \ALT_INV_Add5~97_sumout\,
	datae => \ALT_INV_Add5~101_sumout\,
	dataf => \ALT_INV_Add5~105_sumout\,
	combout => \LessThan2~4_combout\);

-- Location: MLABCELL_X21_Y2_N18
\LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ( !\Add5~81_sumout\ & ( !\Add5~85_sumout\ & ( (!\Add5~73_sumout\ & (\LessThan2~4_combout\ & (!\Add5~77_sumout\ & !\Add5~69_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~73_sumout\,
	datab => \ALT_INV_LessThan2~4_combout\,
	datac => \ALT_INV_Add5~77_sumout\,
	datad => \ALT_INV_Add5~69_sumout\,
	datae => \ALT_INV_Add5~81_sumout\,
	dataf => \ALT_INV_Add5~85_sumout\,
	combout => \LessThan2~5_combout\);

-- Location: MLABCELL_X21_Y2_N30
\tmp_unit~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_unit~1_combout\ = ( \tmp_unit~0_combout\ & ( \LessThan2~5_combout\ ) ) # ( !\tmp_unit~0_combout\ & ( \LessThan2~5_combout\ & ( (\Equal1~0_combout\ & (!\score_note0[31]~input_o\ & (!\Add5~1_sumout\ & !\LessThan2~2_combout\))) ) ) ) # ( 
-- \tmp_unit~0_combout\ & ( !\LessThan2~5_combout\ ) ) # ( !\tmp_unit~0_combout\ & ( !\LessThan2~5_combout\ & ( (\Equal1~0_combout\ & (!\score_note0[31]~input_o\ & !\Add5~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000111111111111111101000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_score_note0[31]~input_o\,
	datac => \ALT_INV_Add5~1_sumout\,
	datad => \ALT_INV_LessThan2~2_combout\,
	datae => \ALT_INV_tmp_unit~0_combout\,
	dataf => \ALT_INV_LessThan2~5_combout\,
	combout => \tmp_unit~1_combout\);

-- Location: FF_X22_Y2_N14
\tmp_unit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \tmp_unit~1_combout\,
	clrn => \resetN~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp_unit(0));

-- Location: LABCELL_X19_Y65_N0
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


