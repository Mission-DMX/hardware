----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2025 10:49:44 AM
-- Design Name: 
-- Module Name: DMX_Sender - Behavioral
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

entity DMX_Sender is
    Port (
        clk         : in  std_logic;  -- Systemtakt
        reset       : in  std_logic;  -- Reset-Signal
        dmx_data    : in  std_logic_vector(7 downto 0); -- DMX-Daten
        send_enable : in  std_logic;  -- Aktiviert das Senden
        dmx_out     : out std_logic   -- DMX-Ausgang
    );
end DMX_Sender;

architecture Behavioral of DMX_Sender is
    -- Konstante für die Baudrate (bei 50 MHz Takt)
    constant CLOCK_FREQ : integer := 50000000;  -- Systemtaktfrequenz
    constant DMX_BAUD   : integer := 250000;    -- DMX Baudrate
    constant BIT_PERIOD : integer := CLOCK_FREQ / DMX_BAUD;

    -- Zustände für die FSM
    type state_type is (IDLE, BREAK, MAB, DATA, STOP);
    signal state      : state_type := IDLE;

    -- Zähler für Zeitmessung
    signal bit_counter : integer := 0;
    signal data_index  : integer := 0;
    signal current_bit : std_logic := '1';
    signal data_reg    : std_logic_vector(9 downto 0); -- Startbit + Daten + Stopbit
begin

    process(clk, reset)
    begin
        if reset = '1' then
            state <= IDLE;
            bit_counter <= 0;
            data_index <= 0;
            dmx_out <= '1';
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    if send_enable = '1' then
                        state <= BREAK;
                        bit_counter <= 0;
                        dmx_out <= '0'; -- Break-Signal
                    end if;

                when BREAK =>
                    if bit_counter = CLOCK_FREQ / 1000 then -- 88 µs
                        state <= MAB;
                        bit_counter <= 0;
                        dmx_out <= '1'; -- Mark After Break
                    else
                        bit_counter <= bit_counter + 1;
                    end if;

                when MAB =>
                    if bit_counter = CLOCK_FREQ / 125000 then -- 8 µs
                        state <= DATA;
                        bit_counter <= 0;
                        data_reg <= '0' & dmx_data & '1'; -- Startbit + Daten + Stopbit
                        data_index <= 0;
                    else
                        bit_counter <= bit_counter + 1;
                    end if;

                when DATA =>
                    dmx_out <= data_reg(data_index);
                    if bit_counter = BIT_PERIOD then
                        bit_counter <= 0;
                        if data_index = 9 then
                            state <= STOP;
                        else
                            data_index <= data_index + 1;
                        end if;
                    else
                        bit_counter <= bit_counter + 1;
                    end if;

                when STOP =>
                    state <= IDLE;
                    dmx_out <= '1';
            end case;
        end if;
    end process;
end Behavioral;

