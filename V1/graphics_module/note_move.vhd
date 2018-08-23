library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;
-- Alex Grinshpun March 24 2017 
-- Dudy Nov 13 2017


entity note_move is
port 	(
		CLK				: in std_logic; --						
		resetN			: in std_logic; --			
		reset1N			: in std_logic;
		timer_done		: in std_logic;
		NoteLength		: in integer;
		ObjectStartY	: out integer
		
	);
end note_move;

architecture behav of note_move is 

constant StartY : integer := - NoteLength;   


signal ObjectStartY_t : integer;
begin
	process ( resetN, reset1N,CLK)
	begin
		if resetN = '0' then
			ObjectStartY_t	<= StartY ;
		elsif rising_edge(CLK) then
			if	 reset1N = '0' then
				ObjectStartY_t	<= StartY ;
			elsif timer_done = '1' and ObjectStartY_t < 480  then
				ObjectStartY_t  <= ObjectStartY_t + 1;
			end if;
		end if;
	end process ;
ObjectStartY <= ObjectStartY_t;	


end behav;