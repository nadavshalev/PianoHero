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
		make    : in std_logic_vector(12 downto 0);
		drawing_request	: out std_logic;
		mVGA_RGB	: out std_logic_vector(7 downto 0)
	);
end back_gr_note;

architecture arc_back_gr_note of back_gr_note is 

-- Constants for frame drawing
constant	x_frame	: integer :=	639;
constant	y_frame	: integer :=	479;
constant	pianoHight : integer := 150;
constant	note_width : integer := 49;	

constant dark_gray 	: std_logic_vector(7 downto 0) := X"92";
constant light_gray 	: std_logic_vector(7 downto 0) := "11011011";
constant white 		: std_logic_vector(7 downto 0) := X"FF";
constant black 		: std_logic_vector(7 downto 0) := X"00";
	
begin

--mVGA_RGB <=  mVGA_R & mVGA_G &  mVGA_B ;
-- defining three rectangles 

process ( oCoord_X,oCoord_y )
begin
 
	if oCoord_Y > y_frame - pianoHight then 
		
		mVGA_RGB <= X"00"; -- defult black
		
		if oCoord_y >= 430 then 
			mVGA_RGB <= X"FF"; -- defult white
		end if;
		
		for i in 0 to 4 loop
		
			if oCoord_X >= note_width*i and oCoord_X <= note_width*(i+1)  then 
				
				if i = 0 or i = 2 or i = 4 then
					
					if make(i) = '1' then
						mVGA_RGB <= X"92"; -- gray for the wite notes
					else
						mVGA_RGB <= X"FF"; -- white
					end if;
					
				else
					
					if make(i) = '1' and oCoord_y < 430 then
						mVGA_RGB <= X"49"; -- strong gray for the black notes
					end if;
					if make(i-1) = '1' and oCoord_X <= note_width*i + note_width/2 and oCoord_y >= 430 then
						mVGA_RGB <= X"92"; -- gray for the wite notes
					end if;
					if make(i+1) = '1' and oCoord_X >= note_width*i + note_width/2 and oCoord_y >= 430 then
						mVGA_RGB <= X"92"; -- gray for the wite notes
					end if;
				
				end if;
			end if;
					
		end loop;
		
		
		for i in 5 to 11 loop
		
			if oCoord_X >=note_width*i  and oCoord_X <= note_width*(i+1)  then
				
				if i = 5 or i = 7 or i = 9 or i = 11 then
				
					if make(i) = '1' then
						mVGA_RGB <= X"92"; -- gray for the wite notes
					else
						mVGA_RGB <= X"FF"; -- white
					end if;
					
				else
					
					if make(i) = '1' and oCoord_y < 430 then
						mVGA_RGB <= X"49"; -- strong gray for the black notes
					end if;
					if make(i-1) = '1' and oCoord_X <= note_width*i + note_width/2 and oCoord_y >= 430 then
						mVGA_RGB <= X"92"; -- gray for the wite notes
					end if;
					if make(i+1) = '1' and oCoord_X >= note_width*i + note_width/2 and oCoord_y >= 430 then
						mVGA_RGB <= X"92"; -- gray for the wite notes
					end if;
				
				end if;
			end if;
				
		end loop;
		
		if oCoord_X >= note_width*12 and oCoord_X <= x_frame - 3  then
			if make(12) = '1' then
				mVGA_RGB <= X"92"; -- gray for the wite notes
			else
				mVGA_RGB <= X"FF"; -- white
			end if;
		end if;
		
		for i in 0 to 12 loop
			if i = 1 or i = 3 or i = 6 or i = 8 or i = 10 then
				if oCoord_X >= note_width*i + note_width/2 -3 and oCoord_X <= note_width*i + note_width/2 + 3 and oCoord_y >= 430 then
					mVGA_RGB <= X"00"; -- black
				end if;
			end if;
			if i = 5 or i = 12 then 
			 if oCoord_X >= note_width*i -2 and oCoord_X <= note_width*i + 2 then
					mVGA_RGB <= X"00";
			 end if;
			end if;
		end loop;
		drawing_request <= '1';
		if oCoord_X >=x_frame - 3 or oCoord_X <= 3  then
			drawing_request <= '0';
		end if;
	else
		drawing_request <= '0';
	end if;
end process ; 	
end architecture;		