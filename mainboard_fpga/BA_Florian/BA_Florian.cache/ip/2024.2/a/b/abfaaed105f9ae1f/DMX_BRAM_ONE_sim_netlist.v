// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Tue Apr 22 12:32:21 2025
// Host        : itmlab-1 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DMX_BRAM_ONE_sim_netlist.v
// Design      : DMX_BRAM_ONE
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DMX_BRAM_ONE,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21968)
`pragma protect data_block
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
LjKIoJsbvylKGQ0xja6NL3HcTv6W7VE=
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
