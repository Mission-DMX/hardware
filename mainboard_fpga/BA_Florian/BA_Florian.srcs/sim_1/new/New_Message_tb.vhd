library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity new_message_tb is
end new_message_tb;

architecture Behavioral of new_message_tb is
    component new_message
        Port (
            byte_in     : in  STD_LOGIC_VECTOR(7 downto 0);
            is_new_message_out  : out STD_LOGIC
        );
    end component; 
    
    --test signals and constants
    signal byte_in            : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal is_new_message_out : STD_Logic;

    
  
begin

    uut: new_message
        Port map (
            byte_in             => byte_in,
            is_new_message_out  => is_new_message_out         
        );
               
    stimulus_process: process
    begin
    
        --test one
        byte_in <= "01111111"; --7F -> 0
        wait for 10 ns;

        --test two
        byte_in <= "10000000"; --80 -> 1
        wait for 10 ns;
        
        --test three
        byte_in <= "00000000"; --00 -> 0
        wait for 10 ns;
             
        --test four
        byte_in <= "11111111"; --FF -> 1

        wait;
    end process;
end Behavioral;
