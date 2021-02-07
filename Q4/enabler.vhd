-- Component: 8x8 enabler

library ieee;
use ieee.std_logic_1164.all;

entity enabler is
	port ( 
		input  : in std_logic_vector(7 downto 0); -- input of enabler is output of decoder
		en: in std_logic; -- enable pin
		output : out std_logic_vector(7 downto 0) -- output
	);
end entity;

architecture arch of enabler is
begin
	output(0) <= (input(0) and en);
	output(1) <= (input(1) and en);
	output(2) <= (input(2) and en);
	output(3) <= (input(3) and en);
	output(4) <= (input(4) and en);
	output(5) <= (input(5) and en);
	output(6) <= (input(6) and en);
	output(7) <= (input(7) and en);
end arch;
