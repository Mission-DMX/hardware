-- Florian Andt
-- testbench for length handling


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Length_Handling_tb is
end Length_Handling_tb;

architecture Behavioral of Length_Handling_tb is
    component Combine14Bit
        Port (
            clk                  : in  STD_LOGIC;
            reset                : in  STD_LOGIC;      
            byte_high_in         : in  STD_LOGIC_VECTOR(7 downto 0);
            byte_low_in          : in  STD_LOGIC_VECTOR(7 downto 0);
            length_byte_high_out : out STD_LOGIC_VECTOR(7 downto 0);
            length_byte_low_out  : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    -- Test Signals
    signal clk                  : STD_LOGIC;
    signal reset                : STD_LOGIC;
    signal byte_high_in         : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal byte_low_in          : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal length_byte_high_out : STD_LOGIC_VECTOR(7 downto 0);
    signal length_byte_low_out  : STD_LOGIC_VECTOR(7 downto 0);
    
    constant clk_period : time := 10 ns;

begin
    uut: entity work.Length_Handling
        Port map (
            clk                  => clk,
            reset                => reset,
            byte_high_in         => byte_high_in,
            byte_low_in          => byte_low_in,
            length_byte_high_out => length_byte_high_out,
            length_byte_low_out  => length_byte_low_out
        );
        
    clk_process : process
     begin
        while true loop
            clk <= '1';
            wait for clk_period / 2;
            clk <= '0';
            wait for clk_period / 2;
        end loop;
    end process;        

    stimulus: process
    begin
    
        -- Reset the system
        reset <= '1';
        wait for clk_period * 2;
        reset <= '0';
        
        byte_high_in <= "10101010"; --AA
        byte_low_in  <= "11001100"; --CC   
        --assert length_byte_high_out = "00010101"; --15
        --report "Fehler high";
        --assert length_byte_low_out  = "01001100"; --4C
        --report "Fehler low";
        wait for clk_period * 4;
        
        byte_high_in <= "11111111"; --FF 
        byte_low_in  <= "00000000"; --00
        --assert length_byte_high_out = "00111111"; --3F
        --report "Fehler high"; 
        --assert length_byte_low_out  = "10000000"; --80
        --report "Fehler low";
        wait for clk_period * 4;
        
        byte_high_in <= "00001111"; --0F
        byte_low_in  <= "11110000"; --F0
        --assert length_byte_high_out = "00000111"; --07
        --report "Fehler high"; 
        --assert length_byte_low_out  = "11110000"; --F0
        --report "Fehler low";
        wait for clk_period * 4;
        
        byte_high_in <= "01010101"; --55 
        byte_low_in  <= "00110011"; --33
        --assert length_byte_high_out = "00101010"; --2A
        --report "Fehler high"; 
        --assert length_byte_low_out  = "10110011"; --B3
        --report "Fehler low";     
        wait for clk_period * 4;

        reset <= '1';
        byte_high_in <= "01010101"; --55 
        byte_low_in  <= "00110011"; --33
        --assert length_byte_high_out = "00000000"; --00
        --report "Fehler high"; 
        --assert length_byte_low_out  = "00000000"; --00
        --report "Fehler low";     
        wait for clk_period * 4;

        wait;
    end process;

end Behavioral;

