library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.intertypes.ALL;

entity PC_COM_PROTOCOL_HANDLER is
    generic (dmx_port_count : natural := 8);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           
           com_data_in : in std_ulogic_vector(7 downto 0);
           com_data_in_valid : in std_ulogic;
           com_data_ready : out std_ulogic;
           
           dmx_mem_write_enable_out : out std_ulogic_vector(dmx_port_count - 1 downto 0);
           dmx_mem_read_select_out  : out std_ulogic_vector(dmx_port_count - 1 downto 0);
           dmx_mem_write_data_out   : out std_ulogic_vector(7 downto 0);
           dmx_mem_read_data_in     : in  std_ulogic_vector(7 downto 0);
           dmx_mem_addr_out         : out std_ulogic_vector(8 downto 0);
           
           dmx_port_mode_outs : out DMX_PORT_MODE_ARRAY(dmx_port_count - 1 downto 0);
           
           decoding_error_occurred : out std_ulogic;
           );
end PC_COM_PROTOCOL_HANDLER;

architecture Behavioral of PC_COM_PROTOCOL_HANDLER is

    type FSM is (RESET_STATE, IDLE, READ_ARG_1, READ_ARG_2, EXEC_COMMAND);
    type command_t is (RESET_DEVICE, WRITE_DMX, READ_DMX, SET_DMX_PORT_MODE, WRITE_CPU_MEM, SET_CPU_STATE);
    signal state, next_state : FSM;
    
    -- command handling signals
    signal command   : command_t;
    signal arg1      : std_ulogic_vector(11 downto 0);
    signal arg2      : std_ulogic_vector(11 downto 0);
    signal tmp1      : natural range 0 to 65565;
    signal tmp2      : natural range 0 to 65565;
    
    -- device state control
    signal dmx_modes : DMX_PORT_MODE_ARRAY(dmx_port_count - 1 downto 0);
    -- TODO add cpu RUN || STOP
begin

    process(clk)
    begin
        if rising_edge(clk) then
            decoding_error_occurred <= '0';
            
            if reset = '1' then 
                 state <= RESET_STATE;
                 tmp1 <= 0;
            else  
                case state is
                    when RESET_STATE =>
                        -- clear dmx data, then progress to IDLE
                        dmx_mem_write_enable_out <= (others => '1'); -- write same data to all ports
                        dmx_mem_write_data_out <= (others => '1');
                        dmx_mem_addr_out <= std_ulogic_vector(to_unsigned(tmp1, dmx_mem_addr_out'length));
                        dmx_mem_read_select_out <= (others => '0');
                        
                        arg1 <= (others => '0');
                        arg2 <= (others => '0');
                        tmp2 <= 0;
                         
                        for i in 0 to dmx_port_count - 1 loop
                           dmx_modes(i) <= DISABLED;
                        end loop;
                         
                        -- TODO stop CPU
                        
                        if tmp1 = 511 then
                           tmp1 <= 0;
                           state <= IDLE;
                        else
                           tmp1 <= tmp1 + 1;
                        end if;
                        com_data_ready <= '0';
                    when IDLE =>
                        com_data_ready <= '1';
                        if com_data_in_valid = '1' and com_data_in(6) = '0' then
                            case com_data_in(5 downto 0) is
                                when "111111" => -- '?'
                                    command <= RESET_DEVICE;
                                    state <= READ_ARG_1;
                                when "111110" => -- '>'
                                    command <= WRITE_DMX;
                                    state <= READ_ARG_1;
                                when "111101" => -- '='
                                    command <= READ_DMX;
                                    state <= READ_ARG_1;
                                when "111100" => -- '<'
                                    command <= SET_DMX_PORT_MODE;
                                    state <= READ_ARG_1;
                                when "111011" => -- ';'
                                    command <= WRITE_CPU_MEM;
                                    state <= READ_ARG_1;
                                when "111010" => -- ':'
                                    command <= SET_CPU_STATE;
                                    state <= READ_ARG_1;
                                when "000000" => -- SPACE, end of message
                                    state <= IDLE;
                                when others =>
                                    state <= IDLE;
                                    decoding_error_occurred <= '1';
                            end case;
                        end if;
                    when READ_ARG_1 =>
                        if com_data_in_valid = '1' then
                            if com_data_in(6) = '1' then
                                if tmp1 = 0 then
                                    arg1(5 downto 0) <= com_data_in(5 downto 0);
                                    tmp1 <= tmp1 + 1;
                                else
                                    state <= READ_ARG_2;
                                    arg1(11 downto 6) <= com_data_in(5 downto 0);
                                    tmp1 <= 0;
                                end if;
                            else
                                state <= IDLE;
                                decoding_error_occurred <= '1';
                            end if;
                        end if;
                    when READ_ARG_2 =>
                        if com_data_in_valid = '1' then
                            if com_data_in(6) = '1' then
                                if tmp1 = 0 then
                                    arg2(5 downto 0) <= com_data_in(5 downto 0);
                                    tmp1 <= tmp1 + 1;
                                else
                                    state <= EXEC_COMMAND;
                                    if command /= WRITE_DMX then
                                        com_data_ready <= '0';
                                    end if;
                                    arg2(11 downto 6) <= com_data_in(5 downto 0);
                                    tmp1 <= 0;
                                end if;
                            else
                                state <= IDLE;
                                decoding_error_occurred <= '1';
                            end if;
                        end if;
                    when EXEC_COMMAND =>
                        case command is
                        when RESET_DEVICE =>
                            state <= RESET_STATE;
                            tmp1 <= 0;
                        when WRITE_DMX =>
                            -- arg1 is universe / port
                            -- arg2 is length
                            -- tmp1 is current position
                            -- tmp2 is storing byte position
                            dmx_mem_write_enable_out <= (others => '0');
                            
                            if com_data_in_valid = '1' then
                                if com_data_in(6) = '1' then
                                    if tmp2 = 0 then
                                        dmx_mem_write_data_out(7 downto 4) <= com_data_in(3 downto 0);
                                        tmp2 <= 1;
                                    else
                                        dmx_mem_write_enable_out(to_integer(unsigned(arg1))) <= '1';
                                        dmx_mem_write_data_out(3 downto 0) <= com_data_in(3 downto 0);
                                        dmx_mem_addr_out <= std_ulogic_vector(to_unsigned(tmp1, dmx_mem_addr_out'length));
                                        tmp2 <= 0;
                                        if tmp1 = unsigned(arg2) or tmp1 = 511 then
                                            state <= IDLE;
                                            tmp1 <= 0;
                                        else
                                            tmp1 <= tmp1 + 1;
                                        end if;
                                    end if;
                                else
                                    state <= IDLE;
                                    decoding_error_occurred <= '1';
                                end if;
                            end if;
                        when SET_DMX_PORT_MODE =>
                            -- arg1 is port
                            -- arg2 is mode
                            case arg2(1 downto 0) is
                            when "01" =>
                                dmx_modes(to_integer(unsigned(arg1))) <= DMX_IN;
                            when "10" =>
                                dmx_modes(to_integer(unsigned(arg1))) <= DMX_OUT;
                            when "11" =>
                                dmx_modes(to_integer(unsigned(arg1))) <= RDM;
                            when others =>
                                dmx_modes(to_integer(unsigned(arg1))) <= DISABLED;
                            end case;
                            state <= IDLE;
                        when others =>
                            -- TODO implement READ_DMX, WRITE_CPU_MEM, SET_CPU_STATE
                            state <= IDLE;
                            decoding_error_occurred <= '1';
                        end case;
                    when others =>
                        state <= IDLE;
                        decoding_error_occurred <= '1';
                end case;  
            end if;         
        end if;
    end process;
    
    dmx_port_mode_outs <= dmx_modes;
    
end Behavioral;
