----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2025 11:20:47 AM
-- Design Name: 
-- Module Name: RS232_Receiver - Behavioral
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

entity RS232_Receiver is
    Generic (
        CLK_FREQ     : integer := 50000000; -- Taktfrequenz des Systems (50 MHz)
        BAUD_RATE    : integer := 9600      -- Baudrate (9600 Baud)
    );
    Port (
        clk          : in  STD_LOGIC;       -- Systemtakt
        reset        : in  STD_LOGIC;       -- Asynchroner Reset
        rx           : in  STD_LOGIC;       -- Serieller RX-Eingang
        data_out     : out STD_LOGIC_VECTOR(7 downto 0); -- Empfangene Daten
        data_valid   : out STD_LOGIC        -- Signal: Daten gültig
    );
end RS232_Receiver;

architecture Behavioral of RS232_Receiver is

    constant TICKS_PER_BIT : integer := CLK_FREQ / BAUD_RATE;

    type State_Type is (IDLE, START, DATA, STOP);
    signal state          : State_Type := IDLE;

    signal bit_counter    : integer range 0 to 7 := 0;
    signal tick_counter   : integer range 0 to TICKS_PER_BIT - 1 := 0;
    signal shift_register : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

begin

    process(clk, reset)
    begin
        if reset = '1' then
            state          <= IDLE;
            bit_counter    <= 0;
            tick_counter   <= 0;
            shift_register <= (others => '0');
            data_out       <= (others => '0');
            data_valid     <= '0';

        elsif rising_edge(clk) then
            data_valid <= '0'; -- Standardwert, wird gesetzt, wenn Daten gültig

            case state is
                when IDLE =>
                    if rx = '0' then -- Start-Bit erkannt
                        state        <= START;
                        tick_counter <= 0;
                    end if;

                when START =>
                    if tick_counter = TICKS_PER_BIT / 2 then -- Mitte des Start-Bits
                        tick_counter <= 0;
                        state        <= DATA;
                        bit_counter  <= 0;
                    else
                        tick_counter <= tick_counter + 1;
                    end if;

                when DATA =>
                    if tick_counter = TICKS_PER_BIT - 1 then
                        tick_counter         <= 0;
                        shift_register(bit_counter) <= rx;
                        if bit_counter = 7 then
                            state <= STOP;
                        else
                            bit_counter <= bit_counter + 1;
                        end if;
                    else
                        tick_counter <= tick_counter + 1;
                    end if;

                when STOP =>
                    if tick_counter = TICKS_PER_BIT - 1 then
                        tick_counter <= 0;
                        if rx = '1' then -- Stop-Bit korrekt
                            data_out   <= shift_register;
                            data_valid <= '1';
                        end if;
                        state <= IDLE;
                    else
                        tick_counter <= tick_counter + 1;
                    end if;

                when others =>
                    state <= IDLE;

            end case;
        end if;
    end process;

end Behavioral;

