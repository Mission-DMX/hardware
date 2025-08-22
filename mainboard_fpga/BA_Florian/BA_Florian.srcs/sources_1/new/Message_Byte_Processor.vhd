-- Florian Arndt
-- This module gets the data-bytes from the PC and converts them to usable data-bytes for the message.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-----

entity Message_Byte_Processor is

    Port ( clk                 : in  STD_LOGIC;                      -- clock
           reset               : in  STD_LOGIC;                      -- reset 
           
           data_byte_in        : in  STD_LOGIC_VECTOR (7 downto 0);  -- data from contoller
                   
          -- receiving_in        : in  STD_LOGIC;
          -- sending_in          : in  STD_LOGIC;
                   
           data_byte_out       : out STD_LOGIC_VECTOR (7 downto 0);  -- data to BRAM   
                 
           write_now_out       : out STD_LOGIC_VECTOR (0 downto 0)   -- signal to BRAM to write now
          );
           
end Message_Byte_Processor;

-----

architecture Behavioral of Message_Byte_Processor is
                              
    signal buffer_in      : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');                   -- a buffer to store  the wanted bits
    signal pointer        : natural range 15 to 0         := 15;                                -- points to were to store in the buffer  
    signal counter        : integer := 0;
    
    constant threshold    : integer := 8;                                                         -- a threshold when a full byte is available

begin

    process(clk)
    begin
    
        if rising_edge(clk) then -- synchronization
            
            if reset = '1' then --reset
                
                buffer_in <= (others => '0');
                pointer   <= 15;
                write_now_out(0) <= '0';
                data_byte_out <= "00000000"; 
                    
            else
                
                write_now_out(0) <= '0'; -- reset default

                -- 7-Bit in Buffer schieben
                if pointer >= 6 then
                    buffer_in(pointer downto pointer - 6) <= data_byte_in(6 downto 0);
                    pointer <= pointer - 7;
                end if;

                if pointer < threshold then
                    
                    data_byte_out <= buffer_in(15 downto 8);         -- data out
                    write_now_out(0) <= '1';                         -- signal write now to BRAM
                    buffer_in <= buffer_in(7 downto 0) & "00000000"; -- buffer shift
                    pointer <= pointer + 8;                          -- move pointer
                        
                end if;
                    
            end if;
                
        end if;     
               
    end process;

end Behavioral;
