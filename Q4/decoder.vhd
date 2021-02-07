-- Component: 3x8 decoder without enabler

library ieee;
use ieee.std_logic_1164.all;

entity decoder is
	port ( 
		i : in std_logic_vector(2 downto 0);
		output : out std_logic_vector(7 downto 0)
	);
end entity;

architecture arch of decoder is
begin
	output(0) <= (not i(0) and not i(1) and not i(2));
	output(1) <= (not i(0) and not i(1) and i(2));
	output(2) <= (not i(0) and i(1) and not i(2));
	output(3) <= (not i(0) and i(1) and i(2));
	output(4) <= (i(0) and not i(1) and not i(2));
	output(5) <= (i(0) and not i(1) and i(2));
	output(6) <= (i(0) and i(1) and not i(2));
	output(7) <= (i(0) and i(1) and i(2));
end arch;
