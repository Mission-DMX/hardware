
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BRAM_Director is
    Port (
        clk                   : in  STD_LOGIC;                     --Clock (unused)
        reset                 : in  STD_LOGIC;                     --Reset (unused)
     
        port_in               : in STD_LOGIC_VECTOR(2 downto 0);   --send to wich port      
        byte_in               : in STD_LOGIC_VECTOR(7 downto 0);   --incomig Data-Byte
        
        to_BRAM_DMX_ONE_out   : out  STD_LOGIC_VECTOR(7 downto 0); --BRAM for DMX-Port 1
        to_BRAM_DMX_TWO_out   : out  STD_LOGIC_VECTOR(7 downto 0); --BRAM for DMX-Port 2
        to_BRAM_DMX_THREE_out : out  STD_LOGIC_VECTOR(7 downto 0); --BRAM for DMX-Port 3
        to_BRAM_DMX_FOUR_out  : out  STD_LOGIC_VECTOR(7 downto 0); --BRAM for DMX-Port 4
        to_BRAM_MiDi_ONE_out  : out  STD_LOGIC_VECTOR(7 downto 0); --BRAM for MiDi-Port 1
        to_BRAM_MiDi_TWO_out  : out  STD_LOGIC_VECTOR(7 downto 0); --BRAM for MiDi-Port 2
        to_BRAM_RS232_ONE_out : out  STD_LOGIC_VECTOR(7 downto 0); --BRAM for RS232-Port
        
        port_error            :out  STD_LOGIC                      --sends a signal to controller when the Port does not exists
        
        );
        
end BRAM_Director;

architecture Behavioral of BRAM_Director is
    
begin
    
    process (port_in)
    begin

        case port_in is           
            when "000" =>
                to_BRAM_DMX_ONE_out   <= byte_in;
            when "001" =>
                to_BRAM_DMX_TWO_out   <= byte_in;
            when "010" =>
                to_BRAM_DMX_THREE_out <= byte_in;
            when "011" =>
                to_BRAM_DMX_FOUR_out  <= byte_in;
            when "100" =>
                to_BRAM_MiDi_ONE_out  <= byte_in;
            when "101" =>
                to_BRAM_MiDi_TWO_out  <= byte_in;
            when "110" =>
                to_BRAM_RS232_ONE_out <= byte_in;
            when others =>   
                port_error            <= '1'; 
        end case;
        
    end process;   

end Behavioral;
