----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2025 10:49:44 AM
-- Design Name: 
-- Module Name: MIDI_Sender - Behavioral
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

entity MIDI_Sender is
    Port (
        clk         : in  STD_LOGIC;  -- Systemtakt
        reset       : in  STD_LOGIC;  -- Asynchroner Reset
        midi_out    : out STD_LOGIC  -- MIDI-Ausgang (seriell)
    );
end MIDI_Sender;

architecture Behavioral of MIDI_Sender is

    -- Konstanten
    constant CLK_FREQ       : integer := 50000000;  -- Systemtaktfrequenz (50 MHz)
    constant MIDI_BAUD_RATE : integer := 31250;     -- MIDI-Baudrate
    constant BIT_PERIOD     : integer := CLK_FREQ / MIDI_BAUD_RATE;

    -- Zustände für den Zustandsautomaten
    type state_type is (IDLE, START_BIT, DATA_BITS, STOP_BIT);
    signal state : state_type := IDLE;

    -- Signale für die serielle Übertragung
    signal bit_counter : integer range 0 to 10 := 0;  -- Zählt die Bits eines MIDI-Bytes
    signal tx_data     : STD_LOGIC_VECTOR(7 downto 0); -- Zu sendendes MIDI-Byte
    signal tx_busy     : STD_LOGIC := '0';             -- Gibt an, ob gerade gesendet wird
    signal clk_counter : integer range 0 to BIT_PERIOD := 0; -- Zählt die Taktschritte

    -- Beispielnachrichten
    constant NOTE_ON  : STD_LOGIC_VECTOR(7 downto 0) := "10010000"; -- Note-On-Status
    constant NOTE_OFF : STD_LOGIC_VECTOR(7 downto 0) := "10000000"; -- Note-Off-Status
    constant NOTE     : STD_LOGIC_VECTOR(7 downto 0) := "00111100"; -- Note C4
    constant VELOCITY : STD_LOGIC_VECTOR(7 downto 0) := "01111111"; -- Maximale Velocity

    signal send_step : integer range 0 to 2 := 0; -- Schritt im Nachrichtenzyklus

begin

    process(clk, reset)
    begin
        if reset = '1' then
            state <= IDLE;
            midi_out <= '1';
            clk_counter <= 0;
            bit_counter <= 0;
            tx_busy <= '0';
            send_step <= 0;

        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    if tx_busy = '0' then
                        -- Wähle die nächste Nachricht basierend auf send_step
                        case send_step is
                            when 0 => tx_data <= NOTE_ON;  send_step <= 1;
                            when 1 => tx_data <= NOTE;     send_step <= 2;
                            when 2 => tx_data <= VELOCITY; send_step <= 0;
                            when others => null;
                        end case;

                        tx_busy <= '1';
                        state <= START_BIT;
                    end if;

                when START_BIT =>
                    midi_out <= '0'; -- Startbit senden
                    if clk_counter = BIT_PERIOD - 1 then
                        clk_counter <= 0;
                        state <= DATA_BITS;
                        bit_counter <= 0;
                    else
                        clk_counter <= clk_counter + 1;
                    end if;

                when DATA_BITS =>
                    midi_out <= tx_data(bit_counter);
                    if clk_counter = BIT_PERIOD - 1 then
                        clk_counter <= 0;
                        if bit_counter = 7 then
                            state <= STOP_BIT;
                        else
                            bit_counter <= bit_counter + 1;
                        end if;
                    else
                        clk_counter <= clk_counter + 1;
                    end if;

                when STOP_BIT =>
                    midi_out <= '1'; -- Stopbit senden
                    if clk_counter = BIT_PERIOD - 1 then
                        clk_counter <= 0;
                        tx_busy <= '0';
                        state <= IDLE;
                    else
                        clk_counter <= clk_counter + 1;
                    end if;

                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;

end Behavioral;

