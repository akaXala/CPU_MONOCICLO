library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ROM is
    port (
        CS : in  STD_LOGIC;                      
        I  : in  STD_LOGIC_VECTOR(15 downto 0);  
        O  : out STD_LOGIC_VECTOR(15 downto 0)   
    );
end entity ROM;

architecture memory of ROM is

    constant C_ADDR_WIDTH : natural := 16;
    constant C_DATA_WIDTH : natural := 16;
    constant C_ROM_DEPTH  : natural := 2**C_ADDR_WIDTH; 
    type t_rom_array is array (0 to C_ROM_DEPTH - 1) of STD_LOGIC_VECTOR(C_DATA_WIDTH - 1 downto 0);

    constant ROM_CONTENT : t_rom_array := (
        ------------------------------------------------------------------------
        --   Dir  ▸  Máquina  ▸  Ensamblador / Comentario
        ------------------------------------------------------------------------
         0  => x"E051",  -- ldi	r21, 0x01
         1  => x"E001",  -- ldi  r16, 0x01
         2  => x"B900",  -- out  PORT0,  r16        (out portb, temp)
         3  => x"D011",  -- rcall delay
         4  => x"E810",  -- ldi  r17, 0x80

         5  => x"0F00",  -- lsl  r16
         6  => x"B900",  -- out  PORT0,  r16        (out portb, temp)
         7  => x"D00D",  -- rcall delay
         8  => x"1B01",  -- sub  r16, r17
         9  => x"F011",  -- breq derecha
        10  => x"0F01",  -- add  r16, r17
        11  => x"CFF9",  -- rjmp izquierda2

        12  => x"0F01",  -- add  r16, r17   (derecha)
        13  => x"E011",  -- ldi  r17, 0x01
        14  => x"9506",  -- lsr  r16
        15  => x"B900",  -- out  PORT0,  r16        (out portb, temp)
        16  => x"D004",  -- rcall delay
        17  => x"1B01",  -- sub  r16, r17
        18  => x"F371",  -- breq izquierda
        19  => x"0F01",  -- add  r16, r17
        20  => x"CFF9",  -- rjmp derecha2

        21  => x"E12F",  -- ldi  r18, 31
        22  => x"E634",  -- ldi  r19, 100
        23  => x"EC48",  -- ldi  r20, 200

        -- Bloque de retardos (NOP); se ejecutan 7 veces
        24  => x"0000",  -- nop
        25  => x"0000",  -- nop
        26  => x"0000",  -- nop
        27  => x"0000",  -- nop
        28  => x"0000",  -- nop
        29  => x"0000",  -- nop
        30  => x"0000",  -- nop

        31  => x"1B45",  -- sub  r20, r21
        32  => x"F7B9",  -- brne lazo1
        33  => x"1B35",  -- sub  r19, r21
        34  => x"F7A1",  -- brne lazo2
        35  => x"1B25",  -- sub  r18, r21
        36  => x"F789",  -- brne lazo3
        37  => x"9508",  -- ret

        ------------------------------------------------------------------------
        -- Celdas no utilizadas
        others => x"FFFF"   -- valor “vacío” por defecto
    );



begin

    process (CS, I)

        variable v_addr_int : natural range 0 to C_ROM_DEPTH - 1;
    begin

        v_addr_int := to_integer(unsigned(I));

        if CS = '1' then

             if v_addr_int < C_ROM_DEPTH then
                 O <= ROM_CONTENT(v_addr_int);
             else
                 O <= x"0000"; -- NOP
             end if;
        else
            O <= (others => 'Z');
        end if;
    end process;

end architecture memory;