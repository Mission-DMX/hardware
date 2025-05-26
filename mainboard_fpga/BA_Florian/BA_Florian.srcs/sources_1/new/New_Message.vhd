-- Florian Arndt
-- This modul tests if a byte has a 1 as most significant Byte.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-----

entity new_message is
    Port ( 
        clk                : in  STD_LOGIC; 
        reset              : in  STD_LOGIC;
        byte_in            : in STD_LOGIC_VECTOR (0 to 7);
        is_new_message_out : out STD_LOGIC);
end new_message;

------

architecture Behavioral of new_message is

begin

    process(clk, reset, byte_in)
    begin
    
        if rising_edge(clk) then
        
            if reset = '1' then

                is_new_message_out <= '0';
            
            else
        
                if byte_in(7) = '1' then
                    is_new_message_out <= '1';
                else
                    is_new_message_out <= '0';             
                end if;
          
           end if;
           
    end if;      
        
    end process;
    
end Behavioral;

