----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/12/2026 04:43:58 PM
-- Design Name: 
-- Module Name: USB_UART_RX - Behavioral
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

entity USB_UART_RX is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           usb_rx : in STD_LOGIC;
           BRAM_enable_a_out : out STD_LOGIC;
           data_a_out : out STD_LOGIC_VECTOR (7 downto 0);
           addra_a_out : out STD_LOGIC_VECTOR (8 downto 0));
end USB_UART_RX;

architecture Behavioral of USB_UART_RX is

begin


end Behavioral;
