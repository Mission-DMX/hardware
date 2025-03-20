----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2025 11:26:08 AM
-- Design Name: 
-- Module Name: new_message - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity new_message is
    Port ( byte_in : in STD_LOGIC_VECTOR (0 to 7);
           is_new_message : out STD_LOGIC);
end new_message;

architecture Behavioral of new_message is

begin
    process(byte_in)
    begin
        if byte_in(7) = '1' then -- Prüft das höchstwertige Bit (MSB)
            is_new_message <= '1';
        else
            is_new_message <= '0';
        end if;
    end process;
end Behavioral;

