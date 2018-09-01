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

-- DATE "09/01/2018 14:27:27"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE createSongs_data_type IS

TYPE note_length_7_0_type IS ARRAY (7 DOWNTO 0) OF std_logic;
TYPE note_length_7_0_0_12_type IS ARRAY (0 TO 12) OF note_length_7_0_type;
SUBTYPE note_length_type IS note_length_7_0_0_12_type;

END createSongs_data_type;

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
LIBRARY WORK;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.CREATESONGS_DATA_TYPE.ALL;

ENTITY 	createSongs IS
    PORT (
	CLK : IN std_logic;
	resetN : IN std_logic;
	enable : IN std_logic;
	screen_end : IN std_logic;
	song_choose : IN std_logic_vector(1 DOWNTO 0);
	note_length : BUFFER note_length_type
	);
END createSongs;

-- Design Ports Information
-- note_length[12][0]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[12][1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[12][2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[12][3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[12][4]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[12][5]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[12][6]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[12][7]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[11][0]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[11][1]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[11][2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[11][3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[11][4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[11][5]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[11][6]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[11][7]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[10][0]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[10][1]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[10][2]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[10][3]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[10][4]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[10][5]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[10][6]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[10][7]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[9][0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[9][1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[9][2]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[9][3]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[9][4]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[9][5]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[9][6]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[9][7]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[8][0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[8][1]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[8][2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[8][3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[8][4]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[8][5]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[8][6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[8][7]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[7][0]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[7][1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[7][2]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[7][3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[7][4]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[7][5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[7][6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[7][7]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[6][0]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[6][1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[6][2]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[6][3]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[6][4]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[6][5]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[6][6]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[6][7]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[5][0]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[5][1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[5][2]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[5][3]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[5][4]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[5][5]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[5][6]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[5][7]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[4][0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[4][1]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[4][2]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[4][3]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[4][4]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[4][5]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[4][6]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[4][7]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[3][0]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[3][1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[3][2]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[3][3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[3][4]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[3][5]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[3][6]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[3][7]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[2][0]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[2][1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[2][2]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[2][3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[2][4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[2][5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[2][6]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[2][7]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[1][0]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[1][1]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[1][2]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[1][3]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[1][4]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[1][5]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[1][6]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[1][7]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[0][0]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[0][1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[0][2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[0][3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[0][4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[0][5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[0][6]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- note_length[0][7]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetN	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- song_choose[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- song_choose[1]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- screen_end	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF createSongs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_resetN : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_screen_end : std_logic;
SIGNAL ww_song_choose : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_note_length : note_length_type;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add37~9_sumout\ : std_logic;
SIGNAL \song_choose[0]~input_o\ : std_logic;
SIGNAL \song_choose[1]~input_o\ : std_logic;
SIGNAL \resetN~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \screen_end~input_o\ : std_logic;
SIGNAL \tmp_wait[0][0]~26_combout\ : std_logic;
SIGNAL \index[0][7]~1_combout\ : std_logic;
SIGNAL \tmp_wait[0][0]~q\ : std_logic;
SIGNAL \Add38~126_cout\ : std_logic;
SIGNAL \Add38~5_sumout\ : std_logic;
SIGNAL \tmp_wait[12][1]~q\ : std_logic;
SIGNAL \Add38~6\ : std_logic;
SIGNAL \Add38~1_sumout\ : std_logic;
SIGNAL \tmp_wait[12][2]~q\ : std_logic;
SIGNAL \Add38~2\ : std_logic;
SIGNAL \Add38~29_sumout\ : std_logic;
SIGNAL \tmp_wait[12][3]~q\ : std_logic;
SIGNAL \Add38~30\ : std_logic;
SIGNAL \Add38~25_sumout\ : std_logic;
SIGNAL \tmp_wait[12][4]~q\ : std_logic;
SIGNAL \Add38~26\ : std_logic;
SIGNAL \Add38~21_sumout\ : std_logic;
SIGNAL \tmp_wait[12][5]~q\ : std_logic;
SIGNAL \Add38~22\ : std_logic;
SIGNAL \Add38~17_sumout\ : std_logic;
SIGNAL \tmp_wait[12][6]~q\ : std_logic;
SIGNAL \Add38~18\ : std_logic;
SIGNAL \Add38~13_sumout\ : std_logic;
SIGNAL \tmp_wait[12][7]~q\ : std_logic;
SIGNAL \Add38~14\ : std_logic;
SIGNAL \Add38~9_sumout\ : std_logic;
SIGNAL \tmp_wait[12][8]~q\ : std_logic;
SIGNAL \Add38~10\ : std_logic;
SIGNAL \Add38~53_sumout\ : std_logic;
SIGNAL \tmp_wait[12][9]~q\ : std_logic;
SIGNAL \Add38~54\ : std_logic;
SIGNAL \Add38~49_sumout\ : std_logic;
SIGNAL \tmp_wait[12][10]~q\ : std_logic;
SIGNAL \Add38~50\ : std_logic;
SIGNAL \Add38~45_sumout\ : std_logic;
SIGNAL \tmp_wait[12][11]~q\ : std_logic;
SIGNAL \Add38~46\ : std_logic;
SIGNAL \Add38~41_sumout\ : std_logic;
SIGNAL \tmp_wait[12][12]~q\ : std_logic;
SIGNAL \Add38~42\ : std_logic;
SIGNAL \Add38~37_sumout\ : std_logic;
SIGNAL \tmp_wait[12][13]~q\ : std_logic;
SIGNAL \Add38~38\ : std_logic;
SIGNAL \Add38~33_sumout\ : std_logic;
SIGNAL \tmp_wait[12][14]~q\ : std_logic;
SIGNAL \Equal13~2_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \Add38~34\ : std_logic;
SIGNAL \Add38~77_sumout\ : std_logic;
SIGNAL \tmp_wait[12][15]~q\ : std_logic;
SIGNAL \Add38~78\ : std_logic;
SIGNAL \Add38~73_sumout\ : std_logic;
SIGNAL \tmp_wait[12][16]~q\ : std_logic;
SIGNAL \Add38~74\ : std_logic;
SIGNAL \Add38~69_sumout\ : std_logic;
SIGNAL \tmp_wait[12][17]~q\ : std_logic;
SIGNAL \Add38~70\ : std_logic;
SIGNAL \Add38~65_sumout\ : std_logic;
SIGNAL \tmp_wait[12][18]~q\ : std_logic;
SIGNAL \Add38~66\ : std_logic;
SIGNAL \Add38~61_sumout\ : std_logic;
SIGNAL \tmp_wait[12][19]~q\ : std_logic;
SIGNAL \Add38~62\ : std_logic;
SIGNAL \Add38~57_sumout\ : std_logic;
SIGNAL \tmp_wait[12][20]~q\ : std_logic;
SIGNAL \Equal13~3_combout\ : std_logic;
SIGNAL \Add38~58\ : std_logic;
SIGNAL \Add38~121_sumout\ : std_logic;
SIGNAL \tmp_wait[12][21]~q\ : std_logic;
SIGNAL \Add38~122\ : std_logic;
SIGNAL \Add38~117_sumout\ : std_logic;
SIGNAL \tmp_wait[12][22]~q\ : std_logic;
SIGNAL \Add38~118\ : std_logic;
SIGNAL \Add38~113_sumout\ : std_logic;
SIGNAL \tmp_wait[12][23]~q\ : std_logic;
SIGNAL \Add38~114\ : std_logic;
SIGNAL \Add38~109_sumout\ : std_logic;
SIGNAL \tmp_wait[12][24]~q\ : std_logic;
SIGNAL \Add38~110\ : std_logic;
SIGNAL \Add38~105_sumout\ : std_logic;
SIGNAL \tmp_wait[12][25]~q\ : std_logic;
SIGNAL \Add38~106\ : std_logic;
SIGNAL \Add38~101_sumout\ : std_logic;
SIGNAL \tmp_wait[12][26]~q\ : std_logic;
SIGNAL \Add38~102\ : std_logic;
SIGNAL \Add38~97_sumout\ : std_logic;
SIGNAL \tmp_wait[12][27]~q\ : std_logic;
SIGNAL \Add38~98\ : std_logic;
SIGNAL \Add38~93_sumout\ : std_logic;
SIGNAL \tmp_wait[12][28]~q\ : std_logic;
SIGNAL \Add38~94\ : std_logic;
SIGNAL \Add38~89_sumout\ : std_logic;
SIGNAL \tmp_wait[12][29]~q\ : std_logic;
SIGNAL \Add38~90\ : std_logic;
SIGNAL \Add38~85_sumout\ : std_logic;
SIGNAL \tmp_wait[12][30]~q\ : std_logic;
SIGNAL \Add38~86\ : std_logic;
SIGNAL \Add38~81_sumout\ : std_logic;
SIGNAL \tmp_wait[12][31]~q\ : std_logic;
SIGNAL \Equal13~4_combout\ : std_logic;
SIGNAL \Equal13~5_combout\ : std_logic;
SIGNAL \Equal13~6_combout\ : std_logic;
SIGNAL \index[12][2]~0_combout\ : std_logic;
SIGNAL \index[12][0]~q\ : std_logic;
SIGNAL \Add37~10\ : std_logic;
SIGNAL \Add37~5_sumout\ : std_logic;
SIGNAL \index[12][1]~q\ : std_logic;
SIGNAL \Add37~6\ : std_logic;
SIGNAL \Add37~1_sumout\ : std_logic;
SIGNAL \index[12][2]~q\ : std_logic;
SIGNAL \Mux386~0_combout\ : std_logic;
SIGNAL \note_length~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \note_length[12][2]~reg0_q\ : std_logic;
SIGNAL \note_length~1_combout\ : std_logic;
SIGNAL \note_length[12][5]~reg0_q\ : std_logic;
SIGNAL \note_length[12][6]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \song[0][11][31]~combout\ : std_logic;
SIGNAL \Add34~5_sumout\ : std_logic;
SIGNAL \Add35~126_cout\ : std_logic;
SIGNAL \Add35~5_sumout\ : std_logic;
SIGNAL \tmp_wait[11][1]~q\ : std_logic;
SIGNAL \Add35~6\ : std_logic;
SIGNAL \Add35~1_sumout\ : std_logic;
SIGNAL \tmp_wait[11][2]~q\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \tmp_wait~0_combout\ : std_logic;
SIGNAL \tmp_wait~1_combout\ : std_logic;
SIGNAL \tmp_wait~2_combout\ : std_logic;
SIGNAL \tmp_wait~4_combout\ : std_logic;
SIGNAL \Mux354~0_combout\ : std_logic;
SIGNAL \song[0][11][5]~combout\ : std_logic;
SIGNAL \Mux379~0_combout\ : std_logic;
SIGNAL \Add35~2\ : std_logic;
SIGNAL \Add35~29_sumout\ : std_logic;
SIGNAL \tmp_wait[11][3]~q\ : std_logic;
SIGNAL \Add35~30\ : std_logic;
SIGNAL \Add35~25_sumout\ : std_logic;
SIGNAL \tmp_wait[11][4]~q\ : std_logic;
SIGNAL \Add35~26\ : std_logic;
SIGNAL \Add35~21_sumout\ : std_logic;
SIGNAL \tmp_wait[11][5]~q\ : std_logic;
SIGNAL \Add35~22\ : std_logic;
SIGNAL \Add35~17_sumout\ : std_logic;
SIGNAL \tmp_wait[11][6]~q\ : std_logic;
SIGNAL \Add35~18\ : std_logic;
SIGNAL \Add35~13_sumout\ : std_logic;
SIGNAL \tmp_wait[11][7]~q\ : std_logic;
SIGNAL \Add35~14\ : std_logic;
SIGNAL \Add35~9_sumout\ : std_logic;
SIGNAL \tmp_wait[11][8]~q\ : std_logic;
SIGNAL \tmp_wait~3_combout\ : std_logic;
SIGNAL \Add35~10\ : std_logic;
SIGNAL \Add35~53_sumout\ : std_logic;
SIGNAL \tmp_wait[11][9]~q\ : std_logic;
SIGNAL \tmp_wait~9_combout\ : std_logic;
SIGNAL \Add35~54\ : std_logic;
SIGNAL \Add35~49_sumout\ : std_logic;
SIGNAL \tmp_wait[11][10]~q\ : std_logic;
SIGNAL \tmp_wait~8_combout\ : std_logic;
SIGNAL \Add35~50\ : std_logic;
SIGNAL \Add35~45_sumout\ : std_logic;
SIGNAL \tmp_wait[11][11]~q\ : std_logic;
SIGNAL \tmp_wait~7_combout\ : std_logic;
SIGNAL \Add35~46\ : std_logic;
SIGNAL \Add35~41_sumout\ : std_logic;
SIGNAL \tmp_wait[11][12]~q\ : std_logic;
SIGNAL \tmp_wait~6_combout\ : std_logic;
SIGNAL \Add35~42\ : std_logic;
SIGNAL \Add35~37_sumout\ : std_logic;
SIGNAL \tmp_wait[11][13]~q\ : std_logic;
SIGNAL \tmp_wait~5_combout\ : std_logic;
SIGNAL \Add35~38\ : std_logic;
SIGNAL \Add35~33_sumout\ : std_logic;
SIGNAL \tmp_wait[11][14]~q\ : std_logic;
SIGNAL \Equal12~2_combout\ : std_logic;
SIGNAL \tmp_wait~25_combout\ : std_logic;
SIGNAL \Add35~34\ : std_logic;
SIGNAL \Add35~77_sumout\ : std_logic;
SIGNAL \tmp_wait[11][15]~q\ : std_logic;
SIGNAL \tmp_wait~15_combout\ : std_logic;
SIGNAL \Add35~78\ : std_logic;
SIGNAL \Add35~73_sumout\ : std_logic;
SIGNAL \tmp_wait[11][16]~q\ : std_logic;
SIGNAL \tmp_wait~14_combout\ : std_logic;
SIGNAL \Add35~74\ : std_logic;
SIGNAL \Add35~69_sumout\ : std_logic;
SIGNAL \tmp_wait[11][17]~q\ : std_logic;
SIGNAL \tmp_wait~13_combout\ : std_logic;
SIGNAL \Add35~70\ : std_logic;
SIGNAL \Add35~65_sumout\ : std_logic;
SIGNAL \tmp_wait[11][18]~q\ : std_logic;
SIGNAL \tmp_wait~12_combout\ : std_logic;
SIGNAL \Add35~66\ : std_logic;
SIGNAL \Add35~61_sumout\ : std_logic;
SIGNAL \tmp_wait[11][19]~q\ : std_logic;
SIGNAL \tmp_wait~11_combout\ : std_logic;
SIGNAL \Add35~62\ : std_logic;
SIGNAL \Add35~57_sumout\ : std_logic;
SIGNAL \tmp_wait[11][20]~q\ : std_logic;
SIGNAL \tmp_wait~10_combout\ : std_logic;
SIGNAL \Add35~58\ : std_logic;
SIGNAL \Add35~121_sumout\ : std_logic;
SIGNAL \tmp_wait[11][21]~q\ : std_logic;
SIGNAL \tmp_wait~24_combout\ : std_logic;
SIGNAL \Add35~122\ : std_logic;
SIGNAL \Add35~117_sumout\ : std_logic;
SIGNAL \tmp_wait[11][22]~q\ : std_logic;
SIGNAL \tmp_wait~20_combout\ : std_logic;
SIGNAL \Add35~118\ : std_logic;
SIGNAL \Add35~113_sumout\ : std_logic;
SIGNAL \tmp_wait[11][23]~q\ : std_logic;
SIGNAL \tmp_wait~23_combout\ : std_logic;
SIGNAL \Add35~114\ : std_logic;
SIGNAL \Add35~109_sumout\ : std_logic;
SIGNAL \tmp_wait[11][24]~q\ : std_logic;
SIGNAL \tmp_wait~22_combout\ : std_logic;
SIGNAL \Add35~110\ : std_logic;
SIGNAL \Add35~105_sumout\ : std_logic;
SIGNAL \tmp_wait[11][25]~q\ : std_logic;
SIGNAL \tmp_wait~21_combout\ : std_logic;
SIGNAL \Add35~106\ : std_logic;
SIGNAL \Add35~101_sumout\ : std_logic;
SIGNAL \tmp_wait[11][26]~q\ : std_logic;
SIGNAL \Equal12~5_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \tmp_wait~18_combout\ : std_logic;
SIGNAL \Add35~102\ : std_logic;
SIGNAL \Add35~97_sumout\ : std_logic;
SIGNAL \tmp_wait[11][27]~q\ : std_logic;
SIGNAL \tmp_wait~19_combout\ : std_logic;
SIGNAL \Add35~98\ : std_logic;
SIGNAL \Add35~93_sumout\ : std_logic;
SIGNAL \tmp_wait[11][28]~q\ : std_logic;
SIGNAL \Add35~94\ : std_logic;
SIGNAL \Add35~89_sumout\ : std_logic;
SIGNAL \tmp_wait[11][29]~q\ : std_logic;
SIGNAL \tmp_wait~17_combout\ : std_logic;
SIGNAL \Add35~90\ : std_logic;
SIGNAL \Add35~85_sumout\ : std_logic;
SIGNAL \tmp_wait[11][30]~q\ : std_logic;
SIGNAL \tmp_wait~16_combout\ : std_logic;
SIGNAL \Add35~86\ : std_logic;
SIGNAL \Add35~81_sumout\ : std_logic;
SIGNAL \tmp_wait[11][31]~q\ : std_logic;
SIGNAL \Equal12~4_combout\ : std_logic;
SIGNAL \Equal12~3_combout\ : std_logic;
SIGNAL \Equal12~6_combout\ : std_logic;
SIGNAL \index[11][0]~2_combout\ : std_logic;
SIGNAL \index[11][0]~q\ : std_logic;
SIGNAL \Add34~6\ : std_logic;
SIGNAL \Add34~9_sumout\ : std_logic;
SIGNAL \index[11][1]~q\ : std_logic;
SIGNAL \Add34~10\ : std_logic;
SIGNAL \Add34~1_sumout\ : std_logic;
SIGNAL \index[11][2]~feeder_combout\ : std_logic;
SIGNAL \index[11][2]~q\ : std_logic;
SIGNAL \note_length~2_combout\ : std_logic;
SIGNAL \note_length[11][2]~reg0_q\ : std_logic;
SIGNAL \note_length~3_combout\ : std_logic;
SIGNAL \note_length[11][5]~reg0_q\ : std_logic;
SIGNAL \note_length[11][6]~reg0_q\ : std_logic;
SIGNAL \Add31~9_sumout\ : std_logic;
SIGNAL \index[10][2]~3_combout\ : std_logic;
SIGNAL \index[10][0]~q\ : std_logic;
SIGNAL \Add31~10\ : std_logic;
SIGNAL \Add31~5_sumout\ : std_logic;
SIGNAL \index[10][1]~q\ : std_logic;
SIGNAL \Add31~6\ : std_logic;
SIGNAL \Add31~1_sumout\ : std_logic;
SIGNAL \index[10][2]~q\ : std_logic;
SIGNAL \Mux322~0_combout\ : std_logic;
SIGNAL \Add32~126_cout\ : std_logic;
SIGNAL \Add32~5_sumout\ : std_logic;
SIGNAL \tmp_wait[10][1]~feeder_combout\ : std_logic;
SIGNAL \tmp_wait[10][1]~q\ : std_logic;
SIGNAL \Add32~6\ : std_logic;
SIGNAL \Add32~1_sumout\ : std_logic;
SIGNAL \tmp_wait[10][2]~q\ : std_logic;
SIGNAL \Add32~2\ : std_logic;
SIGNAL \Add32~29_sumout\ : std_logic;
SIGNAL \tmp_wait[10][3]~q\ : std_logic;
SIGNAL \Add32~30\ : std_logic;
SIGNAL \Add32~25_sumout\ : std_logic;
SIGNAL \tmp_wait[10][4]~q\ : std_logic;
SIGNAL \Add32~26\ : std_logic;
SIGNAL \Add32~21_sumout\ : std_logic;
SIGNAL \tmp_wait[10][5]~q\ : std_logic;
SIGNAL \Add32~22\ : std_logic;
SIGNAL \Add32~17_sumout\ : std_logic;
SIGNAL \tmp_wait[10][6]~q\ : std_logic;
SIGNAL \Add32~18\ : std_logic;
SIGNAL \Add32~13_sumout\ : std_logic;
SIGNAL \tmp_wait[10][7]~q\ : std_logic;
SIGNAL \Add32~14\ : std_logic;
SIGNAL \Add32~9_sumout\ : std_logic;
SIGNAL \tmp_wait[10][8]~q\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Add32~10\ : std_logic;
SIGNAL \Add32~53_sumout\ : std_logic;
SIGNAL \tmp_wait[10][9]~q\ : std_logic;
SIGNAL \Add32~54\ : std_logic;
SIGNAL \Add32~49_sumout\ : std_logic;
SIGNAL \tmp_wait[10][10]~q\ : std_logic;
SIGNAL \Add32~50\ : std_logic;
SIGNAL \Add32~45_sumout\ : std_logic;
SIGNAL \tmp_wait[10][11]~q\ : std_logic;
SIGNAL \Add32~46\ : std_logic;
SIGNAL \Add32~41_sumout\ : std_logic;
SIGNAL \tmp_wait[10][12]~q\ : std_logic;
SIGNAL \Add32~42\ : std_logic;
SIGNAL \Add32~37_sumout\ : std_logic;
SIGNAL \tmp_wait[10][13]~q\ : std_logic;
SIGNAL \Add32~38\ : std_logic;
SIGNAL \Add32~33_sumout\ : std_logic;
SIGNAL \tmp_wait[10][14]~q\ : std_logic;
SIGNAL \Add32~34\ : std_logic;
SIGNAL \Add32~77_sumout\ : std_logic;
SIGNAL \tmp_wait[10][15]~q\ : std_logic;
SIGNAL \Add32~78\ : std_logic;
SIGNAL \Add32~73_sumout\ : std_logic;
SIGNAL \tmp_wait[10][16]~q\ : std_logic;
SIGNAL \Add32~74\ : std_logic;
SIGNAL \Add32~69_sumout\ : std_logic;
SIGNAL \tmp_wait[10][17]~q\ : std_logic;
SIGNAL \Add32~70\ : std_logic;
SIGNAL \Add32~65_sumout\ : std_logic;
SIGNAL \tmp_wait[10][18]~q\ : std_logic;
SIGNAL \Add32~66\ : std_logic;
SIGNAL \Add32~61_sumout\ : std_logic;
SIGNAL \tmp_wait[10][19]~q\ : std_logic;
SIGNAL \Add32~62\ : std_logic;
SIGNAL \Add32~57_sumout\ : std_logic;
SIGNAL \tmp_wait[10][20]~q\ : std_logic;
SIGNAL \Equal11~3_combout\ : std_logic;
SIGNAL \Equal11~2_combout\ : std_logic;
SIGNAL \Add32~58\ : std_logic;
SIGNAL \Add32~121_sumout\ : std_logic;
SIGNAL \tmp_wait[10][21]~q\ : std_logic;
SIGNAL \Add32~122\ : std_logic;
SIGNAL \Add32~117_sumout\ : std_logic;
SIGNAL \tmp_wait[10][22]~q\ : std_logic;
SIGNAL \Add32~118\ : std_logic;
SIGNAL \Add32~113_sumout\ : std_logic;
SIGNAL \tmp_wait[10][23]~q\ : std_logic;
SIGNAL \Add32~114\ : std_logic;
SIGNAL \Add32~109_sumout\ : std_logic;
SIGNAL \tmp_wait[10][24]~q\ : std_logic;
SIGNAL \Add32~110\ : std_logic;
SIGNAL \Add32~105_sumout\ : std_logic;
SIGNAL \tmp_wait[10][25]~q\ : std_logic;
SIGNAL \Add32~106\ : std_logic;
SIGNAL \Add32~101_sumout\ : std_logic;
SIGNAL \tmp_wait[10][26]~q\ : std_logic;
SIGNAL \Add32~102\ : std_logic;
SIGNAL \Add32~97_sumout\ : std_logic;
SIGNAL \tmp_wait[10][27]~q\ : std_logic;
SIGNAL \Add32~98\ : std_logic;
SIGNAL \Add32~93_sumout\ : std_logic;
SIGNAL \tmp_wait[10][28]~q\ : std_logic;
SIGNAL \Add32~94\ : std_logic;
SIGNAL \Add32~89_sumout\ : std_logic;
SIGNAL \tmp_wait[10][29]~q\ : std_logic;
SIGNAL \Add32~90\ : std_logic;
SIGNAL \Add32~85_sumout\ : std_logic;
SIGNAL \tmp_wait[10][30]~q\ : std_logic;
SIGNAL \Add32~86\ : std_logic;
SIGNAL \Add32~81_sumout\ : std_logic;
SIGNAL \tmp_wait[10][31]~q\ : std_logic;
SIGNAL \Equal11~4_combout\ : std_logic;
SIGNAL \Equal11~5_combout\ : std_logic;
SIGNAL \Equal11~6_combout\ : std_logic;
SIGNAL \note_length~4_combout\ : std_logic;
SIGNAL \note_length[10][2]~reg0_q\ : std_logic;
SIGNAL \note_length~5_combout\ : std_logic;
SIGNAL \note_length[10][5]~reg0_q\ : std_logic;
SIGNAL \note_length[10][6]~reg0_q\ : std_logic;
SIGNAL \Add28~9_sumout\ : std_logic;
SIGNAL \index[9][2]~4_combout\ : std_logic;
SIGNAL \index[9][0]~q\ : std_logic;
SIGNAL \Add28~10\ : std_logic;
SIGNAL \Add28~5_sumout\ : std_logic;
SIGNAL \index[9][1]~q\ : std_logic;
SIGNAL \Add28~6\ : std_logic;
SIGNAL \Add28~1_sumout\ : std_logic;
SIGNAL \index[9][2]~q\ : std_logic;
SIGNAL \Mux290~0_combout\ : std_logic;
SIGNAL \Add29~126_cout\ : std_logic;
SIGNAL \Add29~5_sumout\ : std_logic;
SIGNAL \tmp_wait[9][1]~q\ : std_logic;
SIGNAL \Add29~6\ : std_logic;
SIGNAL \Add29~1_sumout\ : std_logic;
SIGNAL \tmp_wait[9][2]~q\ : std_logic;
SIGNAL \Add29~2\ : std_logic;
SIGNAL \Add29~29_sumout\ : std_logic;
SIGNAL \tmp_wait[9][3]~q\ : std_logic;
SIGNAL \Add29~30\ : std_logic;
SIGNAL \Add29~25_sumout\ : std_logic;
SIGNAL \tmp_wait[9][4]~q\ : std_logic;
SIGNAL \Add29~26\ : std_logic;
SIGNAL \Add29~21_sumout\ : std_logic;
SIGNAL \tmp_wait[9][5]~q\ : std_logic;
SIGNAL \Add29~22\ : std_logic;
SIGNAL \Add29~17_sumout\ : std_logic;
SIGNAL \tmp_wait[9][6]~q\ : std_logic;
SIGNAL \Add29~18\ : std_logic;
SIGNAL \Add29~13_sumout\ : std_logic;
SIGNAL \tmp_wait[9][7]~q\ : std_logic;
SIGNAL \Add29~14\ : std_logic;
SIGNAL \Add29~9_sumout\ : std_logic;
SIGNAL \tmp_wait[9][8]~q\ : std_logic;
SIGNAL \Add29~10\ : std_logic;
SIGNAL \Add29~53_sumout\ : std_logic;
SIGNAL \tmp_wait[9][9]~q\ : std_logic;
SIGNAL \Add29~54\ : std_logic;
SIGNAL \Add29~49_sumout\ : std_logic;
SIGNAL \tmp_wait[9][10]~q\ : std_logic;
SIGNAL \Add29~50\ : std_logic;
SIGNAL \Add29~45_sumout\ : std_logic;
SIGNAL \tmp_wait[9][11]~q\ : std_logic;
SIGNAL \Add29~46\ : std_logic;
SIGNAL \Add29~41_sumout\ : std_logic;
SIGNAL \tmp_wait[9][12]~q\ : std_logic;
SIGNAL \Add29~42\ : std_logic;
SIGNAL \Add29~37_sumout\ : std_logic;
SIGNAL \tmp_wait[9][13]~q\ : std_logic;
SIGNAL \Add29~38\ : std_logic;
SIGNAL \Add29~33_sumout\ : std_logic;
SIGNAL \tmp_wait[9][14]~q\ : std_logic;
SIGNAL \Equal10~2_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Add29~34\ : std_logic;
SIGNAL \Add29~77_sumout\ : std_logic;
SIGNAL \tmp_wait[9][15]~q\ : std_logic;
SIGNAL \Add29~78\ : std_logic;
SIGNAL \Add29~73_sumout\ : std_logic;
SIGNAL \tmp_wait[9][16]~q\ : std_logic;
SIGNAL \Add29~74\ : std_logic;
SIGNAL \Add29~69_sumout\ : std_logic;
SIGNAL \tmp_wait[9][17]~q\ : std_logic;
SIGNAL \Add29~70\ : std_logic;
SIGNAL \Add29~65_sumout\ : std_logic;
SIGNAL \tmp_wait[9][18]~q\ : std_logic;
SIGNAL \Add29~66\ : std_logic;
SIGNAL \Add29~61_sumout\ : std_logic;
SIGNAL \tmp_wait[9][19]~q\ : std_logic;
SIGNAL \Add29~62\ : std_logic;
SIGNAL \Add29~57_sumout\ : std_logic;
SIGNAL \tmp_wait[9][20]~q\ : std_logic;
SIGNAL \Equal10~3_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \Add29~58\ : std_logic;
SIGNAL \Add29~121_sumout\ : std_logic;
SIGNAL \tmp_wait[9][21]~q\ : std_logic;
SIGNAL \Add29~122\ : std_logic;
SIGNAL \Add29~117_sumout\ : std_logic;
SIGNAL \tmp_wait[9][22]~q\ : std_logic;
SIGNAL \Add29~118\ : std_logic;
SIGNAL \Add29~113_sumout\ : std_logic;
SIGNAL \tmp_wait[9][23]~q\ : std_logic;
SIGNAL \Add29~114\ : std_logic;
SIGNAL \Add29~109_sumout\ : std_logic;
SIGNAL \tmp_wait[9][24]~q\ : std_logic;
SIGNAL \Add29~110\ : std_logic;
SIGNAL \Add29~105_sumout\ : std_logic;
SIGNAL \tmp_wait[9][25]~q\ : std_logic;
SIGNAL \Add29~106\ : std_logic;
SIGNAL \Add29~101_sumout\ : std_logic;
SIGNAL \tmp_wait[9][26]~q\ : std_logic;
SIGNAL \Add29~102\ : std_logic;
SIGNAL \Add29~97_sumout\ : std_logic;
SIGNAL \tmp_wait[9][27]~q\ : std_logic;
SIGNAL \Add29~98\ : std_logic;
SIGNAL \Add29~93_sumout\ : std_logic;
SIGNAL \tmp_wait[9][28]~q\ : std_logic;
SIGNAL \Add29~94\ : std_logic;
SIGNAL \Add29~89_sumout\ : std_logic;
SIGNAL \tmp_wait[9][29]~q\ : std_logic;
SIGNAL \Add29~90\ : std_logic;
SIGNAL \Add29~85_sumout\ : std_logic;
SIGNAL \tmp_wait[9][30]~q\ : std_logic;
SIGNAL \Add29~86\ : std_logic;
SIGNAL \Add29~81_sumout\ : std_logic;
SIGNAL \tmp_wait[9][31]~q\ : std_logic;
SIGNAL \Equal10~4_combout\ : std_logic;
SIGNAL \Equal10~5_combout\ : std_logic;
SIGNAL \Equal10~6_combout\ : std_logic;
SIGNAL \note_length~6_combout\ : std_logic;
SIGNAL \note_length[9][2]~reg0_q\ : std_logic;
SIGNAL \note_length~7_combout\ : std_logic;
SIGNAL \note_length[9][5]~reg0feeder_combout\ : std_logic;
SIGNAL \note_length[9][5]~reg0_q\ : std_logic;
SIGNAL \note_length[9][6]~reg0_q\ : std_logic;
SIGNAL \Add25~9_sumout\ : std_logic;
SIGNAL \Add26~126_cout\ : std_logic;
SIGNAL \Add26~5_sumout\ : std_logic;
SIGNAL \tmp_wait[8][1]~feeder_combout\ : std_logic;
SIGNAL \tmp_wait[8][1]~q\ : std_logic;
SIGNAL \Add26~6\ : std_logic;
SIGNAL \Add26~1_sumout\ : std_logic;
SIGNAL \tmp_wait[8][2]~q\ : std_logic;
SIGNAL \Add26~2\ : std_logic;
SIGNAL \Add26~29_sumout\ : std_logic;
SIGNAL \tmp_wait[8][3]~q\ : std_logic;
SIGNAL \Add26~30\ : std_logic;
SIGNAL \Add26~25_sumout\ : std_logic;
SIGNAL \tmp_wait[8][4]~q\ : std_logic;
SIGNAL \Add26~26\ : std_logic;
SIGNAL \Add26~21_sumout\ : std_logic;
SIGNAL \tmp_wait[8][5]~q\ : std_logic;
SIGNAL \Add26~22\ : std_logic;
SIGNAL \Add26~17_sumout\ : std_logic;
SIGNAL \tmp_wait[8][6]~q\ : std_logic;
SIGNAL \Add26~18\ : std_logic;
SIGNAL \Add26~13_sumout\ : std_logic;
SIGNAL \tmp_wait[8][7]~q\ : std_logic;
SIGNAL \Add26~14\ : std_logic;
SIGNAL \Add26~9_sumout\ : std_logic;
SIGNAL \tmp_wait[8][8]~q\ : std_logic;
SIGNAL \Add26~10\ : std_logic;
SIGNAL \Add26~53_sumout\ : std_logic;
SIGNAL \tmp_wait[8][9]~q\ : std_logic;
SIGNAL \Add26~54\ : std_logic;
SIGNAL \Add26~49_sumout\ : std_logic;
SIGNAL \tmp_wait[8][10]~q\ : std_logic;
SIGNAL \Add26~50\ : std_logic;
SIGNAL \Add26~45_sumout\ : std_logic;
SIGNAL \tmp_wait[8][11]~q\ : std_logic;
SIGNAL \Add26~46\ : std_logic;
SIGNAL \Add26~41_sumout\ : std_logic;
SIGNAL \tmp_wait[8][12]~q\ : std_logic;
SIGNAL \Add26~42\ : std_logic;
SIGNAL \Add26~37_sumout\ : std_logic;
SIGNAL \tmp_wait[8][13]~q\ : std_logic;
SIGNAL \Add26~38\ : std_logic;
SIGNAL \Add26~33_sumout\ : std_logic;
SIGNAL \tmp_wait[8][14]~q\ : std_logic;
SIGNAL \Add26~34\ : std_logic;
SIGNAL \Add26~77_sumout\ : std_logic;
SIGNAL \tmp_wait[8][15]~q\ : std_logic;
SIGNAL \Add26~78\ : std_logic;
SIGNAL \Add26~73_sumout\ : std_logic;
SIGNAL \tmp_wait[8][16]~q\ : std_logic;
SIGNAL \Add26~74\ : std_logic;
SIGNAL \Add26~69_sumout\ : std_logic;
SIGNAL \tmp_wait[8][17]~q\ : std_logic;
SIGNAL \Add26~70\ : std_logic;
SIGNAL \Add26~65_sumout\ : std_logic;
SIGNAL \tmp_wait[8][18]~q\ : std_logic;
SIGNAL \Add26~66\ : std_logic;
SIGNAL \Add26~61_sumout\ : std_logic;
SIGNAL \tmp_wait[8][19]~q\ : std_logic;
SIGNAL \Add26~62\ : std_logic;
SIGNAL \Add26~57_sumout\ : std_logic;
SIGNAL \tmp_wait[8][20]~q\ : std_logic;
SIGNAL \Equal9~3_combout\ : std_logic;
SIGNAL \Add26~58\ : std_logic;
SIGNAL \Add26~121_sumout\ : std_logic;
SIGNAL \tmp_wait[8][21]~q\ : std_logic;
SIGNAL \Add26~122\ : std_logic;
SIGNAL \Add26~117_sumout\ : std_logic;
SIGNAL \tmp_wait[8][22]~q\ : std_logic;
SIGNAL \Add26~118\ : std_logic;
SIGNAL \Add26~113_sumout\ : std_logic;
SIGNAL \tmp_wait[8][23]~q\ : std_logic;
SIGNAL \Add26~114\ : std_logic;
SIGNAL \Add26~109_sumout\ : std_logic;
SIGNAL \tmp_wait[8][24]~q\ : std_logic;
SIGNAL \Add26~110\ : std_logic;
SIGNAL \Add26~105_sumout\ : std_logic;
SIGNAL \tmp_wait[8][25]~q\ : std_logic;
SIGNAL \Add26~106\ : std_logic;
SIGNAL \Add26~101_sumout\ : std_logic;
SIGNAL \tmp_wait[8][26]~q\ : std_logic;
SIGNAL \Add26~102\ : std_logic;
SIGNAL \Add26~97_sumout\ : std_logic;
SIGNAL \tmp_wait[8][27]~q\ : std_logic;
SIGNAL \Add26~98\ : std_logic;
SIGNAL \Add26~93_sumout\ : std_logic;
SIGNAL \tmp_wait[8][28]~q\ : std_logic;
SIGNAL \Add26~94\ : std_logic;
SIGNAL \Add26~89_sumout\ : std_logic;
SIGNAL \tmp_wait[8][29]~q\ : std_logic;
SIGNAL \Add26~90\ : std_logic;
SIGNAL \Add26~85_sumout\ : std_logic;
SIGNAL \tmp_wait[8][30]~q\ : std_logic;
SIGNAL \Add26~86\ : std_logic;
SIGNAL \Add26~81_sumout\ : std_logic;
SIGNAL \tmp_wait[8][31]~q\ : std_logic;
SIGNAL \Equal9~4_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal9~5_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \Equal9~2_combout\ : std_logic;
SIGNAL \Equal9~6_combout\ : std_logic;
SIGNAL \index[8][2]~5_combout\ : std_logic;
SIGNAL \index[8][0]~q\ : std_logic;
SIGNAL \Add25~10\ : std_logic;
SIGNAL \Add25~5_sumout\ : std_logic;
SIGNAL \index[8][1]~q\ : std_logic;
SIGNAL \Add25~6\ : std_logic;
SIGNAL \Add25~1_sumout\ : std_logic;
SIGNAL \index[8][2]~q\ : std_logic;
SIGNAL \Mux258~0_combout\ : std_logic;
SIGNAL \note_length~8_combout\ : std_logic;
SIGNAL \note_length[8][2]~reg0_q\ : std_logic;
SIGNAL \note_length~9_combout\ : std_logic;
SIGNAL \note_length[8][5]~reg0_q\ : std_logic;
SIGNAL \note_length[8][6]~reg0_q\ : std_logic;
SIGNAL \Add22~9_sumout\ : std_logic;
SIGNAL \Add23~126_cout\ : std_logic;
SIGNAL \Add23~5_sumout\ : std_logic;
SIGNAL \tmp_wait[7][1]~q\ : std_logic;
SIGNAL \Add23~6\ : std_logic;
SIGNAL \Add23~1_sumout\ : std_logic;
SIGNAL \tmp_wait[7][2]~feeder_combout\ : std_logic;
SIGNAL \tmp_wait[7][2]~q\ : std_logic;
SIGNAL \Add23~2\ : std_logic;
SIGNAL \Add23~29_sumout\ : std_logic;
SIGNAL \tmp_wait[7][3]~q\ : std_logic;
SIGNAL \Add23~30\ : std_logic;
SIGNAL \Add23~25_sumout\ : std_logic;
SIGNAL \tmp_wait[7][4]~q\ : std_logic;
SIGNAL \Add23~26\ : std_logic;
SIGNAL \Add23~21_sumout\ : std_logic;
SIGNAL \tmp_wait[7][5]~q\ : std_logic;
SIGNAL \Add23~22\ : std_logic;
SIGNAL \Add23~17_sumout\ : std_logic;
SIGNAL \tmp_wait[7][6]~q\ : std_logic;
SIGNAL \Add23~18\ : std_logic;
SIGNAL \Add23~13_sumout\ : std_logic;
SIGNAL \tmp_wait[7][7]~q\ : std_logic;
SIGNAL \Add23~14\ : std_logic;
SIGNAL \Add23~9_sumout\ : std_logic;
SIGNAL \tmp_wait[7][8]~q\ : std_logic;
SIGNAL \Add23~10\ : std_logic;
SIGNAL \Add23~53_sumout\ : std_logic;
SIGNAL \tmp_wait[7][9]~q\ : std_logic;
SIGNAL \Add23~54\ : std_logic;
SIGNAL \Add23~49_sumout\ : std_logic;
SIGNAL \tmp_wait[7][10]~q\ : std_logic;
SIGNAL \Add23~50\ : std_logic;
SIGNAL \Add23~45_sumout\ : std_logic;
SIGNAL \tmp_wait[7][11]~q\ : std_logic;
SIGNAL \Add23~46\ : std_logic;
SIGNAL \Add23~41_sumout\ : std_logic;
SIGNAL \tmp_wait[7][12]~q\ : std_logic;
SIGNAL \Add23~42\ : std_logic;
SIGNAL \Add23~37_sumout\ : std_logic;
SIGNAL \tmp_wait[7][13]~q\ : std_logic;
SIGNAL \Add23~38\ : std_logic;
SIGNAL \Add23~33_sumout\ : std_logic;
SIGNAL \tmp_wait[7][14]~q\ : std_logic;
SIGNAL \Add23~34\ : std_logic;
SIGNAL \Add23~77_sumout\ : std_logic;
SIGNAL \tmp_wait[7][15]~q\ : std_logic;
SIGNAL \Add23~78\ : std_logic;
SIGNAL \Add23~73_sumout\ : std_logic;
SIGNAL \tmp_wait[7][16]~q\ : std_logic;
SIGNAL \Add23~74\ : std_logic;
SIGNAL \Add23~69_sumout\ : std_logic;
SIGNAL \tmp_wait[7][17]~q\ : std_logic;
SIGNAL \Add23~70\ : std_logic;
SIGNAL \Add23~65_sumout\ : std_logic;
SIGNAL \tmp_wait[7][18]~q\ : std_logic;
SIGNAL \Add23~66\ : std_logic;
SIGNAL \Add23~61_sumout\ : std_logic;
SIGNAL \tmp_wait[7][19]~q\ : std_logic;
SIGNAL \Add23~62\ : std_logic;
SIGNAL \Add23~57_sumout\ : std_logic;
SIGNAL \tmp_wait[7][20]~q\ : std_logic;
SIGNAL \Add23~58\ : std_logic;
SIGNAL \Add23~121_sumout\ : std_logic;
SIGNAL \tmp_wait[7][21]~q\ : std_logic;
SIGNAL \Add23~122\ : std_logic;
SIGNAL \Add23~117_sumout\ : std_logic;
SIGNAL \tmp_wait[7][22]~q\ : std_logic;
SIGNAL \Add23~118\ : std_logic;
SIGNAL \Add23~113_sumout\ : std_logic;
SIGNAL \tmp_wait[7][23]~q\ : std_logic;
SIGNAL \Add23~114\ : std_logic;
SIGNAL \Add23~109_sumout\ : std_logic;
SIGNAL \tmp_wait[7][24]~q\ : std_logic;
SIGNAL \Add23~110\ : std_logic;
SIGNAL \Add23~105_sumout\ : std_logic;
SIGNAL \tmp_wait[7][25]~q\ : std_logic;
SIGNAL \Add23~106\ : std_logic;
SIGNAL \Add23~101_sumout\ : std_logic;
SIGNAL \tmp_wait[7][26]~q\ : std_logic;
SIGNAL \Add23~102\ : std_logic;
SIGNAL \Add23~97_sumout\ : std_logic;
SIGNAL \tmp_wait[7][27]~q\ : std_logic;
SIGNAL \Add23~98\ : std_logic;
SIGNAL \Add23~93_sumout\ : std_logic;
SIGNAL \tmp_wait[7][28]~q\ : std_logic;
SIGNAL \Add23~94\ : std_logic;
SIGNAL \Add23~89_sumout\ : std_logic;
SIGNAL \tmp_wait[7][29]~q\ : std_logic;
SIGNAL \Add23~90\ : std_logic;
SIGNAL \Add23~85_sumout\ : std_logic;
SIGNAL \tmp_wait[7][30]~q\ : std_logic;
SIGNAL \Add23~86\ : std_logic;
SIGNAL \Add23~81_sumout\ : std_logic;
SIGNAL \tmp_wait[7][31]~q\ : std_logic;
SIGNAL \Equal8~4_combout\ : std_logic;
SIGNAL \Equal8~2_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal8~3_combout\ : std_logic;
SIGNAL \Equal8~5_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \Equal8~6_combout\ : std_logic;
SIGNAL \index[7][2]~6_combout\ : std_logic;
SIGNAL \index[7][0]~q\ : std_logic;
SIGNAL \Add22~10\ : std_logic;
SIGNAL \Add22~5_sumout\ : std_logic;
SIGNAL \index[7][1]~q\ : std_logic;
SIGNAL \Add22~6\ : std_logic;
SIGNAL \Add22~1_sumout\ : std_logic;
SIGNAL \index[7][2]~q\ : std_logic;
SIGNAL \Mux226~0_combout\ : std_logic;
SIGNAL \note_length~10_combout\ : std_logic;
SIGNAL \note_length[7][2]~reg0_q\ : std_logic;
SIGNAL \note_length~11_combout\ : std_logic;
SIGNAL \note_length[7][5]~reg0feeder_combout\ : std_logic;
SIGNAL \note_length[7][5]~reg0_q\ : std_logic;
SIGNAL \note_length[7][6]~reg0_q\ : std_logic;
SIGNAL \Add19~9_sumout\ : std_logic;
SIGNAL \Add20~126_cout\ : std_logic;
SIGNAL \Add20~5_sumout\ : std_logic;
SIGNAL \tmp_wait[6][1]~q\ : std_logic;
SIGNAL \Add20~6\ : std_logic;
SIGNAL \Add20~1_sumout\ : std_logic;
SIGNAL \tmp_wait[6][2]~feeder_combout\ : std_logic;
SIGNAL \tmp_wait[6][2]~q\ : std_logic;
SIGNAL \Add20~2\ : std_logic;
SIGNAL \Add20~29_sumout\ : std_logic;
SIGNAL \tmp_wait[6][3]~q\ : std_logic;
SIGNAL \Add20~30\ : std_logic;
SIGNAL \Add20~25_sumout\ : std_logic;
SIGNAL \tmp_wait[6][4]~q\ : std_logic;
SIGNAL \Add20~26\ : std_logic;
SIGNAL \Add20~21_sumout\ : std_logic;
SIGNAL \tmp_wait[6][5]~q\ : std_logic;
SIGNAL \Add20~22\ : std_logic;
SIGNAL \Add20~17_sumout\ : std_logic;
SIGNAL \tmp_wait[6][6]~q\ : std_logic;
SIGNAL \Add20~18\ : std_logic;
SIGNAL \Add20~13_sumout\ : std_logic;
SIGNAL \tmp_wait[6][7]~q\ : std_logic;
SIGNAL \Add20~14\ : std_logic;
SIGNAL \Add20~9_sumout\ : std_logic;
SIGNAL \tmp_wait[6][8]~q\ : std_logic;
SIGNAL \Add20~10\ : std_logic;
SIGNAL \Add20~53_sumout\ : std_logic;
SIGNAL \tmp_wait[6][9]~q\ : std_logic;
SIGNAL \Add20~54\ : std_logic;
SIGNAL \Add20~49_sumout\ : std_logic;
SIGNAL \tmp_wait[6][10]~q\ : std_logic;
SIGNAL \Add20~50\ : std_logic;
SIGNAL \Add20~45_sumout\ : std_logic;
SIGNAL \tmp_wait[6][11]~q\ : std_logic;
SIGNAL \Add20~46\ : std_logic;
SIGNAL \Add20~41_sumout\ : std_logic;
SIGNAL \tmp_wait[6][12]~q\ : std_logic;
SIGNAL \Add20~42\ : std_logic;
SIGNAL \Add20~37_sumout\ : std_logic;
SIGNAL \tmp_wait[6][13]~q\ : std_logic;
SIGNAL \Add20~38\ : std_logic;
SIGNAL \Add20~33_sumout\ : std_logic;
SIGNAL \tmp_wait[6][14]~q\ : std_logic;
SIGNAL \Add20~34\ : std_logic;
SIGNAL \Add20~77_sumout\ : std_logic;
SIGNAL \tmp_wait[6][15]~q\ : std_logic;
SIGNAL \Add20~78\ : std_logic;
SIGNAL \Add20~73_sumout\ : std_logic;
SIGNAL \tmp_wait[6][16]~q\ : std_logic;
SIGNAL \Add20~74\ : std_logic;
SIGNAL \Add20~69_sumout\ : std_logic;
SIGNAL \tmp_wait[6][17]~q\ : std_logic;
SIGNAL \Add20~70\ : std_logic;
SIGNAL \Add20~65_sumout\ : std_logic;
SIGNAL \tmp_wait[6][18]~q\ : std_logic;
SIGNAL \Add20~66\ : std_logic;
SIGNAL \Add20~61_sumout\ : std_logic;
SIGNAL \tmp_wait[6][19]~q\ : std_logic;
SIGNAL \Add20~62\ : std_logic;
SIGNAL \Add20~57_sumout\ : std_logic;
SIGNAL \tmp_wait[6][20]~q\ : std_logic;
SIGNAL \Add20~58\ : std_logic;
SIGNAL \Add20~121_sumout\ : std_logic;
SIGNAL \tmp_wait[6][21]~q\ : std_logic;
SIGNAL \Add20~122\ : std_logic;
SIGNAL \Add20~117_sumout\ : std_logic;
SIGNAL \tmp_wait[6][22]~q\ : std_logic;
SIGNAL \Add20~118\ : std_logic;
SIGNAL \Add20~113_sumout\ : std_logic;
SIGNAL \tmp_wait[6][23]~q\ : std_logic;
SIGNAL \Add20~114\ : std_logic;
SIGNAL \Add20~109_sumout\ : std_logic;
SIGNAL \tmp_wait[6][24]~q\ : std_logic;
SIGNAL \Add20~110\ : std_logic;
SIGNAL \Add20~105_sumout\ : std_logic;
SIGNAL \tmp_wait[6][25]~q\ : std_logic;
SIGNAL \Add20~106\ : std_logic;
SIGNAL \Add20~101_sumout\ : std_logic;
SIGNAL \tmp_wait[6][26]~q\ : std_logic;
SIGNAL \Add20~102\ : std_logic;
SIGNAL \Add20~97_sumout\ : std_logic;
SIGNAL \tmp_wait[6][27]~q\ : std_logic;
SIGNAL \Add20~98\ : std_logic;
SIGNAL \Add20~93_sumout\ : std_logic;
SIGNAL \tmp_wait[6][28]~q\ : std_logic;
SIGNAL \Add20~94\ : std_logic;
SIGNAL \Add20~89_sumout\ : std_logic;
SIGNAL \tmp_wait[6][29]~q\ : std_logic;
SIGNAL \Add20~90\ : std_logic;
SIGNAL \Add20~85_sumout\ : std_logic;
SIGNAL \tmp_wait[6][30]~q\ : std_logic;
SIGNAL \Add20~86\ : std_logic;
SIGNAL \Add20~81_sumout\ : std_logic;
SIGNAL \tmp_wait[6][31]~q\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal7~6_combout\ : std_logic;
SIGNAL \index[6][2]~7_combout\ : std_logic;
SIGNAL \index[6][0]~q\ : std_logic;
SIGNAL \Add19~10\ : std_logic;
SIGNAL \Add19~5_sumout\ : std_logic;
SIGNAL \index[6][1]~q\ : std_logic;
SIGNAL \Add19~6\ : std_logic;
SIGNAL \Add19~1_sumout\ : std_logic;
SIGNAL \index[6][2]~q\ : std_logic;
SIGNAL \Mux194~0_combout\ : std_logic;
SIGNAL \note_length~12_combout\ : std_logic;
SIGNAL \note_length[6][2]~reg0_q\ : std_logic;
SIGNAL \note_length~13_combout\ : std_logic;
SIGNAL \note_length[6][5]~reg0_q\ : std_logic;
SIGNAL \note_length[6][6]~reg0_q\ : std_logic;
SIGNAL \Add16~9_sumout\ : std_logic;
SIGNAL \Add17~126_cout\ : std_logic;
SIGNAL \Add17~5_sumout\ : std_logic;
SIGNAL \tmp_wait[5][1]~q\ : std_logic;
SIGNAL \Add17~6\ : std_logic;
SIGNAL \Add17~1_sumout\ : std_logic;
SIGNAL \tmp_wait[5][2]~q\ : std_logic;
SIGNAL \Add17~2\ : std_logic;
SIGNAL \Add17~29_sumout\ : std_logic;
SIGNAL \tmp_wait[5][3]~q\ : std_logic;
SIGNAL \Add17~30\ : std_logic;
SIGNAL \Add17~25_sumout\ : std_logic;
SIGNAL \tmp_wait[5][4]~q\ : std_logic;
SIGNAL \Add17~26\ : std_logic;
SIGNAL \Add17~21_sumout\ : std_logic;
SIGNAL \tmp_wait[5][5]~q\ : std_logic;
SIGNAL \Add17~22\ : std_logic;
SIGNAL \Add17~17_sumout\ : std_logic;
SIGNAL \tmp_wait[5][6]~q\ : std_logic;
SIGNAL \Add17~18\ : std_logic;
SIGNAL \Add17~13_sumout\ : std_logic;
SIGNAL \tmp_wait[5][7]~q\ : std_logic;
SIGNAL \Add17~14\ : std_logic;
SIGNAL \Add17~9_sumout\ : std_logic;
SIGNAL \tmp_wait[5][8]~q\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Add17~10\ : std_logic;
SIGNAL \Add17~53_sumout\ : std_logic;
SIGNAL \tmp_wait[5][9]~q\ : std_logic;
SIGNAL \Add17~54\ : std_logic;
SIGNAL \Add17~49_sumout\ : std_logic;
SIGNAL \tmp_wait[5][10]~q\ : std_logic;
SIGNAL \Add17~50\ : std_logic;
SIGNAL \Add17~45_sumout\ : std_logic;
SIGNAL \tmp_wait[5][11]~q\ : std_logic;
SIGNAL \Add17~46\ : std_logic;
SIGNAL \Add17~41_sumout\ : std_logic;
SIGNAL \tmp_wait[5][12]~q\ : std_logic;
SIGNAL \Add17~42\ : std_logic;
SIGNAL \Add17~37_sumout\ : std_logic;
SIGNAL \tmp_wait[5][13]~q\ : std_logic;
SIGNAL \Add17~38\ : std_logic;
SIGNAL \Add17~33_sumout\ : std_logic;
SIGNAL \tmp_wait[5][14]~q\ : std_logic;
SIGNAL \Add17~34\ : std_logic;
SIGNAL \Add17~77_sumout\ : std_logic;
SIGNAL \tmp_wait[5][15]~q\ : std_logic;
SIGNAL \Add17~78\ : std_logic;
SIGNAL \Add17~73_sumout\ : std_logic;
SIGNAL \tmp_wait[5][16]~q\ : std_logic;
SIGNAL \Add17~74\ : std_logic;
SIGNAL \Add17~69_sumout\ : std_logic;
SIGNAL \tmp_wait[5][17]~q\ : std_logic;
SIGNAL \Add17~70\ : std_logic;
SIGNAL \Add17~65_sumout\ : std_logic;
SIGNAL \tmp_wait[5][18]~q\ : std_logic;
SIGNAL \Add17~66\ : std_logic;
SIGNAL \Add17~61_sumout\ : std_logic;
SIGNAL \tmp_wait[5][19]~q\ : std_logic;
SIGNAL \Add17~62\ : std_logic;
SIGNAL \Add17~57_sumout\ : std_logic;
SIGNAL \tmp_wait[5][20]~q\ : std_logic;
SIGNAL \Add17~58\ : std_logic;
SIGNAL \Add17~121_sumout\ : std_logic;
SIGNAL \tmp_wait[5][21]~q\ : std_logic;
SIGNAL \Add17~122\ : std_logic;
SIGNAL \Add17~117_sumout\ : std_logic;
SIGNAL \tmp_wait[5][22]~q\ : std_logic;
SIGNAL \Add17~118\ : std_logic;
SIGNAL \Add17~113_sumout\ : std_logic;
SIGNAL \tmp_wait[5][23]~q\ : std_logic;
SIGNAL \Add17~114\ : std_logic;
SIGNAL \Add17~109_sumout\ : std_logic;
SIGNAL \tmp_wait[5][24]~q\ : std_logic;
SIGNAL \Add17~110\ : std_logic;
SIGNAL \Add17~105_sumout\ : std_logic;
SIGNAL \tmp_wait[5][25]~q\ : std_logic;
SIGNAL \Add17~106\ : std_logic;
SIGNAL \Add17~101_sumout\ : std_logic;
SIGNAL \tmp_wait[5][26]~q\ : std_logic;
SIGNAL \Add17~102\ : std_logic;
SIGNAL \Add17~97_sumout\ : std_logic;
SIGNAL \tmp_wait[5][27]~q\ : std_logic;
SIGNAL \Add17~98\ : std_logic;
SIGNAL \Add17~93_sumout\ : std_logic;
SIGNAL \tmp_wait[5][28]~q\ : std_logic;
SIGNAL \Add17~94\ : std_logic;
SIGNAL \Add17~89_sumout\ : std_logic;
SIGNAL \tmp_wait[5][29]~q\ : std_logic;
SIGNAL \Add17~90\ : std_logic;
SIGNAL \Add17~85_sumout\ : std_logic;
SIGNAL \tmp_wait[5][30]~q\ : std_logic;
SIGNAL \Add17~86\ : std_logic;
SIGNAL \Add17~81_sumout\ : std_logic;
SIGNAL \tmp_wait[5][31]~q\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~6_combout\ : std_logic;
SIGNAL \index[5][2]~8_combout\ : std_logic;
SIGNAL \index[5][0]~q\ : std_logic;
SIGNAL \Add16~10\ : std_logic;
SIGNAL \Add16~5_sumout\ : std_logic;
SIGNAL \index[5][1]~q\ : std_logic;
SIGNAL \Add16~6\ : std_logic;
SIGNAL \Add16~1_sumout\ : std_logic;
SIGNAL \index[5][2]~q\ : std_logic;
SIGNAL \Mux162~0_combout\ : std_logic;
SIGNAL \note_length~14_combout\ : std_logic;
SIGNAL \note_length[5][2]~reg0_q\ : std_logic;
SIGNAL \note_length~15_combout\ : std_logic;
SIGNAL \note_length[5][5]~reg0_q\ : std_logic;
SIGNAL \note_length[5][6]~reg0_q\ : std_logic;
SIGNAL \Add13~9_sumout\ : std_logic;
SIGNAL \Add14~126_cout\ : std_logic;
SIGNAL \Add14~5_sumout\ : std_logic;
SIGNAL \tmp_wait[4][1]~q\ : std_logic;
SIGNAL \Add14~6\ : std_logic;
SIGNAL \Add14~1_sumout\ : std_logic;
SIGNAL \tmp_wait[4][2]~q\ : std_logic;
SIGNAL \Add14~2\ : std_logic;
SIGNAL \Add14~29_sumout\ : std_logic;
SIGNAL \tmp_wait[4][3]~q\ : std_logic;
SIGNAL \Add14~30\ : std_logic;
SIGNAL \Add14~25_sumout\ : std_logic;
SIGNAL \tmp_wait[4][4]~q\ : std_logic;
SIGNAL \Add14~26\ : std_logic;
SIGNAL \Add14~21_sumout\ : std_logic;
SIGNAL \tmp_wait[4][5]~q\ : std_logic;
SIGNAL \Add14~22\ : std_logic;
SIGNAL \Add14~17_sumout\ : std_logic;
SIGNAL \tmp_wait[4][6]~q\ : std_logic;
SIGNAL \Add14~18\ : std_logic;
SIGNAL \Add14~13_sumout\ : std_logic;
SIGNAL \tmp_wait[4][7]~q\ : std_logic;
SIGNAL \Add14~14\ : std_logic;
SIGNAL \Add14~9_sumout\ : std_logic;
SIGNAL \tmp_wait[4][8]~q\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Add14~10\ : std_logic;
SIGNAL \Add14~53_sumout\ : std_logic;
SIGNAL \tmp_wait[4][9]~q\ : std_logic;
SIGNAL \Add14~54\ : std_logic;
SIGNAL \Add14~49_sumout\ : std_logic;
SIGNAL \tmp_wait[4][10]~q\ : std_logic;
SIGNAL \Add14~50\ : std_logic;
SIGNAL \Add14~45_sumout\ : std_logic;
SIGNAL \tmp_wait[4][11]~q\ : std_logic;
SIGNAL \Add14~46\ : std_logic;
SIGNAL \Add14~41_sumout\ : std_logic;
SIGNAL \tmp_wait[4][12]~q\ : std_logic;
SIGNAL \Add14~42\ : std_logic;
SIGNAL \Add14~37_sumout\ : std_logic;
SIGNAL \tmp_wait[4][13]~q\ : std_logic;
SIGNAL \Add14~38\ : std_logic;
SIGNAL \Add14~33_sumout\ : std_logic;
SIGNAL \tmp_wait[4][14]~q\ : std_logic;
SIGNAL \Add14~34\ : std_logic;
SIGNAL \Add14~77_sumout\ : std_logic;
SIGNAL \tmp_wait[4][15]~q\ : std_logic;
SIGNAL \Add14~78\ : std_logic;
SIGNAL \Add14~73_sumout\ : std_logic;
SIGNAL \tmp_wait[4][16]~q\ : std_logic;
SIGNAL \Add14~74\ : std_logic;
SIGNAL \Add14~69_sumout\ : std_logic;
SIGNAL \tmp_wait[4][17]~q\ : std_logic;
SIGNAL \Add14~70\ : std_logic;
SIGNAL \Add14~65_sumout\ : std_logic;
SIGNAL \tmp_wait[4][18]~q\ : std_logic;
SIGNAL \Add14~66\ : std_logic;
SIGNAL \Add14~61_sumout\ : std_logic;
SIGNAL \tmp_wait[4][19]~q\ : std_logic;
SIGNAL \Add14~62\ : std_logic;
SIGNAL \Add14~57_sumout\ : std_logic;
SIGNAL \tmp_wait[4][20]~q\ : std_logic;
SIGNAL \Add14~58\ : std_logic;
SIGNAL \Add14~121_sumout\ : std_logic;
SIGNAL \tmp_wait[4][21]~q\ : std_logic;
SIGNAL \Add14~122\ : std_logic;
SIGNAL \Add14~117_sumout\ : std_logic;
SIGNAL \tmp_wait[4][22]~q\ : std_logic;
SIGNAL \Add14~118\ : std_logic;
SIGNAL \Add14~113_sumout\ : std_logic;
SIGNAL \tmp_wait[4][23]~q\ : std_logic;
SIGNAL \Add14~114\ : std_logic;
SIGNAL \Add14~109_sumout\ : std_logic;
SIGNAL \tmp_wait[4][24]~q\ : std_logic;
SIGNAL \Add14~110\ : std_logic;
SIGNAL \Add14~105_sumout\ : std_logic;
SIGNAL \tmp_wait[4][25]~q\ : std_logic;
SIGNAL \Add14~106\ : std_logic;
SIGNAL \Add14~101_sumout\ : std_logic;
SIGNAL \tmp_wait[4][26]~q\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Add14~102\ : std_logic;
SIGNAL \Add14~97_sumout\ : std_logic;
SIGNAL \tmp_wait[4][27]~q\ : std_logic;
SIGNAL \Add14~98\ : std_logic;
SIGNAL \Add14~93_sumout\ : std_logic;
SIGNAL \tmp_wait[4][28]~q\ : std_logic;
SIGNAL \Add14~94\ : std_logic;
SIGNAL \Add14~89_sumout\ : std_logic;
SIGNAL \tmp_wait[4][29]~q\ : std_logic;
SIGNAL \Add14~90\ : std_logic;
SIGNAL \Add14~85_sumout\ : std_logic;
SIGNAL \tmp_wait[4][30]~q\ : std_logic;
SIGNAL \Add14~86\ : std_logic;
SIGNAL \Add14~81_sumout\ : std_logic;
SIGNAL \tmp_wait[4][31]~q\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~6_combout\ : std_logic;
SIGNAL \index[4][2]~9_combout\ : std_logic;
SIGNAL \index[4][0]~q\ : std_logic;
SIGNAL \Add13~10\ : std_logic;
SIGNAL \Add13~5_sumout\ : std_logic;
SIGNAL \index[4][1]~q\ : std_logic;
SIGNAL \Add13~6\ : std_logic;
SIGNAL \Add13~1_sumout\ : std_logic;
SIGNAL \index[4][2]~q\ : std_logic;
SIGNAL \Mux130~0_combout\ : std_logic;
SIGNAL \note_length~16_combout\ : std_logic;
SIGNAL \note_length[4][2]~reg0_q\ : std_logic;
SIGNAL \note_length~17_combout\ : std_logic;
SIGNAL \note_length[4][5]~reg0_q\ : std_logic;
SIGNAL \note_length[4][6]~reg0_q\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \Mux91~0_combout\ : std_logic;
SIGNAL \Add8~126_cout\ : std_logic;
SIGNAL \Add8~5_sumout\ : std_logic;
SIGNAL \tmp_wait[2][1]~q\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~1_sumout\ : std_logic;
SIGNAL \tmp_wait[2][2]~q\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~29_sumout\ : std_logic;
SIGNAL \tmp_wait[2][3]~q\ : std_logic;
SIGNAL \Add8~30\ : std_logic;
SIGNAL \Add8~25_sumout\ : std_logic;
SIGNAL \tmp_wait[2][4]~q\ : std_logic;
SIGNAL \Add8~26\ : std_logic;
SIGNAL \Add8~21_sumout\ : std_logic;
SIGNAL \tmp_wait[2][5]~q\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~17_sumout\ : std_logic;
SIGNAL \tmp_wait[2][6]~q\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~13_sumout\ : std_logic;
SIGNAL \tmp_wait[2][7]~q\ : std_logic;
SIGNAL \Add8~14\ : std_logic;
SIGNAL \Add8~9_sumout\ : std_logic;
SIGNAL \tmp_wait[2][8]~q\ : std_logic;
SIGNAL \Add8~10\ : std_logic;
SIGNAL \Add8~53_sumout\ : std_logic;
SIGNAL \tmp_wait[2][9]~q\ : std_logic;
SIGNAL \Add8~54\ : std_logic;
SIGNAL \Add8~49_sumout\ : std_logic;
SIGNAL \tmp_wait[2][10]~q\ : std_logic;
SIGNAL \Add8~50\ : std_logic;
SIGNAL \Add8~45_sumout\ : std_logic;
SIGNAL \tmp_wait[2][11]~q\ : std_logic;
SIGNAL \Add8~46\ : std_logic;
SIGNAL \Add8~41_sumout\ : std_logic;
SIGNAL \tmp_wait[2][12]~q\ : std_logic;
SIGNAL \Add8~42\ : std_logic;
SIGNAL \Add8~37_sumout\ : std_logic;
SIGNAL \tmp_wait[2][13]~q\ : std_logic;
SIGNAL \Add8~38\ : std_logic;
SIGNAL \Add8~33_sumout\ : std_logic;
SIGNAL \tmp_wait[2][14]~q\ : std_logic;
SIGNAL \Add8~34\ : std_logic;
SIGNAL \Add8~77_sumout\ : std_logic;
SIGNAL \tmp_wait[2][15]~q\ : std_logic;
SIGNAL \Add8~78\ : std_logic;
SIGNAL \Add8~73_sumout\ : std_logic;
SIGNAL \tmp_wait[2][16]~q\ : std_logic;
SIGNAL \Add8~74\ : std_logic;
SIGNAL \Add8~69_sumout\ : std_logic;
SIGNAL \tmp_wait[2][17]~q\ : std_logic;
SIGNAL \Add8~70\ : std_logic;
SIGNAL \Add8~65_sumout\ : std_logic;
SIGNAL \tmp_wait[2][18]~q\ : std_logic;
SIGNAL \Add8~66\ : std_logic;
SIGNAL \Add8~61_sumout\ : std_logic;
SIGNAL \tmp_wait[2][19]~q\ : std_logic;
SIGNAL \Add8~62\ : std_logic;
SIGNAL \Add8~57_sumout\ : std_logic;
SIGNAL \tmp_wait[2][20]~q\ : std_logic;
SIGNAL \Add8~58\ : std_logic;
SIGNAL \Add8~121_sumout\ : std_logic;
SIGNAL \tmp_wait[2][21]~q\ : std_logic;
SIGNAL \Add8~122\ : std_logic;
SIGNAL \Add8~117_sumout\ : std_logic;
SIGNAL \tmp_wait[2][22]~q\ : std_logic;
SIGNAL \Add8~118\ : std_logic;
SIGNAL \Add8~113_sumout\ : std_logic;
SIGNAL \tmp_wait[2][23]~q\ : std_logic;
SIGNAL \Add8~114\ : std_logic;
SIGNAL \Add8~109_sumout\ : std_logic;
SIGNAL \tmp_wait[2][24]~q\ : std_logic;
SIGNAL \Add8~110\ : std_logic;
SIGNAL \Add8~105_sumout\ : std_logic;
SIGNAL \tmp_wait[2][25]~q\ : std_logic;
SIGNAL \Add8~106\ : std_logic;
SIGNAL \Add8~101_sumout\ : std_logic;
SIGNAL \tmp_wait[2][26]~q\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Add8~102\ : std_logic;
SIGNAL \Add8~97_sumout\ : std_logic;
SIGNAL \tmp_wait[2][27]~q\ : std_logic;
SIGNAL \Add8~98\ : std_logic;
SIGNAL \Add8~93_sumout\ : std_logic;
SIGNAL \tmp_wait[2][28]~q\ : std_logic;
SIGNAL \Add8~94\ : std_logic;
SIGNAL \Add8~89_sumout\ : std_logic;
SIGNAL \tmp_wait[2][29]~q\ : std_logic;
SIGNAL \Add8~90\ : std_logic;
SIGNAL \Add8~85_sumout\ : std_logic;
SIGNAL \tmp_wait[2][30]~q\ : std_logic;
SIGNAL \Add8~86\ : std_logic;
SIGNAL \Add8~81_sumout\ : std_logic;
SIGNAL \tmp_wait[2][31]~q\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \index[2][0]~10_combout\ : std_logic;
SIGNAL \index[2][0]~q\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \index[2][1]~q\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \index[2][2]~q\ : std_logic;
SIGNAL \note_length~18_combout\ : std_logic;
SIGNAL \note_length[2][2]~reg0_q\ : std_logic;
SIGNAL \note_length~19_combout\ : std_logic;
SIGNAL \note_length[2][5]~reg0_q\ : std_logic;
SIGNAL \note_length[2][6]~reg0_q\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \index[0][2]~11_combout\ : std_logic;
SIGNAL \index[0][0]~q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \index[0][1]~q\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \index[0][2]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add2~126_cout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \tmp_wait[0][1]~q\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \tmp_wait[0][2]~q\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \tmp_wait[0][3]~q\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \tmp_wait[0][4]~q\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \tmp_wait[0][5]~q\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \tmp_wait[0][6]~q\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \tmp_wait[0][7]~q\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \tmp_wait[0][8]~q\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \tmp_wait[0][9]~q\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \tmp_wait[0][10]~q\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \tmp_wait[0][11]~q\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \tmp_wait[0][12]~q\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \tmp_wait[0][13]~q\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \tmp_wait[0][14]~q\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \tmp_wait[0][15]~q\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \tmp_wait[0][16]~q\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \tmp_wait[0][17]~q\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \tmp_wait[0][18]~q\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \tmp_wait[0][19]~q\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \tmp_wait[0][20]~q\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \tmp_wait[0][21]~q\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \tmp_wait[0][22]~q\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \tmp_wait[0][23]~q\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \tmp_wait[0][24]~q\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \tmp_wait[0][25]~q\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \tmp_wait[0][26]~q\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \tmp_wait[0][27]~q\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \tmp_wait[0][28]~q\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \tmp_wait[0][29]~q\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \tmp_wait[0][30]~q\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \tmp_wait[0][31]~q\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \note_length~20_combout\ : std_logic;
SIGNAL \note_length[0][2]~reg0_q\ : std_logic;
SIGNAL \note_length~21_combout\ : std_logic;
SIGNAL \note_length[0][5]~reg0feeder_combout\ : std_logic;
SIGNAL \note_length[0][5]~reg0_q\ : std_logic;
SIGNAL \note_length[0][6]~reg0_q\ : std_logic;
SIGNAL tmp_song : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_tmp_wait[6][13]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][14]~q\ : std_logic;
SIGNAL \ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][3]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][4]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][5]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][6]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][7]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][8]~q\ : std_logic;
SIGNAL \ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][1]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][2]~q\ : std_logic;
SIGNAL \ALT_INV_note_length~11_combout\ : std_logic;
SIGNAL \ALT_INV_Equal8~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal8~5_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][21]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][22]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][23]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][24]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][25]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][26]~q\ : std_logic;
SIGNAL \ALT_INV_Equal8~4_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][27]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][28]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][29]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][30]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][31]~q\ : std_logic;
SIGNAL \ALT_INV_Equal8~3_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][15]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][16]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][17]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][18]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][19]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][20]~q\ : std_logic;
SIGNAL \ALT_INV_Equal8~2_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][9]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][10]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][11]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][12]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][13]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][14]~q\ : std_logic;
SIGNAL \ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][3]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][4]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][5]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][6]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][7]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][8]~q\ : std_logic;
SIGNAL \ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][1]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[7][2]~q\ : std_logic;
SIGNAL \ALT_INV_Mux226~0_combout\ : std_logic;
SIGNAL \ALT_INV_index[7][0]~q\ : std_logic;
SIGNAL \ALT_INV_index[7][1]~q\ : std_logic;
SIGNAL \ALT_INV_index[7][2]~q\ : std_logic;
SIGNAL \ALT_INV_Mux258~0_combout\ : std_logic;
SIGNAL \ALT_INV_index[8][0]~q\ : std_logic;
SIGNAL \ALT_INV_index[8][1]~q\ : std_logic;
SIGNAL \ALT_INV_index[8][2]~q\ : std_logic;
SIGNAL \ALT_INV_Equal9~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal9~5_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][21]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][22]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][23]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][24]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][25]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][26]~q\ : std_logic;
SIGNAL \ALT_INV_Equal9~4_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][27]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][28]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][29]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][30]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][31]~q\ : std_logic;
SIGNAL \ALT_INV_Equal9~3_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][15]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][16]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][17]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][18]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][19]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][20]~q\ : std_logic;
SIGNAL \ALT_INV_Equal9~2_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][9]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][10]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][11]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][12]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][13]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][14]~q\ : std_logic;
SIGNAL \ALT_INV_Equal9~1_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][3]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][4]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][5]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][6]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][7]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][8]~q\ : std_logic;
SIGNAL \ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][1]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[8][2]~q\ : std_logic;
SIGNAL \ALT_INV_note_length~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal10~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal10~5_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][21]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][22]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][23]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][24]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][25]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][26]~q\ : std_logic;
SIGNAL \ALT_INV_Equal10~4_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][27]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][28]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][29]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][30]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][31]~q\ : std_logic;
SIGNAL \ALT_INV_Equal10~3_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][15]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][16]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][17]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][18]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][19]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][20]~q\ : std_logic;
SIGNAL \ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][9]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][10]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][11]~q\ : std_logic;
SIGNAL \ALT_INV_Add32~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add34~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add26~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add23~1_sumout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][17]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][18]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][19]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][20]~q\ : std_logic;
SIGNAL \ALT_INV_Equal13~2_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][9]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][10]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][11]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][12]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][13]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][14]~q\ : std_logic;
SIGNAL \ALT_INV_Equal13~1_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][3]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][4]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][5]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][6]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][7]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][8]~q\ : std_logic;
SIGNAL \ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][1]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][2]~q\ : std_logic;
SIGNAL \ALT_INV_Mux386~0_combout\ : std_logic;
SIGNAL \ALT_INV_index[12][0]~q\ : std_logic;
SIGNAL \ALT_INV_index[12][1]~q\ : std_logic;
SIGNAL \ALT_INV_index[12][2]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][12]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][13]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][14]~q\ : std_logic;
SIGNAL \ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][3]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][4]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][5]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][6]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][7]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][8]~q\ : std_logic;
SIGNAL \ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][1]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[9][2]~q\ : std_logic;
SIGNAL \ALT_INV_Mux290~0_combout\ : std_logic;
SIGNAL \ALT_INV_index[9][0]~q\ : std_logic;
SIGNAL \ALT_INV_index[9][1]~q\ : std_logic;
SIGNAL \ALT_INV_index[9][2]~q\ : std_logic;
SIGNAL \ALT_INV_Mux322~0_combout\ : std_logic;
SIGNAL \ALT_INV_index[10][0]~q\ : std_logic;
SIGNAL \ALT_INV_index[10][1]~q\ : std_logic;
SIGNAL \ALT_INV_index[10][2]~q\ : std_logic;
SIGNAL \ALT_INV_Equal11~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal11~5_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][21]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][22]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][23]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][24]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][25]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][26]~q\ : std_logic;
SIGNAL \ALT_INV_Equal11~4_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][27]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][28]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][29]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][30]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][31]~q\ : std_logic;
SIGNAL \ALT_INV_Equal11~3_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][15]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][16]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][17]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][18]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][19]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][20]~q\ : std_logic;
SIGNAL \ALT_INV_Equal11~2_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][9]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][10]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][11]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][12]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][13]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][14]~q\ : std_logic;
SIGNAL \ALT_INV_Equal11~1_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][3]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][4]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][5]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][6]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][7]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][8]~q\ : std_logic;
SIGNAL \ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][1]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[10][2]~q\ : std_logic;
SIGNAL \ALT_INV_Mux379~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux354~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal12~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal12~5_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][21]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][22]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][23]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][24]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][25]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][26]~q\ : std_logic;
SIGNAL \ALT_INV_Equal12~4_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][27]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][28]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][29]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][30]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][31]~q\ : std_logic;
SIGNAL \ALT_INV_Equal12~3_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][15]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][16]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][17]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][18]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][19]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][20]~q\ : std_logic;
SIGNAL \ALT_INV_Equal12~2_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][9]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][10]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][11]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][12]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][13]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][14]~q\ : std_logic;
SIGNAL \ALT_INV_Equal12~1_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][3]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][4]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][5]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][6]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][7]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][8]~q\ : std_logic;
SIGNAL \ALT_INV_Equal12~0_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][1]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[11][2]~q\ : std_logic;
SIGNAL \ALT_INV_index[11][1]~q\ : std_logic;
SIGNAL \ALT_INV_index[11][0]~q\ : std_logic;
SIGNAL \ALT_INV_index[11][2]~q\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal13~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal13~5_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][21]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][22]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][23]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][24]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][25]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][26]~q\ : std_logic;
SIGNAL \ALT_INV_Equal13~4_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][27]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][28]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][29]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][30]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][31]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_Equal13~3_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][15]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[12][16]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_index[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_index[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_index[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_Equal5~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~5_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][21]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][22]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][23]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][24]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][25]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][26]~q\ : std_logic;
SIGNAL \ALT_INV_Equal5~4_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][27]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][28]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][29]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][30]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][31]~q\ : std_logic;
SIGNAL \ALT_INV_Equal5~3_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][15]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][16]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][17]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][18]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][19]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][20]~q\ : std_logic;
SIGNAL \ALT_INV_Equal5~2_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][9]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][10]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][11]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][12]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][13]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][14]~q\ : std_logic;
SIGNAL \ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][3]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][4]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][6]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][7]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][8]~q\ : std_logic;
SIGNAL \ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][1]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_Mux130~0_combout\ : std_logic;
SIGNAL \ALT_INV_index[4][0]~q\ : std_logic;
SIGNAL \ALT_INV_index[4][1]~q\ : std_logic;
SIGNAL \ALT_INV_index[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_Equal6~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~5_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][21]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][22]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][23]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][24]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][25]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][26]~q\ : std_logic;
SIGNAL \ALT_INV_Equal6~4_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][27]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][28]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][29]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][30]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][31]~q\ : std_logic;
SIGNAL \ALT_INV_Equal6~3_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][15]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][16]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][17]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][18]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][19]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][20]~q\ : std_logic;
SIGNAL \ALT_INV_Equal6~2_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][9]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][10]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][11]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][12]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][13]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][14]~q\ : std_logic;
SIGNAL \ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][3]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][4]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][5]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][6]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][7]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][8]~q\ : std_logic;
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][1]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[5][2]~q\ : std_logic;
SIGNAL \ALT_INV_Mux162~0_combout\ : std_logic;
SIGNAL \ALT_INV_index[5][0]~q\ : std_logic;
SIGNAL \ALT_INV_index[5][1]~q\ : std_logic;
SIGNAL \ALT_INV_index[5][2]~q\ : std_logic;
SIGNAL \ALT_INV_Mux194~0_combout\ : std_logic;
SIGNAL \ALT_INV_index[6][0]~q\ : std_logic;
SIGNAL \ALT_INV_index[6][1]~q\ : std_logic;
SIGNAL \ALT_INV_index[6][2]~q\ : std_logic;
SIGNAL \ALT_INV_Equal7~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~5_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][21]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][22]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][23]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][24]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][25]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][26]~q\ : std_logic;
SIGNAL \ALT_INV_Equal7~4_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][27]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][28]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][29]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][30]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][31]~q\ : std_logic;
SIGNAL \ALT_INV_Equal7~3_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][15]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][16]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][17]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][18]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][19]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][20]~q\ : std_logic;
SIGNAL \ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][9]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][10]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][11]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[6][12]~q\ : std_logic;
SIGNAL \ALT_INV_song[0][11][5]~combout\ : std_logic;
SIGNAL \ALT_INV_song[0][11][31]~combout\ : std_logic;
SIGNAL ALT_INV_tmp_song : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_tmp_wait~25_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~24_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~23_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~22_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~21_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~20_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~19_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~18_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~17_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~16_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~15_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~14_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~13_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~12_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~11_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~10_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~9_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~8_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~7_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~6_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~5_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~4_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~3_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~2_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~1_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_note_length~21_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][20]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][21]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][22]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][23]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][24]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][25]~q\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][26]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][27]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][28]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][29]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][30]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][31]~q\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][14]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][15]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][16]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][17]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][18]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][19]~q\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][10]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][11]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][12]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][13]~q\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_index[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_index[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_index[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_Mux91~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux66~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~5_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][21]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][22]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][23]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][24]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][25]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][26]~q\ : std_logic;
SIGNAL \ALT_INV_Equal3~4_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][27]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][28]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][29]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][30]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][31]~q\ : std_logic;
SIGNAL \ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][15]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][16]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][17]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][18]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][19]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][20]~q\ : std_logic;
SIGNAL \ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][9]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][11]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][12]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][13]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][14]~q\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_tmp_wait[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_screen_end~input_o\ : std_logic;
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_song_choose[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_song_choose[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_resetN~input_o\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_resetN <= resetN;
ww_enable <= enable;
ww_screen_end <= screen_end;
ww_song_choose <= song_choose;
note_length <= ww_note_length;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_tmp_wait[6][13]~q\ <= NOT \tmp_wait[6][13]~q\;
\ALT_INV_tmp_wait[6][14]~q\ <= NOT \tmp_wait[6][14]~q\;
\ALT_INV_Equal7~1_combout\ <= NOT \Equal7~1_combout\;
\ALT_INV_tmp_wait[6][3]~q\ <= NOT \tmp_wait[6][3]~q\;
\ALT_INV_tmp_wait[6][4]~q\ <= NOT \tmp_wait[6][4]~q\;
\ALT_INV_tmp_wait[6][5]~q\ <= NOT \tmp_wait[6][5]~q\;
\ALT_INV_tmp_wait[6][6]~q\ <= NOT \tmp_wait[6][6]~q\;
\ALT_INV_tmp_wait[6][7]~q\ <= NOT \tmp_wait[6][7]~q\;
\ALT_INV_tmp_wait[6][8]~q\ <= NOT \tmp_wait[6][8]~q\;
\ALT_INV_Equal7~0_combout\ <= NOT \Equal7~0_combout\;
\ALT_INV_tmp_wait[6][1]~q\ <= NOT \tmp_wait[6][1]~q\;
\ALT_INV_tmp_wait[6][2]~q\ <= NOT \tmp_wait[6][2]~q\;
\ALT_INV_note_length~11_combout\ <= NOT \note_length~11_combout\;
\ALT_INV_Equal8~6_combout\ <= NOT \Equal8~6_combout\;
\ALT_INV_Equal8~5_combout\ <= NOT \Equal8~5_combout\;
\ALT_INV_tmp_wait[7][21]~q\ <= NOT \tmp_wait[7][21]~q\;
\ALT_INV_tmp_wait[7][22]~q\ <= NOT \tmp_wait[7][22]~q\;
\ALT_INV_tmp_wait[7][23]~q\ <= NOT \tmp_wait[7][23]~q\;
\ALT_INV_tmp_wait[7][24]~q\ <= NOT \tmp_wait[7][24]~q\;
\ALT_INV_tmp_wait[7][25]~q\ <= NOT \tmp_wait[7][25]~q\;
\ALT_INV_tmp_wait[7][26]~q\ <= NOT \tmp_wait[7][26]~q\;
\ALT_INV_Equal8~4_combout\ <= NOT \Equal8~4_combout\;
\ALT_INV_tmp_wait[7][27]~q\ <= NOT \tmp_wait[7][27]~q\;
\ALT_INV_tmp_wait[7][28]~q\ <= NOT \tmp_wait[7][28]~q\;
\ALT_INV_tmp_wait[7][29]~q\ <= NOT \tmp_wait[7][29]~q\;
\ALT_INV_tmp_wait[7][30]~q\ <= NOT \tmp_wait[7][30]~q\;
\ALT_INV_tmp_wait[7][31]~q\ <= NOT \tmp_wait[7][31]~q\;
\ALT_INV_Equal8~3_combout\ <= NOT \Equal8~3_combout\;
\ALT_INV_tmp_wait[7][15]~q\ <= NOT \tmp_wait[7][15]~q\;
\ALT_INV_tmp_wait[7][16]~q\ <= NOT \tmp_wait[7][16]~q\;
\ALT_INV_tmp_wait[7][17]~q\ <= NOT \tmp_wait[7][17]~q\;
\ALT_INV_tmp_wait[7][18]~q\ <= NOT \tmp_wait[7][18]~q\;
\ALT_INV_tmp_wait[7][19]~q\ <= NOT \tmp_wait[7][19]~q\;
\ALT_INV_tmp_wait[7][20]~q\ <= NOT \tmp_wait[7][20]~q\;
\ALT_INV_Equal8~2_combout\ <= NOT \Equal8~2_combout\;
\ALT_INV_tmp_wait[7][9]~q\ <= NOT \tmp_wait[7][9]~q\;
\ALT_INV_tmp_wait[7][10]~q\ <= NOT \tmp_wait[7][10]~q\;
\ALT_INV_tmp_wait[7][11]~q\ <= NOT \tmp_wait[7][11]~q\;
\ALT_INV_tmp_wait[7][12]~q\ <= NOT \tmp_wait[7][12]~q\;
\ALT_INV_tmp_wait[7][13]~q\ <= NOT \tmp_wait[7][13]~q\;
\ALT_INV_tmp_wait[7][14]~q\ <= NOT \tmp_wait[7][14]~q\;
\ALT_INV_Equal8~1_combout\ <= NOT \Equal8~1_combout\;
\ALT_INV_tmp_wait[7][3]~q\ <= NOT \tmp_wait[7][3]~q\;
\ALT_INV_tmp_wait[7][4]~q\ <= NOT \tmp_wait[7][4]~q\;
\ALT_INV_tmp_wait[7][5]~q\ <= NOT \tmp_wait[7][5]~q\;
\ALT_INV_tmp_wait[7][6]~q\ <= NOT \tmp_wait[7][6]~q\;
\ALT_INV_tmp_wait[7][7]~q\ <= NOT \tmp_wait[7][7]~q\;
\ALT_INV_tmp_wait[7][8]~q\ <= NOT \tmp_wait[7][8]~q\;
\ALT_INV_Equal8~0_combout\ <= NOT \Equal8~0_combout\;
\ALT_INV_tmp_wait[7][1]~q\ <= NOT \tmp_wait[7][1]~q\;
\ALT_INV_tmp_wait[7][2]~q\ <= NOT \tmp_wait[7][2]~q\;
\ALT_INV_Mux226~0_combout\ <= NOT \Mux226~0_combout\;
\ALT_INV_index[7][0]~q\ <= NOT \index[7][0]~q\;
\ALT_INV_index[7][1]~q\ <= NOT \index[7][1]~q\;
\ALT_INV_index[7][2]~q\ <= NOT \index[7][2]~q\;
\ALT_INV_Mux258~0_combout\ <= NOT \Mux258~0_combout\;
\ALT_INV_index[8][0]~q\ <= NOT \index[8][0]~q\;
\ALT_INV_index[8][1]~q\ <= NOT \index[8][1]~q\;
\ALT_INV_index[8][2]~q\ <= NOT \index[8][2]~q\;
\ALT_INV_Equal9~6_combout\ <= NOT \Equal9~6_combout\;
\ALT_INV_Equal9~5_combout\ <= NOT \Equal9~5_combout\;
\ALT_INV_tmp_wait[8][21]~q\ <= NOT \tmp_wait[8][21]~q\;
\ALT_INV_tmp_wait[8][22]~q\ <= NOT \tmp_wait[8][22]~q\;
\ALT_INV_tmp_wait[8][23]~q\ <= NOT \tmp_wait[8][23]~q\;
\ALT_INV_tmp_wait[8][24]~q\ <= NOT \tmp_wait[8][24]~q\;
\ALT_INV_tmp_wait[8][25]~q\ <= NOT \tmp_wait[8][25]~q\;
\ALT_INV_tmp_wait[8][26]~q\ <= NOT \tmp_wait[8][26]~q\;
\ALT_INV_Equal9~4_combout\ <= NOT \Equal9~4_combout\;
\ALT_INV_tmp_wait[8][27]~q\ <= NOT \tmp_wait[8][27]~q\;
\ALT_INV_tmp_wait[8][28]~q\ <= NOT \tmp_wait[8][28]~q\;
\ALT_INV_tmp_wait[8][29]~q\ <= NOT \tmp_wait[8][29]~q\;
\ALT_INV_tmp_wait[8][30]~q\ <= NOT \tmp_wait[8][30]~q\;
\ALT_INV_tmp_wait[8][31]~q\ <= NOT \tmp_wait[8][31]~q\;
\ALT_INV_Equal9~3_combout\ <= NOT \Equal9~3_combout\;
\ALT_INV_tmp_wait[8][15]~q\ <= NOT \tmp_wait[8][15]~q\;
\ALT_INV_tmp_wait[8][16]~q\ <= NOT \tmp_wait[8][16]~q\;
\ALT_INV_tmp_wait[8][17]~q\ <= NOT \tmp_wait[8][17]~q\;
\ALT_INV_tmp_wait[8][18]~q\ <= NOT \tmp_wait[8][18]~q\;
\ALT_INV_tmp_wait[8][19]~q\ <= NOT \tmp_wait[8][19]~q\;
\ALT_INV_tmp_wait[8][20]~q\ <= NOT \tmp_wait[8][20]~q\;
\ALT_INV_Equal9~2_combout\ <= NOT \Equal9~2_combout\;
\ALT_INV_tmp_wait[8][9]~q\ <= NOT \tmp_wait[8][9]~q\;
\ALT_INV_tmp_wait[8][10]~q\ <= NOT \tmp_wait[8][10]~q\;
\ALT_INV_tmp_wait[8][11]~q\ <= NOT \tmp_wait[8][11]~q\;
\ALT_INV_tmp_wait[8][12]~q\ <= NOT \tmp_wait[8][12]~q\;
\ALT_INV_tmp_wait[8][13]~q\ <= NOT \tmp_wait[8][13]~q\;
\ALT_INV_tmp_wait[8][14]~q\ <= NOT \tmp_wait[8][14]~q\;
\ALT_INV_Equal9~1_combout\ <= NOT \Equal9~1_combout\;
\ALT_INV_tmp_wait[8][3]~q\ <= NOT \tmp_wait[8][3]~q\;
\ALT_INV_tmp_wait[8][4]~q\ <= NOT \tmp_wait[8][4]~q\;
\ALT_INV_tmp_wait[8][5]~q\ <= NOT \tmp_wait[8][5]~q\;
\ALT_INV_tmp_wait[8][6]~q\ <= NOT \tmp_wait[8][6]~q\;
\ALT_INV_tmp_wait[8][7]~q\ <= NOT \tmp_wait[8][7]~q\;
\ALT_INV_tmp_wait[8][8]~q\ <= NOT \tmp_wait[8][8]~q\;
\ALT_INV_Equal9~0_combout\ <= NOT \Equal9~0_combout\;
\ALT_INV_tmp_wait[8][1]~q\ <= NOT \tmp_wait[8][1]~q\;
\ALT_INV_tmp_wait[8][2]~q\ <= NOT \tmp_wait[8][2]~q\;
\ALT_INV_note_length~7_combout\ <= NOT \note_length~7_combout\;
\ALT_INV_Equal10~6_combout\ <= NOT \Equal10~6_combout\;
\ALT_INV_Equal10~5_combout\ <= NOT \Equal10~5_combout\;
\ALT_INV_tmp_wait[9][21]~q\ <= NOT \tmp_wait[9][21]~q\;
\ALT_INV_tmp_wait[9][22]~q\ <= NOT \tmp_wait[9][22]~q\;
\ALT_INV_tmp_wait[9][23]~q\ <= NOT \tmp_wait[9][23]~q\;
\ALT_INV_tmp_wait[9][24]~q\ <= NOT \tmp_wait[9][24]~q\;
\ALT_INV_tmp_wait[9][25]~q\ <= NOT \tmp_wait[9][25]~q\;
\ALT_INV_tmp_wait[9][26]~q\ <= NOT \tmp_wait[9][26]~q\;
\ALT_INV_Equal10~4_combout\ <= NOT \Equal10~4_combout\;
\ALT_INV_tmp_wait[9][27]~q\ <= NOT \tmp_wait[9][27]~q\;
\ALT_INV_tmp_wait[9][28]~q\ <= NOT \tmp_wait[9][28]~q\;
\ALT_INV_tmp_wait[9][29]~q\ <= NOT \tmp_wait[9][29]~q\;
\ALT_INV_tmp_wait[9][30]~q\ <= NOT \tmp_wait[9][30]~q\;
\ALT_INV_tmp_wait[9][31]~q\ <= NOT \tmp_wait[9][31]~q\;
\ALT_INV_Equal10~3_combout\ <= NOT \Equal10~3_combout\;
\ALT_INV_tmp_wait[9][15]~q\ <= NOT \tmp_wait[9][15]~q\;
\ALT_INV_tmp_wait[9][16]~q\ <= NOT \tmp_wait[9][16]~q\;
\ALT_INV_tmp_wait[9][17]~q\ <= NOT \tmp_wait[9][17]~q\;
\ALT_INV_tmp_wait[9][18]~q\ <= NOT \tmp_wait[9][18]~q\;
\ALT_INV_tmp_wait[9][19]~q\ <= NOT \tmp_wait[9][19]~q\;
\ALT_INV_tmp_wait[9][20]~q\ <= NOT \tmp_wait[9][20]~q\;
\ALT_INV_Equal10~2_combout\ <= NOT \Equal10~2_combout\;
\ALT_INV_tmp_wait[9][9]~q\ <= NOT \tmp_wait[9][9]~q\;
\ALT_INV_tmp_wait[9][10]~q\ <= NOT \tmp_wait[9][10]~q\;
\ALT_INV_tmp_wait[9][11]~q\ <= NOT \tmp_wait[9][11]~q\;
\ALT_INV_Add32~5_sumout\ <= NOT \Add32~5_sumout\;
\ALT_INV_Add34~1_sumout\ <= NOT \Add34~1_sumout\;
\ALT_INV_Add26~5_sumout\ <= NOT \Add26~5_sumout\;
\ALT_INV_Add20~1_sumout\ <= NOT \Add20~1_sumout\;
\ALT_INV_Add23~1_sumout\ <= NOT \Add23~1_sumout\;
\ALT_INV_tmp_wait[12][17]~q\ <= NOT \tmp_wait[12][17]~q\;
\ALT_INV_tmp_wait[12][18]~q\ <= NOT \tmp_wait[12][18]~q\;
\ALT_INV_tmp_wait[12][19]~q\ <= NOT \tmp_wait[12][19]~q\;
\ALT_INV_tmp_wait[12][20]~q\ <= NOT \tmp_wait[12][20]~q\;
\ALT_INV_Equal13~2_combout\ <= NOT \Equal13~2_combout\;
\ALT_INV_tmp_wait[12][9]~q\ <= NOT \tmp_wait[12][9]~q\;
\ALT_INV_tmp_wait[12][10]~q\ <= NOT \tmp_wait[12][10]~q\;
\ALT_INV_tmp_wait[12][11]~q\ <= NOT \tmp_wait[12][11]~q\;
\ALT_INV_tmp_wait[12][12]~q\ <= NOT \tmp_wait[12][12]~q\;
\ALT_INV_tmp_wait[12][13]~q\ <= NOT \tmp_wait[12][13]~q\;
\ALT_INV_tmp_wait[12][14]~q\ <= NOT \tmp_wait[12][14]~q\;
\ALT_INV_Equal13~1_combout\ <= NOT \Equal13~1_combout\;
\ALT_INV_tmp_wait[12][3]~q\ <= NOT \tmp_wait[12][3]~q\;
\ALT_INV_tmp_wait[12][4]~q\ <= NOT \tmp_wait[12][4]~q\;
\ALT_INV_tmp_wait[12][5]~q\ <= NOT \tmp_wait[12][5]~q\;
\ALT_INV_tmp_wait[12][6]~q\ <= NOT \tmp_wait[12][6]~q\;
\ALT_INV_tmp_wait[12][7]~q\ <= NOT \tmp_wait[12][7]~q\;
\ALT_INV_tmp_wait[12][8]~q\ <= NOT \tmp_wait[12][8]~q\;
\ALT_INV_Equal13~0_combout\ <= NOT \Equal13~0_combout\;
\ALT_INV_tmp_wait[12][1]~q\ <= NOT \tmp_wait[12][1]~q\;
\ALT_INV_tmp_wait[12][2]~q\ <= NOT \tmp_wait[12][2]~q\;
\ALT_INV_Mux386~0_combout\ <= NOT \Mux386~0_combout\;
\ALT_INV_index[12][0]~q\ <= NOT \index[12][0]~q\;
\ALT_INV_index[12][1]~q\ <= NOT \index[12][1]~q\;
\ALT_INV_index[12][2]~q\ <= NOT \index[12][2]~q\;
\ALT_INV_tmp_wait[9][12]~q\ <= NOT \tmp_wait[9][12]~q\;
\ALT_INV_tmp_wait[9][13]~q\ <= NOT \tmp_wait[9][13]~q\;
\ALT_INV_tmp_wait[9][14]~q\ <= NOT \tmp_wait[9][14]~q\;
\ALT_INV_Equal10~1_combout\ <= NOT \Equal10~1_combout\;
\ALT_INV_tmp_wait[9][3]~q\ <= NOT \tmp_wait[9][3]~q\;
\ALT_INV_tmp_wait[9][4]~q\ <= NOT \tmp_wait[9][4]~q\;
\ALT_INV_tmp_wait[9][5]~q\ <= NOT \tmp_wait[9][5]~q\;
\ALT_INV_tmp_wait[9][6]~q\ <= NOT \tmp_wait[9][6]~q\;
\ALT_INV_tmp_wait[9][7]~q\ <= NOT \tmp_wait[9][7]~q\;
\ALT_INV_tmp_wait[9][8]~q\ <= NOT \tmp_wait[9][8]~q\;
\ALT_INV_Equal10~0_combout\ <= NOT \Equal10~0_combout\;
\ALT_INV_tmp_wait[9][1]~q\ <= NOT \tmp_wait[9][1]~q\;
\ALT_INV_tmp_wait[9][2]~q\ <= NOT \tmp_wait[9][2]~q\;
\ALT_INV_Mux290~0_combout\ <= NOT \Mux290~0_combout\;
\ALT_INV_index[9][0]~q\ <= NOT \index[9][0]~q\;
\ALT_INV_index[9][1]~q\ <= NOT \index[9][1]~q\;
\ALT_INV_index[9][2]~q\ <= NOT \index[9][2]~q\;
\ALT_INV_Mux322~0_combout\ <= NOT \Mux322~0_combout\;
\ALT_INV_index[10][0]~q\ <= NOT \index[10][0]~q\;
\ALT_INV_index[10][1]~q\ <= NOT \index[10][1]~q\;
\ALT_INV_index[10][2]~q\ <= NOT \index[10][2]~q\;
\ALT_INV_Equal11~6_combout\ <= NOT \Equal11~6_combout\;
\ALT_INV_Equal11~5_combout\ <= NOT \Equal11~5_combout\;
\ALT_INV_tmp_wait[10][21]~q\ <= NOT \tmp_wait[10][21]~q\;
\ALT_INV_tmp_wait[10][22]~q\ <= NOT \tmp_wait[10][22]~q\;
\ALT_INV_tmp_wait[10][23]~q\ <= NOT \tmp_wait[10][23]~q\;
\ALT_INV_tmp_wait[10][24]~q\ <= NOT \tmp_wait[10][24]~q\;
\ALT_INV_tmp_wait[10][25]~q\ <= NOT \tmp_wait[10][25]~q\;
\ALT_INV_tmp_wait[10][26]~q\ <= NOT \tmp_wait[10][26]~q\;
\ALT_INV_Equal11~4_combout\ <= NOT \Equal11~4_combout\;
\ALT_INV_tmp_wait[10][27]~q\ <= NOT \tmp_wait[10][27]~q\;
\ALT_INV_tmp_wait[10][28]~q\ <= NOT \tmp_wait[10][28]~q\;
\ALT_INV_tmp_wait[10][29]~q\ <= NOT \tmp_wait[10][29]~q\;
\ALT_INV_tmp_wait[10][30]~q\ <= NOT \tmp_wait[10][30]~q\;
\ALT_INV_tmp_wait[10][31]~q\ <= NOT \tmp_wait[10][31]~q\;
\ALT_INV_Equal11~3_combout\ <= NOT \Equal11~3_combout\;
\ALT_INV_tmp_wait[10][15]~q\ <= NOT \tmp_wait[10][15]~q\;
\ALT_INV_tmp_wait[10][16]~q\ <= NOT \tmp_wait[10][16]~q\;
\ALT_INV_tmp_wait[10][17]~q\ <= NOT \tmp_wait[10][17]~q\;
\ALT_INV_tmp_wait[10][18]~q\ <= NOT \tmp_wait[10][18]~q\;
\ALT_INV_tmp_wait[10][19]~q\ <= NOT \tmp_wait[10][19]~q\;
\ALT_INV_tmp_wait[10][20]~q\ <= NOT \tmp_wait[10][20]~q\;
\ALT_INV_Equal11~2_combout\ <= NOT \Equal11~2_combout\;
\ALT_INV_tmp_wait[10][9]~q\ <= NOT \tmp_wait[10][9]~q\;
\ALT_INV_tmp_wait[10][10]~q\ <= NOT \tmp_wait[10][10]~q\;
\ALT_INV_tmp_wait[10][11]~q\ <= NOT \tmp_wait[10][11]~q\;
\ALT_INV_tmp_wait[10][12]~q\ <= NOT \tmp_wait[10][12]~q\;
\ALT_INV_tmp_wait[10][13]~q\ <= NOT \tmp_wait[10][13]~q\;
\ALT_INV_tmp_wait[10][14]~q\ <= NOT \tmp_wait[10][14]~q\;
\ALT_INV_Equal11~1_combout\ <= NOT \Equal11~1_combout\;
\ALT_INV_tmp_wait[10][3]~q\ <= NOT \tmp_wait[10][3]~q\;
\ALT_INV_tmp_wait[10][4]~q\ <= NOT \tmp_wait[10][4]~q\;
\ALT_INV_tmp_wait[10][5]~q\ <= NOT \tmp_wait[10][5]~q\;
\ALT_INV_tmp_wait[10][6]~q\ <= NOT \tmp_wait[10][6]~q\;
\ALT_INV_tmp_wait[10][7]~q\ <= NOT \tmp_wait[10][7]~q\;
\ALT_INV_tmp_wait[10][8]~q\ <= NOT \tmp_wait[10][8]~q\;
\ALT_INV_Equal11~0_combout\ <= NOT \Equal11~0_combout\;
\ALT_INV_tmp_wait[10][1]~q\ <= NOT \tmp_wait[10][1]~q\;
\ALT_INV_tmp_wait[10][2]~q\ <= NOT \tmp_wait[10][2]~q\;
\ALT_INV_Mux379~0_combout\ <= NOT \Mux379~0_combout\;
\ALT_INV_Mux354~0_combout\ <= NOT \Mux354~0_combout\;
\ALT_INV_Equal12~6_combout\ <= NOT \Equal12~6_combout\;
\ALT_INV_Equal12~5_combout\ <= NOT \Equal12~5_combout\;
\ALT_INV_tmp_wait[11][21]~q\ <= NOT \tmp_wait[11][21]~q\;
\ALT_INV_tmp_wait[11][22]~q\ <= NOT \tmp_wait[11][22]~q\;
\ALT_INV_tmp_wait[11][23]~q\ <= NOT \tmp_wait[11][23]~q\;
\ALT_INV_tmp_wait[11][24]~q\ <= NOT \tmp_wait[11][24]~q\;
\ALT_INV_tmp_wait[11][25]~q\ <= NOT \tmp_wait[11][25]~q\;
\ALT_INV_tmp_wait[11][26]~q\ <= NOT \tmp_wait[11][26]~q\;
\ALT_INV_Equal12~4_combout\ <= NOT \Equal12~4_combout\;
\ALT_INV_tmp_wait[11][27]~q\ <= NOT \tmp_wait[11][27]~q\;
\ALT_INV_tmp_wait[11][28]~q\ <= NOT \tmp_wait[11][28]~q\;
\ALT_INV_tmp_wait[11][29]~q\ <= NOT \tmp_wait[11][29]~q\;
\ALT_INV_tmp_wait[11][30]~q\ <= NOT \tmp_wait[11][30]~q\;
\ALT_INV_tmp_wait[11][31]~q\ <= NOT \tmp_wait[11][31]~q\;
\ALT_INV_Equal12~3_combout\ <= NOT \Equal12~3_combout\;
\ALT_INV_tmp_wait[11][15]~q\ <= NOT \tmp_wait[11][15]~q\;
\ALT_INV_tmp_wait[11][16]~q\ <= NOT \tmp_wait[11][16]~q\;
\ALT_INV_tmp_wait[11][17]~q\ <= NOT \tmp_wait[11][17]~q\;
\ALT_INV_tmp_wait[11][18]~q\ <= NOT \tmp_wait[11][18]~q\;
\ALT_INV_tmp_wait[11][19]~q\ <= NOT \tmp_wait[11][19]~q\;
\ALT_INV_tmp_wait[11][20]~q\ <= NOT \tmp_wait[11][20]~q\;
\ALT_INV_Equal12~2_combout\ <= NOT \Equal12~2_combout\;
\ALT_INV_tmp_wait[11][9]~q\ <= NOT \tmp_wait[11][9]~q\;
\ALT_INV_tmp_wait[11][10]~q\ <= NOT \tmp_wait[11][10]~q\;
\ALT_INV_tmp_wait[11][11]~q\ <= NOT \tmp_wait[11][11]~q\;
\ALT_INV_tmp_wait[11][12]~q\ <= NOT \tmp_wait[11][12]~q\;
\ALT_INV_tmp_wait[11][13]~q\ <= NOT \tmp_wait[11][13]~q\;
\ALT_INV_tmp_wait[11][14]~q\ <= NOT \tmp_wait[11][14]~q\;
\ALT_INV_Equal12~1_combout\ <= NOT \Equal12~1_combout\;
\ALT_INV_tmp_wait[11][3]~q\ <= NOT \tmp_wait[11][3]~q\;
\ALT_INV_tmp_wait[11][4]~q\ <= NOT \tmp_wait[11][4]~q\;
\ALT_INV_tmp_wait[11][5]~q\ <= NOT \tmp_wait[11][5]~q\;
\ALT_INV_tmp_wait[11][6]~q\ <= NOT \tmp_wait[11][6]~q\;
\ALT_INV_tmp_wait[11][7]~q\ <= NOT \tmp_wait[11][7]~q\;
\ALT_INV_tmp_wait[11][8]~q\ <= NOT \tmp_wait[11][8]~q\;
\ALT_INV_Equal12~0_combout\ <= NOT \Equal12~0_combout\;
\ALT_INV_tmp_wait[11][1]~q\ <= NOT \tmp_wait[11][1]~q\;
\ALT_INV_tmp_wait[11][2]~q\ <= NOT \tmp_wait[11][2]~q\;
\ALT_INV_index[11][1]~q\ <= NOT \index[11][1]~q\;
\ALT_INV_index[11][0]~q\ <= NOT \index[11][0]~q\;
\ALT_INV_index[11][2]~q\ <= NOT \index[11][2]~q\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_Equal13~6_combout\ <= NOT \Equal13~6_combout\;
\ALT_INV_Equal13~5_combout\ <= NOT \Equal13~5_combout\;
\ALT_INV_tmp_wait[12][21]~q\ <= NOT \tmp_wait[12][21]~q\;
\ALT_INV_tmp_wait[12][22]~q\ <= NOT \tmp_wait[12][22]~q\;
\ALT_INV_tmp_wait[12][23]~q\ <= NOT \tmp_wait[12][23]~q\;
\ALT_INV_tmp_wait[12][24]~q\ <= NOT \tmp_wait[12][24]~q\;
\ALT_INV_tmp_wait[12][25]~q\ <= NOT \tmp_wait[12][25]~q\;
\ALT_INV_tmp_wait[12][26]~q\ <= NOT \tmp_wait[12][26]~q\;
\ALT_INV_Equal13~4_combout\ <= NOT \Equal13~4_combout\;
\ALT_INV_tmp_wait[12][27]~q\ <= NOT \tmp_wait[12][27]~q\;
\ALT_INV_tmp_wait[12][28]~q\ <= NOT \tmp_wait[12][28]~q\;
\ALT_INV_tmp_wait[12][29]~q\ <= NOT \tmp_wait[12][29]~q\;
\ALT_INV_tmp_wait[12][30]~q\ <= NOT \tmp_wait[12][30]~q\;
\ALT_INV_tmp_wait[12][31]~q\ <= NOT \tmp_wait[12][31]~q\;
\ALT_INV_tmp_wait[0][0]~q\ <= NOT \tmp_wait[0][0]~q\;
\ALT_INV_Equal13~3_combout\ <= NOT \Equal13~3_combout\;
\ALT_INV_tmp_wait[12][15]~q\ <= NOT \tmp_wait[12][15]~q\;
\ALT_INV_tmp_wait[12][16]~q\ <= NOT \tmp_wait[12][16]~q\;
\ALT_INV_tmp_wait[2][8]~q\ <= NOT \tmp_wait[2][8]~q\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_tmp_wait[2][1]~q\ <= NOT \tmp_wait[2][1]~q\;
\ALT_INV_tmp_wait[2][2]~q\ <= NOT \tmp_wait[2][2]~q\;
\ALT_INV_index[2][2]~q\ <= NOT \index[2][2]~q\;
\ALT_INV_index[2][1]~q\ <= NOT \index[2][1]~q\;
\ALT_INV_index[2][0]~q\ <= NOT \index[2][0]~q\;
\ALT_INV_Equal5~6_combout\ <= NOT \Equal5~6_combout\;
\ALT_INV_Equal5~5_combout\ <= NOT \Equal5~5_combout\;
\ALT_INV_tmp_wait[4][21]~q\ <= NOT \tmp_wait[4][21]~q\;
\ALT_INV_tmp_wait[4][22]~q\ <= NOT \tmp_wait[4][22]~q\;
\ALT_INV_tmp_wait[4][23]~q\ <= NOT \tmp_wait[4][23]~q\;
\ALT_INV_tmp_wait[4][24]~q\ <= NOT \tmp_wait[4][24]~q\;
\ALT_INV_tmp_wait[4][25]~q\ <= NOT \tmp_wait[4][25]~q\;
\ALT_INV_tmp_wait[4][26]~q\ <= NOT \tmp_wait[4][26]~q\;
\ALT_INV_Equal5~4_combout\ <= NOT \Equal5~4_combout\;
\ALT_INV_tmp_wait[4][27]~q\ <= NOT \tmp_wait[4][27]~q\;
\ALT_INV_tmp_wait[4][28]~q\ <= NOT \tmp_wait[4][28]~q\;
\ALT_INV_tmp_wait[4][29]~q\ <= NOT \tmp_wait[4][29]~q\;
\ALT_INV_tmp_wait[4][30]~q\ <= NOT \tmp_wait[4][30]~q\;
\ALT_INV_tmp_wait[4][31]~q\ <= NOT \tmp_wait[4][31]~q\;
\ALT_INV_Equal5~3_combout\ <= NOT \Equal5~3_combout\;
\ALT_INV_tmp_wait[4][15]~q\ <= NOT \tmp_wait[4][15]~q\;
\ALT_INV_tmp_wait[4][16]~q\ <= NOT \tmp_wait[4][16]~q\;
\ALT_INV_tmp_wait[4][17]~q\ <= NOT \tmp_wait[4][17]~q\;
\ALT_INV_tmp_wait[4][18]~q\ <= NOT \tmp_wait[4][18]~q\;
\ALT_INV_tmp_wait[4][19]~q\ <= NOT \tmp_wait[4][19]~q\;
\ALT_INV_tmp_wait[4][20]~q\ <= NOT \tmp_wait[4][20]~q\;
\ALT_INV_Equal5~2_combout\ <= NOT \Equal5~2_combout\;
\ALT_INV_tmp_wait[4][9]~q\ <= NOT \tmp_wait[4][9]~q\;
\ALT_INV_tmp_wait[4][10]~q\ <= NOT \tmp_wait[4][10]~q\;
\ALT_INV_tmp_wait[4][11]~q\ <= NOT \tmp_wait[4][11]~q\;
\ALT_INV_tmp_wait[4][12]~q\ <= NOT \tmp_wait[4][12]~q\;
\ALT_INV_tmp_wait[4][13]~q\ <= NOT \tmp_wait[4][13]~q\;
\ALT_INV_tmp_wait[4][14]~q\ <= NOT \tmp_wait[4][14]~q\;
\ALT_INV_Equal5~1_combout\ <= NOT \Equal5~1_combout\;
\ALT_INV_tmp_wait[4][3]~q\ <= NOT \tmp_wait[4][3]~q\;
\ALT_INV_tmp_wait[4][4]~q\ <= NOT \tmp_wait[4][4]~q\;
\ALT_INV_tmp_wait[4][5]~q\ <= NOT \tmp_wait[4][5]~q\;
\ALT_INV_tmp_wait[4][6]~q\ <= NOT \tmp_wait[4][6]~q\;
\ALT_INV_tmp_wait[4][7]~q\ <= NOT \tmp_wait[4][7]~q\;
\ALT_INV_tmp_wait[4][8]~q\ <= NOT \tmp_wait[4][8]~q\;
\ALT_INV_Equal5~0_combout\ <= NOT \Equal5~0_combout\;
\ALT_INV_tmp_wait[4][1]~q\ <= NOT \tmp_wait[4][1]~q\;
\ALT_INV_tmp_wait[4][2]~q\ <= NOT \tmp_wait[4][2]~q\;
\ALT_INV_Mux130~0_combout\ <= NOT \Mux130~0_combout\;
\ALT_INV_index[4][0]~q\ <= NOT \index[4][0]~q\;
\ALT_INV_index[4][1]~q\ <= NOT \index[4][1]~q\;
\ALT_INV_index[4][2]~q\ <= NOT \index[4][2]~q\;
\ALT_INV_Equal6~6_combout\ <= NOT \Equal6~6_combout\;
\ALT_INV_Equal6~5_combout\ <= NOT \Equal6~5_combout\;
\ALT_INV_tmp_wait[5][21]~q\ <= NOT \tmp_wait[5][21]~q\;
\ALT_INV_tmp_wait[5][22]~q\ <= NOT \tmp_wait[5][22]~q\;
\ALT_INV_tmp_wait[5][23]~q\ <= NOT \tmp_wait[5][23]~q\;
\ALT_INV_tmp_wait[5][24]~q\ <= NOT \tmp_wait[5][24]~q\;
\ALT_INV_tmp_wait[5][25]~q\ <= NOT \tmp_wait[5][25]~q\;
\ALT_INV_tmp_wait[5][26]~q\ <= NOT \tmp_wait[5][26]~q\;
\ALT_INV_Equal6~4_combout\ <= NOT \Equal6~4_combout\;
\ALT_INV_tmp_wait[5][27]~q\ <= NOT \tmp_wait[5][27]~q\;
\ALT_INV_tmp_wait[5][28]~q\ <= NOT \tmp_wait[5][28]~q\;
\ALT_INV_tmp_wait[5][29]~q\ <= NOT \tmp_wait[5][29]~q\;
\ALT_INV_tmp_wait[5][30]~q\ <= NOT \tmp_wait[5][30]~q\;
\ALT_INV_tmp_wait[5][31]~q\ <= NOT \tmp_wait[5][31]~q\;
\ALT_INV_Equal6~3_combout\ <= NOT \Equal6~3_combout\;
\ALT_INV_tmp_wait[5][15]~q\ <= NOT \tmp_wait[5][15]~q\;
\ALT_INV_tmp_wait[5][16]~q\ <= NOT \tmp_wait[5][16]~q\;
\ALT_INV_tmp_wait[5][17]~q\ <= NOT \tmp_wait[5][17]~q\;
\ALT_INV_tmp_wait[5][18]~q\ <= NOT \tmp_wait[5][18]~q\;
\ALT_INV_tmp_wait[5][19]~q\ <= NOT \tmp_wait[5][19]~q\;
\ALT_INV_tmp_wait[5][20]~q\ <= NOT \tmp_wait[5][20]~q\;
\ALT_INV_Equal6~2_combout\ <= NOT \Equal6~2_combout\;
\ALT_INV_tmp_wait[5][9]~q\ <= NOT \tmp_wait[5][9]~q\;
\ALT_INV_tmp_wait[5][10]~q\ <= NOT \tmp_wait[5][10]~q\;
\ALT_INV_tmp_wait[5][11]~q\ <= NOT \tmp_wait[5][11]~q\;
\ALT_INV_tmp_wait[5][12]~q\ <= NOT \tmp_wait[5][12]~q\;
\ALT_INV_tmp_wait[5][13]~q\ <= NOT \tmp_wait[5][13]~q\;
\ALT_INV_tmp_wait[5][14]~q\ <= NOT \tmp_wait[5][14]~q\;
\ALT_INV_Equal6~1_combout\ <= NOT \Equal6~1_combout\;
\ALT_INV_tmp_wait[5][3]~q\ <= NOT \tmp_wait[5][3]~q\;
\ALT_INV_tmp_wait[5][4]~q\ <= NOT \tmp_wait[5][4]~q\;
\ALT_INV_tmp_wait[5][5]~q\ <= NOT \tmp_wait[5][5]~q\;
\ALT_INV_tmp_wait[5][6]~q\ <= NOT \tmp_wait[5][6]~q\;
\ALT_INV_tmp_wait[5][7]~q\ <= NOT \tmp_wait[5][7]~q\;
\ALT_INV_tmp_wait[5][8]~q\ <= NOT \tmp_wait[5][8]~q\;
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
\ALT_INV_tmp_wait[5][1]~q\ <= NOT \tmp_wait[5][1]~q\;
\ALT_INV_tmp_wait[5][2]~q\ <= NOT \tmp_wait[5][2]~q\;
\ALT_INV_Mux162~0_combout\ <= NOT \Mux162~0_combout\;
\ALT_INV_index[5][0]~q\ <= NOT \index[5][0]~q\;
\ALT_INV_index[5][1]~q\ <= NOT \index[5][1]~q\;
\ALT_INV_index[5][2]~q\ <= NOT \index[5][2]~q\;
\ALT_INV_Mux194~0_combout\ <= NOT \Mux194~0_combout\;
\ALT_INV_index[6][0]~q\ <= NOT \index[6][0]~q\;
\ALT_INV_index[6][1]~q\ <= NOT \index[6][1]~q\;
\ALT_INV_index[6][2]~q\ <= NOT \index[6][2]~q\;
\ALT_INV_Equal7~6_combout\ <= NOT \Equal7~6_combout\;
\ALT_INV_Equal7~5_combout\ <= NOT \Equal7~5_combout\;
\ALT_INV_tmp_wait[6][21]~q\ <= NOT \tmp_wait[6][21]~q\;
\ALT_INV_tmp_wait[6][22]~q\ <= NOT \tmp_wait[6][22]~q\;
\ALT_INV_tmp_wait[6][23]~q\ <= NOT \tmp_wait[6][23]~q\;
\ALT_INV_tmp_wait[6][24]~q\ <= NOT \tmp_wait[6][24]~q\;
\ALT_INV_tmp_wait[6][25]~q\ <= NOT \tmp_wait[6][25]~q\;
\ALT_INV_tmp_wait[6][26]~q\ <= NOT \tmp_wait[6][26]~q\;
\ALT_INV_Equal7~4_combout\ <= NOT \Equal7~4_combout\;
\ALT_INV_tmp_wait[6][27]~q\ <= NOT \tmp_wait[6][27]~q\;
\ALT_INV_tmp_wait[6][28]~q\ <= NOT \tmp_wait[6][28]~q\;
\ALT_INV_tmp_wait[6][29]~q\ <= NOT \tmp_wait[6][29]~q\;
\ALT_INV_tmp_wait[6][30]~q\ <= NOT \tmp_wait[6][30]~q\;
\ALT_INV_tmp_wait[6][31]~q\ <= NOT \tmp_wait[6][31]~q\;
\ALT_INV_Equal7~3_combout\ <= NOT \Equal7~3_combout\;
\ALT_INV_tmp_wait[6][15]~q\ <= NOT \tmp_wait[6][15]~q\;
\ALT_INV_tmp_wait[6][16]~q\ <= NOT \tmp_wait[6][16]~q\;
\ALT_INV_tmp_wait[6][17]~q\ <= NOT \tmp_wait[6][17]~q\;
\ALT_INV_tmp_wait[6][18]~q\ <= NOT \tmp_wait[6][18]~q\;
\ALT_INV_tmp_wait[6][19]~q\ <= NOT \tmp_wait[6][19]~q\;
\ALT_INV_tmp_wait[6][20]~q\ <= NOT \tmp_wait[6][20]~q\;
\ALT_INV_Equal7~2_combout\ <= NOT \Equal7~2_combout\;
\ALT_INV_tmp_wait[6][9]~q\ <= NOT \tmp_wait[6][9]~q\;
\ALT_INV_tmp_wait[6][10]~q\ <= NOT \tmp_wait[6][10]~q\;
\ALT_INV_tmp_wait[6][11]~q\ <= NOT \tmp_wait[6][11]~q\;
\ALT_INV_tmp_wait[6][12]~q\ <= NOT \tmp_wait[6][12]~q\;
\ALT_INV_song[0][11][5]~combout\ <= NOT \song[0][11][5]~combout\;
\ALT_INV_song[0][11][31]~combout\ <= NOT \song[0][11][31]~combout\;
ALT_INV_tmp_song(1) <= NOT tmp_song(1);
ALT_INV_tmp_song(0) <= NOT tmp_song(0);
\ALT_INV_tmp_wait~25_combout\ <= NOT \tmp_wait~25_combout\;
\ALT_INV_tmp_wait~24_combout\ <= NOT \tmp_wait~24_combout\;
\ALT_INV_tmp_wait~23_combout\ <= NOT \tmp_wait~23_combout\;
\ALT_INV_tmp_wait~22_combout\ <= NOT \tmp_wait~22_combout\;
\ALT_INV_tmp_wait~21_combout\ <= NOT \tmp_wait~21_combout\;
\ALT_INV_tmp_wait~20_combout\ <= NOT \tmp_wait~20_combout\;
\ALT_INV_tmp_wait~19_combout\ <= NOT \tmp_wait~19_combout\;
\ALT_INV_tmp_wait~18_combout\ <= NOT \tmp_wait~18_combout\;
\ALT_INV_tmp_wait~17_combout\ <= NOT \tmp_wait~17_combout\;
\ALT_INV_tmp_wait~16_combout\ <= NOT \tmp_wait~16_combout\;
\ALT_INV_tmp_wait~15_combout\ <= NOT \tmp_wait~15_combout\;
\ALT_INV_tmp_wait~14_combout\ <= NOT \tmp_wait~14_combout\;
\ALT_INV_tmp_wait~13_combout\ <= NOT \tmp_wait~13_combout\;
\ALT_INV_tmp_wait~12_combout\ <= NOT \tmp_wait~12_combout\;
\ALT_INV_tmp_wait~11_combout\ <= NOT \tmp_wait~11_combout\;
\ALT_INV_tmp_wait~10_combout\ <= NOT \tmp_wait~10_combout\;
\ALT_INV_tmp_wait~9_combout\ <= NOT \tmp_wait~9_combout\;
\ALT_INV_tmp_wait~8_combout\ <= NOT \tmp_wait~8_combout\;
\ALT_INV_tmp_wait~7_combout\ <= NOT \tmp_wait~7_combout\;
\ALT_INV_tmp_wait~6_combout\ <= NOT \tmp_wait~6_combout\;
\ALT_INV_tmp_wait~5_combout\ <= NOT \tmp_wait~5_combout\;
\ALT_INV_tmp_wait~4_combout\ <= NOT \tmp_wait~4_combout\;
\ALT_INV_tmp_wait~3_combout\ <= NOT \tmp_wait~3_combout\;
\ALT_INV_tmp_wait~2_combout\ <= NOT \tmp_wait~2_combout\;
\ALT_INV_tmp_wait~1_combout\ <= NOT \tmp_wait~1_combout\;
\ALT_INV_tmp_wait~0_combout\ <= NOT \tmp_wait~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_note_length~21_combout\ <= NOT \note_length~21_combout\;
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_tmp_wait[0][20]~q\ <= NOT \tmp_wait[0][20]~q\;
\ALT_INV_tmp_wait[0][21]~q\ <= NOT \tmp_wait[0][21]~q\;
\ALT_INV_tmp_wait[0][22]~q\ <= NOT \tmp_wait[0][22]~q\;
\ALT_INV_tmp_wait[0][23]~q\ <= NOT \tmp_wait[0][23]~q\;
\ALT_INV_tmp_wait[0][24]~q\ <= NOT \tmp_wait[0][24]~q\;
\ALT_INV_tmp_wait[0][25]~q\ <= NOT \tmp_wait[0][25]~q\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_tmp_wait[0][26]~q\ <= NOT \tmp_wait[0][26]~q\;
\ALT_INV_tmp_wait[0][27]~q\ <= NOT \tmp_wait[0][27]~q\;
\ALT_INV_tmp_wait[0][28]~q\ <= NOT \tmp_wait[0][28]~q\;
\ALT_INV_tmp_wait[0][29]~q\ <= NOT \tmp_wait[0][29]~q\;
\ALT_INV_tmp_wait[0][30]~q\ <= NOT \tmp_wait[0][30]~q\;
\ALT_INV_tmp_wait[0][31]~q\ <= NOT \tmp_wait[0][31]~q\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_tmp_wait[0][14]~q\ <= NOT \tmp_wait[0][14]~q\;
\ALT_INV_tmp_wait[0][15]~q\ <= NOT \tmp_wait[0][15]~q\;
\ALT_INV_tmp_wait[0][16]~q\ <= NOT \tmp_wait[0][16]~q\;
\ALT_INV_tmp_wait[0][17]~q\ <= NOT \tmp_wait[0][17]~q\;
\ALT_INV_tmp_wait[0][18]~q\ <= NOT \tmp_wait[0][18]~q\;
\ALT_INV_tmp_wait[0][19]~q\ <= NOT \tmp_wait[0][19]~q\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_tmp_wait[0][8]~q\ <= NOT \tmp_wait[0][8]~q\;
\ALT_INV_tmp_wait[0][9]~q\ <= NOT \tmp_wait[0][9]~q\;
\ALT_INV_tmp_wait[0][10]~q\ <= NOT \tmp_wait[0][10]~q\;
\ALT_INV_tmp_wait[0][11]~q\ <= NOT \tmp_wait[0][11]~q\;
\ALT_INV_tmp_wait[0][12]~q\ <= NOT \tmp_wait[0][12]~q\;
\ALT_INV_tmp_wait[0][13]~q\ <= NOT \tmp_wait[0][13]~q\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_tmp_wait[0][2]~q\ <= NOT \tmp_wait[0][2]~q\;
\ALT_INV_tmp_wait[0][3]~q\ <= NOT \tmp_wait[0][3]~q\;
\ALT_INV_tmp_wait[0][4]~q\ <= NOT \tmp_wait[0][4]~q\;
\ALT_INV_tmp_wait[0][5]~q\ <= NOT \tmp_wait[0][5]~q\;
\ALT_INV_tmp_wait[0][6]~q\ <= NOT \tmp_wait[0][6]~q\;
\ALT_INV_tmp_wait[0][7]~q\ <= NOT \tmp_wait[0][7]~q\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_tmp_wait[0][1]~q\ <= NOT \tmp_wait[0][1]~q\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_index[0][0]~q\ <= NOT \index[0][0]~q\;
\ALT_INV_index[0][1]~q\ <= NOT \index[0][1]~q\;
\ALT_INV_index[0][2]~q\ <= NOT \index[0][2]~q\;
\ALT_INV_Mux91~0_combout\ <= NOT \Mux91~0_combout\;
\ALT_INV_Mux66~0_combout\ <= NOT \Mux66~0_combout\;
\ALT_INV_Equal3~6_combout\ <= NOT \Equal3~6_combout\;
\ALT_INV_Equal3~5_combout\ <= NOT \Equal3~5_combout\;
\ALT_INV_tmp_wait[2][21]~q\ <= NOT \tmp_wait[2][21]~q\;
\ALT_INV_tmp_wait[2][22]~q\ <= NOT \tmp_wait[2][22]~q\;
\ALT_INV_tmp_wait[2][23]~q\ <= NOT \tmp_wait[2][23]~q\;
\ALT_INV_tmp_wait[2][24]~q\ <= NOT \tmp_wait[2][24]~q\;
\ALT_INV_tmp_wait[2][25]~q\ <= NOT \tmp_wait[2][25]~q\;
\ALT_INV_tmp_wait[2][26]~q\ <= NOT \tmp_wait[2][26]~q\;
\ALT_INV_Equal3~4_combout\ <= NOT \Equal3~4_combout\;
\ALT_INV_tmp_wait[2][27]~q\ <= NOT \tmp_wait[2][27]~q\;
\ALT_INV_tmp_wait[2][28]~q\ <= NOT \tmp_wait[2][28]~q\;
\ALT_INV_tmp_wait[2][29]~q\ <= NOT \tmp_wait[2][29]~q\;
\ALT_INV_tmp_wait[2][30]~q\ <= NOT \tmp_wait[2][30]~q\;
\ALT_INV_tmp_wait[2][31]~q\ <= NOT \tmp_wait[2][31]~q\;
\ALT_INV_Equal3~3_combout\ <= NOT \Equal3~3_combout\;
\ALT_INV_tmp_wait[2][15]~q\ <= NOT \tmp_wait[2][15]~q\;
\ALT_INV_tmp_wait[2][16]~q\ <= NOT \tmp_wait[2][16]~q\;
\ALT_INV_tmp_wait[2][17]~q\ <= NOT \tmp_wait[2][17]~q\;
\ALT_INV_tmp_wait[2][18]~q\ <= NOT \tmp_wait[2][18]~q\;
\ALT_INV_tmp_wait[2][19]~q\ <= NOT \tmp_wait[2][19]~q\;
\ALT_INV_tmp_wait[2][20]~q\ <= NOT \tmp_wait[2][20]~q\;
\ALT_INV_Equal3~2_combout\ <= NOT \Equal3~2_combout\;
\ALT_INV_tmp_wait[2][9]~q\ <= NOT \tmp_wait[2][9]~q\;
\ALT_INV_tmp_wait[2][10]~q\ <= NOT \tmp_wait[2][10]~q\;
\ALT_INV_tmp_wait[2][11]~q\ <= NOT \tmp_wait[2][11]~q\;
\ALT_INV_tmp_wait[2][12]~q\ <= NOT \tmp_wait[2][12]~q\;
\ALT_INV_tmp_wait[2][13]~q\ <= NOT \tmp_wait[2][13]~q\;
\ALT_INV_tmp_wait[2][14]~q\ <= NOT \tmp_wait[2][14]~q\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
\ALT_INV_tmp_wait[2][3]~q\ <= NOT \tmp_wait[2][3]~q\;
\ALT_INV_tmp_wait[2][4]~q\ <= NOT \tmp_wait[2][4]~q\;
\ALT_INV_tmp_wait[2][5]~q\ <= NOT \tmp_wait[2][5]~q\;
\ALT_INV_tmp_wait[2][6]~q\ <= NOT \tmp_wait[2][6]~q\;
\ALT_INV_tmp_wait[2][7]~q\ <= NOT \tmp_wait[2][7]~q\;
\ALT_INV_screen_end~input_o\ <= NOT \screen_end~input_o\;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\ALT_INV_song_choose[1]~input_o\ <= NOT \song_choose[1]~input_o\;
\ALT_INV_song_choose[0]~input_o\ <= NOT \song_choose[0]~input_o\;
\ALT_INV_resetN~input_o\ <= NOT \resetN~input_o\;

-- Location: IOOBUF_X52_Y0_N53
\note_length[12][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(12)(0));

-- Location: IOOBUF_X36_Y81_N2
\note_length[12][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(12)(1));

-- Location: IOOBUF_X89_Y16_N5
\note_length[12][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[12][2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(12)(2));

-- Location: IOOBUF_X28_Y81_N53
\note_length[12][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(12)(3));

-- Location: IOOBUF_X14_Y0_N53
\note_length[12][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(12)(4));

-- Location: IOOBUF_X89_Y20_N79
\note_length[12][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[12][5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(12)(5));

-- Location: IOOBUF_X89_Y6_N5
\note_length[12][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[12][6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(12)(6));

-- Location: IOOBUF_X72_Y0_N53
\note_length[12][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(12)(7));

-- Location: IOOBUF_X28_Y0_N36
\note_length[11][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(11)(0));

-- Location: IOOBUF_X4_Y0_N36
\note_length[11][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(11)(1));

-- Location: IOOBUF_X89_Y16_N39
\note_length[11][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[11][2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(11)(2));

-- Location: IOOBUF_X80_Y0_N2
\note_length[11][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(11)(3));

-- Location: IOOBUF_X89_Y23_N22
\note_length[11][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(11)(4));

-- Location: IOOBUF_X89_Y11_N96
\note_length[11][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[11][5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(11)(5));

-- Location: IOOBUF_X89_Y13_N5
\note_length[11][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[11][6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(11)(6));

-- Location: IOOBUF_X52_Y0_N36
\note_length[11][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(11)(7));

-- Location: IOOBUF_X32_Y0_N36
\note_length[10][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(10)(0));

-- Location: IOOBUF_X89_Y25_N39
\note_length[10][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(10)(1));

-- Location: IOOBUF_X89_Y6_N39
\note_length[10][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[10][2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(10)(2));

-- Location: IOOBUF_X18_Y0_N76
\note_length[10][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(10)(3));

-- Location: IOOBUF_X16_Y81_N36
\note_length[10][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(10)(4));

-- Location: IOOBUF_X84_Y0_N36
\note_length[10][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[10][5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(10)(5));

-- Location: IOOBUF_X89_Y15_N39
\note_length[10][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[10][6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(10)(6));

-- Location: IOOBUF_X28_Y0_N53
\note_length[10][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(10)(7));

-- Location: IOOBUF_X40_Y81_N2
\note_length[9][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(9)(0));

-- Location: IOOBUF_X38_Y81_N53
\note_length[9][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(9)(1));

-- Location: IOOBUF_X89_Y8_N56
\note_length[9][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[9][2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(9)(2));

-- Location: IOOBUF_X86_Y0_N2
\note_length[9][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(9)(3));

-- Location: IOOBUF_X4_Y0_N2
\note_length[9][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(9)(4));

-- Location: IOOBUF_X89_Y13_N56
\note_length[9][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[9][5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(9)(5));

-- Location: IOOBUF_X89_Y9_N56
\note_length[9][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[9][6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(9)(6));

-- Location: IOOBUF_X36_Y0_N36
\note_length[9][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(9)(7));

-- Location: IOOBUF_X4_Y81_N36
\note_length[8][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(8)(0));

-- Location: IOOBUF_X54_Y0_N2
\note_length[8][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(8)(1));

-- Location: IOOBUF_X89_Y20_N45
\note_length[8][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[8][2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(8)(2));

-- Location: IOOBUF_X20_Y81_N36
\note_length[8][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(8)(3));

-- Location: IOOBUF_X32_Y0_N19
\note_length[8][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(8)(4));

-- Location: IOOBUF_X89_Y6_N56
\note_length[8][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[8][5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(8)(5));

-- Location: IOOBUF_X89_Y4_N96
\note_length[8][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[8][6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(8)(6));

-- Location: IOOBUF_X78_Y0_N53
\note_length[8][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(8)(7));

-- Location: IOOBUF_X89_Y4_N45
\note_length[7][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(7)(0));

-- Location: IOOBUF_X40_Y81_N53
\note_length[7][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(7)(1));

-- Location: IOOBUF_X89_Y20_N96
\note_length[7][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[7][2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(7)(2));

-- Location: IOOBUF_X38_Y81_N19
\note_length[7][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(7)(3));

-- Location: IOOBUF_X88_Y0_N54
\note_length[7][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(7)(4));

-- Location: IOOBUF_X89_Y6_N22
\note_length[7][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[7][5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(7)(5));

-- Location: IOOBUF_X89_Y9_N5
\note_length[7][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[7][6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(7)(6));

-- Location: IOOBUF_X56_Y0_N53
\note_length[7][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(7)(7));

-- Location: IOOBUF_X2_Y0_N59
\note_length[6][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(6)(0));

-- Location: IOOBUF_X84_Y0_N2
\note_length[6][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(6)(1));

-- Location: IOOBUF_X89_Y4_N62
\note_length[6][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[6][2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(6)(2));

-- Location: IOOBUF_X86_Y0_N53
\note_length[6][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(6)(3));

-- Location: IOOBUF_X22_Y0_N19
\note_length[6][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(6)(4));

-- Location: IOOBUF_X89_Y11_N79
\note_length[6][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[6][5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(6)(5));

-- Location: IOOBUF_X89_Y13_N22
\note_length[6][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[6][6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(6)(6));

-- Location: IOOBUF_X72_Y0_N19
\note_length[6][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(6)(7));

-- Location: IOOBUF_X14_Y0_N19
\note_length[5][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(5)(0));

-- Location: IOOBUF_X8_Y81_N19
\note_length[5][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(5)(1));

-- Location: IOOBUF_X89_Y16_N56
\note_length[5][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[5][2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(5)(2));

-- Location: IOOBUF_X16_Y81_N53
\note_length[5][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(5)(3));

-- Location: IOOBUF_X22_Y81_N53
\note_length[5][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(5)(4));

-- Location: IOOBUF_X89_Y8_N39
\note_length[5][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[5][5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(5)(5));

-- Location: IOOBUF_X84_Y0_N53
\note_length[5][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[5][6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(5)(6));

-- Location: IOOBUF_X89_Y25_N5
\note_length[5][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(5)(7));

-- Location: IOOBUF_X72_Y0_N2
\note_length[4][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(4)(0));

-- Location: IOOBUF_X66_Y0_N93
\note_length[4][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(4)(1));

-- Location: IOOBUF_X89_Y9_N22
\note_length[4][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[4][2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(4)(2));

-- Location: IOOBUF_X24_Y0_N2
\note_length[4][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(4)(3));

-- Location: IOOBUF_X58_Y0_N42
\note_length[4][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(4)(4));

-- Location: IOOBUF_X89_Y21_N5
\note_length[4][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[4][5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(4)(5));

-- Location: IOOBUF_X89_Y11_N62
\note_length[4][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[4][6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(4)(6));

-- Location: IOOBUF_X14_Y81_N36
\note_length[4][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(4)(7));

-- Location: IOOBUF_X34_Y0_N42
\note_length[3][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(3)(0));

-- Location: IOOBUF_X28_Y81_N36
\note_length[3][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(3)(1));

-- Location: IOOBUF_X24_Y0_N19
\note_length[3][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(3)(2));

-- Location: IOOBUF_X16_Y81_N2
\note_length[3][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(3)(3));

-- Location: IOOBUF_X60_Y0_N2
\note_length[3][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(3)(4));

-- Location: IOOBUF_X30_Y0_N53
\note_length[3][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(3)(5));

-- Location: IOOBUF_X80_Y0_N36
\note_length[3][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(3)(6));

-- Location: IOOBUF_X82_Y0_N76
\note_length[3][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(3)(7));

-- Location: IOOBUF_X24_Y0_N36
\note_length[2][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(2)(0));

-- Location: IOOBUF_X32_Y81_N36
\note_length[2][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(2)(1));

-- Location: IOOBUF_X89_Y15_N22
\note_length[2][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[2][2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(2)(2));

-- Location: IOOBUF_X22_Y81_N19
\note_length[2][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(2)(3));

-- Location: IOOBUF_X28_Y81_N2
\note_length[2][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(2)(4));

-- Location: IOOBUF_X89_Y8_N5
\note_length[2][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[2][5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(2)(5));

-- Location: IOOBUF_X82_Y0_N93
\note_length[2][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[2][6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(2)(6));

-- Location: IOOBUF_X89_Y25_N56
\note_length[2][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(2)(7));

-- Location: IOOBUF_X89_Y4_N79
\note_length[1][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(1)(0));

-- Location: IOOBUF_X74_Y0_N76
\note_length[1][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(1)(1));

-- Location: IOOBUF_X26_Y0_N42
\note_length[1][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(1)(2));

-- Location: IOOBUF_X89_Y23_N5
\note_length[1][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(1)(3));

-- Location: IOOBUF_X4_Y0_N19
\note_length[1][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(1)(4));

-- Location: IOOBUF_X16_Y81_N19
\note_length[1][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(1)(5));

-- Location: IOOBUF_X88_Y0_N37
\note_length[1][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(1)(6));

-- Location: IOOBUF_X62_Y0_N36
\note_length[1][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(1)(7));

-- Location: IOOBUF_X4_Y0_N53
\note_length[0][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(0)(0));

-- Location: IOOBUF_X40_Y0_N19
\note_length[0][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(0)(1));

-- Location: IOOBUF_X89_Y16_N22
\note_length[0][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[0][2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(0)(2));

-- Location: IOOBUF_X4_Y81_N53
\note_length[0][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(0)(3));

-- Location: IOOBUF_X66_Y0_N59
\note_length[0][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(0)(4));

-- Location: IOOBUF_X89_Y15_N5
\note_length[0][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[0][5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(0)(5));

-- Location: IOOBUF_X89_Y20_N62
\note_length[0][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \note_length[0][6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_note_length(0)(6));

-- Location: IOOBUF_X6_Y0_N2
\note_length[0][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_note_length(0)(7));

-- Location: IOIBUF_X89_Y25_N21
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: MLABCELL_X87_Y14_N30
\Add37~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add37~9_sumout\ = SUM(( \index[12][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add37~10\ = CARRY(( \index[12][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[12][0]~q\,
	cin => GND,
	sumout => \Add37~9_sumout\,
	cout => \Add37~10\);

-- Location: IOIBUF_X89_Y8_N21
\song_choose[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_song_choose(0),
	o => \song_choose[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\song_choose[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_song_choose(1),
	o => \song_choose[1]~input_o\);

-- Location: LABCELL_X85_Y15_N45
\tmp_song[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- tmp_song(1) = ( tmp_song(1) & ( (!\process_0~0_combout\) # (\song_choose[1]~input_o\) ) ) # ( !tmp_song(1) & ( (\process_0~0_combout\ & \song_choose[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_song_choose[1]~input_o\,
	dataf => ALT_INV_tmp_song(1),
	combout => tmp_song(1));

-- Location: IOIBUF_X89_Y15_N55
\resetN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetN,
	o => \resetN~input_o\);

-- Location: LABCELL_X85_Y15_N15
\tmp_song[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- tmp_song(0) = ( tmp_song(0) & ( (!\process_0~0_combout\) # (\song_choose[0]~input_o\) ) ) # ( !tmp_song(0) & ( (\song_choose[0]~input_o\ & \process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_song_choose[0]~input_o\,
	datad => \ALT_INV_process_0~0_combout\,
	dataf => ALT_INV_tmp_song(0),
	combout => tmp_song(0));

-- Location: LABCELL_X85_Y15_N54
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( tmp_song(0) & ( (!\song_choose[0]~input_o\) # ((!\resetN~input_o\) # (!tmp_song(1) $ (!\song_choose[1]~input_o\))) ) ) # ( !tmp_song(0) & ( ((!\resetN~input_o\) # (!tmp_song(1) $ (!\song_choose[1]~input_o\))) # 
-- (\song_choose[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111101111111110111110111111111101111101111111110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_song_choose[0]~input_o\,
	datab => ALT_INV_tmp_song(1),
	datac => \ALT_INV_song_choose[1]~input_o\,
	datad => \ALT_INV_resetN~input_o\,
	dataf => ALT_INV_tmp_song(0),
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X89_Y13_N38
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X89_Y11_N44
\screen_end~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_screen_end,
	o => \screen_end~input_o\);

-- Location: LABCELL_X83_Y14_N48
\tmp_wait[0][0]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait[0][0]~26_combout\ = ( !\tmp_wait[0][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_tmp_wait[0][0]~q\,
	combout => \tmp_wait[0][0]~26_combout\);

-- Location: LABCELL_X85_Y15_N57
\index[0][7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \index[0][7]~1_combout\ = ( \screen_end~input_o\ & ( \enable~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_enable~input_o\,
	dataf => \ALT_INV_screen_end~input_o\,
	combout => \index[0][7]~1_combout\);

-- Location: FF_X83_Y14_N50
\tmp_wait[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \tmp_wait[0][0]~26_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][0]~q\);

-- Location: MLABCELL_X84_Y11_N0
\Add38~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~126_cout\ = CARRY(( \tmp_wait[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tmp_wait[0][0]~q\,
	cin => GND,
	cout => \Add38~126_cout\);

-- Location: MLABCELL_X84_Y11_N3
\Add38~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~5_sumout\ = SUM(( \tmp_wait[12][1]~q\ ) + ( VCC ) + ( \Add38~126_cout\ ))
-- \Add38~6\ = CARRY(( \tmp_wait[12][1]~q\ ) + ( VCC ) + ( \Add38~126_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait[12][1]~q\,
	cin => \Add38~126_cout\,
	sumout => \Add38~5_sumout\,
	cout => \Add38~6\);

-- Location: FF_X84_Y11_N5
\tmp_wait[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][1]~q\);

-- Location: MLABCELL_X84_Y11_N6
\Add38~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~1_sumout\ = SUM(( VCC ) + ( (\tmp_wait[12][2]~q\) # (\Equal13~6_combout\) ) + ( \Add38~6\ ))
-- \Add38~2\ = CARRY(( VCC ) + ( (\tmp_wait[12][2]~q\) # (\Equal13~6_combout\) ) + ( \Add38~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal13~6_combout\,
	dataf => \ALT_INV_tmp_wait[12][2]~q\,
	cin => \Add38~6\,
	sumout => \Add38~1_sumout\,
	cout => \Add38~2\);

-- Location: FF_X84_Y11_N8
\tmp_wait[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][2]~q\);

-- Location: MLABCELL_X84_Y11_N9
\Add38~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~29_sumout\ = SUM(( (!\Equal13~6_combout\ & (\tmp_wait[12][3]~q\)) # (\Equal13~6_combout\ & ((\Mux386~0_combout\))) ) + ( VCC ) + ( \Add38~2\ ))
-- \Add38~30\ = CARRY(( (!\Equal13~6_combout\ & (\tmp_wait[12][3]~q\)) # (\Equal13~6_combout\ & ((\Mux386~0_combout\))) ) + ( VCC ) + ( \Add38~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_tmp_wait[12][3]~q\,
	datac => \ALT_INV_Mux386~0_combout\,
	cin => \Add38~2\,
	sumout => \Add38~29_sumout\,
	cout => \Add38~30\);

-- Location: FF_X84_Y11_N11
\tmp_wait[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~29_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][3]~q\);

-- Location: MLABCELL_X84_Y11_N12
\Add38~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~25_sumout\ = SUM(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][4]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~30\ ))
-- \Add38~26\ = CARRY(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][4]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datac => \ALT_INV_Mux386~0_combout\,
	dataf => \ALT_INV_tmp_wait[12][4]~q\,
	cin => \Add38~30\,
	sumout => \Add38~25_sumout\,
	cout => \Add38~26\);

-- Location: FF_X84_Y11_N14
\tmp_wait[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~25_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][4]~q\);

-- Location: MLABCELL_X84_Y11_N15
\Add38~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~21_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][5]~q\))) # (\Equal13~6_combout\ & (!\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~26\ ))
-- \Add38~22\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][5]~q\))) # (\Equal13~6_combout\ & (!\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	datac => \ALT_INV_tmp_wait[12][5]~q\,
	cin => \Add38~26\,
	sumout => \Add38~21_sumout\,
	cout => \Add38~22\);

-- Location: FF_X84_Y11_N17
\tmp_wait[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~21_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][5]~q\);

-- Location: MLABCELL_X84_Y11_N18
\Add38~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~17_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][6]~q\))) # (\Equal13~6_combout\ & (!\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~22\ ))
-- \Add38~18\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][6]~q\))) # (\Equal13~6_combout\ & (!\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	datac => \ALT_INV_tmp_wait[12][6]~q\,
	cin => \Add38~22\,
	sumout => \Add38~17_sumout\,
	cout => \Add38~18\);

-- Location: FF_X84_Y11_N20
\tmp_wait[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~17_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][6]~q\);

-- Location: MLABCELL_X84_Y11_N21
\Add38~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~13_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][7]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~18\ ))
-- \Add38~14\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][7]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datac => \ALT_INV_Mux386~0_combout\,
	datad => \ALT_INV_tmp_wait[12][7]~q\,
	cin => \Add38~18\,
	sumout => \Add38~13_sumout\,
	cout => \Add38~14\);

-- Location: FF_X84_Y11_N23
\tmp_wait[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~13_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][7]~q\);

-- Location: MLABCELL_X84_Y11_N24
\Add38~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~9_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][8]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~14\ ))
-- \Add38~10\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][8]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	datac => \ALT_INV_tmp_wait[12][8]~q\,
	cin => \Add38~14\,
	sumout => \Add38~9_sumout\,
	cout => \Add38~10\);

-- Location: FF_X84_Y11_N26
\tmp_wait[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][8]~q\);

-- Location: MLABCELL_X84_Y11_N27
\Add38~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~53_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][9]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~10\ ))
-- \Add38~54\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][9]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	datad => \ALT_INV_tmp_wait[12][9]~q\,
	cin => \Add38~10\,
	sumout => \Add38~53_sumout\,
	cout => \Add38~54\);

-- Location: FF_X84_Y11_N29
\tmp_wait[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~53_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][9]~q\);

-- Location: MLABCELL_X84_Y11_N30
\Add38~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~49_sumout\ = SUM(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][10]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~54\ ))
-- \Add38~50\ = CARRY(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][10]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datac => \ALT_INV_Mux386~0_combout\,
	dataf => \ALT_INV_tmp_wait[12][10]~q\,
	cin => \Add38~54\,
	sumout => \Add38~49_sumout\,
	cout => \Add38~50\);

-- Location: FF_X84_Y11_N32
\tmp_wait[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~49_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][10]~q\);

-- Location: MLABCELL_X84_Y11_N33
\Add38~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~45_sumout\ = SUM(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][11]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~50\ ))
-- \Add38~46\ = CARRY(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][11]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datac => \ALT_INV_Mux386~0_combout\,
	dataf => \ALT_INV_tmp_wait[12][11]~q\,
	cin => \Add38~50\,
	sumout => \Add38~45_sumout\,
	cout => \Add38~46\);

-- Location: FF_X84_Y11_N35
\tmp_wait[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~45_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][11]~q\);

-- Location: MLABCELL_X84_Y11_N36
\Add38~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~41_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][12]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~46\ ))
-- \Add38~42\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][12]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datac => \ALT_INV_Mux386~0_combout\,
	datad => \ALT_INV_tmp_wait[12][12]~q\,
	cin => \Add38~46\,
	sumout => \Add38~41_sumout\,
	cout => \Add38~42\);

-- Location: FF_X84_Y11_N38
\tmp_wait[12][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~41_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][12]~q\);

-- Location: MLABCELL_X84_Y11_N39
\Add38~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~37_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][13]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~42\ ))
-- \Add38~38\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][13]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	datac => \ALT_INV_tmp_wait[12][13]~q\,
	cin => \Add38~42\,
	sumout => \Add38~37_sumout\,
	cout => \Add38~38\);

-- Location: FF_X84_Y11_N41
\tmp_wait[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~37_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][13]~q\);

-- Location: MLABCELL_X84_Y11_N42
\Add38~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~33_sumout\ = SUM(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][14]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~38\ ))
-- \Add38~34\ = CARRY(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][14]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datac => \ALT_INV_Mux386~0_combout\,
	dataf => \ALT_INV_tmp_wait[12][14]~q\,
	cin => \Add38~38\,
	sumout => \Add38~33_sumout\,
	cout => \Add38~34\);

-- Location: FF_X84_Y11_N44
\tmp_wait[12][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~33_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][14]~q\);

-- Location: LABCELL_X83_Y11_N24
\Equal13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal13~2_combout\ = ( !\tmp_wait[12][9]~q\ & ( !\tmp_wait[12][10]~q\ & ( (!\tmp_wait[12][13]~q\ & (!\tmp_wait[12][12]~q\ & (!\tmp_wait[12][11]~q\ & !\tmp_wait[12][14]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[12][13]~q\,
	datab => \ALT_INV_tmp_wait[12][12]~q\,
	datac => \ALT_INV_tmp_wait[12][11]~q\,
	datad => \ALT_INV_tmp_wait[12][14]~q\,
	datae => \ALT_INV_tmp_wait[12][9]~q\,
	dataf => \ALT_INV_tmp_wait[12][10]~q\,
	combout => \Equal13~2_combout\);

-- Location: LABCELL_X83_Y11_N12
\Equal13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = ( !\tmp_wait[12][1]~q\ & ( !\tmp_wait[12][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_tmp_wait[12][1]~q\,
	dataf => \ALT_INV_tmp_wait[12][2]~q\,
	combout => \Equal13~0_combout\);

-- Location: LABCELL_X83_Y11_N21
\Equal13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = ( !\tmp_wait[12][7]~q\ & ( !\tmp_wait[12][4]~q\ & ( (!\tmp_wait[12][5]~q\ & (!\tmp_wait[12][6]~q\ & (!\tmp_wait[12][8]~q\ & !\tmp_wait[12][3]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[12][5]~q\,
	datab => \ALT_INV_tmp_wait[12][6]~q\,
	datac => \ALT_INV_tmp_wait[12][8]~q\,
	datad => \ALT_INV_tmp_wait[12][3]~q\,
	datae => \ALT_INV_tmp_wait[12][7]~q\,
	dataf => \ALT_INV_tmp_wait[12][4]~q\,
	combout => \Equal13~1_combout\);

-- Location: MLABCELL_X84_Y11_N45
\Add38~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~77_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][15]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~34\ ))
-- \Add38~78\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][15]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datac => \ALT_INV_Mux386~0_combout\,
	datad => \ALT_INV_tmp_wait[12][15]~q\,
	cin => \Add38~34\,
	sumout => \Add38~77_sumout\,
	cout => \Add38~78\);

-- Location: FF_X84_Y11_N47
\tmp_wait[12][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~77_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][15]~q\);

-- Location: MLABCELL_X84_Y11_N48
\Add38~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~73_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][16]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~78\ ))
-- \Add38~74\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][16]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	datac => \ALT_INV_tmp_wait[12][16]~q\,
	cin => \Add38~78\,
	sumout => \Add38~73_sumout\,
	cout => \Add38~74\);

-- Location: FF_X84_Y11_N50
\tmp_wait[12][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~73_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][16]~q\);

-- Location: MLABCELL_X84_Y11_N51
\Add38~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~69_sumout\ = SUM(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][17]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~74\ ))
-- \Add38~70\ = CARRY(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][17]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	dataf => \ALT_INV_tmp_wait[12][17]~q\,
	cin => \Add38~74\,
	sumout => \Add38~69_sumout\,
	cout => \Add38~70\);

-- Location: FF_X84_Y11_N53
\tmp_wait[12][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~69_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][17]~q\);

-- Location: MLABCELL_X84_Y11_N54
\Add38~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~65_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][18]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~70\ ))
-- \Add38~66\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][18]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datac => \ALT_INV_Mux386~0_combout\,
	datad => \ALT_INV_tmp_wait[12][18]~q\,
	cin => \Add38~70\,
	sumout => \Add38~65_sumout\,
	cout => \Add38~66\);

-- Location: FF_X84_Y11_N56
\tmp_wait[12][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~65_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][18]~q\);

-- Location: MLABCELL_X84_Y11_N57
\Add38~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~61_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][19]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~66\ ))
-- \Add38~62\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][19]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datac => \ALT_INV_Mux386~0_combout\,
	datad => \ALT_INV_tmp_wait[12][19]~q\,
	cin => \Add38~66\,
	sumout => \Add38~61_sumout\,
	cout => \Add38~62\);

-- Location: FF_X84_Y11_N59
\tmp_wait[12][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~61_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][19]~q\);

-- Location: MLABCELL_X84_Y10_N0
\Add38~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~57_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][20]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~62\ ))
-- \Add38~58\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][20]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	datac => \ALT_INV_tmp_wait[12][20]~q\,
	cin => \Add38~62\,
	sumout => \Add38~57_sumout\,
	cout => \Add38~58\);

-- Location: FF_X84_Y10_N2
\tmp_wait[12][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~57_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][20]~q\);

-- Location: LABCELL_X83_Y11_N30
\Equal13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal13~3_combout\ = ( !\tmp_wait[12][19]~q\ & ( !\tmp_wait[12][20]~q\ & ( (!\tmp_wait[12][17]~q\ & (!\tmp_wait[12][18]~q\ & (!\tmp_wait[12][15]~q\ & !\tmp_wait[12][16]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[12][17]~q\,
	datab => \ALT_INV_tmp_wait[12][18]~q\,
	datac => \ALT_INV_tmp_wait[12][15]~q\,
	datad => \ALT_INV_tmp_wait[12][16]~q\,
	datae => \ALT_INV_tmp_wait[12][19]~q\,
	dataf => \ALT_INV_tmp_wait[12][20]~q\,
	combout => \Equal13~3_combout\);

-- Location: MLABCELL_X84_Y10_N3
\Add38~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~121_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][21]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~58\ ))
-- \Add38~122\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][21]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datac => \ALT_INV_Mux386~0_combout\,
	datad => \ALT_INV_tmp_wait[12][21]~q\,
	cin => \Add38~58\,
	sumout => \Add38~121_sumout\,
	cout => \Add38~122\);

-- Location: FF_X84_Y10_N5
\tmp_wait[12][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~121_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][21]~q\);

-- Location: MLABCELL_X84_Y10_N6
\Add38~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~117_sumout\ = SUM(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][22]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~122\ ))
-- \Add38~118\ = CARRY(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][22]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	dataf => \ALT_INV_tmp_wait[12][22]~q\,
	cin => \Add38~122\,
	sumout => \Add38~117_sumout\,
	cout => \Add38~118\);

-- Location: FF_X84_Y10_N8
\tmp_wait[12][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~117_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][22]~q\);

-- Location: MLABCELL_X84_Y10_N9
\Add38~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~113_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][23]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~118\ ))
-- \Add38~114\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][23]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	datac => \ALT_INV_tmp_wait[12][23]~q\,
	cin => \Add38~118\,
	sumout => \Add38~113_sumout\,
	cout => \Add38~114\);

-- Location: FF_X84_Y10_N11
\tmp_wait[12][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~113_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][23]~q\);

-- Location: MLABCELL_X84_Y10_N12
\Add38~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~109_sumout\ = SUM(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][24]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~114\ ))
-- \Add38~110\ = CARRY(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][24]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	dataf => \ALT_INV_tmp_wait[12][24]~q\,
	cin => \Add38~114\,
	sumout => \Add38~109_sumout\,
	cout => \Add38~110\);

-- Location: FF_X84_Y10_N14
\tmp_wait[12][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~109_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][24]~q\);

-- Location: MLABCELL_X84_Y10_N15
\Add38~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~105_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][25]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~110\ ))
-- \Add38~106\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][25]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	datac => \ALT_INV_tmp_wait[12][25]~q\,
	cin => \Add38~110\,
	sumout => \Add38~105_sumout\,
	cout => \Add38~106\);

-- Location: FF_X84_Y10_N17
\tmp_wait[12][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~105_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][25]~q\);

-- Location: MLABCELL_X84_Y10_N18
\Add38~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~101_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][26]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~106\ ))
-- \Add38~102\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][26]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	datac => \ALT_INV_tmp_wait[12][26]~q\,
	cin => \Add38~106\,
	sumout => \Add38~101_sumout\,
	cout => \Add38~102\);

-- Location: FF_X84_Y10_N20
\tmp_wait[12][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~101_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][26]~q\);

-- Location: MLABCELL_X84_Y10_N21
\Add38~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~97_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][27]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~102\ ))
-- \Add38~98\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][27]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datac => \ALT_INV_Mux386~0_combout\,
	datad => \ALT_INV_tmp_wait[12][27]~q\,
	cin => \Add38~102\,
	sumout => \Add38~97_sumout\,
	cout => \Add38~98\);

-- Location: FF_X84_Y10_N23
\tmp_wait[12][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~97_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][27]~q\);

-- Location: MLABCELL_X84_Y10_N24
\Add38~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~93_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][28]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~98\ ))
-- \Add38~94\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][28]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	datac => \ALT_INV_tmp_wait[12][28]~q\,
	cin => \Add38~98\,
	sumout => \Add38~93_sumout\,
	cout => \Add38~94\);

-- Location: FF_X84_Y10_N26
\tmp_wait[12][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~93_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][28]~q\);

-- Location: MLABCELL_X84_Y10_N27
\Add38~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~89_sumout\ = SUM(( (!\Equal13~6_combout\ & ((\tmp_wait[12][29]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~94\ ))
-- \Add38~90\ = CARRY(( (!\Equal13~6_combout\ & ((\tmp_wait[12][29]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( VCC ) + ( \Add38~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datac => \ALT_INV_Mux386~0_combout\,
	datad => \ALT_INV_tmp_wait[12][29]~q\,
	cin => \Add38~94\,
	sumout => \Add38~89_sumout\,
	cout => \Add38~90\);

-- Location: FF_X84_Y10_N29
\tmp_wait[12][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~89_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][29]~q\);

-- Location: MLABCELL_X84_Y10_N30
\Add38~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~85_sumout\ = SUM(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][30]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~90\ ))
-- \Add38~86\ = CARRY(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][30]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	dataf => \ALT_INV_tmp_wait[12][30]~q\,
	cin => \Add38~90\,
	sumout => \Add38~85_sumout\,
	cout => \Add38~86\);

-- Location: FF_X84_Y10_N32
\tmp_wait[12][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~85_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][30]~q\);

-- Location: MLABCELL_X84_Y10_N33
\Add38~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add38~81_sumout\ = SUM(( VCC ) + ( (!\Equal13~6_combout\ & ((\tmp_wait[12][31]~q\))) # (\Equal13~6_combout\ & (\Mux386~0_combout\)) ) + ( \Add38~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~6_combout\,
	datab => \ALT_INV_Mux386~0_combout\,
	dataf => \ALT_INV_tmp_wait[12][31]~q\,
	cin => \Add38~86\,
	sumout => \Add38~81_sumout\);

-- Location: FF_X84_Y10_N35
\tmp_wait[12][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add38~81_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[12][31]~q\);

-- Location: LABCELL_X83_Y11_N36
\Equal13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal13~4_combout\ = ( !\tmp_wait[12][27]~q\ & ( !\tmp_wait[0][0]~q\ & ( (!\tmp_wait[12][29]~q\ & (!\tmp_wait[12][31]~q\ & (!\tmp_wait[12][28]~q\ & !\tmp_wait[12][30]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[12][29]~q\,
	datab => \ALT_INV_tmp_wait[12][31]~q\,
	datac => \ALT_INV_tmp_wait[12][28]~q\,
	datad => \ALT_INV_tmp_wait[12][30]~q\,
	datae => \ALT_INV_tmp_wait[12][27]~q\,
	dataf => \ALT_INV_tmp_wait[0][0]~q\,
	combout => \Equal13~4_combout\);

-- Location: MLABCELL_X84_Y10_N39
\Equal13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal13~5_combout\ = ( !\tmp_wait[12][25]~q\ & ( !\tmp_wait[12][23]~q\ & ( (!\tmp_wait[12][21]~q\ & (!\tmp_wait[12][24]~q\ & (!\tmp_wait[12][22]~q\ & !\tmp_wait[12][26]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[12][21]~q\,
	datab => \ALT_INV_tmp_wait[12][24]~q\,
	datac => \ALT_INV_tmp_wait[12][22]~q\,
	datad => \ALT_INV_tmp_wait[12][26]~q\,
	datae => \ALT_INV_tmp_wait[12][25]~q\,
	dataf => \ALT_INV_tmp_wait[12][23]~q\,
	combout => \Equal13~5_combout\);

-- Location: LABCELL_X83_Y11_N54
\Equal13~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal13~6_combout\ = ( \Equal13~4_combout\ & ( \Equal13~5_combout\ & ( (\Equal13~2_combout\ & (\Equal13~0_combout\ & (\Equal13~1_combout\ & \Equal13~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~2_combout\,
	datab => \ALT_INV_Equal13~0_combout\,
	datac => \ALT_INV_Equal13~1_combout\,
	datad => \ALT_INV_Equal13~3_combout\,
	datae => \ALT_INV_Equal13~4_combout\,
	dataf => \ALT_INV_Equal13~5_combout\,
	combout => \Equal13~6_combout\);

-- Location: MLABCELL_X87_Y14_N48
\index[12][2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \index[12][2]~0_combout\ = (\enable~input_o\ & (\screen_end~input_o\ & \Equal13~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable~input_o\,
	datac => \ALT_INV_screen_end~input_o\,
	datad => \ALT_INV_Equal13~6_combout\,
	combout => \index[12][2]~0_combout\);

-- Location: FF_X87_Y14_N32
\index[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add37~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[12][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[12][0]~q\);

-- Location: MLABCELL_X87_Y14_N33
\Add37~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add37~5_sumout\ = SUM(( \index[12][1]~q\ ) + ( GND ) + ( \Add37~10\ ))
-- \Add37~6\ = CARRY(( \index[12][1]~q\ ) + ( GND ) + ( \Add37~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[12][1]~q\,
	cin => \Add37~10\,
	sumout => \Add37~5_sumout\,
	cout => \Add37~6\);

-- Location: FF_X87_Y14_N35
\index[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add37~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[12][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[12][1]~q\);

-- Location: MLABCELL_X87_Y14_N36
\Add37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add37~1_sumout\ = SUM(( \index[12][2]~q\ ) + ( GND ) + ( \Add37~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[12][2]~q\,
	cin => \Add37~6\,
	sumout => \Add37~1_sumout\);

-- Location: FF_X87_Y14_N38
\index[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add37~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[12][2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[12][2]~q\);

-- Location: MLABCELL_X87_Y14_N51
\Mux386~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux386~0_combout\ = ( \index[12][1]~q\ & ( (\index[12][0]~q\ & \index[12][2]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_index[12][0]~q\,
	datad => \ALT_INV_index[12][2]~q\,
	dataf => \ALT_INV_index[12][1]~q\,
	combout => \Mux386~0_combout\);

-- Location: LABCELL_X85_Y16_N48
\note_length~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~0_combout\ = ( \Equal13~6_combout\ & ( \Mux386~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux386~0_combout\,
	dataf => \ALT_INV_Equal13~6_combout\,
	combout => \note_length~0_combout\);

-- Location: LABCELL_X88_Y16_N51
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X85_Y16_N49
\note_length[12][2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~0_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sclr => \ALT_INV_enable~input_o\,
	sload => \ALT_INV_screen_end~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[12][2]~reg0_q\);

-- Location: MLABCELL_X84_Y16_N24
\note_length~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~1_combout\ = ( \Equal13~6_combout\ & ( (\enable~input_o\ & (\Mux386~0_combout\ & \screen_end~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datab => \ALT_INV_Mux386~0_combout\,
	datac => \ALT_INV_screen_end~input_o\,
	datae => \ALT_INV_Equal13~6_combout\,
	combout => \note_length~1_combout\);

-- Location: FF_X84_Y16_N28
\note_length[12][5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \note_length~1_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[12][5]~reg0_q\);

-- Location: FF_X84_Y16_N25
\note_length[12][6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~1_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[12][6]~reg0_q\);

-- Location: LABCELL_X85_Y15_N12
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\song_choose[0]~input_o\) # (\song_choose[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_song_choose[0]~input_o\,
	datad => \ALT_INV_song_choose[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X83_Y13_N36
\song[0][11][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \song[0][11][31]~combout\ = ( \process_0~0_combout\ & ( \Mux0~0_combout\ ) ) # ( !\process_0~0_combout\ & ( \song[0][11][31]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \song[0][11][31]~combout\);

-- Location: MLABCELL_X84_Y15_N30
\Add34~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add34~5_sumout\ = SUM(( \index[11][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add34~6\ = CARRY(( \index[11][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[11][0]~q\,
	cin => GND,
	sumout => \Add34~5_sumout\,
	cout => \Add34~6\);

-- Location: MLABCELL_X82_Y13_N0
\Add35~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~126_cout\ = CARRY(( \tmp_wait[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tmp_wait[0][0]~q\,
	cin => GND,
	cout => \Add35~126_cout\);

-- Location: MLABCELL_X82_Y13_N3
\Add35~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~5_sumout\ = SUM(( \tmp_wait[11][1]~q\ ) + ( VCC ) + ( \Add35~126_cout\ ))
-- \Add35~6\ = CARRY(( \tmp_wait[11][1]~q\ ) + ( VCC ) + ( \Add35~126_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait[11][1]~q\,
	cin => \Add35~126_cout\,
	sumout => \Add35~5_sumout\,
	cout => \Add35~6\);

-- Location: FF_X82_Y13_N5
\tmp_wait[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][1]~q\);

-- Location: MLABCELL_X82_Y13_N6
\Add35~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~1_sumout\ = SUM(( VCC ) + ( (\tmp_wait[11][2]~q\) # (\Equal12~6_combout\) ) + ( \Add35~6\ ))
-- \Add35~2\ = CARRY(( VCC ) + ( (\tmp_wait[11][2]~q\) # (\Equal12~6_combout\) ) + ( \Add35~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal12~6_combout\,
	dataf => \ALT_INV_tmp_wait[11][2]~q\,
	cin => \Add35~6\,
	sumout => \Add35~1_sumout\,
	cout => \Add35~2\);

-- Location: FF_X82_Y13_N8
\tmp_wait[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][2]~q\);

-- Location: LABCELL_X83_Y13_N27
\Equal12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = ( !\tmp_wait[11][1]~q\ & ( !\tmp_wait[11][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait[11][2]~q\,
	dataf => \ALT_INV_tmp_wait[11][1]~q\,
	combout => \Equal12~0_combout\);

-- Location: MLABCELL_X84_Y15_N12
\tmp_wait~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~0_combout\ = ( \index[11][2]~q\ & ( (!\index[11][0]~q\ & \index[11][1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_index[11][0]~q\,
	datac => \ALT_INV_index[11][1]~q\,
	dataf => \ALT_INV_index[11][2]~q\,
	combout => \tmp_wait~0_combout\);

-- Location: LABCELL_X83_Y13_N39
\tmp_wait~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~1_combout\ = ( \Equal12~6_combout\ & ( (!\index[11][1]~q\) # ((!\index[11][0]~q\) # (!\index[11][2]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_index[11][1]~q\,
	datac => \ALT_INV_index[11][0]~q\,
	datad => \ALT_INV_index[11][2]~q\,
	dataf => \ALT_INV_Equal12~6_combout\,
	combout => \tmp_wait~1_combout\);

-- Location: LABCELL_X83_Y13_N24
\tmp_wait~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~2_combout\ = ( \Equal12~6_combout\ & ( ((\index[11][2]~q\) # (\index[11][1]~q\)) # (\index[11][0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_index[11][0]~q\,
	datac => \ALT_INV_index[11][1]~q\,
	datad => \ALT_INV_index[11][2]~q\,
	dataf => \ALT_INV_Equal12~6_combout\,
	combout => \tmp_wait~2_combout\);

-- Location: LABCELL_X81_Y13_N24
\tmp_wait~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~4_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111110011001100110011001100110011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait~0_combout\,
	datad => \ALT_INV_tmp_wait[11][14]~q\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~4_combout\);

-- Location: LABCELL_X83_Y13_N12
\Mux354~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux354~0_combout\ = ( \index[11][1]~q\ & ( (\index[11][2]~q\ & ((!\song[0][11][31]~combout\) # (!\index[11][0]~q\))) ) ) # ( !\index[11][1]~q\ & ( (!\song[0][11][31]~combout\ & (!\index[11][2]~q\ & !\index[11][0]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_index[11][2]~q\,
	datad => \ALT_INV_index[11][0]~q\,
	dataf => \ALT_INV_index[11][1]~q\,
	combout => \Mux354~0_combout\);

-- Location: LABCELL_X83_Y13_N54
\song[0][11][5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \song[0][11][5]~combout\ = ( \process_0~0_combout\ & ( !\Mux0~0_combout\ ) ) # ( !\process_0~0_combout\ & ( \song[0][11][5]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_song[0][11][5]~combout\,
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \song[0][11][5]~combout\);

-- Location: LABCELL_X83_Y13_N15
\Mux379~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux379~0_combout\ = ( \song[0][11][5]~combout\ & ( (!\index[11][1]~q\ & ((\index[11][2]~q\) # (\index[11][0]~q\))) # (\index[11][1]~q\ & ((!\index[11][2]~q\))) ) ) # ( !\song[0][11][5]~combout\ & ( (!\index[11][1]~q\) # ((!\index[11][2]~q\) # 
-- (\index[11][0]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101111111111111010111101011111101010100101111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[11][1]~q\,
	datac => \ALT_INV_index[11][0]~q\,
	datad => \ALT_INV_index[11][2]~q\,
	dataf => \ALT_INV_song[0][11][5]~combout\,
	combout => \Mux379~0_combout\);

-- Location: MLABCELL_X82_Y13_N9
\Add35~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~29_sumout\ = SUM(( VCC ) + ( (!\Equal12~6_combout\ & ((\tmp_wait[11][3]~q\))) # (\Equal12~6_combout\ & (\Mux354~0_combout\)) ) + ( \Add35~2\ ))
-- \Add35~30\ = CARRY(( VCC ) + ( (!\Equal12~6_combout\ & ((\tmp_wait[11][3]~q\))) # (\Equal12~6_combout\ & (\Mux354~0_combout\)) ) + ( \Add35~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux354~0_combout\,
	datac => \ALT_INV_Equal12~6_combout\,
	dataf => \ALT_INV_tmp_wait[11][3]~q\,
	cin => \Add35~2\,
	sumout => \Add35~29_sumout\,
	cout => \Add35~30\);

-- Location: FF_X82_Y13_N11
\tmp_wait[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~29_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][3]~q\);

-- Location: MLABCELL_X82_Y13_N12
\Add35~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~25_sumout\ = SUM(( VCC ) + ( (!\Equal12~6_combout\ & ((\tmp_wait[11][4]~q\))) # (\Equal12~6_combout\ & (\Mux354~0_combout\)) ) + ( \Add35~30\ ))
-- \Add35~26\ = CARRY(( VCC ) + ( (!\Equal12~6_combout\ & ((\tmp_wait[11][4]~q\))) # (\Equal12~6_combout\ & (\Mux354~0_combout\)) ) + ( \Add35~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal12~6_combout\,
	datac => \ALT_INV_Mux354~0_combout\,
	dataf => \ALT_INV_tmp_wait[11][4]~q\,
	cin => \Add35~30\,
	sumout => \Add35~25_sumout\,
	cout => \Add35~26\);

-- Location: FF_X82_Y13_N14
\tmp_wait[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~25_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][4]~q\);

-- Location: MLABCELL_X82_Y13_N15
\Add35~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~21_sumout\ = SUM(( VCC ) + ( (!\Equal12~6_combout\ & ((\tmp_wait[11][5]~q\))) # (\Equal12~6_combout\ & (\Mux379~0_combout\)) ) + ( \Add35~26\ ))
-- \Add35~22\ = CARRY(( VCC ) + ( (!\Equal12~6_combout\ & ((\tmp_wait[11][5]~q\))) # (\Equal12~6_combout\ & (\Mux379~0_combout\)) ) + ( \Add35~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal12~6_combout\,
	datac => \ALT_INV_Mux379~0_combout\,
	dataf => \ALT_INV_tmp_wait[11][5]~q\,
	cin => \Add35~26\,
	sumout => \Add35~21_sumout\,
	cout => \Add35~22\);

-- Location: FF_X82_Y13_N17
\tmp_wait[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~21_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][5]~q\);

-- Location: MLABCELL_X82_Y13_N18
\Add35~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~17_sumout\ = SUM(( VCC ) + ( (!\Equal12~6_combout\ & ((\tmp_wait[11][6]~q\))) # (\Equal12~6_combout\ & (\Mux379~0_combout\)) ) + ( \Add35~22\ ))
-- \Add35~18\ = CARRY(( VCC ) + ( (!\Equal12~6_combout\ & ((\tmp_wait[11][6]~q\))) # (\Equal12~6_combout\ & (\Mux379~0_combout\)) ) + ( \Add35~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal12~6_combout\,
	datac => \ALT_INV_Mux379~0_combout\,
	dataf => \ALT_INV_tmp_wait[11][6]~q\,
	cin => \Add35~22\,
	sumout => \Add35~17_sumout\,
	cout => \Add35~18\);

-- Location: FF_X82_Y13_N20
\tmp_wait[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~17_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][6]~q\);

-- Location: MLABCELL_X82_Y13_N21
\Add35~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~13_sumout\ = SUM(( (!\Equal12~6_combout\ & ((\tmp_wait[11][7]~q\))) # (\Equal12~6_combout\ & (\Mux354~0_combout\)) ) + ( VCC ) + ( \Add35~18\ ))
-- \Add35~14\ = CARRY(( (!\Equal12~6_combout\ & ((\tmp_wait[11][7]~q\))) # (\Equal12~6_combout\ & (\Mux354~0_combout\)) ) + ( VCC ) + ( \Add35~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal12~6_combout\,
	datac => \ALT_INV_Mux354~0_combout\,
	datad => \ALT_INV_tmp_wait[11][7]~q\,
	cin => \Add35~18\,
	sumout => \Add35~13_sumout\,
	cout => \Add35~14\);

-- Location: FF_X82_Y13_N23
\tmp_wait[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~13_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][7]~q\);

-- Location: MLABCELL_X82_Y13_N24
\Add35~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~9_sumout\ = SUM(( \tmp_wait~3_combout\ ) + ( VCC ) + ( \Add35~14\ ))
-- \Add35~10\ = CARRY(( \tmp_wait~3_combout\ ) + ( VCC ) + ( \Add35~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait~3_combout\,
	cin => \Add35~14\,
	sumout => \Add35~9_sumout\,
	cout => \Add35~10\);

-- Location: FF_X82_Y13_N26
\tmp_wait[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][8]~q\);

-- Location: LABCELL_X83_Y13_N0
\tmp_wait~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~3_combout\ = ( \tmp_wait~1_combout\ & ( (!\tmp_wait~2_combout\ & ((!\song[0][11][31]~combout\))) # (\tmp_wait~2_combout\ & (\tmp_wait~0_combout\)) ) ) # ( !\tmp_wait~1_combout\ & ( (!\tmp_wait~2_combout\ & ((\tmp_wait[11][8]~q\))) # 
-- (\tmp_wait~2_combout\ & (!\song[0][11][31]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000011001111110011000101110001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~0_combout\,
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait~2_combout\,
	datad => \ALT_INV_tmp_wait[11][8]~q\,
	dataf => \ALT_INV_tmp_wait~1_combout\,
	combout => \tmp_wait~3_combout\);

-- Location: MLABCELL_X82_Y13_N27
\Add35~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~53_sumout\ = SUM(( \tmp_wait~9_combout\ ) + ( VCC ) + ( \Add35~10\ ))
-- \Add35~54\ = CARRY(( \tmp_wait~9_combout\ ) + ( VCC ) + ( \Add35~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~9_combout\,
	cin => \Add35~10\,
	sumout => \Add35~53_sumout\,
	cout => \Add35~54\);

-- Location: FF_X82_Y13_N29
\tmp_wait[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~53_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][9]~q\);

-- Location: LABCELL_X83_Y13_N21
\tmp_wait~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~9_combout\ = ( \tmp_wait~2_combout\ & ( (!\tmp_wait~1_combout\ & ((!\song[0][11][31]~combout\))) # (\tmp_wait~1_combout\ & (\tmp_wait~0_combout\)) ) ) # ( !\tmp_wait~2_combout\ & ( (!\tmp_wait~1_combout\ & ((\tmp_wait[11][9]~q\))) # 
-- (\tmp_wait~1_combout\ & (!\song[0][11][31]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000011001111110011000101110001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~0_combout\,
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait~1_combout\,
	datad => \ALT_INV_tmp_wait[11][9]~q\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~9_combout\);

-- Location: MLABCELL_X82_Y13_N30
\Add35~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~49_sumout\ = SUM(( \tmp_wait~8_combout\ ) + ( VCC ) + ( \Add35~54\ ))
-- \Add35~50\ = CARRY(( \tmp_wait~8_combout\ ) + ( VCC ) + ( \Add35~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait~8_combout\,
	cin => \Add35~54\,
	sumout => \Add35~49_sumout\,
	cout => \Add35~50\);

-- Location: FF_X82_Y13_N32
\tmp_wait[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~49_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][10]~q\);

-- Location: LABCELL_X83_Y13_N51
\tmp_wait~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~8_combout\ = ( \tmp_wait~2_combout\ & ( (!\tmp_wait~1_combout\ & ((!\song[0][11][31]~combout\))) # (\tmp_wait~1_combout\ & (\tmp_wait~0_combout\)) ) ) # ( !\tmp_wait~2_combout\ & ( (!\tmp_wait~1_combout\ & ((\tmp_wait[11][10]~q\))) # 
-- (\tmp_wait~1_combout\ & (!\song[0][11][31]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000011001111110011000101110001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~0_combout\,
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait~1_combout\,
	datad => \ALT_INV_tmp_wait[11][10]~q\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~8_combout\);

-- Location: MLABCELL_X82_Y13_N33
\Add35~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~45_sumout\ = SUM(( \tmp_wait~7_combout\ ) + ( VCC ) + ( \Add35~50\ ))
-- \Add35~46\ = CARRY(( \tmp_wait~7_combout\ ) + ( VCC ) + ( \Add35~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~7_combout\,
	cin => \Add35~50\,
	sumout => \Add35~45_sumout\,
	cout => \Add35~46\);

-- Location: FF_X82_Y13_N35
\tmp_wait[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~45_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][11]~q\);

-- Location: LABCELL_X83_Y13_N48
\tmp_wait~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~7_combout\ = ( \tmp_wait~1_combout\ & ( (!\tmp_wait~2_combout\ & ((!\song[0][11][31]~combout\))) # (\tmp_wait~2_combout\ & (\tmp_wait~0_combout\)) ) ) # ( !\tmp_wait~1_combout\ & ( (!\tmp_wait~2_combout\ & ((\tmp_wait[11][11]~q\))) # 
-- (\tmp_wait~2_combout\ & (!\song[0][11][31]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000011001111110011000101110001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~0_combout\,
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait~2_combout\,
	datad => \ALT_INV_tmp_wait[11][11]~q\,
	dataf => \ALT_INV_tmp_wait~1_combout\,
	combout => \tmp_wait~7_combout\);

-- Location: MLABCELL_X82_Y13_N36
\Add35~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~41_sumout\ = SUM(( \tmp_wait~6_combout\ ) + ( VCC ) + ( \Add35~46\ ))
-- \Add35~42\ = CARRY(( \tmp_wait~6_combout\ ) + ( VCC ) + ( \Add35~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait~6_combout\,
	cin => \Add35~46\,
	sumout => \Add35~41_sumout\,
	cout => \Add35~42\);

-- Location: FF_X82_Y13_N38
\tmp_wait[11][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~41_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][12]~q\);

-- Location: LABCELL_X83_Y13_N57
\tmp_wait~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~6_combout\ = ( \tmp_wait~2_combout\ & ( (!\tmp_wait~1_combout\ & ((!\song[0][11][31]~combout\))) # (\tmp_wait~1_combout\ & (\tmp_wait~0_combout\)) ) ) # ( !\tmp_wait~2_combout\ & ( (!\tmp_wait~1_combout\ & ((\tmp_wait[11][12]~q\))) # 
-- (\tmp_wait~1_combout\ & (!\song[0][11][31]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000011001111110011000101110001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~0_combout\,
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait~1_combout\,
	datad => \ALT_INV_tmp_wait[11][12]~q\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~6_combout\);

-- Location: MLABCELL_X82_Y13_N39
\Add35~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~37_sumout\ = SUM(( \tmp_wait~5_combout\ ) + ( VCC ) + ( \Add35~42\ ))
-- \Add35~38\ = CARRY(( \tmp_wait~5_combout\ ) + ( VCC ) + ( \Add35~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~5_combout\,
	cin => \Add35~42\,
	sumout => \Add35~37_sumout\,
	cout => \Add35~38\);

-- Location: FF_X82_Y13_N41
\tmp_wait[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~37_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][13]~q\);

-- Location: LABCELL_X81_Y13_N21
\tmp_wait~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~5_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110011001100110011000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[11][13]~q\,
	datab => \ALT_INV_song[0][11][31]~combout\,
	datad => \ALT_INV_tmp_wait~0_combout\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~5_combout\);

-- Location: MLABCELL_X82_Y13_N42
\Add35~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~33_sumout\ = SUM(( \tmp_wait~4_combout\ ) + ( VCC ) + ( \Add35~38\ ))
-- \Add35~34\ = CARRY(( \tmp_wait~4_combout\ ) + ( VCC ) + ( \Add35~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tmp_wait~4_combout\,
	cin => \Add35~38\,
	sumout => \Add35~33_sumout\,
	cout => \Add35~34\);

-- Location: FF_X82_Y13_N44
\tmp_wait[11][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~33_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][14]~q\);

-- Location: LABCELL_X83_Y13_N6
\Equal12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal12~2_combout\ = ( !\tmp_wait[11][10]~q\ & ( !\tmp_wait[11][9]~q\ & ( (!\tmp_wait[11][14]~q\ & (!\tmp_wait[11][13]~q\ & (!\tmp_wait[11][11]~q\ & !\tmp_wait[11][12]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[11][14]~q\,
	datab => \ALT_INV_tmp_wait[11][13]~q\,
	datac => \ALT_INV_tmp_wait[11][11]~q\,
	datad => \ALT_INV_tmp_wait[11][12]~q\,
	datae => \ALT_INV_tmp_wait[11][10]~q\,
	dataf => \ALT_INV_tmp_wait[11][9]~q\,
	combout => \Equal12~2_combout\);

-- Location: LABCELL_X83_Y12_N3
\tmp_wait~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~25_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][21]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111101010101010101010101010101010100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait~0_combout\,
	datad => \ALT_INV_tmp_wait[11][21]~q\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~25_combout\);

-- Location: MLABCELL_X82_Y13_N45
\Add35~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~77_sumout\ = SUM(( \tmp_wait~15_combout\ ) + ( VCC ) + ( \Add35~34\ ))
-- \Add35~78\ = CARRY(( \tmp_wait~15_combout\ ) + ( VCC ) + ( \Add35~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~15_combout\,
	cin => \Add35~34\,
	sumout => \Add35~77_sumout\,
	cout => \Add35~78\);

-- Location: FF_X82_Y13_N47
\tmp_wait[11][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~77_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][15]~q\);

-- Location: LABCELL_X81_Y13_N36
\tmp_wait~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~15_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111110011001100110011001100110011000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~0_combout\,
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait[11][15]~q\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~15_combout\);

-- Location: MLABCELL_X82_Y13_N48
\Add35~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~73_sumout\ = SUM(( \tmp_wait~14_combout\ ) + ( VCC ) + ( \Add35~78\ ))
-- \Add35~74\ = CARRY(( \tmp_wait~14_combout\ ) + ( VCC ) + ( \Add35~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~14_combout\,
	cin => \Add35~78\,
	sumout => \Add35~73_sumout\,
	cout => \Add35~74\);

-- Location: FF_X82_Y13_N50
\tmp_wait[11][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~73_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][16]~q\);

-- Location: LABCELL_X81_Y13_N54
\tmp_wait~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~14_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][16]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111110011001100110011001100110011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait~0_combout\,
	datad => \ALT_INV_tmp_wait[11][16]~q\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~14_combout\);

-- Location: MLABCELL_X82_Y13_N51
\Add35~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~69_sumout\ = SUM(( \tmp_wait~13_combout\ ) + ( VCC ) + ( \Add35~74\ ))
-- \Add35~70\ = CARRY(( \tmp_wait~13_combout\ ) + ( VCC ) + ( \Add35~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tmp_wait~13_combout\,
	cin => \Add35~74\,
	sumout => \Add35~69_sumout\,
	cout => \Add35~70\);

-- Location: FF_X82_Y13_N53
\tmp_wait[11][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~69_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][17]~q\);

-- Location: LABCELL_X81_Y13_N0
\tmp_wait~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~13_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][17]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111110011001100110011001100110011000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~0_combout\,
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait[11][17]~q\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~13_combout\);

-- Location: MLABCELL_X82_Y13_N54
\Add35~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~65_sumout\ = SUM(( \tmp_wait~12_combout\ ) + ( VCC ) + ( \Add35~70\ ))
-- \Add35~66\ = CARRY(( \tmp_wait~12_combout\ ) + ( VCC ) + ( \Add35~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tmp_wait~12_combout\,
	cin => \Add35~70\,
	sumout => \Add35~65_sumout\,
	cout => \Add35~66\);

-- Location: FF_X82_Y13_N56
\tmp_wait[11][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~65_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][18]~q\);

-- Location: LABCELL_X81_Y13_N9
\tmp_wait~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~12_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][18]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111110011001100110011001100110011000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait[11][18]~q\,
	datad => \ALT_INV_tmp_wait~0_combout\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~12_combout\);

-- Location: MLABCELL_X82_Y13_N57
\Add35~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~61_sumout\ = SUM(( \tmp_wait~11_combout\ ) + ( VCC ) + ( \Add35~66\ ))
-- \Add35~62\ = CARRY(( \tmp_wait~11_combout\ ) + ( VCC ) + ( \Add35~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~11_combout\,
	cin => \Add35~66\,
	sumout => \Add35~61_sumout\,
	cout => \Add35~62\);

-- Location: FF_X82_Y13_N59
\tmp_wait[11][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~61_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][19]~q\);

-- Location: LABCELL_X81_Y13_N15
\tmp_wait~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~11_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][19]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111110011001100110011001100110011000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait[11][19]~q\,
	datad => \ALT_INV_tmp_wait~0_combout\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~11_combout\);

-- Location: MLABCELL_X82_Y12_N0
\Add35~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~57_sumout\ = SUM(( \tmp_wait~10_combout\ ) + ( VCC ) + ( \Add35~62\ ))
-- \Add35~58\ = CARRY(( \tmp_wait~10_combout\ ) + ( VCC ) + ( \Add35~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tmp_wait~10_combout\,
	cin => \Add35~62\,
	sumout => \Add35~57_sumout\,
	cout => \Add35~58\);

-- Location: FF_X82_Y12_N2
\tmp_wait[11][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~57_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][20]~q\);

-- Location: MLABCELL_X82_Y12_N51
\tmp_wait~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~10_combout\ = ( \tmp_wait~1_combout\ & ( (!\tmp_wait~2_combout\ & ((!\song[0][11][31]~combout\))) # (\tmp_wait~2_combout\ & (\tmp_wait~0_combout\)) ) ) # ( !\tmp_wait~1_combout\ & ( (!\tmp_wait~2_combout\ & ((\tmp_wait[11][20]~q\))) # 
-- (\tmp_wait~2_combout\ & (!\song[0][11][31]~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000011001111110011000101110001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~0_combout\,
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait~2_combout\,
	datad => \ALT_INV_tmp_wait[11][20]~q\,
	dataf => \ALT_INV_tmp_wait~1_combout\,
	combout => \tmp_wait~10_combout\);

-- Location: MLABCELL_X82_Y12_N3
\Add35~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~121_sumout\ = SUM(( \tmp_wait~25_combout\ ) + ( VCC ) + ( \Add35~58\ ))
-- \Add35~122\ = CARRY(( \tmp_wait~25_combout\ ) + ( VCC ) + ( \Add35~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~25_combout\,
	cin => \Add35~58\,
	sumout => \Add35~121_sumout\,
	cout => \Add35~122\);

-- Location: FF_X82_Y12_N5
\tmp_wait[11][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~121_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][21]~q\);

-- Location: MLABCELL_X82_Y12_N48
\tmp_wait~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~24_combout\ = ( \tmp_wait[11][22]~q\ & ( (!\tmp_wait~1_combout\ & (((!\song[0][11][31]~combout\) # (!\tmp_wait~2_combout\)))) # (\tmp_wait~1_combout\ & ((!\tmp_wait~2_combout\ & ((!\song[0][11][31]~combout\))) # (\tmp_wait~2_combout\ & 
-- (\tmp_wait~0_combout\)))) ) ) # ( !\tmp_wait[11][22]~q\ & ( (!\tmp_wait~1_combout\ & (((!\song[0][11][31]~combout\ & \tmp_wait~2_combout\)))) # (\tmp_wait~1_combout\ & ((!\tmp_wait~2_combout\ & ((!\song[0][11][31]~combout\))) # (\tmp_wait~2_combout\ & 
-- (\tmp_wait~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000101000011001100010111111100110001011111110011000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~0_combout\,
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait~1_combout\,
	datad => \ALT_INV_tmp_wait~2_combout\,
	dataf => \ALT_INV_tmp_wait[11][22]~q\,
	combout => \tmp_wait~24_combout\);

-- Location: MLABCELL_X82_Y12_N6
\Add35~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~117_sumout\ = SUM(( \tmp_wait~24_combout\ ) + ( VCC ) + ( \Add35~122\ ))
-- \Add35~118\ = CARRY(( \tmp_wait~24_combout\ ) + ( VCC ) + ( \Add35~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait~24_combout\,
	cin => \Add35~122\,
	sumout => \Add35~117_sumout\,
	cout => \Add35~118\);

-- Location: FF_X82_Y12_N8
\tmp_wait[11][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~117_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][22]~q\);

-- Location: LABCELL_X81_Y12_N57
\tmp_wait~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~20_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][26]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101010101010101010101010101010100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_song[0][11][31]~combout\,
	datab => \ALT_INV_tmp_wait[11][26]~q\,
	datac => \ALT_INV_tmp_wait~0_combout\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~20_combout\);

-- Location: MLABCELL_X82_Y12_N9
\Add35~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~113_sumout\ = SUM(( \tmp_wait~23_combout\ ) + ( VCC ) + ( \Add35~118\ ))
-- \Add35~114\ = CARRY(( \tmp_wait~23_combout\ ) + ( VCC ) + ( \Add35~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~23_combout\,
	cin => \Add35~118\,
	sumout => \Add35~113_sumout\,
	cout => \Add35~114\);

-- Location: FF_X82_Y12_N11
\tmp_wait[11][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~113_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][23]~q\);

-- Location: LABCELL_X83_Y12_N9
\tmp_wait~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~23_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][23]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101010101010101010101010101010100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_song[0][11][31]~combout\,
	datab => \ALT_INV_tmp_wait[11][23]~q\,
	datac => \ALT_INV_tmp_wait~0_combout\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~23_combout\);

-- Location: MLABCELL_X82_Y12_N12
\Add35~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~109_sumout\ = SUM(( \tmp_wait~22_combout\ ) + ( VCC ) + ( \Add35~114\ ))
-- \Add35~110\ = CARRY(( \tmp_wait~22_combout\ ) + ( VCC ) + ( \Add35~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tmp_wait~22_combout\,
	cin => \Add35~114\,
	sumout => \Add35~109_sumout\,
	cout => \Add35~110\);

-- Location: FF_X82_Y12_N14
\tmp_wait[11][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~109_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][24]~q\);

-- Location: LABCELL_X83_Y12_N24
\tmp_wait~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~22_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][24]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101010101010101010101010101010100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_song[0][11][31]~combout\,
	datab => \ALT_INV_tmp_wait[11][24]~q\,
	datad => \ALT_INV_tmp_wait~0_combout\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~22_combout\);

-- Location: MLABCELL_X82_Y12_N15
\Add35~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~105_sumout\ = SUM(( \tmp_wait~21_combout\ ) + ( VCC ) + ( \Add35~110\ ))
-- \Add35~106\ = CARRY(( \tmp_wait~21_combout\ ) + ( VCC ) + ( \Add35~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~21_combout\,
	cin => \Add35~110\,
	sumout => \Add35~105_sumout\,
	cout => \Add35~106\);

-- Location: FF_X82_Y12_N17
\tmp_wait[11][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~105_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][25]~q\);

-- Location: LABCELL_X81_Y12_N12
\tmp_wait~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~21_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][25]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101010101010101010101010101010100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait[11][25]~q\,
	datad => \ALT_INV_tmp_wait~0_combout\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~21_combout\);

-- Location: MLABCELL_X82_Y12_N18
\Add35~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~101_sumout\ = SUM(( \tmp_wait~20_combout\ ) + ( VCC ) + ( \Add35~106\ ))
-- \Add35~102\ = CARRY(( \tmp_wait~20_combout\ ) + ( VCC ) + ( \Add35~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~20_combout\,
	cin => \Add35~106\,
	sumout => \Add35~101_sumout\,
	cout => \Add35~102\);

-- Location: FF_X82_Y12_N20
\tmp_wait[11][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~101_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][26]~q\);

-- Location: MLABCELL_X82_Y12_N42
\Equal12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal12~5_combout\ = ( !\tmp_wait[11][24]~q\ & ( !\tmp_wait[11][25]~q\ & ( (!\tmp_wait[11][21]~q\ & (!\tmp_wait[11][22]~q\ & (!\tmp_wait[11][26]~q\ & !\tmp_wait[11][23]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[11][21]~q\,
	datab => \ALT_INV_tmp_wait[11][22]~q\,
	datac => \ALT_INV_tmp_wait[11][26]~q\,
	datad => \ALT_INV_tmp_wait[11][23]~q\,
	datae => \ALT_INV_tmp_wait[11][24]~q\,
	dataf => \ALT_INV_tmp_wait[11][25]~q\,
	combout => \Equal12~5_combout\);

-- Location: LABCELL_X83_Y13_N42
\Equal12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = ( !\tmp_wait[11][4]~q\ & ( !\tmp_wait[11][7]~q\ & ( (!\tmp_wait[11][3]~q\ & (!\tmp_wait[11][8]~q\ & (!\tmp_wait[11][6]~q\ & !\tmp_wait[11][5]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[11][3]~q\,
	datab => \ALT_INV_tmp_wait[11][8]~q\,
	datac => \ALT_INV_tmp_wait[11][6]~q\,
	datad => \ALT_INV_tmp_wait[11][5]~q\,
	datae => \ALT_INV_tmp_wait[11][4]~q\,
	dataf => \ALT_INV_tmp_wait[11][7]~q\,
	combout => \Equal12~1_combout\);

-- Location: LABCELL_X83_Y12_N48
\tmp_wait~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~18_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][28]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101010101010101010101010101010100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait[11][28]~q\,
	datad => \ALT_INV_tmp_wait~0_combout\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~18_combout\);

-- Location: MLABCELL_X82_Y12_N21
\Add35~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~97_sumout\ = SUM(( \tmp_wait~19_combout\ ) + ( VCC ) + ( \Add35~102\ ))
-- \Add35~98\ = CARRY(( \tmp_wait~19_combout\ ) + ( VCC ) + ( \Add35~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tmp_wait~19_combout\,
	cin => \Add35~102\,
	sumout => \Add35~97_sumout\,
	cout => \Add35~98\);

-- Location: FF_X82_Y12_N23
\tmp_wait[11][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~97_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][27]~q\);

-- Location: LABCELL_X83_Y12_N30
\tmp_wait~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~19_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][27]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101010101010101010101010101010100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait[11][27]~q\,
	datad => \ALT_INV_tmp_wait~0_combout\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~19_combout\);

-- Location: MLABCELL_X82_Y12_N24
\Add35~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~93_sumout\ = SUM(( \tmp_wait~18_combout\ ) + ( VCC ) + ( \Add35~98\ ))
-- \Add35~94\ = CARRY(( \tmp_wait~18_combout\ ) + ( VCC ) + ( \Add35~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tmp_wait~18_combout\,
	cin => \Add35~98\,
	sumout => \Add35~93_sumout\,
	cout => \Add35~94\);

-- Location: FF_X82_Y12_N26
\tmp_wait[11][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~93_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][28]~q\);

-- Location: MLABCELL_X82_Y12_N27
\Add35~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~89_sumout\ = SUM(( \tmp_wait~17_combout\ ) + ( VCC ) + ( \Add35~94\ ))
-- \Add35~90\ = CARRY(( \tmp_wait~17_combout\ ) + ( VCC ) + ( \Add35~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait~17_combout\,
	cin => \Add35~94\,
	sumout => \Add35~89_sumout\,
	cout => \Add35~90\);

-- Location: FF_X82_Y12_N29
\tmp_wait[11][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~89_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][29]~q\);

-- Location: LABCELL_X83_Y12_N18
\tmp_wait~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~17_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][29]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101010101010101010101010101010100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait[11][29]~q\,
	datad => \ALT_INV_tmp_wait~0_combout\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~17_combout\);

-- Location: MLABCELL_X82_Y12_N30
\Add35~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~85_sumout\ = SUM(( \tmp_wait~16_combout\ ) + ( VCC ) + ( \Add35~90\ ))
-- \Add35~86\ = CARRY(( \tmp_wait~16_combout\ ) + ( VCC ) + ( \Add35~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tmp_wait~16_combout\,
	cin => \Add35~90\,
	sumout => \Add35~85_sumout\,
	cout => \Add35~86\);

-- Location: FF_X82_Y12_N32
\tmp_wait[11][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~85_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][30]~q\);

-- Location: LABCELL_X81_Y12_N36
\tmp_wait~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait~16_combout\ = ( \tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( \tmp_wait~0_combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( \tmp_wait~2_combout\ & ( !\song[0][11][31]~combout\ ) ) ) # ( \tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( 
-- !\song[0][11][31]~combout\ ) ) ) # ( !\tmp_wait~1_combout\ & ( !\tmp_wait~2_combout\ & ( \tmp_wait[11][30]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101010101010101010101010101010100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_tmp_wait[11][30]~q\,
	datad => \ALT_INV_tmp_wait~0_combout\,
	datae => \ALT_INV_tmp_wait~1_combout\,
	dataf => \ALT_INV_tmp_wait~2_combout\,
	combout => \tmp_wait~16_combout\);

-- Location: MLABCELL_X82_Y12_N33
\Add35~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add35~81_sumout\ = SUM(( VCC ) + ( (!\Equal12~6_combout\ & ((\tmp_wait[11][31]~q\))) # (\Equal12~6_combout\ & (\Mux354~0_combout\)) ) + ( \Add35~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal12~6_combout\,
	datac => \ALT_INV_Mux354~0_combout\,
	dataf => \ALT_INV_tmp_wait[11][31]~q\,
	cin => \Add35~86\,
	sumout => \Add35~81_sumout\);

-- Location: FF_X82_Y12_N35
\tmp_wait[11][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add35~81_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[11][31]~q\);

-- Location: MLABCELL_X82_Y12_N54
\Equal12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal12~4_combout\ = ( !\tmp_wait[11][29]~q\ & ( !\tmp_wait[0][0]~q\ & ( (!\tmp_wait[11][28]~q\ & (!\tmp_wait[11][27]~q\ & (!\tmp_wait[11][31]~q\ & !\tmp_wait[11][30]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[11][28]~q\,
	datab => \ALT_INV_tmp_wait[11][27]~q\,
	datac => \ALT_INV_tmp_wait[11][31]~q\,
	datad => \ALT_INV_tmp_wait[11][30]~q\,
	datae => \ALT_INV_tmp_wait[11][29]~q\,
	dataf => \ALT_INV_tmp_wait[0][0]~q\,
	combout => \Equal12~4_combout\);

-- Location: MLABCELL_X82_Y12_N36
\Equal12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal12~3_combout\ = ( !\tmp_wait[11][19]~q\ & ( !\tmp_wait[11][15]~q\ & ( (!\tmp_wait[11][20]~q\ & (!\tmp_wait[11][18]~q\ & (!\tmp_wait[11][16]~q\ & !\tmp_wait[11][17]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[11][20]~q\,
	datab => \ALT_INV_tmp_wait[11][18]~q\,
	datac => \ALT_INV_tmp_wait[11][16]~q\,
	datad => \ALT_INV_tmp_wait[11][17]~q\,
	datae => \ALT_INV_tmp_wait[11][19]~q\,
	dataf => \ALT_INV_tmp_wait[11][15]~q\,
	combout => \Equal12~3_combout\);

-- Location: LABCELL_X83_Y13_N30
\Equal12~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal12~6_combout\ = ( \Equal12~4_combout\ & ( \Equal12~3_combout\ & ( (\Equal12~0_combout\ & (\Equal12~2_combout\ & (\Equal12~5_combout\ & \Equal12~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal12~0_combout\,
	datab => \ALT_INV_Equal12~2_combout\,
	datac => \ALT_INV_Equal12~5_combout\,
	datad => \ALT_INV_Equal12~1_combout\,
	datae => \ALT_INV_Equal12~4_combout\,
	dataf => \ALT_INV_Equal12~3_combout\,
	combout => \Equal12~6_combout\);

-- Location: LABCELL_X85_Y16_N12
\index[11][0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \index[11][0]~2_combout\ = ( \Equal12~6_combout\ & ( (\enable~input_o\ & \screen_end~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datab => \ALT_INV_screen_end~input_o\,
	dataf => \ALT_INV_Equal12~6_combout\,
	combout => \index[11][0]~2_combout\);

-- Location: FF_X84_Y15_N32
\index[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add34~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[11][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[11][0]~q\);

-- Location: MLABCELL_X84_Y15_N33
\Add34~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add34~9_sumout\ = SUM(( \index[11][1]~q\ ) + ( GND ) + ( \Add34~6\ ))
-- \Add34~10\ = CARRY(( \index[11][1]~q\ ) + ( GND ) + ( \Add34~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[11][1]~q\,
	cin => \Add34~6\,
	sumout => \Add34~9_sumout\,
	cout => \Add34~10\);

-- Location: FF_X84_Y15_N35
\index[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add34~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[11][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[11][1]~q\);

-- Location: MLABCELL_X84_Y15_N36
\Add34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add34~1_sumout\ = SUM(( \index[11][2]~q\ ) + ( GND ) + ( \Add34~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_index[11][2]~q\,
	cin => \Add34~10\,
	sumout => \Add34~1_sumout\);

-- Location: LABCELL_X85_Y15_N24
\index[11][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \index[11][2]~feeder_combout\ = ( \Add34~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add34~1_sumout\,
	combout => \index[11][2]~feeder_combout\);

-- Location: FF_X85_Y15_N26
\index[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \index[11][2]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[11][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[11][2]~q\);

-- Location: MLABCELL_X84_Y15_N51
\note_length~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~2_combout\ = ( \index[11][0]~q\ & ( (!\song[0][11][31]~combout\ & (\index[11][2]~q\ & (\Equal12~6_combout\ & \index[11][1]~q\))) ) ) # ( !\index[11][0]~q\ & ( (\Equal12~6_combout\ & ((!\index[11][2]~q\ & (!\song[0][11][31]~combout\ & 
-- !\index[11][1]~q\)) # (\index[11][2]~q\ & ((\index[11][1]~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000011000010000000001100000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_song[0][11][31]~combout\,
	datab => \ALT_INV_index[11][2]~q\,
	datac => \ALT_INV_Equal12~6_combout\,
	datad => \ALT_INV_index[11][1]~q\,
	dataf => \ALT_INV_index[11][0]~q\,
	combout => \note_length~2_combout\);

-- Location: FF_X84_Y15_N52
\note_length[11][2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~2_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sclr => \ALT_INV_enable~input_o\,
	sload => \ALT_INV_screen_end~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[11][2]~reg0_q\);

-- Location: LABCELL_X85_Y15_N0
\note_length~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~3_combout\ = ( !\Mux379~0_combout\ & ( \Equal12~6_combout\ & ( (\screen_end~input_o\ & (\enable~input_o\ & \Mux354~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_screen_end~input_o\,
	datac => \ALT_INV_enable~input_o\,
	datad => \ALT_INV_Mux354~0_combout\,
	datae => \ALT_INV_Mux379~0_combout\,
	dataf => \ALT_INV_Equal12~6_combout\,
	combout => \note_length~3_combout\);

-- Location: FF_X87_Y15_N43
\note_length[11][5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \note_length~3_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[11][5]~reg0_q\);

-- Location: FF_X85_Y15_N47
\note_length[11][6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \note_length~3_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[11][6]~reg0_q\);

-- Location: LABCELL_X85_Y14_N0
\Add31~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add31~9_sumout\ = SUM(( \index[10][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add31~10\ = CARRY(( \index[10][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[10][0]~q\,
	cin => GND,
	sumout => \Add31~9_sumout\,
	cout => \Add31~10\);

-- Location: LABCELL_X85_Y16_N54
\index[10][2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \index[10][2]~3_combout\ = ( \Equal11~6_combout\ & ( (\enable~input_o\ & \screen_end~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datab => \ALT_INV_screen_end~input_o\,
	dataf => \ALT_INV_Equal11~6_combout\,
	combout => \index[10][2]~3_combout\);

-- Location: FF_X85_Y14_N2
\index[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add31~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[10][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[10][0]~q\);

-- Location: LABCELL_X85_Y14_N3
\Add31~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add31~5_sumout\ = SUM(( \index[10][1]~q\ ) + ( GND ) + ( \Add31~10\ ))
-- \Add31~6\ = CARRY(( \index[10][1]~q\ ) + ( GND ) + ( \Add31~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[10][1]~q\,
	cin => \Add31~10\,
	sumout => \Add31~5_sumout\,
	cout => \Add31~6\);

-- Location: FF_X85_Y14_N5
\index[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add31~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[10][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[10][1]~q\);

-- Location: LABCELL_X85_Y14_N6
\Add31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add31~1_sumout\ = SUM(( \index[10][2]~q\ ) + ( GND ) + ( \Add31~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[10][2]~q\,
	cin => \Add31~6\,
	sumout => \Add31~1_sumout\);

-- Location: FF_X85_Y14_N8
\index[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add31~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[10][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[10][2]~q\);

-- Location: LABCELL_X85_Y14_N12
\Mux322~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux322~0_combout\ = ( \index[10][1]~q\ & ( \index[10][2]~q\ ) ) # ( !\index[10][1]~q\ & ( \index[10][2]~q\ ) ) # ( \index[10][1]~q\ & ( !\index[10][2]~q\ ) ) # ( !\index[10][1]~q\ & ( !\index[10][2]~q\ & ( !\index[10][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_index[10][0]~q\,
	datae => \ALT_INV_index[10][1]~q\,
	dataf => \ALT_INV_index[10][2]~q\,
	combout => \Mux322~0_combout\);

-- Location: MLABCELL_X87_Y13_N0
\Add32~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~126_cout\ = CARRY(( \tmp_wait[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait[0][0]~q\,
	cin => GND,
	cout => \Add32~126_cout\);

-- Location: MLABCELL_X87_Y13_N3
\Add32~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~5_sumout\ = SUM(( \tmp_wait[10][1]~q\ ) + ( VCC ) + ( \Add32~126_cout\ ))
-- \Add32~6\ = CARRY(( \tmp_wait[10][1]~q\ ) + ( VCC ) + ( \Add32~126_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[10][1]~q\,
	cin => \Add32~126_cout\,
	sumout => \Add32~5_sumout\,
	cout => \Add32~6\);

-- Location: LABCELL_X88_Y13_N51
\tmp_wait[10][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait[10][1]~feeder_combout\ = ( \Add32~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add32~5_sumout\,
	combout => \tmp_wait[10][1]~feeder_combout\);

-- Location: FF_X88_Y13_N53
\tmp_wait[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \tmp_wait[10][1]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][1]~q\);

-- Location: MLABCELL_X87_Y13_N6
\Add32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~1_sumout\ = SUM(( VCC ) + ( (\tmp_wait[10][2]~q\) # (\Equal11~6_combout\) ) + ( \Add32~6\ ))
-- \Add32~2\ = CARRY(( VCC ) + ( (\tmp_wait[10][2]~q\) # (\Equal11~6_combout\) ) + ( \Add32~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal11~6_combout\,
	dataf => \ALT_INV_tmp_wait[10][2]~q\,
	cin => \Add32~6\,
	sumout => \Add32~1_sumout\,
	cout => \Add32~2\);

-- Location: FF_X87_Y13_N8
\tmp_wait[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][2]~q\);

-- Location: MLABCELL_X87_Y13_N9
\Add32~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~29_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][3]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~2\ ))
-- \Add32~30\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][3]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][3]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~2\,
	sumout => \Add32~29_sumout\,
	cout => \Add32~30\);

-- Location: FF_X87_Y13_N11
\tmp_wait[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~29_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][3]~q\);

-- Location: MLABCELL_X87_Y13_N12
\Add32~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~25_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][4]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~30\ ))
-- \Add32~26\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][4]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][4]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~30\,
	sumout => \Add32~25_sumout\,
	cout => \Add32~26\);

-- Location: FF_X87_Y13_N14
\tmp_wait[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~25_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][4]~q\);

-- Location: MLABCELL_X87_Y13_N15
\Add32~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~21_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][5]~q\)))) # (\Equal11~6_combout\ & (((!\song[0][11][5]~combout\)) # (\Mux322~0_combout\))) ) + ( VCC ) + ( \Add32~26\ ))
-- \Add32~22\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][5]~q\)))) # (\Equal11~6_combout\ & (((!\song[0][11][5]~combout\)) # (\Mux322~0_combout\))) ) + ( VCC ) + ( \Add32~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][5]~q\,
	datad => \ALT_INV_song[0][11][5]~combout\,
	cin => \Add32~26\,
	sumout => \Add32~21_sumout\,
	cout => \Add32~22\);

-- Location: FF_X87_Y13_N17
\tmp_wait[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~21_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][5]~q\);

-- Location: MLABCELL_X87_Y13_N18
\Add32~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~17_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][6]~q\)))) # (\Equal11~6_combout\ & (((!\song[0][11][5]~combout\)) # (\Mux322~0_combout\))) ) + ( VCC ) + ( \Add32~22\ ))
-- \Add32~18\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][6]~q\)))) # (\Equal11~6_combout\ & (((!\song[0][11][5]~combout\)) # (\Mux322~0_combout\))) ) + ( VCC ) + ( \Add32~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][6]~q\,
	datad => \ALT_INV_song[0][11][5]~combout\,
	cin => \Add32~22\,
	sumout => \Add32~17_sumout\,
	cout => \Add32~18\);

-- Location: FF_X87_Y13_N20
\tmp_wait[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~17_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][6]~q\);

-- Location: MLABCELL_X87_Y13_N21
\Add32~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~13_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][7]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~18\ ))
-- \Add32~14\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][7]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][7]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~18\,
	sumout => \Add32~13_sumout\,
	cout => \Add32~14\);

-- Location: FF_X87_Y13_N23
\tmp_wait[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~13_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][7]~q\);

-- Location: MLABCELL_X87_Y13_N24
\Add32~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~9_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][8]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~14\ ))
-- \Add32~10\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][8]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][8]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~14\,
	sumout => \Add32~9_sumout\,
	cout => \Add32~10\);

-- Location: FF_X87_Y13_N26
\tmp_wait[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][8]~q\);

-- Location: LABCELL_X88_Y13_N36
\Equal11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = ( !\tmp_wait[10][4]~q\ & ( !\tmp_wait[10][3]~q\ & ( (!\tmp_wait[10][6]~q\ & (!\tmp_wait[10][8]~q\ & (!\tmp_wait[10][7]~q\ & !\tmp_wait[10][5]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[10][6]~q\,
	datab => \ALT_INV_tmp_wait[10][8]~q\,
	datac => \ALT_INV_tmp_wait[10][7]~q\,
	datad => \ALT_INV_tmp_wait[10][5]~q\,
	datae => \ALT_INV_tmp_wait[10][4]~q\,
	dataf => \ALT_INV_tmp_wait[10][3]~q\,
	combout => \Equal11~1_combout\);

-- Location: LABCELL_X88_Y13_N42
\Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = ( !\tmp_wait[10][2]~q\ & ( !\tmp_wait[10][1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_tmp_wait[10][2]~q\,
	dataf => \ALT_INV_tmp_wait[10][1]~q\,
	combout => \Equal11~0_combout\);

-- Location: MLABCELL_X87_Y13_N27
\Add32~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~53_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][9]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~10\ ))
-- \Add32~54\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][9]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][9]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~10\,
	sumout => \Add32~53_sumout\,
	cout => \Add32~54\);

-- Location: FF_X87_Y13_N29
\tmp_wait[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~53_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][9]~q\);

-- Location: MLABCELL_X87_Y13_N30
\Add32~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~49_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][10]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~54\ ))
-- \Add32~50\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][10]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][10]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~54\,
	sumout => \Add32~49_sumout\,
	cout => \Add32~50\);

-- Location: FF_X87_Y13_N32
\tmp_wait[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~49_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][10]~q\);

-- Location: MLABCELL_X87_Y13_N33
\Add32~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~45_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][11]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~50\ ))
-- \Add32~46\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][11]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][11]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~50\,
	sumout => \Add32~45_sumout\,
	cout => \Add32~46\);

-- Location: FF_X87_Y13_N35
\tmp_wait[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~45_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][11]~q\);

-- Location: MLABCELL_X87_Y13_N36
\Add32~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~41_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][12]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~46\ ))
-- \Add32~42\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][12]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][12]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~46\,
	sumout => \Add32~41_sumout\,
	cout => \Add32~42\);

-- Location: FF_X87_Y13_N38
\tmp_wait[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~41_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][12]~q\);

-- Location: MLABCELL_X87_Y13_N39
\Add32~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~37_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][13]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~42\ ))
-- \Add32~38\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][13]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][13]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~42\,
	sumout => \Add32~37_sumout\,
	cout => \Add32~38\);

-- Location: FF_X87_Y13_N41
\tmp_wait[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~37_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][13]~q\);

-- Location: MLABCELL_X87_Y13_N42
\Add32~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~33_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][14]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~38\ ))
-- \Add32~34\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][14]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][14]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~38\,
	sumout => \Add32~33_sumout\,
	cout => \Add32~34\);

-- Location: FF_X87_Y13_N44
\tmp_wait[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~33_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][14]~q\);

-- Location: MLABCELL_X87_Y13_N45
\Add32~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~77_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][15]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~34\ ))
-- \Add32~78\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][15]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][15]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~34\,
	sumout => \Add32~77_sumout\,
	cout => \Add32~78\);

-- Location: FF_X87_Y13_N47
\tmp_wait[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~77_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][15]~q\);

-- Location: MLABCELL_X87_Y13_N48
\Add32~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~73_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][16]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~78\ ))
-- \Add32~74\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][16]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][16]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~78\,
	sumout => \Add32~73_sumout\,
	cout => \Add32~74\);

-- Location: FF_X87_Y13_N50
\tmp_wait[10][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~73_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][16]~q\);

-- Location: MLABCELL_X87_Y13_N51
\Add32~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~69_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][17]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~74\ ))
-- \Add32~70\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][17]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][17]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~74\,
	sumout => \Add32~69_sumout\,
	cout => \Add32~70\);

-- Location: FF_X87_Y13_N53
\tmp_wait[10][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~69_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][17]~q\);

-- Location: MLABCELL_X87_Y13_N54
\Add32~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~65_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][18]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~70\ ))
-- \Add32~66\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][18]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][18]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~70\,
	sumout => \Add32~65_sumout\,
	cout => \Add32~66\);

-- Location: FF_X87_Y13_N56
\tmp_wait[10][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~65_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][18]~q\);

-- Location: MLABCELL_X87_Y13_N57
\Add32~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~61_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][19]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~66\ ))
-- \Add32~62\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][19]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux322~0_combout\,
	datab => \ALT_INV_Equal11~6_combout\,
	datac => \ALT_INV_tmp_wait[10][19]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~66\,
	sumout => \Add32~61_sumout\,
	cout => \Add32~62\);

-- Location: FF_X87_Y13_N59
\tmp_wait[10][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~61_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][19]~q\);

-- Location: MLABCELL_X87_Y12_N0
\Add32~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~57_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][20]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~62\ ))
-- \Add32~58\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][20]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal11~6_combout\,
	datab => \ALT_INV_Mux322~0_combout\,
	datac => \ALT_INV_tmp_wait[10][20]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~62\,
	sumout => \Add32~57_sumout\,
	cout => \Add32~58\);

-- Location: FF_X87_Y12_N2
\tmp_wait[10][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~57_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][20]~q\);

-- Location: LABCELL_X88_Y13_N0
\Equal11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal11~3_combout\ = ( !\tmp_wait[10][17]~q\ & ( !\tmp_wait[10][20]~q\ & ( (!\tmp_wait[10][19]~q\ & (!\tmp_wait[10][18]~q\ & (!\tmp_wait[10][15]~q\ & !\tmp_wait[10][16]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[10][19]~q\,
	datab => \ALT_INV_tmp_wait[10][18]~q\,
	datac => \ALT_INV_tmp_wait[10][15]~q\,
	datad => \ALT_INV_tmp_wait[10][16]~q\,
	datae => \ALT_INV_tmp_wait[10][17]~q\,
	dataf => \ALT_INV_tmp_wait[10][20]~q\,
	combout => \Equal11~3_combout\);

-- Location: LABCELL_X88_Y13_N30
\Equal11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal11~2_combout\ = ( !\tmp_wait[10][11]~q\ & ( !\tmp_wait[10][10]~q\ & ( (!\tmp_wait[10][13]~q\ & (!\tmp_wait[10][9]~q\ & (!\tmp_wait[10][12]~q\ & !\tmp_wait[10][14]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[10][13]~q\,
	datab => \ALT_INV_tmp_wait[10][9]~q\,
	datac => \ALT_INV_tmp_wait[10][12]~q\,
	datad => \ALT_INV_tmp_wait[10][14]~q\,
	datae => \ALT_INV_tmp_wait[10][11]~q\,
	dataf => \ALT_INV_tmp_wait[10][10]~q\,
	combout => \Equal11~2_combout\);

-- Location: MLABCELL_X87_Y12_N3
\Add32~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~121_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][21]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~58\ ))
-- \Add32~122\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][21]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal11~6_combout\,
	datab => \ALT_INV_Mux322~0_combout\,
	datac => \ALT_INV_tmp_wait[10][21]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~58\,
	sumout => \Add32~121_sumout\,
	cout => \Add32~122\);

-- Location: FF_X87_Y12_N5
\tmp_wait[10][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~121_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][21]~q\);

-- Location: MLABCELL_X87_Y12_N6
\Add32~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~117_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][22]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~122\ ))
-- \Add32~118\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][22]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal11~6_combout\,
	datab => \ALT_INV_Mux322~0_combout\,
	datac => \ALT_INV_tmp_wait[10][22]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~122\,
	sumout => \Add32~117_sumout\,
	cout => \Add32~118\);

-- Location: FF_X87_Y12_N8
\tmp_wait[10][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~117_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][22]~q\);

-- Location: MLABCELL_X87_Y12_N9
\Add32~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~113_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][23]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~118\ ))
-- \Add32~114\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][23]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal11~6_combout\,
	datab => \ALT_INV_Mux322~0_combout\,
	datac => \ALT_INV_tmp_wait[10][23]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~118\,
	sumout => \Add32~113_sumout\,
	cout => \Add32~114\);

-- Location: FF_X87_Y12_N11
\tmp_wait[10][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~113_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][23]~q\);

-- Location: MLABCELL_X87_Y12_N12
\Add32~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~109_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][24]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~114\ ))
-- \Add32~110\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][24]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal11~6_combout\,
	datab => \ALT_INV_Mux322~0_combout\,
	datac => \ALT_INV_tmp_wait[10][24]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~114\,
	sumout => \Add32~109_sumout\,
	cout => \Add32~110\);

-- Location: FF_X87_Y12_N14
\tmp_wait[10][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~109_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][24]~q\);

-- Location: MLABCELL_X87_Y12_N15
\Add32~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~105_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][25]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~110\ ))
-- \Add32~106\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][25]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal11~6_combout\,
	datab => \ALT_INV_Mux322~0_combout\,
	datac => \ALT_INV_tmp_wait[10][25]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~110\,
	sumout => \Add32~105_sumout\,
	cout => \Add32~106\);

-- Location: FF_X87_Y12_N17
\tmp_wait[10][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~105_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][25]~q\);

-- Location: MLABCELL_X87_Y12_N18
\Add32~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~101_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][26]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~106\ ))
-- \Add32~102\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][26]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal11~6_combout\,
	datab => \ALT_INV_Mux322~0_combout\,
	datac => \ALT_INV_tmp_wait[10][26]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~106\,
	sumout => \Add32~101_sumout\,
	cout => \Add32~102\);

-- Location: FF_X87_Y12_N20
\tmp_wait[10][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~101_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][26]~q\);

-- Location: MLABCELL_X87_Y12_N21
\Add32~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~97_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][27]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~102\ ))
-- \Add32~98\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][27]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal11~6_combout\,
	datab => \ALT_INV_Mux322~0_combout\,
	datac => \ALT_INV_tmp_wait[10][27]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~102\,
	sumout => \Add32~97_sumout\,
	cout => \Add32~98\);

-- Location: FF_X87_Y12_N23
\tmp_wait[10][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~97_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][27]~q\);

-- Location: MLABCELL_X87_Y12_N24
\Add32~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~93_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][28]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~98\ ))
-- \Add32~94\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][28]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal11~6_combout\,
	datab => \ALT_INV_Mux322~0_combout\,
	datac => \ALT_INV_tmp_wait[10][28]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~98\,
	sumout => \Add32~93_sumout\,
	cout => \Add32~94\);

-- Location: FF_X87_Y12_N26
\tmp_wait[10][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~93_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][28]~q\);

-- Location: MLABCELL_X87_Y12_N27
\Add32~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~89_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][29]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~94\ ))
-- \Add32~90\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][29]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal11~6_combout\,
	datab => \ALT_INV_Mux322~0_combout\,
	datac => \ALT_INV_tmp_wait[10][29]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~94\,
	sumout => \Add32~89_sumout\,
	cout => \Add32~90\);

-- Location: FF_X87_Y12_N29
\tmp_wait[10][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~89_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][29]~q\);

-- Location: MLABCELL_X87_Y12_N30
\Add32~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~85_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][30]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~90\ ))
-- \Add32~86\ = CARRY(( (!\Equal11~6_combout\ & (((\tmp_wait[10][30]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal11~6_combout\,
	datab => \ALT_INV_Mux322~0_combout\,
	datac => \ALT_INV_tmp_wait[10][30]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~90\,
	sumout => \Add32~85_sumout\,
	cout => \Add32~86\);

-- Location: FF_X87_Y12_N32
\tmp_wait[10][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~85_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][30]~q\);

-- Location: MLABCELL_X87_Y12_N33
\Add32~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add32~81_sumout\ = SUM(( (!\Equal11~6_combout\ & (((\tmp_wait[10][31]~q\)))) # (\Equal11~6_combout\ & (!\Mux322~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add32~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal11~6_combout\,
	datab => \ALT_INV_Mux322~0_combout\,
	datac => \ALT_INV_tmp_wait[10][31]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add32~86\,
	sumout => \Add32~81_sumout\);

-- Location: FF_X87_Y12_N35
\tmp_wait[10][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add32~81_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[10][31]~q\);

-- Location: LABCELL_X88_Y13_N54
\Equal11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal11~4_combout\ = ( !\tmp_wait[10][28]~q\ & ( !\tmp_wait[0][0]~q\ & ( (!\tmp_wait[10][31]~q\ & (!\tmp_wait[10][30]~q\ & (!\tmp_wait[10][29]~q\ & !\tmp_wait[10][27]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[10][31]~q\,
	datab => \ALT_INV_tmp_wait[10][30]~q\,
	datac => \ALT_INV_tmp_wait[10][29]~q\,
	datad => \ALT_INV_tmp_wait[10][27]~q\,
	datae => \ALT_INV_tmp_wait[10][28]~q\,
	dataf => \ALT_INV_tmp_wait[0][0]~q\,
	combout => \Equal11~4_combout\);

-- Location: MLABCELL_X87_Y12_N39
\Equal11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal11~5_combout\ = ( !\tmp_wait[10][24]~q\ & ( !\tmp_wait[10][23]~q\ & ( (!\tmp_wait[10][21]~q\ & (!\tmp_wait[10][22]~q\ & (!\tmp_wait[10][25]~q\ & !\tmp_wait[10][26]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[10][21]~q\,
	datab => \ALT_INV_tmp_wait[10][22]~q\,
	datac => \ALT_INV_tmp_wait[10][25]~q\,
	datad => \ALT_INV_tmp_wait[10][26]~q\,
	datae => \ALT_INV_tmp_wait[10][24]~q\,
	dataf => \ALT_INV_tmp_wait[10][23]~q\,
	combout => \Equal11~5_combout\);

-- Location: LABCELL_X88_Y13_N24
\Equal11~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal11~6_combout\ = ( \Equal11~4_combout\ & ( \Equal11~5_combout\ & ( (\Equal11~1_combout\ & (\Equal11~0_combout\ & (\Equal11~3_combout\ & \Equal11~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal11~1_combout\,
	datab => \ALT_INV_Equal11~0_combout\,
	datac => \ALT_INV_Equal11~3_combout\,
	datad => \ALT_INV_Equal11~2_combout\,
	datae => \ALT_INV_Equal11~4_combout\,
	dataf => \ALT_INV_Equal11~5_combout\,
	combout => \Equal11~6_combout\);

-- Location: MLABCELL_X87_Y15_N0
\note_length~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~4_combout\ = ( !\Mux322~0_combout\ & ( (!\song[0][11][31]~combout\ & \Equal11~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_Equal11~6_combout\,
	dataf => \ALT_INV_Mux322~0_combout\,
	combout => \note_length~4_combout\);

-- Location: FF_X87_Y15_N1
\note_length[10][2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~4_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sclr => \ALT_INV_enable~input_o\,
	sload => \ALT_INV_screen_end~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[10][2]~reg0_q\);

-- Location: LABCELL_X85_Y15_N9
\note_length~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~5_combout\ = ( \Equal11~6_combout\ & ( !\Mux322~0_combout\ & ( (\enable~input_o\ & (\song[0][11][5]~combout\ & (!\song[0][11][31]~combout\ & \screen_end~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datab => \ALT_INV_song[0][11][5]~combout\,
	datac => \ALT_INV_song[0][11][31]~combout\,
	datad => \ALT_INV_screen_end~input_o\,
	datae => \ALT_INV_Equal11~6_combout\,
	dataf => \ALT_INV_Mux322~0_combout\,
	combout => \note_length~5_combout\);

-- Location: FF_X85_Y15_N5
\note_length[10][5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \note_length~5_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[10][5]~reg0_q\);

-- Location: FF_X85_Y15_N11
\note_length[10][6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~5_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[10][6]~reg0_q\);

-- Location: LABCELL_X85_Y16_N0
\Add28~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~9_sumout\ = SUM(( \index[9][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add28~10\ = CARRY(( \index[9][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[9][0]~q\,
	cin => GND,
	sumout => \Add28~9_sumout\,
	cout => \Add28~10\);

-- Location: LABCELL_X85_Y16_N33
\index[9][2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \index[9][2]~4_combout\ = (\enable~input_o\ & (\screen_end~input_o\ & \Equal10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datac => \ALT_INV_screen_end~input_o\,
	datad => \ALT_INV_Equal10~6_combout\,
	combout => \index[9][2]~4_combout\);

-- Location: FF_X85_Y16_N2
\index[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add28~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[9][2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[9][0]~q\);

-- Location: LABCELL_X85_Y16_N3
\Add28~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~5_sumout\ = SUM(( \index[9][1]~q\ ) + ( GND ) + ( \Add28~10\ ))
-- \Add28~6\ = CARRY(( \index[9][1]~q\ ) + ( GND ) + ( \Add28~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[9][1]~q\,
	cin => \Add28~10\,
	sumout => \Add28~5_sumout\,
	cout => \Add28~6\);

-- Location: FF_X85_Y16_N5
\index[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add28~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[9][2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[9][1]~q\);

-- Location: LABCELL_X85_Y16_N6
\Add28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add28~1_sumout\ = SUM(( \index[9][2]~q\ ) + ( GND ) + ( \Add28~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[9][2]~q\,
	cin => \Add28~6\,
	sumout => \Add28~1_sumout\);

-- Location: FF_X85_Y16_N8
\index[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add28~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[9][2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[9][2]~q\);

-- Location: LABCELL_X85_Y16_N30
\Mux290~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux290~0_combout\ = ( \index[9][2]~q\ & ( (!\index[9][1]~q\ & \index[9][0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_index[9][1]~q\,
	datad => \ALT_INV_index[9][0]~q\,
	dataf => \ALT_INV_index[9][2]~q\,
	combout => \Mux290~0_combout\);

-- Location: LABCELL_X88_Y15_N0
\Add29~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~126_cout\ = CARRY(( \tmp_wait[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tmp_wait[0][0]~q\,
	cin => GND,
	cout => \Add29~126_cout\);

-- Location: LABCELL_X88_Y15_N3
\Add29~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~5_sumout\ = SUM(( \tmp_wait[9][1]~q\ ) + ( VCC ) + ( \Add29~126_cout\ ))
-- \Add29~6\ = CARRY(( \tmp_wait[9][1]~q\ ) + ( VCC ) + ( \Add29~126_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tmp_wait[9][1]~q\,
	cin => \Add29~126_cout\,
	sumout => \Add29~5_sumout\,
	cout => \Add29~6\);

-- Location: FF_X87_Y15_N17
\tmp_wait[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Add29~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][1]~q\);

-- Location: LABCELL_X88_Y15_N6
\Add29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~1_sumout\ = SUM(( VCC ) + ( (\tmp_wait[9][2]~q\) # (\Equal10~6_combout\) ) + ( \Add29~6\ ))
-- \Add29~2\ = CARRY(( VCC ) + ( (\tmp_wait[9][2]~q\) # (\Equal10~6_combout\) ) + ( \Add29~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal10~6_combout\,
	dataf => \ALT_INV_tmp_wait[9][2]~q\,
	cin => \Add29~6\,
	sumout => \Add29~1_sumout\,
	cout => \Add29~2\);

-- Location: FF_X88_Y15_N8
\tmp_wait[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][2]~q\);

-- Location: LABCELL_X88_Y15_N9
\Add29~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~29_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][3]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~2\ ))
-- \Add29~30\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][3]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux290~0_combout\,
	datab => \ALT_INV_Equal10~6_combout\,
	datac => \ALT_INV_tmp_wait[9][3]~q\,
	cin => \Add29~2\,
	sumout => \Add29~29_sumout\,
	cout => \Add29~30\);

-- Location: FF_X88_Y15_N11
\tmp_wait[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~29_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][3]~q\);

-- Location: LABCELL_X88_Y15_N12
\Add29~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~25_sumout\ = SUM(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][4]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~30\ ))
-- \Add29~26\ = CARRY(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][4]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal10~6_combout\,
	datac => \ALT_INV_Mux290~0_combout\,
	dataf => \ALT_INV_tmp_wait[9][4]~q\,
	cin => \Add29~30\,
	sumout => \Add29~25_sumout\,
	cout => \Add29~26\);

-- Location: FF_X88_Y15_N14
\tmp_wait[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~25_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][4]~q\);

-- Location: LABCELL_X88_Y15_N15
\Add29~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~21_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][5]~q\))) # (\Equal10~6_combout\ & (!\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~26\ ))
-- \Add29~22\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][5]~q\))) # (\Equal10~6_combout\ & (!\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux290~0_combout\,
	datab => \ALT_INV_Equal10~6_combout\,
	datac => \ALT_INV_tmp_wait[9][5]~q\,
	cin => \Add29~26\,
	sumout => \Add29~21_sumout\,
	cout => \Add29~22\);

-- Location: FF_X88_Y15_N17
\tmp_wait[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~21_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][5]~q\);

-- Location: LABCELL_X88_Y15_N18
\Add29~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~17_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][6]~q\))) # (\Equal10~6_combout\ & (!\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~22\ ))
-- \Add29~18\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][6]~q\))) # (\Equal10~6_combout\ & (!\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux290~0_combout\,
	datab => \ALT_INV_Equal10~6_combout\,
	datac => \ALT_INV_tmp_wait[9][6]~q\,
	cin => \Add29~22\,
	sumout => \Add29~17_sumout\,
	cout => \Add29~18\);

-- Location: FF_X88_Y15_N20
\tmp_wait[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~17_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][6]~q\);

-- Location: LABCELL_X88_Y15_N21
\Add29~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~13_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][7]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~18\ ))
-- \Add29~14\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][7]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_Equal10~6_combout\,
	datad => \ALT_INV_tmp_wait[9][7]~q\,
	cin => \Add29~18\,
	sumout => \Add29~13_sumout\,
	cout => \Add29~14\);

-- Location: FF_X88_Y15_N23
\tmp_wait[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~13_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][7]~q\);

-- Location: LABCELL_X88_Y15_N24
\Add29~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~9_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][8]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~14\ ))
-- \Add29~10\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][8]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux290~0_combout\,
	datab => \ALT_INV_Equal10~6_combout\,
	datac => \ALT_INV_tmp_wait[9][8]~q\,
	cin => \Add29~14\,
	sumout => \Add29~9_sumout\,
	cout => \Add29~10\);

-- Location: FF_X88_Y15_N26
\tmp_wait[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][8]~q\);

-- Location: LABCELL_X88_Y15_N27
\Add29~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~53_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][9]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~10\ ))
-- \Add29~54\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][9]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_Equal10~6_combout\,
	datad => \ALT_INV_tmp_wait[9][9]~q\,
	cin => \Add29~10\,
	sumout => \Add29~53_sumout\,
	cout => \Add29~54\);

-- Location: FF_X88_Y15_N29
\tmp_wait[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~53_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][9]~q\);

-- Location: LABCELL_X88_Y15_N30
\Add29~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~49_sumout\ = SUM(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][10]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~54\ ))
-- \Add29~50\ = CARRY(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][10]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal10~6_combout\,
	datac => \ALT_INV_Mux290~0_combout\,
	dataf => \ALT_INV_tmp_wait[9][10]~q\,
	cin => \Add29~54\,
	sumout => \Add29~49_sumout\,
	cout => \Add29~50\);

-- Location: FF_X88_Y15_N32
\tmp_wait[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~49_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][10]~q\);

-- Location: LABCELL_X88_Y15_N33
\Add29~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~45_sumout\ = SUM(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][11]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~50\ ))
-- \Add29~46\ = CARRY(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][11]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_Equal10~6_combout\,
	dataf => \ALT_INV_tmp_wait[9][11]~q\,
	cin => \Add29~50\,
	sumout => \Add29~45_sumout\,
	cout => \Add29~46\);

-- Location: FF_X88_Y15_N35
\tmp_wait[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~45_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][11]~q\);

-- Location: LABCELL_X88_Y15_N36
\Add29~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~41_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][12]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~46\ ))
-- \Add29~42\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][12]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal10~6_combout\,
	datac => \ALT_INV_Mux290~0_combout\,
	datad => \ALT_INV_tmp_wait[9][12]~q\,
	cin => \Add29~46\,
	sumout => \Add29~41_sumout\,
	cout => \Add29~42\);

-- Location: FF_X88_Y15_N38
\tmp_wait[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~41_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][12]~q\);

-- Location: LABCELL_X88_Y15_N39
\Add29~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~37_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][13]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~42\ ))
-- \Add29~38\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][13]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux290~0_combout\,
	datab => \ALT_INV_Equal10~6_combout\,
	datac => \ALT_INV_tmp_wait[9][13]~q\,
	cin => \Add29~42\,
	sumout => \Add29~37_sumout\,
	cout => \Add29~38\);

-- Location: FF_X88_Y15_N41
\tmp_wait[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~37_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][13]~q\);

-- Location: LABCELL_X88_Y15_N42
\Add29~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~33_sumout\ = SUM(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][14]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~38\ ))
-- \Add29~34\ = CARRY(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][14]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal10~6_combout\,
	datac => \ALT_INV_Mux290~0_combout\,
	dataf => \ALT_INV_tmp_wait[9][14]~q\,
	cin => \Add29~38\,
	sumout => \Add29~33_sumout\,
	cout => \Add29~34\);

-- Location: FF_X88_Y15_N44
\tmp_wait[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~33_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][14]~q\);

-- Location: MLABCELL_X87_Y15_N36
\Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal10~2_combout\ = ( !\tmp_wait[9][9]~q\ & ( !\tmp_wait[9][13]~q\ & ( (!\tmp_wait[9][11]~q\ & (!\tmp_wait[9][12]~q\ & (!\tmp_wait[9][10]~q\ & !\tmp_wait[9][14]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[9][11]~q\,
	datab => \ALT_INV_tmp_wait[9][12]~q\,
	datac => \ALT_INV_tmp_wait[9][10]~q\,
	datad => \ALT_INV_tmp_wait[9][14]~q\,
	datae => \ALT_INV_tmp_wait[9][9]~q\,
	dataf => \ALT_INV_tmp_wait[9][13]~q\,
	combout => \Equal10~2_combout\);

-- Location: MLABCELL_X87_Y15_N45
\Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = ( !\tmp_wait[9][1]~q\ & ( !\tmp_wait[9][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tmp_wait[9][2]~q\,
	dataf => \ALT_INV_tmp_wait[9][1]~q\,
	combout => \Equal10~0_combout\);

-- Location: LABCELL_X88_Y15_N45
\Add29~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~77_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][15]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~34\ ))
-- \Add29~78\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][15]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_Equal10~6_combout\,
	datad => \ALT_INV_tmp_wait[9][15]~q\,
	cin => \Add29~34\,
	sumout => \Add29~77_sumout\,
	cout => \Add29~78\);

-- Location: FF_X88_Y15_N47
\tmp_wait[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~77_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][15]~q\);

-- Location: LABCELL_X88_Y15_N48
\Add29~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~73_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][16]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~78\ ))
-- \Add29~74\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][16]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux290~0_combout\,
	datab => \ALT_INV_Equal10~6_combout\,
	datac => \ALT_INV_tmp_wait[9][16]~q\,
	cin => \Add29~78\,
	sumout => \Add29~73_sumout\,
	cout => \Add29~74\);

-- Location: FF_X88_Y15_N50
\tmp_wait[9][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~73_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][16]~q\);

-- Location: LABCELL_X88_Y15_N51
\Add29~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~69_sumout\ = SUM(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][17]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~74\ ))
-- \Add29~70\ = CARRY(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][17]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_Equal10~6_combout\,
	dataf => \ALT_INV_tmp_wait[9][17]~q\,
	cin => \Add29~74\,
	sumout => \Add29~69_sumout\,
	cout => \Add29~70\);

-- Location: FF_X88_Y15_N53
\tmp_wait[9][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~69_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][17]~q\);

-- Location: LABCELL_X88_Y15_N54
\Add29~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~65_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][18]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~70\ ))
-- \Add29~66\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][18]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal10~6_combout\,
	datac => \ALT_INV_Mux290~0_combout\,
	datad => \ALT_INV_tmp_wait[9][18]~q\,
	cin => \Add29~70\,
	sumout => \Add29~65_sumout\,
	cout => \Add29~66\);

-- Location: FF_X88_Y15_N56
\tmp_wait[9][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~65_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][18]~q\);

-- Location: LABCELL_X88_Y15_N57
\Add29~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~61_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][19]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~66\ ))
-- \Add29~62\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][19]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_Equal10~6_combout\,
	datad => \ALT_INV_tmp_wait[9][19]~q\,
	cin => \Add29~66\,
	sumout => \Add29~61_sumout\,
	cout => \Add29~62\);

-- Location: FF_X88_Y15_N59
\tmp_wait[9][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~61_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][19]~q\);

-- Location: LABCELL_X88_Y14_N0
\Add29~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~57_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][20]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~62\ ))
-- \Add29~58\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][20]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_Equal10~6_combout\,
	datad => \ALT_INV_tmp_wait[9][20]~q\,
	cin => \Add29~62\,
	sumout => \Add29~57_sumout\,
	cout => \Add29~58\);

-- Location: FF_X88_Y14_N2
\tmp_wait[9][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~57_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][20]~q\);

-- Location: MLABCELL_X87_Y15_N54
\Equal10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal10~3_combout\ = ( !\tmp_wait[9][16]~q\ & ( !\tmp_wait[9][20]~q\ & ( (!\tmp_wait[9][15]~q\ & (!\tmp_wait[9][18]~q\ & (!\tmp_wait[9][17]~q\ & !\tmp_wait[9][19]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[9][15]~q\,
	datab => \ALT_INV_tmp_wait[9][18]~q\,
	datac => \ALT_INV_tmp_wait[9][17]~q\,
	datad => \ALT_INV_tmp_wait[9][19]~q\,
	datae => \ALT_INV_tmp_wait[9][16]~q\,
	dataf => \ALT_INV_tmp_wait[9][20]~q\,
	combout => \Equal10~3_combout\);

-- Location: MLABCELL_X87_Y15_N30
\Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = ( !\tmp_wait[9][7]~q\ & ( !\tmp_wait[9][8]~q\ & ( (!\tmp_wait[9][5]~q\ & (!\tmp_wait[9][6]~q\ & (!\tmp_wait[9][3]~q\ & !\tmp_wait[9][4]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[9][5]~q\,
	datab => \ALT_INV_tmp_wait[9][6]~q\,
	datac => \ALT_INV_tmp_wait[9][3]~q\,
	datad => \ALT_INV_tmp_wait[9][4]~q\,
	datae => \ALT_INV_tmp_wait[9][7]~q\,
	dataf => \ALT_INV_tmp_wait[9][8]~q\,
	combout => \Equal10~1_combout\);

-- Location: LABCELL_X88_Y14_N3
\Add29~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~121_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][21]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~58\ ))
-- \Add29~122\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][21]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal10~6_combout\,
	datac => \ALT_INV_Mux290~0_combout\,
	datad => \ALT_INV_tmp_wait[9][21]~q\,
	cin => \Add29~58\,
	sumout => \Add29~121_sumout\,
	cout => \Add29~122\);

-- Location: FF_X88_Y14_N5
\tmp_wait[9][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~121_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][21]~q\);

-- Location: LABCELL_X88_Y14_N6
\Add29~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~117_sumout\ = SUM(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][22]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~122\ ))
-- \Add29~118\ = CARRY(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][22]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_Equal10~6_combout\,
	dataf => \ALT_INV_tmp_wait[9][22]~q\,
	cin => \Add29~122\,
	sumout => \Add29~117_sumout\,
	cout => \Add29~118\);

-- Location: FF_X88_Y14_N8
\tmp_wait[9][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~117_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][22]~q\);

-- Location: LABCELL_X88_Y14_N9
\Add29~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~113_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][23]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~118\ ))
-- \Add29~114\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][23]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal10~6_combout\,
	datab => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_tmp_wait[9][23]~q\,
	cin => \Add29~118\,
	sumout => \Add29~113_sumout\,
	cout => \Add29~114\);

-- Location: FF_X88_Y14_N11
\tmp_wait[9][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~113_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][23]~q\);

-- Location: LABCELL_X88_Y14_N12
\Add29~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~109_sumout\ = SUM(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][24]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~114\ ))
-- \Add29~110\ = CARRY(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][24]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_Equal10~6_combout\,
	dataf => \ALT_INV_tmp_wait[9][24]~q\,
	cin => \Add29~114\,
	sumout => \Add29~109_sumout\,
	cout => \Add29~110\);

-- Location: FF_X88_Y14_N14
\tmp_wait[9][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~109_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][24]~q\);

-- Location: LABCELL_X88_Y14_N15
\Add29~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~105_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][25]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~110\ ))
-- \Add29~106\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][25]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal10~6_combout\,
	datab => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_tmp_wait[9][25]~q\,
	cin => \Add29~110\,
	sumout => \Add29~105_sumout\,
	cout => \Add29~106\);

-- Location: FF_X88_Y14_N17
\tmp_wait[9][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~105_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][25]~q\);

-- Location: LABCELL_X88_Y14_N18
\Add29~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~101_sumout\ = SUM(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][26]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~106\ ))
-- \Add29~102\ = CARRY(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][26]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_Equal10~6_combout\,
	dataf => \ALT_INV_tmp_wait[9][26]~q\,
	cin => \Add29~106\,
	sumout => \Add29~101_sumout\,
	cout => \Add29~102\);

-- Location: FF_X88_Y14_N20
\tmp_wait[9][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~101_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][26]~q\);

-- Location: LABCELL_X88_Y14_N21
\Add29~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~97_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][27]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~102\ ))
-- \Add29~98\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][27]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_Equal10~6_combout\,
	datad => \ALT_INV_tmp_wait[9][27]~q\,
	cin => \Add29~102\,
	sumout => \Add29~97_sumout\,
	cout => \Add29~98\);

-- Location: FF_X88_Y14_N23
\tmp_wait[9][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~97_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][27]~q\);

-- Location: LABCELL_X88_Y14_N24
\Add29~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~93_sumout\ = SUM(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][28]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~98\ ))
-- \Add29~94\ = CARRY(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][28]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_Equal10~6_combout\,
	dataf => \ALT_INV_tmp_wait[9][28]~q\,
	cin => \Add29~98\,
	sumout => \Add29~93_sumout\,
	cout => \Add29~94\);

-- Location: FF_X88_Y14_N26
\tmp_wait[9][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~93_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][28]~q\);

-- Location: LABCELL_X88_Y14_N27
\Add29~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~89_sumout\ = SUM(( (!\Equal10~6_combout\ & ((\tmp_wait[9][29]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~94\ ))
-- \Add29~90\ = CARRY(( (!\Equal10~6_combout\ & ((\tmp_wait[9][29]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( VCC ) + ( \Add29~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_Equal10~6_combout\,
	datad => \ALT_INV_tmp_wait[9][29]~q\,
	cin => \Add29~94\,
	sumout => \Add29~89_sumout\,
	cout => \Add29~90\);

-- Location: FF_X88_Y14_N29
\tmp_wait[9][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~89_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][29]~q\);

-- Location: LABCELL_X88_Y14_N30
\Add29~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~85_sumout\ = SUM(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][30]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~90\ ))
-- \Add29~86\ = CARRY(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][30]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_Equal10~6_combout\,
	dataf => \ALT_INV_tmp_wait[9][30]~q\,
	cin => \Add29~90\,
	sumout => \Add29~85_sumout\,
	cout => \Add29~86\);

-- Location: FF_X88_Y14_N32
\tmp_wait[9][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~85_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][30]~q\);

-- Location: LABCELL_X88_Y14_N33
\Add29~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add29~81_sumout\ = SUM(( VCC ) + ( (!\Equal10~6_combout\ & ((\tmp_wait[9][31]~q\))) # (\Equal10~6_combout\ & (\Mux290~0_combout\)) ) + ( \Add29~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux290~0_combout\,
	datac => \ALT_INV_Equal10~6_combout\,
	dataf => \ALT_INV_tmp_wait[9][31]~q\,
	cin => \Add29~86\,
	sumout => \Add29~81_sumout\);

-- Location: FF_X88_Y14_N35
\tmp_wait[9][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add29~81_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[9][31]~q\);

-- Location: LABCELL_X88_Y14_N57
\Equal10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal10~4_combout\ = ( !\tmp_wait[9][27]~q\ & ( !\tmp_wait[0][0]~q\ & ( (!\tmp_wait[9][28]~q\ & (!\tmp_wait[9][30]~q\ & (!\tmp_wait[9][29]~q\ & !\tmp_wait[9][31]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[9][28]~q\,
	datab => \ALT_INV_tmp_wait[9][30]~q\,
	datac => \ALT_INV_tmp_wait[9][29]~q\,
	datad => \ALT_INV_tmp_wait[9][31]~q\,
	datae => \ALT_INV_tmp_wait[9][27]~q\,
	dataf => \ALT_INV_tmp_wait[0][0]~q\,
	combout => \Equal10~4_combout\);

-- Location: LABCELL_X88_Y14_N36
\Equal10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal10~5_combout\ = ( !\tmp_wait[9][25]~q\ & ( !\tmp_wait[9][23]~q\ & ( (!\tmp_wait[9][21]~q\ & (!\tmp_wait[9][24]~q\ & (!\tmp_wait[9][26]~q\ & !\tmp_wait[9][22]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[9][21]~q\,
	datab => \ALT_INV_tmp_wait[9][24]~q\,
	datac => \ALT_INV_tmp_wait[9][26]~q\,
	datad => \ALT_INV_tmp_wait[9][22]~q\,
	datae => \ALT_INV_tmp_wait[9][25]~q\,
	dataf => \ALT_INV_tmp_wait[9][23]~q\,
	combout => \Equal10~5_combout\);

-- Location: MLABCELL_X87_Y15_N48
\Equal10~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal10~6_combout\ = ( \Equal10~4_combout\ & ( \Equal10~5_combout\ & ( (\Equal10~2_combout\ & (\Equal10~0_combout\ & (\Equal10~3_combout\ & \Equal10~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal10~2_combout\,
	datab => \ALT_INV_Equal10~0_combout\,
	datac => \ALT_INV_Equal10~3_combout\,
	datad => \ALT_INV_Equal10~1_combout\,
	datae => \ALT_INV_Equal10~4_combout\,
	dataf => \ALT_INV_Equal10~5_combout\,
	combout => \Equal10~6_combout\);

-- Location: LABCELL_X85_Y16_N21
\note_length~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~6_combout\ = ( \Mux290~0_combout\ & ( \Equal10~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal10~6_combout\,
	dataf => \ALT_INV_Mux290~0_combout\,
	combout => \note_length~6_combout\);

-- Location: FF_X85_Y16_N22
\note_length[9][2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~6_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sclr => \ALT_INV_enable~input_o\,
	sload => \ALT_INV_screen_end~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[9][2]~reg0_q\);

-- Location: LABCELL_X85_Y15_N42
\note_length~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~7_combout\ = ( \Mux290~0_combout\ & ( (\screen_end~input_o\ & (\Equal10~6_combout\ & \enable~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_screen_end~input_o\,
	datac => \ALT_INV_Equal10~6_combout\,
	datad => \ALT_INV_enable~input_o\,
	dataf => \ALT_INV_Mux290~0_combout\,
	combout => \note_length~7_combout\);

-- Location: LABCELL_X85_Y15_N51
\note_length[9][5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length[9][5]~reg0feeder_combout\ = ( \note_length~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_note_length~7_combout\,
	combout => \note_length[9][5]~reg0feeder_combout\);

-- Location: FF_X85_Y15_N52
\note_length[9][5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length[9][5]~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[9][5]~reg0_q\);

-- Location: FF_X85_Y15_N43
\note_length[9][6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~7_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[9][6]~reg0_q\);

-- Location: LABCELL_X85_Y14_N30
\Add25~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~9_sumout\ = SUM(( \index[8][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add25~10\ = CARRY(( \index[8][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[8][0]~q\,
	cin => GND,
	sumout => \Add25~9_sumout\,
	cout => \Add25~10\);

-- Location: MLABCELL_X84_Y13_N0
\Add26~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~126_cout\ = CARRY(( \tmp_wait[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tmp_wait[0][0]~q\,
	cin => GND,
	cout => \Add26~126_cout\);

-- Location: MLABCELL_X84_Y13_N3
\Add26~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~5_sumout\ = SUM(( \tmp_wait[8][1]~q\ ) + ( VCC ) + ( \Add26~126_cout\ ))
-- \Add26~6\ = CARRY(( \tmp_wait[8][1]~q\ ) + ( VCC ) + ( \Add26~126_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait[8][1]~q\,
	cin => \Add26~126_cout\,
	sumout => \Add26~5_sumout\,
	cout => \Add26~6\);

-- Location: LABCELL_X85_Y13_N21
\tmp_wait[8][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait[8][1]~feeder_combout\ = ( \Add26~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add26~5_sumout\,
	combout => \tmp_wait[8][1]~feeder_combout\);

-- Location: FF_X85_Y13_N23
\tmp_wait[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \tmp_wait[8][1]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][1]~q\);

-- Location: MLABCELL_X84_Y13_N6
\Add26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~1_sumout\ = SUM(( VCC ) + ( (\tmp_wait[8][2]~q\) # (\Equal9~6_combout\) ) + ( \Add26~6\ ))
-- \Add26~2\ = CARRY(( VCC ) + ( (\tmp_wait[8][2]~q\) # (\Equal9~6_combout\) ) + ( \Add26~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal9~6_combout\,
	dataf => \ALT_INV_tmp_wait[8][2]~q\,
	cin => \Add26~6\,
	sumout => \Add26~1_sumout\,
	cout => \Add26~2\);

-- Location: FF_X84_Y13_N8
\tmp_wait[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][2]~q\);

-- Location: MLABCELL_X84_Y13_N9
\Add26~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~29_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][3]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~2\ ))
-- \Add26~30\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][3]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011101000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_tmp_wait[8][3]~q\,
	datac => \ALT_INV_Equal9~6_combout\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~2\,
	sumout => \Add26~29_sumout\,
	cout => \Add26~30\);

-- Location: FF_X84_Y13_N11
\tmp_wait[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~29_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][3]~q\);

-- Location: MLABCELL_X84_Y13_N12
\Add26~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~25_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][4]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~30\ ))
-- \Add26~26\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][4]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][4]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~30\,
	sumout => \Add26~25_sumout\,
	cout => \Add26~26\);

-- Location: FF_X84_Y13_N14
\tmp_wait[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~25_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][4]~q\);

-- Location: MLABCELL_X84_Y13_N15
\Add26~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~21_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][5]~q\)))) # (\Equal9~6_combout\ & (((!\song[0][11][5]~combout\)) # (\Mux258~0_combout\))) ) + ( VCC ) + ( \Add26~26\ ))
-- \Add26~22\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][5]~q\)))) # (\Equal9~6_combout\ & (((!\song[0][11][5]~combout\)) # (\Mux258~0_combout\))) ) + ( VCC ) + ( \Add26~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][5]~q\,
	datad => \ALT_INV_song[0][11][5]~combout\,
	cin => \Add26~26\,
	sumout => \Add26~21_sumout\,
	cout => \Add26~22\);

-- Location: FF_X84_Y13_N17
\tmp_wait[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~21_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][5]~q\);

-- Location: MLABCELL_X84_Y13_N18
\Add26~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~17_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][6]~q\)))) # (\Equal9~6_combout\ & (((!\song[0][11][5]~combout\)) # (\Mux258~0_combout\))) ) + ( VCC ) + ( \Add26~22\ ))
-- \Add26~18\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][6]~q\)))) # (\Equal9~6_combout\ & (((!\song[0][11][5]~combout\)) # (\Mux258~0_combout\))) ) + ( VCC ) + ( \Add26~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][6]~q\,
	datad => \ALT_INV_song[0][11][5]~combout\,
	cin => \Add26~22\,
	sumout => \Add26~17_sumout\,
	cout => \Add26~18\);

-- Location: FF_X84_Y13_N20
\tmp_wait[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~17_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][6]~q\);

-- Location: MLABCELL_X84_Y13_N21
\Add26~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~13_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][7]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~18\ ))
-- \Add26~14\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][7]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][7]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~18\,
	sumout => \Add26~13_sumout\,
	cout => \Add26~14\);

-- Location: FF_X84_Y13_N23
\tmp_wait[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~13_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][7]~q\);

-- Location: MLABCELL_X84_Y13_N24
\Add26~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~9_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][8]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~14\ ))
-- \Add26~10\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][8]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][8]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~14\,
	sumout => \Add26~9_sumout\,
	cout => \Add26~10\);

-- Location: FF_X84_Y13_N26
\tmp_wait[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][8]~q\);

-- Location: MLABCELL_X84_Y13_N27
\Add26~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~53_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][9]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~10\ ))
-- \Add26~54\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][9]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][9]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~10\,
	sumout => \Add26~53_sumout\,
	cout => \Add26~54\);

-- Location: FF_X84_Y13_N29
\tmp_wait[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~53_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][9]~q\);

-- Location: MLABCELL_X84_Y13_N30
\Add26~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~49_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][10]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~54\ ))
-- \Add26~50\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][10]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][10]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~54\,
	sumout => \Add26~49_sumout\,
	cout => \Add26~50\);

-- Location: FF_X84_Y13_N32
\tmp_wait[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~49_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][10]~q\);

-- Location: MLABCELL_X84_Y13_N33
\Add26~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~45_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][11]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~50\ ))
-- \Add26~46\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][11]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][11]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~50\,
	sumout => \Add26~45_sumout\,
	cout => \Add26~46\);

-- Location: FF_X84_Y13_N35
\tmp_wait[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~45_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][11]~q\);

-- Location: MLABCELL_X84_Y13_N36
\Add26~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~41_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][12]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~46\ ))
-- \Add26~42\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][12]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][12]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~46\,
	sumout => \Add26~41_sumout\,
	cout => \Add26~42\);

-- Location: FF_X84_Y13_N38
\tmp_wait[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~41_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][12]~q\);

-- Location: MLABCELL_X84_Y13_N39
\Add26~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~37_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][13]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~42\ ))
-- \Add26~38\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][13]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][13]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~42\,
	sumout => \Add26~37_sumout\,
	cout => \Add26~38\);

-- Location: FF_X84_Y13_N41
\tmp_wait[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~37_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][13]~q\);

-- Location: MLABCELL_X84_Y13_N42
\Add26~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~33_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][14]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~38\ ))
-- \Add26~34\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][14]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][14]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~38\,
	sumout => \Add26~33_sumout\,
	cout => \Add26~34\);

-- Location: FF_X84_Y13_N44
\tmp_wait[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~33_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][14]~q\);

-- Location: MLABCELL_X84_Y13_N45
\Add26~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~77_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][15]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~34\ ))
-- \Add26~78\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][15]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][15]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~34\,
	sumout => \Add26~77_sumout\,
	cout => \Add26~78\);

-- Location: FF_X84_Y13_N47
\tmp_wait[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~77_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][15]~q\);

-- Location: MLABCELL_X84_Y13_N48
\Add26~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~73_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][16]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~78\ ))
-- \Add26~74\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][16]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][16]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~78\,
	sumout => \Add26~73_sumout\,
	cout => \Add26~74\);

-- Location: FF_X84_Y13_N50
\tmp_wait[8][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~73_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][16]~q\);

-- Location: MLABCELL_X84_Y13_N51
\Add26~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~69_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][17]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~74\ ))
-- \Add26~70\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][17]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][17]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~74\,
	sumout => \Add26~69_sumout\,
	cout => \Add26~70\);

-- Location: FF_X84_Y13_N53
\tmp_wait[8][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~69_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][17]~q\);

-- Location: MLABCELL_X84_Y13_N54
\Add26~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~65_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][18]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~70\ ))
-- \Add26~66\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][18]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][18]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~70\,
	sumout => \Add26~65_sumout\,
	cout => \Add26~66\);

-- Location: FF_X84_Y13_N56
\tmp_wait[8][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~65_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][18]~q\);

-- Location: MLABCELL_X84_Y13_N57
\Add26~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~61_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][19]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~66\ ))
-- \Add26~62\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][19]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux258~0_combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_tmp_wait[8][19]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~66\,
	sumout => \Add26~61_sumout\,
	cout => \Add26~62\);

-- Location: FF_X84_Y13_N59
\tmp_wait[8][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~61_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][19]~q\);

-- Location: MLABCELL_X84_Y12_N0
\Add26~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~57_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][20]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~62\ ))
-- \Add26~58\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][20]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal9~6_combout\,
	datab => \ALT_INV_Mux258~0_combout\,
	datac => \ALT_INV_tmp_wait[8][20]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~62\,
	sumout => \Add26~57_sumout\,
	cout => \Add26~58\);

-- Location: FF_X84_Y12_N2
\tmp_wait[8][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~57_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][20]~q\);

-- Location: MLABCELL_X84_Y12_N36
\Equal9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal9~3_combout\ = ( !\tmp_wait[8][17]~q\ & ( !\tmp_wait[8][19]~q\ & ( (!\tmp_wait[8][20]~q\ & (!\tmp_wait[8][16]~q\ & (!\tmp_wait[8][18]~q\ & !\tmp_wait[8][15]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[8][20]~q\,
	datab => \ALT_INV_tmp_wait[8][16]~q\,
	datac => \ALT_INV_tmp_wait[8][18]~q\,
	datad => \ALT_INV_tmp_wait[8][15]~q\,
	datae => \ALT_INV_tmp_wait[8][17]~q\,
	dataf => \ALT_INV_tmp_wait[8][19]~q\,
	combout => \Equal9~3_combout\);

-- Location: MLABCELL_X84_Y12_N3
\Add26~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~121_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][21]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~58\ ))
-- \Add26~122\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][21]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal9~6_combout\,
	datab => \ALT_INV_Mux258~0_combout\,
	datac => \ALT_INV_tmp_wait[8][21]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~58\,
	sumout => \Add26~121_sumout\,
	cout => \Add26~122\);

-- Location: FF_X84_Y12_N5
\tmp_wait[8][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~121_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][21]~q\);

-- Location: MLABCELL_X84_Y12_N6
\Add26~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~117_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][22]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~122\ ))
-- \Add26~118\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][22]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal9~6_combout\,
	datab => \ALT_INV_Mux258~0_combout\,
	datac => \ALT_INV_tmp_wait[8][22]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~122\,
	sumout => \Add26~117_sumout\,
	cout => \Add26~118\);

-- Location: FF_X84_Y12_N8
\tmp_wait[8][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~117_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][22]~q\);

-- Location: MLABCELL_X84_Y12_N9
\Add26~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~113_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][23]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~118\ ))
-- \Add26~114\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][23]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal9~6_combout\,
	datab => \ALT_INV_Mux258~0_combout\,
	datac => \ALT_INV_tmp_wait[8][23]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~118\,
	sumout => \Add26~113_sumout\,
	cout => \Add26~114\);

-- Location: FF_X84_Y12_N11
\tmp_wait[8][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~113_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][23]~q\);

-- Location: MLABCELL_X84_Y12_N12
\Add26~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~109_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][24]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~114\ ))
-- \Add26~110\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][24]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal9~6_combout\,
	datab => \ALT_INV_Mux258~0_combout\,
	datac => \ALT_INV_tmp_wait[8][24]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~114\,
	sumout => \Add26~109_sumout\,
	cout => \Add26~110\);

-- Location: FF_X84_Y12_N14
\tmp_wait[8][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~109_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][24]~q\);

-- Location: MLABCELL_X84_Y12_N15
\Add26~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~105_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][25]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~110\ ))
-- \Add26~106\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][25]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal9~6_combout\,
	datab => \ALT_INV_Mux258~0_combout\,
	datac => \ALT_INV_tmp_wait[8][25]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~110\,
	sumout => \Add26~105_sumout\,
	cout => \Add26~106\);

-- Location: FF_X84_Y12_N17
\tmp_wait[8][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~105_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][25]~q\);

-- Location: MLABCELL_X84_Y12_N18
\Add26~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~101_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][26]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~106\ ))
-- \Add26~102\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][26]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal9~6_combout\,
	datab => \ALT_INV_Mux258~0_combout\,
	datac => \ALT_INV_tmp_wait[8][26]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~106\,
	sumout => \Add26~101_sumout\,
	cout => \Add26~102\);

-- Location: FF_X84_Y12_N20
\tmp_wait[8][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~101_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][26]~q\);

-- Location: MLABCELL_X84_Y12_N21
\Add26~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~97_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][27]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~102\ ))
-- \Add26~98\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][27]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal9~6_combout\,
	datab => \ALT_INV_Mux258~0_combout\,
	datac => \ALT_INV_tmp_wait[8][27]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~102\,
	sumout => \Add26~97_sumout\,
	cout => \Add26~98\);

-- Location: FF_X84_Y12_N23
\tmp_wait[8][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~97_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][27]~q\);

-- Location: MLABCELL_X84_Y12_N24
\Add26~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~93_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][28]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~98\ ))
-- \Add26~94\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][28]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal9~6_combout\,
	datab => \ALT_INV_Mux258~0_combout\,
	datac => \ALT_INV_tmp_wait[8][28]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~98\,
	sumout => \Add26~93_sumout\,
	cout => \Add26~94\);

-- Location: FF_X84_Y12_N26
\tmp_wait[8][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~93_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][28]~q\);

-- Location: MLABCELL_X84_Y12_N27
\Add26~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~89_sumout\ = SUM(( (!\Equal9~6_combout\ & (((\tmp_wait[8][29]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~94\ ))
-- \Add26~90\ = CARRY(( (!\Equal9~6_combout\ & (((\tmp_wait[8][29]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add26~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal9~6_combout\,
	datab => \ALT_INV_Mux258~0_combout\,
	datac => \ALT_INV_tmp_wait[8][29]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~94\,
	sumout => \Add26~89_sumout\,
	cout => \Add26~90\);

-- Location: FF_X84_Y12_N29
\tmp_wait[8][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~89_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][29]~q\);

-- Location: MLABCELL_X84_Y12_N30
\Add26~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~85_sumout\ = SUM(( VCC ) + ( (!\Equal9~6_combout\ & (((\tmp_wait[8][30]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( \Add26~90\ ))
-- \Add26~86\ = CARRY(( VCC ) + ( (!\Equal9~6_combout\ & (((\tmp_wait[8][30]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( \Add26~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101100011111010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal9~6_combout\,
	datab => \ALT_INV_Mux258~0_combout\,
	datac => \ALT_INV_tmp_wait[8][30]~q\,
	dataf => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~90\,
	sumout => \Add26~85_sumout\,
	cout => \Add26~86\);

-- Location: FF_X84_Y12_N32
\tmp_wait[8][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~85_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][30]~q\);

-- Location: MLABCELL_X84_Y12_N33
\Add26~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add26~81_sumout\ = SUM(( VCC ) + ( (!\Equal9~6_combout\ & (((\tmp_wait[8][31]~q\)))) # (\Equal9~6_combout\ & (!\Mux258~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( \Add26~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101100011111010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal9~6_combout\,
	datab => \ALT_INV_Mux258~0_combout\,
	datac => \ALT_INV_tmp_wait[8][31]~q\,
	dataf => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add26~86\,
	sumout => \Add26~81_sumout\);

-- Location: FF_X84_Y12_N35
\tmp_wait[8][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add26~81_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[8][31]~q\);

-- Location: MLABCELL_X84_Y12_N48
\Equal9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal9~4_combout\ = ( !\tmp_wait[8][27]~q\ & ( !\tmp_wait[0][0]~q\ & ( (!\tmp_wait[8][28]~q\ & (!\tmp_wait[8][29]~q\ & (!\tmp_wait[8][31]~q\ & !\tmp_wait[8][30]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[8][28]~q\,
	datab => \ALT_INV_tmp_wait[8][29]~q\,
	datac => \ALT_INV_tmp_wait[8][31]~q\,
	datad => \ALT_INV_tmp_wait[8][30]~q\,
	datae => \ALT_INV_tmp_wait[8][27]~q\,
	dataf => \ALT_INV_tmp_wait[0][0]~q\,
	combout => \Equal9~4_combout\);

-- Location: LABCELL_X85_Y13_N3
\Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = ( !\tmp_wait[8][1]~q\ & ( !\tmp_wait[8][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_tmp_wait[8][1]~q\,
	dataf => \ALT_INV_tmp_wait[8][2]~q\,
	combout => \Equal9~0_combout\);

-- Location: MLABCELL_X84_Y12_N42
\Equal9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal9~5_combout\ = ( !\tmp_wait[8][24]~q\ & ( !\tmp_wait[8][23]~q\ & ( (!\tmp_wait[8][21]~q\ & (!\tmp_wait[8][22]~q\ & (!\tmp_wait[8][26]~q\ & !\tmp_wait[8][25]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[8][21]~q\,
	datab => \ALT_INV_tmp_wait[8][22]~q\,
	datac => \ALT_INV_tmp_wait[8][26]~q\,
	datad => \ALT_INV_tmp_wait[8][25]~q\,
	datae => \ALT_INV_tmp_wait[8][24]~q\,
	dataf => \ALT_INV_tmp_wait[8][23]~q\,
	combout => \Equal9~5_combout\);

-- Location: LABCELL_X83_Y12_N42
\Equal9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = ( !\tmp_wait[8][8]~q\ & ( !\tmp_wait[8][7]~q\ & ( (!\tmp_wait[8][4]~q\ & (!\tmp_wait[8][6]~q\ & (!\tmp_wait[8][3]~q\ & !\tmp_wait[8][5]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[8][4]~q\,
	datab => \ALT_INV_tmp_wait[8][6]~q\,
	datac => \ALT_INV_tmp_wait[8][3]~q\,
	datad => \ALT_INV_tmp_wait[8][5]~q\,
	datae => \ALT_INV_tmp_wait[8][8]~q\,
	dataf => \ALT_INV_tmp_wait[8][7]~q\,
	combout => \Equal9~1_combout\);

-- Location: LABCELL_X85_Y13_N39
\Equal9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal9~2_combout\ = ( !\tmp_wait[8][9]~q\ & ( !\tmp_wait[8][11]~q\ & ( (!\tmp_wait[8][10]~q\ & (!\tmp_wait[8][14]~q\ & (!\tmp_wait[8][13]~q\ & !\tmp_wait[8][12]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[8][10]~q\,
	datab => \ALT_INV_tmp_wait[8][14]~q\,
	datac => \ALT_INV_tmp_wait[8][13]~q\,
	datad => \ALT_INV_tmp_wait[8][12]~q\,
	datae => \ALT_INV_tmp_wait[8][9]~q\,
	dataf => \ALT_INV_tmp_wait[8][11]~q\,
	combout => \Equal9~2_combout\);

-- Location: MLABCELL_X84_Y12_N54
\Equal9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal9~6_combout\ = ( \Equal9~1_combout\ & ( \Equal9~2_combout\ & ( (\Equal9~3_combout\ & (\Equal9~4_combout\ & (\Equal9~0_combout\ & \Equal9~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal9~3_combout\,
	datab => \ALT_INV_Equal9~4_combout\,
	datac => \ALT_INV_Equal9~0_combout\,
	datad => \ALT_INV_Equal9~5_combout\,
	datae => \ALT_INV_Equal9~1_combout\,
	dataf => \ALT_INV_Equal9~2_combout\,
	combout => \Equal9~6_combout\);

-- Location: MLABCELL_X84_Y16_N12
\index[8][2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \index[8][2]~5_combout\ = ( \Equal9~6_combout\ & ( (\enable~input_o\ & \screen_end~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datac => \ALT_INV_screen_end~input_o\,
	dataf => \ALT_INV_Equal9~6_combout\,
	combout => \index[8][2]~5_combout\);

-- Location: FF_X85_Y14_N32
\index[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add25~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[8][2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[8][0]~q\);

-- Location: LABCELL_X85_Y14_N33
\Add25~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~5_sumout\ = SUM(( \index[8][1]~q\ ) + ( GND ) + ( \Add25~10\ ))
-- \Add25~6\ = CARRY(( \index[8][1]~q\ ) + ( GND ) + ( \Add25~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[8][1]~q\,
	cin => \Add25~10\,
	sumout => \Add25~5_sumout\,
	cout => \Add25~6\);

-- Location: FF_X85_Y14_N35
\index[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add25~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[8][2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[8][1]~q\);

-- Location: LABCELL_X85_Y14_N36
\Add25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add25~1_sumout\ = SUM(( \index[8][2]~q\ ) + ( GND ) + ( \Add25~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[8][2]~q\,
	cin => \Add25~6\,
	sumout => \Add25~1_sumout\);

-- Location: FF_X85_Y14_N38
\index[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add25~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[8][2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[8][2]~q\);

-- Location: LABCELL_X85_Y14_N21
\Mux258~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux258~0_combout\ = ( \index[8][2]~q\ & ( \index[8][1]~q\ ) ) # ( !\index[8][2]~q\ & ( \index[8][1]~q\ & ( !\index[8][0]~q\ ) ) ) # ( \index[8][2]~q\ & ( !\index[8][1]~q\ ) ) # ( !\index[8][2]~q\ & ( !\index[8][1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_index[8][0]~q\,
	datae => \ALT_INV_index[8][2]~q\,
	dataf => \ALT_INV_index[8][1]~q\,
	combout => \Mux258~0_combout\);

-- Location: LABCELL_X85_Y16_N36
\note_length~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~8_combout\ = ( \Equal9~6_combout\ & ( (!\song[0][11][31]~combout\ & !\Mux258~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_Mux258~0_combout\,
	dataf => \ALT_INV_Equal9~6_combout\,
	combout => \note_length~8_combout\);

-- Location: FF_X85_Y16_N37
\note_length[8][2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~8_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sclr => \ALT_INV_enable~input_o\,
	sload => \ALT_INV_screen_end~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[8][2]~reg0_q\);

-- Location: MLABCELL_X84_Y14_N36
\note_length~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~9_combout\ = ( !\Mux258~0_combout\ & ( \song[0][11][5]~combout\ & ( (!\song[0][11][31]~combout\ & (\Equal9~6_combout\ & (\enable~input_o\ & \screen_end~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_song[0][11][31]~combout\,
	datab => \ALT_INV_Equal9~6_combout\,
	datac => \ALT_INV_enable~input_o\,
	datad => \ALT_INV_screen_end~input_o\,
	datae => \ALT_INV_Mux258~0_combout\,
	dataf => \ALT_INV_song[0][11][5]~combout\,
	combout => \note_length~9_combout\);

-- Location: FF_X84_Y14_N40
\note_length[8][5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \note_length~9_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[8][5]~reg0_q\);

-- Location: FF_X84_Y14_N37
\note_length[8][6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~9_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[8][6]~reg0_q\);

-- Location: LABCELL_X88_Y12_N0
\Add22~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~9_sumout\ = SUM(( \index[7][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add22~10\ = CARRY(( \index[7][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[7][0]~q\,
	cin => GND,
	sumout => \Add22~9_sumout\,
	cout => \Add22~10\);

-- Location: LABCELL_X85_Y12_N0
\Add23~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~126_cout\ = CARRY(( \tmp_wait[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait[0][0]~q\,
	cin => GND,
	cout => \Add23~126_cout\);

-- Location: LABCELL_X85_Y12_N3
\Add23~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~5_sumout\ = SUM(( \tmp_wait[7][1]~q\ ) + ( VCC ) + ( \Add23~126_cout\ ))
-- \Add23~6\ = CARRY(( \tmp_wait[7][1]~q\ ) + ( VCC ) + ( \Add23~126_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait[7][1]~q\,
	cin => \Add23~126_cout\,
	sumout => \Add23~5_sumout\,
	cout => \Add23~6\);

-- Location: FF_X85_Y12_N5
\tmp_wait[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][1]~q\);

-- Location: LABCELL_X85_Y12_N6
\Add23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~1_sumout\ = SUM(( (\tmp_wait[7][2]~q\) # (\Equal8~6_combout\) ) + ( VCC ) + ( \Add23~6\ ))
-- \Add23~2\ = CARRY(( (\tmp_wait[7][2]~q\) # (\Equal8~6_combout\) ) + ( VCC ) + ( \Add23~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal8~6_combout\,
	datad => \ALT_INV_tmp_wait[7][2]~q\,
	cin => \Add23~6\,
	sumout => \Add23~1_sumout\,
	cout => \Add23~2\);

-- Location: LABCELL_X85_Y13_N54
\tmp_wait[7][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait[7][2]~feeder_combout\ = ( \Add23~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add23~1_sumout\,
	combout => \tmp_wait[7][2]~feeder_combout\);

-- Location: FF_X85_Y13_N56
\tmp_wait[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \tmp_wait[7][2]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][2]~q\);

-- Location: LABCELL_X85_Y12_N9
\Add23~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~29_sumout\ = SUM(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][3]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~2\ ))
-- \Add23~30\ = CARRY(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][3]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_Equal8~6_combout\,
	dataf => \ALT_INV_tmp_wait[7][3]~q\,
	cin => \Add23~2\,
	sumout => \Add23~29_sumout\,
	cout => \Add23~30\);

-- Location: FF_X85_Y12_N11
\tmp_wait[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~29_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][3]~q\);

-- Location: LABCELL_X85_Y12_N12
\Add23~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~25_sumout\ = SUM(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][4]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~30\ ))
-- \Add23~26\ = CARRY(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][4]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_Equal8~6_combout\,
	dataf => \ALT_INV_tmp_wait[7][4]~q\,
	cin => \Add23~30\,
	sumout => \Add23~25_sumout\,
	cout => \Add23~26\);

-- Location: FF_X85_Y12_N14
\tmp_wait[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~25_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][4]~q\);

-- Location: LABCELL_X85_Y12_N15
\Add23~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~21_sumout\ = SUM(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][5]~q\))) # (\Equal8~6_combout\ & (!\Mux226~0_combout\)) ) + ( \Add23~26\ ))
-- \Add23~22\ = CARRY(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][5]~q\))) # (\Equal8~6_combout\ & (!\Mux226~0_combout\)) ) + ( \Add23~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100110000001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_Equal8~6_combout\,
	dataf => \ALT_INV_tmp_wait[7][5]~q\,
	cin => \Add23~26\,
	sumout => \Add23~21_sumout\,
	cout => \Add23~22\);

-- Location: FF_X85_Y12_N17
\tmp_wait[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~21_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][5]~q\);

-- Location: LABCELL_X85_Y12_N18
\Add23~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~17_sumout\ = SUM(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][6]~q\))) # (\Equal8~6_combout\ & (!\Mux226~0_combout\)) ) + ( \Add23~22\ ))
-- \Add23~18\ = CARRY(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][6]~q\))) # (\Equal8~6_combout\ & (!\Mux226~0_combout\)) ) + ( \Add23~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100110000001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_Equal8~6_combout\,
	dataf => \ALT_INV_tmp_wait[7][6]~q\,
	cin => \Add23~22\,
	sumout => \Add23~17_sumout\,
	cout => \Add23~18\);

-- Location: FF_X85_Y12_N20
\tmp_wait[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~17_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][6]~q\);

-- Location: LABCELL_X85_Y12_N21
\Add23~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~13_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][7]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~18\ ))
-- \Add23~14\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][7]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~6_combout\,
	datac => \ALT_INV_Mux226~0_combout\,
	datad => \ALT_INV_tmp_wait[7][7]~q\,
	cin => \Add23~18\,
	sumout => \Add23~13_sumout\,
	cout => \Add23~14\);

-- Location: FF_X85_Y12_N23
\tmp_wait[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~13_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][7]~q\);

-- Location: LABCELL_X85_Y12_N24
\Add23~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~9_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][8]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~14\ ))
-- \Add23~10\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][8]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~6_combout\,
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_tmp_wait[7][8]~q\,
	cin => \Add23~14\,
	sumout => \Add23~9_sumout\,
	cout => \Add23~10\);

-- Location: FF_X85_Y12_N26
\tmp_wait[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][8]~q\);

-- Location: LABCELL_X85_Y12_N27
\Add23~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~53_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][9]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~10\ ))
-- \Add23~54\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][9]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~6_combout\,
	datac => \ALT_INV_Mux226~0_combout\,
	datad => \ALT_INV_tmp_wait[7][9]~q\,
	cin => \Add23~10\,
	sumout => \Add23~53_sumout\,
	cout => \Add23~54\);

-- Location: FF_X85_Y12_N29
\tmp_wait[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~53_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][9]~q\);

-- Location: LABCELL_X85_Y12_N30
\Add23~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~49_sumout\ = SUM(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][10]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~54\ ))
-- \Add23~50\ = CARRY(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][10]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_Equal8~6_combout\,
	dataf => \ALT_INV_tmp_wait[7][10]~q\,
	cin => \Add23~54\,
	sumout => \Add23~49_sumout\,
	cout => \Add23~50\);

-- Location: FF_X85_Y12_N32
\tmp_wait[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~49_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][10]~q\);

-- Location: LABCELL_X85_Y12_N33
\Add23~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~45_sumout\ = SUM(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][11]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~50\ ))
-- \Add23~46\ = CARRY(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][11]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_Equal8~6_combout\,
	dataf => \ALT_INV_tmp_wait[7][11]~q\,
	cin => \Add23~50\,
	sumout => \Add23~45_sumout\,
	cout => \Add23~46\);

-- Location: FF_X85_Y12_N35
\tmp_wait[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~45_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][11]~q\);

-- Location: LABCELL_X85_Y12_N36
\Add23~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~41_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][12]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~46\ ))
-- \Add23~42\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][12]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~6_combout\,
	datab => \ALT_INV_Mux226~0_combout\,
	datad => \ALT_INV_tmp_wait[7][12]~q\,
	cin => \Add23~46\,
	sumout => \Add23~41_sumout\,
	cout => \Add23~42\);

-- Location: FF_X85_Y12_N38
\tmp_wait[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~41_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][12]~q\);

-- Location: LABCELL_X85_Y12_N39
\Add23~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~37_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][13]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~42\ ))
-- \Add23~38\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][13]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~6_combout\,
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_tmp_wait[7][13]~q\,
	cin => \Add23~42\,
	sumout => \Add23~37_sumout\,
	cout => \Add23~38\);

-- Location: FF_X85_Y12_N41
\tmp_wait[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~37_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][13]~q\);

-- Location: LABCELL_X85_Y12_N42
\Add23~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~33_sumout\ = SUM(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][14]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~38\ ))
-- \Add23~34\ = CARRY(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][14]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_Equal8~6_combout\,
	dataf => \ALT_INV_tmp_wait[7][14]~q\,
	cin => \Add23~38\,
	sumout => \Add23~33_sumout\,
	cout => \Add23~34\);

-- Location: FF_X85_Y12_N44
\tmp_wait[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~33_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][14]~q\);

-- Location: LABCELL_X85_Y12_N45
\Add23~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~77_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][15]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~34\ ))
-- \Add23~78\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][15]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_Equal8~6_combout\,
	datad => \ALT_INV_tmp_wait[7][15]~q\,
	cin => \Add23~34\,
	sumout => \Add23~77_sumout\,
	cout => \Add23~78\);

-- Location: FF_X85_Y12_N47
\tmp_wait[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~77_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][15]~q\);

-- Location: LABCELL_X85_Y12_N48
\Add23~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~73_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][16]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~78\ ))
-- \Add23~74\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][16]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~6_combout\,
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_tmp_wait[7][16]~q\,
	cin => \Add23~78\,
	sumout => \Add23~73_sumout\,
	cout => \Add23~74\);

-- Location: FF_X85_Y12_N50
\tmp_wait[7][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~73_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][16]~q\);

-- Location: LABCELL_X85_Y12_N51
\Add23~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~69_sumout\ = SUM(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][17]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~74\ ))
-- \Add23~70\ = CARRY(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][17]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_Equal8~6_combout\,
	dataf => \ALT_INV_tmp_wait[7][17]~q\,
	cin => \Add23~74\,
	sumout => \Add23~69_sumout\,
	cout => \Add23~70\);

-- Location: FF_X85_Y12_N53
\tmp_wait[7][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~69_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][17]~q\);

-- Location: LABCELL_X85_Y12_N54
\Add23~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~65_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][18]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~70\ ))
-- \Add23~66\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][18]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_Equal8~6_combout\,
	datad => \ALT_INV_tmp_wait[7][18]~q\,
	cin => \Add23~70\,
	sumout => \Add23~65_sumout\,
	cout => \Add23~66\);

-- Location: FF_X85_Y12_N56
\tmp_wait[7][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~65_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][18]~q\);

-- Location: LABCELL_X85_Y12_N57
\Add23~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~61_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][19]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~66\ ))
-- \Add23~62\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][19]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_Equal8~6_combout\,
	datad => \ALT_INV_tmp_wait[7][19]~q\,
	cin => \Add23~66\,
	sumout => \Add23~61_sumout\,
	cout => \Add23~62\);

-- Location: FF_X85_Y12_N59
\tmp_wait[7][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~61_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][19]~q\);

-- Location: LABCELL_X85_Y11_N0
\Add23~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~57_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][20]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~62\ ))
-- \Add23~58\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][20]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_Equal8~6_combout\,
	datad => \ALT_INV_tmp_wait[7][20]~q\,
	cin => \Add23~62\,
	sumout => \Add23~57_sumout\,
	cout => \Add23~58\);

-- Location: FF_X85_Y11_N2
\tmp_wait[7][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~57_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][20]~q\);

-- Location: LABCELL_X85_Y11_N3
\Add23~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~121_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][21]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~58\ ))
-- \Add23~122\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][21]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~6_combout\,
	datab => \ALT_INV_Mux226~0_combout\,
	datad => \ALT_INV_tmp_wait[7][21]~q\,
	cin => \Add23~58\,
	sumout => \Add23~121_sumout\,
	cout => \Add23~122\);

-- Location: FF_X85_Y11_N5
\tmp_wait[7][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~121_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][21]~q\);

-- Location: LABCELL_X85_Y11_N6
\Add23~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~117_sumout\ = SUM(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][22]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~122\ ))
-- \Add23~118\ = CARRY(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][22]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_Equal8~6_combout\,
	dataf => \ALT_INV_tmp_wait[7][22]~q\,
	cin => \Add23~122\,
	sumout => \Add23~117_sumout\,
	cout => \Add23~118\);

-- Location: FF_X85_Y11_N8
\tmp_wait[7][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~117_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][22]~q\);

-- Location: LABCELL_X85_Y11_N9
\Add23~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~113_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][23]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~118\ ))
-- \Add23~114\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][23]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~6_combout\,
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_tmp_wait[7][23]~q\,
	cin => \Add23~118\,
	sumout => \Add23~113_sumout\,
	cout => \Add23~114\);

-- Location: FF_X85_Y11_N11
\tmp_wait[7][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~113_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][23]~q\);

-- Location: LABCELL_X85_Y11_N12
\Add23~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~109_sumout\ = SUM(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][24]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~114\ ))
-- \Add23~110\ = CARRY(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][24]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_Equal8~6_combout\,
	dataf => \ALT_INV_tmp_wait[7][24]~q\,
	cin => \Add23~114\,
	sumout => \Add23~109_sumout\,
	cout => \Add23~110\);

-- Location: FF_X85_Y11_N14
\tmp_wait[7][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~109_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][24]~q\);

-- Location: LABCELL_X85_Y11_N15
\Add23~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~105_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][25]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~110\ ))
-- \Add23~106\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][25]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~6_combout\,
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_tmp_wait[7][25]~q\,
	cin => \Add23~110\,
	sumout => \Add23~105_sumout\,
	cout => \Add23~106\);

-- Location: FF_X85_Y11_N17
\tmp_wait[7][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~105_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][25]~q\);

-- Location: LABCELL_X85_Y11_N18
\Add23~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~101_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][26]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~106\ ))
-- \Add23~102\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][26]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~6_combout\,
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_tmp_wait[7][26]~q\,
	cin => \Add23~106\,
	sumout => \Add23~101_sumout\,
	cout => \Add23~102\);

-- Location: FF_X85_Y11_N20
\tmp_wait[7][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~101_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][26]~q\);

-- Location: LABCELL_X85_Y11_N21
\Add23~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~97_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][27]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~102\ ))
-- \Add23~98\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][27]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~6_combout\,
	datab => \ALT_INV_Mux226~0_combout\,
	datad => \ALT_INV_tmp_wait[7][27]~q\,
	cin => \Add23~102\,
	sumout => \Add23~97_sumout\,
	cout => \Add23~98\);

-- Location: FF_X85_Y11_N23
\tmp_wait[7][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~97_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][27]~q\);

-- Location: LABCELL_X85_Y11_N24
\Add23~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~93_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][28]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~98\ ))
-- \Add23~94\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][28]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~6_combout\,
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_tmp_wait[7][28]~q\,
	cin => \Add23~98\,
	sumout => \Add23~93_sumout\,
	cout => \Add23~94\);

-- Location: FF_X85_Y11_N26
\tmp_wait[7][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~93_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][28]~q\);

-- Location: LABCELL_X85_Y11_N27
\Add23~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~89_sumout\ = SUM(( (!\Equal8~6_combout\ & ((\tmp_wait[7][29]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~94\ ))
-- \Add23~90\ = CARRY(( (!\Equal8~6_combout\ & ((\tmp_wait[7][29]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( VCC ) + ( \Add23~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~6_combout\,
	datab => \ALT_INV_Mux226~0_combout\,
	datad => \ALT_INV_tmp_wait[7][29]~q\,
	cin => \Add23~94\,
	sumout => \Add23~89_sumout\,
	cout => \Add23~90\);

-- Location: FF_X85_Y11_N29
\tmp_wait[7][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~89_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][29]~q\);

-- Location: LABCELL_X85_Y11_N30
\Add23~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~85_sumout\ = SUM(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][30]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~90\ ))
-- \Add23~86\ = CARRY(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][30]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux226~0_combout\,
	datac => \ALT_INV_Equal8~6_combout\,
	dataf => \ALT_INV_tmp_wait[7][30]~q\,
	cin => \Add23~90\,
	sumout => \Add23~85_sumout\,
	cout => \Add23~86\);

-- Location: FF_X85_Y11_N32
\tmp_wait[7][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~85_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][30]~q\);

-- Location: LABCELL_X85_Y11_N33
\Add23~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add23~81_sumout\ = SUM(( VCC ) + ( (!\Equal8~6_combout\ & ((\tmp_wait[7][31]~q\))) # (\Equal8~6_combout\ & (\Mux226~0_combout\)) ) + ( \Add23~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~6_combout\,
	datab => \ALT_INV_Mux226~0_combout\,
	dataf => \ALT_INV_tmp_wait[7][31]~q\,
	cin => \Add23~86\,
	sumout => \Add23~81_sumout\);

-- Location: FF_X85_Y11_N35
\tmp_wait[7][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add23~81_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[7][31]~q\);

-- Location: LABCELL_X85_Y11_N36
\Equal8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal8~4_combout\ = ( !\tmp_wait[7][29]~q\ & ( !\tmp_wait[0][0]~q\ & ( (!\tmp_wait[7][31]~q\ & (!\tmp_wait[7][27]~q\ & (!\tmp_wait[7][28]~q\ & !\tmp_wait[7][30]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[7][31]~q\,
	datab => \ALT_INV_tmp_wait[7][27]~q\,
	datac => \ALT_INV_tmp_wait[7][28]~q\,
	datad => \ALT_INV_tmp_wait[7][30]~q\,
	datae => \ALT_INV_tmp_wait[7][29]~q\,
	dataf => \ALT_INV_tmp_wait[0][0]~q\,
	combout => \Equal8~4_combout\);

-- Location: LABCELL_X85_Y11_N42
\Equal8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal8~2_combout\ = ( !\tmp_wait[7][11]~q\ & ( !\tmp_wait[7][9]~q\ & ( (!\tmp_wait[7][10]~q\ & (!\tmp_wait[7][13]~q\ & (!\tmp_wait[7][12]~q\ & !\tmp_wait[7][14]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[7][10]~q\,
	datab => \ALT_INV_tmp_wait[7][13]~q\,
	datac => \ALT_INV_tmp_wait[7][12]~q\,
	datad => \ALT_INV_tmp_wait[7][14]~q\,
	datae => \ALT_INV_tmp_wait[7][11]~q\,
	dataf => \ALT_INV_tmp_wait[7][9]~q\,
	combout => \Equal8~2_combout\);

-- Location: LABCELL_X85_Y13_N12
\Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = ( !\tmp_wait[7][2]~q\ & ( !\tmp_wait[7][1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_tmp_wait[7][2]~q\,
	dataf => \ALT_INV_tmp_wait[7][1]~q\,
	combout => \Equal8~0_combout\);

-- Location: LABCELL_X85_Y11_N54
\Equal8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal8~3_combout\ = ( !\tmp_wait[7][19]~q\ & ( !\tmp_wait[7][16]~q\ & ( (!\tmp_wait[7][20]~q\ & (!\tmp_wait[7][18]~q\ & (!\tmp_wait[7][15]~q\ & !\tmp_wait[7][17]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[7][20]~q\,
	datab => \ALT_INV_tmp_wait[7][18]~q\,
	datac => \ALT_INV_tmp_wait[7][15]~q\,
	datad => \ALT_INV_tmp_wait[7][17]~q\,
	datae => \ALT_INV_tmp_wait[7][19]~q\,
	dataf => \ALT_INV_tmp_wait[7][16]~q\,
	combout => \Equal8~3_combout\);

-- Location: MLABCELL_X87_Y11_N42
\Equal8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal8~5_combout\ = ( !\tmp_wait[7][24]~q\ & ( !\tmp_wait[7][22]~q\ & ( (!\tmp_wait[7][25]~q\ & (!\tmp_wait[7][26]~q\ & (!\tmp_wait[7][21]~q\ & !\tmp_wait[7][23]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[7][25]~q\,
	datab => \ALT_INV_tmp_wait[7][26]~q\,
	datac => \ALT_INV_tmp_wait[7][21]~q\,
	datad => \ALT_INV_tmp_wait[7][23]~q\,
	datae => \ALT_INV_tmp_wait[7][24]~q\,
	dataf => \ALT_INV_tmp_wait[7][22]~q\,
	combout => \Equal8~5_combout\);

-- Location: LABCELL_X85_Y10_N15
\Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = ( !\tmp_wait[7][5]~q\ & ( !\tmp_wait[7][7]~q\ & ( (!\tmp_wait[7][3]~q\ & (!\tmp_wait[7][6]~q\ & (!\tmp_wait[7][4]~q\ & !\tmp_wait[7][8]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[7][3]~q\,
	datab => \ALT_INV_tmp_wait[7][6]~q\,
	datac => \ALT_INV_tmp_wait[7][4]~q\,
	datad => \ALT_INV_tmp_wait[7][8]~q\,
	datae => \ALT_INV_tmp_wait[7][5]~q\,
	dataf => \ALT_INV_tmp_wait[7][7]~q\,
	combout => \Equal8~1_combout\);

-- Location: LABCELL_X85_Y11_N48
\Equal8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal8~6_combout\ = ( \Equal8~5_combout\ & ( \Equal8~1_combout\ & ( (\Equal8~4_combout\ & (\Equal8~2_combout\ & (\Equal8~0_combout\ & \Equal8~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~4_combout\,
	datab => \ALT_INV_Equal8~2_combout\,
	datac => \ALT_INV_Equal8~0_combout\,
	datad => \ALT_INV_Equal8~3_combout\,
	datae => \ALT_INV_Equal8~5_combout\,
	dataf => \ALT_INV_Equal8~1_combout\,
	combout => \Equal8~6_combout\);

-- Location: LABCELL_X88_Y12_N51
\index[7][2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \index[7][2]~6_combout\ = ( \Equal8~6_combout\ & ( (\enable~input_o\ & \screen_end~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datad => \ALT_INV_screen_end~input_o\,
	dataf => \ALT_INV_Equal8~6_combout\,
	combout => \index[7][2]~6_combout\);

-- Location: FF_X88_Y12_N2
\index[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add22~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[7][0]~q\);

-- Location: LABCELL_X88_Y12_N3
\Add22~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~5_sumout\ = SUM(( \index[7][1]~q\ ) + ( GND ) + ( \Add22~10\ ))
-- \Add22~6\ = CARRY(( \index[7][1]~q\ ) + ( GND ) + ( \Add22~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[7][1]~q\,
	cin => \Add22~10\,
	sumout => \Add22~5_sumout\,
	cout => \Add22~6\);

-- Location: FF_X88_Y12_N5
\index[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add22~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[7][1]~q\);

-- Location: LABCELL_X88_Y12_N6
\Add22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add22~1_sumout\ = SUM(( \index[7][2]~q\ ) + ( GND ) + ( \Add22~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[7][2]~q\,
	cin => \Add22~6\,
	sumout => \Add22~1_sumout\);

-- Location: FF_X88_Y12_N8
\index[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add22~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[7][2]~q\);

-- Location: LABCELL_X88_Y12_N48
\Mux226~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux226~0_combout\ = ( \index[7][2]~q\ & ( (!\index[7][0]~q\ & !\index[7][1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_index[7][0]~q\,
	datad => \ALT_INV_index[7][1]~q\,
	dataf => \ALT_INV_index[7][2]~q\,
	combout => \Mux226~0_combout\);

-- Location: LABCELL_X85_Y16_N45
\note_length~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~10_combout\ = ( \Equal8~6_combout\ & ( \Mux226~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux226~0_combout\,
	dataf => \ALT_INV_Equal8~6_combout\,
	combout => \note_length~10_combout\);

-- Location: FF_X85_Y16_N46
\note_length[7][2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~10_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sclr => \ALT_INV_enable~input_o\,
	sload => \ALT_INV_screen_end~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[7][2]~reg0_q\);

-- Location: LABCELL_X88_Y14_N48
\note_length~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~11_combout\ = ( \Mux226~0_combout\ & ( \Equal8~6_combout\ & ( (\screen_end~input_o\ & \enable~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_screen_end~input_o\,
	datac => \ALT_INV_enable~input_o\,
	datae => \ALT_INV_Mux226~0_combout\,
	dataf => \ALT_INV_Equal8~6_combout\,
	combout => \note_length~11_combout\);

-- Location: MLABCELL_X84_Y14_N42
\note_length[7][5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length[7][5]~reg0feeder_combout\ = ( \note_length~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_note_length~11_combout\,
	combout => \note_length[7][5]~reg0feeder_combout\);

-- Location: FF_X84_Y14_N43
\note_length[7][5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length[7][5]~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[7][5]~reg0_q\);

-- Location: FF_X88_Y14_N49
\note_length[7][6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~11_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[7][6]~reg0_q\);

-- Location: MLABCELL_X84_Y16_N0
\Add19~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~9_sumout\ = SUM(( \index[6][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add19~10\ = CARRY(( \index[6][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[6][0]~q\,
	cin => GND,
	sumout => \Add19~9_sumout\,
	cout => \Add19~10\);

-- Location: MLABCELL_X82_Y15_N0
\Add20~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~126_cout\ = CARRY(( \tmp_wait[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tmp_wait[0][0]~q\,
	cin => GND,
	cout => \Add20~126_cout\);

-- Location: MLABCELL_X82_Y15_N3
\Add20~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~5_sumout\ = SUM(( \tmp_wait[6][1]~q\ ) + ( VCC ) + ( \Add20~126_cout\ ))
-- \Add20~6\ = CARRY(( \tmp_wait[6][1]~q\ ) + ( VCC ) + ( \Add20~126_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait[6][1]~q\,
	cin => \Add20~126_cout\,
	sumout => \Add20~5_sumout\,
	cout => \Add20~6\);

-- Location: FF_X82_Y15_N5
\tmp_wait[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][1]~q\);

-- Location: MLABCELL_X82_Y15_N6
\Add20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~1_sumout\ = SUM(( (\tmp_wait[6][2]~q\) # (\Equal7~6_combout\) ) + ( VCC ) + ( \Add20~6\ ))
-- \Add20~2\ = CARRY(( (\tmp_wait[6][2]~q\) # (\Equal7~6_combout\) ) + ( VCC ) + ( \Add20~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][2]~q\,
	cin => \Add20~6\,
	sumout => \Add20~1_sumout\,
	cout => \Add20~2\);

-- Location: MLABCELL_X82_Y16_N48
\tmp_wait[6][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \tmp_wait[6][2]~feeder_combout\ = ( \Add20~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add20~1_sumout\,
	combout => \tmp_wait[6][2]~feeder_combout\);

-- Location: FF_X82_Y16_N50
\tmp_wait[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \tmp_wait[6][2]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][2]~q\);

-- Location: MLABCELL_X82_Y15_N9
\Add20~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~29_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][3]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~2\ ))
-- \Add20~30\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][3]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][3]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~2\,
	sumout => \Add20~29_sumout\,
	cout => \Add20~30\);

-- Location: FF_X82_Y15_N11
\tmp_wait[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~29_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][3]~q\);

-- Location: MLABCELL_X82_Y15_N12
\Add20~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~25_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][4]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~30\ ))
-- \Add20~26\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][4]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][4]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~30\,
	sumout => \Add20~25_sumout\,
	cout => \Add20~26\);

-- Location: FF_X82_Y15_N14
\tmp_wait[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~25_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][4]~q\);

-- Location: MLABCELL_X82_Y15_N15
\Add20~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~21_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][5]~q\)))) # (\Equal7~6_combout\ & (((!\song[0][11][5]~combout\)) # (\Mux194~0_combout\))) ) + ( VCC ) + ( \Add20~26\ ))
-- \Add20~22\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][5]~q\)))) # (\Equal7~6_combout\ & (((!\song[0][11][5]~combout\)) # (\Mux194~0_combout\))) ) + ( VCC ) + ( \Add20~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][5]~q\,
	datad => \ALT_INV_song[0][11][5]~combout\,
	cin => \Add20~26\,
	sumout => \Add20~21_sumout\,
	cout => \Add20~22\);

-- Location: FF_X82_Y15_N17
\tmp_wait[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~21_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][5]~q\);

-- Location: MLABCELL_X82_Y15_N18
\Add20~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~17_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][6]~q\)))) # (\Equal7~6_combout\ & (((!\song[0][11][5]~combout\)) # (\Mux194~0_combout\))) ) + ( VCC ) + ( \Add20~22\ ))
-- \Add20~18\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][6]~q\)))) # (\Equal7~6_combout\ & (((!\song[0][11][5]~combout\)) # (\Mux194~0_combout\))) ) + ( VCC ) + ( \Add20~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][6]~q\,
	datad => \ALT_INV_song[0][11][5]~combout\,
	cin => \Add20~22\,
	sumout => \Add20~17_sumout\,
	cout => \Add20~18\);

-- Location: FF_X82_Y15_N20
\tmp_wait[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~17_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][6]~q\);

-- Location: MLABCELL_X82_Y15_N21
\Add20~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~13_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][7]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~18\ ))
-- \Add20~14\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][7]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][7]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~18\,
	sumout => \Add20~13_sumout\,
	cout => \Add20~14\);

-- Location: FF_X82_Y15_N23
\tmp_wait[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~13_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][7]~q\);

-- Location: MLABCELL_X82_Y15_N24
\Add20~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~9_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][8]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~14\ ))
-- \Add20~10\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][8]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][8]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~14\,
	sumout => \Add20~9_sumout\,
	cout => \Add20~10\);

-- Location: FF_X82_Y15_N26
\tmp_wait[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][8]~q\);

-- Location: MLABCELL_X82_Y15_N27
\Add20~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~53_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][9]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~10\ ))
-- \Add20~54\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][9]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][9]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~10\,
	sumout => \Add20~53_sumout\,
	cout => \Add20~54\);

-- Location: FF_X82_Y15_N29
\tmp_wait[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~53_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][9]~q\);

-- Location: MLABCELL_X82_Y15_N30
\Add20~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~49_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][10]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~54\ ))
-- \Add20~50\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][10]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][10]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~54\,
	sumout => \Add20~49_sumout\,
	cout => \Add20~50\);

-- Location: FF_X82_Y15_N32
\tmp_wait[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~49_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][10]~q\);

-- Location: MLABCELL_X82_Y15_N33
\Add20~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~45_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][11]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~50\ ))
-- \Add20~46\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][11]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][11]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~50\,
	sumout => \Add20~45_sumout\,
	cout => \Add20~46\);

-- Location: FF_X82_Y15_N35
\tmp_wait[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~45_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][11]~q\);

-- Location: MLABCELL_X82_Y15_N36
\Add20~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~41_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][12]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~46\ ))
-- \Add20~42\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][12]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][12]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~46\,
	sumout => \Add20~41_sumout\,
	cout => \Add20~42\);

-- Location: FF_X82_Y15_N38
\tmp_wait[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~41_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][12]~q\);

-- Location: MLABCELL_X82_Y15_N39
\Add20~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~37_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][13]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~42\ ))
-- \Add20~38\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][13]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][13]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~42\,
	sumout => \Add20~37_sumout\,
	cout => \Add20~38\);

-- Location: FF_X82_Y15_N41
\tmp_wait[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~37_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][13]~q\);

-- Location: MLABCELL_X82_Y15_N42
\Add20~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~33_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][14]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~38\ ))
-- \Add20~34\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][14]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][14]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~38\,
	sumout => \Add20~33_sumout\,
	cout => \Add20~34\);

-- Location: FF_X82_Y15_N44
\tmp_wait[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~33_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][14]~q\);

-- Location: MLABCELL_X82_Y15_N45
\Add20~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~77_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][15]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~34\ ))
-- \Add20~78\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][15]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][15]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~34\,
	sumout => \Add20~77_sumout\,
	cout => \Add20~78\);

-- Location: FF_X82_Y15_N47
\tmp_wait[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~77_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][15]~q\);

-- Location: MLABCELL_X82_Y15_N48
\Add20~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~73_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][16]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~78\ ))
-- \Add20~74\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][16]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][16]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~78\,
	sumout => \Add20~73_sumout\,
	cout => \Add20~74\);

-- Location: FF_X82_Y15_N50
\tmp_wait[6][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~73_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][16]~q\);

-- Location: MLABCELL_X82_Y15_N51
\Add20~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~69_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][17]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~74\ ))
-- \Add20~70\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][17]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][17]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~74\,
	sumout => \Add20~69_sumout\,
	cout => \Add20~70\);

-- Location: FF_X82_Y15_N53
\tmp_wait[6][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~69_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][17]~q\);

-- Location: MLABCELL_X82_Y15_N54
\Add20~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~65_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][18]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~70\ ))
-- \Add20~66\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][18]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][18]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~70\,
	sumout => \Add20~65_sumout\,
	cout => \Add20~66\);

-- Location: FF_X82_Y15_N56
\tmp_wait[6][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~65_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][18]~q\);

-- Location: MLABCELL_X82_Y15_N57
\Add20~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~61_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][19]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~66\ ))
-- \Add20~62\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][19]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux194~0_combout\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_tmp_wait[6][19]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~66\,
	sumout => \Add20~61_sumout\,
	cout => \Add20~62\);

-- Location: FF_X82_Y15_N59
\tmp_wait[6][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~61_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][19]~q\);

-- Location: MLABCELL_X82_Y14_N0
\Add20~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~57_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][20]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~62\ ))
-- \Add20~58\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][20]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~6_combout\,
	datab => \ALT_INV_Mux194~0_combout\,
	datac => \ALT_INV_tmp_wait[6][20]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~62\,
	sumout => \Add20~57_sumout\,
	cout => \Add20~58\);

-- Location: FF_X82_Y14_N2
\tmp_wait[6][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~57_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][20]~q\);

-- Location: MLABCELL_X82_Y14_N3
\Add20~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~121_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][21]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~58\ ))
-- \Add20~122\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][21]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~6_combout\,
	datab => \ALT_INV_Mux194~0_combout\,
	datac => \ALT_INV_tmp_wait[6][21]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~58\,
	sumout => \Add20~121_sumout\,
	cout => \Add20~122\);

-- Location: FF_X82_Y14_N5
\tmp_wait[6][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~121_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][21]~q\);

-- Location: MLABCELL_X82_Y14_N6
\Add20~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~117_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][22]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~122\ ))
-- \Add20~118\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][22]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~6_combout\,
	datab => \ALT_INV_Mux194~0_combout\,
	datac => \ALT_INV_tmp_wait[6][22]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~122\,
	sumout => \Add20~117_sumout\,
	cout => \Add20~118\);

-- Location: FF_X82_Y14_N8
\tmp_wait[6][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~117_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][22]~q\);

-- Location: MLABCELL_X82_Y14_N9
\Add20~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~113_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][23]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~118\ ))
-- \Add20~114\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][23]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~6_combout\,
	datab => \ALT_INV_Mux194~0_combout\,
	datac => \ALT_INV_tmp_wait[6][23]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~118\,
	sumout => \Add20~113_sumout\,
	cout => \Add20~114\);

-- Location: FF_X82_Y14_N11
\tmp_wait[6][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~113_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][23]~q\);

-- Location: MLABCELL_X82_Y14_N12
\Add20~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~109_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][24]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~114\ ))
-- \Add20~110\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][24]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~6_combout\,
	datab => \ALT_INV_Mux194~0_combout\,
	datac => \ALT_INV_tmp_wait[6][24]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~114\,
	sumout => \Add20~109_sumout\,
	cout => \Add20~110\);

-- Location: FF_X82_Y14_N14
\tmp_wait[6][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~109_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][24]~q\);

-- Location: MLABCELL_X82_Y14_N15
\Add20~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~105_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][25]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~110\ ))
-- \Add20~106\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][25]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~6_combout\,
	datab => \ALT_INV_Mux194~0_combout\,
	datac => \ALT_INV_tmp_wait[6][25]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~110\,
	sumout => \Add20~105_sumout\,
	cout => \Add20~106\);

-- Location: FF_X82_Y14_N17
\tmp_wait[6][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~105_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][25]~q\);

-- Location: MLABCELL_X82_Y14_N18
\Add20~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~101_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][26]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~106\ ))
-- \Add20~102\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][26]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~6_combout\,
	datab => \ALT_INV_Mux194~0_combout\,
	datac => \ALT_INV_tmp_wait[6][26]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~106\,
	sumout => \Add20~101_sumout\,
	cout => \Add20~102\);

-- Location: FF_X82_Y14_N20
\tmp_wait[6][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~101_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][26]~q\);

-- Location: MLABCELL_X82_Y14_N21
\Add20~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~97_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][27]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~102\ ))
-- \Add20~98\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][27]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~6_combout\,
	datab => \ALT_INV_Mux194~0_combout\,
	datac => \ALT_INV_tmp_wait[6][27]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~102\,
	sumout => \Add20~97_sumout\,
	cout => \Add20~98\);

-- Location: FF_X82_Y14_N23
\tmp_wait[6][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~97_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][27]~q\);

-- Location: MLABCELL_X82_Y14_N24
\Add20~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~93_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][28]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~98\ ))
-- \Add20~94\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][28]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~6_combout\,
	datab => \ALT_INV_Mux194~0_combout\,
	datac => \ALT_INV_tmp_wait[6][28]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~98\,
	sumout => \Add20~93_sumout\,
	cout => \Add20~94\);

-- Location: FF_X82_Y14_N26
\tmp_wait[6][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~93_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][28]~q\);

-- Location: MLABCELL_X82_Y14_N27
\Add20~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~89_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][29]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~94\ ))
-- \Add20~90\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][29]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~6_combout\,
	datab => \ALT_INV_Mux194~0_combout\,
	datac => \ALT_INV_tmp_wait[6][29]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~94\,
	sumout => \Add20~89_sumout\,
	cout => \Add20~90\);

-- Location: FF_X82_Y14_N29
\tmp_wait[6][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~89_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][29]~q\);

-- Location: MLABCELL_X82_Y14_N30
\Add20~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~85_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][30]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~90\ ))
-- \Add20~86\ = CARRY(( (!\Equal7~6_combout\ & (((\tmp_wait[6][30]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~6_combout\,
	datab => \ALT_INV_Mux194~0_combout\,
	datac => \ALT_INV_tmp_wait[6][30]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~90\,
	sumout => \Add20~85_sumout\,
	cout => \Add20~86\);

-- Location: FF_X82_Y14_N32
\tmp_wait[6][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~85_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][30]~q\);

-- Location: MLABCELL_X82_Y14_N33
\Add20~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~81_sumout\ = SUM(( (!\Equal7~6_combout\ & (((\tmp_wait[6][31]~q\)))) # (\Equal7~6_combout\ & (!\Mux194~0_combout\ & ((!\song[0][11][31]~combout\)))) ) + ( VCC ) + ( \Add20~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~6_combout\,
	datab => \ALT_INV_Mux194~0_combout\,
	datac => \ALT_INV_tmp_wait[6][31]~q\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	cin => \Add20~86\,
	sumout => \Add20~81_sumout\);

-- Location: FF_X82_Y14_N35
\tmp_wait[6][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add20~81_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[6][31]~q\);

-- Location: MLABCELL_X82_Y14_N48
\Equal7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = ( !\tmp_wait[6][29]~q\ & ( !\tmp_wait[6][31]~q\ & ( (!\tmp_wait[6][27]~q\ & (!\tmp_wait[6][30]~q\ & (!\tmp_wait[6][28]~q\ & !\tmp_wait[0][0]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[6][27]~q\,
	datab => \ALT_INV_tmp_wait[6][30]~q\,
	datac => \ALT_INV_tmp_wait[6][28]~q\,
	datad => \ALT_INV_tmp_wait[0][0]~q\,
	datae => \ALT_INV_tmp_wait[6][29]~q\,
	dataf => \ALT_INV_tmp_wait[6][31]~q\,
	combout => \Equal7~4_combout\);

-- Location: MLABCELL_X82_Y14_N42
\Equal7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = ( !\tmp_wait[6][24]~q\ & ( !\tmp_wait[6][23]~q\ & ( (!\tmp_wait[6][21]~q\ & (!\tmp_wait[6][22]~q\ & (!\tmp_wait[6][26]~q\ & !\tmp_wait[6][25]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[6][21]~q\,
	datab => \ALT_INV_tmp_wait[6][22]~q\,
	datac => \ALT_INV_tmp_wait[6][26]~q\,
	datad => \ALT_INV_tmp_wait[6][25]~q\,
	datae => \ALT_INV_tmp_wait[6][24]~q\,
	dataf => \ALT_INV_tmp_wait[6][23]~q\,
	combout => \Equal7~5_combout\);

-- Location: MLABCELL_X82_Y14_N54
\Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = ( !\tmp_wait[6][10]~q\ & ( !\tmp_wait[6][9]~q\ & ( (!\tmp_wait[6][12]~q\ & (!\tmp_wait[6][11]~q\ & (!\tmp_wait[6][14]~q\ & !\tmp_wait[6][13]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[6][12]~q\,
	datab => \ALT_INV_tmp_wait[6][11]~q\,
	datac => \ALT_INV_tmp_wait[6][14]~q\,
	datad => \ALT_INV_tmp_wait[6][13]~q\,
	datae => \ALT_INV_tmp_wait[6][10]~q\,
	dataf => \ALT_INV_tmp_wait[6][9]~q\,
	combout => \Equal7~2_combout\);

-- Location: LABCELL_X83_Y14_N42
\Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = ( !\tmp_wait[6][4]~q\ & ( !\tmp_wait[6][8]~q\ & ( (!\tmp_wait[6][6]~q\ & (!\tmp_wait[6][3]~q\ & (!\tmp_wait[6][5]~q\ & !\tmp_wait[6][7]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[6][6]~q\,
	datab => \ALT_INV_tmp_wait[6][3]~q\,
	datac => \ALT_INV_tmp_wait[6][5]~q\,
	datad => \ALT_INV_tmp_wait[6][7]~q\,
	datae => \ALT_INV_tmp_wait[6][4]~q\,
	dataf => \ALT_INV_tmp_wait[6][8]~q\,
	combout => \Equal7~1_combout\);

-- Location: MLABCELL_X82_Y16_N12
\Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = ( !\tmp_wait[6][1]~q\ & ( !\tmp_wait[6][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tmp_wait[6][2]~q\,
	dataf => \ALT_INV_tmp_wait[6][1]~q\,
	combout => \Equal7~0_combout\);

-- Location: LABCELL_X81_Y16_N30
\Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = ( !\tmp_wait[6][19]~q\ & ( !\tmp_wait[6][15]~q\ & ( (!\tmp_wait[6][16]~q\ & (!\tmp_wait[6][18]~q\ & (!\tmp_wait[6][17]~q\ & !\tmp_wait[6][20]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[6][16]~q\,
	datab => \ALT_INV_tmp_wait[6][18]~q\,
	datac => \ALT_INV_tmp_wait[6][17]~q\,
	datad => \ALT_INV_tmp_wait[6][20]~q\,
	datae => \ALT_INV_tmp_wait[6][19]~q\,
	dataf => \ALT_INV_tmp_wait[6][15]~q\,
	combout => \Equal7~3_combout\);

-- Location: MLABCELL_X82_Y14_N36
\Equal7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~6_combout\ = ( \Equal7~0_combout\ & ( \Equal7~3_combout\ & ( (\Equal7~4_combout\ & (\Equal7~5_combout\ & (\Equal7~2_combout\ & \Equal7~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~4_combout\,
	datab => \ALT_INV_Equal7~5_combout\,
	datac => \ALT_INV_Equal7~2_combout\,
	datad => \ALT_INV_Equal7~1_combout\,
	datae => \ALT_INV_Equal7~0_combout\,
	dataf => \ALT_INV_Equal7~3_combout\,
	combout => \Equal7~6_combout\);

-- Location: MLABCELL_X84_Y16_N51
\index[6][2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \index[6][2]~7_combout\ = ( \Equal7~6_combout\ & ( (\enable~input_o\ & \screen_end~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datac => \ALT_INV_screen_end~input_o\,
	dataf => \ALT_INV_Equal7~6_combout\,
	combout => \index[6][2]~7_combout\);

-- Location: FF_X84_Y16_N2
\index[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add19~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[6][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[6][0]~q\);

-- Location: MLABCELL_X84_Y16_N3
\Add19~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~5_sumout\ = SUM(( \index[6][1]~q\ ) + ( GND ) + ( \Add19~10\ ))
-- \Add19~6\ = CARRY(( \index[6][1]~q\ ) + ( GND ) + ( \Add19~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[6][1]~q\,
	cin => \Add19~10\,
	sumout => \Add19~5_sumout\,
	cout => \Add19~6\);

-- Location: FF_X84_Y16_N5
\index[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add19~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[6][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[6][1]~q\);

-- Location: MLABCELL_X84_Y16_N6
\Add19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~1_sumout\ = SUM(( \index[6][2]~q\ ) + ( GND ) + ( \Add19~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[6][2]~q\,
	cin => \Add19~6\,
	sumout => \Add19~1_sumout\);

-- Location: FF_X84_Y16_N8
\index[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add19~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[6][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[6][2]~q\);

-- Location: MLABCELL_X84_Y16_N48
\Mux194~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux194~0_combout\ = ( \index[6][2]~q\ ) # ( !\index[6][2]~q\ & ( (!\index[6][0]~q\) # (\index[6][1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_index[6][1]~q\,
	datad => \ALT_INV_index[6][0]~q\,
	dataf => \ALT_INV_index[6][2]~q\,
	combout => \Mux194~0_combout\);

-- Location: LABCELL_X85_Y16_N27
\note_length~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~12_combout\ = ( \Equal7~6_combout\ & ( (!\song[0][11][31]~combout\ & !\Mux194~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_Mux194~0_combout\,
	dataf => \ALT_INV_Equal7~6_combout\,
	combout => \note_length~12_combout\);

-- Location: FF_X85_Y16_N28
\note_length[6][2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~12_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sclr => \ALT_INV_enable~input_o\,
	sload => \ALT_INV_screen_end~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[6][2]~reg0_q\);

-- Location: LABCELL_X85_Y15_N6
\note_length~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~13_combout\ = ( \Equal7~6_combout\ & ( !\Mux194~0_combout\ & ( (\enable~input_o\ & (\song[0][11][5]~combout\ & (\screen_end~input_o\ & !\song[0][11][31]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datab => \ALT_INV_song[0][11][5]~combout\,
	datac => \ALT_INV_screen_end~input_o\,
	datad => \ALT_INV_song[0][11][31]~combout\,
	datae => \ALT_INV_Equal7~6_combout\,
	dataf => \ALT_INV_Mux194~0_combout\,
	combout => \note_length~13_combout\);

-- Location: FF_X85_Y15_N22
\note_length[6][5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \note_length~13_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[6][5]~reg0_q\);

-- Location: FF_X85_Y15_N7
\note_length[6][6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~13_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[6][6]~reg0_q\);

-- Location: MLABCELL_X87_Y14_N0
\Add16~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~9_sumout\ = SUM(( \index[5][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add16~10\ = CARRY(( \index[5][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[5][0]~q\,
	cin => GND,
	sumout => \Add16~9_sumout\,
	cout => \Add16~10\);

-- Location: LABCELL_X79_Y15_N0
\Add17~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~126_cout\ = CARRY(( \tmp_wait[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait[0][0]~q\,
	cin => GND,
	cout => \Add17~126_cout\);

-- Location: LABCELL_X79_Y15_N3
\Add17~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~5_sumout\ = SUM(( \tmp_wait[5][1]~q\ ) + ( VCC ) + ( \Add17~126_cout\ ))
-- \Add17~6\ = CARRY(( \tmp_wait[5][1]~q\ ) + ( VCC ) + ( \Add17~126_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait[5][1]~q\,
	cin => \Add17~126_cout\,
	sumout => \Add17~5_sumout\,
	cout => \Add17~6\);

-- Location: FF_X79_Y15_N5
\tmp_wait[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][1]~q\);

-- Location: LABCELL_X79_Y15_N6
\Add17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~1_sumout\ = SUM(( VCC ) + ( (\tmp_wait[5][2]~q\) # (\Equal6~6_combout\) ) + ( \Add17~6\ ))
-- \Add17~2\ = CARRY(( VCC ) + ( (\tmp_wait[5][2]~q\) # (\Equal6~6_combout\) ) + ( \Add17~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal6~6_combout\,
	dataf => \ALT_INV_tmp_wait[5][2]~q\,
	cin => \Add17~6\,
	sumout => \Add17~1_sumout\,
	cout => \Add17~2\);

-- Location: FF_X79_Y15_N8
\tmp_wait[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][2]~q\);

-- Location: LABCELL_X79_Y15_N9
\Add17~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~29_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][3]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~2\ ))
-- \Add17~30\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][3]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux162~0_combout\,
	datab => \ALT_INV_Equal6~6_combout\,
	datac => \ALT_INV_tmp_wait[5][3]~q\,
	cin => \Add17~2\,
	sumout => \Add17~29_sumout\,
	cout => \Add17~30\);

-- Location: FF_X79_Y15_N11
\tmp_wait[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~29_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][3]~q\);

-- Location: LABCELL_X79_Y15_N12
\Add17~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~25_sumout\ = SUM(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][4]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~30\ ))
-- \Add17~26\ = CARRY(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][4]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal6~6_combout\,
	datac => \ALT_INV_Mux162~0_combout\,
	dataf => \ALT_INV_tmp_wait[5][4]~q\,
	cin => \Add17~30\,
	sumout => \Add17~25_sumout\,
	cout => \Add17~26\);

-- Location: FF_X79_Y15_N14
\tmp_wait[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~25_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][4]~q\);

-- Location: LABCELL_X79_Y15_N15
\Add17~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~21_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][5]~q\))) # (\Equal6~6_combout\ & (!\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~26\ ))
-- \Add17~22\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][5]~q\))) # (\Equal6~6_combout\ & (!\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux162~0_combout\,
	datab => \ALT_INV_Equal6~6_combout\,
	datac => \ALT_INV_tmp_wait[5][5]~q\,
	cin => \Add17~26\,
	sumout => \Add17~21_sumout\,
	cout => \Add17~22\);

-- Location: FF_X79_Y15_N17
\tmp_wait[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~21_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][5]~q\);

-- Location: LABCELL_X79_Y15_N18
\Add17~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~17_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][6]~q\))) # (\Equal6~6_combout\ & (!\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~22\ ))
-- \Add17~18\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][6]~q\))) # (\Equal6~6_combout\ & (!\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux162~0_combout\,
	datab => \ALT_INV_Equal6~6_combout\,
	datac => \ALT_INV_tmp_wait[5][6]~q\,
	cin => \Add17~22\,
	sumout => \Add17~17_sumout\,
	cout => \Add17~18\);

-- Location: FF_X79_Y15_N20
\tmp_wait[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~17_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][6]~q\);

-- Location: LABCELL_X79_Y15_N21
\Add17~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~13_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][7]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~18\ ))
-- \Add17~14\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][7]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux162~0_combout\,
	datab => \ALT_INV_Equal6~6_combout\,
	datad => \ALT_INV_tmp_wait[5][7]~q\,
	cin => \Add17~18\,
	sumout => \Add17~13_sumout\,
	cout => \Add17~14\);

-- Location: FF_X79_Y15_N23
\tmp_wait[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~13_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][7]~q\);

-- Location: LABCELL_X79_Y15_N24
\Add17~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~9_sumout\ = SUM(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][8]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~14\ ))
-- \Add17~10\ = CARRY(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][8]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal6~6_combout\,
	datac => \ALT_INV_Mux162~0_combout\,
	dataf => \ALT_INV_tmp_wait[5][8]~q\,
	cin => \Add17~14\,
	sumout => \Add17~9_sumout\,
	cout => \Add17~10\);

-- Location: FF_X79_Y15_N26
\tmp_wait[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][8]~q\);

-- Location: MLABCELL_X78_Y14_N54
\Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = ( !\tmp_wait[5][6]~q\ & ( !\tmp_wait[5][8]~q\ & ( (!\tmp_wait[5][7]~q\ & (!\tmp_wait[5][5]~q\ & (!\tmp_wait[5][4]~q\ & !\tmp_wait[5][3]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[5][7]~q\,
	datab => \ALT_INV_tmp_wait[5][5]~q\,
	datac => \ALT_INV_tmp_wait[5][4]~q\,
	datad => \ALT_INV_tmp_wait[5][3]~q\,
	datae => \ALT_INV_tmp_wait[5][6]~q\,
	dataf => \ALT_INV_tmp_wait[5][8]~q\,
	combout => \Equal6~1_combout\);

-- Location: MLABCELL_X78_Y14_N45
\Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ( !\tmp_wait[5][2]~q\ & ( !\tmp_wait[5][1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_tmp_wait[5][2]~q\,
	dataf => \ALT_INV_tmp_wait[5][1]~q\,
	combout => \Equal6~0_combout\);

-- Location: LABCELL_X79_Y15_N27
\Add17~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~53_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][9]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~10\ ))
-- \Add17~54\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][9]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux162~0_combout\,
	datab => \ALT_INV_Equal6~6_combout\,
	datad => \ALT_INV_tmp_wait[5][9]~q\,
	cin => \Add17~10\,
	sumout => \Add17~53_sumout\,
	cout => \Add17~54\);

-- Location: FF_X79_Y15_N29
\tmp_wait[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~53_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][9]~q\);

-- Location: LABCELL_X79_Y15_N30
\Add17~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~49_sumout\ = SUM(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][10]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~54\ ))
-- \Add17~50\ = CARRY(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][10]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal6~6_combout\,
	datac => \ALT_INV_Mux162~0_combout\,
	dataf => \ALT_INV_tmp_wait[5][10]~q\,
	cin => \Add17~54\,
	sumout => \Add17~49_sumout\,
	cout => \Add17~50\);

-- Location: FF_X79_Y15_N32
\tmp_wait[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~49_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][10]~q\);

-- Location: LABCELL_X79_Y15_N33
\Add17~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~45_sumout\ = SUM(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][11]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~50\ ))
-- \Add17~46\ = CARRY(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][11]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux162~0_combout\,
	datab => \ALT_INV_Equal6~6_combout\,
	dataf => \ALT_INV_tmp_wait[5][11]~q\,
	cin => \Add17~50\,
	sumout => \Add17~45_sumout\,
	cout => \Add17~46\);

-- Location: FF_X79_Y15_N35
\tmp_wait[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~45_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][11]~q\);

-- Location: LABCELL_X79_Y15_N36
\Add17~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~41_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][12]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~46\ ))
-- \Add17~42\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][12]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal6~6_combout\,
	datac => \ALT_INV_Mux162~0_combout\,
	datad => \ALT_INV_tmp_wait[5][12]~q\,
	cin => \Add17~46\,
	sumout => \Add17~41_sumout\,
	cout => \Add17~42\);

-- Location: FF_X79_Y15_N38
\tmp_wait[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~41_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][12]~q\);

-- Location: LABCELL_X79_Y15_N39
\Add17~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~37_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][13]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~42\ ))
-- \Add17~38\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][13]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux162~0_combout\,
	datab => \ALT_INV_Equal6~6_combout\,
	datac => \ALT_INV_tmp_wait[5][13]~q\,
	cin => \Add17~42\,
	sumout => \Add17~37_sumout\,
	cout => \Add17~38\);

-- Location: FF_X79_Y15_N41
\tmp_wait[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~37_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][13]~q\);

-- Location: LABCELL_X79_Y15_N42
\Add17~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~33_sumout\ = SUM(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][14]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~38\ ))
-- \Add17~34\ = CARRY(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][14]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal6~6_combout\,
	datac => \ALT_INV_Mux162~0_combout\,
	dataf => \ALT_INV_tmp_wait[5][14]~q\,
	cin => \Add17~38\,
	sumout => \Add17~33_sumout\,
	cout => \Add17~34\);

-- Location: FF_X79_Y15_N44
\tmp_wait[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~33_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][14]~q\);

-- Location: LABCELL_X79_Y15_N45
\Add17~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~77_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][15]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~34\ ))
-- \Add17~78\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][15]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux162~0_combout\,
	datab => \ALT_INV_Equal6~6_combout\,
	datac => \ALT_INV_tmp_wait[5][15]~q\,
	cin => \Add17~34\,
	sumout => \Add17~77_sumout\,
	cout => \Add17~78\);

-- Location: FF_X79_Y15_N47
\tmp_wait[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~77_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][15]~q\);

-- Location: LABCELL_X79_Y15_N48
\Add17~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~73_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][16]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~78\ ))
-- \Add17~74\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][16]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux162~0_combout\,
	datab => \ALT_INV_Equal6~6_combout\,
	datac => \ALT_INV_tmp_wait[5][16]~q\,
	cin => \Add17~78\,
	sumout => \Add17~73_sumout\,
	cout => \Add17~74\);

-- Location: FF_X79_Y15_N50
\tmp_wait[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~73_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][16]~q\);

-- Location: LABCELL_X79_Y15_N51
\Add17~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~69_sumout\ = SUM(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][17]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~74\ ))
-- \Add17~70\ = CARRY(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][17]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux162~0_combout\,
	datab => \ALT_INV_Equal6~6_combout\,
	dataf => \ALT_INV_tmp_wait[5][17]~q\,
	cin => \Add17~74\,
	sumout => \Add17~69_sumout\,
	cout => \Add17~70\);

-- Location: FF_X79_Y15_N53
\tmp_wait[5][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~69_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][17]~q\);

-- Location: LABCELL_X79_Y15_N54
\Add17~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~65_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][18]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~70\ ))
-- \Add17~66\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][18]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal6~6_combout\,
	datac => \ALT_INV_Mux162~0_combout\,
	datad => \ALT_INV_tmp_wait[5][18]~q\,
	cin => \Add17~70\,
	sumout => \Add17~65_sumout\,
	cout => \Add17~66\);

-- Location: FF_X79_Y15_N56
\tmp_wait[5][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~65_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][18]~q\);

-- Location: LABCELL_X79_Y15_N57
\Add17~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~61_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][19]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~66\ ))
-- \Add17~62\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][19]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux162~0_combout\,
	datab => \ALT_INV_Equal6~6_combout\,
	datad => \ALT_INV_tmp_wait[5][19]~q\,
	cin => \Add17~66\,
	sumout => \Add17~61_sumout\,
	cout => \Add17~62\);

-- Location: FF_X79_Y15_N59
\tmp_wait[5][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~61_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][19]~q\);

-- Location: LABCELL_X79_Y14_N0
\Add17~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~57_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][20]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~62\ ))
-- \Add17~58\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][20]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux162~0_combout\,
	datac => \ALT_INV_Equal6~6_combout\,
	datad => \ALT_INV_tmp_wait[5][20]~q\,
	cin => \Add17~62\,
	sumout => \Add17~57_sumout\,
	cout => \Add17~58\);

-- Location: FF_X79_Y14_N2
\tmp_wait[5][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~57_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][20]~q\);

-- Location: LABCELL_X79_Y14_N3
\Add17~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~121_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][21]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~58\ ))
-- \Add17~122\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][21]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~6_combout\,
	datab => \ALT_INV_Mux162~0_combout\,
	datad => \ALT_INV_tmp_wait[5][21]~q\,
	cin => \Add17~58\,
	sumout => \Add17~121_sumout\,
	cout => \Add17~122\);

-- Location: FF_X79_Y14_N5
\tmp_wait[5][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~121_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][21]~q\);

-- Location: LABCELL_X79_Y14_N6
\Add17~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~117_sumout\ = SUM(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][22]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~122\ ))
-- \Add17~118\ = CARRY(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][22]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux162~0_combout\,
	datac => \ALT_INV_Equal6~6_combout\,
	dataf => \ALT_INV_tmp_wait[5][22]~q\,
	cin => \Add17~122\,
	sumout => \Add17~117_sumout\,
	cout => \Add17~118\);

-- Location: FF_X79_Y14_N8
\tmp_wait[5][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~117_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][22]~q\);

-- Location: LABCELL_X79_Y14_N9
\Add17~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~113_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][23]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~118\ ))
-- \Add17~114\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][23]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~6_combout\,
	datab => \ALT_INV_Mux162~0_combout\,
	datac => \ALT_INV_tmp_wait[5][23]~q\,
	cin => \Add17~118\,
	sumout => \Add17~113_sumout\,
	cout => \Add17~114\);

-- Location: FF_X79_Y14_N11
\tmp_wait[5][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~113_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][23]~q\);

-- Location: LABCELL_X79_Y14_N12
\Add17~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~109_sumout\ = SUM(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][24]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~114\ ))
-- \Add17~110\ = CARRY(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][24]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux162~0_combout\,
	datac => \ALT_INV_Equal6~6_combout\,
	dataf => \ALT_INV_tmp_wait[5][24]~q\,
	cin => \Add17~114\,
	sumout => \Add17~109_sumout\,
	cout => \Add17~110\);

-- Location: FF_X79_Y14_N14
\tmp_wait[5][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~109_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][24]~q\);

-- Location: LABCELL_X79_Y14_N15
\Add17~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~105_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][25]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~110\ ))
-- \Add17~106\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][25]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~6_combout\,
	datab => \ALT_INV_Mux162~0_combout\,
	datac => \ALT_INV_tmp_wait[5][25]~q\,
	cin => \Add17~110\,
	sumout => \Add17~105_sumout\,
	cout => \Add17~106\);

-- Location: FF_X79_Y14_N17
\tmp_wait[5][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~105_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][25]~q\);

-- Location: LABCELL_X79_Y14_N18
\Add17~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~101_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][26]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~106\ ))
-- \Add17~102\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][26]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~6_combout\,
	datab => \ALT_INV_Mux162~0_combout\,
	datac => \ALT_INV_tmp_wait[5][26]~q\,
	cin => \Add17~106\,
	sumout => \Add17~101_sumout\,
	cout => \Add17~102\);

-- Location: FF_X79_Y14_N20
\tmp_wait[5][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~101_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][26]~q\);

-- Location: LABCELL_X79_Y14_N21
\Add17~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~97_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][27]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~102\ ))
-- \Add17~98\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][27]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~6_combout\,
	datab => \ALT_INV_Mux162~0_combout\,
	datad => \ALT_INV_tmp_wait[5][27]~q\,
	cin => \Add17~102\,
	sumout => \Add17~97_sumout\,
	cout => \Add17~98\);

-- Location: FF_X79_Y14_N23
\tmp_wait[5][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~97_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][27]~q\);

-- Location: LABCELL_X79_Y14_N24
\Add17~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~93_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][28]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~98\ ))
-- \Add17~94\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][28]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~6_combout\,
	datab => \ALT_INV_Mux162~0_combout\,
	datac => \ALT_INV_tmp_wait[5][28]~q\,
	cin => \Add17~98\,
	sumout => \Add17~93_sumout\,
	cout => \Add17~94\);

-- Location: FF_X79_Y14_N26
\tmp_wait[5][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~93_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][28]~q\);

-- Location: LABCELL_X79_Y14_N27
\Add17~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~89_sumout\ = SUM(( (!\Equal6~6_combout\ & ((\tmp_wait[5][29]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~94\ ))
-- \Add17~90\ = CARRY(( (!\Equal6~6_combout\ & ((\tmp_wait[5][29]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( VCC ) + ( \Add17~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~6_combout\,
	datab => \ALT_INV_Mux162~0_combout\,
	datad => \ALT_INV_tmp_wait[5][29]~q\,
	cin => \Add17~94\,
	sumout => \Add17~89_sumout\,
	cout => \Add17~90\);

-- Location: FF_X79_Y14_N29
\tmp_wait[5][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~89_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][29]~q\);

-- Location: LABCELL_X79_Y14_N30
\Add17~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~85_sumout\ = SUM(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][30]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~90\ ))
-- \Add17~86\ = CARRY(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][30]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux162~0_combout\,
	datac => \ALT_INV_Equal6~6_combout\,
	dataf => \ALT_INV_tmp_wait[5][30]~q\,
	cin => \Add17~90\,
	sumout => \Add17~85_sumout\,
	cout => \Add17~86\);

-- Location: FF_X79_Y14_N32
\tmp_wait[5][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~85_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][30]~q\);

-- Location: LABCELL_X79_Y14_N33
\Add17~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~81_sumout\ = SUM(( VCC ) + ( (!\Equal6~6_combout\ & ((\tmp_wait[5][31]~q\))) # (\Equal6~6_combout\ & (\Mux162~0_combout\)) ) + ( \Add17~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~6_combout\,
	datab => \ALT_INV_Mux162~0_combout\,
	dataf => \ALT_INV_tmp_wait[5][31]~q\,
	cin => \Add17~86\,
	sumout => \Add17~81_sumout\);

-- Location: FF_X79_Y14_N35
\tmp_wait[5][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add17~81_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[5][31]~q\);

-- Location: MLABCELL_X78_Y14_N24
\Equal6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = ( !\tmp_wait[5][27]~q\ & ( !\tmp_wait[0][0]~q\ & ( (!\tmp_wait[5][31]~q\ & (!\tmp_wait[5][29]~q\ & (!\tmp_wait[5][30]~q\ & !\tmp_wait[5][28]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[5][31]~q\,
	datab => \ALT_INV_tmp_wait[5][29]~q\,
	datac => \ALT_INV_tmp_wait[5][30]~q\,
	datad => \ALT_INV_tmp_wait[5][28]~q\,
	datae => \ALT_INV_tmp_wait[5][27]~q\,
	dataf => \ALT_INV_tmp_wait[0][0]~q\,
	combout => \Equal6~4_combout\);

-- Location: LABCELL_X79_Y14_N42
\Equal6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = ( !\tmp_wait[5][25]~q\ & ( !\tmp_wait[5][24]~q\ & ( (!\tmp_wait[5][21]~q\ & (!\tmp_wait[5][23]~q\ & (!\tmp_wait[5][26]~q\ & !\tmp_wait[5][22]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[5][21]~q\,
	datab => \ALT_INV_tmp_wait[5][23]~q\,
	datac => \ALT_INV_tmp_wait[5][26]~q\,
	datad => \ALT_INV_tmp_wait[5][22]~q\,
	datae => \ALT_INV_tmp_wait[5][25]~q\,
	dataf => \ALT_INV_tmp_wait[5][24]~q\,
	combout => \Equal6~5_combout\);

-- Location: MLABCELL_X78_Y14_N36
\Equal6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = ( !\tmp_wait[5][15]~q\ & ( !\tmp_wait[5][19]~q\ & ( (!\tmp_wait[5][20]~q\ & (!\tmp_wait[5][16]~q\ & (!\tmp_wait[5][17]~q\ & !\tmp_wait[5][18]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[5][20]~q\,
	datab => \ALT_INV_tmp_wait[5][16]~q\,
	datac => \ALT_INV_tmp_wait[5][17]~q\,
	datad => \ALT_INV_tmp_wait[5][18]~q\,
	datae => \ALT_INV_tmp_wait[5][15]~q\,
	dataf => \ALT_INV_tmp_wait[5][19]~q\,
	combout => \Equal6~3_combout\);

-- Location: MLABCELL_X78_Y14_N6
\Equal6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = ( !\tmp_wait[5][11]~q\ & ( !\tmp_wait[5][9]~q\ & ( (!\tmp_wait[5][10]~q\ & (!\tmp_wait[5][14]~q\ & (!\tmp_wait[5][12]~q\ & !\tmp_wait[5][13]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[5][10]~q\,
	datab => \ALT_INV_tmp_wait[5][14]~q\,
	datac => \ALT_INV_tmp_wait[5][12]~q\,
	datad => \ALT_INV_tmp_wait[5][13]~q\,
	datae => \ALT_INV_tmp_wait[5][11]~q\,
	dataf => \ALT_INV_tmp_wait[5][9]~q\,
	combout => \Equal6~2_combout\);

-- Location: MLABCELL_X78_Y14_N12
\Equal6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~6_combout\ = ( \Equal6~3_combout\ & ( \Equal6~2_combout\ & ( (\Equal6~1_combout\ & (\Equal6~0_combout\ & (\Equal6~4_combout\ & \Equal6~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~1_combout\,
	datab => \ALT_INV_Equal6~0_combout\,
	datac => \ALT_INV_Equal6~4_combout\,
	datad => \ALT_INV_Equal6~5_combout\,
	datae => \ALT_INV_Equal6~3_combout\,
	dataf => \ALT_INV_Equal6~2_combout\,
	combout => \Equal6~6_combout\);

-- Location: MLABCELL_X87_Y14_N27
\index[5][2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \index[5][2]~8_combout\ = ( \Equal6~6_combout\ & ( (\screen_end~input_o\ & \enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_screen_end~input_o\,
	datac => \ALT_INV_enable~input_o\,
	dataf => \ALT_INV_Equal6~6_combout\,
	combout => \index[5][2]~8_combout\);

-- Location: FF_X87_Y14_N2
\index[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add16~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[5][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[5][0]~q\);

-- Location: MLABCELL_X87_Y14_N3
\Add16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~5_sumout\ = SUM(( \index[5][1]~q\ ) + ( GND ) + ( \Add16~10\ ))
-- \Add16~6\ = CARRY(( \index[5][1]~q\ ) + ( GND ) + ( \Add16~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[5][1]~q\,
	cin => \Add16~10\,
	sumout => \Add16~5_sumout\,
	cout => \Add16~6\);

-- Location: FF_X87_Y14_N5
\index[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add16~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[5][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[5][1]~q\);

-- Location: MLABCELL_X87_Y14_N6
\Add16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~1_sumout\ = SUM(( \index[5][2]~q\ ) + ( GND ) + ( \Add16~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[5][2]~q\,
	cin => \Add16~6\,
	sumout => \Add16~1_sumout\);

-- Location: FF_X87_Y14_N8
\index[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add16~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[5][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[5][2]~q\);

-- Location: MLABCELL_X87_Y14_N21
\Mux162~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux162~0_combout\ = ( \index[5][0]~q\ & ( !\index[5][2]~q\ & ( \index[5][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[5][1]~q\,
	datae => \ALT_INV_index[5][0]~q\,
	dataf => \ALT_INV_index[5][2]~q\,
	combout => \Mux162~0_combout\);

-- Location: MLABCELL_X87_Y15_N6
\note_length~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~14_combout\ = ( \Equal6~6_combout\ & ( \Mux162~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux162~0_combout\,
	dataf => \ALT_INV_Equal6~6_combout\,
	combout => \note_length~14_combout\);

-- Location: FF_X87_Y15_N7
\note_length[5][2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~14_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sclr => \ALT_INV_enable~input_o\,
	sload => \ALT_INV_screen_end~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[5][2]~reg0_q\);

-- Location: MLABCELL_X84_Y14_N51
\note_length~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~15_combout\ = ( \Mux162~0_combout\ & ( \Equal6~6_combout\ & ( (\enable~input_o\ & \screen_end~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datac => \ALT_INV_screen_end~input_o\,
	datae => \ALT_INV_Mux162~0_combout\,
	dataf => \ALT_INV_Equal6~6_combout\,
	combout => \note_length~15_combout\);

-- Location: FF_X84_Y12_N58
\note_length[5][5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \note_length~15_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[5][5]~reg0_q\);

-- Location: FF_X84_Y14_N53
\note_length[5][6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~15_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[5][6]~reg0_q\);

-- Location: LABCELL_X88_Y12_N30
\Add13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~9_sumout\ = SUM(( \index[4][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add13~10\ = CARRY(( \index[4][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[4][0]~q\,
	cin => GND,
	sumout => \Add13~9_sumout\,
	cout => \Add13~10\);

-- Location: LABCELL_X80_Y15_N0
\Add14~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~126_cout\ = CARRY(( \tmp_wait[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tmp_wait[0][0]~q\,
	cin => GND,
	cout => \Add14~126_cout\);

-- Location: LABCELL_X80_Y15_N3
\Add14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~5_sumout\ = SUM(( \tmp_wait[4][1]~q\ ) + ( VCC ) + ( \Add14~126_cout\ ))
-- \Add14~6\ = CARRY(( \tmp_wait[4][1]~q\ ) + ( VCC ) + ( \Add14~126_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait[4][1]~q\,
	cin => \Add14~126_cout\,
	sumout => \Add14~5_sumout\,
	cout => \Add14~6\);

-- Location: FF_X80_Y15_N5
\tmp_wait[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][1]~q\);

-- Location: LABCELL_X80_Y15_N6
\Add14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~1_sumout\ = SUM(( (\Equal5~6_combout\) # (\tmp_wait[4][2]~q\) ) + ( VCC ) + ( \Add14~6\ ))
-- \Add14~2\ = CARRY(( (\Equal5~6_combout\) # (\tmp_wait[4][2]~q\) ) + ( VCC ) + ( \Add14~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tmp_wait[4][2]~q\,
	datac => \ALT_INV_Equal5~6_combout\,
	cin => \Add14~6\,
	sumout => \Add14~1_sumout\,
	cout => \Add14~2\);

-- Location: FF_X80_Y15_N8
\tmp_wait[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][2]~q\);

-- Location: LABCELL_X80_Y15_N9
\Add14~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~29_sumout\ = SUM(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][3]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~2\ ))
-- \Add14~30\ = CARRY(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][3]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datac => \ALT_INV_Equal5~6_combout\,
	dataf => \ALT_INV_tmp_wait[4][3]~q\,
	cin => \Add14~2\,
	sumout => \Add14~29_sumout\,
	cout => \Add14~30\);

-- Location: FF_X80_Y15_N11
\tmp_wait[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~29_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][3]~q\);

-- Location: LABCELL_X80_Y15_N12
\Add14~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~25_sumout\ = SUM(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][4]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~30\ ))
-- \Add14~26\ = CARRY(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][4]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_Mux130~0_combout\,
	dataf => \ALT_INV_tmp_wait[4][4]~q\,
	cin => \Add14~30\,
	sumout => \Add14~25_sumout\,
	cout => \Add14~26\);

-- Location: FF_X80_Y15_N14
\tmp_wait[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~25_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][4]~q\);

-- Location: LABCELL_X80_Y15_N15
\Add14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~21_sumout\ = SUM(( (!\Equal5~6_combout\ & ((\tmp_wait[4][5]~q\))) # (\Equal5~6_combout\ & (!\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~26\ ))
-- \Add14~22\ = CARRY(( (!\Equal5~6_combout\ & ((\tmp_wait[4][5]~q\))) # (\Equal5~6_combout\ & (!\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_tmp_wait[4][5]~q\,
	cin => \Add14~26\,
	sumout => \Add14~21_sumout\,
	cout => \Add14~22\);

-- Location: FF_X80_Y15_N17
\tmp_wait[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~21_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][5]~q\);

-- Location: LABCELL_X80_Y15_N18
\Add14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~17_sumout\ = SUM(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][6]~q\))) # (\Equal5~6_combout\ & (!\Mux130~0_combout\)) ) + ( \Add14~22\ ))
-- \Add14~18\ = CARRY(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][6]~q\))) # (\Equal5~6_combout\ & (!\Mux130~0_combout\)) ) + ( \Add14~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_Mux130~0_combout\,
	dataf => \ALT_INV_tmp_wait[4][6]~q\,
	cin => \Add14~22\,
	sumout => \Add14~17_sumout\,
	cout => \Add14~18\);

-- Location: FF_X80_Y15_N20
\tmp_wait[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~17_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][6]~q\);

-- Location: LABCELL_X80_Y15_N21
\Add14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~13_sumout\ = SUM(( (!\Equal5~6_combout\ & ((\tmp_wait[4][7]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~18\ ))
-- \Add14~14\ = CARRY(( (!\Equal5~6_combout\ & ((\tmp_wait[4][7]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datac => \ALT_INV_Equal5~6_combout\,
	datad => \ALT_INV_tmp_wait[4][7]~q\,
	cin => \Add14~18\,
	sumout => \Add14~13_sumout\,
	cout => \Add14~14\);

-- Location: FF_X80_Y15_N23
\tmp_wait[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~13_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][7]~q\);

-- Location: LABCELL_X80_Y15_N24
\Add14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~9_sumout\ = SUM(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][8]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~14\ ))
-- \Add14~10\ = CARRY(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][8]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_Mux130~0_combout\,
	dataf => \ALT_INV_tmp_wait[4][8]~q\,
	cin => \Add14~14\,
	sumout => \Add14~9_sumout\,
	cout => \Add14~10\);

-- Location: FF_X80_Y15_N26
\tmp_wait[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][8]~q\);

-- Location: LABCELL_X80_Y14_N48
\Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = ( !\tmp_wait[4][4]~q\ & ( !\tmp_wait[4][8]~q\ & ( (!\tmp_wait[4][7]~q\ & (!\tmp_wait[4][6]~q\ & (!\tmp_wait[4][3]~q\ & !\tmp_wait[4][5]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[4][7]~q\,
	datab => \ALT_INV_tmp_wait[4][6]~q\,
	datac => \ALT_INV_tmp_wait[4][3]~q\,
	datad => \ALT_INV_tmp_wait[4][5]~q\,
	datae => \ALT_INV_tmp_wait[4][4]~q\,
	dataf => \ALT_INV_tmp_wait[4][8]~q\,
	combout => \Equal5~1_combout\);

-- Location: LABCELL_X80_Y15_N27
\Add14~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~53_sumout\ = SUM(( (!\Equal5~6_combout\ & ((\tmp_wait[4][9]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~10\ ))
-- \Add14~54\ = CARRY(( (!\Equal5~6_combout\ & ((\tmp_wait[4][9]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datac => \ALT_INV_Equal5~6_combout\,
	datad => \ALT_INV_tmp_wait[4][9]~q\,
	cin => \Add14~10\,
	sumout => \Add14~53_sumout\,
	cout => \Add14~54\);

-- Location: FF_X80_Y15_N29
\tmp_wait[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~53_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][9]~q\);

-- Location: LABCELL_X80_Y15_N30
\Add14~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~49_sumout\ = SUM(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][10]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~54\ ))
-- \Add14~50\ = CARRY(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][10]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_Mux130~0_combout\,
	dataf => \ALT_INV_tmp_wait[4][10]~q\,
	cin => \Add14~54\,
	sumout => \Add14~49_sumout\,
	cout => \Add14~50\);

-- Location: FF_X80_Y15_N32
\tmp_wait[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~49_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][10]~q\);

-- Location: LABCELL_X80_Y15_N33
\Add14~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~45_sumout\ = SUM(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][11]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~50\ ))
-- \Add14~46\ = CARRY(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][11]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datab => \ALT_INV_Equal5~6_combout\,
	dataf => \ALT_INV_tmp_wait[4][11]~q\,
	cin => \Add14~50\,
	sumout => \Add14~45_sumout\,
	cout => \Add14~46\);

-- Location: FF_X80_Y15_N35
\tmp_wait[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~45_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][11]~q\);

-- Location: LABCELL_X80_Y15_N36
\Add14~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~41_sumout\ = SUM(( (!\Equal5~6_combout\ & ((\tmp_wait[4][12]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~46\ ))
-- \Add14~42\ = CARRY(( (!\Equal5~6_combout\ & ((\tmp_wait[4][12]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_Mux130~0_combout\,
	datad => \ALT_INV_tmp_wait[4][12]~q\,
	cin => \Add14~46\,
	sumout => \Add14~41_sumout\,
	cout => \Add14~42\);

-- Location: FF_X80_Y15_N38
\tmp_wait[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~41_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][12]~q\);

-- Location: LABCELL_X80_Y15_N39
\Add14~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~37_sumout\ = SUM(( (!\Equal5~6_combout\ & ((\tmp_wait[4][13]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~42\ ))
-- \Add14~38\ = CARRY(( (!\Equal5~6_combout\ & ((\tmp_wait[4][13]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_tmp_wait[4][13]~q\,
	cin => \Add14~42\,
	sumout => \Add14~37_sumout\,
	cout => \Add14~38\);

-- Location: FF_X80_Y15_N41
\tmp_wait[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~37_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][13]~q\);

-- Location: LABCELL_X80_Y15_N42
\Add14~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~33_sumout\ = SUM(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][14]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~38\ ))
-- \Add14~34\ = CARRY(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][14]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_Mux130~0_combout\,
	dataf => \ALT_INV_tmp_wait[4][14]~q\,
	cin => \Add14~38\,
	sumout => \Add14~33_sumout\,
	cout => \Add14~34\);

-- Location: FF_X80_Y15_N44
\tmp_wait[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~33_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][14]~q\);

-- Location: LABCELL_X80_Y15_N45
\Add14~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~77_sumout\ = SUM(( (!\Equal5~6_combout\ & ((\tmp_wait[4][15]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~34\ ))
-- \Add14~78\ = CARRY(( (!\Equal5~6_combout\ & ((\tmp_wait[4][15]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datab => \ALT_INV_Equal5~6_combout\,
	datad => \ALT_INV_tmp_wait[4][15]~q\,
	cin => \Add14~34\,
	sumout => \Add14~77_sumout\,
	cout => \Add14~78\);

-- Location: FF_X80_Y15_N47
\tmp_wait[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~77_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][15]~q\);

-- Location: LABCELL_X80_Y15_N48
\Add14~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~73_sumout\ = SUM(( (!\Equal5~6_combout\ & ((\tmp_wait[4][16]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~78\ ))
-- \Add14~74\ = CARRY(( (!\Equal5~6_combout\ & ((\tmp_wait[4][16]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_tmp_wait[4][16]~q\,
	cin => \Add14~78\,
	sumout => \Add14~73_sumout\,
	cout => \Add14~74\);

-- Location: FF_X80_Y15_N50
\tmp_wait[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~73_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][16]~q\);

-- Location: LABCELL_X80_Y15_N51
\Add14~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~69_sumout\ = SUM(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][17]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~74\ ))
-- \Add14~70\ = CARRY(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][17]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datab => \ALT_INV_Equal5~6_combout\,
	dataf => \ALT_INV_tmp_wait[4][17]~q\,
	cin => \Add14~74\,
	sumout => \Add14~69_sumout\,
	cout => \Add14~70\);

-- Location: FF_X80_Y15_N53
\tmp_wait[4][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~69_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][17]~q\);

-- Location: LABCELL_X80_Y15_N54
\Add14~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~65_sumout\ = SUM(( (!\Equal5~6_combout\ & ((\tmp_wait[4][18]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~70\ ))
-- \Add14~66\ = CARRY(( (!\Equal5~6_combout\ & ((\tmp_wait[4][18]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_Mux130~0_combout\,
	datad => \ALT_INV_tmp_wait[4][18]~q\,
	cin => \Add14~70\,
	sumout => \Add14~65_sumout\,
	cout => \Add14~66\);

-- Location: FF_X80_Y15_N56
\tmp_wait[4][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~65_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][18]~q\);

-- Location: LABCELL_X80_Y15_N57
\Add14~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~61_sumout\ = SUM(( (!\Equal5~6_combout\ & ((\tmp_wait[4][19]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~66\ ))
-- \Add14~62\ = CARRY(( (!\Equal5~6_combout\ & ((\tmp_wait[4][19]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datab => \ALT_INV_Equal5~6_combout\,
	datad => \ALT_INV_tmp_wait[4][19]~q\,
	cin => \Add14~66\,
	sumout => \Add14~61_sumout\,
	cout => \Add14~62\);

-- Location: FF_X80_Y15_N59
\tmp_wait[4][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~61_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][19]~q\);

-- Location: LABCELL_X80_Y14_N0
\Add14~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~57_sumout\ = SUM(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][20]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~62\ ))
-- \Add14~58\ = CARRY(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][20]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_Mux130~0_combout\,
	dataf => \ALT_INV_tmp_wait[4][20]~q\,
	cin => \Add14~62\,
	sumout => \Add14~57_sumout\,
	cout => \Add14~58\);

-- Location: FF_X80_Y14_N2
\tmp_wait[4][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~57_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][20]~q\);

-- Location: LABCELL_X80_Y14_N3
\Add14~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~121_sumout\ = SUM(( (!\Equal5~6_combout\ & ((\tmp_wait[4][21]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~58\ ))
-- \Add14~122\ = CARRY(( (!\Equal5~6_combout\ & ((\tmp_wait[4][21]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datab => \ALT_INV_Equal5~6_combout\,
	datad => \ALT_INV_tmp_wait[4][21]~q\,
	cin => \Add14~58\,
	sumout => \Add14~121_sumout\,
	cout => \Add14~122\);

-- Location: FF_X80_Y14_N5
\tmp_wait[4][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~121_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][21]~q\);

-- Location: LABCELL_X80_Y14_N6
\Add14~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~117_sumout\ = SUM(( (!\Equal5~6_combout\ & ((\tmp_wait[4][22]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~122\ ))
-- \Add14~118\ = CARRY(( (!\Equal5~6_combout\ & ((\tmp_wait[4][22]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_Mux130~0_combout\,
	datad => \ALT_INV_tmp_wait[4][22]~q\,
	cin => \Add14~122\,
	sumout => \Add14~117_sumout\,
	cout => \Add14~118\);

-- Location: FF_X80_Y14_N8
\tmp_wait[4][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~117_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][22]~q\);

-- Location: LABCELL_X80_Y14_N9
\Add14~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~113_sumout\ = SUM(( (!\Equal5~6_combout\ & ((\tmp_wait[4][23]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~118\ ))
-- \Add14~114\ = CARRY(( (!\Equal5~6_combout\ & ((\tmp_wait[4][23]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_tmp_wait[4][23]~q\,
	cin => \Add14~118\,
	sumout => \Add14~113_sumout\,
	cout => \Add14~114\);

-- Location: FF_X80_Y14_N11
\tmp_wait[4][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~113_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][23]~q\);

-- Location: LABCELL_X80_Y14_N12
\Add14~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~109_sumout\ = SUM(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][24]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~114\ ))
-- \Add14~110\ = CARRY(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][24]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_Mux130~0_combout\,
	dataf => \ALT_INV_tmp_wait[4][24]~q\,
	cin => \Add14~114\,
	sumout => \Add14~109_sumout\,
	cout => \Add14~110\);

-- Location: FF_X80_Y14_N14
\tmp_wait[4][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~109_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][24]~q\);

-- Location: LABCELL_X80_Y14_N15
\Add14~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~105_sumout\ = SUM(( (!\Equal5~6_combout\ & ((\tmp_wait[4][25]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~110\ ))
-- \Add14~106\ = CARRY(( (!\Equal5~6_combout\ & ((\tmp_wait[4][25]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_tmp_wait[4][25]~q\,
	cin => \Add14~110\,
	sumout => \Add14~105_sumout\,
	cout => \Add14~106\);

-- Location: FF_X80_Y14_N17
\tmp_wait[4][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~105_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][25]~q\);

-- Location: LABCELL_X80_Y14_N18
\Add14~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~101_sumout\ = SUM(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][26]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~106\ ))
-- \Add14~102\ = CARRY(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][26]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_Mux130~0_combout\,
	dataf => \ALT_INV_tmp_wait[4][26]~q\,
	cin => \Add14~106\,
	sumout => \Add14~101_sumout\,
	cout => \Add14~102\);

-- Location: FF_X80_Y14_N20
\tmp_wait[4][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~101_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][26]~q\);

-- Location: LABCELL_X79_Y14_N48
\Equal5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = ( !\tmp_wait[4][25]~q\ & ( !\tmp_wait[4][22]~q\ & ( (!\tmp_wait[4][21]~q\ & (!\tmp_wait[4][26]~q\ & (!\tmp_wait[4][23]~q\ & !\tmp_wait[4][24]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[4][21]~q\,
	datab => \ALT_INV_tmp_wait[4][26]~q\,
	datac => \ALT_INV_tmp_wait[4][23]~q\,
	datad => \ALT_INV_tmp_wait[4][24]~q\,
	datae => \ALT_INV_tmp_wait[4][25]~q\,
	dataf => \ALT_INV_tmp_wait[4][22]~q\,
	combout => \Equal5~5_combout\);

-- Location: LABCELL_X79_Y14_N54
\Equal5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = ( !\tmp_wait[4][17]~q\ & ( !\tmp_wait[4][15]~q\ & ( (!\tmp_wait[4][20]~q\ & (!\tmp_wait[4][16]~q\ & (!\tmp_wait[4][18]~q\ & !\tmp_wait[4][19]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[4][20]~q\,
	datab => \ALT_INV_tmp_wait[4][16]~q\,
	datac => \ALT_INV_tmp_wait[4][18]~q\,
	datad => \ALT_INV_tmp_wait[4][19]~q\,
	datae => \ALT_INV_tmp_wait[4][17]~q\,
	dataf => \ALT_INV_tmp_wait[4][15]~q\,
	combout => \Equal5~3_combout\);

-- Location: LABCELL_X80_Y14_N42
\Equal5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = ( !\tmp_wait[4][9]~q\ & ( !\tmp_wait[4][10]~q\ & ( (!\tmp_wait[4][11]~q\ & (!\tmp_wait[4][14]~q\ & (!\tmp_wait[4][13]~q\ & !\tmp_wait[4][12]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[4][11]~q\,
	datab => \ALT_INV_tmp_wait[4][14]~q\,
	datac => \ALT_INV_tmp_wait[4][13]~q\,
	datad => \ALT_INV_tmp_wait[4][12]~q\,
	datae => \ALT_INV_tmp_wait[4][9]~q\,
	dataf => \ALT_INV_tmp_wait[4][10]~q\,
	combout => \Equal5~2_combout\);

-- Location: LABCELL_X80_Y14_N21
\Add14~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~97_sumout\ = SUM(( (!\Equal5~6_combout\ & ((\tmp_wait[4][27]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~102\ ))
-- \Add14~98\ = CARRY(( (!\Equal5~6_combout\ & ((\tmp_wait[4][27]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datab => \ALT_INV_Equal5~6_combout\,
	datad => \ALT_INV_tmp_wait[4][27]~q\,
	cin => \Add14~102\,
	sumout => \Add14~97_sumout\,
	cout => \Add14~98\);

-- Location: FF_X80_Y14_N23
\tmp_wait[4][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~97_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][27]~q\);

-- Location: LABCELL_X80_Y14_N24
\Add14~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~93_sumout\ = SUM(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][28]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~98\ ))
-- \Add14~94\ = CARRY(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][28]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_Mux130~0_combout\,
	dataf => \ALT_INV_tmp_wait[4][28]~q\,
	cin => \Add14~98\,
	sumout => \Add14~93_sumout\,
	cout => \Add14~94\);

-- Location: FF_X80_Y14_N26
\tmp_wait[4][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~93_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][28]~q\);

-- Location: LABCELL_X80_Y14_N27
\Add14~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~89_sumout\ = SUM(( (!\Equal5~6_combout\ & ((\tmp_wait[4][29]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~94\ ))
-- \Add14~90\ = CARRY(( (!\Equal5~6_combout\ & ((\tmp_wait[4][29]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( VCC ) + ( \Add14~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datab => \ALT_INV_Equal5~6_combout\,
	datad => \ALT_INV_tmp_wait[4][29]~q\,
	cin => \Add14~94\,
	sumout => \Add14~89_sumout\,
	cout => \Add14~90\);

-- Location: FF_X80_Y14_N29
\tmp_wait[4][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~89_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][29]~q\);

-- Location: LABCELL_X80_Y14_N30
\Add14~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~85_sumout\ = SUM(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][30]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~90\ ))
-- \Add14~86\ = CARRY(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][30]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_Mux130~0_combout\,
	dataf => \ALT_INV_tmp_wait[4][30]~q\,
	cin => \Add14~90\,
	sumout => \Add14~85_sumout\,
	cout => \Add14~86\);

-- Location: FF_X80_Y14_N32
\tmp_wait[4][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~85_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][30]~q\);

-- Location: LABCELL_X80_Y14_N33
\Add14~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~81_sumout\ = SUM(( VCC ) + ( (!\Equal5~6_combout\ & ((\tmp_wait[4][31]~q\))) # (\Equal5~6_combout\ & (\Mux130~0_combout\)) ) + ( \Add14~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	datab => \ALT_INV_Equal5~6_combout\,
	dataf => \ALT_INV_tmp_wait[4][31]~q\,
	cin => \Add14~86\,
	sumout => \Add14~81_sumout\);

-- Location: FF_X80_Y14_N35
\tmp_wait[4][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add14~81_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[4][31]~q\);

-- Location: LABCELL_X80_Y14_N36
\Equal5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = ( !\tmp_wait[4][29]~q\ & ( !\tmp_wait[0][0]~q\ & ( (!\tmp_wait[4][28]~q\ & (!\tmp_wait[4][30]~q\ & (!\tmp_wait[4][31]~q\ & !\tmp_wait[4][27]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[4][28]~q\,
	datab => \ALT_INV_tmp_wait[4][30]~q\,
	datac => \ALT_INV_tmp_wait[4][31]~q\,
	datad => \ALT_INV_tmp_wait[4][27]~q\,
	datae => \ALT_INV_tmp_wait[4][29]~q\,
	dataf => \ALT_INV_tmp_wait[0][0]~q\,
	combout => \Equal5~4_combout\);

-- Location: MLABCELL_X78_Y15_N15
\Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = ( !\tmp_wait[4][2]~q\ & ( !\tmp_wait[4][1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_tmp_wait[4][2]~q\,
	dataf => \ALT_INV_tmp_wait[4][1]~q\,
	combout => \Equal5~0_combout\);

-- Location: LABCELL_X80_Y14_N54
\Equal5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~6_combout\ = ( \Equal5~4_combout\ & ( \Equal5~0_combout\ & ( (\Equal5~1_combout\ & (\Equal5~5_combout\ & (\Equal5~3_combout\ & \Equal5~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal5~1_combout\,
	datab => \ALT_INV_Equal5~5_combout\,
	datac => \ALT_INV_Equal5~3_combout\,
	datad => \ALT_INV_Equal5~2_combout\,
	datae => \ALT_INV_Equal5~4_combout\,
	dataf => \ALT_INV_Equal5~0_combout\,
	combout => \Equal5~6_combout\);

-- Location: MLABCELL_X87_Y15_N21
\index[4][2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \index[4][2]~9_combout\ = ( \screen_end~input_o\ & ( \Equal5~6_combout\ & ( \enable~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enable~input_o\,
	datae => \ALT_INV_screen_end~input_o\,
	dataf => \ALT_INV_Equal5~6_combout\,
	combout => \index[4][2]~9_combout\);

-- Location: FF_X88_Y12_N32
\index[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add13~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[4][2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[4][0]~q\);

-- Location: LABCELL_X88_Y12_N33
\Add13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~5_sumout\ = SUM(( \index[4][1]~q\ ) + ( GND ) + ( \Add13~10\ ))
-- \Add13~6\ = CARRY(( \index[4][1]~q\ ) + ( GND ) + ( \Add13~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[4][1]~q\,
	cin => \Add13~10\,
	sumout => \Add13~5_sumout\,
	cout => \Add13~6\);

-- Location: FF_X88_Y12_N35
\index[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add13~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[4][2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[4][1]~q\);

-- Location: LABCELL_X88_Y12_N36
\Add13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~1_sumout\ = SUM(( \index[4][2]~q\ ) + ( GND ) + ( \Add13~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[4][2]~q\,
	cin => \Add13~6\,
	sumout => \Add13~1_sumout\);

-- Location: FF_X88_Y12_N38
\index[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add13~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[4][2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[4][2]~q\);

-- Location: LABCELL_X88_Y12_N45
\Mux130~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux130~0_combout\ = ( !\index[4][2]~q\ & ( \index[4][1]~q\ & ( !\index[4][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_index[4][0]~q\,
	datae => \ALT_INV_index[4][2]~q\,
	dataf => \ALT_INV_index[4][1]~q\,
	combout => \Mux130~0_combout\);

-- Location: MLABCELL_X87_Y15_N27
\note_length~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~16_combout\ = ( \Equal5~6_combout\ & ( \Mux130~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux130~0_combout\,
	dataf => \ALT_INV_Equal5~6_combout\,
	combout => \note_length~16_combout\);

-- Location: FF_X87_Y15_N28
\note_length[4][2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~16_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sclr => \ALT_INV_enable~input_o\,
	sload => \ALT_INV_screen_end~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[4][2]~reg0_q\);

-- Location: LABCELL_X85_Y15_N18
\note_length~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~17_combout\ = ( \Mux130~0_combout\ & ( (\enable~input_o\ & (\Equal5~6_combout\ & \screen_end~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datab => \ALT_INV_Equal5~6_combout\,
	datac => \ALT_INV_screen_end~input_o\,
	datae => \ALT_INV_Mux130~0_combout\,
	combout => \note_length~17_combout\);

-- Location: FF_X85_Y15_N1
\note_length[4][5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \note_length~17_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[4][5]~reg0_q\);

-- Location: FF_X85_Y15_N20
\note_length[4][6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~17_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[4][6]~reg0_q\);

-- Location: LABCELL_X85_Y15_N30
\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( \index[2][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add7~2\ = CARRY(( \index[2][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[2][0]~q\,
	cin => GND,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

-- Location: LABCELL_X83_Y13_N3
\Mux66~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = ( \index[2][1]~q\ ) # ( !\index[2][1]~q\ & ( (\song[0][11][31]~combout\ & \index[2][2]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_song[0][11][31]~combout\,
	datad => \ALT_INV_index[2][2]~q\,
	dataf => \ALT_INV_index[2][1]~q\,
	combout => \Mux66~0_combout\);

-- Location: LABCELL_X83_Y13_N18
\Mux91~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux91~0_combout\ = ( \song[0][11][5]~combout\ & ( !\index[2][1]~q\ ) ) # ( !\song[0][11][5]~combout\ & ( (!\index[2][2]~q\ & !\index[2][1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_index[2][2]~q\,
	datad => \ALT_INV_index[2][1]~q\,
	dataf => \ALT_INV_song[0][11][5]~combout\,
	combout => \Mux91~0_combout\);

-- Location: LABCELL_X83_Y15_N0
\Add8~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~126_cout\ = CARRY(( \tmp_wait[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tmp_wait[0][0]~q\,
	cin => GND,
	cout => \Add8~126_cout\);

-- Location: LABCELL_X83_Y15_N3
\Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~5_sumout\ = SUM(( \tmp_wait[2][1]~q\ ) + ( VCC ) + ( \Add8~126_cout\ ))
-- \Add8~6\ = CARRY(( \tmp_wait[2][1]~q\ ) + ( VCC ) + ( \Add8~126_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait[2][1]~q\,
	cin => \Add8~126_cout\,
	sumout => \Add8~5_sumout\,
	cout => \Add8~6\);

-- Location: FF_X83_Y15_N5
\tmp_wait[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][1]~q\);

-- Location: LABCELL_X83_Y15_N6
\Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~1_sumout\ = SUM(( VCC ) + ( (\tmp_wait[2][2]~q\) # (\Equal3~6_combout\) ) + ( \Add8~6\ ))
-- \Add8~2\ = CARRY(( VCC ) + ( (\tmp_wait[2][2]~q\) # (\Equal3~6_combout\) ) + ( \Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal3~6_combout\,
	dataf => \ALT_INV_tmp_wait[2][2]~q\,
	cin => \Add8~6\,
	sumout => \Add8~1_sumout\,
	cout => \Add8~2\);

-- Location: FF_X83_Y15_N8
\tmp_wait[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][2]~q\);

-- Location: LABCELL_X83_Y15_N9
\Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~29_sumout\ = SUM(( (!\Equal3~6_combout\ & (\tmp_wait[2][3]~q\)) # (\Equal3~6_combout\ & (((\index[2][0]~q\ & !\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~2\ ))
-- \Add8~30\ = CARRY(( (!\Equal3~6_combout\ & (\tmp_wait[2][3]~q\)) # (\Equal3~6_combout\ & (((\index[2][0]~q\ & !\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~6_combout\,
	datab => \ALT_INV_tmp_wait[2][3]~q\,
	datac => \ALT_INV_index[2][0]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~2\,
	sumout => \Add8~29_sumout\,
	cout => \Add8~30\);

-- Location: FF_X83_Y15_N11
\tmp_wait[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~29_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][3]~q\);

-- Location: LABCELL_X83_Y15_N12
\Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~25_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][4]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~30\ ))
-- \Add8~26\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][4]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][4]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~30\,
	sumout => \Add8~25_sumout\,
	cout => \Add8~26\);

-- Location: FF_X83_Y15_N14
\tmp_wait[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~25_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][4]~q\);

-- Location: LABCELL_X83_Y15_N15
\Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~21_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][5]~q\)))) # (\Equal3~6_combout\ & ((!\index[2][0]~q\) # ((!\Mux91~0_combout\)))) ) + ( VCC ) + ( \Add8~26\ ))
-- \Add8~22\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][5]~q\)))) # (\Equal3~6_combout\ & ((!\index[2][0]~q\) # ((!\Mux91~0_combout\)))) ) + ( VCC ) + ( \Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][5]~q\,
	datad => \ALT_INV_Mux91~0_combout\,
	cin => \Add8~26\,
	sumout => \Add8~21_sumout\,
	cout => \Add8~22\);

-- Location: FF_X83_Y15_N17
\tmp_wait[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~21_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][5]~q\);

-- Location: LABCELL_X83_Y15_N18
\Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~17_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][6]~q\)))) # (\Equal3~6_combout\ & ((!\index[2][0]~q\) # ((!\Mux91~0_combout\)))) ) + ( VCC ) + ( \Add8~22\ ))
-- \Add8~18\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][6]~q\)))) # (\Equal3~6_combout\ & ((!\index[2][0]~q\) # ((!\Mux91~0_combout\)))) ) + ( VCC ) + ( \Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][6]~q\,
	datad => \ALT_INV_Mux91~0_combout\,
	cin => \Add8~22\,
	sumout => \Add8~17_sumout\,
	cout => \Add8~18\);

-- Location: FF_X83_Y15_N20
\tmp_wait[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~17_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][6]~q\);

-- Location: LABCELL_X83_Y15_N21
\Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~13_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][7]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~18\ ))
-- \Add8~14\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][7]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][7]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~18\,
	sumout => \Add8~13_sumout\,
	cout => \Add8~14\);

-- Location: FF_X83_Y15_N23
\tmp_wait[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~13_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][7]~q\);

-- Location: LABCELL_X83_Y15_N24
\Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~9_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][8]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~14\ ))
-- \Add8~10\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][8]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][8]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~14\,
	sumout => \Add8~9_sumout\,
	cout => \Add8~10\);

-- Location: FF_X83_Y15_N26
\tmp_wait[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][8]~q\);

-- Location: LABCELL_X83_Y15_N27
\Add8~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~53_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][9]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~10\ ))
-- \Add8~54\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][9]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][9]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~10\,
	sumout => \Add8~53_sumout\,
	cout => \Add8~54\);

-- Location: FF_X83_Y15_N29
\tmp_wait[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~53_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][9]~q\);

-- Location: LABCELL_X83_Y15_N30
\Add8~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~49_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][10]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~54\ ))
-- \Add8~50\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][10]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][10]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~54\,
	sumout => \Add8~49_sumout\,
	cout => \Add8~50\);

-- Location: FF_X83_Y15_N32
\tmp_wait[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~49_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][10]~q\);

-- Location: LABCELL_X83_Y15_N33
\Add8~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~45_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][11]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~50\ ))
-- \Add8~46\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][11]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][11]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~50\,
	sumout => \Add8~45_sumout\,
	cout => \Add8~46\);

-- Location: FF_X83_Y15_N35
\tmp_wait[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~45_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][11]~q\);

-- Location: LABCELL_X83_Y15_N36
\Add8~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~41_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][12]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~46\ ))
-- \Add8~42\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][12]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][12]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~46\,
	sumout => \Add8~41_sumout\,
	cout => \Add8~42\);

-- Location: FF_X83_Y15_N38
\tmp_wait[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~41_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][12]~q\);

-- Location: LABCELL_X83_Y15_N39
\Add8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~37_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][13]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~42\ ))
-- \Add8~38\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][13]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][13]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~42\,
	sumout => \Add8~37_sumout\,
	cout => \Add8~38\);

-- Location: FF_X83_Y15_N41
\tmp_wait[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~37_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][13]~q\);

-- Location: LABCELL_X83_Y15_N42
\Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~33_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][14]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~38\ ))
-- \Add8~34\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][14]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][14]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~38\,
	sumout => \Add8~33_sumout\,
	cout => \Add8~34\);

-- Location: FF_X83_Y15_N44
\tmp_wait[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~33_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][14]~q\);

-- Location: LABCELL_X83_Y15_N45
\Add8~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~77_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][15]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~34\ ))
-- \Add8~78\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][15]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][15]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~34\,
	sumout => \Add8~77_sumout\,
	cout => \Add8~78\);

-- Location: FF_X83_Y15_N47
\tmp_wait[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~77_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][15]~q\);

-- Location: LABCELL_X83_Y15_N48
\Add8~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~73_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][16]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~78\ ))
-- \Add8~74\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][16]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][16]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~78\,
	sumout => \Add8~73_sumout\,
	cout => \Add8~74\);

-- Location: FF_X83_Y15_N50
\tmp_wait[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~73_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][16]~q\);

-- Location: LABCELL_X83_Y15_N51
\Add8~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~69_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][17]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~74\ ))
-- \Add8~70\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][17]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][17]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~74\,
	sumout => \Add8~69_sumout\,
	cout => \Add8~70\);

-- Location: FF_X83_Y15_N53
\tmp_wait[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~69_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][17]~q\);

-- Location: LABCELL_X83_Y15_N54
\Add8~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~65_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][18]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~70\ ))
-- \Add8~66\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][18]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][18]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~70\,
	sumout => \Add8~65_sumout\,
	cout => \Add8~66\);

-- Location: FF_X83_Y15_N56
\tmp_wait[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~65_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][18]~q\);

-- Location: LABCELL_X83_Y15_N57
\Add8~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~61_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][19]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~66\ ))
-- \Add8~62\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][19]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][0]~q\,
	datab => \ALT_INV_Equal3~6_combout\,
	datac => \ALT_INV_tmp_wait[2][19]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~66\,
	sumout => \Add8~61_sumout\,
	cout => \Add8~62\);

-- Location: FF_X83_Y15_N59
\tmp_wait[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~61_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][19]~q\);

-- Location: LABCELL_X83_Y14_N0
\Add8~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~57_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][20]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~62\ ))
-- \Add8~58\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][20]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~6_combout\,
	datab => \ALT_INV_index[2][0]~q\,
	datac => \ALT_INV_tmp_wait[2][20]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~62\,
	sumout => \Add8~57_sumout\,
	cout => \Add8~58\);

-- Location: FF_X83_Y14_N2
\tmp_wait[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~57_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][20]~q\);

-- Location: LABCELL_X83_Y14_N3
\Add8~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~121_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][21]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~58\ ))
-- \Add8~122\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][21]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~6_combout\,
	datab => \ALT_INV_index[2][0]~q\,
	datac => \ALT_INV_tmp_wait[2][21]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~58\,
	sumout => \Add8~121_sumout\,
	cout => \Add8~122\);

-- Location: FF_X83_Y14_N5
\tmp_wait[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~121_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][21]~q\);

-- Location: LABCELL_X83_Y14_N6
\Add8~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~117_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][22]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~122\ ))
-- \Add8~118\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][22]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~6_combout\,
	datab => \ALT_INV_index[2][0]~q\,
	datac => \ALT_INV_tmp_wait[2][22]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~122\,
	sumout => \Add8~117_sumout\,
	cout => \Add8~118\);

-- Location: FF_X83_Y14_N8
\tmp_wait[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~117_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][22]~q\);

-- Location: LABCELL_X83_Y14_N9
\Add8~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~113_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][23]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~118\ ))
-- \Add8~114\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][23]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~6_combout\,
	datab => \ALT_INV_index[2][0]~q\,
	datac => \ALT_INV_tmp_wait[2][23]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~118\,
	sumout => \Add8~113_sumout\,
	cout => \Add8~114\);

-- Location: FF_X83_Y14_N11
\tmp_wait[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~113_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][23]~q\);

-- Location: LABCELL_X83_Y14_N12
\Add8~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~109_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][24]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~114\ ))
-- \Add8~110\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][24]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~6_combout\,
	datab => \ALT_INV_index[2][0]~q\,
	datac => \ALT_INV_tmp_wait[2][24]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~114\,
	sumout => \Add8~109_sumout\,
	cout => \Add8~110\);

-- Location: FF_X83_Y14_N14
\tmp_wait[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~109_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][24]~q\);

-- Location: LABCELL_X83_Y14_N15
\Add8~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~105_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][25]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~110\ ))
-- \Add8~106\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][25]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~6_combout\,
	datab => \ALT_INV_index[2][0]~q\,
	datac => \ALT_INV_tmp_wait[2][25]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~110\,
	sumout => \Add8~105_sumout\,
	cout => \Add8~106\);

-- Location: FF_X83_Y14_N17
\tmp_wait[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~105_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][25]~q\);

-- Location: LABCELL_X83_Y14_N18
\Add8~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~101_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][26]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~106\ ))
-- \Add8~102\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][26]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~6_combout\,
	datab => \ALT_INV_index[2][0]~q\,
	datac => \ALT_INV_tmp_wait[2][26]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~106\,
	sumout => \Add8~101_sumout\,
	cout => \Add8~102\);

-- Location: FF_X83_Y14_N20
\tmp_wait[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~101_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][26]~q\);

-- Location: LABCELL_X83_Y14_N54
\Equal3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = ( !\tmp_wait[2][24]~q\ & ( !\tmp_wait[2][25]~q\ & ( (!\tmp_wait[2][21]~q\ & (!\tmp_wait[2][22]~q\ & (!\tmp_wait[2][26]~q\ & !\tmp_wait[2][23]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[2][21]~q\,
	datab => \ALT_INV_tmp_wait[2][22]~q\,
	datac => \ALT_INV_tmp_wait[2][26]~q\,
	datad => \ALT_INV_tmp_wait[2][23]~q\,
	datae => \ALT_INV_tmp_wait[2][24]~q\,
	dataf => \ALT_INV_tmp_wait[2][25]~q\,
	combout => \Equal3~5_combout\);

-- Location: MLABCELL_X84_Y14_N15
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( !\tmp_wait[2][1]~q\ & ( !\tmp_wait[2][2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_tmp_wait[2][1]~q\,
	dataf => \ALT_INV_tmp_wait[2][2]~q\,
	combout => \Equal3~0_combout\);

-- Location: MLABCELL_X84_Y14_N24
\Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = ( !\tmp_wait[2][10]~q\ & ( !\tmp_wait[2][9]~q\ & ( (!\tmp_wait[2][13]~q\ & (!\tmp_wait[2][14]~q\ & (!\tmp_wait[2][11]~q\ & !\tmp_wait[2][12]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[2][13]~q\,
	datab => \ALT_INV_tmp_wait[2][14]~q\,
	datac => \ALT_INV_tmp_wait[2][11]~q\,
	datad => \ALT_INV_tmp_wait[2][12]~q\,
	datae => \ALT_INV_tmp_wait[2][10]~q\,
	dataf => \ALT_INV_tmp_wait[2][9]~q\,
	combout => \Equal3~2_combout\);

-- Location: LABCELL_X83_Y14_N21
\Add8~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~97_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][27]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~102\ ))
-- \Add8~98\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][27]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~6_combout\,
	datab => \ALT_INV_index[2][0]~q\,
	datac => \ALT_INV_tmp_wait[2][27]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~102\,
	sumout => \Add8~97_sumout\,
	cout => \Add8~98\);

-- Location: FF_X83_Y14_N23
\tmp_wait[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~97_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][27]~q\);

-- Location: LABCELL_X83_Y14_N24
\Add8~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~93_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][28]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~98\ ))
-- \Add8~94\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][28]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~6_combout\,
	datab => \ALT_INV_index[2][0]~q\,
	datac => \ALT_INV_tmp_wait[2][28]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~98\,
	sumout => \Add8~93_sumout\,
	cout => \Add8~94\);

-- Location: FF_X83_Y14_N26
\tmp_wait[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~93_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][28]~q\);

-- Location: LABCELL_X83_Y14_N27
\Add8~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~89_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][29]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~94\ ))
-- \Add8~90\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][29]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~6_combout\,
	datab => \ALT_INV_index[2][0]~q\,
	datac => \ALT_INV_tmp_wait[2][29]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~94\,
	sumout => \Add8~89_sumout\,
	cout => \Add8~90\);

-- Location: FF_X83_Y14_N29
\tmp_wait[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~89_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][29]~q\);

-- Location: LABCELL_X83_Y14_N30
\Add8~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~85_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][30]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~90\ ))
-- \Add8~86\ = CARRY(( (!\Equal3~6_combout\ & (((\tmp_wait[2][30]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~6_combout\,
	datab => \ALT_INV_index[2][0]~q\,
	datac => \ALT_INV_tmp_wait[2][30]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~90\,
	sumout => \Add8~85_sumout\,
	cout => \Add8~86\);

-- Location: FF_X83_Y14_N32
\tmp_wait[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~85_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][30]~q\);

-- Location: LABCELL_X83_Y14_N33
\Add8~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~81_sumout\ = SUM(( (!\Equal3~6_combout\ & (((\tmp_wait[2][31]~q\)))) # (\Equal3~6_combout\ & (\index[2][0]~q\ & ((!\Mux66~0_combout\)))) ) + ( VCC ) + ( \Add8~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~6_combout\,
	datab => \ALT_INV_index[2][0]~q\,
	datac => \ALT_INV_tmp_wait[2][31]~q\,
	datad => \ALT_INV_Mux66~0_combout\,
	cin => \Add8~86\,
	sumout => \Add8~81_sumout\);

-- Location: FF_X83_Y14_N35
\tmp_wait[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add8~81_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[2][31]~q\);

-- Location: LABCELL_X83_Y14_N36
\Equal3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = ( !\tmp_wait[2][29]~q\ & ( !\tmp_wait[0][0]~q\ & ( (!\tmp_wait[2][31]~q\ & (!\tmp_wait[2][30]~q\ & (!\tmp_wait[2][28]~q\ & !\tmp_wait[2][27]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[2][31]~q\,
	datab => \ALT_INV_tmp_wait[2][30]~q\,
	datac => \ALT_INV_tmp_wait[2][28]~q\,
	datad => \ALT_INV_tmp_wait[2][27]~q\,
	datae => \ALT_INV_tmp_wait[2][29]~q\,
	dataf => \ALT_INV_tmp_wait[0][0]~q\,
	combout => \Equal3~4_combout\);

-- Location: MLABCELL_X84_Y14_N54
\Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = ( !\tmp_wait[2][18]~q\ & ( !\tmp_wait[2][19]~q\ & ( (!\tmp_wait[2][15]~q\ & (!\tmp_wait[2][20]~q\ & (!\tmp_wait[2][16]~q\ & !\tmp_wait[2][17]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[2][15]~q\,
	datab => \ALT_INV_tmp_wait[2][20]~q\,
	datac => \ALT_INV_tmp_wait[2][16]~q\,
	datad => \ALT_INV_tmp_wait[2][17]~q\,
	datae => \ALT_INV_tmp_wait[2][18]~q\,
	dataf => \ALT_INV_tmp_wait[2][19]~q\,
	combout => \Equal3~3_combout\);

-- Location: MLABCELL_X84_Y14_N18
\Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( !\tmp_wait[2][8]~q\ & ( !\tmp_wait[2][7]~q\ & ( (!\tmp_wait[2][5]~q\ & (!\tmp_wait[2][6]~q\ & (!\tmp_wait[2][3]~q\ & !\tmp_wait[2][4]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[2][5]~q\,
	datab => \ALT_INV_tmp_wait[2][6]~q\,
	datac => \ALT_INV_tmp_wait[2][3]~q\,
	datad => \ALT_INV_tmp_wait[2][4]~q\,
	datae => \ALT_INV_tmp_wait[2][8]~q\,
	dataf => \ALT_INV_tmp_wait[2][7]~q\,
	combout => \Equal3~1_combout\);

-- Location: MLABCELL_X84_Y14_N0
\Equal3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = ( \Equal3~3_combout\ & ( \Equal3~1_combout\ & ( (\Equal3~5_combout\ & (\Equal3~0_combout\ & (\Equal3~2_combout\ & \Equal3~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~5_combout\,
	datab => \ALT_INV_Equal3~0_combout\,
	datac => \ALT_INV_Equal3~2_combout\,
	datad => \ALT_INV_Equal3~4_combout\,
	datae => \ALT_INV_Equal3~3_combout\,
	dataf => \ALT_INV_Equal3~1_combout\,
	combout => \Equal3~6_combout\);

-- Location: MLABCELL_X87_Y15_N12
\index[2][0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \index[2][0]~10_combout\ = ( \screen_end~input_o\ & ( \Equal3~6_combout\ & ( \enable~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable~input_o\,
	datae => \ALT_INV_screen_end~input_o\,
	dataf => \ALT_INV_Equal3~6_combout\,
	combout => \index[2][0]~10_combout\);

-- Location: FF_X85_Y15_N32
\index[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add7~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[2][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[2][0]~q\);

-- Location: LABCELL_X85_Y15_N33
\Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( \index[2][1]~q\ ) + ( GND ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( \index[2][1]~q\ ) + ( GND ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[2][1]~q\,
	cin => \Add7~2\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

-- Location: FF_X85_Y15_N35
\index[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add7~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[2][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[2][1]~q\);

-- Location: LABCELL_X85_Y15_N36
\Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( \index[2][2]~q\ ) + ( GND ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[2][2]~q\,
	cin => \Add7~6\,
	sumout => \Add7~9_sumout\);

-- Location: FF_X85_Y15_N38
\index[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add7~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[2][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[2][2]~q\);

-- Location: MLABCELL_X84_Y15_N42
\note_length~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~18_combout\ = ( \index[2][0]~q\ & ( (!\index[2][1]~q\ & (\Equal3~6_combout\ & ((!\index[2][2]~q\) # (!\song[0][11][31]~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_index[2][2]~q\,
	datab => \ALT_INV_song[0][11][31]~combout\,
	datac => \ALT_INV_index[2][1]~q\,
	datad => \ALT_INV_Equal3~6_combout\,
	dataf => \ALT_INV_index[2][0]~q\,
	combout => \note_length~18_combout\);

-- Location: FF_X84_Y15_N43
\note_length[2][2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~18_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sclr => \ALT_INV_enable~input_o\,
	sload => \ALT_INV_screen_end~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[2][2]~reg0_q\);

-- Location: MLABCELL_X84_Y14_N9
\note_length~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~19_combout\ = ( \Equal3~6_combout\ & ( \index[2][0]~q\ & ( (\Mux91~0_combout\ & (!\Mux66~0_combout\ & (\screen_end~input_o\ & \enable~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux91~0_combout\,
	datab => \ALT_INV_Mux66~0_combout\,
	datac => \ALT_INV_screen_end~input_o\,
	datad => \ALT_INV_enable~input_o\,
	datae => \ALT_INV_Equal3~6_combout\,
	dataf => \ALT_INV_index[2][0]~q\,
	combout => \note_length~19_combout\);

-- Location: FF_X84_Y12_N40
\note_length[2][5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \note_length~19_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[2][5]~reg0_q\);

-- Location: FF_X84_Y14_N10
\note_length[2][6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~19_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[2][6]~reg0_q\);

-- Location: MLABCELL_X84_Y16_N30
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \index[0][0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add1~10\ = CARRY(( \index[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[0][0]~q\,
	cin => GND,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: MLABCELL_X84_Y16_N57
\index[0][2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \index[0][2]~11_combout\ = ( \Equal1~6_combout\ & ( (\enable~input_o\ & \screen_end~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datad => \ALT_INV_screen_end~input_o\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \index[0][2]~11_combout\);

-- Location: FF_X84_Y16_N32
\index[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[0][0]~q\);

-- Location: MLABCELL_X84_Y16_N33
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \index[0][1]~q\ ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( \index[0][1]~q\ ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[0][1]~q\,
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X84_Y16_N34
\index[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[0][1]~q\);

-- Location: MLABCELL_X84_Y16_N36
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \index[0][2]~q\ ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_index[0][2]~q\,
	cin => \Add1~6\,
	sumout => \Add1~1_sumout\);

-- Location: FF_X84_Y16_N38
\index[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index[0][2]~q\);

-- Location: MLABCELL_X84_Y16_N45
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !\index[0][2]~q\ & ( !\index[0][1]~q\ & ( !\index[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_index[0][0]~q\,
	datae => \ALT_INV_index[0][2]~q\,
	dataf => \ALT_INV_index[0][1]~q\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X81_Y15_N0
\Add2~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~126_cout\ = CARRY(( \tmp_wait[0][0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tmp_wait[0][0]~q\,
	cin => GND,
	cout => \Add2~126_cout\);

-- Location: LABCELL_X81_Y15_N3
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \tmp_wait[0][1]~q\ ) + ( VCC ) + ( \Add2~126_cout\ ))
-- \Add2~2\ = CARRY(( \tmp_wait[0][1]~q\ ) + ( VCC ) + ( \Add2~126_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_tmp_wait[0][1]~q\,
	cin => \Add2~126_cout\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: FF_X81_Y15_N5
\tmp_wait[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][1]~q\);

-- Location: LABCELL_X81_Y15_N6
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( VCC ) + ( (\tmp_wait[0][2]~q\) # (\Equal1~6_combout\) ) + ( \Add2~2\ ))
-- \Add2~26\ = CARRY(( VCC ) + ( (\tmp_wait[0][2]~q\) # (\Equal1~6_combout\) ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_tmp_wait[0][2]~q\,
	cin => \Add2~2\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X81_Y15_N8
\tmp_wait[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][2]~q\);

-- Location: LABCELL_X81_Y15_N9
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][3]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~26\ ))
-- \Add2~22\ = CARRY(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][3]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_tmp_wait[0][3]~q\,
	cin => \Add2~26\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X81_Y15_N11
\tmp_wait[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][3]~q\);

-- Location: LABCELL_X81_Y15_N12
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][4]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~22\ ))
-- \Add2~18\ = CARRY(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][4]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_tmp_wait[0][4]~q\,
	cin => \Add2~22\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X81_Y15_N14
\tmp_wait[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][4]~q\);

-- Location: LABCELL_X81_Y15_N15
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][5]~q\))) # (\Equal1~6_combout\ & (!\Mux2~0_combout\)) ) + ( \Add2~18\ ))
-- \Add2~14\ = CARRY(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][5]~q\))) # (\Equal1~6_combout\ & (!\Mux2~0_combout\)) ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011110000010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_tmp_wait[0][5]~q\,
	cin => \Add2~18\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X81_Y15_N17
\tmp_wait[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][5]~q\);

-- Location: LABCELL_X81_Y15_N18
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][6]~q\))) # (\Equal1~6_combout\ & (!\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~14\ ))
-- \Add2~10\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][6]~q\))) # (\Equal1~6_combout\ & (!\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_tmp_wait[0][6]~q\,
	cin => \Add2~14\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X81_Y15_N20
\tmp_wait[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][6]~q\);

-- Location: LABCELL_X81_Y15_N21
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][7]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~10\ ))
-- \Add2~6\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][7]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_tmp_wait[0][7]~q\,
	cin => \Add2~10\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X81_Y15_N23
\tmp_wait[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][7]~q\);

-- Location: LABCELL_X81_Y15_N24
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][8]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~6\ ))
-- \Add2~50\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][8]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_tmp_wait[0][8]~q\,
	cin => \Add2~6\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X81_Y15_N26
\tmp_wait[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][8]~q\);

-- Location: LABCELL_X81_Y15_N27
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][9]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~50\ ))
-- \Add2~46\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][9]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_tmp_wait[0][9]~q\,
	cin => \Add2~50\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X81_Y15_N29
\tmp_wait[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][9]~q\);

-- Location: LABCELL_X81_Y15_N30
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][10]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~46\ ))
-- \Add2~42\ = CARRY(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][10]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_tmp_wait[0][10]~q\,
	cin => \Add2~46\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X81_Y15_N32
\tmp_wait[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][10]~q\);

-- Location: LABCELL_X81_Y15_N33
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][11]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~42\ ))
-- \Add2~38\ = CARRY(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][11]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_tmp_wait[0][11]~q\,
	cin => \Add2~42\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X81_Y15_N35
\tmp_wait[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][11]~q\);

-- Location: LABCELL_X81_Y15_N36
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][12]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~38\ ))
-- \Add2~34\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][12]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_tmp_wait[0][12]~q\,
	cin => \Add2~38\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X81_Y15_N38
\tmp_wait[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][12]~q\);

-- Location: LABCELL_X81_Y15_N39
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][13]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~34\ ))
-- \Add2~30\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][13]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_tmp_wait[0][13]~q\,
	cin => \Add2~34\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X81_Y15_N41
\tmp_wait[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][13]~q\);

-- Location: LABCELL_X81_Y15_N42
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][14]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~30\ ))
-- \Add2~74\ = CARRY(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][14]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_tmp_wait[0][14]~q\,
	cin => \Add2~30\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X81_Y15_N44
\tmp_wait[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~73_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][14]~q\);

-- Location: LABCELL_X81_Y15_N45
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][15]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~74\ ))
-- \Add2~70\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][15]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_tmp_wait[0][15]~q\,
	cin => \Add2~74\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X81_Y15_N47
\tmp_wait[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~69_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][15]~q\);

-- Location: LABCELL_X81_Y15_N48
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][16]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~70\ ))
-- \Add2~66\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][16]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_tmp_wait[0][16]~q\,
	cin => \Add2~70\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X81_Y15_N50
\tmp_wait[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~65_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][16]~q\);

-- Location: LABCELL_X81_Y15_N51
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][17]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~66\ ))
-- \Add2~62\ = CARRY(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][17]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_tmp_wait[0][17]~q\,
	cin => \Add2~66\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X81_Y15_N53
\tmp_wait[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~61_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][17]~q\);

-- Location: LABCELL_X81_Y15_N54
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][18]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~62\ ))
-- \Add2~58\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][18]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_tmp_wait[0][18]~q\,
	cin => \Add2~62\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X81_Y15_N56
\tmp_wait[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~57_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][18]~q\);

-- Location: LABCELL_X81_Y15_N57
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][19]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~58\ ))
-- \Add2~54\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][19]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_tmp_wait[0][19]~q\,
	cin => \Add2~58\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X81_Y15_N59
\tmp_wait[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][19]~q\);

-- Location: LABCELL_X81_Y14_N0
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][20]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~54\ ))
-- \Add2~122\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][20]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	datad => \ALT_INV_tmp_wait[0][20]~q\,
	cin => \Add2~54\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: FF_X81_Y14_N2
\tmp_wait[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~121_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][20]~q\);

-- Location: LABCELL_X81_Y14_N3
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][21]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~122\ ))
-- \Add2~118\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][21]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_tmp_wait[0][21]~q\,
	cin => \Add2~122\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: FF_X81_Y14_N5
\tmp_wait[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~117_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][21]~q\);

-- Location: LABCELL_X81_Y14_N6
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][22]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~118\ ))
-- \Add2~114\ = CARRY(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][22]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_tmp_wait[0][22]~q\,
	cin => \Add2~118\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: FF_X81_Y14_N8
\tmp_wait[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~113_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][22]~q\);

-- Location: LABCELL_X81_Y14_N9
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][23]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~114\ ))
-- \Add2~110\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][23]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_tmp_wait[0][23]~q\,
	cin => \Add2~114\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: FF_X81_Y14_N11
\tmp_wait[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~109_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][23]~q\);

-- Location: LABCELL_X81_Y14_N12
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][24]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~110\ ))
-- \Add2~106\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][24]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	datad => \ALT_INV_tmp_wait[0][24]~q\,
	cin => \Add2~110\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: FF_X81_Y14_N14
\tmp_wait[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~105_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][24]~q\);

-- Location: LABCELL_X81_Y14_N15
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][25]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~106\ ))
-- \Add2~102\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][25]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_tmp_wait[0][25]~q\,
	cin => \Add2~106\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: FF_X81_Y14_N17
\tmp_wait[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~101_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][25]~q\);

-- Location: LABCELL_X81_Y14_N48
\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( !\tmp_wait[0][24]~q\ & ( !\tmp_wait[0][23]~q\ & ( (!\tmp_wait[0][21]~q\ & (!\tmp_wait[0][22]~q\ & (!\tmp_wait[0][20]~q\ & !\tmp_wait[0][25]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[0][21]~q\,
	datab => \ALT_INV_tmp_wait[0][22]~q\,
	datac => \ALT_INV_tmp_wait[0][20]~q\,
	datad => \ALT_INV_tmp_wait[0][25]~q\,
	datae => \ALT_INV_tmp_wait[0][24]~q\,
	dataf => \ALT_INV_tmp_wait[0][23]~q\,
	combout => \Equal1~5_combout\);

-- Location: LABCELL_X81_Y14_N42
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !\tmp_wait[0][14]~q\ & ( !\tmp_wait[0][19]~q\ & ( (!\tmp_wait[0][15]~q\ & (!\tmp_wait[0][17]~q\ & (!\tmp_wait[0][18]~q\ & !\tmp_wait[0][16]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[0][15]~q\,
	datab => \ALT_INV_tmp_wait[0][17]~q\,
	datac => \ALT_INV_tmp_wait[0][18]~q\,
	datad => \ALT_INV_tmp_wait[0][16]~q\,
	datae => \ALT_INV_tmp_wait[0][14]~q\,
	dataf => \ALT_INV_tmp_wait[0][19]~q\,
	combout => \Equal1~3_combout\);

-- Location: MLABCELL_X84_Y14_N30
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\tmp_wait[0][1]~q\ & ( !\tmp_wait[0][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tmp_wait[0][0]~q\,
	dataf => \ALT_INV_tmp_wait[0][1]~q\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X81_Y14_N36
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !\tmp_wait[0][7]~q\ & ( !\tmp_wait[0][5]~q\ & ( (!\tmp_wait[0][2]~q\ & (!\tmp_wait[0][4]~q\ & (!\tmp_wait[0][6]~q\ & !\tmp_wait[0][3]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[0][2]~q\,
	datab => \ALT_INV_tmp_wait[0][4]~q\,
	datac => \ALT_INV_tmp_wait[0][6]~q\,
	datad => \ALT_INV_tmp_wait[0][3]~q\,
	datae => \ALT_INV_tmp_wait[0][7]~q\,
	dataf => \ALT_INV_tmp_wait[0][5]~q\,
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X81_Y14_N18
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][26]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~102\ ))
-- \Add2~98\ = CARRY(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][26]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_tmp_wait[0][26]~q\,
	cin => \Add2~102\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: FF_X81_Y14_N20
\tmp_wait[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~97_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][26]~q\);

-- Location: LABCELL_X81_Y14_N21
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][27]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~98\ ))
-- \Add2~94\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][27]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_tmp_wait[0][27]~q\,
	cin => \Add2~98\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: FF_X81_Y14_N23
\tmp_wait[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~93_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][27]~q\);

-- Location: LABCELL_X81_Y14_N24
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][28]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~94\ ))
-- \Add2~90\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][28]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_tmp_wait[0][28]~q\,
	cin => \Add2~94\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: FF_X81_Y14_N26
\tmp_wait[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~89_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][28]~q\);

-- Location: LABCELL_X81_Y14_N27
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( (!\Equal1~6_combout\ & ((\tmp_wait[0][29]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~90\ ))
-- \Add2~86\ = CARRY(( (!\Equal1~6_combout\ & ((\tmp_wait[0][29]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( VCC ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_tmp_wait[0][29]~q\,
	cin => \Add2~90\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: FF_X81_Y14_N29
\tmp_wait[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~85_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][29]~q\);

-- Location: LABCELL_X81_Y14_N30
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][30]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~86\ ))
-- \Add2~82\ = CARRY(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][30]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_tmp_wait[0][30]~q\,
	cin => \Add2~86\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: FF_X81_Y14_N32
\tmp_wait[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~81_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][30]~q\);

-- Location: LABCELL_X81_Y14_N33
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( VCC ) + ( (!\Equal1~6_combout\ & ((\tmp_wait[0][31]~q\))) # (\Equal1~6_combout\ & (\Mux2~0_combout\)) ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_tmp_wait[0][31]~q\,
	cin => \Add2~82\,
	sumout => \Add2~77_sumout\);

-- Location: FF_X81_Y14_N35
\tmp_wait[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~77_sumout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \index[0][7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tmp_wait[0][31]~q\);

-- Location: LABCELL_X80_Y13_N54
\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( !\tmp_wait[0][30]~q\ & ( !\tmp_wait[0][31]~q\ & ( (!\tmp_wait[0][27]~q\ & (!\tmp_wait[0][28]~q\ & (!\tmp_wait[0][26]~q\ & !\tmp_wait[0][29]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[0][27]~q\,
	datab => \ALT_INV_tmp_wait[0][28]~q\,
	datac => \ALT_INV_tmp_wait[0][26]~q\,
	datad => \ALT_INV_tmp_wait[0][29]~q\,
	datae => \ALT_INV_tmp_wait[0][30]~q\,
	dataf => \ALT_INV_tmp_wait[0][31]~q\,
	combout => \Equal1~4_combout\);

-- Location: LABCELL_X80_Y13_N48
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !\tmp_wait[0][9]~q\ & ( !\tmp_wait[0][8]~q\ & ( (!\tmp_wait[0][10]~q\ & (!\tmp_wait[0][12]~q\ & (!\tmp_wait[0][11]~q\ & !\tmp_wait[0][13]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tmp_wait[0][10]~q\,
	datab => \ALT_INV_tmp_wait[0][12]~q\,
	datac => \ALT_INV_tmp_wait[0][11]~q\,
	datad => \ALT_INV_tmp_wait[0][13]~q\,
	datae => \ALT_INV_tmp_wait[0][9]~q\,
	dataf => \ALT_INV_tmp_wait[0][8]~q\,
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X81_Y14_N54
\Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~4_combout\ & ( \Equal1~2_combout\ & ( (\Equal1~5_combout\ & (\Equal1~3_combout\ & (\Equal1~0_combout\ & \Equal1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~5_combout\,
	datab => \ALT_INV_Equal1~3_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	datae => \ALT_INV_Equal1~4_combout\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \Equal1~6_combout\);

-- Location: LABCELL_X85_Y16_N39
\note_length~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~20_combout\ = ( \Mux2~0_combout\ & ( \Equal1~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \note_length~20_combout\);

-- Location: FF_X85_Y16_N40
\note_length[0][2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~20_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	sclr => \ALT_INV_enable~input_o\,
	sload => \ALT_INV_screen_end~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[0][2]~reg0_q\);

-- Location: MLABCELL_X84_Y16_N18
\note_length~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length~21_combout\ = ( \Mux2~0_combout\ & ( (\enable~input_o\ & (\Equal1~6_combout\ & \screen_end~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datab => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_screen_end~input_o\,
	datae => \ALT_INV_Mux2~0_combout\,
	combout => \note_length~21_combout\);

-- Location: LABCELL_X85_Y15_N48
\note_length[0][5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \note_length[0][5]~reg0feeder_combout\ = ( \note_length~21_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_note_length~21_combout\,
	combout => \note_length[0][5]~reg0feeder_combout\);

-- Location: FF_X85_Y15_N49
\note_length[0][5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length[0][5]~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[0][5]~reg0_q\);

-- Location: FF_X84_Y16_N20
\note_length[0][6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \note_length~21_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_length[0][6]~reg0_q\);
END structure;


