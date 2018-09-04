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
		NoteLength		: in std_logic_vector(7 downto 0);
		timer_done		: in std_logic;
		clearNote		: in std_logic;
		speedNote		: in integer;
		oCoord_X 		: in integer;
		oCoord_Y 		: in integer;
		sound    		: in std_logic;
		drawing_request	: out std_logic ;
		collision			: out std_logic;
		mVGA_RGB	: out std_logic_vector(7 downto 0);
		long_note_flag		: out std_logic
	);
end noteGraphics;

architecture behav of noteGraphics is 
	constant pianoWidth : integer := 150;
	constant	x_frame	: integer :=	639;
	constant	y_frame	: integer :=	479;
	constant	NoteWidth : integer := 46;
	constant	table_len : integer := 66; -- len of screenTable -1
	constant longNote_MAX : integer := 25;
	
begin
	--mVGA_RGB <=  mVGA_R & mVGA_G &  mVGA_B ;
	process ( resetN,CLK)
		variable tmp_len		: integer;
		variable collision_tmp	: std_logic;
		variable count, longNote_counter	: integer := 0;
		variable max : integer := 0;
		variable screenTable	: std_logic_vector(table_len downto 0) := (others => '0');				-- shift register for screen size
	begin
		if resetN = '0' then
			screenTable := (others => '0');
			tmp_len := 0;
			max := 0;
			count := 0;
		elsif rising_edge(CLK) then
		
			if clearNote = '1' then		-- delete notes from screen
				tmp_len := 0;
				max := 0;
			   count := 0;
				longNote_counter := 0;
				screenTable := (others => '0');	
			elsif conv_integer(NoteLength) > 0 then	--save length for later
				tmp_len := conv_integer(NoteLength);
			end if;
			

			
			if timer_done = '1' then
				------------------------------ counter --------------------
				count := count + 1;
				if count >= speedNote then
					count := 0;
					
					if tmp_len > 0 then
						------------------------------ add ones to the screenTable --------------------
						tmp_len := tmp_len - 1;
						screenTable(table_len downto table_len) :=  (others => '1');
						screenTable(table_len- 1 downto 0) := screenTable(table_len downto 1);
					else
						------------------------------ add zero to the screenTable --------------------
						screenTable(table_len downto table_len) :=  (others => '0');
						screenTable(table_len- 1 downto 0) := screenTable(table_len downto 1);
					end if;
					
					------------------------------ collision handle --------------------
					if screenTable(0) = '1' then	--if there is a collision?
						collision_tmp := '1';
						longNote_counter := longNote_counter + 1;
					else
						collision_tmp := '0';
						longNote_counter := 0;
					end if;
				end if;
			end if;
			
			------------------------------ for print different color to col + pres note --------------------
			if screenTable(max) = '0' or screenTable(max+1) = '0'  then
				if max > 0 then
					max := max - 1;
				end if;
			else
				max := max + 1;
			end if;			
			
			------------------------------ create long Note flag --------------------
			long_note_flag <= '0';
			if longNote_counter >= longNote_MAX and max > longNote_MAX then
				long_note_flag <= '1';
				longNote_counter := 0;
			end if;
			------------------------------ colors --------------------
			if oCoord_X <  ObjectStartX + NoteWidth and oCoord_X > ObjectStartX and screenTable(table_len - oCoord_Y/5) = '1' and oCoord_Y < y_frame - pianoWidth then
				if collision_tmp = '1'  and oCoord_Y/5 >= table_len - max then
					if sound = '0' then
						mVGA_RGB <=  "11111100"; --orang
					else 
						mVGA_RGB <=  "11000101"; --red
					end if;
				else
					mVGA_RGB <=  "11111000"; --orang
				end if;

				drawing_request <= '1';
			else
				drawing_request <= '0';
				mVGA_RGB <=  X"00"; --orang
			end if;
		end if;
		collision <= collision_tmp;

	end process ;

end behav;