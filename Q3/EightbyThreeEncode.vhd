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

	signal encoder_output: std_logic_vector(2 downto 0);
	
	component encoder is
		port ( 
			input  : in std_logic_vector(7 downto 0); -- input
			output : out std_logic_vector(2 downto 0) -- output
		);
	end component;
	
	component enabler is
		port ( 
			input  : in std_logic_vector(2 downto 0); -- input of enabler is output of encoder
			en: in std_logic; -- enable pin
			output : out std_logic_vector(2 downto 0) -- output
		);
	end component;
	
begin
	enc: encoder
		port map(input => i, output => encoder_output);
		
	enb: enabler
		port map(input => encoder_output, en => en, output => z);
end Arch;
