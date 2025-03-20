----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2025 11:18:36 AM
-- Design Name: 
-- Module Name: RS232_Receiver_tb - Behavioral
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

entity RS232_Receiver_TB is
end RS232_Receiver_TB;

architecture Behavioral of RS232_Receiver_TB is

    -- Konstanten
    constant CLK_FREQ   : integer := 50000000; -- Systemtakt (50 MHz)
    constant BAUD_RATE  : integer := 9600;    -- Baudrate (9600 Baud)
    constant TICK_PERIOD: time := 1 sec / CLK_FREQ;
    constant BIT_PERIOD : time := 1 sec / BAUD_RATE;

    -- Signale
    signal clk        : STD_LOGIC := '0';
    signal reset      : STD_LOGIC := '1';
    signal rx         : STD_LOGIC := '1';
    signal data_out   : STD_LOGIC_VECTOR(7 downto 0);
    signal data_valid : STD_LOGIC;

    -- Komponente des RS232-Receivers
    component RS232_Receiver is
        Generic (
            CLK_FREQ  : integer;
            BAUD_RATE : integer
        );
        Port (
            clk        : in  STD_LOGIC;
            reset      : in  STD_LOGIC;
            rx         : in  STD_LOGIC;
            data_out   : out STD_LOGIC_VECTOR(7 downto 0);
            data_valid : out STD_LOGIC
        );
    end component;

    -- Prozedur zum Senden eines Bytes
    procedure send_byte(signal rx: out STD_LOGIC; data: in STD_LOGIC_VECTOR(7 downto 0)) is
    begin
        -- Startbit senden
        rx <= '0';
        wait for BIT_PERIOD;

        -- Datenbits senden (LSB zuerst)
        for i in 0 to 7 loop
            rx <= data(i);
            wait for BIT_PERIOD;
        end loop;

        -- Stopbit senden
        rx <= '1';
        wait for BIT_PERIOD;
    end procedure;

begin

    -- Instanz des RS232-Receivers
    uut: RS232_Receiver
        Generic Map (
            CLK_FREQ  => CLK_FREQ,
            BAUD_RATE => BAUD_RATE
        )
        Port Map (
            clk        => clk,
            reset      => reset,
            rx         => rx,
            data_out   => data_out,
            data_valid => data_valid
        );

    -- Takterzeugung
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for TICK_PERIOD / 2;
            clk <= '1';
            wait for TICK_PERIOD / 2;
        end loop;
    end process;

    -- Testprozess
    stimulus_process: process
    begin
        -- Reset halten
        reset <= '1';
        wait for 10 * TICK_PERIOD;
        reset <= '0';

        -- Testdaten senden: 8-Bit-Datenwort (z.B. "01010101")
        send_byte(rx, "01010101");
        wait for 10 * BIT_PERIOD;

        -- Testdaten senden: 8-Bit-Datenwort (z.B. "10101010")
        send_byte(rx, "10101010");
        wait for 10 * BIT_PERIOD;

        -- Testabschluss
        wait;
    end process;

end Behavioral;


