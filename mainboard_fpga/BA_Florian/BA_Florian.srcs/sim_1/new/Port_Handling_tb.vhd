library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Port_Handling_tb is
end entity;

architecture Behavioral of Port_Handling_tb is

    -- DUT Ports
    signal port_byte_in        : STD_LOGIC_VECTOR(8 downto 0);
    signal message_type_in     : STD_LOGIC_VECTOR(3 downto 0);
    signal port_activation_out : STD_LOGIC_VECTOR(2 downto 0);

begin

    -- Instantiate the Device Under Test (DUT)
    DUT: entity work.Port_Handling
        port map (
            port_byte_in        => port_byte_in,
            message_type_in     => message_type_in,
            port_activation_out => port_activation_out
        );

    -- Stimuli process
    stim_proc: process
    begin
        -- Test 1: port_byte_in = "000000000", message_type_in = "0000"
        port_byte_in    <= (others => '0');
        message_type_in <= "0000";
        wait for 10 ns;

        -- Test 2: port_byte_in = "000000000", message_type_in = "0010"
        port_byte_in    <= (others => '0');
        message_type_in <= "0010";
        wait for 10 ns;

        -- Test 3: port_byte_in = "000000001", message_type_in = "0001"
        port_byte_in    <= "000000001";
        message_type_in <= "0001";
        wait for 10 ns;

        -- Test 4: port_byte_in = "000000001", message_type_in = "0011"
        port_byte_in    <= "000000001";
        message_type_in <= "0011";
        wait for 10 ns;

        -- Test 5: port_byte_in = "000000010", any message
        port_byte_in    <= "000000010";
        message_type_in <= "1111";
        wait for 10 ns;

        -- Test 6: port_byte_in = "000000011", any message
        port_byte_in    <= "000000011";
        message_type_in <= "1010";
        wait for 10 ns;

        wait; -- stop simulation
    end process;

end Behavioral;
