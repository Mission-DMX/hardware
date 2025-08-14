-- Florina Arndt
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-----

entity Message_Type_Recognition is
    Port ( 
        byte_in             : in  STD_LOGIC_VECTOR(7 downto 0); -- input-byte
        wrong_message_out   : out STD_LOGIC;                    -- Out for no/wrong message
        message_type_out    : out STD_LOGIC_VECTOR(10 downto 0) -- out for received message
    );
end Message_Type_Recognition;

-----

architecture Behavioral of Message_Type_Recognition is

    -- constants for giving names to the incoming signal 
    constant Send_DMX_data            : STD_LOGIC_VECTOR(6 downto 0) := "0000001";
    constant Config_DMX               : STD_LOGIC_VECTOR(6 downto 0) := "0000010"; 
    constant Send_MIDI_data           : STD_LOGIC_VECTOR(6 downto 0) := "0000100";
    constant Config_MIDI              : STD_LOGIC_VECTOR(6 downto 0) := "0000101";
    constant Sende_RS232_data         : STD_LOGIC_VECTOR(6 downto 0) := "0000111";
    constant Config_RS232             : STD_LOGIC_VECTOR(6 downto 0) := "0001000";
    constant Send_image_to_display    : STD_LOGIC_VECTOR(6 downto 0) := "0001010";
    constant DMX_data_received        : STD_LOGIC_VECTOR(6 downto 0) := "0001100";
    constant MIDI_data_received       : STD_LOGIC_VECTOR(6 downto 0) := "0001101";
    constant RS232_data_received      : STD_LOGIC_VECTOR(6 downto 0) := "0001110";
    constant Input_from_makrokeyboard : STD_LOGIC_VECTOR(6 downto 0) := "0001111";
      
begin 

    process (byte_in)
    begin
         
        -- give out what type of message came in    
        case byte_in(6 downto 0) is           
            when Send_DMX_data =>
                message_type_out    <= "00000000001";
                wrong_message_out   <= '0';
            when Config_DMX =>
                message_type_out    <= "00000000010";
                wrong_message_out   <= '0';
            when Send_MIDI_data =>
                message_type_out    <= "00000000100";
                wrong_message_out   <= '0';
            when Config_MIDI =>
                message_type_out    <= "00000001000";
                wrong_message_out   <= '0';
            when Sende_RS232_data =>
                message_type_out    <= "00000010000";
                wrong_message_out   <= '0';
            when Config_RS232 =>
                message_type_out    <= "00000100000";
                wrong_message_out   <= '0';
            when Send_image_to_display =>
                message_type_out    <= "00001000000";
                wrong_message_out   <= '0';
            when DMX_data_received =>
                message_type_out    <= "00010000000";
                wrong_message_out   <= '0';
            when MIDI_data_received =>
                message_type_out    <= "00100000000";
                wrong_message_out   <= '0';
            when RS232_data_received =>
                message_type_out    <= "01000000000";
                wrong_message_out   <= '0';
            when Input_from_makrokeyboard =>
                message_type_out    <= "10000000000";
                wrong_message_out   <= '0';
            when others =>     
                message_type_out    <= "00000000000";
                wrong_message_out   <= '1';                 
        end case;
               
    end process;
        
end Behavioral;  
