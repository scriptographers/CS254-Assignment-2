-- Component Decoder
library ieee;
use ieee.std_logic_1164.all;

entity decoder is
	port (select_line: in std_logic; decoded: out std_logic_vector(1 downto 0));
end entity;

architecture dec1 of decoder is
begin
	decoded(0) <= not select_line;
	decoded(1) <= select_line;
end architecture;