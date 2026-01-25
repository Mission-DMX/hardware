----------------------------------------------------------------------------------
-- Company: Doralitze
-- Engineer: 
-- 
-- Create Date: 01/25/2026 10:55:10 AM
-- Design Name: 
-- Module Name: dmx_port_led_controller - Behavioral
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

entity dmx_port_led_controller is
    generic (clock_range : natural := 25000000);
    port ( clk : in STD_ULOGIC;
           reset : in STD_ULOGIC;
           mode : in DMX_PORT_MODE_OF_OPERATION;
           last_update : in integer range 0 to 8;
           leds : out STD_ULOGIC_VECTOR (2 downto 0));
end dmx_port_led_controller;

architecture Behavioral of dmx_port_led_controller is
    signal counter : integer range 0 to clock_range;
    signal blink_state : std_ulogic;
begin

update_blink_state : process(clk) begin
    if rising_edge(clk) then
        if reset = '1' then
            counter <= 0;
            blink_state <= '1';
        else
            if counter = clock_range then
                counter <= 0;
                blink_state <= not blink_state;
            else
                counter <= counter + 1;
            end if;
        end if;
    end if;
end process;

update_leds_comb : process(all)
    variable is_active : std_ulogic;
begin
    if last_update = 8 then
        is_active := '0';
    else
        is_active := '1';
    end if;
    case mode is
        when DISABLED =>
            leds <= "000";
        when DMX_IN =>
            leds <= "100";
        when DMX_OUT =>
            leds <= "010";
        when RDM =>
            leds <= "001";
        when others =>
            leds <= "111";
    end case;
    if is_active and not blink_state then
        leds <= "000";
    end if;
end process;

end Behavioral;
