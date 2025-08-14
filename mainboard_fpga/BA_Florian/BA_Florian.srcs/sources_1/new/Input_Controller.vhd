library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Input_Controller is
    Port (
        clk                              : in  STD_LOGIC;
        reset                            : in  STD_LOGIC;
        
        -- inputs
        byte_PC_in                       : in  STD_LOGIC_VECTOR(7 downto 0); -- data byte from PC      
        is_new_message_in                : in  STD_LOGIC;                     -- is a new message signal
        length_high_in                   : in  STD_LOGIC_VECTOR(7 downto 0);
        length_low_in                    : in  STD_LOGIC_VECTOR(7 downto 0);
        
        
        -- outputs   
        byte_to_new_message_out          : out STD_LOGIC_VECTOR(7 downto 0); -- sending byte to modul
        byte_to_message_type_recognition : out STD_LOGIC_VECTOR(7 downto 0); -- sending byte to modul
        byte_to_port_handling            : out STD_LOGIC_VECTOR(7 downto 0);
        byte_to_length_handling_high_out : out STD_LOGIC_VECTOR(7 downto 0);
        byte_to_length_handling_low_out  : out STD_LOGIC_VECTOR(7 downto 0);
        byte_to_messae_processor_out     : out STD_LOGIC_VECTOR(7 downto 0);
        
    );
    
    
end Input_Controller;

architecture Behavioral of Input_Controller is

    -- define the states
    type state_type is (
        IDLE,        -- waiting for new_message
        PORT_BYTE,   -- analysing to wich port the message uses 
        LENGTH_BYTE, -- analysing the length of the message
        DATA_BYTES   -- storing the data byres
    );
    
    signal current_state : state_type;
    signal next_state    : state_type;
    signal length        : STD_LOGIC_VECTOR(15 downto 0);                                
    
    
    
begin

    -- state register: change on clk or reset
     
    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= IDLE;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    -- next state logic
    process(current_state)
    begin
    
        -- default-state
        next_state <= current_state;
        case current_state is
            when IDLE =>
            
                if is_new_message_in = '1' then
                    next_state <= PORT_BYTE; -- next byte contains port     
                end if;
                         
            when PORT_BYTE =>
            
                next_state <= LENGTH_BYTE;
                
            when LENGTH_BYTE =>
            
                if xxx = '1' then
                    next_state <= DATA_BYTES;
                end if;    
                
            when DATA_BYTES =>
            
                if xxx = '1' then
                    next_state <= IDLE;
                end if; 
                
            when others =>
            
        end case;
    end process;

    -- output logic
    process(current_state)
    begin
        -- default
           
        case current_state is
            when IDLE =>
            
                byte_to_new_message_out          <= byte_PC_in;
                byte_to_message_type_recognition <= byte_PC_in;

            when PORT_BYTE =>
            
                byte_to_port_handling            <= byte_PC_in;

            when LENGTH_BYTE =>
            
                byte_to_length_handling_high_out <= byte_PC_in;
                
                byte_to_length_handling_low_out  <= byte_PC_in;

            when DATA_BYTES =>
            
                byte_to_messae_processor_out     <= byte_PC_in;


            when others =>
                null;
        end case;
    end process;

end Behavioral;


