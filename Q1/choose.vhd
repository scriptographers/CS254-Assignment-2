-- Component Choose
library ieee;
use ieee.std_logic_1164.all;

entity choose is
	port (decoded, choices: in std_logic_vector(1 downto 0);
		output: out std_logic);
end entity;

architecture cho1 of choose is	
begin
	output <= (decoded(0) and choices(0)) or (decoded(1) and choices(1));
		
end architecture;