--Johnny Rutkowski


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_counter_lookup is
--  Port ( );
end sim_counter_lookup;

architecture Behavioral of sim_counter_lookup is

    component counter_lookup
        port(clk : in STD_LOGIC;
             count : in STD_LOGIC;
             data_out : out STD_LOGIC_VECTOR (15 downto 0)
        );
    end component;
    
    signal clk: std_logic;
    signal count: std_logic;
    signal data_out :std_logic_vector(15 downto 0);

begin

    counter_lookup0 : counter_lookup
    port map(
        clk => clk,
        count => count,
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
        wait for 10ns;
        count <= '1';
        wait for 20ns;
        count <= '0';
        wait for 20ns;
        count <= '1';
        wait for 20ns;
        count <= '0';
        wait;
    end process;

end Behavioral;
























