library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Input_Controller_State_IDLE is
    Port ( active_in                        : in STD_LOGIC;
    
           byte_PC_in                       : in  STD_LOGIC_VECTOR(7 downto 0); -- data byte from PC
           
           byte_to_new_message_out          : out STD_LOGIC_VECTOR(7 downto 0); -- sending byte to modul
           byte_to_message_type_recognition : out STD_LOGIC_VECTOR(7 downto 0)  -- sending byte to modul
          );
                      
end Input_Controller_State_IDLE;

---

architecture Behavioral of Input_Controller_State_IDLE is

begin

    process(active_in,byte_PC_in)
    begin

        if active_in = '1' then
    
            byte_to_new_message_out          <= byte_PC_in;
            byte_to_message_type_recognition <= byte_PC_in;
    
        end if;
    
    end process;
    
end Behavioral;
