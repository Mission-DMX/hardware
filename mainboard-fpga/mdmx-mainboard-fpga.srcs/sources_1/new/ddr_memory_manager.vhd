----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Doralitze
-- 
-- Create Date: 01/30/2026 12:18:11 PM
-- Design Name: 
-- Module Name: ddr_memory_manager - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Provides DDR3 controller and FIFO for read and write operations.
-- Uses 200MHz clock for SoC memory network and 85MHz clock for DDR3 interfacing
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.intertypes.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ddr_memory_manager is
    Port ( clk_100 : in STD_LOGIC;
           clk_200 : in STD_LOGIC;
           ddr3_bus : inout ddr3_mem_interface;
           device_temperature : out std_ulogic_vector(11 downto 0);
           reset : in STD_LOGIC);
           -- TODO add memory interface
end ddr_memory_manager;

architecture Behavioral of ddr_memory_manager is
    component mig_7series_0
    port(
      ddr3_dq       : inout std_logic_vector(15 downto 0);
      ddr3_dqs_p    : inout std_logic_vector(1 downto 0);
      ddr3_dqs_n    : inout std_logic_vector(1 downto 0);

      ddr3_addr     : out   std_logic_vector(13 downto 0);
      ddr3_ba       : out   std_logic_vector(2 downto 0);
      ddr3_ras_n    : out   std_logic;
      ddr3_cas_n    : out   std_logic;
      ddr3_we_n     : out   std_logic;
      ddr3_reset_n  : out   std_logic;
      ddr3_ck_p     : out   std_logic_vector(0 downto 0);
      ddr3_ck_n     : out   std_logic_vector(0 downto 0);
      ddr3_cke      : out   std_logic_vector(0 downto 0);
      ddr3_cs_n     : out   std_logic_vector(0 downto 0);
      ddr3_dm       : out   std_logic_vector(1 downto 0);
      ddr3_odt      : out   std_logic_vector(0 downto 0);
      app_addr                  : in    std_logic_vector(27 downto 0);
      app_cmd                   : in    std_logic_vector(2 downto 0);
      app_en                    : in    std_logic;
      app_wdf_data              : in    std_logic_vector(127 downto 0);
      app_wdf_end               : in    std_logic;
      app_wdf_mask              : in    std_logic_vector(15 downto 0);
      app_wdf_wren              : in    std_logic;
      app_rd_data               : out   std_logic_vector(127 downto 0);
      app_rd_data_end           : out   std_logic;
      app_rd_data_valid         : out   std_logic;
      app_rdy                   : out   std_logic;
      app_wdf_rdy               : out   std_logic;
      app_sr_req                : in    std_logic;
      app_ref_req               : in    std_logic;
      app_zq_req                : in    std_logic;
      app_sr_active             : out   std_logic;
      app_ref_ack               : out   std_logic;
      app_zq_ack                : out   std_logic;
      ui_clk                    : out   std_logic;
      ui_clk_sync_rst           : out   std_logic;
      init_calib_complete       : out   std_logic;
      -- System Clock Ports
      sys_clk_i                      : in    std_logic;
      -- Reference Clock Ports
      clk_ref_i                                : in    std_logic;
      device_temp                      : out std_logic_vector(11 downto 0);
      sys_rst             : in std_logic
      );
    end component mig_7series_0;

    signal init_calib_complete : std_ulogic;
    
    signal app_addr                    : std_ulogic_vector(27 downto 0);
    signal   app_cmd                   : std_ulogic_vector(2 downto 0);
    signal   app_memory_controller_ena : std_ulogic;
    signal   app_write_data            : std_ulogic_vector(127 downto 0);
    signal   app_write_enable          : std_ulogic;
    signal   app_write_mask            : std_ulogic_vector(15 downto 0);
    signal   app_rd_data               : std_ulogic_vector(127 downto 0);
    signal   app_rd_data_end           : std_ulogic;
    signal   app_rd_data_valid         : std_ulogic;
    signal   app_controller_ready      : std_ulogic;
    signal   app_write_ready           : std_ulogic;
    signal   app_sr_req                : std_ulogic;
    signal   app_ref_req               : std_ulogic;
    signal   app_zq_req                : std_ulogic;
    signal   app_sr_active             : std_ulogic;
    signal   app_ref_ack               : std_ulogic;
    signal   app_zq_ack                : std_ulogic;
    
    signal clk_85 : std_ulogic;
    signal reset_85 : std_ulogic;
begin

u_mig_7series_0_mig : mig_7series_0
    port map (
       -- Memory interface ports
       ddr3_addr                      => ddr3_bus.ddr3_addr,
       ddr3_ba                        => ddr3_bus.ddr3_ba,
       ddr3_cas_n                     => ddr3_bus.ddr3_cas_n,
       ddr3_ck_n(0)                   => ddr3_bus.ddr3_ck_n,
       ddr3_ck_p(0)                   => ddr3_bus.ddr3_ck_p,
       ddr3_cke(0)                    => ddr3_bus.ddr3_cke,
       ddr3_ras_n                     => ddr3_bus.ddr3_ras_n,
       ddr3_reset_n                   => ddr3_bus.ddr3_reset_n,
       ddr3_we_n                      => ddr3_bus.ddr3_we_n,
       ddr3_dq                        => ddr3_bus.ddr3_dq,
       ddr3_dqs_n                     => ddr3_bus.ddr3_dqs_n,
       ddr3_dqs_p                     => ddr3_bus.ddr3_dqs_p,
       init_calib_complete            => init_calib_complete,
       ddr3_cs_n(0)                      => ddr3_bus.ddr3_cs_n,
       ddr3_dm                        => ddr3_bus.ddr3_dm,
       ddr3_odt(0)                       => ddr3_bus.ddr3_odt,
       -- Application interface ports
       app_addr                       => app_addr,
       app_cmd                        => app_cmd,
       app_en                         => app_memory_controller_ena,
       
       app_wdf_data                   => app_write_data,
       app_wdf_end                    => app_write_enable,
       app_wdf_wren                   => app_write_enable,
       app_wdf_mask                   => app_write_mask,
       
       app_rd_data                    => app_rd_data,
       app_rd_data_end                => app_rd_data_end,
       app_rd_data_valid              => app_rd_data_valid,
       app_rdy                        => app_controller_ready,
       app_wdf_rdy                    => app_write_ready,
       app_sr_req                     => app_sr_req,
       app_ref_req                    => app_ref_req,
       app_zq_req                     => app_zq_req,
       app_sr_active                  => app_sr_active,
       app_ref_ack                    => app_ref_ack,
       app_zq_ack                     => app_zq_ack,
       
       ui_clk                         => clk_85,
       ui_clk_sync_rst                => reset_85,
       -- System Clock Ports
       sys_clk_i                       => clk_100,
       -- Reference Clock Ports
       clk_ref_i                      => clk_200,
	  device_temp                     => device_temperature,
      sys_rst                        => reset
    );

    app_sr_req <= '0';
    app_ref_req <= '0';
    app_zq_req <= '0';
    
end Behavioral;
