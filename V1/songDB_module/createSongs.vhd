	--------------------------------------
-- SinTable.vhd
-- Written by Gadi and Eran Tuchman.
-- All rights reserved, Copyright 2009
--------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all ;

library work;
use work.pkg.all;


package pkg is
  type noteArr is array (0 to 12) of std_logic_vector(7 downto 0);
end package;

package body pkg is
end package body;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all ;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
library work;
use work.pkg.all;

entity createSongs is
port(
  CLK     						: in std_logic;
  resetN 						: in std_logic;
  enable 						: in std_logic;
  screen_end    				: in std_logic;
  song_choose    				: in std_logic_vector(1 downto 0);
  speedNotes					: in integer;
  note_length       			: out noteArr
);
end createSongs;

architecture arch of createSongs is
	type song_type is array (0 to 7 , 0 to 12) of integer;
	constant song0 : song_type := (
		(100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100),
		(-100, -100, 100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100),
		(-100, -100, -100, -100, 100, -100, -100, -100, -100, -100, -100, -100, -100),
		(-100, -100, -100, -100, -100, 100, -100, -100, -100, -100, -100, -100, -100),
		(-100, -100, -100, -100, -100, -100, -100, 100, -100, -100, -100, -100, -100),
		(-100, -100, -100, -100, -100, -100, -100, -100, -100, 100, -100, -100, -100),
		(-100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, 100, -100),
		(-100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, 100)
	);
	constant song1 : song_type := (
		(100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100,  100, -100),
		(-100, -100, 100, -100, -100, -100,  100, -100, -100, -100,  100, -100, -100),
		(-100, -100, -100, -100, 100, -100, -100, -100, -100, -100, -100, -100, -100),
		(-100, -100, -100, -100, -100, 100, -100, -100,  100, -100, -100, -100, -100),
		(-100, -100, -100, -100, -100, -100, -100, 100, -100, -100, -100, -100, -100),
		(-100, -100,  100, -100, -100, -100, -100, -100, -100, 100, -100, -100, -100),
		(-100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, 100, -100),
		(-100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, 100, 100)
	);
	
	
begin
 
   
	process(resetN, CLK)
		type tmpArr is array (0 to 12) of integer;
		variable tmp_wait : tmpArr := (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		variable index : tmpArr := (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		variable tmp_song  : std_logic_vector(1 downto 0);
		variable song : song_type;
		variable count : integer;
	begin

		if (resetN='0' or tmp_song /= song_choose) then
			for i in 0 to 12 loop
				index(i) := 0;
				tmp_wait(i) := 0;
				note_length(i) <= (others => '0');
				count := 0;
			end loop;
			tmp_song := song_choose;
			
			case song_choose is
				when "00" => song := song0;
				when "01" => song := song1;
				when others => song := song0;
			end case;
			
		elsif(rising_edge(CLK)) then
		
			for i in 0 to 12 loop		--clear all out length
				note_length(i) <= (others => '0');
			end loop;	
				
			
			if enable = '1' then
				if screen_end = '1'  then
					count := count + 1;
					if count = speedNotes then
						count := 0;
						for i in 0 to 12 loop
							if tmp_wait(i) = 0 and song(index(i),i) <= 0 then
								tmp_wait(i) := -song(index(i),i);
								index(i) := index(i) + 1;
							elsif tmp_wait(i) = 0 then
								note_length(i) <= conv_std_logic_vector(song(index(i),i),8);
								tmp_wait(i) := -song(index(i),i);
								index(i) := index(i) + 1;
							end if;
							tmp_wait(i) := tmp_wait(i) - 1;
						end loop;
					end if;
				end if;
			else
				for i in 0 to 12 loop
					index(i) := 0;
					tmp_wait(i) := 0;
					note_length(i) <= (others => '0');
				end loop;
			end if;
		end if;
	end process;
end arch;