library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CONTROLLER_tb is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC);
end CONTROLLER_tb;

architecture Behavioral of CONTROLLER_tb is

    signal clk_sig             : STD_LOGIC;
    signal reset_sig           : STD_LOGIC;
    signal enable_a_in_sig     :  STD_LOGIC;
    signal adress_a_in_sig : STD_LOGIC_VECTOR(8 downto 0);
    signal data_byte_in_sig : STD_LOGIC_VECTOR(7 downto 0);
    signal write_in_sig : STD_LOGIC;
    

begin

    u_CONTROLLER : entity work.CONTROLLER
        port map (
            clk             => clk_sig,
            reset           => reset_sig,
            enable_a_in  => enable_a_in_sig,
            adress_a_in  => adress_a_in_sig,
            data_byte_in => data_byte_in_sig,
            write_in  => write_in_sig
            );
            

------------------------------------------------------------------------
--clock process
    process
    begin
        while true loop
            clk_sig <= '1';
             wait for 5 ns;
            clk_sig <= '0'; 
            wait for 5 ns;
        end loop;
    end process;
------------------------------------------------------------------------ 

    reset_sig <= '0';
    
end Behavioral;
