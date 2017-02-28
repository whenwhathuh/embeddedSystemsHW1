--Johnny Rutkowski

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_counter is
--  Port ( );
end sim_counter;

architecture Behavioral of sim_counter is

component counter
    port(
        clk : in STD_LOGIC;
        count : in STD_LOGIC;
        addr : out STD_LOGIC_VECTOR (7 downto 0)
    );
end component;


signal clk : std_logic;
signal count : std_logic;
signal addr : std_logic_vector(7 downto 0);

begin

counter0 : counter
   port map(
    clk => clk,
    count => count,
    addr => addr
   );
   
process
begin
    clk <= '0';
    wait for 10ns;
    clk <= '1';
    wait for 10ns;
end process;

process
begin
    count <= '0';
    wait for 20ns;
    count <= '1';
    wait for 20ns;
    count <= '0';
    wait for 20ns;
    count <= '1';
    wait for 100ns;
    count <= '0';
    wait;
end process;

end Behavioral;













