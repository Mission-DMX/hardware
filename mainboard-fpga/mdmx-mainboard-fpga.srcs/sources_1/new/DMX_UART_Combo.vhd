library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.intertypes.ALL;

entity DMX_PORT_CONTROLLER is
    Port ( clk             : in STD_ULOGIC;
           rst           : in STD_ULOGIC;
                     
           dmx_tx          : out STD_ULOGIC;
           dmx_clk         : out STD_ULOGIC;
           dmx_break_out   : out STD_ULOGIC;
           dmx_rx          : in STD_ULOGIC;
           leds            : out std_ulogic_vector (2 downto 0);
           
           buffer_write_enable   : in STD_ULOGIC;
           buffer_address        : in STD_ULOGIC_VECTOR(8 downto 0);
           buffer_data_in        : in std_ulogic_vector(7 downto 0);
           buffer_read_requested : in std_ulogic;
           buffer_data_out       : out std_ulogic_vector(7 downto 0);
           
           mode            : in DMX_PORT_MODE_OF_OPERATION
           );
end DMX_PORT_CONTROLLER;

architecture Behavioral of DMX_PORT_CONTROLLER is
    
    type protocol_state_t is (BREAK, MAB,MAB2, START, DATA);
    signal state_protocol : protocol_state_t := BREAK;
    
    type data_state is (StartB, D0, D1, D2, D3, D4, D5, D6, D7, StopB1, StopB2);
    signal state_data, next_state_data : data_state;
    signal bram_addr : unsigned(8 downto 0);
    
    signal timer : unsigned(8 downto 0) := (others => '0');
    signal dmx_clk_timer : unsigned(8 downto 0) := (others => '0');
    signal clk_four_micro_in : std_logic;
    signal last_update : integer range 0 to 8;
    
    signal bram_enable : STD_ULOGIC;
    signal bram_write_enable : STD_ULOGIC;
    signal bram_write_addr   : std_ulogic_vector(8 downto 0);
    signal bram_write_data   : std_ulogic_vector(7 downto 0);
    signal bram_data_out    : STD_ULOGIC_VECTOR(7 downto 0);
    
    component DMX_UNIVERSE_BRAM IS
      PORT (
        clka  : in  STD_LOGIC;
        ena   : in  STD_LOGIC;
        wea   : in  STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : in  STD_LOGIC_VECTOR(8 DOWNTO 0);
        dina  : in  STD_LOGIC_VECTOR(7 DOWNTO 0);
        clkb  : in  STD_LOGIC;
        enb   : in  STD_LOGIC;
        addrb : in  STD_LOGIC_VECTOR(8 DOWNTO 0);
        doutb : out STD_LOGIC_VECTOR(7 DOWNTO 0)
         );
    end component;
    
    component dmx_port_led_controller is
    generic (clock_range : natural := 25000000);
    port ( clk : in STD_ULOGIC;
           reset : in STD_ULOGIC;
           mode : in DMX_PORT_MODE_OF_OPERATION;
           last_update : in integer range 0 to 8;
           leds : out STD_ULOGIC_VECTOR (2 downto 0));
    end component;

begin

    memory: DMX_UNIVERSE_BRAM
            port map (
                clka   => clk,
                clkb   => clk,
                
                ena    => bram_enable,
                wea(0) => bram_write_enable,    -- schreibe ein
                addra  => bram_write_addr,
                dina   => bram_write_data,
                
                enb    => bram_enable,  
                addrb  => std_logic_vector(bram_addr),
                doutb  => bram_data_out
             );
    
    memory_control_mux : process(all) begin
        bram_write_enable <= '0';
        bram_write_addr <= (others => '0');
        bram_write_data <= (others => '0');
        if buffer_read_requested = '1' then
            buffer_data_out <= bram_data_out;
        else
            buffer_data_out <= (others => 'Z');
        end if;
        if mode = DMX_OUT or mode = DISABLED then
            bram_write_enable <= buffer_write_enable;
            bram_write_addr <= buffer_address;
            bram_write_data <= buffer_data_in;
        end if;
        -- TODO implement handler for mode DMX_IN
        -- TODO implement handler for mode RDM 
    end process;
--------------------------------------------------------------
    --FSM
 ------------------------------------------------------------------------   
    -- Next State Logic Protocol
    dmx_logic_fsm : process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state_protocol <= BREAK;
            else
                if clk_four_micro_in = '1' and mode = DMX_OUT then
                    case state_protocol is
                        when BREAK =>
                            dmx_tx <= '1'; --auf high geändert
                            timer <= timer + 1;
                            if timer = 35 then -- was 21 (=88us)
                                state_protocol <= MAB;
                                timer <= (others => '0');
                            end if;    
                        when MAB =>
                            dmx_tx <= '0';
                            timer <= timer + 1;
                            if timer = 34 then   -- war 1
                                state_protocol <= MAB2;
                                timer <= (others => '0');
                            end if; 
                        when MAB2 =>
                            dmx_tx <= '1';
                            timer <= timer + 1;
                            if timer = 4 then   -- war 1
                                state_protocol <= START;
                                timer <= (others => '0');
                            end if;
                        when START =>
                            dmx_tx <= '0';
                            state_data  <= StartB;
                            timer <= timer + 1;
                            if timer = 8 then
                                state_protocol <= DATA;
                                timer <= (others => '0');
                                bram_addr <= (others => '0');
                            end if;                       
                         when DATA =>
                            case state_data is
                                when StartB =>
                                    dmx_tx <= '1';
                                    state_data <= D0;
                                when D0 =>
                                    dmx_tx <= bram_data_out(7);
                                    --dmx_tx <= '1';
                                    state_data <= D1;
                                when D1 =>
                                    dmx_tx <= bram_data_out(6);
                                    --dmx_tx <= '1';
                                    state_data <= D2;
                                when D2 =>
                                    dmx_tx <= bram_data_out(5);
                                    --dmx_tx <= '1';
                                    state_data <= D3;  
                                when D3 =>
                                    dmx_tx <= bram_data_out(4);
                                    --dmx_tx <= '1';
                                    state_data <= D4;
                                when D4 =>
                                    dmx_tx <= bram_data_out(3);
                                    --dmx_tx <= '1';
                                    state_data <= D5;
                                when D5 =>
                                    dmx_tx <= bram_data_out(2);
                                    --dmx_tx <= '1';
                                    state_data <= D6;
                                when D6 =>
                                    dmx_tx <= bram_data_out(1);
                                    --dmx_tx <= '1';
                                    state_data <= D7;    
                                when D7 =>
                                    dmx_tx <= bram_data_out(0);
                                    --dmx_tx <= '1';
                                    state_data <= StopB1;
                                when StopB1 =>
                                    dmx_tx <= '0';
                                    state_data <= StopB2;
                                when StopB2 =>
                                    dmx_tx <= '0'; 
                                    state_data <= StartB;
                                    if bram_addr = 511 then
                                        bram_addr <= to_unsigned(0,9);
                                        state_protocol <= BREAK;
                                    else 
                                        bram_addr <= bram_addr + 1;    
                                    end if;         
                            end case;
                        when others =>
                            state_protocol <= BREAK;
                    end case;
                end if;
            end if;
        end if;
    end process;
 ------------------------------------------------------------------------     

    clock_manager : process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                dmx_clk_timer <= (others => '0');
                bram_enable <= '0';    
                clk_four_micro_in <= '0';
                last_update <= 8;
                ------------------------
                --dmx_state_out <= "0000";
                --data_state_out <= "0000000000";
                ------------------------
            else
                case state_protocol is        
                    when START =>
                        if not (mode = DISABLED) then
                            bram_enable <= '1';
                        else
                            bram_enable <= '0';
                        end if;
                    when DATA =>
                        if not (mode = DISABLED) then
                            bram_enable <= '1';
                        else
                            bram_enable <= '0';
                        end if;
                    when others =>
                        bram_enable <= '0';
                end case;
                
                dmx_clk_timer <= dmx_clk_timer + 1;
                if dmx_clk_timer > 398  then -- 398 equals 4us
                   clk_four_micro_in <= '1';
                   if last_update /= 8 then
                       last_update <= last_update + 1;
                   end if;
                   dmx_clk_timer <= (others => '0');
                else
                    clk_four_micro_in <= '0';
                end if;
                
                case state_protocol is      
                    when BREAK =>
                        dmx_break_out <= '1';
                    when others =>
                        dmx_break_out <= '0';
                end case;
                
                if bram_write_enable = '1' then
                    last_update <= 0;
                end if;
            end if;
        end if;
    end process;
    
    dmx_clk <= clk_four_micro_in;
-------------------------------------------------------------------------------  

    led_controller : dmx_port_led_controller
        port map(
            clk => clk,
            reset => rst,
            mode => mode,
            last_update => last_update,
            leds => leds
        );
          
end Behavioral;

















































