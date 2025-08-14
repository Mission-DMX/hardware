-- Florian Andt
-- testbench for length handling


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Length_Handling_tb is
end Length_Handling_tb;

architecture Behavioral of Length_Handling_tb is
    component Length_Handling
        Port (     
            byte_high_in         : in  STD_LOGIC_VECTOR(7 downto 0);
            byte_low_in          : in  STD_LOGIC_VECTOR(7 downto 0);
            length_byte_high_out : out STD_LOGIC_VECTOR(7 downto 0);
            length_byte_low_out  : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    -- Test Signals
    signal byte_high_in          : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal byte_low_in           : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal length_byte_high_out  : STD_LOGIC_VECTOR(7 downto 0);
    signal length_byte_low_out   : STD_LOGIC_VECTOR(7 downto 0);

begin

    uut: entity work.Length_Handling
        Port map (
            byte_high_in         => byte_high_in,
            byte_low_in          => byte_low_in,
            length_byte_high_out => length_byte_high_out,
            length_byte_low_out  => length_byte_low_out
        );             

    stimulus: process
    begin
    
        --test one
        byte_high_in <= "10101010"; --AA -> 15
        byte_low_in  <= "11001100"; --CC -> 4C 
        wait for 10 ns;
        
        --test two
        byte_high_in <= "11111111"; --FF -> 3F
        byte_low_in  <= "00000000"; --00 -> 80
        wait for 10 ns;
        
        --test three
        byte_high_in <= "00001111"; --0F -> 07
        byte_low_in  <= "11110000"; --F0 -> F0
        wait for 10 ns;
        
        --test four
        byte_high_in <= "01010101"; --55 -> 2A
        byte_low_in  <= "00110011"; --33 -> B3

        wait;
        
    end process;

end Behavioral;

