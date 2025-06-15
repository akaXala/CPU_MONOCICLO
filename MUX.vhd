library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity MUX is
	port(
		sel	: in	std_logic_vector(4 downto 0);
		I		: in	std_logic_vector(255 downto 0);
		O		: out	std_logic_vector(7 downto 0)
	);
end MUX;

architecture selector of MUX is
	constant index : integer := to_integer(unsigned(sel)) * 8;
begin
	O <= 	I( ( (to_integer(unsigned(sel)))*8 + 7 ) downto ((to_integer(unsigned(sel)))*8));
end selector;
