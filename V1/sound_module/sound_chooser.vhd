library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity sound_chooser is
	port( RESETN, CLK 					: in std_logic;
			is_play							: in std_logic;
			error_play, victory_play	: in std_logic;
			play_data, error_data		: in std_logic_vector(15 downto 0);
			out_data	   	  				: out std_logic_vector(15 downto 0) );
end entity;

architecture arc_sound_chooser of sound_chooser is
begin


	process(CLK,RESETN)
		variable data		: std_logic_vector(15 downto 0);
	begin
		if RESETN = '0' then
			data := (others => '0');
		elsif rising_edge(CLK) then
			if error_play = '1' then
				data := error_data;
			else
				data := (others => '0');
				
				if is_play = '1' then
					data := data + play_data;					
				end if;
			end if;
		end if;
		out_data <= data;
	end process;

end arc_sound_chooser;
