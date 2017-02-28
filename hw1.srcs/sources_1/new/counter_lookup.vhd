--Johnny Rutkowski

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_lookup is
    Port ( clk : in STD_LOGIC;
           count : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (15 downto 0));
end counter_lookup;

architecture Behavioral of counter_lookup is

    component counter
        port(clk, count : in std_logic;
             addr : out std_logic_vector(7 downto 0));
    end component;
    
    component lookup_table
        port(clk : in std_logic;
             addr :in std_logic_vector(7 downto 0);
             data_out : out std_logic_vector(15 downto 0));
    end component;
    
    signal addr: std_logic_vector(7 downto 0);

begin
    
    counter_inst_0 : counter
    port map( 
        clk => clk,
        count => count,
        addr => addr
    );
    
    lookup_inst_0 : lookup_table
    port map(
        clk => clk,
        addr => addr,
        data_out => data_out
    );













end Behavioral;
