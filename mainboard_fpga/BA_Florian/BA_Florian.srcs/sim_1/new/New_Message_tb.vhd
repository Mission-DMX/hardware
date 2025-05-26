library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity der new_message_tb
entity new_message_tb is
end new_message_tb;

-- Architektur der new_message_tb
architecture Behavioral of new_message_tb is
    -- Signale zur Verbindung mit der DUT (Design Under Test)
    signal byte_in     : STD_LOGIC_VECTOR(7 downto 0);
    signal bit_is_one  : STD_LOGIC;

    -- Komponente der DUT
    component new_message
        Port (
            byte_in     : in  STD_LOGIC_VECTOR(7 downto 0);
            bit_is_one  : out STD_LOGIC
        );
    end component;
begin
    -- Instanz der DUT
    uut: new_message
        Port map (
            byte_in     => byte_in,
            bit_is_one  => bit_is_one
        );

    -- Stimulusprozess
    stimulus_process: process
    begin
        -- Testfall 1: höchstwertiges Bit ist 0
        byte_in <= "01111111"; -- MSB = 0
        wait for 10 ns;
        assert bit_is_one = '0' report "Testfall 1 fehlgeschlagen: MSB = 0" severity error;

        -- Testfall 2: höchstwertiges Bit ist 1
        byte_in <= "10000000"; -- MSB = 1
        wait for 10 ns;
        assert bit_is_one = '1' report "Testfall 2 fehlgeschlagen: MSB = 1" severity error;

        -- Testfall 3: alle Bits sind 0
        byte_in <= "00000000"; -- MSB = 0
        wait for 10 ns;
        assert bit_is_one = '0' report "Testfall 3 fehlgeschlagen: MSB = 0" severity error;

        -- Testfall 4: alle Bits sind 1
        byte_in <= "11111111"; -- MSB = 1
        wait for 10 ns;
        assert bit_is_one = '1' report "Testfall 4 fehlgeschlagen: MSB = 1" severity error;

        -- Testfall 5: zufälliges Byte
        byte_in <= "01010101"; -- MSB = 0
        wait for 10 ns;
        assert bit_is_one = '0' report "Testfall 5 fehlgeschlagen: MSB = 0" severity error;

        -- Testfall 6: zufälliges Byte
        byte_in <= "10101010"; -- MSB = 1
        wait for 10 ns;
        assert bit_is_one = '1' report "Testfall 6 fehlgeschlagen: MSB = 1" severity error;

        -- Beende die Simulation
        wait;
    end process;
end Behavioral;
