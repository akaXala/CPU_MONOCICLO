library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ALU is
	port (
		A			: in	std_logic_vector(7 downto 0);
		B			: in	std_logic_vector(7 downto 0);
		sel_alu			: in	std_logic_vector(2 downto 0);
		F			: out	std_logic_vector(7 downto 0);
		C			: out	std_logic;
		N			: out std_logic;
		Z			: out std_logic
	);
end ALU;

architecture combinational of ALU is

signal F_aux	:	std_logic_vector(8 downto 0) := "000000000";

begin 
	
	process(A, B, sel_alu)
	begin	
		case sel_alu is
		
			when "000" 	=> F_aux <= ('0' & A) + ('0' & B);
			when "001" 	=> F_aux <= ('0' & A) - ('0' & B);
			when "010" 	=> F_aux <= ('0' & A) and ('0' & B);
			when "011" 	=> F_aux <= ('0' & A) or ('0' & B);
			when "100" 	=> F_aux <= ('0' & A) xor ('0' & B);
			when "101" 	=> F_aux <= not ('0' & A);
			when "110" 	=> F_aux(8 downto 1) <= A(7 downto 0);
								F_aux(0) <= '0';
			when "111" 	=> F_aux(6 downto 0) <= A(7 downto 1);
								F_aux(7) <= '0'; 
								F_aux(8) <= A(0);
			when others => F_aux <= (others => '0');
		end case;
	end process;
	
	F <= F_aux(7 downto 0);
	C <= F_aux(8);
	N <= F_aux(7);
	Z <= '1' when F_aux(7 downto 0) = "00000000" else '0';
	
	
end combinational;
