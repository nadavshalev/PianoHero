library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
library work;
use work.pkg.all;

entity song_chooser is
	port( RESETN, CLK														: in std_logic;
			song_choose														: in std_logic_vector(1 downto 0);
			song0_len, song1_len, song2_len							: in noteArr;
			metronom0, metronom1, metronom2							: in std_logic;
			out_metronom													: out std_logic;
			out_song_len	   	  										: out noteArr );
end entity;

architecture arc_song_chooser of song_chooser is
begin


	process(CLK,RESETN)
	begin
		if RESETN = '0' then
			out_metronom <= '0';
			out_song_len <= (others =>(others => '0'));
		elsif rising_edge(CLK) then
		
			case song_choose is
				when "00" =>
					out_song_len <= song0_len;
					out_metronom <= metronom0;
				when "01" => 
					out_song_len <= song1_len;
					out_metronom <= metronom1;
				when "10" =>
					out_song_len <= song2_len;
					out_metronom <= metronom2;
				when others =>
					out_song_len <= song0_len;
					out_metronom <= metronom0;
			end case;
		end if;
	end process;

end arc_song_chooser;
