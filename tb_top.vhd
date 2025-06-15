-- tb_top.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_top is               -- entidad vacía: solo test-bench
end tb_top;

architecture behavior of tb_top is
    ----------------------------------------------------------------
    --  Componente bajo prueba (UUT)
    ----------------------------------------------------------------
    component TOP is
        port(
            clk : in  std_logic;
            clr : in  std_logic;
            o0  : out std_logic_vector(7 downto 0);
            o1  : out std_logic_vector(7 downto 0);
            o2  : out std_logic_vector(7 downto 0);
            o3  : out std_logic_vector(7 downto 0)
        );
    end component;

    ----------------------------------------------------------------
    --  Señales del banco de pruebas
    ----------------------------------------------------------------
    signal tb_clk : std_logic := '0';
    signal tb_clr : std_logic := '1';                  -- reset activo
    signal tb_o0  : std_logic_vector(7 downto 0);
    signal tb_o1  : std_logic_vector(7 downto 0);
    signal tb_o2  : std_logic_vector(7 downto 0);
    signal tb_o3  : std_logic_vector(7 downto 0);

    constant CLK_PERIOD : time := 20 ns;               -- 50 MHz
begin
    ----------------------------------------------------------------
    --  Instancia del UUT
    ----------------------------------------------------------------
    uut : TOP
        port map (
            clk => tb_clk,
            clr => tb_clr,
            o0  => tb_o0,
            o1  => tb_o1,
            o2  => tb_o2,
            o3  => tb_o3
        );

    ----------------------------------------------------------------
    --  Generador de reloj
    ----------------------------------------------------------------
    clk_process : process
    begin
        tb_clk <= '0';
        wait for CLK_PERIOD/2;
        tb_clk <= '1';
        wait for CLK_PERIOD/2;
    end process;

    ----------------------------------------------------------------
    --  Secuencia de estímulo
    ----------------------------------------------------------------
    stimulus_process : process
    begin
        report "Iniciando simulación de TOP...";
        tb_clr <= '1';
        wait for 50 ns;               -- reset ~2,5 ciclos
        tb_clr <= '0';
        report "Reset desactivado.";
        wait for 1 ms;                -- duración total
        report "Fin de la simulación.";
        wait;
    end process;
end behavior;
