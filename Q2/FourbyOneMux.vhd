-- TOP MODULE FourByTwoMux
library work;
use work.all;

library ieee;
use ieee.std_logic_1164.all;

entity FourbyOneMux is
	port (i : in std_logic_vector(3 downto 0);
		sel: in std_logic_vector(1 downto 0);
		z : out std_logic);
end entity;

architecture Mux of FourbyOneMux is
	
	signal j: std_logic_vector(1 downto 0);
	
	component TwoByOneMux is
		port (input : in std_logic_vector(1 downto 0);
				selection : in std_logic;
				o : out std_logic);
	end component;
	
begin
	mux1: TwoByOneMux
		port map (input(0) => i(0), input(1) => i(1), selection => sel(0), o => j(0));
		
	mux2: TwoByOneMux
		port map (input(0) => i(2), input(1) => i(3), selection => sel(0), o => j(1));

	mux3: TwoByOneMux
		port map (input(0) => j(0), input(1) => j(1), selection => sel(1), o => z);
		
end architecture;