-- Top Module: EightbyThreeEncode
library work;
use work.all;

-- The IEEE created the IEEE VHDL library and std_logic type in standard 1164. 
-- Parts of the IEEE library can be included in an entity by inserting the following lines
-- The std_logic_vector type is used for arrays of std_logic variables and signals
-- The basic VHDL logic operations are defined on this type: and, nand, or, nor, xor, xnor. These must be given two arrays of the same size; they do the operation on ecah position and return another array. The not operation negates each position in the array.
library ieee;
use ieee.std_logic_1164.all;

entity EightbyThreeEncode is
	port ( 
		i : in std_logic_vector(7 downto 0); -- input
		en: in std_logic; -- enable pin
		z : out std_logic_veactor(2 downto 0) -- output
	);
end entity;

architecture arch of EightbyThreeEncode is

	signal encoder_output: std_logic_vector(2 downto 0); -- output of the encoder block, to be passed to the enabler
	
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
end arch;
