library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;


entity or_fot_notes is
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
		mVGA_RGB	: out std_logic_vector(7 downto 0)
	);
end entity;

architecture arc_or_fot_notes of or_fot_notes is 

	begin
		
		process(clk)
			begin
				if rising_edge(CLk) then
					if a0 /= "00000000" then
						mVGA_RGB <= a0;
					end if;
					if a1 /= "00000000" then
						mVGA_RGB <= a1;
					end if;
					if a2 /= "00000000" then
						mVGA_RGB <= a2;
					end if;
					if a3 /= "00000000" then
						mVGA_RGB <= a3;
					end if;
					if a4 /= "00000000" then
						mVGA_RGB <= a4;
					end if;
					if a5 /= "00000000" then
						mVGA_RGB <= a5;
					end if;
					if a6 /= "00000000" then
						mVGA_RGB <= a6;
					end if;
					if a7 /= "00000000" then
						mVGA_RGB <= a7;
					end if;
					if a8 /= "00000000" then
						mVGA_RGB <= a8;
					end if;
					if a9 /= "00000000" then
						mVGA_RGB <= a9;
					end if;
					if a10 /= "00000000" then
						mVGA_RGB <= a10;
					end if;
					if a11 /= "00000000" then
						mVGA_RGB <= a11;
					end if;
					if a12 /= "00000000" then
						mVGA_RGB <= a12;
					end if;
				end if;
			end process;
end architecture;