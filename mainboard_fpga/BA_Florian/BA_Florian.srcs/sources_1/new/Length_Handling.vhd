-- Florian Arndt
-- This module turns the two length bytes from the PC into a 16 Bit number and sends it back in two bytes.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-----

entity Length_Handling is
    Port (
        clk                  : in  STD_LOGIC;                    -- clock
        reset                : in  STD_LOGIC;                    -- reset
        byte_high_in         : in  STD_LOGIC_VECTOR(7 downto 0); -- upper byte of data from PC
        byte_low_in          : in  STD_LOGIC_VECTOR(7 downto 0); -- lower byte of data from PC
        length_byte_high_out : out STD_LOGIC_VECTOR(7 downto 0); -- upper byte of length returned
        length_byte_low_out  : out STD_LOGIC_VECTOR(7 downto 0)  -- lower byte of length returned
    );
end Length_Handling;

-----

architecture Behavioral of Length_Handling is
    signal combined : STD_LOGIC_VECTOR(15 downto 0); -- signal to store combined value
    
begin

    process(clk, reset, byte_high_in, byte_low_in)
    begin
        
    
        if rising_edge(clk) then -- synchronization
            
            if reset = '1' then -- check for reset
                        
                -- set output to zero in case of reset 
                length_byte_high_out <= "00000000";
                length_byte_low_out  <= "00000000";
            
            else
                
                -- combine last 7 Bit of upper and lower input, put two zeros infront, and put it out as two bytes 
                combined <= "00" & byte_high_in(6 downto 0) & byte_low_in(6 downto 0);
                length_byte_high_out <= combined(15 downto 8);
                length_byte_low_out  <= combined(7 downto 0);
            
            end if;
            
        end if;
        
    end process;
    
end Behavioral;

