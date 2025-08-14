library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Message_Type_Recognition_tb is
end Message_Type_Recognition_tb;

architecture Behavioral of Message_Type_Recognition_tb is

    component Message_Type_Recognition
        Port (
            byte_in           : in  STD_LOGIC_VECTOR(7 downto 0);
            wrong_message_out : out STD_LOGIC;
            message_type_out  : out STD_LOGIC_VECTOR(10 downto 0)
        );
    end component;

    signal byte_in           : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal wrong_message_out : STD_LOGIC;
    signal message_type_out  : STD_LOGIC_VECTOR(10 downto 0);
 
    constant clk_period      : time := 10 ns;

begin

    uut: Message_Type_Recognition
        Port map (
            byte_in           => byte_in,
            wrong_message_out => wrong_message_out,
            message_type_out  => message_type_out
        );


    stimulus_process : process
    begin
    

        byte_in <= "10000001";  -- expected Output "00000000001" "1"
        wait for 10 ns;

        byte_in <= "10000010";  -- expected Output "00000000010" "2"
        wait for 10 ns;
        
        byte_in <= "10000100";  -- expected Output "00000000100" "4"
        wait for 10 ns;

        byte_in <= "10000101";  -- expected Output "00000001000" "8"
        wait for 10 ns;
        
        byte_in <= "10000111";  -- expected Output "00000010000" "10"
        wait for 10 ns;

        byte_in <= "10001000";  -- expected Output "00000100000" "20"
        wait for 10 ns;
        
        byte_in <= "10001010";  -- expected Output "00001000000" "40"
        wait for 10 ns;
        
        byte_in <= "10001100";  -- expected Output "00010000000" "80"
        wait for 10 ns;
        
        byte_in <= "10001101";  -- expected Output "00100000000" "100"
        wait for 10 ns;
        
        byte_in <= "10001110";  -- expected Output "01000000000" "200"
        wait for 10 ns;
        
        byte_in <= "10001111";  -- expected Output "10000000000" "400"
        wait for 10 ns;
        
        byte_in <= "11110000";  -- expected Output "00000000000" "0"
        wait for 10 ns;
        
        
        wait;
    end process;

end Behavioral;

--The modue does not care about the first bit, because it should only receive specific bytes frm the new_message module.