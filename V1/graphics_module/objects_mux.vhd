library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;
-- Alex Grinshpun Apr 2017
-- Dudy Nov 13 2017

entity objects_mux is
port 	(
		CLK	: in std_logic; --
		RESETn : in std_logic;	
		
		back_note_request : in std_logic;
		back_note_RGB 	: in std_logic_vector(7 downto 0); --	,  -- y input signal 

		back_RGB 	: in std_logic_vector(7 downto 0); --	,  -- y input signal 
		
		note0_request : in std_logic_vector(2 downto 0);
		note0_RGB 	: in std_logic_vector(23 downto 0); --	, -- b  input signal 
	
		m_mVGA_R 	: out std_logic_vector(7 downto 0); --	,  
		m_mVGA_G 	: out std_logic_vector(7 downto 0); --	, 
		m_mVGA_B 	: out std_logic_vector(7 downto 0) --	, 

	);
end objects_mux;

architecture behav of objects_mux is 
signal m_mVGA_t 	: std_logic_vector(7 downto 0); --	,  

begin

-- priority encoder process

process ( RESETn, CLK)
begin 
	if RESETn = '0' then
			m_mVGA_t	<=  (others => '0') ; 	

	elsif rising_edge(CLK) then
		if note0_request(0) = '1'  then  
			m_mVGA_t <= note0_RGB(7 downto 0);  --first priority from B 
		elsif note0_request(1) = '1'  then  
			m_mVGA_t <= note0_RGB(15 downto 8);
		elsif note0_request(2) = '1'  then  
			m_mVGA_t <= note0_RGB(23 downto 16);
		elsif back_note_request = '1' then
			m_mVGA_t <= back_note_RGB;
		else 
			m_mVGA_t <= back_RGB;
		end if; 
	end if ; 

end process ;

m_mVGA_R	<= m_mVGA_t(7 downto 5)& "00000"; -- expand to 10 bits 
m_mVGA_G	<= m_mVGA_t(4 downto 2)& "00000";
m_mVGA_B	<= m_mVGA_t(1 downto 0)& "000000";


end behav;