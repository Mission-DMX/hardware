----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2025 11:20:47 AM
-- Design Name: 
-- Module Name: MIDI_Receiver - Behavioral
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

entity MIDI_Receiver is
    Port (
        clk         : in  STD_LOGIC;  -- System-Takt
        reset       : in  STD_LOGIC;  -- Reset-Signal
        midi_in     : in  STD_LOGIC;  -- Serielles MIDI-Eingangssignal
        data_ready  : out STD_LOGIC;  -- Signal, wenn Daten empfangen wurden
        midi_data   : out STD_LOGIC_VECTOR (7 downto 0)  -- Empfangene MIDI-Daten
    );
end MIDI_Receiver;

architecture Behavioral of MIDI_Receiver is

    constant BAUD_RATE        : integer := 31250;  -- MIDI-Baudrate
    constant CLOCK_FREQ       : integer := 50000000;  -- Systemtaktfrequenz (z. B. 50 MHz)
    constant BAUD_TICK_COUNT  : integer := CLOCK_FREQ / BAUD_RATE;

    signal baud_counter : integer range 0 to BAUD_TICK_COUNT - 1 := 0;
    signal bit_counter  : integer range 0 to 9 := 0;  -- 1 Startbit, 8 Datenbits, 1 Stoppbit
    signal shift_reg    : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal receiving    : STD_LOGIC := '0';
    signal data         : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal data_valid   : STD_LOGIC := '0';

begin

    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                baud_counter <= 0;
                bit_counter <= 0;
                receiving <= '0';
                data_valid <= '0';
            else
                if receiving = '0' then
                    if midi_in = '0' then  -- Startbit erkannt
                        receiving <= '1';
                        baud_counter <= 0;
                        bit_counter <= 0;
                    end if;
                else
                    baud_counter <= baud_counter + 1;
                    if baud_counter = BAUD_TICK_COUNT - 1 then
                        baud_counter <= 0;
                        bit_counter <= bit_counter + 1;

                        if bit_counter = 0 then
                            -- Startbit ignorieren
                        elsif bit_counter >= 1 and bit_counter <= 8 then
                            -- Datenbits in Shift-Register einfügen
                            shift_reg <= midi_in & shift_reg(7 downto 1);
                        elsif bit_counter = 9 then
                            -- Stoppbit überprüfen und Daten übernehmen
                            if midi_in = '1' then  -- Stoppbit korrekt
                                data <= shift_reg;
                                data_valid <= '1';
                            end if;
                            receiving <= '0';
                        end if;
                    end if;
                end if;

                if data_valid = '1' then
                    data_valid <= '0';
                end if;
            end if;
        end if;
    end process;

    data_ready <= data_valid;
    midi_data <= data;

end Behavioral;
