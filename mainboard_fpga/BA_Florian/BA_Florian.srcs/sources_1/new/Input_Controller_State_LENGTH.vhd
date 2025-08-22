library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Input_Controller_State_LENGTH is
    Port ( active_in                        : in STD_LOGIC;
    
           byte_PC_in                       : in  STD_LOGIC_VECTOR(7 downto 0); -- data byte from PC
           
           byte_to_length_handling_high_out : out STD_LOGIC_VECTOR(7 downto 0);
           byte_to_length_handling_low_out  : out STD_LOGIC_VECTOR(7 downto 0);
           
           length_done_out                  : out STD_LOGIC
           
          );
                      
end Input_Controller_State_LENGTH;

---

architecture Behavioral of Input_Controller_State_LENGTH is

signal counter        : STD_LOGIC;

begin

    process(active_in,byte_PC_in)
    begin

        if active_in = '1' then
        
            if counter = '0' then
    
                byte_to_length_handling_high_out <= byte_PC_in;
                
                counter <= '1';
                
                length_done_out <= '0';
                
            else
        
                byte_to_length_handling_low_out <= byte_PC_in;
                
                counter <= '0';
                
                length_done_out <= '0';
                
            end if;
        
        end if;
    
    end process;
    
end Behavioral;
