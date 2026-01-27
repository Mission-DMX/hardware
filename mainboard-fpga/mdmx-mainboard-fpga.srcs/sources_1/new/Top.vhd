library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.intertypes.ALL;

entity Top is
    generic (
        num_dmx_ports : natural := 1
    );
    port (
        clk_sys     : in  STD_LOGIC;   -- 100 MHz
        rst_n   : in  STD_LOGIC;
        dmx_out : out STD_LOGIC_VECTOR(num_dmx_ports - 1 downto 0);
        usb_rx  : in  STD_LOGIC;
        usb_tx  : out STD_LOGIC;
        led     : out STD_LOGIC_VECTOR(7 downto 0);
        
        -- debug signals
        test_1  : out STD_LOGIC;
        test_2  : out STD_LOGIC; 
        a       : out STD_LOGIC_VECTOR(7 downto 0);
        
        -- DDR3 interface
        ddr3_dq : inout std_logic_vector(15 downto 0);
        ddr3_dqs_n : inout std_logic_vector(1 downto 0);
        ddr3_dqs_p : inout std_logic_vector(1 downto 0);
        ddr3_addr : out std_logic_vector(13 downto 0);
        ddr3_ba : out std_logic_vector(2 downto 0);
        ddr3_ras_n : out std_logic;
        ddr3_cas_n : out std_logic;
        ddr3_we_n : out std_logic;
        ddr3_reset_n : out std_logic;
        ddr3_ck_p : out std_logic;
        ddr3_ck_n : out std_logic;
        ddr3_cke : out std_logic;
        ddr3_cs_n : out std_logic;
        ddr3_dm : out std_logic_vector(1 downto 0);
        ddr3_odt : out std_logic
    );
end Top;

architecture Behavioral of Top is

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
    
    signal protocol_handler_to_soc_control_bus : soc_control_bus;
    signal ddr3_bus : ddr3_mem_interface;
    ------------------------------------------------------------------
    -- DMX UART Combo Signale
    -----------------------------------------------------------------       
    signal enable_b   : STD_LOGIC;
    signal data_b     : STD_LOGIC_VECTOR(7 downto 0);
    signal addr_b     : STD_LOGIC_VECTOR(8 downto 0);
    
    --signal fake_data_b   : STD_LOGIC_VECTOR(7 downto 0) := "11110000";
    --signal fake_going_up : std_logic := '1';
    
    signal internal_rst  : STD_ULOGIC;
    signal clock_locked : std_ulogic;
    signal clk_100 : STD_ULOGIC;
    signal clk_200 : STD_ULOGIC;
    
    signal dmx_breaks     : STD_LOGIC_VECTOR(num_dmx_ports - 1 downto 0);
    signal dmx_clocks     : STD_LOGIC_VECTOR(num_dmx_ports - 1 downto 0);
    
    --signal timer : unsigned(8 downto 0) := (others => '0');
    --signal old_dmx_break : STD_LOGIC;
begin

   clock_manager : entity work.clock_generator
       port map (
            reset => internal_rst,
            clk_in1 => clk_sys,
            locked => clock_locked,
            clk_out_100 => clk_100,
            clk_out_200 => clk_200
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
           
           soc_control => protocol_handler_to_soc_control_bus,
           
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
    internal_rst <= (not rst_n) or (not clock_locked);
    --dmx_out <= clk;
    test_1 <= dmx_breaks(0);
    
    ddr3_bus.ddr3_dq <= ddr3_dq;
    ddr3_bus.ddr3_dqs_n <= ddr3_dqs_n;
    ddr3_bus.ddr3_dqs_p <= ddr3_dqs_p;
    ddr3_bus.ddr3_addr <= ddr3_addr;
    ddr3_bus.ddr3_ba <= ddr3_ba;
    ddr3_bus.ddr3_ras_n <= ddr3_ras_n;
    ddr3_bus.ddr3_cas_n <= ddr3_cas_n;
    ddr3_bus.ddr3_we_n <= ddr3_we_n;
    ddr3_bus.ddr3_reset_n <= ddr3_reset_n;
    ddr3_bus.ddr3_ck_p <= ddr3_ck_p;
    ddr3_bus.ddr3_ck_n <= ddr3_ck_n;
    ddr3_bus.ddr3_cke <= ddr3_cke;
    ddr3_bus.ddr3_cs_n <= ddr3_cs_n;
    ddr3_bus.ddr3_dm <= ddr3_dm;
    ddr3_bus.ddr3_odt <= ddr3_odt;
    
end Behavioral;
