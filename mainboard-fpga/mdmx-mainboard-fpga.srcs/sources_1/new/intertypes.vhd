----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Doralitze
-- 
-- Create Date: 01/23/2026 03:39:20 PM
-- Design Name: 
-- Module Name: intertypes - Behavioral
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

package intertypes is
    type DMX_PORT_MODE_OF_OPERATION is (DISABLED, DMX_IN, DMX_OUT, RDM);
    type DMX_PORT_MODE_ARRAY is array (natural range <>) of DMX_PORT_MODE_OF_OPERATION;
end package intertypes;
