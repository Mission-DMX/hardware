library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DMX_Sender is
    Port (
        clk         : in  STD_LOGIC;             -- 50 MHz
        reset       : in  STD_LOGIC;

        -- BRAM interface (Port B)
        bram_enable : out STD_LOGIC;
        bram_addr   : out STD_LOGIC_VECTOR(8 downto 0);
        bram_data   : in  STD_LOGIC_VECTOR(7 downto 0);

        -- DMX output
        dmx_tx      : out STD_LOGIC
    );
end DMX_Sender;

architecture Behavioral of DMX_Sender is

    ----------------------------------------------------------------
    -- DMX timing (50 MHz clock)
    ----------------------------------------------------------------
    constant BAUD_TICKS  : integer := 400;      -- 100 MHz / 250k
    constant BREAK_TICKS : integer := 5000;     -- 100 µs
    constant MAB_TICKS   : integer := 600;      -- 12 µs

    type state_type is (
        IDLE,
        BREAK,
        MAB,
        LOAD_BYTE,
        SEND_START,
        SEND_DATA,
        SEND_STOP1,
        SEND_STOP2
    );

    signal state      : state_type := IDLE;
    signal tick_cnt   : integer range 0 to 6000 := 0;
    signal bit_cnt    : integer range 0 to 7 := 0;
    signal slot_cnt   : integer range 0 to 512 := 0;

    signal tx_reg     : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal dmx_out    : STD_LOGIC := '1';

begin

    dmx_tx <= dmx_out;

    ----------------------------------------------------------------
    -- DMX FSM
    ----------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state      <= IDLE;
                dmx_out    <= '1';
                bram_enable<= '0';
                bram_addr  <= (others => '0');
                slot_cnt   <= 0;
                tick_cnt   <= 0;
                bit_cnt    <= 0;

            else
                case state is

                ----------------------------------------------------
                when IDLE =>
                    dmx_out <= '1';
                    state   <= BREAK;
                    tick_cnt<= 0;

                ----------------------------------------------------
                when BREAK =>
                    dmx_out <= '0';
                    if tick_cnt = BREAK_TICKS then
                        tick_cnt <= 0;
                        state <= MAB;
                    else
                        tick_cnt <= tick_cnt + 1;
                    end if;

                ----------------------------------------------------
                when MAB =>
                    dmx_out <= '1';
                    if tick_cnt = MAB_TICKS then
                        tick_cnt <= 0;
                        slot_cnt <= 0;
                        state <= LOAD_BYTE;
                    else
                        tick_cnt <= tick_cnt + 1;
                    end if;

                ----------------------------------------------------
                when LOAD_BYTE =>
                    if slot_cnt = 0 then
                        tx_reg <= x"00";             -- Startcode
                    else
                        bram_enable <= '1';
                        bram_addr   <= std_logic_vector(to_unsigned(slot_cnt-1,9));
                        tx_reg <= bram_data;
                    end if;
                    bit_cnt  <= 0;
                    tick_cnt <= 0;
                    state    <= SEND_START;

                ----------------------------------------------------
                when SEND_START =>
                    dmx_out <= '0';
                    if tick_cnt = BAUD_TICKS then
                        tick_cnt <= 0;
                        state <= SEND_DATA;
                    else
                        tick_cnt <= tick_cnt + 1;
                    end if;

                ----------------------------------------------------
                when SEND_DATA =>
                    dmx_out <= tx_reg(bit_cnt);
                    if tick_cnt = BAUD_TICKS then
                        tick_cnt <= 0;
                        if bit_cnt = 7 then
                            bit_cnt <= 0;
                            state <= SEND_STOP1;
                        else
                            bit_cnt <= bit_cnt + 1;
                        end if;
                    else
                        tick_cnt <= tick_cnt + 1;
                    end if;

                ----------------------------------------------------
                when SEND_STOP1 =>
                    dmx_out <= '1';
                    if tick_cnt = BAUD_TICKS then
                        tick_cnt <= 0;
                        state <= SEND_STOP2;
                    else
                        tick_cnt <= tick_cnt + 1;
                    end if;

                ----------------------------------------------------
                when SEND_STOP2 =>
                    dmx_out <= '1';
                    if tick_cnt = BAUD_TICKS then
                        tick_cnt <= 0;
                        if slot_cnt = 512 then
                            state <= BREAK;
                        else
                            slot_cnt <= slot_cnt + 1;
                            state <= LOAD_BYTE;
                        end if;
                    else
                        tick_cnt <= tick_cnt + 1;
                    end if;

                end case;
            end if;
        end if;
    end process;

end Behavioral;
