----------------------------------------------------------------------------------
-- Creator: Florian Arndt 
-- 
-- Module Name: New_Message
-- Project Name: Florian Arndt Bachelor Arbeit 
-- Description: This module tests, if a new message has begun
--              by controlling if the MSB of a Byte from th PC is a one.
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-----

entity new_message is
    Port ( 
        byte_in            : in  STD_LOGIC_VECTOR (7 downto 0); -- byte of data from PC
        is_new_message_out : out STD_LOGIC                      -- is a new message signal
    );                
end new_message;

------

architecture Behavioral of new_message is

    begin
           
        -- return 1 if the MSB is a 1   
        is_new_message_out <= byte_in(7);
                  
end Behavioral;

