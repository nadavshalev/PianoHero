library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;

entity score is

port 	(
		resetN			     : in std_logic;
		clk				     : in std_logic;
		score_note0 		  : in integer;
		unit					  : out  std_logic_vector(3 downto 0);
		tens					  : out std_logic_vector(3 downto 0)
	);
end entity;


architecture arc_score of score is 
begin

process(clk,resetN)

	variable sum: integer;
	variable tmp_unit: integer;
	variable tmp_tens: integer;

begin
	if resetN = '0' then
			tmp_unit := 0;
			tmp_tens := 0;
	elsif rising_edge(clk) then
		if score_note0 < 0  then
			if tmp_unit + score_note0 < 0 then 
				if tmp_tens = 0 then		-- if less then zero
					tmp_unit := 0;
					tmp_tens := 0;
				else							-- down the tems
					tmp_unit := 10 + tmp_unit + score_note0;
					tmp_tens := tmp_tens - 1;
				end if;
			else								-- jast sub the ones
				tmp_unit := tmp_unit + score_note0;
			end if;
		else									-- if scors pisitive
			if tmp_unit + score_note0 > 9	then -- got to max scors
				if tmp_tens = 9 then
					tmp_unit := 9;
					tmp_tens := 9;
				else								-- incrimanet tems and ones
					tmp_unit := tmp_unit + score_note0 - 10;
					tmp_tens := tmp_tens + 1;
				end if;
			else									-- imcriment ones
				tmp_unit := tmp_unit + score_note0;
			end if;
		end if;
	end if;
	unit <= conv_std_logic_vector(tmp_unit,4);
	tens <= conv_std_logic_vector(tmp_tens,4);
end process;

end architecture;