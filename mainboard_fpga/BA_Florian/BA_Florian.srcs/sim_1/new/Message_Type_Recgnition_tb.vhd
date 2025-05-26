library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Message_Type_Recognition_tb is
-- No ports for a testbench
end Message_Type_Recognition_tb;

architecture Behavioral of Message_Type_Recognition_tb is

    -- Component Declaration
    component Message_Type_Recognition
        Port (
            clk        : in  STD_LOGIC;
            reset      : in  STD_LOGIC;
            byte_in    : in  STD_LOGIC_VECTOR(7 downto 0);
            no_signal  : out STD_LOGIC;
            out_signal : out STD_LOGIC_VECTOR(10 downto 0)
        );
    end component;

    -- Signals to connect to the DUT (Device Under Test)
    signal clk        : STD_LOGIC := '0';
    signal reset      : STD_LOGIC := '0';
    signal byte_in    : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal no_signal  : STD_LOGIC;
    signal out_signal : STD_LOGIC_VECTOR(10 downto 0);

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the DUT
    uut: Message_Type_Recognition
        Port map (
            clk => clk,
            reset => reset,
            byte_in => byte_in,
            no_signal => no_signal,
            out_signal => out_signal
        );

    -- Clock process
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
        wait;
    end process;

    -- Stimulus process
    stimulus_process : process
    begin
        -- Reset the system
        reset <= '1';
        wait for 2 * clk_period;
        reset <= '0';
        
        byte_in <= "00000001"; -- expected Output "00000000001"
        wait for 2 * clk_period;

        byte_in <= "10000001";  -- expected Output "00000000001" 
        wait for 2 * clk_period;
        
        byte_in <= "";         -- expected Output ""
        wait for 2 * clk_period;

        byte_in <= "";         -- expected Output ""
        wait for 2 * clk_period;
        
        byte_in <= "";         -- expected Output ""
        wait for 2 * clk_period;

        byte_in <= "";         -- expected Output ""
        wait for 2 * clk_period;
        
        wait;
    end process;

end Behavioral;

--The modue does not care about the first bit, because it should only receive specific bytes frm the new_message module.