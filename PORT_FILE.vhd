library ieee;
use ieee.std_logic_1164.all;

entity PORT_FILE is
  port (
    clk      : in  std_logic;
    clr      : in  std_logic;
    en_w     : in  std_logic;             -- habilitación global
    sel_w_p  : in  std_logic_vector(2 downto 0); -- puerto destino
    dato     : in  std_logic_vector(7 downto 0); -- dato a escribir
    O        : out std_logic_vector(63 downto 0) -- {P3,P2,P1,P0}
  );
end PORT_FILE;

architecture rtl of PORT_FILE is
  ----------------------------------------------------------------
  -- 2→4 decoder
  ----------------------------------------------------------------
  signal dec_w : std_logic_vector(7 downto 0);
begin
  with sel_w_p select 
    dec_w <= "00000001" when "000",
             "00000010" when "001",
             "00000100" when "010",
             "00001000" when "011",
             "00010000" when "100",
				 "00100000" when "101",
             "01000000" when "110",
             "10000000" when others;

  ----------------------------------------------------------------
  -- Instancias de los cuatro puertos                            --
  ----------------------------------------------------------------
  GEN_PORTS : for i in 0 to 7 generate
    PORTx : entity work.PORTB
      port map (
        clk    => clk,
        clr    => clr,
        enable => en_w and dec_w(i),
        I      => dato,
        O      => O(8*i+7 downto 8*i)
      );
  end generate;
end rtl;
