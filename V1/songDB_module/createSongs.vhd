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
  metronom_sw	    			: in std_logic;
  speedNotes					: in integer;
  note_length       			: out noteArr;
  metronon_enable       	: out std_logic
);
end createSongs;

architecture arch of createSongs is
	constant song_size : integer := 8;
	
	type song_type is array (0 to song_size - 1 , 0 to 12) of integer;
	constant song1 : song_type := (
		(57, -123, -23, 132, -100, 12, -100, -100, -100, -100, -100, -100, -100),
		(-100, -100, 100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100),
		(-100, -100, -100, -100, 35, -100, -100, -100, -100, -100, -100, -100, -100),
		(-100, 40, -100, -100, -100, 100, -100, 32, -100, -100, -100, -100, -100),
		(-100, -100, -100, -100, -100, -100, -100, 100, -100, -100, -100, -100, -100),
		(-100, -24, -100, 1, -100, -100, -100, -100, -100, 100, -100, -100, -100),
		(-100, -100, -100, -100, -100, -100, 28, -100, -100, -100, -100, 100, -100),
		(-100, -100, -100, 45, -100, -100, -100, -100, -100, -100, -100, -100, 100)
	);
	constant song0 : song_type := (
		( 100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100),
		(-100, -100,  100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100),
		( 50 , -100, -100, -100, 100, -100, -100, -100, -100, -100, -100, -100, -100),
		(-150, -100,  50 , -100, -100, 100, -100, -100, -100, -100, -100, -100, -100),
		(-100, -100, -150, -100,  50 , -100, -100, 100, -100, -100, -100, -100, -100),
		(-100, -100,  100, -100, -150,  50 , -100, -100, -100, 100, -100, -100, -100),
		(-100, -100, -100, -100, -100, -150, -100,  50 , -100, -100, -100, 100, -100),
		( 100, -100, -100, -100, -100, -100, -100, -150, -100, 50 , -100, -100, 100)
	);
	
	constant metronomSpeed : integer := 25;
begin
 
   
	process(resetN, CLK)
		type tmpArr is array (0 to 12) of integer;
		variable tmp_wait : tmpArr := (others => 0);
		variable index : tmpArr := (others => 0);
		variable tmp_song  : std_logic_vector(1 downto 0);
		variable song : song_type;
		variable speed_count, metronom_count : integer := 0;
		variable isFinish : std_logic;
	begin

		if (resetN='0' or tmp_song /= song_choose) then
			index := (others => 0);
			tmp_wait := (others => 0);
			note_length <= (others => (others => '0'));
			speed_count := 0;
			metronom_count := 0;
			tmp_song := song_choose;
			
			case song_choose is
				when "00" => song := song0;
				when "01" => song := song1;
				when others => song := song0;
			end case;
			
		elsif(rising_edge(CLK)) then
		
			note_length <= (others => (others => '0'));	--clear all length
			metronon_enable <= '0';
			
			---------------- metronom counter -----------
			if screen_end = '1'  then
				metronom_count := metronom_count + 1;
				if metronom_count > speedNotes * metronomSpeed  then
					metronom_count := 0;
					metronon_enable <= '1';
				end if;
			end if;
			
			if enable = '1' then
				if screen_end = '1'  then
					---------------- speed counter -----------
					speed_count := speed_count + 1;
					if speed_count = speedNotes then
						speed_count := 0;
						
						
						isFinish := '1';
						for i in 0 to 12 loop
							---------------- song =< 0: so wait -----------
							if tmp_wait(i) = 0 and song(index(i),i) <= 0 then
								tmp_wait(i) := -song(index(i),i);
								
								if index(i) < song_size then  -- increment index if not finish
									index(i) := index(i) + 1;
									isFinish := '0';
								else
									tmp_wait(i) := -1;
								end if;
							---------------- song > 0: play -----------
							elsif tmp_wait(i) = 0 then
								note_length(i) <= conv_std_logic_vector(song(index(i),i),8);
								tmp_wait(i) := song(index(i),i);
								
								if index(i) < song_size then  -- increment index if not finish
									index(i) := index(i) + 1;
								else
									tmp_wait(i) := -1;
								end if;
								
							end if;
							tmp_wait(i) := tmp_wait(i) - 1;
						end loop;
						
						------------ start again if finish--------------
						--if isFinish = '1' then
						--	index := (others => 0);
						--	tmp_wait := (others => 0);
						--	note_length <= (others => (others => '0'));
						--	speed_count := 0;
						--	metronom_count := 0;
						-- end if;
					end if;
				end if;
			else
			------------ not enable: clear all--------------
				index := (others => 0);
				tmp_wait := (others => 0);
				note_length <= (others => (others => '0'));
				speed_count := 0;
				metronom_count := 0;
			end if;
		end if;
	end process;
end arch;