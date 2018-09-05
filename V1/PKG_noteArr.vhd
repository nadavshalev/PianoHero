library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all ;

library work;
use work.pkg.all;


package pkg is
  type noteArr is array (0 to 12) of std_logic_vector(7 downto 0);
end package;

package body pkg is
end package body;