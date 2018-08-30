library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_arith.all ;

entity play_controller_top is
	port( clk, resetN					 : in std_logic;
			make, break, collision	 : in std_logic_vector(12 downto 0); 
			sound	  			 : out std_logic_vector(12 downto 0);
			scors					: out integer;
			error : out std_logic						 
			);
			
end entity;
architecture arc_play_controller_top of play_controller_top is

	signal error_tmp : std_logic_vector(12 downto 0);
	type score is array(12 downto 0) of integer;
	signal score_tmp				: score;
	constant scors_up : integer := 5;
	constant scors_down: integer := -1;	
	constant scors_num : integer := 0;

	COMPONENT play_controller
	port( clk, resetN, make, break, collision : in std_logic;
				sound, error	  			 : out std_logic;
				scors 						 : out integer);
	END COMPONENT;

	begin

	play_controller_note10 : play_controller -- note ~
	PORT MAP(
			 clk => clk,
			 resetN => resetN,
			 make => make(0),
			 break => break(0),
			 collision => collision(0),
			 sound => sound(0),
			 error => error_tmp(0),
			 scors => score_tmp(0) );
			 
	play_controller_note1 : play_controller
	PORT MAP(
			 clk => clk,
			 resetN => resetN,
			 make => make(1),
			 break => break(1),
			 collision => collision(1),
			 sound => sound(1),
			 error => error_tmp(1),
			 scors => score_tmp(1));
			 
	play_controller_note2 : play_controller
	PORT MAP(
			 clk => clk,
			 resetN => resetN,
			 make => make(2),
			 break => break(2),
			 collision => collision(2),
			 sound => sound(2),
			 error => error_tmp(2),
			 scors => score_tmp(2));

	play_controller_note3 : play_controller
	PORT MAP(
			 clk => clk,
			 resetN => resetN,
			 make => make(3),
			 break => break(3),
			 collision => collision(3),
			 sound => sound(3),
			 error => error_tmp(3),
			 scors => score_tmp(3));
			 
	play_controller_note4 : play_controller
	PORT MAP(
			 clk => clk,
			 resetN => resetN,
			 make => make(4),
			 break => break(4),
			 collision => collision(4),
			 sound => sound(4),
			 error => error_tmp(4),
			 scors => score_tmp(4));

	play_controller_note5 : play_controller
	PORT MAP(
			 clk => clk,
			 resetN => resetN,
			 make => make(5),
			 break => break(5),
			 collision => collision(5),
			 sound => sound(5),
			 error => error_tmp(5),
			 scors => score_tmp(5));

	play_controller_note6 : play_controller
	PORT MAP(
			 clk => clk,
			 resetN => resetN,
			 make => make(6),
			 break => break(6),
			 collision => collision(6),
			 sound => sound(6),
			 error => error_tmp(6),
			 scors => score_tmp(6));

	play_controller_note7 : play_controller
	PORT MAP(
			 clk => clk,
			 resetN => resetN,
			 make => make(7),
			 break => break(7),
			 collision => collision(7),
			 sound => sound(7),
			 error => error_tmp(7),
			 scors => score_tmp(7));

	play_controller_note8 : play_controller
	PORT MAP(
			 clk => clk,
			 resetN => resetN,
			 make => make(8),
			 break => break(8),
			 collision => collision(8),
			 sound => sound(8),
			 error => error_tmp(8),
			 scors => score_tmp(8));

	play_controller_note9 : play_controller
	PORT MAP(
			 clk => clk,
			 resetN => resetN,
			 make => make(9),
			 break => break(9),
			 collision => collision(9),
			 sound => sound(9),
			 error => error_tmp(9),
			 scors => score_tmp(9));

	play_controller_note0 : play_controller
	PORT MAP(
			 clk => clk,
			 resetN => resetN,
			 make => make(10),
			 break => break(10),
			 collision => collision(10),
			 sound => sound(10),
			 error => error_tmp(10),
			 scors => score_tmp(10));

	play_controller_note12 : play_controller -- note -
	PORT MAP(
			 clk => clk,
			 resetN => resetN,
			 make => make(11),
			 break => break(11),
			 collision => collision(11),
			 sound => sound(11),
			 error => error_tmp(11),
			 scors => score_tmp(11));

	play_controller_note13 : play_controller -- note +
	PORT MAP(
			 clk => clk,
			 resetN => resetN,
			 make => make(12),
			 break => break(12),
			 collision => collision(12),
			 sound => sound(12),
			 error => error_tmp(12),
			 scors => score_tmp(12));			

		process(clk,resetN)
		begin
		if error_tmp /= "000000000000" then
			error <= '1';
			scors <= scors_up; 
		else
			if score_tmp /= (0,0,0,0,0,0,0,0,0,0,0,0) then
				scors <= scors_down;
			else 
				scors <= scors_num;
			end if;
			 error <= '0';
		end if;
		end process;
end arc_play_controller_top;

