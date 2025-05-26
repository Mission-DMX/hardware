library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Byte_Buffer is
    generic (
        BUFFER_SIZE : integer := 16 -- Anzahl der Bytes im Puffer
    );
    port (
        clk       : in  std_logic;              -- Takt
        reset     : in  std_logic;              -- Reset-Signal
        write_en  : in  std_logic;              -- Schreibaktivierung
        read_en   : in  std_logic;              -- Leseaktivierung
        data_in   : in  std_logic_vector(7 downto 0); -- Eingangsdaten (1 Byte)
        data_out  : out std_logic_vector(7 downto 0); -- Ausgangsdaten (1 Byte)
        full      : out std_logic;              -- Signalisiert, dass der Puffer voll ist
        empty     : out std_logic               -- Signalisiert, dass der Puffer leer ist
    );
end Byte_Buffer;

architecture Behavioral of Byte_Buffer is

    -- Interner Speicher für den Puffer
    type buffer_array is array (0 to BUFFER_SIZE-1) of std_logic_vector(7 downto 0);
    signal buffer : buffer_array;

    -- Lese- und Schreibzeiger
    signal write_ptr : integer range 0 to BUFFER_SIZE-1 := 0;
    signal read_ptr  : integer range 0 to BUFFER_SIZE-1 := 0;

    -- Signal für die Anzahl der gespeicherten Bytes
    signal byte_count : integer range 0 to BUFFER_SIZE := 0;

begin

    -- Prozess für das Schreiben in den Puffer
    process(clk, reset)
    begin
        if reset = '1' then
            write_ptr <= 0;
            byte_count <= 0;
        elsif rising_edge(clk) then
            if write_en = '1' and byte_count < BUFFER_SIZE then
                buffer(write_ptr) <= data_in;
                write_ptr <= (write_ptr + 1) mod BUFFER_SIZE;
                byte_count <= byte_count + 1;
            end if;
        end if;
    end process;

    -- Prozess für das Lesen aus dem Puffer
    process(clk, reset)
    begin
        if reset = '1' then
            read_ptr <= 0;
        elsif rising_edge(clk) then
            if read_en = '1' and byte_count > 0 then
                data_out <= buffer(read_ptr);
                read_ptr <= (read_ptr + 1) mod BUFFER_SIZE;
                byte_count <= byte_count - 1;
            end if;
        end if;
    end process;

    -- Ausgabe der Signale full und empty
    full <= '1' when byte_count = BUFFER_SIZE else '0';
    empty <= '1' when byte_count = 0 else '0';

end Behavioral;
