-- Johnny Rutkowski
-- HW1
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Generic (
        count_max : natural := 200
    );
    Port ( clk : in STD_LOGIC;
           count : in STD_LOGIC;
           addr : out STD_LOGIC_VECTOR (7 downto 0));
end counter;

architecture Behavioral of counter is

    signal counter_reg : std_logic_vector(7 downto 0);
    signal counter_next: std_logic_vector(7 downto 0) := x"00" ;

begin

    counting: process(clk)
        begin
            if (rising_edge(clk)) then
                if (count = '1' and counter_reg < count_max) then
                    counter_next <= counter_next + 1;
                end if;
            end if;
        end process;
        
        counter_reg <= counter_next;
        addr <= counter_reg;

end Behavioral;
