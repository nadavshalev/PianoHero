library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_signed.all;
use ieee.numeric_std.all;
-- Alex Grinshpun July 24 2017 
-- Dudy Nov 13 2017


entity back_gr_note is
port 	(
	   CLK      : in std_logic;
		RESETn	: in std_logic;
		oCoord_X : in integer;
		oCoord_Y : in integer;
		drawing_request	: out std_logic ;
		mVGA_RGB	: out std_logic_vector(7 downto 0)
	);
end back_gr_note;

architecture arc_back_gr_note of back_gr_note is 

-- Constants for frame drawing
constant	x_frame	: integer :=	639;
constant	y_frame	: integer :=	479;
constant	pianoHight : integer := 100;
constant	note_width : integer := 49;

signal mVGA_R	: std_logic_vector(2 downto 0); --	,	 			//	VGA Red[2:0]
signal mVGA_G	: std_logic_vector(2 downto 0); --	,	 			//	VGA Green[2:0]
signal mVGA_B	: std_logic_vector(1 downto 0); --	,  			//	VGA Blue[1:0]

	
begin

mVGA_RGB <=  mVGA_R & mVGA_G &  mVGA_B ;
-- defining three rectangles 

process ( oCoord_X,oCoord_y )
begin 
	
	if ((oCoord_Y > y_frame - pianoHight) and ( (oCoord_X >=0 and oCoord_X <= note_width) or (oCoord_X >= 2*note_width and oCoord_X <= 3*note_width ) or (oCoord_X >= 4*note_width and oCoord_X <= 5*note_width) or (oCoord_X >= 3+ 5*note_width and oCoord_X <=3+ 6*note_width)
		 or (oCoord_X >=3+ 7*note_width and oCoord_X <=3+ 8*note_width) or (oCoord_X >=3+ 9*note_width and oCoord_X <=3+ 10*note_width) or (oCoord_X >=3+ 11*note_width and oCoord_X <=3+ 12*note_width) or (oCoord_X >= 6+ 12*note_width and oCoord_X <=x_frame)) ) then 
			mVGA_R <= "111";
			mVGA_G <= "111";
			mVGA_B <= "11";
		drawing_request <= '1';
	elsif oCoord_Y > y_frame - pianoHight then 
			mVGA_R <= "000";
			mVGA_G <= "000";
			mVGA_B <= "00";
	else
		drawing_request <= '0';
	end if;
end process ; 
		
end architecture;		