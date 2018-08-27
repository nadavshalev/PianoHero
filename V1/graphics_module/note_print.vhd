library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_signed.all;
use ieee.numeric_std.all;
-- Alex Grinshpun July 24 2017 
-- Dudy Nov 13 2017


entity note_print is
GENERIC ( ObjectStartX		: INTEGER := 200);
port 	(
	   CLK      : in std_logic;
		RESETn	: in std_logic;
		oCoord_X : in integer;
		oCoord_Y : in integer;
		ObjectStartY 	: in integer;
		NoteLength		: in integer;
		drawing_request	: out std_logic ;
		collision		: out std_logic;
		mVGA_RGB	: out std_logic_vector(7 downto 0);
		sound    : in std_logic	--	,//	VGA composite RGB
	);
end note_print;

architecture behav of note_print is 

-- Constants for frame drawing
constant	x_frame	: integer :=	639;
constant	y_frame	: integer :=	479;
constant	NoteWidth : integer := 25;
constant	pianoHight : integer := 100;

signal mVGA_R	: std_logic_vector(2 downto 0); --	,	 			//	VGA Red[2:0]
signal mVGA_G	: std_logic_vector(2 downto 0); --	,	 			//	VGA Green[2:0]
signal mVGA_B	: std_logic_vector(1 downto 0); --	,  			//	VGA Blue[1:0]

	
begin

mVGA_RGB <=  mVGA_R & mVGA_G &  mVGA_B ;
-- defining three rectangles 

process ( oCoord_X,oCoord_y )
	variable noteLen	: integer;
	variable StartY	: integer;
	variable collision_tmp	: std_logic;
begin 
	if ObjectStartY + NoteLength > y_frame - pianoHight then 		-- if note is on the piano part
		noteLen := y_frame - ObjectStartY - pianoHight;
		StartY := ObjectStartY;
		collision_tmp := '1';
	elsif ObjectStartY < 0 then
		StartY := 0;
		noteLen := NoteLength + ObjectStartY;
		collision_tmp := '0';
	else
		noteLen := NoteLength;
		StartY := ObjectStartY;
		collision_tmp := '0';
	end if;
	if ObjectStartY > y_frame - pianoHight then
		collision_tmp := '0';
	end if;
	if (oCoord_X <  ObjectStartX + NoteWidth and oCoord_X > ObjectStartX - NoteWidth and oCoord_Y < StartY + noteLen and oCoord_Y > StartY) then
		if sound = '0' and collision_tmp = '1' then
			mVGA_R <= "000";
			mVGA_G <= "111";
			mVGA_B <= "11";
	   elsif sound = '1' and collision_tmp = '1' then
			mVGA_R <= "111";
			mVGA_G <= "000";
			mVGA_B <= "11";
		else
			mVGA_R <= "111";
			mVGA_G <= "111";
			mVGA_B <= "11";
		end if;
		drawing_request <= '1';
	else
		drawing_request <= '0';
	end if;
	collision <= collision_tmp;
end process ; 

		
end behav;		