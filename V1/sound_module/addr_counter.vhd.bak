LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY addr_counter IS
GENERIC ( COUNT_SIZE		: INTEGER := 15);
PORT (
			CLK_IN			:	IN	STD_LOGIC;	
			resetN			:	IN	STD_LOGIC;
			en					: 	in  std_logic ;
			en1				: 	in  std_logic ;
			addr				: 	out std_logic_vector(COUNT_SIZE - 1 downto 0)
		);

END addr_counter;


	
architecture addr_counter_arch of 		addr_counter is

	signal temp : std_logic_vector(COUNT_SIZE - 1 downto 0) := (others => '0');
	constant one : std_logic_vector(COUNT_SIZE - 1 downto 0) := (0 => '1', others => '0');
	constant zeros : std_logic_vector(COUNT_SIZE - 1 downto 0) := (others => '0');
	constant maxval : std_logic_vector(COUNT_SIZE - 1 downto 0) := (others => '1');
begin

	addr <= temp;
	process(CLK_IN,resetN)
	begin
		if resetN = '0' then
			temp <= zeros ;
		elsif rising_edge(CLK_IN) then
			if en = '1' and en1 = '1' then
				temp <= temp + one;
				if (temp = maxval) then
					temp <= zeros ;
				end if;
			end if;
		end if;
	end process;



end addr_counter_arch ;