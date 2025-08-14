library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use UNISIM.VComponents.all;

entity Counter is

    Port ( 
            clk            : in  STD_LOGIC;
            reset          : in  STD_LOGIC;
            count_now_in   : in  STD_LOGIC;
            
            Counted_Number : STD_LOGIC_VECTOR(15 downto 0)
    );
    
end Counter;

architecture Behavioral of Counter is

begin


end Behavioral;
