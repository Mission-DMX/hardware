library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DMX_Sender_tb is
    -- Leere Entity für die Testbench
end DMX_Sender_tb;

architecture Behavioral of DMX_Sender_tb is
    -- Signale für die Instanz des DUT (Device Under Test)
    signal clk         : std_logic := '0';
    signal reset       : std_logic := '0';
    signal dmx_data    : std_logic_vector(7 downto 0) := (others => '0');
    signal send_enable : std_logic := '0';
    signal dmx_out     : std_logic;

    -- Konstanten für die Simulation
    constant CLK_PERIOD : time := 20 ns; -- 50 MHz Taktfrequenz
begin

    -- Taktgenerator
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Instanz des DUT
    uut: entity work.DMX_Sender
        port map (
            clk         => clk,
            reset       => reset,
            dmx_data    => dmx_data,
            send_enable => send_enable,
            dmx_out     => dmx_out
        );

    -- Stimulusprozess
    stimulus_process : process
    begin
        -- Reset aktivieren
        reset <= '1';
        wait for 100 ns;
        reset <= '0';

        -- DMX-Daten senden
        wait for 100 ns;
        dmx_data <= "10101010"; -- Beispiel-Daten
        send_enable <= '1';
        wait for 500 ns;
        send_enable <= '0';

        -- Weitere Daten senden
        wait for 1 us;
        dmx_data <= "11001100";
        send_enable <= '1';
        wait for 500 ns;
        send_enable <= '0';

        -- Ende der Simulation
        wait for 2 us;
        assert false report "Simulation beendet." severity note;
        wait;
    end process;

end Behavioral;

