library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;

entity noteGraph is
generic (StartX		: integer := 0);
port	(
	clk						: in std_logic;
	resetN					: in std_logic;
	timer_done				: in std_logic;
	note_length				: in integer;
	droawing_request		: out std_logic
	);
end noteGraph;

architecture behav of noteGraph is 
	signal ShiftReg	:	std_logic_vector(12 downto 0);
begin
	ShiftReg <= (others => '0');
end behav;