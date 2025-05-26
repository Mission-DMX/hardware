library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DMX_Receiver_tb is
end DMX_Receiver_tb;

architecture Behavioral of DMX_Receiver_tb is

    constant CLOCK_FREQ   : integer := 50000000;  
    constant DMX_BAUDRATE : integer := 250000;   
    constant BIT_PERIOD   : time := 1 sec / DMX_BAUDRATE;

    signal clk            : STD_LOGIC := '0';
    signal reset          : STD_LOGIC := '1';
    signal dmx_in         : STD_LOGIC := '1';
    signal channel        : INTEGER := 5;
    signal data_out       : STD_LOGIC_VECTOR(7 downto 0);
    signal data_valid     : STD_LOGIC;

    -- Instanz der DMX_Receiver-Einheit
    component DMX_Receiver
        Port (
            clk        : in  STD_LOGIC;
            reset      : in  STD_LOGIC;
            dmx_in     : in  STD_LOGIC;
            channel    : in  INTEGER;
            data_out   : out STD_LOGIC_VECTOR(7 downto 0);
            data_valid : out STD_LOGIC
        );
    end component;

begin

    uut: DMX_Receiver
        Port map (
            clk        => clk,
            reset      => reset,
            dmx_in     => dmx_in,
            channel    => channel,
            data_out   => data_out,
            data_valid => data_valid
        );

    -- Taktprozess (50 MHz)
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Testprozess
    test_process: process
        procedure SendDMXFrame(start_code: STD_LOGIC_VECTOR(7 downto 0); channels: STD_LOGIC_VECTOR(7 downto 0)) is
        begin
            -- Break (mindestens 88 us, hier 100 us)
            dmx_in <= '0';
            wait for 100 us;

            -- Mark after Break (mindestens 8 us, hier 10 us)
            dmx_in <= '1';
            wait for 10 us;

            -- Startcode senden
            for i in 0 to 7 loop
                dmx_in <= start_code(i);
                wait for BIT_PERIOD;
            end loop;

            -- Stopbit
            dmx_in <= '1';
            wait for BIT_PERIOD;

            -- Kanaldaten senden
            for i in 0 to 7 loop
                dmx_in <= channels(i);
                wait for BIT_PERIOD;
            end loop;

            -- Stopbit
            dmx_in <= '1';
            wait for BIT_PERIOD;
        end procedure;

    begin
        -- Initialisierung
        reset <= '1';
        wait for 100 ns;
        reset <= '0';

        -- DMX-Testdaten senden
        SendDMXFrame("00000000", "00001010"); -- Startcode = 0, Kanal 1 = 10
        wait for 1 ms;

        -- Weitere Frames hinzufügen
        SendDMXFrame("00000000", "00011010"); -- Kanal 1 = 26
        wait for 1 ms;

        -- Simulation stoppen
        wait;
    end process;

end Behavioral;

