library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BRAM_Director_tb is
end BRAM_Director_tb;

architecture behavior of BRAM_Director_tb is

    signal clk                   : std_logic := '0';
    signal reset                 : std_logic := '0';
    signal port_in               : std_logic_vector(2 downto 0) := (others => '0');
    signal byte_in               : std_logic_vector(7 downto 0) := (others => '0');

    signal to_BRAM_DMX_ONE_out   : std_logic_vector(7 downto 0);
    signal to_BRAM_DMX_TWO_out   : std_logic_vector(7 downto 0);
    signal to_BRAM_DMX_THREE_out : std_logic_vector(7 downto 0);
    signal to_BRAM_DMX_FOUR_out  : std_logic_vector(7 downto 0);
    signal to_BRAM_MiDi_ONE_out  : std_logic_vector(7 downto 0);
    signal to_BRAM_MiDi_TWO_out  : std_logic_vector(7 downto 0);
    signal to_BRAM_RS232_ONE_out : std_logic_vector(7 downto 0);
    signal port_error            : std_logic;

begin

    uut: entity work.BRAM_Director
        port map (
            clk                   => clk,
            reset                 => reset,
            port_in               => port_in,
            byte_in               => byte_in,
            to_BRAM_DMX_ONE_out   => to_BRAM_DMX_ONE_out,
            to_BRAM_DMX_TWO_out   => to_BRAM_DMX_TWO_out,
            to_BRAM_DMX_THREE_out => to_BRAM_DMX_THREE_out,
            to_BRAM_DMX_FOUR_out  => to_BRAM_DMX_FOUR_out,
            to_BRAM_MiDi_ONE_out  => to_BRAM_MiDi_ONE_out,
            to_BRAM_MiDi_TWO_out  => to_BRAM_MiDi_TWO_out,
            to_BRAM_RS232_ONE_out => to_BRAM_RS232_ONE_out,
            port_error            => port_error
        );

    clk_process : process
    begin
        while true loop
            clk <= '0'; wait for 10 ns;
            clk <= '1'; wait for 10 ns;
        end loop;
    end process;

    stim_proc: process
    begin
        port_in <= "000"; byte_in <= "00000001"; wait for 20 ns;

        port_in <= "001"; byte_in <= "00000010"; wait for 20 ns;

        port_in <= "010"; byte_in <= "00000100"; wait for 20 ns;

        port_in <= "011"; byte_in <= "00001000"; wait for 20 ns;

        port_in <= "100"; byte_in <= "00010000"; wait for 20 ns;

        port_in <= "101"; byte_in <= "00100000"; wait for 20 ns;

        port_in <= "110"; byte_in <= "01000000"; wait for 20 ns;

        port_in <= "111"; byte_in <= "10000000"; wait for 20 ns;

        wait;
        
    end process;

end behavior;
