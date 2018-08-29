	--------------------------------------
-- SinTable.vhd
-- Written by Gadi and Eran Tuchman.
-- All rights reserved, Copyright 2009
--------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all ;

entity testSong is
port(
  CLK     					: in std_logic;
  resetN 					: in std_logic;
  screen_end    			: in std_logic;
  finish		       		: out std_logic;
  note_length       		: out integer
);
end testSong;

architecture arch of testSong is
	constant song_len 		: integer := 10 ;

	type table_type is array(0 to song_len - 1) of integer;
	signal song_table				: table_type;
begin
 
   
	process(resetN, CLK)
		constant song1 : table_type := (1000,-50, 300, -100, 300, -100, 300, -300, 1000, -200);
		--constant song2 : table_type := (-50, 50, -100, 45, -5, 85, -15, 35, -15, 50);
		
		
		variable tmp_wait : integer := 0;
		variable index		: integer := 0;
	begin

		if (resetN='0') then
			note_length <= 0;
			tmp_wait := 0;
			index := 0;
		elsif(rising_edge(CLK)) then
			note_length <= 0;
			if screen_end = '1' then
				if index = song_len or song1(index) = -9999 then 	--end of song
					finish <= '1';
				else
					finish <= '0';
					if tmp_wait = 0 and song1(index) <= 0 then		-- no play for tmp_wait screen time
						tmp_wait := -song1(index);
						index := index + 1;
					elsif tmp_wait = 0 then  -- play for tmp_wait screen time
						note_length <= song1(index);
						tmp_wait := song1(index);
						index := index + 1;
					end if;
					
					tmp_wait := tmp_wait - 1; 				--incriment counter length
				end if;
			end if;
		end if;
	end process;
end arch;