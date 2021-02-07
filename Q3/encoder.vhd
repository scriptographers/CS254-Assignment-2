-- Component: 8x3 encoder without enabler

library ieee;
use ieee.std_logic_1164.all;

entity encoder is
	port ( 
		input  : in std_logic_vector(7 downto 0); -- input
		output : out std_logic_vector(2 downto 0) -- output
	);
end entity;

architecture arch of encoder is
begin
	output(0) <= ((input(1) or input(3) or input(5) or input(7))); 
	output(1) <= ((input(2) or input(3) or input(6) or input(7)));
	output(2) <= ((input(4) or input(5) or input(6) or input(7)));
end arch;