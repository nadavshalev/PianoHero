LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
library work;
use work.pkg2.all;

ENTITY addr_counter_all IS
PORT (
			CLK_IN			:	IN	STD_LOGIC;	
			resetN			:	IN	STD_LOGIC;
			oneSec_en		: 	in  std_logic_vector(12 downto 0) ;
			note_en			: 	in  std_logic_vector(12 downto 0) ;
			addr				: 	out Arr_type;
			isCount			: 	out  std_logic_vector(12 downto 0)
		);

END addr_counter_all;


	
architecture addr_counter_all_arch of 		addr_counter_all is
	
		constant MAX_VAL : integer := 8201;
		constant COUNT_SIZE : integer := 14;
begin

	process(CLK_IN,resetN)
		type notes_type is array (0 to 12) of integer;
		type sig_type is array (0 to 12) of std_logic;
		variable count : notes_type;
		variable ready : sig_type;
	begin
		if resetN = '0' then
			for i in 0 to 12 loop 
				count(i) := 0;
				ready(i) := '1';
				isCount(i) <= '0';
			end loop;
		elsif rising_edge(CLK_IN) then
			
			for i in 0 to 12 loop
				
				if note_en(i) = '1' and ready(i) = '1' then		--start from 0 again
					count(i) := 0;
					isCount(i) <= '1';
					ready(i) := '0';
				elsif note_en(i) = '0' then
					ready(i) := '1';
				end if;
				
				if oneSec_en(i) = '1' and count(i) /= -1 then		--final count down
					count(i) := count(i) + 1;
					if count(i) = MAX_VAL then
						count(i) := -1;		-- disable
						--ready(i) := '1';
						isCount(i) <= '0';
					end if;
				end if;
				
			end loop;
		end if;
		for i in 0 to 12 loop
			if conv_integer(count(i)) > 0 then
				addr(i) <= conv_std_logic_vector(count(i),14);
			else
				addr(i) <= (others => '0');
			end if;
		end loop;
	end process;



end addr_counter_all_arch ;