library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PORTB is
    port (
        clk    : in  STD_LOGIC;                      
        clr    : in  STD_LOGIC;
        enable : in  STD_LOGIC;
        I      : in  STD_LOGIC_VECTOR(7 downto 0); 
        O      : out STD_LOGIC_VECTOR(7 downto 0) 
    );
end entity PORTB;

-- Definición de la arquitectura (comportamiento del componente)
architecture Behavioral of PORTB is
begin

    -- Proceso principal sensible al reloj y al reset asíncrono
    process(clk, clr)
    begin
        -- Reset Asíncrono (activo alto)
        if clr = '1' then
            O <= (others => '0'); -- Pone todos los bits de la salida O a '0'

        -- Lógica Síncrona (en el flanco de subida del reloj)
        elsif rising_edge(clk) then
            if enable = '1' then
                O <= I; -- Carga el valor de la entrada I en la salida O
            end if;
        end if;
    end process;

end architecture Behavioral;