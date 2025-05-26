-- Florian Arndt
-- This module convertes the data-bytes from the PC and converts them to usable data-bytes for the message.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-----

entity Message_Byte_Processor is

    Port ( clk                 : in STD_LOGIC;
           reset               : in STD_LOGIC;
           length_byte_high_in : in STD_LOGIC_VECTOR (7 downto 0);
           length_byte_low_in  : in STD_LOGIC_VECTOR (7 downto 0);
           data_byte_in        : in STD_LOGIC_VECTOR (7 downto 0);
           data_byte_out       : out STD_LOGIC_VECTOR (7 downto 0);
           conversion_done_out : out STD_LOGIC
          );
           
end Message_Byte_Processor;

-----

architecture Behavioral of Message_Byte_Processor is

    signal buffer_in      : STD_LOGIC_VECTOR((512 * 7) - 1 downto 0) := (others => '0');
    signal bit_count      : integer := 0;
    signal byte_count     : integer := 0;

begin

    process(clk, reset)
    begin
  
        if rising_edge(clk) then
        
            if reset = '1' then
                buffer_in <= (others => '0');
                byte_count <= 0;
                
            else
            
            byte_count <= to_integer(unsigned(length_byte_high_in & length_byte_low_in));
           
            end if;
           
           
           
           
           
           
           
           
           
           
           
                
        end if;
   
    end process;

end Behavioral;
