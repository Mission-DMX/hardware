library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Port_Handling is
    Port ( port_byte_in        : in  STD_LOGIC_VECTOR (8 downto 0);
           message_type_in     : in  STD_LOGIC_VECTOR (3 downto 0);
           port_activation_out : out STD_LOGIC_VECTOR (2 downto 0)
          );
end Port_Handling;

architecture Behavioral of Port_Handling is

begin

    process(port_byte_in,message_type_in)
    begin
    
        case port_byte_in(1 downto 0) is           
            when "00" =>
                if    (message_type_in = "0000") or (message_type_in = "0001") then
                    port_activation_out <= "000";            
                elsif (message_type_in = "0010") or (message_type_in = "0011") then
                    port_activation_out <= "100";
                elsif (message_type_in = "0100") or (message_type_in = "0101") then
                    port_activation_out <= "110";
                end if;               
            when "01" =>
                if    (message_type_in = "0000") or (message_type_in = "0001") then
                    port_activation_out <= "001";     
                elsif (message_type_in = "0010") or (message_type_in = "0011") then
                    port_activation_out <= "101";
                end if;             
            when "10" =>
                    port_activation_out <= "010";   
            when "11" =>
                    port_activation_out <= "011"; 
            when others =>
                    port_activation_out <= "111";           
        end case;
    
    end process;
    
end Behavioral;


--Port Numeration

--Port 001 - DMX Port 2 
--Port 010 - DMX Port 3
--Port 011 - DMX Port 4
--Port 100 - MiDi Port 1
--Port 101 - MiDi Port 2
--Port 110 - RS232 Port
