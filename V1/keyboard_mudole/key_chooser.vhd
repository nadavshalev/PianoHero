library ieee ;
use ieee.std_logic_1164.all ;

entity  key_chooser is 
port (         
	 resetN   			 : in std_logic;	 
	 clk    	   	    : in std_logic;	 
	 make_from_key 	 : in std_logic;
	 break_from_key    : in std_logic;
	 din    				 : in std_logic_vector(8 downto 0);
	 make_q				 : out std_logic;
	 break_q				 : out std_logic;
	 make      			 : out std_logic_vector(12 downto 0);
	 break   			 : out std_logic_vector(12 downto 0) ) ;
end entity ;

architecture arc_key_chooser of key_chooser is
type state is (idle,make_on); 

signal cur_state: state ;
signal tmp_make_break: std_logic_vector(12 downto 0);
signal tmp_make_break1: std_logic_vector(12 downto 0);
constant max_count : integer := 10;

begin
process ( resetN , clk )
variable count : integer;
begin
	if resetN = '0' then
		cur_state <= idle ;
		make <= (others => '0');
		break <= (others => '0');
		break_q <= '0';
		make_q <= '0';
		count := 0;
	elsif clk'event and clk = '1' then
		case cur_state is
			when idle   =>
				if make_from_key = '1' then
					cur_state <= make_on;
				end if;
				make <= (others => '0');
				break <= (others => '0');
				break_q <= '0';
				make_q <= '0';
			when make_on   => 
				case din is
					when '0' & X"E0"=> -- "~"
						make(0) <= '1';
					when '0' & X"16" => -- "1"
						make(1) <= '1';							
					when '0' & X"1E" => -- "2"
						make(2) <= '1';
					when '0' & X"26" => -- "3"
						make(3) <= '1';							
					when '0' &  X"25" => -- "4"
						make(4) <= '1';
					when '0' & X"2E" => -- "5"
						make(5) <= '1';							
					when '0' & X"36" => -- "6"
						make(6) <= '1';
					when '0' & X"3D" => -- "7"
						make(7) <= '1';							
					when '0' & X"3E" => -- "8"
						make(8) <= '1';
					when '0' & X"46" => -- "9"
						make(9) <= '1';							
					when '0' & X"45" => -- "0"
						make(10) <= '1';
					when '0' & X"4E" => -- "-"
						make(11) <= '1';
					when '0' & X"55" => -- "+"
						make(12) <= '1';
					when others =>
				end case;
				if break_from_key = '1' then
					case din is
						when '0' & X"E0"=> -- "~"
							break(0) <= '1';
							make(0) <= '0';
						when '0' & X"16" => -- "1"
							break(1) <= '1';
							make(1) <= '0';
						when '0' & X"1E" => -- "2"
							break(2) <= '1';
							make(2) <= '0';
						when '0' & X"26" => -- "3"
							break(3) <= '1';
							make(3) <= '0';
						when '0' &  X"25" => -- "4"
							break(4) <= '1';
							make(4) <= '0';
						when '0' & X"2E" => -- "5"
							break(5) <= '1';
							make(5) <= '0';
						when '0' & X"36" => -- "6"
							break(6) <= '1';
							make(6) <= '0';
						when '0' & X"3D" => -- "7"
							break(7) <= '1';
							make(7) <= '0';
						when '0' & X"3E" => -- "8"
							break(8) <= '1';
							make(8) <= '0';
						when '0' & X"46" => -- "9"
							break(9) <= '1';
							make(9) <= '0';
						when '0' & X"45" => -- "0"
							break(10) <= '1';
							make(10) <= '0';
						when '0' & X"4E" => -- "-"
							break(11) <= '1';
							make(11) <= '0';
						when '0' & X"55" => -- "+"
							break(12) <= '1';
							make(12) <= '0';
						when others =>
					end case;
					if din = '0' & X"15" then
						break_q <= '1';
						make_q <= '0';
					end if;
				else
					break <= (others => '0');
				end if;
				if din = '0' & X"15" then
					break_q <= '0';
					make_q <= '1';
				end if;
		end case;
		end if ;
end process ;
end architecture;