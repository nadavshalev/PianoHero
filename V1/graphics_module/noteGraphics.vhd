library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;


entity noteGraphics is
GENERIC ( ObjectStartX		: INTEGER := 50);
port 	(
		CLK				: in std_logic; --						
		resetN			: in std_logic; --	
		NoteLength		: in integer;
		timer_done		: in std_logic;
		clearNote		: in std_logic;
		speedNote		: in integer;
		oCoord_X 		: in integer;
		oCoord_Y 		: in integer;
		sound    		: in std_logic;
		drawing_request	: out std_logic ;
		collision		: out std_logic;
		mVGA_RGB	: out std_logic_vector(7 downto 0)
	);
end noteGraphics;

architecture behav of noteGraphics is 
	constant pianoWidth : integer := 100;
	constant	x_frame	: integer :=	639;
	constant	y_frame	: integer :=	479;
	constant	NoteWidth : integer := 49;
	constant ones	: std_logic_vector(speedNote-1 downto 0) := (others => '1');
	constant zeros	: std_logic_vector(speedNote-1 downto 0) := (others => '0');
	
	
	signal screenTable	: std_logic_vector(y_frame-pianoWidth-1 downto 0) := (others => '0');				-- shift register for screen size
	
	signal mVGA_R	: std_logic_vector(2 downto 0); --	,	 			//	VGA Red[2:0]
	signal mVGA_G	: std_logic_vector(2 downto 0); --	,	 			//	VGA Green[2:0]
	signal mVGA_B	: std_logic_vector(1 downto 0); --	,  			//	VGA Blue[1:0]
begin
	mVGA_RGB <=  mVGA_R & mVGA_G &  mVGA_B ;
	process ( resetN,CLK)
		variable tmp_len		: integer;
		variable collision_tmp	: std_logic;
		variable max : integer := 0;
	begin
		if resetN = '0' then
			screenTable <= (others => '0');
			tmp_len := 0;
			max := 0;
		elsif rising_edge(CLK) then
			if clearNote = '1' then
				tmp_len := 0;
				screenTable <= (others => '0');
			elsif NoteLength > 0 then
				tmp_len := NoteLength;
			end if;
			if timer_done = '1' then
			
				if tmp_len > 0 then	--add music to start of the register
					tmp_len := tmp_len - speedNote;
					screenTable(y_frame-pianoWidth-1 downto y_frame-pianoWidth - speedNote) <=  (others => '1');
					screenTable(y_frame-pianoWidth-1- speedNote downto 0) <= screenTable(y_frame-pianoWidth-1 downto speedNote);
				else
					screenTable(y_frame-pianoWidth-1 downto y_frame-pianoWidth - speedNote) <=  (others => '0');
					screenTable(y_frame-pianoWidth-1- speedNote downto 0) <= screenTable(y_frame-pianoWidth-1 downto speedNote);
				end if;
				
				if screenTable(0) = '1' then	--if there is a collision
					collision_tmp := '1';
				else
					collision_tmp := '0';
				end if;
				end if;
					
				if screenTable(max) = '0' then
					if max > 0 then
						max := max - 1;
					end if;
				else
					max := max + 1;
				end if;
				if oCoord_X <  ObjectStartX + NoteWidth and oCoord_X >= ObjectStartX and screenTable(y_frame-oCoord_Y-pianoWidth) = '1' then
					if sound = '0' and collision_tmp = '1'and oCoord_Y >= y_frame - pianoWidth -max and oCoord_Y <= y_frame - pianoWidth then
						mVGA_R <= "000";
						mVGA_G <= "111";
						mVGA_B <= "11";
					elsif sound = '1' and collision_tmp = '1' and oCoord_Y >= y_frame - pianoWidth -max and oCoord_Y <= y_frame - pianoWidth then
						mVGA_R <= "111";
						mVGA_G <= "000";
						mVGA_B <= "11";
					else
						mVGA_R <= "101";
						mVGA_G <= "101";
						mVGA_B <= "11";
					end if;	
					drawing_request <= '1';
				else
					drawing_request <= '0';
					mVGA_R <= "000";
						mVGA_G <= "000";
						mVGA_B <= "00";
				end if;
		end if;
		collision <= collision_tmp;

	end process ;

end behav;