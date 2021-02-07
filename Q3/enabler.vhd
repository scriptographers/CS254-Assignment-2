-- Component: 3x3 enabler
library ieee;
use ieee.std_logic_1164.all;

entity enabler is
	port ( 
		input  : in std_logic_vector(2 downto 0); -- input of enabler is output of encoder
		en: in std_logic; -- enable pin
		output : out std_logic_vector(2 downto 0) -- output
	);
end entity;

architecture arch of enabler is
begin
	output(0) <= (input(0) and en);
	output(1) <= (input(1) and en);
	output(2) <= (input(2) and en);
end arch;