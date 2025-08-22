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
        wrong_message_in                 : in  STD_LOGIC;
        
        length_done_in                   : in  STD_LOGIC; -- signal length module is done
        data_done_in                     : in  STD_LOGIC; -- signal data module is done
        
        -- outputs   
        
        signal_to_IDLE_out               : out  STD_LOGIC;
        signal_to_PORT_out               : out  STD_LOGIC;
        signal_to_LENGTH_out             : out  STD_LOGIC;
        signal_to_DATA_out               : out  STD_LOGIC;
        byte_PC_out                      : out  STD_LOGIC_VECTOR(7 downto 0)
    );
    
    
end Input_Controller;

architecture Behavioral of Input_Controller is

    -- define the states
    type state_type is (
        IDLE,   -- waiting for new_message
        PORTS,  -- analysing to wich port the message uses 
        LENGTH, -- analysing the length of the message
        DATA    -- storing the data byres
    );
    
    signal current_state : state_type;
    signal next_state    : state_type;
    signal length_data   : STD_LOGIC_VECTOR(15 downto 0);   
    signal message_type  : STD_LOGIC_VECTOR(10 downto 0);                         
    
    
    
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
                
                    next_state <= PORTS;    
                    
                end if;
                         
            when PORTS =>
            
                next_state <= LENGTH;
                
            when LENGTH =>
            
                if length_done_in = '1' then
                    next_state <= DATA;
                end if;    
                
            when DATA =>
            
                if data_done_in = '1' then
                    next_state <= IDLE;
                end if; 
                
            when others =>
            
                next_state <= IDLE;
                
        end case;
        
    end process;

    -- output logic
    process(current_state)
    begin
        -- default
           
        case current_state is
            when IDLE =>  
            
                signal_to_DATA_out <= '0';      -- deactivate state DATA
                
                signal_to_IDLE_out <= '1';      -- activate state IDLE
                
                message_type <= message_type_in;      

            when PORTS =>
            
                signal_to_IDLE_out <= '0';      -- deactivate state IDLE 
                
                signal_to_PORT_out <= '1';      -- activate state  PORT
                        

            when LENGTH =>  
            
                signal_to_PORT_out <= '0';       -- deactivate state PORT 
                
                signal_to_LENGTH_out <= '1';     -- activate state LENGTH         


            when DATA =>
            
                signal_to_PORT_out <= '0';       -- deactivate state LENGTH 
                 
                signal_to_DATA_out <= '1';       -- activate state DATA
        
            when others =>
                null;
        end case;
    end process;

end Behavioral;


