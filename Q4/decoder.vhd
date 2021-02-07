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
	output(7) <= (not input(2) and not input(1) and not input(0));
	output(6) <= (not input(2) and not input(1) and input(0));
	output(5) <= (not input(2) and input(1) and not input(0));
	output(4) <= (not input(2) and input(1) and input(0));
	output(3) <= (input(2) and not input(1) and not input(0));
	output(2) <= (input(2) and not input(1) and input(0));
	output(1) <= (input(2) and input(1) and not input(0));
	output(0) <= (input(2) and input(1) and input(0));
end arch;
