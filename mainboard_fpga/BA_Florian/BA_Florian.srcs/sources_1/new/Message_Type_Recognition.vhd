----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2025 10:51:13 AM
-- Design Name: 
-- Module Name: Message_Type_Recognition - Behavioral
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

entity Message_Type_Recognition is
    Port (
        clk        : in  STD_LOGIC;         -- Takt-Signal
        reset      : in  STD_LOGIC;         -- Reset-Signal
        byte_in    : in  STD_LOGIC_VECTOR(7 downto 0); -- Eingang-Byte
        no_signal  : out STD_LOGIC;  -- Out for no/wrong Signal
        out_signal : out STD_LOGIC_VECTOR(10 downto 0)
    );
end Message_Type_Recognition;

architecture Behavioral of Message_Type_Recognition is

    -- Definiere die Kombinationen, die erkannt werden sollen
    constant sende_DMX_Daten           : STD_LOGIC_VECTOR(6 downto 0) := "0000001";
    constant konfiguriere_DMX          : STD_LOGIC_VECTOR(6 downto 0) := "0000010";
    constant send_MIDI_Daten           : STD_LOGIC_VECTOR(6 downto 0) := "0000100";
    constant konfiguriere_MIDI         : STD_LOGIC_VECTOR(6 downto 0) := "0000101";
    constant sende_RS232_Daten         : STD_LOGIC_VECTOR(6 downto 0) := "0000111";
    constant konfiguriere_RS232        : STD_LOGIC_VECTOR(6 downto 0) := "0001000";
    constant sende_Bild_an_Display     : STD_LOGIC_VECTOR(6 downto 0) := "0001010";
    constant DMX_Daten_empfangen       : STD_LOGIC_VECTOR(6 downto 0) := "0001100";
    constant MIDI_Daten_empfangen      : STD_LOGIC_VECTOR(6 downto 0) := "0001101";
    constant RS232_Daten_empfangen     : STD_LOGIC_VECTOR(6 downto 0) := "0001110";
    constant Eingabe_von_Makrokeyboard : STD_LOGIC_VECTOR(6 downto 0) := "0001111";

begin

    process(clk, reset)
    begin
        if reset = '1' then
            no_signal <= '0';
        elsif rising_edge(clk) then
            case byte_in(6 downto 0) is
             when sende_DMX_Daten =>
                 out_signal <= "00000000001";
            
            end case;
        end if;
    end process;

end Behavioral;
