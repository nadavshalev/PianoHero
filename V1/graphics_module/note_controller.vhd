library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_arith.all ;

entity note_controller is
	port( NoteLength_in 						 					 : in integer;
			clk, resetN												 : in std_logic;
			ObjectStart1, ObjectStart2, ObjectStart3	    : in integer;
			start1,start2,start3 								 : out std_logic;
			NoteLength_out 										 : out integer
			);
			
end entity;
architecture arc_note_controller of note_controller is
begin

process(clk,resetN)
begin
	if resetN = '0' then
		--NoteLength_in <= 0;
		if NoteLength_in > 0 then
			NoteLength_out <= NoteLength_in;
			if ObjectStart1 > 480 then
				start1 <= '1';
			elsif ObjectStart2 > 480 then
				start2 <= '1';
			elsif ObjectStart3 > 480 then
				start3 <= '1';
			end if;
		else
			start1 <= '0';
			start2 <= '0';
			start3 <= '0';
		end if;
	end if;
end process;
end architecture;