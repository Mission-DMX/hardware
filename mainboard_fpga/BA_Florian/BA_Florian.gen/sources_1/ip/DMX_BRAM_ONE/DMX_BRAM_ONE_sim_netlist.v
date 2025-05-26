// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Tue Apr 22 12:32:21 2025
// Host        : itmlab-1 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/eisenbahn/Schreibtisch/AAA_Florian_BA/VIvado/Programme/BA/BA_Florian/BA_Florian.gen/sources_1/ip/DMX_BRAM_ONE/DMX_BRAM_ONE_sim_netlist.v
// Design      : DMX_BRAM_ONE
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DMX_BRAM_ONE,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module DMX_BRAM_ONE
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.68455 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "DMX_BRAM_ONE.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  DMX_BRAM_ONE_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21936)
`pragma protect data_block
PAEz7vgcqDIoBEFP2X6Ktz5+SinAM3YvGiT7JCRbphWomdf2CINyFAsQGaWLwpFM3vg4rpJN33ak
bLWqRhddecqi2f52m8ItMAjtvO76uQat/mRYf4Ll4xgKBI9bQJWcPkaqyLMAOYOg195d2XPlqM8a
uq45GIxzuexyhXbwj6yKoM2LhJOvYQZokwo0dmOjnU3P1RlFSaiRkZFNTC33+S0xjueeaIyyv939
l9mTdl8TBlL+0wX3oSOMv3IqHuQSVsWFP2qdbMdW8bRUpO19hxuDDmFF/0AG+9DPoukThqx4gcye
shoglEdKXB8XZv0hlJf0h2KjKx0ApMP+oVWMKg23u4dZ4ErtQyy1jClRJy4PYy1Cn/lCAeqBORRQ
GXQxhk8fYJrD5HWQ4KVE+M9eCjTzDTUxjdRr8SGEaXcfrB+QoRv7g5Bd4MXHj2x+ceNzE6QHezsZ
c+F1C5YVkH2I6JvO3Qn70OxZlwtDrCS9RN5fs3+1bGe93FYwSVuN9izg4FXw2/d7QkWgAzJLHNDE
u5vzory9pkWY8sixwjtZCGr4zdHdqNyZp6LsWaN6nbDf0qBN2834udt1UwjAWl/yHYP7RNOPFj0i
wzASYeR3yIAeH9UJ5ggL1P4Ds5jBBcrHlb0Z/Sz9m3EqXjo+TpfNSbxHvomTHgt+tUUK7jr4pla9
oqSyQIywE/gOcwHgwaRoiITa8JbI3h/Ta7bTK2vHaiWgp/UD5zgIDG6NLm3QECsZkQwwoy7C52jL
z/xLSaRcNa/ZolrOeZH9ix7ZfcSVhxx0yTOmEI8Sx4mKobqCav+3dsrnppJf7wWteOZS1CNbCOrp
lo5G/Ek/a0To4fD6HvEdnYi7JQBs3KMZBfdDjlcQkvJrsbsOR5XYjMD+XbwI3XaypUdM46mvLqPL
0YWgS3j4ZJmq8OnSduQztN00XYHn8C0o3MUGQshn9Cuva9wUqlMOoqa6vzjAEJs+fLBv+UvgOuQ1
0cNE1q2LLagxG5t7cLO19Kcdl2fKAFJBEXS5XlY4t6pAK/+ogbuuTXxrFmGrhgJ5egkKzj1IwGvB
dj4dcHhqOklP+4gmrFNdQ69hKc9qobsTJrB5n0heumCLPz7q0iCBld+bfCBHM4Q8fa14kl81+NMg
QWU8odid3C62mrfwdgfYDamx3einU4abX4PJd5YqOzyEyFe/304njGqG/aCjl+Hr96h3kUtOf1Vs
kWQWIsb+yjdqdKinckrQs7O0EzCuUnhagJG7cGX9tf/GVowO+KioOyLoAM3Qu3xX2eIR/iY7YVrT
0p6ZN8Wj8OkUDw1Ys7GJv41BA2bXXXt4kurYMwPoCdU7Y3vX70aCN2+HwzB1Q/aL1fADA97aUURJ
QMFaGEmaXvPuE/VahCurPz3tjOYYT8+Jneowk5xpTg7NpGaLMROBjSmanx3rX8VZk32dmkha2Wud
8V4rgikmHFspVBjLOmNktciU/Ccpipe2j+0dM1ydyT1D9YkR1MfRHG4pqAzVh6OLxGkhmSVvuyUq
AqpjD4Tm4Mja31lNT2gBOlxGRz+UtSfvoSVfzebQxZjlkd8n5J3PsFQ9Gl4oaTnk60vyYYifF3f6
N1Q1FpNhmpbKjK8IqVinaB6OdLPS72zjOdixvYksKQ0W29clE5sjuopZxUxztCWNoFQRNZWxVUy2
H/ib3mPG0NIayoQx1M73pHm99EWjyAAQXoQHnSQ+VGCkxV+VSLJt7jC2JMKfPdGPpzp2w6VZIS5g
bt7HBJqEnRgh8OgTv8SdurnY7q3q8Y12Gw6m8fcPRK1tDFEK+IYOpA52MWKxAllmFnuGt1ctHYBG
dk5QEzyH3xaQKS15+3kVebO45CuP8OZ1be6A7st5wRIJ9OCKJ3Lc0wfdNs098Nzu13DFmL/8A8q2
sR5/5k8W2QAuXiVazM4f4/jwoFnCRMpeyvN7sjQDPS75OB+KV7EErjlIKzAVyaAtqberZNuunjT8
xPD5Q368NjEExzRdjlG5QCQS8zd33k6SwK/CgUSWJufVBSRgsa8jEYLDuvXa2VdhKZkigSkBLoUm
28WuLLsAPivur/xHfY9VzgCDx+783K3BwpbXxJD+JYXY6dDLqbr+d+YqaNNUvpydQgespfRmYaSB
wRJMiLskENFCLp0sTaETj2HSJf3OOKAVIhaZnv+MeH+TpVsiMQBo7FEVOGoPM56xKqSeN04pSo63
2QSLX5T3i0BlpeQq6CIOiXohIZZkp5wXpsq/XgFR4LxsdRrxj2Uencu+OpnGpqf0vww3Da5gknTP
qbemv0/5g5fs1Ans2wthlod6X26EYXxiQMs4Zrs0GAWrAdNQpei0Fr4NnqeL4kB11VLg5FumuFj4
sjMSeMGSCm3D7N1m7dAyj3Oow/5PrV8BOy9CFxTb699xhHM7CDB4GByd2CZ1wRq45LLzg3BVS/cV
wax8b2S6uGQtezMKA2PeBC6cAIErSYlQLlRAb3dIZjar81KFvo+2iu6BlcvunSWwPA+w+GeCB1WT
OfKqPuar23Bw+S4z0e827x+HCa4iZUGcwvUQF0/1CTvxsrqkFi0QkPDXTEs+ZphPuWxm24U1rbt/
dW9wVESpIgkxnLkt5amCXtecQa2ToSTl4DE+HerlUxKPJRjIQWeQe/qwuak/6Ony44Mpg6u1FbcC
p0LuoXBolp4xttmjnP7YVnGCiYvTpLVU9DsBTeYrY8KKqK03Y0MXChmsbnU18BbKfJIFvWIl+73l
1sLWZnjuQlk9c0vnPVK5Be2+YmN0BcR/JGC8+mfvHpUc4USHanN/Av+k2WWOZqsddWgRCj83qvFa
WT2S9fGiJdj42dGV5xamIve2OirwVU8912tImjlMc/kG+cTjcGUulmLzzBi0ikES838Lp+qP5i2E
/BjlVXQmeSTFlLMLS+B7z+vWuZMmqNmEY1GKvBmoxxJHs2vyWtfMWYdicm0Bgwnupr0i7K5PBV7l
I6/ysE3kVjJ2mnSMIOShM4DnbqYtkF8O5+T23mL8SdRYtG0O1sBkrzb+beumzwBq9CF3r84eTP5l
kH3lbkexD472Q2bOrQpKlbvFy8jQveaJEzSzg3cv8Q+dyHM+bl8Cm93mAJ8GACmim7jfTxSKJ3Bf
DemlXjhPdoyrbxPsMAu5rcADVCB9sF5cTBc4DgbmmeeaWjkaCwE4ROsHYsEaKwh1RmXd0DSV5nqW
aLayJBj5oJ5Y4GHlHiYJLcPuuMtBkMNXL1iYwATXixP2yceL66gIMjCLK9eJVXLgZPqBUGKlAffk
PhsE6dtudAdnEW/cRHRe3WgscJEt7Gy01JHsBfEiCScpLr/NOmRFDuR0F+TyI6xtpy4YKwEiz+5l
lQwb1zfDOH6oFnfG6EW/5Wf2ft7kl9jQa3S+tgygZvO4Yl9UQ4dInWmqn6bVTjCKlhbNYFPNJfLt
iNrxF3F9Zcwi0rEhagNrqN0EOb8IaO3YNda6Uohm7fWBH950YM9+5N4bR87nOBAx6xAPCRssW9Is
bUyhhRddrYS8f382Rs56WfKiiGoxXfyg8ZaJwTFucLBDcxaK20mANNx3Vhn/Bs0ddv/aybQH1G9W
Q/t+7pj3CFcS8NceYcGz/laYFePdAK46dMY5Ok+PxGg40D2qfsaUhcspqF/euQRVKNjpifTuQrzh
LcCNS0KcVKaXP5DH4tmZpY41gl/3zhpHl2EG7dOdB/g7m7GF1tfzSBy2nlQq3QTKxZhbfLfeMtdK
zscucNmuWRDsW3d1dSgW/qEngyiT54MgpGcluQUamRbMs+k1orXdqaXDtixttbB6ph4tyl0mEWfd
9AJIBPkNJLxQAcbIVsqn8Qvs1/Rl9JG0iaC2lB1bj+LOqzKUYEoewEZrr0iO4KGNcd+fFCUJHoHX
p3pClgIlQs0nkZEXbAGxDMPuWDhVDRX66bJWSQT087PNPe2cgQTs12CEGdrcWxKk4IBwVI8iDbp4
OEdMbub1Rs2VoLgQNZApPe1PTKzeCRI6HPGf6eX/f/ZMmwPRH+MHMhF0ydwyckfkLp0H3ZxDnO96
SW8nntsirYprWAb/A5XjrchTpdnuVqv9yZSyp7ozmIW5gUQMqtzTulBrSCD5EqDzR8LgFpFfYA9/
q7yPMn6MeSIZZGh8qxrtLijeuGNLTY78FCeSDWakAKg2nOmx4DLhH8caATkZ20/Mu3vnYGADGc5N
tYcqQdZhwaSKiqlzjqZ1z0YTdwKTyx0bIDPnynfN9/PhElpBIpw4CLeN7eQ80e2C0nzsHTBM/8vX
l2vg5jDifKcqKG6b5wkjZ5r/q+ghzJa2mmPNeK+tH32sp0V3TI+Mk5bn85/KgopaVePNj92Lkx9K
5wKgi6RVFBHugdCLCmISjl4AFuZhzmTM3uiO/dlKZxItffBPHCbq4NAPDtlZ3h1ODZBSZTrBNAnJ
LZ1hYqko99q9oPUMqq4ETTnufQ3/tcmJe87IxP7VamPtnvLvAwMFVxEFCxfy33YgXAsfmjj8iOK8
SCPqtmooEUshLxNKXK/OMTtZUGdWzEZE4XhhtrKGp2uOK9i5Tgc3Q/dB7ma18HPGS+ewLWtABEEx
9Ual/csh8j80/Plkuun5duLGrTO0/x0EX47LsoG69jHi5WZS4aEtjYvmr053SZW10v6uZUe9d8rz
Kt70b030SvWMpheCLHLnlFjIaxuToe/LUfW0MTIqEYgejz5S06w3VMIBhsXKe4nOLRzZYq5xl6Cc
FXDpuK+xx45ogpeiqbeurEfRRF1+KnK/MAVbHWepByXhMVxr5+6+ghE7V5HqBJCmtjUo0bhZYSFK
/CEFAtYRAmBKdcs6LJJ/uHfBuv54yKsiOARMXS0xHXVyPMezDbGnsSMTqQvezx890657MLVnckRZ
L5fmYhXw6Ns+o+jDidXxA9HRTjjujSOS/tWA2jbBv+Y6bygyMxUo/SjDxSUMaB/b6ZJHxaqGCqbs
xviUhudlqGEYcVtQKAOiNtvQBPxRPo6c7NPv416YAqYHcKC9i5INX+1AzQOc12agDrlCZ3mg6sLn
tdtOGgOBDlFaZ2IcigcL0FpSnfEWwwwWiRHablavEovNjOEQHwJqUzgVNFHeAStKnR4l/zaFJWBD
S8J4N5nHgVNdQjOcXHd2gZAnRJT0uAUtgZGmGSdoLct3e+8s1YxR1Prv5rgENl4oZuZcnsvvaF5Q
vFXvV960TJNaqio6vUW00IOZkY5KyDSw3u7K71AupCz6NObWR0O/UaOMUhUagryPPUba2P2iFhTG
V8pH+c7JS8i8nMLHJxZ9sxrR7e1HxLmm5eEtCaqUHOGEefwFeHLtUBXMUYvRMy56QyLXXtSD56F6
8YODBMogM16jNOOIqkrp/shiVVdhGouk4zvCNKbo8ITzegAGQlBd40HPzhs255qvIiqU37IzKnLS
SL0aiHgMsmA7gKR4o10o9wLyBvqOfO3n8/qpVrflkmtVtf4oycoJlszvy5IeyQaVPNhfYSOFzQTg
94euX/G7fqhf+XAnJpG7Wyt/GIK3ZkX3ts2E+yT9sUt/M76qpaita44RUlLRMooUuef7LA4MAlM1
JIgO34466GzO8p7EADRtvxEHsd0//CWYRNXcY8xeI8rEg0TV5UnK12f1CZlJCJzslhZzHhiN3RUW
HndUhWWwg+Vfo4aY9J2Yea5pcVq8dnFB+qncW+ZCCAKHpbCzpIaxpR2nj1PBdc9I1fKcLvmK8zOE
Cty1JPTUAzOfaWF75cpVY8FNTY0qaKVW1IXqhvmafUvAEZbhEc1/MvV5ZomoZ1tLf4TblroxEBv/
84SVJpy+7MZ8k1iC8XcmYjeHu0QL9N0R+rVU1cLap0yPNf+BlntRLrYNf1uTrF6ARgA/FP++EYGb
pxEUK6Yb4oio/mkU8GAqqxA9b7w6gwMA9+OzlZiryV3yvt+H8e54J77qgF/OyMlKg3/EXJYNSY5r
FyECLV68uRzpgoJzwa9GsyTbzDI3VOSW1X09VUDmW9GmZzDN8j5XY2DY6jNHy/WG2n+gLrC+28X3
xux5lFZ4rc5c2MLy/dopSr6rH8Z5AgxEVuhqzFCCUMcCHoJY1fUFHxIZCZEhShr/bsyhAKseBkuA
qWlyuzGzqkd+cwNq5o/+4Pz1848wtR2ot2sKrtIaJidOSYuF3GrGLANMvH7dXqJmEt1v+G0GLEpo
Jdtq6uIalxQR6FJw3QsEZqMaLJ7U3m07DuRxkb3LvtXbOpC5nj5swdHnGe3CxNHOFUEOVDZ/f+72
bDKufC7z65KNCF7Fl2aJNfPVjkanCiIfEE+81XJpL23QQ31vMRUf00F9ncZo8aIjNgFCc5srfJ/T
MUBAdlD5Hn3HsKm5s0KWsSanep/EBaXMxYcu+p2xiN9wCyKTGnJYeXg2xq98YFjYHwxq5W+Op92V
hOEs0IxhdTI2Zv7jiBQtJV0h0HkNwpDo4MPEla2gEonCWnlcCKY1ZKUWTz0gXzV9aa/fnfRn4ms7
mOGb/XAUV5iVd0SyqRn51sdgbboALyglSwOAXh5UCzYbdpKouOOxfLkjnA8UarXGoW1wp2ceNguF
059C8oWmYd7s9cMEWxZCjKLDrny8c/Pb7JHM7LK1s6x7l+4CyBe1LtYbODGGKQDBXgYLS0b0t+zl
MB+byiq5TJ1kfYI8xf+8APHVXueledc5r8A2nEiEpFUp6H49USD8FXmDIQO3nn+GgLU6jEw3lfEa
aEi6qm8UJtLBJhj2piCrJAOa+ecH7rurWnGfax+7aCfzIhpMZ4MC9iixqAqHjQOCohmFof3SIhaE
MF0ld+27pioIVNFLh3K9MKddNsGZNiXk86rXXLjl4LMSrAQv1mg4d0nayGpEDXWabbUXXHJa5Rv+
ieyuEW7IKzngkWXMRZ9zxTlJyo13QdNX+vH39BMrpvoGIJ3RoOWHEJYxKfxuHL39MPFD/a1AYYqQ
muYWyu42R7AhV6GyCy+dWaLKOMf5Ysw9UNVJNayvXxM4XGIrUJw9XrfGdDOyELHtfj6B2EZ1dhyc
55PnKbGUkwvn7/J6IXMsmSXC3V+DctYbwQVpxUwZPpl7DZ7Oy2AgXs1F69+MFpgTidbOw4gFaeaX
IFWhtHHFh1MU8HWHG8FmYOn24rtsdasrEXLtVvptsBQMUCHb8cyCrbAPi50o3+pZhrY2b0611xV4
OuhXVvXOMs3jFuI9PYY3kceUwX6RCoN5uqoYTc2Qmu9jZ6/mO6I6w0OH+niPT9eeqQTIgLfFqZTJ
GbRZeOoLvdxgBXr+HRbiTt/Y4lJ8YJvn5RaOlD0dPyya339iThFeZGUWt/1eUzrHqt33meGH0tWx
6ujxCRCDgJ3DozOadO0R9axsGve7cYRcXZuigjOQkWBy/QxIEVZrHWgvP/yxrY9Q7IcgyjVe3C3f
HLYhcgfMbaqCNjPV0rdb4E+e0+BebC3nx9Mm4b0yYG8HQ1XVfMy9KX7+SErvNLY3pc+nu/DNa09r
kyoGfYJwDBW/bSXKdi5pZOwFVs0eoWXGa0/DbxWl0GAEL+pBzLtsa4QxehjiSy1vyCPLuQ/P04VG
XJMzhMWdwWcObEok5RsFktCwiiXWU4qcx5SdTb4AKUv7AP40mKPv9kD5Mh5xG45JrlOR3wupAaih
dWUuWWHxaMgiL8b8HoZoGeGshSbEGdRDmD5qjP0M0+8fzyTrb2GM0d0QwV7IMNZbyK+cvxdvVwTV
yHG2m5Lm/3oCxNS0qlviN9bNKSEo3VguLA6y4MJGKYHfHolloRkYlEB2vXOU25tNrH36fYzT5hld
1ZG4p+rL7KsE8kys5RNhxA3Lh3lwZ9TLXKvJZvuA68wl1cuZN6hXb1qsDmWWr73UiC/8LO3C13wP
ZYpK4ImfpyQLjuq3+cl23CDgOpDLBSaMd7WAgffFUqRlJQf9QUeDkB3gaLqsb4WLD0jOJN61zPsB
Ggfwz208IylwrRF7iDexXC8d4Q5fgFkDkFAC7FUECIK3qBUpmLP67YpCWWXJEjGrQm58Hw9eP73s
fT7TZ0e2gyP4c0PBJRmkiH+Wu7sfQOXqeB3n8GBtsubmiSMeEBRiFXUJV1XQUibxd2PbNDNQUTWL
GQ37u1zZ6x2ieDyqgBRZBJtMHYEM0mZpwqJTtdgHKjQhUXMGnQrusYC7nt+lfKKMCUw38fh4qnfe
ySNOLVCxhflZ8s4ORw2uw2nOcuV6HpC5DOAK5eeup/grfrrnanndtAqeOrUh+B89gVMufsLDtAIG
CQUYhb0LenSecl9aTYhqtC71ajZH1sT51rLWxhZKUXkwGgt/sYAun+QgjECqX+aWyckM9qI4dXt8
H7eqMGEEEgpnFXPyaMMWd4x6vXHth7p/jSG7MYGBEbFWM8SCh/4NAFhg7eMnQqZp12ccMCdojyfV
UUe3Pl4JMvIen850FvjD0XOTZKylfCHbWLgPBpkwuo65kJi28zfnKdsdvXnPIfAxCWS28vm+MKBP
Su2JavPElWvJijQos7/BxlgE2tSBGgC5LNrXrJLziJRZDCplGoTrIJn9SG8gR72hvQDqGTWYoxvP
a2T2hC2jg8B8Mouvu5WadIJVUxYU+TLSRVdVcJB6NuuK30E0uK+pWEuD4x3HaZpgYXb9UAGcNe+d
UVCa7E32kKMOhZqupI9FImIwLlUXd9J+qZGqRwpSKmn/SkauQMxwQf13kePMjTTW847+EHuut1US
DYuC76CXEzqWHEcwPtmt/xiU7zJ4qPr4tt8dfB4MVeU+hk855M6G/aHFDNDB9KiwRO92UtUoFIg9
43bQ/tlPzHH0PtsO//r0CuBF3sRkz2wZ7OCslPAg6L5doHyxuNj7DDV/9XRlbSPDkxLxM6sKudxf
0ohfHAXA2GzP45n2Z3nSJF4JxPhOk1IUUyrETxx2jUWDWprO5EukhPveKyB0xHLvPDRZiKALeUus
INOn5DiKCb9XWbJitQJP/Tav9dbN06zhZNg4aCPZ4MjXQnYb6ZzrVKP4SIkoa9/699dJavggXHKi
uX7fjwLXUSZU8DTAxUTS410uHugYDjcNjQVd/kSx+wwszxiC3G+OJo8UrTCGqUhYEz20QqWN65T+
mMI2ZoVNDCH1hFyW86zWpxMB04tbBJLfEGWewmm2XIGxJ8mvYXoNqdvs8lbUBxNSt3NLaVJR1AAR
gSkUCAL54+MA7xtxXB0si9Sa2Vpr/THCVWV+t9OUJ7g5wnAi4VXQbboD7oZijCnAZjVBvdjOPlJM
1Ur1YYBp6WhnJ/7F6JyV3mjo1Tt9C11/jANusc/tAhQTR6n68R3vatmf+grl02nBZcghVYa7PS7b
uM4FtBNk9ydr08U9EX0O75rAt47Fn0ZUDoWlRIte6qLyNaBqKtR7h1I1dbM1ujFqLzejRlRnn+XO
ZJL/Iwpug5gQGdlJbzyrrG94aKlHLDKkQep6sIvVSwuMQX1t48GKWxlu4fLOOk2p5+um/y6lvHUo
dtNU2p7jO3wU0clK89T6eJ0vAZ7RKh8o7ttAQVAofpoPiSlz+vhXM2Pqwbx8/GEcGXzkb02WVCEG
ebFknlDcuWU1mMegY9ApkoEYv4Gec5VTIuFHLvXoZU2xm9rcamKP4RwEQ4COJK2eAQdrBqiLfCf9
3ag67vrv355gSB/M7Y+xx1dt13DKy71Q61fyvh1KM8bnA9L1CZVuy8t8x+P1q07rq55jsko4j59c
ToSYtj9VM+8kMZgSwyUQLk7+LWc4XdamDGv3Il19XXbYDDIkrLT93ZMT/qh3tJC0UNzvIzLSGRVC
oCfbUGDdfirjvt4kf8eZzEt69usLHXvY80H+hCeQS5XkJOBwpT6kfgaJRxbNgOQbQPtygv/bFRx3
KOXK0egGP60c27p66kzTX6Ew1V9oB/LfpiFdyP5qZ/5jGiymMRdZ25jSY9XcHGBwttBzS+imaAJV
XCmqp6uNL0FNwoA/EopzicQoMis2ZdsHTKxMnN5QyRWznsz1z9rViSMG98LPpJRSYzU/cURTO10P
DiSXvsGtNoWxVW2NQIpsMtUeFhd/R80FC0Uxxwp6NolUpTb+dLa2PLOd2ooLVKctDiQh7WsTq6Ky
3g33718PFWq/hr5UF2WNTkkF+VLCcruCM/IZ/0YO9PEd1m4IiBGe5N71lKr0JzMhuGErbq9IGZ6W
QYaso2GUbC89JdQpRQiZIRhLqwhNcxSG3iQV8u9YZpNeEgOuR0C3kisIXkXg/MXafWzb7fC7pY8o
mbpNwf6K3qHT1+XBTmRK/Bwa6BYMB1yaXBVxGkJDiCaS9BcBKFjC7vkWK8T2z1WCF8QGri95j8ek
/0dftKUtGbo+oL9AR5rjvfp6b4VSitdzzgt6NXBCljWKCFWgOpL/n257KbZoQVBO53fu7usgHy2I
RXHX0FwyJVCjqntqdYH+gOIFesjXS53kkKrbycMlqtUCWRgrTvQJcV0yb2PXYzGTUk1KRuuzbBKq
rDmqbEJBKHHUCKbWEsYY/Jvk9E9vwKOjjehE7hs0RhlOEQ/5H+3/pFettPSZT5ciTi46sor6yG8s
y04RzhXS1B/Dpbr+EGBWBy5WJZFEnE5gjk0NqjouYFq8nuYP72aIyqjJ/Ht+oUd54P1s2EYi1nFA
+xxRdbCS1WxXCMEwtHoyo/tBEFzKDAZCgfLHSHikuaMKJtQtx8+bacIeNa6Vc6HAVLOjCdKx2NNa
jHaZApovay+YiW23Adi4InXPRpDCxX9yEgDX0tlwONP+agPkGpyiriO28cYo4FbIhiHqL04wl8Pl
SFgHZnxuaCmuet1neVYbQ1dFqmi//QmnDLkR7HPFbGRtt0n9zQ7TYLmBVXq/NmbOFd5262Ol1UIi
2kBzZHXUYDGoLA43mDGbcLeE3L3BAF/ql7PnTOduQEMyfncDTRRYHNI94VCk7nKXrlKmzocggefk
TWqX5rGMOR0cM4mQjc9vLCKTJw9ryk0h7bZ9B7vlMHy+64arYjpx+B8vAqCwnDSX/TkKyIaznZEs
xPhooOyDkeBftoUxIqSGjfXfCuiVBjMSyNMokan5DcGyL6Lo/Bxcf+lQFMWdHjxktq52oGexN+BB
i+S5Tpsn4OrGTVWd+y7mP0tPKczry7fYn4ru7hMCSl6wbRYmwtE5GI7B3O7FDqArIpWk80CmqOGm
46vayuTODZxXDdU0RTYml/K2PLgZm0GIUd7mNh7fgZ/rXNio1AhCY0hNIHDp5uWLHXmsABsanA3D
nNb+FiVV8JZVY7tAPMSmYpHgdbr1/nV0EHrZto992M2cus/VbFLDkGY+dvA7ONvj0TfBDxlFF8XJ
dkHyBgaJvjQJbPfgnFKc3sSxJ4aYszIqUl/AuX/M7GuN6/ZTiH1lmVPmfuoDPyqe72ug1RNrhKg4
WTOSsypi3NJvXL706uTX1NGEUnZ0F+swgRsvLaWtW/DT7CJYLNreLpi90QPbp4yHH3f/yjoRa63N
OomgvCiBWSEBwOYJ/qaFRjucPaSULIwpxd0KghKwcI5f+oW0+ISyGM1QEx//d5BZuDWnVsED+/Gr
aY/RWMsOzqXx9y7Sb3yfxMB+0xfwSCfHHgmoIealIFH4HvhhgdXKuRLwwUtVlRWAm2KsJSJ0/syg
uSBBIzT4HNsJ0gwVEBW9eoGR/pwssvHsIPeyVf25AguH3PySBGleCx4dJ09HLao6uS29egaZuGTo
eLlOicOM0Xt8iwzOnOlCmWBr9H2LMgsOqnv5aYAlFjmXQSEXriKVJ/FQf6e2IFchYgq/ZJMU15lY
79hy7Zv3/Y/uOondw5TROl6iHxgat2cmuolKFEN8qNFvWJ/fxia9Ln9y00MVlmcjsoypdMNKHWXb
+TcYN0nL1r2jQLCMW6IOQm4676lKlG2EgcTNiip4WPfN0GDM3Rg37E4hTaeV5ZvAm+EquymEIhUq
AXiqjvlaFQNO4iXgzPK294VkpVcPTpiPjCB1IqS1IPCkZI6IYD1qJG+SHtsCQcU17Kx4n4M6Jc/K
Yjn4qVvv9PYIjD0iu3Gmap3CXkGegg/IhjTrMUa7J1TeTj20RqUIC06s3SgxabcgqkXJFnVZOkB9
Tx1Po2pX6+tzpaKN8DdsguvijTiSE46Q56fJNesyjvoY7u4/MrGogGtZlTg+QHM4nkAK1gYQ3I/n
IPXbk/qbRigckisAVWPe0i8aTgqylxCMzVLMpHyyJJldZjYvCIue4C9N736KtpWzS//N/BZXkLU3
BO7Kiguz/Zt9r4tbo+nhUvHr6ZA51rl9MdD4OrLaUjgSo2tpWcEnVpDgee2yHVwO3QDEJICQKWLp
uhtkozB/AzrDQK2vhGtrcAzj9UUvm4H3A7h5PpoZNc37LLY6QB7zuv9NUQLbcLnzGJKJLThNpMKO
S6VtcNAc704LiSV47GscJaYpEX7zvLnGnlzyvmFMkkgALwa9hYaQSBRa7C9V32w1jmzDEnBX9DP/
sdJ5aE6RoRIPc5fL7Ykq0FQa9o3NPlAi/6Ddm9boOzop1ElF0zGH8gFagm0NJ2W/yud6kShbXh6p
nDyHcZEoYeytQWdADATEnt3jTurkQoIrEKYuJ+Uz0G+mR1ww1Nlvh2l7rYtyXlp1M/37VgY2hFbd
6+yYW0WN1htLbWs/tBTd13XrI0PMAPOJbSbIWqOLlDNlp3zMMLHnC1dR3QmIaUt/U+hcnw+P7uo5
ACDS+MW8s4bQKQ8pyo/VGCUGtAOQoFkHpue+hgGuPZrvpc2CoC7LASpUR4u+Fv5uRWRfXLYu6l99
NJdivhLUym/1tBWms9irUdozM6HV9xy94uuXOxBAvE21c9WbdDsco8ydH49bd3z50SCmp/a5Eg2z
FmsjJkpnaymON5hzpOCp295E73kXb59wFIk48Fg9E3rtAvHOGxXuzEP+hUPRgNdcoJ7uGUKDuKWx
ESWfkc3FYIEC9fgeycNJa1ZY1OpHCQXHr3vZRK00Bi+jlk7Dym/OEIGCG3hb3evYAQa42QlbaPyP
qw5QoQdlZNA1nKE2EFNycrHxKsOGAv0+Ps/wNiNWbIgN/JiOOl4IZkgxXnkw40UR1LWbBlwXVznh
t6cDSs1SurVQtTNW7jVi2q6OZaM4C0yZ/FY28yleJBbExecPjYQzK+vydc3GL55fTIRbVZNqg3K0
x3pw8/MX1QrbVXTFtfsAS1NQ55JT5n08R3m+ZuH3WruzlsKDnUgxfixIK8T5N9u7XfpeiJAR4JDf
qXEIYbDOgzP9NZZJzuqKSmZPlm3nZNEAJMzIE4BEWWo6bAh0x0OD4xK/QidfEq+osWMxvCDRf6X9
CPOijd+i0QG1mkcNIlAtUwNVn/UFiP9F014lZZP1nbFQqcRPocKMoJAIo87ggmcFFQn7gWJMmml0
FLoZ632WGiTk/h1F3JNwtlc8O53tggyaWsjhs2Aot91c9oYi8vcW3UxIBHzxwdjzEFQEBEv4YqUk
D+SvR3sEQ95zTedXcfaOQtMJQ3YjOsjrVvGwpeRV+v/CZYMRjSwSLR9MqmIgRE0EaQPxXFph4TZD
gWf2KgfHsvwSiR7IB7JkKEA4Xy6Gek6jNd/OeeZWMLQVh+jbyJJAtKPNWfmtn3er3QxpqdoXmKTm
Nbd6rL55cXx7Wfny8Qf86jGDiYJXErtdCBDx3SLSCnXXnI4k3d5FgpE17fig+9pJh/E+3dJ3nGXp
W1v2Pc2oCushZYKfTedeMD249l2rMcjGgNtImdn4Cian/kSzI2CdTr6yB0epdCKnjJgtZ/3RMsit
TOKFObyj5fPWzWHTPqsdf1RSvdnhGnGivyU/cKLAaxDLHq+1WPCi8nKoc7niHAwxK3/vAKIUTN7X
Q15oejSI9sZEX+LFTui/lpqnkmA1gP3YtIfrv20nnSVOlNrY3qzssBCeBPTadzTVKPPiz9vXXfBe
HGzFWncPGosJy1cfmzug/xNWwQWk0IQInORmrv9G8poKonGUL5p8jIBHu+2OU8NRhK45Ki1EoOnC
MR6nf9iRG0OopwxQBFm+d7HH/pVeheztkHnyCFJBRJizLqiJodh21FsPq1WsaqoPRWKJqu1qJRbf
qL8LPD1ufI3vJaNLnVxze46kZgjQZbmRaW1UoIdobw9PFgJlRHDckE+4pVIh9UE4YHb4N4h7Z+EI
m5ZHscTA6tyVApHNnXVozKxA22yimJ/UC46ZcOMdqKmOpfdlAKV+W0ABwHVwBfOo8v/IHvHeWBgX
B50ZXuCNxzcY1ddTb2ra5zCHnSGT0VXhf9DzTR0mPHANpiCge8huQvYkhBSR5pYZusPUeWRj746f
/YTvIf4ESvyU/SvGWS8R2W4WVVWLaMkUeAjhY4BJQuksNeDL4Xn0Orlz+cJE6AKXwDZ3DsGJei2Z
22LhsGnqYYmOurbWtuTyUy/qzMGGmSfOOBVnTDqxq1mOph9R6rD6OSkLDR15ylLEgUrgkPGHiliM
NMLaQyxL5cpN60qWXu3xFLHFYwDMcch2OS1sG7R4XoPi4mZl00g+tW3q54W0C6Y/WFVoZi12l7t6
GNUBRC1Vs7BqkXlkwMefreLL2mOY9c0YJWLXcHgEpO1+B5AXLuSNNyitValov5Kont/unFmF6+Z2
Wxl1WYV5NZp5MJu80S3kufkbyuYz3Ki5V4u3LlDr0t+ijC0xQlhj7j6s5h7ENrK+SZrKnCgwOiGH
1uBLMZSP//7VKWf57xte1/P+8YKPpRMsoJIB0Fq7qJ/mvmn//8Ew/3G0C2GAe6kvEfRCjAQh4cNX
RYhT5yk1AqJ1a1Q/J9nZjn6Tg7mFx9A44MuBKJioP0zunU7A++dNfbghnLBFcPTU1jzhktNWniA4
L13cq5vc1m7AhkgnYMzenMhP3KYK65RgiAsaDQ4tyyUySAcZfNlGepQh9t58FB+7ZFDewYFAxKjW
kemuZbpHwEwI2V6QlGv2GhiUtkzOX7tgSNdgn02LT/xGSlJXBV/W7icwA5wYyu4ZYiMGwTBSQIHC
k/zG1YR6T2wyqNNsUviKZ6vOXvZglfOBQpcZ1uGDvoidzsK2PC4dWZtCy64JZRm6mg90BD3JMZPd
X8VPfCDEIoxJAMMC3yJyAu4NZ9njECqBdYKooUYvTfg3FGfcNERYnesC+5kfnEeQJHvCnj/zBhRK
6J3s7sxMGR+y8JU+/+gRM5l60+IXU8yDjm6J7zLRtZ6QuboFwRJY6GW5OtK7RGhLMMWzmg6UlWkT
7gcRLQ5ZTJmW5uRrxQ/o4cZrH63xjF7GLF5cOUmvRatQ9BATRO/9rKtnWD9FMiUB4yuGGJi7IrgU
DaZUxRMuIUiqs+f/16EFN1Zt4gA9Q9tNVxgus8OlkKtC7Y8MA/X7dvbbRdcmWqRcl8xFFVYahBcf
DdnbO6vFpaewiexfYmjgznvDVgFJBST6XOP6h3t2lkCAd+IRSe+Nv6C3VyA8ICMSGuV8dTxPt1gi
Bp/2b2Wtqt2Lhe9VAiWvsxvtTJcQZn4YYXCPkzJu0zfRZkPOpl1Z/K459ITgjdSNaQqhHo6Oa1+L
/9dT4HrrxD1XwsbPWRRyUyKdBlR3Mgj6l0Ak1G0GyluCz5ryVD8c7o36Vtfig+5k4UUIabKEUbgX
rfmM/0PbQ2EqgIpyxd6AiXmVhFJjOPiNuRA6C09uOirJeiQOu9FJJ06ARfeUU4eLF5PXgOO83AJd
hNPGibnl1zsCa2rysQrsC9EwiSPgQi9ijbFeuRT2MR7dfWE50N8nWxICaeXjaQPenEkmfMOOaZ6n
npIanJfcLo6QX0MMbU/UaA0Ylw2X1ikoDs40T/LREyj6Xyjfn3OdNsQKMsZft3YMqhQqQaE3xxnO
1EidgLQy5HAtfx/AZrOGM5P49YQ0chBjN1JrqWFs/2hTX6KFt1AeChspnC/oV2iKoitDKLB4gaXh
3WATGSboHKTzlwInBMoEo8WGkyJmlHni3iu0FCyQZ67SnQdL0ncKCFUpucLn7LigXCQPaMTEDD8i
U2AFMkBScT3RNbL7brd+R1IkwIabexqxwh7aaD6IPPTmMpcwftbWeG9Ig1MHxhJhiqglEC9qaSOz
damD4lHrPPdWJIWUkGd4t9EGQwL99dvsiew1J8iA6St+5ZuIvMuzF1uAqrGO3ATR6qT0+5a0Ko63
I5kSyiygXkICkgBiatuwJ+LQzoLt+wiWF544XhzvsmfizBCfPC3utS4s4HzICgu+c55yiDbFOjiy
5Pt2UHFb5TQw+Q8UZ+D7uh0DrLNk6d86BmXDjXroFMDDFrn5YYcjajKg0m5aPv7j+EAnggAkbrcZ
dhVEW9faMg6J8wKr4JdmK+OZYNC+DYzNTbRzo710rhlyZUY7DYZ0loqS/MZdgcC/HXiQ9OJ29k2j
IxHpj+qtqiTk5Mo6RVvarBDrkgjq3SDf+cuLmONsapMZDNJ20rIhNxm9MSmMnI+VWjumcsoLeq60
hIgZ3/dTIM6Im8MtjwnMPLQQZW3tmxa1yxG0RjYCYq6kFTeMdIAd0CAmIIigoeiX+Q7b8Pk6Bzyi
bW8fZkOEJL3V6mo1AvsEYayCB35wfS1laPoe92140+EI6m23yaR7QjgzwuLBHYoQqCkriNDBHNNw
894MZPKZkydBSm7asb4lAy6V/n0pDxnoSeuU7/mFFzhG93zk3PtAVMVGqellFxXNQ5G3Tl0AvvAg
u4uw5QJUOD2Qp59LZNTK0ZEkIB93ewgb3ENhEKXd360ZFV5NwF8jv/MtpXKZj7XS5XDrzSu1kQTw
d9rS4Y8+bB4R1UsvzVNPgaW1xfbzAtT7vWwUDXvNrDlOc9mCZ4KxJyMXOhbSb7ITIHIHmbwwTvVd
82/hEGBGoWZSoOKbawDeM10vVko+EEAB4EZbVudc369ahGe5LK7E4VD5+L8bVWnT3f+GMYz1HVol
MQ3iSqXnc1TYg5cEFmpH7smJcjOJWlk4tSJn2niczhb+YuUopnOte7jZmGRFOGltDT/OmUbcbJL1
uEQJU6bRhMbPqJP8W4ju8pKO/B70r9upqboIOnZw1MsekHgw8IMdwJ0HgZSYRKzcZT1Q8Al4eXoi
EzpKH1Xe5CJIdER4JlEBTIg/AwVz14pYvBKk4wospWi5T3MLt2TN68iFwJ2t3yuaHIJktTUHBMAw
pZ+r+oiAjfa+9v/fpF3XCfP7bXRrqP/wvlFbInUkSUJFgX1wR6gSubw7zlTNwI84yGTgnC/riJdM
yX988UfEovmKCFnnz6p7/re+qkV8YgYbwuMxmO5OFYqHVUtrVpiSSvERdTe3sxtb+sdcb5bLAK6W
aiUEOBJTEatySLCGVrAPUJjYirvCTk3ez3QyHJXJ9aLURXcbNOPylLUICvzqyIGdWIGEg7LiLmp7
Voq24CfYQTwf9EiWYFDuYfOR7Gs0Fp3fRibEbopgj6Twe88j0LXzR1DVZZnltTpiw7MnyZEmNifu
xRaBuQdwEIqCl7ffC3As2hzmMViEHmGYa5t1/AZzcR/MNVge2oFD8ZCVhD1Mm2WN4L0+pU7dp0Ge
WojsBdXz02VvHBAj/6d9i6gx5oKyRBMUX5FQorphG1epoLSgBUoYmujiT1wrMsyUUp0OBrxVyLb0
t2dc+SHojJGFE6HIeCUrZ/obbPD44r2Wb2g9ftKDbSO3J2xA9xvRMAJzsL95uSh2whPGYUvXRn3b
0EqMtLJdNkQ4Qnj0J+7lhTuFezGyec5dBRCk8ny+iHwAR6h5fOhiL1KU4t4e2NPG4QH4IOFfAxXc
wtzi4bY6kCguVbf4Wd77Pc8QDrhilHleWHCY4KcKi2MdUk5zvSAKToSwsLy8kNjnHY/AkklRXVmp
FLgXT8SI1XYJokUoAXPEKELh5mMBRzKPXcHGKPjn7h+AygmH2dN8UbuURu/sAx6V27w1eeRKdnI2
Hfq+G3FYTtkJU6LTlxKrB5p1s7Jgk1EaI7CnYM75aNixGtaTEbJFzJE5MaozgtoKw9KeRDcO6IE5
b8eaahVdL6ldma/0KYBSZkQSyAzVfKiPNKTirGYgN2uO9YMOLmWPnmUS9B1iyWUI82aaUpaFIS/d
bZ3IpZscOGIp/DW59hfjnQYTIiUlidJWKZ0xsXq3zXC8CDa2yz5JIKXJXFyASTJ/86DmtOJwMLFi
XQEZKSZGj/yxM/PZJ1VjlSWJIdcOIM95QBkkNq9qluWwanfGgtvPLmqqV7C7MOwxBixV6tgxFSBj
zCpg+7Ar9TDfnSmvubpT0cc3uN3TXv5ViuzTnd+0J76LVEwrrS0VXBFWPsIib/zE8SuJZnv85AJh
xtongNvqEXdv6aT7uEuvGwy8/tuwvHpRgIB3hvUeCpRnPmkqcre73Na1ZedYNnNYs+cThd/+7Rj7
8f4NMKRXUxc9TaXjrwfcTsCsAm/1mxUmTsK13OTPLq5o3135hLlu3Lvd76Xs5HGq7I4gsZKxOwGy
Kf3qp8T0G6+JBFThvrlscsAt39VDIgsMGCfqehSN0qZ4jd3VivmurfPHeAHGO3YYn/rlBisW85iX
Ybj+PzoIqZMnUx0YE0YscwOO3HNJ8Ds7/RuBvIHPWf7vBzLIWKBpg+w+kGYsucHwwrQSPFPBje+5
s8AEXO+GWrEajBvgbb5hHVuaqLJ8pL32LOJdU4eZ3Bv6LWZFvfbyPNk9b5aIjSU0y/O6nC+GjF3U
DFrKLdUNWR44bkm28ZD6EVd+GHU6/Y5v5l/v1ROQ+JMsWNL5Ys7vROnk8fKczOtz5hScTnrDjswg
0IdAnyg4VW81UVhbSrRuAIUWSggrh6hobnsMxj+hLfR8x6FU4CjaYw7N/HWoF+967JdNr49O8f8a
r1mZ3DeCfqH33Ji+NNDvwygsp0WJslEQNpXaWelFkxPNqWep/BrD1ICIn4HdUYOVAv5MOJY07KAL
nOitfs/O0QWG7M/alSrg/AXf4Tqay4OrCwRcSWYHownExa+KU+/ilU+uwmw9RUVRUqfPamka3h3I
SqnNpYG1YrdTMhFdKvARy4OYJVNqU+dRC0KIjszzHjqmjL3zkwlq4XQ62QwSLQsr3dII+mDDq1AG
/T/57jUjm6gzwvR0x0kdYsqNGfs9qYmGrWS+0bCbOnseOYdBt1LHT9Q/yuBabSpupodeA9jC9er/
GBw90BGXa7oPJl0ibRzm7NAJo9HrsiaEgY49lbE+irdk0F9M/gwYB9e9lp0pxzqc2MT1SM1zN0C9
MmCfHnIykMav2osz7qkUNslA63uzp+qxb72RScChOGnQovJy/N7gzpgxA2laxUksK2kbnko0Ruw8
1ZsJ00LiJ9S/OeRZy4/XQK8HkqQmoJhAM/yKLwBI7eU6ql1qC/KopdTStYMYXLNAVDvBbDm772LV
SiCk3cg9UzznyUgoLVJ14cIJ7313e3H0ZPqTmZnM0fAlKfidwzwgLSn85B3tadaSSJP+smXDT7t1
GlKRT/KMxgNpp+MVEuXhc3C9xel2JfI6Yea2/Of+5f/xgFM7Y9w2loOJWcXF8SUZHqQ3LUHwdA6T
1nZzwwjm5ONaJsEmRbw8THBt/ms3XIb3j1oxIelPbRXxHDkgQZjPbNdcIijDDeNxxNB26iS9Lnc4
zEHjH1yQsfkOmhlXuHens5+GmCwccY3Oub3wv/+PVlnYKB64tHGR2e68sOnBNkBxU1mMZFgZabN2
eiX3cxMiyHHRGBOVPcoEEfzkgixHDUWzlfJVTmU0uJWb7BYoKMuPdA8mwF0PbhB2k7QrCVp8U7vm
hJMdXdkvM0rFBuTi/ttfrmwAVbHJ+3Bsy5Zs4IUuQu2s+5WxMTWr8t2Jt/L413k1CA0JWOfq1oEf
vxs392dHhTldX/7dPDwC2sI9ObXLYSriPcmLyADmWimBa1ZkY+2ie1CKZvY43kF5rdmRXZH4Skh8
3oH8J/oO96irX2tsuJeQzgXqAh8Av8avsJ/SMnE2PW82VQ6gh3RaABfxDj3vpeC85ueym+QYTQg+
q8jaOGS8LP4nulmliIm5p9maGj+XFtHp/w1hIYVh4YyxO/qwg76uIL+jKtlD7lXbjEiduIHxFt/y
geqwlBoO81EFa4+gsj5swqyvTTYBntwmQmX9bObnGgzmp4O5E334KKIvbAMGmc+EbQKMldDUU+w+
fJ+qevyIpBjspxkslkibNFQv/FohJnmOUQfX1Kel83WQEiLUThpWNTcY01Wru734D5d99STQ1S0H
XpeyeJ3Gp9M8kFoBtUi6s/z7Q0ZCeULCbqbdsvr4TfJBgyLz3f/IF+/+TWGxbh/lzjd3pP3W5KgG
hL6AenghdpVLJkRC3qY0PZaTptkHb3f374++GAf6QE4BEgclDmaqDhxELqurDDJKAfhmFW66drnm
VwWnxlUFOnodT+1FEGCbrx3V6WKP41azeGaweUHLUi0M0LBDJGIAfLR2/eAvPIAUK3jCueHmjXJV
29a/0s6v/rxGIE70xV9/d1Vqxid70W5yDm+os62Wy33sJC0shpjxglNm2qQdWXXVQvhg5hnptupy
w/a+clPQ4rJm6YUvA0/EwL05DnH8iRXegNR+8h2DREYgNHgZ1OEp9cF6+SxCQ98IHfA76HZcvOCb
jvUa9GieMlI07aSoLMh4mMyo8gX3BKuXf1nDAHWWvqfB4GkeEqjb2goNwcPVixSPnEgTauhpYH4y
UdwjHG9YKt1c8RzFbYdIT4iP8YST5X/MQNMmrI/4vui/qvVBHZC9mqShMqDNdk0BkEeOZSK8lE8r
CmUCowcEn57XmerxTq4z3+ePoghFZTdAEZeZmQ5knwEcetMGqIhbLk1JKVc/CH4UdBVK2OzpitK7
wwEFnwSKpoFNuCa0mFc119sT36WTWNVZDKJQxYZ4qy3hI6iynxggxxW29gI6npuexm25rjGHs+hx
KeidmbLZ0f8PARQ3dVhBeIx0b1iXh7Ne1NQP/Mvno7Xd1dEuy3/tJTN0aB/9wR0s6a8cRhfBiAuj
OdrCv0REAp7Sw0Cf0uG+vhiedP5qDwd2/5CbqEZokWJbNtCMU5iraIpgbOJaEoPufVWYiiyqoElv
7V+dWGWMg0eosZArehXqDutDr5V8jt2OApbcnvAj7nhAou2Y/I/hr8Y/gXqWCz1h/VuPBNQFIIvS
jK9JJeMDdxLB10B2bj51G5sPiiGpO1GznjuO6R5S9WP3H2PzgRI/AMXwooEHAwSMJeN620+xG7vU
NQQjw5zGrz0O9LZgQtXKI60X0ihz2BZyjYJekvZC05ijB5zf4JA4ivKqEp3IWxKZhhscMo7ZqCph
t9SsEnFQPAx5w/aO3md1JDXTXL9xNWcESf7y2n3OPkRYq6PW9kiHAz9Sj3f+ZIhKIT9upt7mctz6
BYGzir6/qBXsaAWvGNQIx54yBBbRwKC3mvIToGjvNzU3hw+349S31cA6VM/Ywwz74nj5jf5mlLYp
JOIgCJgQ4SpIWyJ8qvOrgWNso78QI2uN7gPE/ajiAiWeYu09WfaU+CUso2dbVy7mjmOG9NijA2SY
WleXpyB2vPAGkWHsuWhOYza+1O1cs3zzMfuqBDhpEL+/d2JeEpTaSQuR/4MZFJyvJqYuk13b/T0E
joOMy2NuVCxLGwrDzJzbznxmFq2s+xzUqXypddB1T11FCXVdld4MZ9yObBIEfKkhNx2+eQrAp/ws
OnLASJr2wph2xUP9vtIW20FOzc7I/rORianCPx4fvuzzeSybFIcbmOvNiNMEIEENY65P8gGmjNIp
4r8fERfKVtpx24MvkmVMI7gK76i0KL/Ijai4/zslI2pXUBoRMjUwBa/IntyUhtZ95RYKDsCr6skt
DxkDqmlStekYS5wwMsNee1BEul30/HbdzbYK3unqZS1EKbxO+KWGpCKkTFOAiAFvK5tz1k64nf+D
bMB5YtJbhvnEiSA9IXcHmMAXdhb7JB8EzIy0V5IPlaf0zqJ+F1kLOAED3cr2rSyjdBRIPKdJGZI4
4cLCpPrR1S1Xlafsl0Rhr/YC0rTErwlWziyMubfohhY7NpGM6/bAjmU7v+v+VltvjXkI/NnhBCYm
BgbgfgmLYWwsH2BL0U+Rwj1dOf3wbgxu+BkV52gnIcGmH3JJVAvs6vy2cHP7r9JQvq8w9eU0KYq5
+4Yr6chk3EXHFW/C7QCp2Vn11Nip3ULvBO+8uvbP1DWzPs7jgEJarRFMQ0cI/2e2eSEkKTo01iS6
nr2Vr4j5/J8A6Dalt6Js3zt4g3J6jj3OwJq+Di7E+9agJG66cV5HnI5lRRi0IPRqDf+JfsVRhTlp
SqVPHUnD6lm5raUR/sgt62JNCC7OGCVqORrRT8EBC5xN1AygLV0CVEQ+mB+D9/nHN0JjvBoR35D9
lUhczRrBjhyHuWoOTwfcAPG1b8nxeTvKlgvFIhWkXL07iBXSHV6ViLjsmlGAg6vTvD40rxdhrpxb
QMc8Re3jaBSyXil1UQCacMFuTI152kpb7QUMAzrn5hvXzMIlUO6WprxAFajvy4V06k+8A651QfoL
xigb5Sg4tiw9BJvg9Esf9MV5R1BI7kfmrzZImHth5RhUHRTzJgqJYhXJYveqNm3sH41VHaNw0QSs
jZ8bVagaNCxZnT6S4lfDP+AVnOTzoU7Nrh7CtRuUXIcKOzDDOzhv235whwlbuN4D2SKeIXNE2LUF
7L2BzYt23sKOLhJVwuKUKIeHX9sEivErakcSmIyo3HMAZ2Hz9nYbIEksi5ASXcs3pzAu++GLpeJ5
TpWuMbLe7ru95q6YBBuk8otLbPAWvfaIxQSHy7xscUQULR91SxF+dYPMiC/3j8xrrdgrk5Mi7IQO
fSjtNF+EDlFgfZBWyjBQcnfbdZhxIRNdHbGEW5LhhNCxsilmF4eiW3yLJIjuDDoSdp7Gpsw6RX8p
HArPGn67FLUc/jUJpGePiRQ5Y0icXS3iHx/VEJQUcR3c8Kd2fyNFTeIyF/PvoyyGYuubPHfLdUQD
L93GfA1xjjyI9vF4xcbadm21SaF3TOn1VfZQxmp6FXVvYOW2kZSMXJhBbpKB4rWnFq+x2djPnDtg
j0xiQ/3Lg5aOfgUl68AFdBsXgy61SgboFqIol0KFgBOCNr6Npi8XSrPkuj3Scrm5zCISAl58KAdK
wNiVtPR3u+I+0/vpbAry1x79UctMqVwb1Pf9JDYQLBf8ttC4PjyR/ld8qquj3fM8v7ZRqDxlIDGH
/ti6MuZyx8cgf1qoHH7dJc/59ze50cGgdgz/wXYH0BCDvEL1E6xpLHcDQmpWXFRuHF5+ArhRzkTi
xZY6q1emY741/5UK6Q2EMf0iujLd6wrrV13lC25S1TdjlPQovKa11riVBZdWJPgr8dOq/+NWRUt7
BzJL3TqqDIZJ7TEtg5ZeUsDy3OMcu3TO4Vi82hGANN0vrdPWSwjAPQ/eF6k/smGTGUC8Lzx4YACn
ZbXl8sXnoOlNcCfURuOW2SErgRIlDUhRzaxLesge1FjJPY7+2UTZRtl77zUG5YizaA7y0WMYglUb
TlPTchXW4hX6K9O6wdtO3xdxcJ/o9r843pcklOzCrWWPxlUmGLAGmphEAbHCtgWnCU4NYsCBiFU0
BHhrqItt+7xn3hW3uwye0KbgjwzvArKe9AB86g0KqIFCFI0sxWzHz9Z1TIG4YA2aydXWtZYj6rqW
V9XfUi5nF3v1jrAGR9NGzc/yO6nEbHTrPsFULf5g2nd8reoU3LGHFqNQ3+aIQP18ZWw3el9DbiF2
ddbJB8RxtXNJlemWf1vipd0TTMLif39pHQCyfdNL3Tc9Ptf0xdwX6lEYlGcGUa5tzJAbKUSIO4IF
srASr7q7am2XzO9oI4Nbp/OOB0/4okMQAeCS/S5GAXINd1FMvc4ZAZWcjoTKUNOLo4n3QgHRYv3q
rW2wVdgAoesOzuXZUpWEM8PlIJSkXgqdjZ7zEMM4YZDvxTqVPiNBG6J7SIGwX8YXkdZpqluiD4Vp
rJLns6V4tGbC5++TAeahuO6NpscemlaH6c6vWo4BWMDIwoSF9ymO+hpzZE6fl6SbiuayOgwD7k62
K+wGv7axHc25C5SqKen2y8vMXrtXGHHV0XEy8glF2hXpZcgjkEmcsKOsWLQa+cx27S8hoFTdGvzD
f3Q/k1xcIjZbr9PK2arBZkYozOc6INTtjpHr0tAmvYKJbFy4PGtp+6tFQy5wMP3UQ6I06w5JOavs
oiZd850pvcSM7h5chZGQ9SIPISamvcrt4fqN8FJnS8whHjGXgPTsYxrmEyuRwFA9TXqYSPW7n3X9
FiKoUGypV2gxMeQrieeHxcVaUXL7a2v+L08AeTFuw/bak+yjDuX6w33B8K1MbBU9+kOTRmmgHkSM
HLFhhXBZcGp9rueEBAsIMxb3lbFqis/yBXov8bK5OXFBq4hdjaurqvNqiPAzElSnlIWopx6upe+7
JSlKUeXT2P7O5xBh6RmR4XyP5SzekHcvxvqjIbeGC+HsXWpv2mUEMMjWW3lf+WJZGh/u2an2BtRJ
PIIQfJlxgmnFzhQtpRMJu9lgAnstENx4clSK8IPqkSRAXUZydpTfBjIUu+KktmVjsG1cjCKM1AIb
RmxvhQL8VljIhbdfwezKsGsvqK2YZQx5x4RTM77i0eDlkt6vE05SLivNAEx3oq+bkbR+bEvRdw9O
TNeaDy7EuuLHJvW4MlNCNJgWd9SKsNNVrBizlbSDU/fws635qdBC0Oz6iLS5Xne9MCwcvUa3nIl9
R4GsKnX52Z5cBJ/o/h/N5xEoxHfgx+QePERJ60Xl8mSVc8Zcwj5Xh6kmEQy/ovrkG4kkaTs0Iehw
RnrrBf69lBFid2IXntHjrVKdjs83Y9RNLPY4q+sEuh5l0VPbZ15s5S8zWWUpFbQ9qduAptDaz7JC
ClCkgTejRdaDe7WKhN5t8us99uq+jtxDYyMlJ+oqgIp7Qv5d2xPaGR7RPonaKImGKon2c4NWXDWP
XmUcfhO8squlbDLWi/0Xe53N2zCzg1nvrmPJZz7ky+3JeICJ/pCQ0AyiE0W5tM9VYmKQf1bdHaTh
oUAX6at2NzdCQ8Rul8wQoWFlaNT4RpJTFe2S22zn/rAl4sdK04EMhjDadmfFzO6Q29tROZP4ypXg
uI0FRaT4mO8Pe1LL0UUzuh2Zn5OW6glOCLyDpiLoAoL4F3Bq9xRHZayzLJnARo1aLijpvVZ0GvkM
iQfQ08wtyHV6TptoUQTjf1fpKLmqgpfkUZJ6qCknVO/+GG3iPapGPYIducl9Q3AOfoSrKiRWTdB+
TOIt9u6LO21RK+swmnV/56i+wKdYDlyeSjFVXeA9sZFPcnuTetCwSdGDhFULVP7XXMtLInT841F9
Vn/j2cvQaNNF/3QKA9kr2UdJ1OvbuqxAdcFZPgN4wMWfIOs4/CgHdlJ7ZBD/s1EBacbPspQOVZLB
FE5TTNpenoGmNYNKP+AOzK4hkOea1qgwTp+DxPrmt8BbYPQY7h9I6F0REoZA7gh7ffrmOcyeiDoC
CQ6o6BkzJrcU/GrOlHwhFp84NAR9O5obMweipxppmrkm6bkcEUaDEt4bvp4ZCeU55kV7cuveOOri
VnxkWKggY6/XGxN9qPv9H7OefLY85H5DwlbtdXD/unW4lzhPj+PIwsyKMBX6LYLRTzw7+P8O2wEX
8/V3Mb/xSpVDR/mCdk5zXvyBeoDVVKhhqInUbRhX6xtlpll/bSbXmDxgpRWlI1RFR7PMWPIhJCm8
Jx5aZFjX7vtr6Ve1Fl6aKa1IajHchUb0dsj3M5HOBV40yfwqlEONgIJMfxdCnsveFhTiMqsTK9HM
OApX20ula4OLuTZhFE9kIp2xrFSJtODPnmt3jTee88bAcXwxCMRfnxnUTPI0FVIjeJweZD0F3pR4
JXAsavCQFsyRONVkWSRsLz5WB/JrT4ON5fau3NEDgE+s5136p4GOffZtTJVdKAVzPtOuygNIKz8b
fj25zuP3OU6kr4x26GxyKJ/UlRfl3zKJ2S/Dnuw+jOaLea0pvYgPOsHEc8F4ik7Vs/KQtfbpKn0L
pyD51V6MwfOCVL0ahp54EaZPiciQht0UUzXVdwqQYSUQoP5Kvvb7Xj5KMMENVKYa2Gi400m08IlE
46Fla191RgQYhh5ZIosT7oyhRno6IYZge5XOVynl5zSrpFvL4YSoN0g9ObM/ZZGxC+pqSIq/3SiI
4moURJxDmvoHFMBe08bQgdB2zu7n+V3gFiYTb9Z1I2x88gEBC95fv3myC6Oy+MJ9RJn+TRZIDR1D
i6q8hKIHa0n9IwKmZKKIEgo+jHa4EEd47ULcXJ2YfgCOoq+J9cg9kealfcLZku6ehglVZcA46zOB
1TM3hfd2P6uhVgI6AOjj0X+3c8yS2S6kIDxvigcuMgP+Ipcss2OCVpgNOiQ7QBqn1JJ+zxGoWdFB
WgGtja0T1JLg7uNjuvNw8qOkQZpkGoGUfJxBNfIxIXmMNY8VYAh4sUVcNPZIoILuTLkGGzJzIdGi
IqFXkC2vrB5mVt9NbfjgA3WYFIuJP2OVT/ti/LTnTgWQfI0UYsRAwNVze70Umwf8PYnMnF1Hi7N0
vzkAawAHZF/1zCMGWFPg7ftK8mFGeOIsRXvDuESMetOTZfTu+yGzgbgit0S20nGW8FRLKbtBhiS5
eleN1V2X4efE9YJNYJTEDnQ8vz4K1PLiWyaWan403vPUZJL3LdrX2WEle17Iu+gVta6i3z/Z7ZVJ
4bwcAOQNx4iSU/lqgR0O707r8GQOmIyTkVlyGJNSDEKgdrtwFy2pDmFKjebirbqmI9PGZdYpvb5K
8KnHcgMS+90NWK/uZ74mcqijnCQQGP+4kbzAG2e6NlOmOlJMymP3fhMFmwBELwgpijIurLTYs5vT
g4FeMGkqcy06+7bEnqMPSqEy9EgdsoJo0JORbQ+2gjixLJE/E6LCBxU/x2Ag44U2zh8vLGSQIZ4c
DaMp2Fbq2IyS3C1XpK2jK4JoPzorR6ayiWMlUvGmVOR5419E8u08EBJMjPjLVfLDXO9HHcldVhBX
A6V85JTWO+aRGt4OWikEb1UtOsaZZAbX+OzpbloPgI98GdD5dwtg4W6Y19X3isvXMuRMRkn/CZCp
sZdo5Fad4hOR1D9AzIKwUIPZ6aJfvWsKrj5KV0x611U+N8dYNoOUZULvL0Abjj/nv89OBIdR2CAK
bcxFF930dWR5zww17hGTFniIf4uqTyoyW48a/3Uy3slfkS8PF05oTT7GSHEibeJtpP2KDaECQQ2T
Uqup8HDsJ8WNcYqJMvAorb6MbmwyWS01NckRneExAn76qpK4hIr8nqob1ZOT+mqcmE9LJsN5fbbc
4/lKcTwyy75AAOFqsXGcjNmo39vHFEaksyaaa/cXQFX3N09CNJ8bwLR5FRAAFtTSLJx2e56JHfea
wdWvgG+CVSrJyoHpwAwfGcDlLpFOFU7nzngAXRpHtBN+iTG0P4EshL9XIlYJbApWK1m5/shfzl2r
f1ITwUIQqa9j4Se4/6BCICpEw0Ple44Cg6bwPaE8KjkYrfk1ILmiQZB05Ze0cHTypqBN4+HTEjbG
pzJ2veUxjXumHQohsqLOWXrgC/Ftbs5cDxcbW579h3nNgj/kcFhLMH3owx/sjnAnwaPlYv9ZzH9x
/pBDuQPZnnUdjQg2vTnbHZOzUq7lnDrYiCB96aPgMi9/dHhF/TIOkQL01XAzXEjVcbC+MF252B7I
019vfY2HkN06RwRGp7+1Zz+JM2Qi1IEtqAq9+6zfFIphPz4se5riIlEKc6KbDRjAGcm8WlpVHPCb
kXqVmduHNjheeg+vyYQi9tfG2izM34WWhayFUy6xnPhD+kIvO3zZzxwxh/LLpS+qXu8bGzQh4/hq
xyntr6ugNUn4e+HiDiOHQ2dM+0t2sGENKKHxNcXDu03Ex0GuTbzzOsVaxEjnZS5NH8XWiv9xDZKe
kucS333le98yiS9QtnRCJf32BziIdtMcD8C43Cc5ckZ2jfW0HdEjuuGfbOrdmm3HL/xtES7XNYyR
OBRkIklEKXjOMKE1UuZquZPmtWc1VwQUcLUZQlVqeauJoCTFF4iJAZ0gsxbrPANTn9V4ElqEj21Z
pdkIXLTlJUMcIvb+XeC+tc3H/SsmSSZAD2fLZx4XNlkwCpIHO//KAQwGWbgQZJuI58JKDlr8cJY8
Tb+6bGZ7MeSsWFmrOE/e+hAPtfftiPjpryK/3mhEQJLFfWM3IwuevLachpNSBUPY6LD18a0sKVJb
Aj+MjVQ4+GxZmIfwHP4MLhx4rN2EUBKHFrcdjXEjA/+CvRjg/W3/SirLKonameA5agaVYrs44Dnh
5u+5g1mHsnyPFWTfJX7b6n4koAzAoHDOBJEXSQxYhhWLkwilzC7/AsYBR314vjDjJrv3ldc09M0q
LwYg3EPBXMVXmBBKYaVtA9+BQ6AUAUqgnXHmPQjztlAx/N/L3r1AqwmnqNb5jLPF/jZ2/vQ+ncn8
tRXgMhhZXCSNkmbYcBuMqALa4ZXbyGSsKnqVkGVPc35YHTNhZ3e70ohkhyyYMDixQvSGGWAHNLha
7j75DNV5Jmq/v7MGrIiq45G/l52+3+MkcD+uZiIEoKYF6bbpHOdnRm3insdC+hqODxk8Fe4VWf7Y
hG1c39tImaA/uP9nn6Q6Jc166RWcEJJUAGUGvr1Tbwe27VBc+r5jWi4F5FoXBMtmv5rLH219Tt0A
xBBb/8xZYQqmOrw3/brg/10nl0OGNqfCaXL9Wh/PI7ilVlzC5/BzFJnuhHqOD/kQVFXxDwYxi0XX
wRssjBBxBGSj3bkDMuLLOuBdeC31CnFK7cGwOpt43UTOu5gr21e0FNoRlL3kJZ3OVyF6APmIyhNR
a8jEzbyy4awVcFZA3y6ae15WBiOdaehz6hexjiZZZEhLiNSyb/0Q7N1aKuQXWUIHZi4mBTaJEkf6
4pf6SSv91p8/zKkq/SYqW6+o0nEfSptTtYQlHN7nIS/qq3J3PvHPu99hv1WDgPcR95IsoYIRR03Y
5HVixE9xGsHrUSJ3IoXyD3Lron4iJ8+5cEroXobpXvsAboyiIQiV9XKP7aT6Bu8gaIxcTCPWK4+9
G/mR4PSc/coG/Febjnq87KdWZPc0wuj+31a5tAMT2Tub0bYKphmHzx3877k5uGULSKXXkTNLNe63
Bys2tDv2iKzjUjRxk+9qzgNvawmPSBwymsIqDmK6otidbrXVNvUaYJ1FSFm7I7Mnw2ZLqMTgT0lD
8tnac8lIHz9de7j2dzj6j3fyi61gSB6bEyVpLL9KLsqZZ9n/Xk8Tt0+m/QnZ8X7zF2Vqd/wJ/x/e
dAU+GNP9MyLsuqS52S680RsVRf5MjCv0fC4ZpnxZ08PQ8HnEB9fzaf6K0yhcYkgBe+xCURx6/pie
FIeml4x9cjnMPlb31TnJ2M/49LLkrzgu8UysQNFVo5sDk9EhmQw+bXSAf8UYlNtQ
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
