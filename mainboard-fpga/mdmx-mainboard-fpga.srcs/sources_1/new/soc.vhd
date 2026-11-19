----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/30/2026 11:34:54 AM
-- Design Name: 
-- Module Name: soc - Behavioral
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

use work.intertypes.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity soc is
    Port ( clk_100 : in std_ulogic;
           clk_200 : in std_ulogic;
           ddr3_bus : inout ddr3_mem_interface;
           jtag : inout jtag_wire;
           uart_in : in std_ulogic;
           uart_out : out std_ulogic;
           reset : in std_ulogic);
end soc;

architecture Behavioral of soc is

begin

    cpu : entity VexiiRiscv
        port map (
            clk => clk_200,
            reset => reset,
            
            EmbeddedRiscvJtag_logic_jtag_tms => jtag.tms,
            EmbeddedRiscvJtag_logic_jtag_tdi => jtag.tdi,
            EmbeddedRiscvJtag_logic_jtag_tdo => jtag.tdo,
            EmbeddedRiscvJtag_logic_jtag_tck => jtag.tck,
            -- EmbeddedRiscvJtag_logic_ndmreset
            EmbeddedRiscvJtag_logic_debug_reset => jtag.rst
        );
    
    dram_interface : entity ddr_memory_manager
        port map(
            clk_100 => clk_100,
            clk_200 => clk_200,
            ddr3_bus => ddr3_bus,
            reset => reset
        );

end Behavioral;
