-- TOP MODULE: EightbyThreeEncode
library work;
use work.all;

library ieee;
use ieee.std_logic_1164.all;

entity ThreebyEightDecode is
	port ( 
		i : in std_logic_vector(2 downto 0);
		en: in std_logic;
		z : out std_logic_vector(7 downto 0)
	);
end entity;

architecture arch of ThreebyEightDecode is

	signal decoder_output: std_logic_vector(7 downto 0);
	
	component decoder is
		port ( 
			i : in std_logic_vector(2 downto 0);
			output : out std_logic_vector(7 downto 0)
		);
	end component;
	
	component enabler is
		port ( 
			input  : in std_logic_vector(7 downto 0); -- input of enabler is output of encoder
			en: in std_logic; -- enable pin
			output : out std_logic_vector(7 downto 0) -- output
		);
	end component;
	
begin
	dec: decoder
		port map(i => i, output => decoder_output);
		
	enb: enabler
		port map(input => decoder_output, en => en, output => z);
end arch;
