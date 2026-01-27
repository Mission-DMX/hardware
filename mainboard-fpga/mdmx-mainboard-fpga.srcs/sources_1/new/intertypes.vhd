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
    
    type soc_control_bus is record
        hold_reset : std_ulogic;
        mem_write_enable : std_ulogic;
        mem_addr : std_ulogic_vector(31 downto 0);
        mem_data : std_ulogic_vector(7 downto 0);
    end record soc_control_bus;
    
    type ddr3_mem_interface is record
        -- DQ (Data) signals: inout [15:0]
        ddr3_dq        : std_logic_vector(15 downto 0);
        
        -- DQS_N and DQS_P signals: inout for each lane
        ddr3_dqs_n     : std_logic_vector(1 downto 0);
        ddr3_dqs_p     : std_logic_vector(1 downto 0);
        
        -- Address (ADDR) output: [13:0]
        ddr3_addr      : std_logic_vector(13 downto 0);
        
        -- Bank address (BA): [2:0]
        ddr3_ba        : std_logic_vector(2 downto 0);
        
        -- Row Address Strobe (RAS) and Column Address Strobe (CAS)
        ddr3_ras_n     : std_logic;
        ddr3_cas_n     : std_logic;
        
        -- Write Enable (WE): output
        ddr3_we_n      : std_logic;
        
        -- Reset: active-low reset signal
        ddr3_reset_n   : std_logic;
        
        -- Clock signals and clock enable
        ddr3_ck_p      : std_logic;          -- Differential CK+
        ddr3_ck_n      : std_logic;          -- Differential CK-
        ddr3_cke       : std_logic;          -- Clock Enable
        
        -- Chip Select: active-low signal
        ddr3_cs_n      : std_logic;
        
        -- Data Mask (DM): [1:0]
        ddr3_dm        : std_logic_vector(1 downto 0);
        
        -- On-Die Termination (ODT)
        ddr3_odt       : std_logic;
    end record;
end package intertypes;
