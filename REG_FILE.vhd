library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity REG_FILE is
	port(
		clk		: in	std_logic;
		clr		: in	std_logic;
		en_w		: in	std_logic;
		dato		: in	std_logic_vector(7 downto 0);
		sel_w_d	: in 	std_logic_vector(4 downto 0);
		sel_r_d	: in	std_logic_vector(4 downto 0);
		sel_r_r	: in	std_logic_vector(4 downto 0);
		O_d		: out	std_logic_vector(7 downto 0);
		O_r		: out std_logic_vector(7 downto 0)
	);
end REG_FILE;

architecture archivo of REG_FILE	is

	component registro is
		port(
			clk	: in	std_logic;
			clr	: in	std_logic;
			en		: in	std_logic;
			I		: in	std_logic_vector(7 downto 0);
			Q		: out	std_logic_vector(7 downto 0)
		);
	end component;
	
	component DECO is
		port(
			sel_w_d		: in	std_logic_vector(4 downto 0);
			en_w			: in	std_logic;
			O				: out	std_logic_vector(31 downto 0)
		);
	end component;
	
	component MUX is
		port(
			sel	: in	std_logic_vector(4 downto 0);
			I		: in	std_logic_vector(255 downto 0);
			O		: out	std_logic_vector(7 downto 0)
		);
	end component;
	
	signal O_aux	: std_logic_vector(31 downto 0);
	signal Q_aux	: std_logic_vector(255 downto 0);

begin

	DECODIFICADOR	: DECO
		port map(
			sel_w_d		=> sel_w_d,
			en_w			=> en_w,
			O				=> O_aux
		);
		
		
	GEN_REG	: for i in 0 to 31 generate
		REG_INST	:	registro
			port map(
				clk	=> clk,
				clr	=> clr,
				en		=> O_aux(i),
				I		=> dato,
				Q		=> Q_aux((i*8 + 7) downto (i*8))
			);
		end generate GEN_REG;
	MUX_D	: MUX
		port map(
			sel		=>	sel_r_d,
			I			=> Q_aux,
			O			=> O_d
		);
		
	MUX_R	: MUX
		port map(
			sel		=>	sel_r_r,
			I			=> Q_aux,
			O			=> O_r
		);
		
end archivo;