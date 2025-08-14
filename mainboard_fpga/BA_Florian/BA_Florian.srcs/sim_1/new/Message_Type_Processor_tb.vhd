library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Message_Byte_Processor_tb is
end Message_Byte_Processor_tb;

architecture Behavioral of Message_Byte_Processor_tb is
    component Message_Byte_Processor is
        Port (
            clk           : in  STD_LOGIC;
            reset         : in  STD_LOGIC;
            data_byte_in  : in  STD_LOGIC_VECTOR(7 downto 0);
            data_byte_out : out STD_LOGIC_VECTOR(7 downto 0);
            write_now_out : out STD_LOGIC_VECTOR(0 downto 0)
        );
    end component;

    -- signals and constants
    signal clk           : STD_LOGIC := '0';
    signal reset         : STD_LOGIC := '0';
    signal data_byte_in  : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal data_byte_out : STD_LOGIC_VECTOR(7 downto 0);
    signal write_now_out : STD_LOGIC_VECTOR(0 downto 0);

    constant clk_period : time := 10 ns;

begin

    uut: Message_Byte_Processor
        Port map (
            clk           => clk,
            reset         => reset,
            data_byte_in  => data_byte_in,
            data_byte_out => data_byte_out,
            write_now_out => write_now_out
        );

    clk_process :process
    begin
        loop
            clk <= '1';
            wait for clk_period/2;
            clk <= '0';
            wait for clk_period/2;
        end loop;
        wait;
    end process;

    stim_proc: process
    begin
    
        reset <= '1';
        wait for clk_period * 2;
        reset <= '0';

        data_byte_in <= "00000010"; 
        wait for clk_period;
        data_byte_in <= "00000100"; 
        wait for clk_period;
        data_byte_in <= "00001000"; 
        wait for clk_period;
        data_byte_in <= "00010000"; 
        wait for clk_period;
        data_byte_in <= "00100000"; 
        wait for clk_period;
        data_byte_in <= "01000000"; 
        wait for clk_period;
        data_byte_in <= "10000000"; 
        wait for clk_period;

        reset <= '1';
        wait for clk_period * 2;

    end process;

end Behavioral;
