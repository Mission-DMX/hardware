library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DMX_UART_Combo_tb is
end DMX_UART_Combo_tb;

architecture Behavioral of DMX_UART_Combo_tb is

    signal clk_sig             : STD_LOGIC;
    signal reset_sig           : STD_LOGIC;
    signal dmx_tx_sig          : STD_LOGIC;
    --signal dmx_state_out_sig   : STD_LOGIC_VECTOR(3 downto 0);
    --signal data_state_out_sig  : STD_LOGIC_VECTOR(9 downto 0);           
    signal bram_enable_out_sig : STD_LOGIC;
    signal bram_data_in_sig    : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal bram_addr_out_sig   : STD_LOGIC_VECTOR(8 downto 0);
    signal dmx_clk_sig         : STD_LOGIC; 

begin

    u_DMX_UART_Combo : entity work.DMX_UART_Combo
        port map (
            clk             => clk_sig,
            reset           => reset_sig,
            dmx_tx          => dmx_tx_sig,
            --dmx_state_out   => dmx_state_out_sig,  
            --data_state_out  => data_state_out_sig,       
            bram_enable_out => bram_enable_out_sig,
            bram_data_in    => bram_data_in_sig,
            bram_addr_out   => bram_addr_out_sig,
            dmx_clk         => dmx_clk_sig
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
    bram_data_in_sig <= "10101010";
------------------------------------------------------------------------ 

------------------------------------------------------------------------             


end Behavioral;
