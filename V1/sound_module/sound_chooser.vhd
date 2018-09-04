library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity sound_chooser is
	port( RESETN, CLK ,piano_free										: in std_logic;
			error																: in std_logic;
			sound_choose													: in std_logic_vector(1 downto 0);
			note_data0, note_data1, note_data2						: in std_logic_vector(15 downto 0);
			error_data, metronom_data									: in std_logic_vector(15 downto 0);
			out_data	   	  												: out std_logic_vector(15 downto 0) );
end entity;

architecture arc_sound_chooser of sound_chooser is
begin


	process(CLK,RESETN)
		variable data		: std_logic_vector(15 downto 0);
		variable sound		: std_logic_vector(15 downto 0);
	begin
		if RESETN = '0' then
			data := (others => '0');
		elsif rising_edge(CLK) then
		
			case sound_choose is
				when "00" =>
					sound := note_data0;
				when "01" => 
					sound := note_data1;
				when "10" =>
					sound := note_data2;
				when others =>
					sound := note_data0;
			end case;
				
			
			if piano_free = '1' then
				data := sound;
			else
				if error = '1' then
					data := error_data;
				else
					data := sound;
				end if;
			end if;
		end if;
		out_data <= data + metronom_data;
	end process;

end arc_sound_chooser;
