library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all ;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
library work;
use work.pkg.all;

entity create_octave is
port(
  CLK     						: in std_logic;
  resetN 						: in std_logic;
  enable 						: in std_logic;
  screen_end    				: in std_logic;
  metronom_sw	    			: in std_logic;
  speedNotes					: in integer;
  firstCol						: in std_logic;
  note_length       			: out noteArr;
  metronon_enable       	: out std_logic
);
end create_octave;

architecture arch of create_octave is
	constant song_size : integer := 8;
	constant ones : std_logic_vector(12 downto 0) := (others => '1');
	
	type song_type is array (0 to song_size - 1 , 0 to 12) of integer;
		constant song : song_type := (
		( 100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100),
		(-100, -100,  100, -100, -100, -100, -100, -100, -100, -100, -100, -100, -100),
		( 50 , -100, -100, -100, 100, -100, -100, -100, -100, -100, -100, -100, -100),
		(-150, -100,  50 , -100, -100, 100, -100, -100, -100, -100, -100, -100, -100),
		(-100, -100, -150, -100,  50 , -100, -100, 100, -100, -100, -100, -100, -100),
		(-100, -100, -100, -100, -150,  50 , -100, -100, -100, 100, -100, -100, -100),
		(-100, -100, -100, -100, -100, -150, -100,  50 , -100, -100, -100, 100, -100),
		(-100, -100, -100, -100, -100, -100, -100, -150, -100, 50 , -100, -100, 100));
	
	constant metronomSpeed : integer := 25;
begin
 
   
	process(resetN, CLK)
		type tmpArr is array (0 to 12) of integer;
		variable tmp_wait : tmpArr := (others => 0);
		variable index : tmpArr := (others => 0);
		variable speed_count, metronom_count : integer := 0;
		variable isFinish : std_logic_vector(12 downto 0);
		variable metronom_init	: std_logic;
	begin

		if (resetN='0') then
			index := (others => 0);
			tmp_wait := (others => 0);
			isFinish := (others => '0');
			note_length <= (others => (others => '0'));
			speed_count := 0;
			metronom_count := 0;
			metronom_init := '0';
			
		elsif(rising_edge(CLK)) then
		
			note_length <= (others => (others => '0'));	--clear all length
			metronon_enable <= '0';
			
			---------------- metronom counter -----------
			if firstCol = '1' and metronom_init = '0' then
				metronom_init := '1';
				metronom_count := 0;
			end if;
			if screen_end = '1' then
				if metronom_count >= speedNotes * metronomSpeed  then
					metronom_count := 0;
					if metronom_sw = '1' then
						metronon_enable <= '1';
					end if;
				end if;
				metronom_count := metronom_count + 1;
			end if;
			
			if enable = '1' then
				if screen_end = '1'  then
					---------------- speed counter -----------
					speed_count := speed_count + 1;
					if speed_count >= speedNotes then
						speed_count := 0;
						
						
						for i in 0 to 12 loop
							if tmp_wait(i) = 0 then
								------------ if finish note data  ---------
								if index(i) >= song_size or song(index(i),i) = -999 then
									tmp_wait(i) := -1;
									isFinish(i) := '1';
								else
									---------------- song =< 0: so wait -----------
									if song(index(i),i) <= 0 then
										tmp_wait(i) := -song(index(i),i);
										index(i) := index(i) + 1;

									---------------- song > 0: play -----------
									else
										note_length(i) <= conv_std_logic_vector(song(index(i),i),8);
										tmp_wait(i) := song(index(i),i);
										index(i) := index(i) + 1;
									end if;
								end if;
							end if;
							tmp_wait(i) := tmp_wait(i) - 1;
						end loop;
						
						------------ start again if finish--------------
						if isFinish = ones then
							index := (others => 0);
							tmp_wait := (others => 0);
							isFinish := (others => '0');
							speed_count := 0;
							metronom_count := 0;
						 end if;
					end if;
				end if;
			else
			------------ not enable: clear all--------------
				index := (others => 0);
				tmp_wait := (others => 0);
				isFinish := (others => '0');
				note_length <= (others => (others => '0'));
				speed_count := 0;
			end if;
		end if;
	end process;
end arch;