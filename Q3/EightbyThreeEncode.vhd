-- TOP MODULE EightbyThreeEncode
library work;
use work.all;

library ieee;
use ieee.std_logic_1164.all;

entity EightbyThreeEncode is
	port ( 
		i : in std_logic_vector(7 downto 0); -- input
		en: in std_logic; -- enable pin
		z : out std_logic_vector(2 downto 0) -- output
	);
end entity;

architecture Arch of EightbyThreeEncode is
	signal temp_z: std_logic_vector(2 downto 0);
begin
	temp_z(0) <= ((i(1) or i(3) or i(5) or i(7))); 
	temp_z(1) <= ((i(2) or i(3) or i(6) or i(7)));
	temp_z(2) <= ((i(4) or i(5) or i(6) or i(7)));
	z <= temp_z when en = '1' else "000"; 
	-- Using "and en" we can model the enabler function
	-- z is always 000 when en is 0
end Arch;