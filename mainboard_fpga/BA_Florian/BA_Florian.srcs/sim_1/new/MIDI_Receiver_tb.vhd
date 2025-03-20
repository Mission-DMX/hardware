----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2025 11:18:36 AM
-- Design Name: 
-- Module Name: MIDI_Receiver_tb - Behavioral
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

entity MIDI_Receiver_tb is
-- Keine Ports: Testbench ist eigenständig
end MIDI_Receiver_tb;

architecture Behavioral of MIDI_Receiver_tb is

    -- Komponenten-Signale
    signal clk        : STD_LOGIC := '0';
    signal reset      : STD_LOGIC := '0';
    signal midi_in    : STD_LOGIC := '1';  -- Standardpegel für MIDI (High)
    signal data_ready : STD_LOGIC;
    signal midi_data  : STD_LOGIC_VECTOR(7 downto 0);

    constant CLOCK_PERIOD : time := 20 ns;  -- 50 MHz Takt

    -- Testdaten
    type MIDI_Array is array (0 to 2) of STD_LOGIC_VECTOR(9 downto 0); -- Startbit, 8 Datenbits, Stoppbit
    constant TEST_DATA : MIDI_Array := (
        "0100000011", -- Note On, Channel 0, Note 0x00
        "0111111111", -- Note On, Channel 0, Note 0xFF
        "1000000001"  -- Note Off, Channel 0, Note 0x00
    );

begin

    -- Instanziierung des zu testenden Moduls
    uut: entity work.MIDI_Receiver
        port map (
            clk => clk,
            reset => reset,
            midi_in => midi_in,
            data_ready => data_ready,
            midi_data => midi_data
        );

    -- Takterzeugung
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLOCK_PERIOD / 2;
            clk <= '1';
            wait for CLOCK_PERIOD / 2;
        end loop;
    end process;

    -- Testprozess
    test_process : process
        variable i : integer := 0;
    begin
        -- Reset setzen
        reset <= '1';
        wait for 2 * CLOCK_PERIOD;
        reset <= '0';
        wait for 2 * CLOCK_PERIOD;

        -- Testdaten senden
        for i in TEST_DATA'range loop
            for bit_idx in 0 to 9 loop
                midi_in <= TEST_DATA(i)(bit_idx);
                wait for 32 * CLOCK_PERIOD;  -- Baudrate 31,25 kBaud
            end loop;
            wait for 5 * CLOCK_PERIOD;
        end loop;

        -- Simulation beenden
        wait;
    end process;

end Behavioral;

