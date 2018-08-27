library ieee;
use ieee.std_logic_1164.all;

entity HEXSS is
	port( num_in : in std_logic_vector(3 downto 0);
			blinkN, LAMP_TEST : in std_logic;
			hex_out	  : out std_logic_vector(6 downto 0) );
end entity;

architecture arc_HEXSS of HEXSS is
signal temp : std_logic_vector(6 downto 0) ;
begin
	hex_out <= "1111111" when blinkN = '0' 
			else "0000000" when LAMP_TEST = '1' 
			else "1000000" when num_in = "0000"
			else "1111001" when num_in = "0001"
			else "0100100" when num_in = "0010"
			else "0110000" when num_in = "0011"
			else "0011001" when num_in = "0100"
			else "0010010" when num_in = "0101"
			else "0000010" when num_in = "0110"
			else "1111000" when num_in = "0111"
			else "0000000" when num_in = "1000"
			else "0010000" when num_in = "1001"
			else "0001000" when num_in = "1010"
			else "0000011" when num_in = "1011"
			else "1000110" when num_in = "1100"
			else "0100001" when num_in = "1101"
			else "0000110" when num_in = "1110"
			else "0001110" when num_in = "1111" ;

end arc_HEXSS;
