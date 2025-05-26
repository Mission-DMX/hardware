library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DMX_Receiver is
    Port (
        clk        : in  STD_LOGIC; 
        reset      : in  STD_LOGIC;
        dmx_in     : in  STD_LOGIC; 
        channel    : in  INTEGER range 1 to 512; 
        data_out   : out STD_LOGIC_VECTOR(7 downto 0);
        data_valid : out STD_LOGIC
    );
end DMX_Receiver;

architecture Behavioral of DMX_Receiver is
    constant CLOCK_FREQ   : integer := 50000000;
    constant DMX_BAUDRATE : integer := 250000; 
    constant BIT_PERIOD   : integer := CLOCK_FREQ / DMX_BAUDRATE;

    signal bit_counter    : integer := 0;
    signal state          : integer := 0;
    signal current_channel: integer := 0;
    signal shift_reg      : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal dmx_buffer     : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal receiving      : STD_LOGIC := '0';
    signal start_bit_detected : STD_LOGIC := '0';

begin

    process(clk, reset)
    begin
        if reset = '1' then
            bit_counter <= 0;
            state <= 0;
            current_channel <= 0;
            shift_reg <= (others => '0');
            dmx_buffer <= (others => '0');
            data_out <= (others => '0');
            data_valid <= '0';
            receiving <= '0';
            start_bit_detected <= '0';
        elsif rising_edge(clk) then
            if receiving = '0' then
                if dmx_in = '0' then
                    start_bit_detected <= '1';
                    bit_counter <= 0;
                    receiving <= '1';
                end if;
            else
                bit_counter <= bit_counter + 1;
                if bit_counter = BIT_PERIOD then
                    bit_counter <= 0;
                    state <= state + 1;

                    if state = 0 then
                    elsif state >= 1 and state <= 8 then
                        shift_reg(state - 1) <= dmx_in;
                    elsif state = 9 then
                        if dmx_in = '1' then
                            if current_channel = channel then
                                dmx_buffer <= shift_reg;
                                data_valid <= '1';
                            end if;
                            current_channel <= current_channel + 1;
                        end if;
                        state <= 0;
                        receiving <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process;

    data_out <= dmx_buffer;

end Behavioral;

