library ieee;
use ieee.std_logic_1164.all;

entity sound_freq_gen_all is
	port( 
			RESETN, CLK 			: in std_logic;
			OneSec	   	  		: out std_logic_vector(12 downto 0) );
end entity;

architecture arc_sound_freq_gen_all of sound_freq_gen_all is
	type freq_type is array (0 to 12) of integer;
	constant freq : freq_type := (11442,10799, 4906, 5197, 5506, 5834, 6181, 6548, 6935,6803, 7787, 8250, 8741); --(4370, 4630, 4906, 5197, 5506, 5834, 6181, 6548, 6935, 7350, 7787, 8250, 8741);	-- all frequancies
	    constant MAX_COUNT: integer := 50000000 ; 	-- clock freq
begin


	process(CLK,RESETN)
		variable counter : freq_type := (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);	--hold each count
	begin
		if RESETN = '0' then
			counter := (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
		elsif rising_edge(CLK) then
		
			OneSec <= (others => '0');		-- zeros to out
			for i in 0 to 12 loop
				counter(i) := counter(i) + freq(i); 	--add to counter
				if counter(i) > MAX_COUNT then
					OneSec(i) <= '1';
					counter(i) := 0;
				end if;
			end loop;
		end if;
	end process;

end arc_sound_freq_gen_all;
