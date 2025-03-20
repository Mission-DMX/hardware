----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2025 01:45:23 PM
-- Design Name: 
-- Module Name: RS232_Sender_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity RS232_Sender_tb is
end RS232_Sender_tb;

architecture Behavioral of RS232_Sender_tb is

    constant CLOCK_FREQ : integer := 50000000; -- Eingangs-Taktfrequenz in Hz
    constant BAUD_RATE  : integer := 9600;     -- Baudrate

    signal clk        : STD_LOGIC := '0';
    signal reset      : STD_LOGIC := '0';
    signal tx_start   : STD_LOGIC := '0';
    signal tx_data    : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal tx         : STD_LOGIC;
    signal tx_busy    : STD_LOGIC;

    -- Clock period calculation
    constant CLOCK_PERIOD : time := 1 sec / CLOCK_FREQ;

begin

    -- Unit Under Test (UUT)
    uut: entity work.RS232_Sender
        generic map (
            CLOCK_FREQ => CLOCK_FREQ,
            BAUD_RATE  => BAUD_RATE
        )
        port map (
            clk      => clk,
            reset    => reset,
            tx_start => tx_start,
            tx_data  => tx_data,
            tx       => tx,
            tx_busy  => tx_busy
        );

    -- Clock generation
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for CLOCK_PERIOD / 2;
            clk <= '1';
            wait for CLOCK_PERIOD / 2;
        end loop;
    end process;

    -- Test process
    stim_proc: process
    begin
        -- Reset the design
        reset <= '1';
        wait for 10 * CLOCK_PERIOD;
        reset <= '0';

        -- Test case 1: Send a byte (e.g., "A" = 0x41)
        tx_data  <= x"41";
        tx_start <= '1';
        wait for CLOCK_PERIOD;
        tx_start <= '0';

        -- Wait for transmission to complete
        wait until tx_busy = '0';

        -- Test case 2: Send another byte (e.g., "B" = 0x42)
        tx_data  <= x"42";
        tx_start <= '1';
        wait for CLOCK_PERIOD;
        tx_start <= '0';

        -- Wait for transmission to complete
        wait until tx_busy = '0';

        -- End simulation
        wait for 100 * CLOCK_PERIOD;
        assert false report "End of simulation" severity note;
        wait;
    end process;

end Behavioral;
