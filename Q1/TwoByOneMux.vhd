-- TOP MODULE TwoByOneMux
library work;
use work.all;

library ieee;
use ieee.std_logic_1164.all;

entity TwoByOneMux is
	port (i : in std_logic_vector(1 downto 0);
		sel : in std_logic;
		z : out std_logic);
end entity;

architecture Mux of TwoByOneMux is
	
	signal d: std_logic_vector(1 downto 0);
	
	component decoder is
		port (select_line: in std_logic; decoded: out std_logic_vector(1 downto 0));
	end component;
	
	component choose is
		port (decoded, choices: in std_logic_vector(1 downto 0); output: out std_logic);
	end component;
	
begin
	dec: decoder
		port map (select_line => sel, decoded => d);
		
	cho: choose
		port map (decoded => d, choices => i, output => z);
		
end architecture;