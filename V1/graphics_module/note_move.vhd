library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_signed.all;
use ieee.numeric_std.all;
-- Alex Grinshpun March 24 2017 
-- Dudy Nov 13 2017


entity note_move is
port 	(
		CLK				: in std_logic; --						
		resetN			: in std_logic; --			
		start			: in std_logic;
		timer_done		: in std_logic;
		max_NoteLength		: in integer;
		ObjectStartY	: out integer;
		NoteLength : out integer
		
		
	);
end note_move;

architecture behav of note_move is 


signal ObjectStartY_t : integer;
signal NoteLength_t : integer;
begin
 
	process ( resetN, start,CLK)
	begin
		if resetN = '0' then
			ObjectStartY_t	<= 0;
			NoteLength_t <= 0;
		elsif rising_edge(CLK) then
			if	 start = '0' then
				ObjectStartY_t	<= 0;
				NoteLength_t <= 0;
			elsif timer_done = '1' and ObjectStartY_t < 480  then
				if NoteLength_t < max_NoteLength then
					NoteLength_t <= NoteLength_t+ 1;
				else
					ObjectStartY_t  <= ObjectStartY_t + 1;
				end if;
			end if;
		end if;
	end process ;
ObjectStartY <= ObjectStartY_t;	
NoteLength <= NoteLength_t;

end behav;