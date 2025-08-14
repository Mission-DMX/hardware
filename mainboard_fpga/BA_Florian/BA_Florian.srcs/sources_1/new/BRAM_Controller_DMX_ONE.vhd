-- Florian Arndt
--


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-----


entity BRAM_Contoller_DMX_ONE is
    Port ( 
           clk           : in  STD_LOGIC; -- clock
           reset         : in  STD_LOGIC; -- reset
           data_byte_in  : in STD_LOGIC_VECTOR (7 downto 0);
           data_byte_out : out STD_LOGIC_VECTOR (7 downto 0);
           write_in      : in STD_LOGIC;
           read_in       : in STD_LOGIC;
           adress_in     : in STD_LOGIC_VECTOR (8 downto 0));
end BRAM_Contoller_DMX_ONE;

-----

architecture Behavioral of BRAM_Contoller_DMX_ONE is

component DMX_BRAM_ONE IS
  PORT (
    clka  : IN STD_LOGIC;
    ena   : IN STD_LOGIC;
    wea   : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    dina  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    clkb  : IN STD_LOGIC;
    enb   : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END component;

begin
    u1: DMX_BRAM_ONE
        port map (
            clka  => clk,
            ena   => write_in,
            wea(0)   => write_in,
            addra => adress_in,
            dina  => data_byte_in,
            clkb  => clk,
            enb   => read_in,  
            addrb => adress_in,
            doutb => data_byte_out
         );

    process(clk, reset)
    begin
    
        if rising_edge(clk) then
                      
        
        end if;
        
    
    end process;


end Behavioral;
