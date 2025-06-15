library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;       procesador va a tenerl un clk, port   -- los branch no afeectan banderas

entity DECO_INSTR is
    Port ( I : in  STD_LOGIC_VECTOR (15 downto 0);
           sel_read_d : out  STD_LOGIC_VECTOR (4 downto 0);
           sel_read_r : out  STD_LOGIC_VECTOR (4 downto 0);
           sel_w_d : out  STD_LOGIC_VECTOR (4 downto 0);
           sel_alu : out  STD_LOGIC_VECTOR (2 downto 0);
           ld : out  STD_LOGIC;
           ld_mov : out  STD_LOGIC;
           br : out  STD_LOGIC;
           bn : out  STD_LOGIC;
			  sel_rel : out  STD_LOGIC;
			  en_w : out  STD_LOGIC;
			  en_port : out  STD_LOGIC;
			  sel_w_p  : out std_logic_vector(2 downto 0);
			  en_sreg : out  STD_LOGIC;
			  s1 : out  STD_LOGIC;
			  s0 : out  STD_LOGIC;
			  ret_s : out  STD_LOGIC);
end DECO_INSTR;

architecture Behavioral of DECO_INSTR is
	--estamos haciendo nuestro decodicficador de instrucion y vamod a implementar las instrucciones  =>  <=

begin

	process(I)
		begin
			case I(15 downto 12) is
				when "0000" =>            --add, lsl, nop
					if(I(11 downto 0)=x"000")then   --nop    siempre va hacer una operacion de pc+1
						sel_w_d <="00000";
						sel_read_d <="00000";
						sel_read_r <="00000";   
						sel_alu <="000";
						ld <='0';
						ld_mov <='0';
						br <='0';
						bn <='0';
						sel_rel <='0';
						en_w <='0';
						en_port <='0';
						sel_w_p  <= I(2 downto 0);
						en_sreg <='0';
						s1 <='0';
						s0 <='0';
						ret_s <='0';
					elsif(I(8 downto 4)=I(9)&I(3 downto 0)) then  ---lsl
						sel_w_d <=I(8 downto 4);
						sel_read_d <=I(8 downto 4);
						sel_read_r <="00000";   
						sel_alu <="110";
						ld <='0';
						ld_mov <='1';
						br <='0';
						bn <='0';
						sel_rel <='0';  --salto relativo
						en_w <='1';
						en_port <='0';
						sel_w_p  <= I(2 downto 0);
						en_sreg <='1';
						s1 <='0';
						s0 <='0';
						ret_s <='0';
					else    --add
						sel_w_d <=I(8 downto 4);
						sel_read_d <=I(8 downto 4);
						sel_read_r <=I(9)&I(3 downto 0);   
						sel_alu <="000";
						ld <='0';
						ld_mov <='1';
						br <='0';
						bn <='0';
						sel_rel <='0';  --salto relativo
						en_w <='1';
						en_port <='0';
						sel_w_p  <= I(2 downto 0);
						en_sreg <='1';
						s1 <='0';
						s0 <='0';
						ret_s <='0';
					end if;
				when "0001" =>    ---sub
					sel_w_d <=I(8 downto 4);
					sel_read_d <=I(8 downto 4);
					sel_read_r <=I(9)&I(3 downto 0);   
					sel_alu <="001";
					ld <='0';
					ld_mov <='1';
					br <='0';
					bn <='0';
					sel_rel <='0';  --salto relativo
					en_w <='1';
					en_port <='0';
					sel_w_p  <= I(2 downto 0);
					en_sreg <='1';
					s1 <='0';
					s0 <='0';
					ret_s <='0';
				when "0010" =>    --and, or, xor, mov
					if(I(11 downto 10)="00") then   --and
						sel_w_d <=I(8 downto 4);
						sel_read_d <=I(8 downto 4);
						sel_read_r <=I(9)&I(3 downto 0);   
						sel_alu <="010";
						ld <='0';
						ld_mov <='1';
						br <='0';
						bn <='0';
						sel_rel <='0';  --salto relativo
						en_w <='1';
						en_port <='0';
						sel_w_p  <= I(2 downto 0);
						en_sreg <='1';
						s1 <='0';
						s0 <='0';
						ret_s <='0';
					elsif(I(11 downto 10)="10") then --or
					   sel_w_d <=I(8 downto 4);
						sel_read_d <=I(8 downto 4);
						sel_read_r <=I(9)&I(3 downto 0);   
						sel_alu <="011";
						ld <='0';
						ld_mov <='1';
						br <='0';
						bn <='0';
						sel_rel <='0';  --salto relativo
						en_w <='1';
						en_port <='0';
						sel_w_p  <= I(2 downto 0);
						en_sreg <='1';
						s1 <='0';
						s0 <='0';
						ret_s <='0';
					elsif(I(11 downto 10)="01") then  --xor
						sel_w_d <=I(8 downto 4);
						sel_read_d <=I(8 downto 4);
						sel_read_r <=I(9)&I(3 downto 0);   
						sel_alu <="100";
						ld <='0';
						ld_mov <='1';
						br <='0';
						bn <='0';
						sel_rel <='0';  --salto relativo
						en_w <='1';
						en_port <='0';
						sel_w_p  <= I(2 downto 0);
						en_sreg <='1';
						s1 <='0';
						s0 <='0';
						ret_s <='0';
					else
						sel_w_d <=I(8 downto 4);
						sel_read_d <=I(8 downto 4);
						sel_read_r <=I(9)&I(3 downto 0);   
						sel_alu <="100";
						ld <='1';
						ld_mov <='0';
						br <='0';
						bn <='0';
						sel_rel <='0';  --salto relativo
						en_w <='1';
						en_port <='0';
						sel_w_p  <= I(2 downto 0);
						en_sreg <='0';
						s1 <='0';
						s0 <='0';
						ret_s <='0';
					end if;
				when "1001" =>    --comp, lsr, ret
					if(I(3 downto 0)="0000") then 
						sel_w_d <=I(8 downto 4);
						sel_read_d <=I(8 downto 4);
						sel_read_r <="00000";   
						sel_alu <="101";
						ld <='0';
						ld_mov <='1';
						br <='0';
						bn <='0';
						sel_rel <='0';  --salto relativo
						en_w <='1';
						en_port <='0';
						sel_w_p  <= I(2 downto 0);
						en_sreg <='1';
						s1 <='0';
						s0 <='0';
						ret_s <='0';
					elsif(I(3 downto 0)="0110") then   --lsr
						sel_w_d <=I(8 downto 4);
						sel_read_d <=I(8 downto 4);
						sel_read_r <="00000";   
						sel_alu <="111";
						ld <='0';
						ld_mov <='1';
						br <='0';
						bn <='0';
						sel_rel <='0';  --salto relativo
						en_w <='1';
						en_port <='0';
						sel_w_p  <= I(2 downto 0);
						en_sreg <='1';
						s1 <='0';
						s0 <='0';
						ret_s <='0';
					else                 --ret
						sel_w_d <=I(8 downto 4);
						sel_read_d <=I(8 downto 4);
						sel_read_r <="00000";   
						sel_alu <="111";
						ld <='0';      --lo que se mete al archivo registro
						ld_mov <='1';
						br <='0';
						bn <='0';
						sel_rel <='0';  --salto relativo
						en_w <='0';
						en_port <='0';
						sel_w_p  <= I(2 downto 0);
						en_sreg <='1';
						s1 <='1';
						s0 <='0';
						ret_s <='1';
					end if;
				when "1110" =>      --ldi
					sel_w_d <=('1'& I(7 downto 4));
					sel_read_d <="00000";
					sel_read_r <="00000";   
					sel_alu <="111";
					ld <='0';      --lo que se mete al archivo registro
					ld_mov <='0';
					br <='0';
					bn <='0';
					sel_rel <='0';  --salto relativo
					en_w <='1';
					en_port <='0';
					sel_w_p  <= I(2 downto 0);
					en_sreg <='0';
					s1 <='0';
					s0 <='0';
					ret_s <='0';
				when "1111" =>      --BREQ,BRNE
					if(I(11 downto 10)="00") then     --BREQ
						sel_w_d <=('1'& I(7 downto 4));
						sel_read_d <="00000";
						sel_read_r <="00000";   
						sel_alu <="111";
						ld <='0';      --lo que se mete al archivo registro
						ld_mov <='0';
						br <='1';    --
						bn <='0';
						sel_rel <='0';  --salto relativo
						en_w <='0';
						en_port <='0';
						sel_w_p  <= I(2 downto 0);
						en_sreg <='0';
						s1 <='0';
						s0 <='0';
						ret_s <='0';
					else    --BRNE
						sel_w_d <=('1'& I(7 downto 4));
						sel_read_d <="00000";
						sel_read_r <="00000";   
						sel_alu <="111";
						ld <='0';      --lo que se mete al archivo registro
						ld_mov <='0';
						br <='0';    --
						bn <='1';
						sel_rel <='0';  --salto relativo
						en_w <='0';
						en_port <='0';
						sel_w_p  <= I(2 downto 0);
						en_sreg <='0';
						s1 <='0';
						s0 <='0';
						ret_s <='0';
					end if;
				when "1100" =>   --RJUMP
					sel_w_d <=('1'& I(7 downto 4));
					sel_read_d <="00000";
					sel_read_r <="00000";   
					sel_alu <="111";
					ld <='0';      --lo que se mete al archivo registro
					ld_mov <='0';
					br <='0';    --NO es branch
					bn <='0';
					sel_rel <='1';  --salto relativo
					en_w <='0';
					en_port <='0';
					sel_w_p  <= I(2 downto 0);
					en_sreg <='0';
					s1 <='0';
					s0 <='0';
					ret_s <='0';
				when "1101" =>   --RCALL
					sel_w_d <=('1'& I(7 downto 4));
					sel_read_d <="00000";
					sel_read_r <="00000";   
					sel_alu <="111";
					ld <='0';      --lo que se mete al archivo registro
					ld_mov <='0';
					br <='0';    --NO es branch
					bn <='0';
					sel_rel <='1';  --salto relativo
					en_w <='0';
					en_port <='0';
					sel_w_p  <= I(2 downto 0);
					en_sreg <='0';
					s1 <='0';
					s0 <='1';
					ret_s <='0';
				when "1011" =>    --"1011" =>   --OUT
					sel_w_d <=('1'& I(7 downto 4));
					sel_read_d <="00000";
					sel_read_r <= I(8 downto 4);   
					sel_alu <="111";
					ld <='0';      --lo que se mete al archivo registro
					ld_mov <='0';
					br <='0';    --NO es branch
					bn <='0';
					sel_rel <='0';  --salto relativo
					en_w <='0';
					en_port <='1';--Vamos a escribir en el puerto
					sel_w_p  <= I(2 downto 0);
					en_sreg <='0';
					s1 <='0';
					s0 <='0';
					ret_s <='0';
				when others =>
					sel_w_d <="00000";
					sel_read_d <="00000";
					sel_read_r <="00000";   
					sel_alu <="000";
					ld <='0';
					ld_mov <='0';
					br <='0';
					bn <='0';
					sel_rel <='0';
					en_w <='0';
					en_port <='0';
					sel_w_p  <= I(2 downto 0);
					en_sreg <='0';
					s1 <='0';
					s0 <='0';
					ret_s <='0';
				end case;
	end process;				
end Behavioral;