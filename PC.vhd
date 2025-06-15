library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity PC is
	port(
		clk		: in	std_logic;
		clr		: in	std_logic;
		I			: in	std_logic_vector(15 downto 0);
		O			: out	std_logic_vector(15 downto 0)
	);
end PC;

architecture reg of PC is

signal q_aux	:	std_logic_vector(15 downto 0);

begin

	process(clk, clr)
	begin
		if clr = '1' then
			q_aux <= x"0000";
		elsif clk'event and clk='1' then
			q_aux <= I;
		end if;
	end process;
	
	O <= q_aux;
	
end reg;
