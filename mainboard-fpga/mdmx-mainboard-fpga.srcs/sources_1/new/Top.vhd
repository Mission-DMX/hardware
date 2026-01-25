library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.intertypes.ALL;

entity Top is
    generic (
        num_dmx_ports : natural := 1
    );
    port (
        clk_100     : in  STD_LOGIC;   -- 100 MHz
        rst_n   : in  STD_LOGIC;
        dmx_out : out STD_LOGIC_VECTOR(num_dmx_ports - 1 downto 0);
        usb_rx  : in  STD_LOGIC;
        usb_tx  : out STD_LOGIC;
        led     : out STD_LOGIC_VECTOR(7 downto 0);
        
        -- debug signals
        test_1  : out STD_LOGIC;
        test_2  : out STD_LOGIC ; 
        a       : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Top;

architecture Behavioral of Top is

    component clock_generator
    port
     (-- Clock in ports
      -- Clock out ports
      clk_out_150          : out    std_logic;
      -- Status and control signals
      reset             : in     std_logic;
      locked            : out    std_logic;
      clk_in1           : in     std_logic
     );
    end component;

    -- signale USB UART -> Protocol decoder
    signal com_data_to_protocol_decoder : std_ulogic_vector(7 downto 0);
    signal com_data_to_protocol_decoder_valid : std_ulogic;
    signal com_data_to_protocol_decoder_ready : std_ulogic;
    
    ------------------------------------------------------------------
    -- Signale CONTROLLER → BRAM (Port A)
    ------------------------------------------------------------------
    signal dmx_port_modes           : DMX_PORT_MODE_ARRAY(num_dmx_ports - 1 downto 0);
    signal dmx_mem_write_enable_bus : std_ulogic_vector(num_dmx_ports - 1 downto 0);
    signal dmx_mem_read_select_bus  : std_ulogic_vector(num_dmx_ports - 1 downto 0);
    
    signal dmx_mem_addr_bus                   : std_ulogic_vector(8 downto 0);
    signal dmx_mem_write_to_port_data_bus     : std_ulogic_vector(7 downto 0);
    signal dmx_mem_read_from_port_data_bus    : std_ulogic_vector(7 downto 0);
    ------------------------------------------------------------------
    -- DMX UART Combo Signale
    -----------------------------------------------------------------       
    signal enable_b   : STD_LOGIC;
    signal data_b     : STD_LOGIC_VECTOR(7 downto 0);
    signal addr_b     : STD_LOGIC_VECTOR(8 downto 0);
    
    --signal fake_data_b   : STD_LOGIC_VECTOR(7 downto 0) := "11110000";
    --signal fake_going_up : std_logic := '1';
    
    signal internal_rst  : STD_LOGIC;
    signal clk_150 : STD_LOGIC;
    
    signal dmx_breaks     : STD_LOGIC_VECTOR(num_dmx_ports - 1 downto 0);
    signal dmx_clocks     : STD_LOGIC_VECTOR(num_dmx_ports - 1 downto 0);
    
    --signal timer : unsigned(8 downto 0) := (others => '0');
    --signal old_dmx_break : STD_LOGIC;
begin

   clock_manager : entity clock_generator
       port map (
            reset => internal_rst,
            clk_in1 => clk_100,
            clk_out_150 => clk_150
       );
   
   dmx_ports : for i in 0 to (num_dmx_ports - 1) generate
       dmx_port : entity work.DMX_PORT_CONTROLLER
           port map (
                clk             => clk_100,
                rst             => internal_rst,
                
                dmx_tx          => dmx_out(i),
                dmx_break_out   => dmx_breaks(i),        -- Ändern zu dmx_state_out(4 bit)
                dmx_clk         => dmx_clocks(i),
                dmx_rx          => '0',
                
                buffer_write_enable => dmx_mem_write_enable_bus(i),
                buffer_address => dmx_mem_addr_bus,
                buffer_data_in => dmx_mem_write_to_port_data_bus,
                buffer_read_requested => dmx_mem_read_select_bus(i),
                buffer_data_out => dmx_mem_read_from_port_data_bus,
               
                mode => dmx_port_modes(i)
            );
    end generate;
    
    u_uart_rx : entity work.uart_rx
    port map(
        clk => clk_100,
        rst => internal_rst,
        rx => usb_rx,
        data => com_data_to_protocol_decoder,
        new_data => com_data_to_protocol_decoder_valid,
        has_transmission_incomming => led(7)
        );
       
    u_pc_com_protocol_handler : entity work.PC_COM_PROTOCOL_HANDLER
        generic map (
            dmx_port_count => num_dmx_ports
        )
        port map (
           clk               => clk_100,
           reset             => internal_rst,
           decoding_error_occurred => led(6),
           
           com_data_in            => com_data_to_protocol_decoder,
           com_data_in_valid => com_data_to_protocol_decoder_valid,
           com_data_ready => com_data_to_protocol_decoder_ready,
           
           dmx_port_mode_outs => dmx_port_modes,
           dmx_mem_write_enable_out => dmx_mem_write_enable_bus,
           dmx_mem_read_select_out => dmx_mem_read_select_bus,
           dmx_mem_write_data_out => dmx_mem_write_to_port_data_bus,
           dmx_mem_read_data_in => dmx_mem_read_from_port_data_bus,
           dmx_mem_addr_out => dmx_mem_addr_bus
        );
    
    -----------------------------------------------------------------
    -- 5️ DMX Output MUX
    -- Break zieht Leitung LOW
    ------------------------------------------------------------------
    internal_rst <= not rst_n;
    --dmx_out <= clk;
    test_1 <= dmx_breaks(0);
    
end Behavioral;
