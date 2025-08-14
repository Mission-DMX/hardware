-- Florian Arndt
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-----

entity Main_Controller is
    Port ( 
        clk                             : in  STD_LOGIC;                     -- clock
        reset                           : in  STD_LOGIC;                     -- reset
        byte_in                         : in  STD_LOGIC;                     -- takes in bytes from PC
        
        -- Communicatin with new_message
        new_Message_out                 : out STD_LOGIC_VECTOR(7 downto 0);  -- gives bytes to new_message module
        is_new_message_in               : in  STD_LOGIC;                     -- receives signal new message detected
        
        -- Communication with Message_Type_recognition
        message_type_recognition_out    : out STD_LOGIC_VECTOR(7 downto 0);  -- gives bytes to message_type_ecognition module
        message_type_in                 : in STD_LOGIC_VECTOR(10 downto 0);  -- message type  
        wrong_message_in                : in STD_LOGIC;                      -- signal if the message type is false
        
        -- Communicati with Length_Handling
        length_handling_high_out         : out STD_LOGIC_VECTOR(7 downto 0);  -- gives first length byte to Length_Handling module
        length_handling_low_out          : out STD_LOGIC_VECTOR(7 downto 0);  -- gives second length byte to Length_Handling module
        length_byte_high_in              :  in STD_LOGIC_VECTOR(7 downto 0);  -- recieves first half of length from Length_handling
        length_byte_low_in               :  in STD_LOGIC_VECTOR(7 downto 0)   -- recieves second half of length from Length_handling
        
        
              
    );
    end Main_Controller;
    
-----    

architecture Behavioral of Main_Controller is

    type state_type is (IDLE, LENGTH, MESSAGETYPE);
    signal state      : state_type := IDLE;


    begin
 
        process(clk, reset)
        begin
    
            if reset = '1' then
            -- todo
            elsif rising_edge(clk) then
            -- todo
            end if;
        
    
        end process;
    
end Behavioral;
