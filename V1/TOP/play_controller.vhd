library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_arith.all ;

entity play_controller is
	port( clk, resetN, make, break, collision : in std_logic;
			sound, error	  			 : out std_logic;
			scors 						 : out integer);
			
end entity;
architecture arc_play_controller of play_controller is
begin


	process(clk,resetN)
		variable press : std_logic;
		type count_state is (col_pre_play, uncol_pre_err, col_unpre, uncol_unpre, second_pre_err);
		variable state : count_state;
		constant scors_up : integer := 5;
		constant scors_down: integer := -1;
		variable scors_num : integer := 0;
	begin
		if resetN = '0' then
			error <= '0';
			sound <= '0';
			press := '0';
			state := uncol_unpre;
			scors_num := 0;
		elsif rising_edge(clk) then
			error <= '0';
			sound <= '0';
			scors_num := 0;
			case state is
				----------------------------------
				-- idle: no press, no collision --
				when uncol_unpre =>
					press := '0';
					if collision = '1' then -- no press + collision
						state := col_unpre;
					elsif make = '1' then -- press + no collision = error
						state := uncol_pre_err;
						error <= '1';
						scors_num := scors_down;
					end if;
				----------------------------------
				-- collision with no press -------
				when col_unpre =>
					if press = '0' and make = '1' then --press first time = play
						state := col_pre_play;
						sound <= '1';
						press := '1';
						scors_num := scors_up;
					elsif collision = '0' and press = '0' then --never press
						state := uncol_unpre;
						error <= '1';
						scors_num := scors_down;
					elsif collision = '0' and press = '1' then -- finish play the note
						state := uncol_unpre;
					elsif press = '1' and make = '1' then --press second time
						state := second_pre_err;
						error <= '1';
						scors_num := scors_down;
					end if;
				----------------------------------
				-- play: collision with press ----
				when col_pre_play =>
					sound <= '1';
					if break = '1' then
						state := col_unpre;
						sound <= '0';
					elsif collision = '0' then
						state := uncol_pre_err;
						error <= '1';
						scors_num := scors_down;
					end if;
				----------------------------------
				-- error: press with no collision 
				when uncol_pre_err =>
					error <= '1';
					if break ='1' then
						state := uncol_unpre;
						error <= '0';
					elsif collision = '1' then
						state := col_pre_play;
						sound <= '1';
						press := '1';
						scors_num := scors_up;
					end if;
					-- TODO:
					--		long presss error each time
				----------------------------------
				-- error: press twice on collision
				when second_pre_err =>
					error <= '1';
					if break = '1' then
						state := col_unpre;
						error <= '0';
					elsif collision = '0' then
						state := uncol_pre_err;
						scors_num := scors_down;
					end if;		
			end case;
		end if;
		
		scors <= scors_num;
	end process;
end arc_play_controller;

