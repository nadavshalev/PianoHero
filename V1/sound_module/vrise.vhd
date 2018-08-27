-- a simple rise detector
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
entity vrise is
	GENERIC ( rise_size : INTEGER := 500000000);
   port ( resetN,clk,din : in  std_logic ;
          dout           : out std_logic ) ;
end vrise ;
architecture arc_vrise of vrise is
   signal sampled1 , sampled2 : std_logic ;
begin
    process ( clk , resetN )
	 variable tmp : integer;
    begin
       if resetN = '0' then
          dout <= '0';
			 tmp := rise_size;
       elsif rising_edge(clk) then
		 
          if din = '1' then		-- start ones
				tmp := 0;
			 end if;
			 if tmp >= rise_size then	-- zeros
				dout <= din;
			 else							-- ones
				tmp := tmp + 1;
				dout <= '1';
			 end if;
       end if ;
    end process ;
    
end arc_vrise ;