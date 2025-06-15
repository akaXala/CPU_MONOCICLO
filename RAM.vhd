library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity RAM is
    port(clk    : in  std_logic;
         we     : in  std_logic;
         wd     : in  std_logic_vector(15 downto 0);
         rd     : out  std_logic_vector(15 downto 0);
         A      : in std_logic_vector(3 downto 0));
end RAM;

architecture memory of RAM is

    type ram_type is array (0 to 15) of std_logic_vector(15 downto 0);
    signal ram : ram_type := (others => (others => '0'));
	 
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if we = '1' then
                ram(to_integer(unsigned(A))) <= wd;
            end if;
        end if;
    end process;
	 
	 rd <= ram(to_integer(unsigned(A)));
	 
end architecture memory;