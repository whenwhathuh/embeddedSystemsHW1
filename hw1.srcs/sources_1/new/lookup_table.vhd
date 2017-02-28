--Johnny Rutkowski

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.ALL;

entity lookup_table is
    Port ( clk : in STD_LOGIC;
           addr : in STD_LOGIC_VECTOR (7 downto 0);
           data_out : out STD_LOGIC_VECTOR (15 downto 0));
end lookup_table;

architecture Behavioral of lookup_table is
    type array_letters is array (0 to 3) of std_logic_vector(15 downto 0);
    signal letters : array_letters;
begin

    letters <= (x"0043", x"0050",x"0045", x"0047");
    
    lookup: process(clk)
    begin
        if (rising_edge(clk)) then
            if (addr < 4) then
                data_out <= letters(to_integer(signed(addr)));
             else
                data_out <= x"0000";
             end if;
        end if;
    end process;
    

end Behavioral;








