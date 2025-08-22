library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Input_Controller_State_DATA is
    Port ( active_in                        : in STD_LOGIC;
    
           byte_PC_in                       : in  STD_LOGIC_VECTOR(7 downto 0); -- data byte from PC
           
           byte_to_message_processor_out    : out STD_LOGIC_VECTOR(7 downto 0)
           
          );
                      
end Input_Controller_State_DATA;

---

architecture Behavioral of Input_Controller_State_DATA is

begin

    process(active_in,byte_PC_in)
    begin

        if active_in = '1' then   

        end if;
    
    end process;
    
end Behavioral;
