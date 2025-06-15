library ieee;
use ieee.std_logic_1164.all;

entity registro is
	port(
		clk	: in	std_logic;
		clr	: in	std_logic;
		en		: in	std_logic;
		I		: in	std_logic_vector(7 downto 0);
		Q		: out	std_logic_vector(7 downto 0)
	);
end registro;

architecture reg of registro is
	signal Q_aux	: std_logic_vector(7 downto 0);
begin

	process(clk, clr, en)
	begin
		if clr='1' then
			Q_aux <= (others => '0');
		elsif clk'event and clk = '1' then
			if en = '1' then
				Q_aux <= I;
			end if;
		end if;
	end process;
	
	Q <= Q_aux;
	
end reg;
		