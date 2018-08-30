library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity sound_adder is
	port( D0f,D1f,D2f,D3f,D4f,D5f,D6f,D7f,D8f,D9f,D10f,D11f,D12f			: in std_logic_vector(15 downto 0);
			enable														: in std_logic_vector(12 downto 0);
			out_play														: out std_logic;
			out_data	   	  											: out std_logic_vector(15 downto 0) );
end entity;

architecture arc_sound_adder of sound_adder is
	signal D0a,D1a,D2a,D3a,D4a,D5a,D6a,D7a,D8a,D9a,D10a,D11a,D12a			: std_logic_vector(15 downto 0);
	signal tmpData, tmpOn : integer;
begin
	
	D0a <= D0f when enable(0) = '1' else (others => '0');
	D1a <= D1f when enable(1) = '1' else (others => '0');
	D2a <= D2f when enable(2) = '1' else (others => '0');
	D3a <= D3f when enable(3) = '1' else (others => '0');
	D4a <= D4f when enable(4) = '1' else (others => '0');
	D5a <= D5f when enable(5) = '1' else (others => '0');
	D6a <= D6f when enable(6)= '1' else (others => '0');
	D7a <= D7f when enable(7) = '1' else (others => '0');
	D8a <= D8f when enable(8) = '1' else (others => '0');
	D9a <= D9f when enable(9) = '1' else (others => '0');
	D10a <= D10f when enable(10) = '1' else (others => '0');
	D11a <= D11f when enable(11) = '1' else (others => '0');
	D12a <= D12f when enable(12) = '1' else (others => '0');
	
	tmpData <= conv_integer(D0a) + conv_integer(D1a) + conv_integer(D2a) + conv_integer(D3a) + 
					conv_integer(D4a) + conv_integer(D5a) + conv_integer(D6a) + conv_integer(D7a) + 
					conv_integer(D8a) + conv_integer(D9a) + conv_integer(D10a) + conv_integer(D11a) + 
					conv_integer(D12a);
	tmpOn <= conv_integer(0) + conv_integer(1) + conv_integer(2) + conv_integer(3) + 
					conv_integer(4) + conv_integer(5) + conv_integer(6) + conv_integer(7) + 
					conv_integer(8) + conv_integer(9) + conv_integer(10) + conv_integer(11) + 
					conv_integer(12);
	out_play <= '1' when tmpOn > 0 else '0';						
	--tmpData <= tmpData / 2 when tmpData > 65536
	out_data <= conv_std_logic_vector(tmpData / tmpOn,16);
end arc_sound_adder;
