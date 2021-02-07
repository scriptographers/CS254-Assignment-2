-- Component: 3x8 decoder without enabler

library ieee;
use ieee.std_logic_1164.all;

entity decoder is
	port ( 
		input  : in  std_logic_vector(2 downto 0);
		output : out std_logic_vector(7 downto 0)
	);
end entity;

architecture arch of decoder is
begin
	output(0) <= (not input(0) and not input(1) and not input(2));
	output(1) <= (not input(0) and not input(1) and input(2));
	output(2) <= (not input(0) and input(1) and not input(2));
	output(3) <= (not input(0) and input(1) and input(2));
	output(4) <= (input(0) and not input(1) and not input(2));
	output(5) <= (input(0) and not input(1) and input(2));
	output(6) <= (input(0) and input(1) and not input(2));
	output(7) <= (input(0) and input(1) and input(2));
end arch;
