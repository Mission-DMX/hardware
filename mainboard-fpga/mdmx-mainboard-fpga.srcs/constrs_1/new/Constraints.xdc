set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR NO [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 1 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]

create_clock -period 10.000 -name clk_sys -waveform {0.000 5.000} [get_ports clk_sys]
set_property PACKAGE_PIN N14 [get_ports clk_sys]
set_property IOSTANDARD LVCMOS33 [get_ports clk_sys]
create_generated_clock -name clk_100 -source [get_pins clock_manager/clk_in1] -multiply_by 1 [get_pins clock_manager/clk_out_100]
create_generated_clock -name clk_200 -source [get_pins clock_manager/clk_in1] -multiply_by 2 [get_pins clock_manager/clk_out_200]

set_property PACKAGE_PIN P6 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

set_property PACKAGE_PIN K13 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

set_property PACKAGE_PIN K12 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

set_property PACKAGE_PIN L14 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

set_property PACKAGE_PIN L13 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]

set_property PACKAGE_PIN M16 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]

set_property PACKAGE_PIN M14 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]

set_property PACKAGE_PIN M12 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]

set_property PACKAGE_PIN N16 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]

# serial names are flipped in the schematic (named for the FTDI chip)
set_property PACKAGE_PIN P16 [get_ports {usb_tx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_tx}]

set_property PACKAGE_PIN P15 [get_ports {usb_rx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_rx}]

#Pins

set_property PACKAGE_PIN K5 [get_ports {dmx_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dmx_out[0]}]

set_property PACKAGE_PIN G1 [get_ports {test_1}] 
set_property IOSTANDARD LVCMOS33 [get_ports {test_1}]

set_property PACKAGE_PIN E6 [get_ports {test_2}]
set_property IOSTANDARD LVCMOS33 [get_ports {test_2}]

set_property PACKAGE_PIN C7 [get_ports {a[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[0]}]
set_property PACKAGE_PIN D6 [get_ports {a[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[1]}]
set_property PACKAGE_PIN F5 [get_ports {a[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[2]}]
set_property PACKAGE_PIN G5 [get_ports {a[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[3]}]
set_property PACKAGE_PIN D4 [get_ports {a[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[4]}]
set_property PACKAGE_PIN E3 [get_ports {a[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[5]}]
set_property PACKAGE_PIN C3 [get_ports {a[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[6]}]
set_property PACKAGE_PIN C1 [get_ports {a[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[7]}]

# DDR3 Interface
set_property -dict { PACKAGE_PIN G14    IOSTANDARD LVCMOS33 } [get_ports { DDR_CK_P }];
set_property -dict { PACKAGE_PIN F14    IOSTANDARD LVCMOS33 } [get_ports { DDR_CK_N }];
set_property -dict { PACKAGE_PIN D15    IOSTANDARD LVCMOS33 } [get_ports { DDR_CKE }];

set_property -dict { PACKAGE_PIN D16    IOSTANDARD LVCMOS33 } [get_ports { DDR_CS }];
set_property -dict { PACKAGE_PIN D11    IOSTANDARD LVCMOS33 } [get_ports { DDR_RAS }];
set_property -dict { PACKAGE_PIN D14    IOSTANDARD LVCMOS33 } [get_ports { DDR_CAS }];
set_property -dict { PACKAGE_PIN E11    IOSTANDARD LVCMOS33 } [get_ports { DDR_WE }];

set_property -dict { PACKAGE_PIN B15    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQS_P[0] }];
set_property -dict { PACKAGE_PIN A15    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQS_N[0] }];
set_property -dict { PACKAGE_PIN B9     IOSTANDARD LVCMOS33 } [get_ports { DDR_DQS_P[1] }];
set_property -dict { PACKAGE_PIN A10    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQS_N[1] }];

set_property -dict { PACKAGE_PIN A14    IOSTANDARD LVCMOS33 } [get_ports { DDR_DM[0] }];
set_property -dict { PACKAGE_PIN C9     IOSTANDARD LVCMOS33 } [get_ports { DDR_DM[1] }];

set_property -dict { PACKAGE_PIN G11    IOSTANDARD LVCMOS33 } [get_ports { DDR_ODT }];

set_property -dict { PACKAGE_PIN D13    IOSTANDARD LVCMOS33 } [get_ports { DDR_RST }];

set_property -dict { PACKAGE_PIN F12    IOSTANDARD LVCMOS33 } [get_ports { DDR_A[0] }];
set_property -dict { PACKAGE_PIN G16    IOSTANDARD LVCMOS33 } [get_ports { DDR_A[1] }];
set_property -dict { PACKAGE_PIN G15    IOSTANDARD LVCMOS33 } [get_ports { DDR_A[2] }];
set_property -dict { PACKAGE_PIN E16    IOSTANDARD LVCMOS33 } [get_ports { DDR_A[3] }];
set_property -dict { PACKAGE_PIN H11    IOSTANDARD LVCMOS33 } [get_ports { DDR_A[4] }];
set_property -dict { PACKAGE_PIN G12    IOSTANDARD LVCMOS33 } [get_ports { DDR_A[5] }];
set_property -dict { PACKAGE_PIN H16    IOSTANDARD LVCMOS33 } [get_ports { DDR_A[6] }];
set_property -dict { PACKAGE_PIN H12    IOSTANDARD LVCMOS33 } [get_ports { DDR_A[7] }];
set_property -dict { PACKAGE_PIN J16    IOSTANDARD LVCMOS33 } [get_ports { DDR_A[8] }];
set_property -dict { PACKAGE_PIN H13    IOSTANDARD LVCMOS33 } [get_ports { DDR_A[9] }];
set_property -dict { PACKAGE_PIN E12    IOSTANDARD LVCMOS33 } [get_ports { DDR_A[10] }];
set_property -dict { PACKAGE_PIN H14    IOSTANDARD LVCMOS33 } [get_ports { DDR_A[11] }];
set_property -dict { PACKAGE_PIN F13    IOSTANDARD LVCMOS33 } [get_ports { DDR_A[12] }];
set_property -dict { PACKAGE_PIN J15    IOSTANDARD LVCMOS33 } [get_ports { DDR_A[13] }];

set_property -dict { PACKAGE_PIN E13    IOSTANDARD LVCMOS33 } [get_ports { DDR_BA[0] }];
set_property -dict { PACKAGE_PIN F15    IOSTANDARD LVCMOS33 } [get_ports { DDR_BA[1] }];
set_property -dict { PACKAGE_PIN E15    IOSTANDARD LVCMOS33 } [get_ports { DDR_BA[2] }];

set_property -dict { PACKAGE_PIN A13    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[0] }];
set_property -dict { PACKAGE_PIN B16    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[1] }];
set_property -dict { PACKAGE_PIN B14    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[2] }];
set_property -dict { PACKAGE_PIN C11    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[3] }];
set_property -dict { PACKAGE_PIN C13    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[4] }];
set_property -dict { PACKAGE_PIN C16    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[5] }];
set_property -dict { PACKAGE_PIN C12    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[6] }];
set_property -dict { PACKAGE_PIN C14    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[7] }];
set_property -dict { PACKAGE_PIN D8     IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[8] }];
set_property -dict { PACKAGE_PIN B11    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[9] }];
set_property -dict { PACKAGE_PIN C8     IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[10] }];
set_property -dict { PACKAGE_PIN B10    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[11] }];
set_property -dict { PACKAGE_PIN A12    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[12] }];
set_property -dict { PACKAGE_PIN A8     IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[13] }];
set_property -dict { PACKAGE_PIN B12    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[14] }];
set_property -dict { PACKAGE_PIN A9     IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ[15] }];