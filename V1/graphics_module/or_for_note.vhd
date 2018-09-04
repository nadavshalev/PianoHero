library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;


entity or_for_note is
port 	(
		CLK				: in std_logic;
		a0    		: in std_logic_vector(7 downto 0);
		a1    		: in std_logic_vector(7 downto 0);
		a2    		: in std_logic_vector(7 downto 0);
		a3    		: in std_logic_vector(7 downto 0);
		a4    		: in std_logic_vector(7 downto 0);
		a5    		: in std_logic_vector(7 downto 0);
		a6    		: in std_logic_vector(7 downto 0);
		a7    		: in std_logic_vector(7 downto 0);
		a8    		: in std_logic_vector(7 downto 0);
		a9    		: in std_logic_vector(7 downto 0);
		a10    		: in std_logic_vector(7 downto 0);
		a11    		: in std_logic_vector(7 downto 0);
		a12    		: in std_logic_vector(7 downto 0);
		request0    : in std_logic;
		request1    : in std_logic;
		request2    : in std_logic;
		request3    : in std_logic;
		request4    : in std_logic;
		request5    : in std_logic;
		request6    : in std_logic;
		request7    : in std_logic;
		request8    : in std_logic;
		request9    : in std_logic;
		request10   : in std_logic;
		request11   : in std_logic;
		request12   : in std_logic;
		request		: out std_logic;
		mVGA_RGB	: out std_logic_vector(7 downto 0)
	);
end entity;

architecture arc_or_for_note of or_for_note is 

	begin
		
		process(CLK)
			begin
				if rising_edge(CLk) then
					request <= '0';
					if request0 = '1' then
						mVGA_RGB <= a0;
						request <= '1';
					elsif request1 = '1' then
						request <= '1';
						mVGA_RGB <= a1;
					elsif request2 = '1' then
						mVGA_RGB <= a2;
						request <= '1';
					elsif request3 = '1' then
						mVGA_RGB <= a3;
						request <= '1';
					elsif request4 = '1' then
						mVGA_RGB <= a4;
						request <= '1';
					elsif request5 = '1' then
						mVGA_RGB <= a5;
						request <= '1';
					elsif request6 = '1' then
						mVGA_RGB <= a6;
						request <= '1';
					elsif request7 = '1' then
						mVGA_RGB <= a7;
						request <= '1';
					elsif request8 = '1' then
						mVGA_RGB <= a8;
						request <= '1';
					elsif request9 = '1' then
						mVGA_RGB <= a9;
						request <= '1';
					elsif request10 = '1' then
						mVGA_RGB <= a10;
						request <= '1';
					elsif request11 = '1' then
						mVGA_RGB <= a11;
						request <= '1';
					elsif request12 = '1' then
						mVGA_RGB <= a12;
						request <= '1';
					end if;
					
				end if;
			end process;
end architecture;