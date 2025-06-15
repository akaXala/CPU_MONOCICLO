library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity DECO is
	port(
		sel_w_d		: in	std_logic_vector(4 downto 0);
		en_w			: in	std_logic;
		O				: out	std_logic_vector(31 downto 0)
	);
end DECO;

architecture decodificador of DECO is
begin

	process(sel_w_d, en_w) is
		variable aux	: std_logic_vector(31 downto 0);
	begin
		aux := (others => '0');
		
		if en_w = '1' then	
			aux(to_integer(unsigned(sel_w_d))) := '1';
		end if;
		
		O <= aux;
	end process;

end decodificador;