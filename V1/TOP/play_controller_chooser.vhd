library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use ieee.std_logic_arith.all ;

entity play_controller_chooser is
	port( 
			clk, resetN, freePiano, enable: in std_logic;
			control_sound, free_sound : in std_logic_vector(12 downto 0);
			error_in : in std_logic_vector(12 downto 0);
			s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12 : in std_logic_vector(4 downto 0);
			score													: out integer;
			error													: out std_logic;
			sound													: out std_logic_vector(12 downto 0)
			);
			
end entity;
architecture arc_play_controller_chooser of play_controller_chooser is
begin

	process(clk,resetN)
		constant zeros : std_logic_vector(12 downto 0) := (others => '0');
		constant scors_up : integer := 5;
		constant scors_down: integer := -1;
	begin
		if resetN = '0' then
			score <= 0;
			error <= '0';
			sound <= (others => '0');
		elsif rising_edge(clk) then
			if enable = '1' then
				if freePiano = '1' then		--play free piano
					score <= 0;
					error <= '0';
					sound <= free_sound;
				else								-- play game
					sound <= control_sound;
					
					if error_in = zeros then	--error
						error <= '0';
					else
						error <= '1';
					end if;
														--scors
					if ((((s0 or s1) or (s2 or s3)) or ((s4 or s5) or (s6 or s7))) or (((s8 or s9) or (s10 or s11)) or s12)) = zeros(4 downto 0) then
						score <= 0;
					elsif error_in /= zeros then
						score <= scors_down;
					else
						score <= scors_up;
					end if;
					
				end if;
			else			--disabe sound
				score <= 0;
				error <= '0';
				sound <= (others => '0');
			end if;
		end if;
		
	end process;
end arc_play_controller_chooser;

