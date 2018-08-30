library ieee ;
use ieee.std_logic_1164.all ;

entity  key_chooser is 
    port (         
			 resetN     : in std_logic                     ;	 
			 make1     : in std_logic                     ;
			 clk     : in std_logic                     ;
          break1    : in std_logic  						 ;
			 din     : in std_logic_vector(8 downto 0)    ;
			 key_num  : in std_logic_vector(8 downto 0)   ;
          make     : out std_logic                     ;
          break    : out std_logic                     ) ;
end entity ;

architecture arc_key_chooser of key_chooser is
 type state is ( idle           ,   
                   makeon     ); 
	signal present_state , next_state : state         ;
					 
begin
 process ( resetN , clk )
   begin
      if resetN = '0' then
         present_state <= idle ;
      elsif clk'event and clk = '1' then
		if key_num = din then
				case present_state is
					when idle   =>
						if make1 = '1' then
							present_state <= makeon ;
						end if;
						make <= '0';
						break <= '0';
					when makeon   =>
						if break1 = '1' then
							make <= '0';
							break <= '1';
							present_state <= idle;
						end if;
						make <= '1';
				end case;
				end if ;
		end if;
   end process ;
end architecture;