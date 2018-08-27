library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity score is

port 	(
		resetN			     : in std_logic;
		clk				     : in std_logic;
		score_note0 		  : in integer;
		score_note1 		  : in integer;
		score_note2		     : in integer;
		score_note3 		  : in integer;
		score_note4 		  : in integer;
		score_note5 		  : in integer;
		score_note6 		  : in integer;
		score_note7 		  : in integer;
		score_note8 		  : in integer;
		score_note9 		  : in integer;
		score_note10		  : in integer;
		score_note11 		  : in integer;
		score_note12 		  : in integer;
		unit					  : out integer;
		tens					  : out integer;
	);
end entity;


architecture arc_score of score is 
constant	minus	: integer :=	-5;
constant	plus	: integer :=	1;
begin

process(clk,resetN)

variable sum: integer;
variable tmp_unit: integer;
variable tmp_tens: integer;

if score_note0 <= 0 or score_note1 <= 0 or  score_note2 <= 0 or  score_note3 <= 0 or  score_note4 <= 0 or  score_note5 <= 0 or  
	score_note6 <= 0 or  score_note7 <= 0 or  score_note8 <= 0 or  score_note9 <= 0 or  score_note10 <= 0 or score_note11 <= 0 or score_note12 <= 0 then
	if tmp_unit < minus  and tmp_tens = 0 then 
		tmp_unit := 0;
	elsif tmp_unit < minus then
		tmp_tens := tmp_tens -1;
		tmp_unit := 10 + minus + tmp_unit;
	else
		tmp_unit := tmp_unit + minus
	end if;
elsif score_note0 >= 0 or score_note1 >= 0 or score_note2 >= 0 or score_note3 >= 0 or score_note4 >= 0 or score_note5 >= 0 or score_note6 >= 0 or
		score_note7 >= 0 or score_note8 >= 0 or score_note9 >= 0 or score_note10 >= 0 or score_note11 >= 0 or score_note12 >= 0 then
		tmp_unit := tmp_unit + plus;
		if tmp_unit >= 10 then
			tmp_unit := tmp_unit -10;
			tmp_tens := tmp_tens + 1;
			if tmp_tens > 9 then 
				tmp_tens := 9;
				tmp_unit := 9
		


end architecture;