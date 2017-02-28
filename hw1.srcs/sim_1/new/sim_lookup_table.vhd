--Johnny Rutkowski

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_lookup_table is
--  Port ( );
end sim_lookup_table;

architecture Behavioral of sim_lookup_table is

component lookup_table
    port(
        clk : in STD_LOGIC;
        addr : in STD_LOGIC_VECTOR(7 downto 0);
        data_out : out STD_LOGIC_VECTOR (15 downto 0)
    );
end component;

signal clk : std_logic;
signal addr : std_logic_vector(7 downto 0);
signal data_out : std_logic_vector(15 downto 0);

begin

lookup_table0 : lookup_table
    port map(
        clk => clk,
        addr => addr,
        data_out => data_out
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
    addr <= x"0000";
    wait for 20ns;
    addr <= x"0005";
    wait for 20ns;
    addr <= x"0000";
    wait for 20ns;
    addr <= x"00F0";
    wait for 30ns;
    addr <= x"0000";
    wait;
end process;

end Behavioral;
