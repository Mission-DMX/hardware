----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2025 10:49:44 AM
-- Design Name: 
-- Module Name: RS232_Sender - Behavioral
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

entity RS232_Sender is
    Generic (
        CLOCK_FREQ : integer := 50000000; -- Eingangs-Taktfrequenz in Hz
        BAUD_RATE  : integer := 9600      -- Baudrate
    );
    Port (
        clk        : in  STD_LOGIC;       -- Systemtakt
        reset      : in  STD_LOGIC;       -- Reset-Signal
        tx_start   : in  STD_LOGIC;       -- Startsignal für die Übertragung
        tx_data    : in  STD_LOGIC_VECTOR (7 downto 0); -- Zu sendendes Byte
        tx         : out STD_LOGIC;       -- Serielle Ausgabe
        tx_busy    : out STD_LOGIC        -- Signalisiert, ob der Sender beschäftigt ist
    );
end RS232_Sender;

architecture Behavioral of RS232_Sender is

    constant CLOCKS_PER_BIT : integer := CLOCK_FREQ / BAUD_RATE;
    
    type state_type is (IDLE, START_BIT, DATA_BITS, STOP_BIT);
    signal state       : state_type := IDLE;
    signal bit_counter : integer range 0 to 7 := 0;
    signal clock_count : integer := 0;
    signal tx_shift    : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal tx_reg      : STD_LOGIC := '1';

begin

    tx <= tx_reg;

    process(clk, reset)
    begin
        if reset = '1' then
            state       <= IDLE;
            bit_counter <= 0;
            clock_count <= 0;
            tx_shift    <= (others => '0');
            tx_reg      <= '1';
            tx_busy     <= '0';

        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    tx_reg  <= '1';
                    tx_busy <= '0';
                    clock_count <= 0;

                    if tx_start = '1' then
                        tx_shift    <= tx_data;
                        state       <= START_BIT;
                        tx_busy     <= '1';
                    end if;

                when START_BIT =>
                    tx_reg <= '0'; -- Startbit
                    if clock_count < CLOCKS_PER_BIT - 1 then
                        clock_count <= clock_count + 1;
                    else
                        clock_count <= 0;
                        state       <= DATA_BITS;
                        bit_counter <= 0;
                    end if;

                when DATA_BITS =>
                    tx_reg <= tx_shift(0);
                    if clock_count < CLOCKS_PER_BIT - 1 then
                        clock_count <= clock_count + 1;
                    else
                        clock_count <= 0;
                        tx_shift    <= '0' & tx_shift(7 downto 1);

                        if bit_counter < 7 then
                            bit_counter <= bit_counter + 1;
                        else
                            state <= STOP_BIT;
                        end if;
                    end if;

                when STOP_BIT =>
                    tx_reg <= '1'; -- Stoppbit
                    if clock_count < CLOCKS_PER_BIT - 1 then
                        clock_count <= clock_count + 1;
                    else
                        clock_count <= 0;
                        state       <= IDLE;
                    end if;

                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;

end Behavioral;
