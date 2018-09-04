library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_signed.all;
use ieee.numeric_std.all;
-- Alex Grinshpun July 24 2017 
-- Dudy Nov 13 2017


entity back_ground_draw is
port 	(
		
	   CLK      : in std_logic;
		RESETn	: in std_logic;
		oCoord_X : in integer;
		oCoord_Y : in integer;
		mVGA_RGB	: out std_logic_vector(7 downto 0) --	,//	VGA composite RGB
	);
end back_ground_draw;

architecture behav of back_ground_draw is 

-- Constants for frame drawing
constant	x_frame	: integer :=	639;
constant	y_frame	: integer :=	479;
constant	int_frame	: integer :=	10;
	
begin

--mVGA_RGB <=  mVGA_R & mVGA_G &  mVGA_B ;
-- defining three rectangles 

process ( oCoord_X,oCoord_y )
begin 
	
	for i in -10 to 10 loop
		if oCoord_X > oCoord_y + 200 * i and oCoord_X < oCoord_y + 100 + 200 * i then
			mVGA_RGB <= "01010111"; -- ligh bloue
		elsif oCoord_X > oCoord_y -100 + 200 * i and oCoord_X < oCoord_y + 200 * i then
			mVGA_RGB <= X"07";	-- dark blue
			
		end if;
	end loop;
	--if oCoord_X < x_frame - 3 and  oCoord_X > 3 then
	--	mVGA_R <= "000" ;	
	--	mVGA_G <= "110"  ;	
	--	mVGA_B <= "10" ;
	--else 	
	--	mVGA_R <= "010" ;	
	--	mVGA_G <= "001"  ;	
	--	mVGA_B <= "00" ;
	--end if;
end process ; 

		
end behav;		