----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2025 11:18:36 AM
-- Design Name: 
-- Module Name: MIDI_Sender_tb - Behavioral
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

entity MIDI_Sender_tb is
end MIDI_Sender_tb;

architecture Behavioral of MIDI_Sender_tb is

    -- Komponenten-Deklaration
    component MIDI_Sender
        Port (
            clk      : in  STD_LOGIC;
            reset    : in  STD_LOGIC;
            midi_out : out STD_LOGIC
        );
    end component;

    -- Signale für die Testbench
    signal clk      : STD_LOGIC := '0';
    signal reset    : STD_LOGIC := '0';
    signal midi_out : STD_LOGIC;

    -- Konstanten
    constant CLK_PERIOD : time := 20 ns; -- 50 MHz Takt

begin

    -- Instanzierung der zu testenden Einheit (DUT)
    uut: MIDI_Sender
        Port map (
            clk      => clk,
            reset    => reset,
            midi_out => midi_out
        );

    -- Taktprozess
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Stimulusprozess
    stimulus_process: process
    begin
        -- Reset setzen
        reset <= '1';
        wait for 100 ns;
        reset <= '0';

        -- Beobachtung der MIDI-Ausgabe für einige Zyklen
        wait for 10 ms; -- Warten für ausreichend Zeit, um mehrere MIDI-Nachrichten zu beobachten

        -- Test beenden
        assert false report "Test beendet" severity note;
        wait;
    end process;

end Behavioral;

