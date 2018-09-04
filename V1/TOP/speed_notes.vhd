
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all ;

entity speed_notes is
port(
  CLK     						: in std_logic;
  resetN 						: in std_logic;
  score							: in integer;
  speed 							: in std_logic;
  speedNotes   			  	: out integer
);
end speed_notes;

architecture arch_speed_notes of speed_notes is

begin
 
	process(resetN, CLK)

	begin

		if resetN= '0'  then
		
			speedNotes <= 2;
			
		elsif(rising_edge(CLK)) then
		
			if speed = '0' then
				if score <= 25 then
					speedNotes <= 2;
				else 
					speedNotes <= 1;
				end if;
			else
				speedNotes <= 1;
			end if;
			
		end if;
			
	end process;
end architecture;