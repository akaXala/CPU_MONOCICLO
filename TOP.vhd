library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity TOP is
	port(
		clk	: in	std_logic;
		clr	: in	std_logic;
		o0		: out	std_logic_vector(7 downto 0);
		o1		: out	std_logic_vector(7 downto 0);
		o2		: out	std_logic_vector(7 downto 0);
		o3		: out	std_logic_vector(7 downto 0);
		o4		: out	std_logic_vector(7 downto 0);
		o5		: out	std_logic_vector(7 downto 0);
		o6		: out	std_logic_vector(7 downto 0);
		o7		: out	std_logic_vector(7 downto 0)
	);
end TOP;

architecture CPU of TOP is

	component PC is
		port(
			clk		: in	std_logic;
			clr		: in	std_logic;
			I			: in	std_logic_vector(15 downto 0);
			O			: out	std_logic_vector(15 downto 0)
		);
	end component;
	
	component SP is
		port(
			clk		: in	std_logic;
			clr		: in	std_logic;
			I			: in	std_logic_vector(3 downto 0);
			O			: out	std_logic_vector(3 downto 0)
		);
	end component;
	
	component REG_FILE is
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
	end component;
	
	component RAM is
		 port(
				clk    : in  std_logic;
				we     : in  std_logic;
				wd     : in  std_logic_vector(15 downto 0);
				rd     : out  std_logic_vector(15 downto 0);
				A      : in std_logic_vector(3 downto 0)
		);
	end component;
	
	component ROM is
		 port (
			  CS : in  std_logic;
			  I  : in  std_logic_vector(15 downto 0);
			  O  : out std_logic_vector(15 downto 0)
		 );
	end component;
	
	component DECO_INSTR is
		 Port ( 
			I 				: in	std_logic_vector (15 downto 0);
			sel_read_d 	: out	std_logic_vector (4 downto 0);
			sel_read_r 	: out	std_logic_vector (4 downto 0);
			sel_w_d 		: out	std_logic_vector (4 downto 0);
			sel_alu 		: out	std_logic_vector (2 downto 0);
			ld 			: out	std_logic;
			ld_mov 		: out	std_logic;
			br 			: out	std_logic;
			bn 			: out	std_logic;
			sel_rel 		: out	std_logic;
			en_w 			: out	std_logic;
			en_port 		: out	std_logic;
			sel_w_p 		: out	std_logic_vector(2 downto 0);
			en_sreg 		: out	std_logic;
			s1 			: out	std_logic;
			s0 			: out	std_logic;
			ret_s 		: out	std_logic);
	end component;
	
	component ALU is
		port (
			A			: in	std_logic_vector(7 downto 0);
			B			: in	std_logic_vector(7 downto 0);
			sel_alu			: in	std_logic_vector(2 downto 0);
			F			: out	std_logic_vector(7 downto 0);
			C			: out	std_logic;
			N			: out std_logic;
			Z			: out std_logic
		);
	end component;
	
	component SREG is
		port(
			clk	: in	std_logic;
			clr	: in	std_logic;
			en		: in	std_logic;
			ent	: in	std_logic;
			sal	: out	std_logic
		);
	end component;
	
	component PORTB is
		 port (
			  clk    : in  std_logic;                      
			  clr    : in  std_logic;
			  enable : in  std_logic;
			  I      : in  std_logic_vector(7 downto 0); 
			  O      : out std_logic_vector(7 downto 0) 
		 );
	end component;
	
	signal port_bus : std_logic_vector(63 downto 0);
	
	signal I_aux				: std_logic_vector(15 downto 0);
	signal I_PC_aux			: std_logic_vector(15 downto 0);
	signal offset_aux			: std_logic_vector(15 downto 0);	
	signal PC_aux				: std_logic_vector(15 downto 0);
	
	-- Señales de control
	signal I 			: std_logic_vector (15 downto 0);
	signal sel_read_d : std_logic_vector (4 downto 0);
	signal sel_read_r : std_logic_vector (4 downto 0);
	signal sel_w_d 	: std_logic_vector (4 downto 0);
	signal sel_alu 	: std_logic_vector (2 downto 0);
	signal ld 			: std_logic;
	signal ld_mov 		: std_logic;
	signal br 			: std_logic;
	signal bn 			: std_logic;
	signal sel_rel 	: std_logic;
	signal en_w 		: std_logic;
	signal en_port 	: std_logic;
	signal sel_w_p 	: std_logic_vector(2 downto 0);
	signal en_sreg 	: std_logic;
	signal s1 			: std_logic;
	signal s0 			: std_logic;
	signal ret_s 		: std_logic;
	
	signal br_mux_aux			: std_logic_vector(15 downto 0);
	signal off_br_aux			: std_logic_vector(15 downto 0);
	signal off_rjmp_aux		: std_logic_vector(15 downto 0);
	-- Señales de subrutina
	signal rd_aux				: std_logic_vector(15 downto 0);
	signal wd_aux				: std_logic_vector(15 downto 0);
	
	signal a_aux				: std_logic_vector(3 downto 0);
	signal call_aux			: std_logic_vector(3 downto 0);
	signal ret_aux				: std_logic_vector(3 downto 0);
	signal i_sp_aux			: std_logic_vector(3 downto 0);
	signal o_sp_aux			: std_logic_vector(3 downto 0);
	
	signal dato_I_aux			: std_logic_vector(7 downto 0);
	signal F_aux				: std_logic_vector(7 downto 0);
	signal O_r_aux				: std_logic_vector(7 downto 0);
	signal O_d_aux				: std_logic_vector(7 downto 0);
	signal ent_sreg_aux		: std_logic;
	signal sal_sreg_aux		: std_logic;
	signal branch_aux			: std_logic;
	
	signal z_0		: std_logic;
	signal z_1		: std_logic;
begin

	i_sp_aux <= o_sp_aux when s1 = '0' and s0 = '0' else
					call_aux when s1 = '0' and s0 = '1' else
					ret_aux	when s1 = '1' and s0 = '0' else
					(others => '0');

	call_aux <= std_logic_vector( unsigned(o_sp_aux) - 2 );
	ret_aux  <= std_logic_vector( unsigned(o_sp_aux) + 2 );
	a_aux 	<= o_sp_aux when s1 = '0' else ret_aux;
	
	STACK_POINTER		: SP
		port map(
			clk	=> clk,
			clr	=> clr,
			I		=> i_sp_aux,
			O 		=> o_sp_aux
		);
	
	wd_aux 	<= std_logic_vector(unsigned(pc_aux) + 1);
	
	br_mux_aux <= I_pc_aux when ret_s = '0' else rd_aux;
	
	I_pc_aux <= std_logic_vector(unsigned(offset_aux) + unsigned(PC_aux));
	
	off_br_aux   <= std_logic_vector( unsigned(resize( signed(I_aux(9 downto 3)), 16 )) + 1);
	off_rjmp_aux <= std_logic_vector( unsigned(resize( signed(I_aux(11 downto 0)), 16 ) ) + 1);
	
	offset_aux 	<= x"0001" when sel_rel = '0' and branch_aux = '0' else
						off_br_aux when sel_rel = '0' and branch_aux = '1' else 
						off_rjmp_aux when sel_rel = '1' and branch_aux = '0' else
						(others => '0');
	dato_I_aux 	<= I_aux(11 downto 8) & I_aux(3 downto 0) when ld_mov = '0' and ld = '0'
						else O_r_aux when ld_mov = '0' and ld = '1'
						else F_aux when ld_mov = '1' and ld = '0'
						else (others => '0');

	z_0	<= bn and not sal_sreg_aux;
	z_1	<= br and sal_sreg_aux;
	branch_aux	<= z_0 or z_1;
	
						
	PROGRAM_COUNTER	: PC 
		port map(
			clk	=> clk,
			clr	=> clr,
			I		=> br_mux_aux,
			O		=> PC_aux
		);
		
	
	
	PROGRAM_MEMORY		: ROM 
		port map(
			CS		=> '1',
			I		=> PC_aux,
			O		=>	I_aux
		);
		
	STACK		: RAM
		port map(
			clk	=> clk,
			we    => s0,
			wd		=>	wd_aux,
			rd    =>	rd_aux,
			A     => a_aux
		);
	
	
	INSTR_DECODER	:  DECO_INSTR 
		 Port map( 
				I 				=> I_aux,
				sel_read_d 	=> sel_read_d,
				sel_read_r 	=> sel_read_r,
				sel_w_d 		=> sel_w_d,
				sel_alu 		=> sel_alu,
				ld 			=> ld,
				ld_mov 		=> ld_mov,
				br 			=> br,
				bn 			=> bn,
				sel_rel		=> sel_rel,
				en_w 			=> en_w,
				en_port 		=> en_port,
				sel_w_p  	=> sel_w_p,
				en_sreg 		=> en_sreg,
				s1 			=> s1,
				s0 			=> s0,
				ret_s 		=> ret_s
		);
		
	REGE			: REG_FILE
		port map(
			clk		=> clk,
			clr		=> clr,
			en_w		=> en_w,
			dato		=> dato_I_aux,
			sel_w_d	=> sel_w_d,
			sel_r_d	=> sel_read_d,
			sel_r_r	=> sel_read_r,
			O_d		=> O_d_aux,
			O_r		=> O_r_aux
		);
			
	ARITMETHIC_LOGIC_UNIT	: ALU
		port map(
			A			=> O_d_aux,
			B			=> O_r_aux,
			sel_alu	=> sel_alu,
			F			=> F_aux,
			C			=> open,
			N			=> open,
			Z			=> ent_sreg_aux
		);
		
	STATE_REG : SREG
		port map(
			clk	=> clk,
			clr	=> clr,
			en		=> en_sreg,
			ent	=> ent_sreg_aux,
			sal	=> sal_sreg_aux
		);
	
	PORTS : entity work.PORT_FILE
		port map(
			 clk      => clk,
			 clr      => clr,
			 en_w     => en_port,
			 sel_w_p  => sel_w_p,
			 dato     => O_r_aux,
			 O        => port_bus         -- {P3,P2,P1,P0}
		  );
		  
	o0 <= port_bus(7 downto 0);
	o1 <= port_bus(15 downto 8);
	o2 <= port_bus(23 downto 16);
	o3 <= port_bus(31 downto 24);
	o4 <= port_bus(39 downto 32);
	o5 <= port_bus(47 downto 40);
	o6 <= port_bus(55 downto 48);
	o7 <= port_bus(63 downto 56);
	
end CPU;