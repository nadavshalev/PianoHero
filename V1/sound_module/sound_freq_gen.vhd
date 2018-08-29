library ieee;
use ieee.std_logic_1164.all;

entity sound_freq_gen is
	GENERIC ( FREQUENCY		: INTEGER := 440);
	port( RESETN, CLK : in std_logic;
			OneSec	   	  		: out std_logic );
end entity;

architecture arc_sound_freq_gen of sound_freq_gen is
	signal one_sec_flag	 : std_logic ; 
begin


	process(CLK,RESETN)
		variable one_sec: integer ;
	    constant sec: integer := 50000000 ; -- for Real operation 
		--constant sec: integer := 300 ; -- for simulation 
		constant step_num : integer := FREQUENCY ;
	begin
		if RESETN = '0' then
			one_sec := 0 ;
			one_sec_flag <= '0' ;
		elsif rising_edge(CLK) then
			one_sec := one_sec + step_num ;
			one_sec_flag <= '0';
			if (one_sec > sec) then
				one_sec_flag <= '1' ;
				one_sec := 0 ;				
			end if;
		end if;
	end process;

	OneSec <= one_sec_flag;

end arc_sound_freq_gen;
