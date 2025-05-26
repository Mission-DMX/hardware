// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Tue Apr 22 10:27:30 2025
// Host        : itmlab-1 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [8:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
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
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20960)
`pragma protect data_block
kMDHh7aIT02R6aF8fkSYwg88oPLC8aZYArR+ldH7jd7ZxTFUaT1sB+gcaOwpqO7QRcC9JdndB0YV
4jtyAF1pTRN8HmuzpcuB904OaAZGd7hWTPW75fY0r25Yc1HpGN+VOcFG8tkAaL6WYDhbkiQ0K5vz
2kqUDnsg33T2KM4j52q7iyK8VGBjUG8pTgfzuF+Aii7kUdo38Icp9p4WLPJlxjJ2cYaoU2QS0Wh+
U9/pl3zA4IpIuOcrTAUrShL8ybUwNIlpOS8MXuALh1rXVAmvxYd2sjmhjEPpMkmJNzQniys09UGj
JdpO88Z9w3eAibKYqsGengKJUUKUnNNh2dbNwq/2Cyjq2VACTsAHY6190+neFLdAT/bDnLHLvUkP
fTgyVA6IJ+yKdO5/+PBVtvo+dJWvzOo4ZsrR/nRiuovoJ0A8uLilTC8ZzQYgSHPCen3+qQ2LQWN0
qxDrtzOYdaOiEOOoFHj8aM8qLsIAgC2BKE+IAY3gDjv6Ya/42DFlrcvvlivXgZ5v5IUUjUkZkSms
ctrLvK2Y6Ql6mRGnVIWQW4Qlq/1/dw9l9Px7L2y4SzVxgneE3MILUg8kFPd1eLcOfCU6ErPCU/Ss
RY5OG9UmBKUrf7JBPMeTBXrAoP9YjjUUIxXzLIUbuqhexHvIau+6ECdAae9JFxncoc2ZCn3LRuCr
c6TELXGLvGMlIuKjBM6AC+XQ/zCUf0ibRwlK7EhD8wkBSpUyvOGfAEjCz9BcVQn35awMefKsM0+E
cKc7IoWnNYsTiQWGeQDFAtDchg+tMCcE7zcrwXVE0Mt1v96beBy+NQaTwYQ/5IGP4TUUTeI0sbm5
H+FKskiqc6YntXQis1EP0DAWqoppcM1WDkNvsgh52bqqgsKj60UB6yNCf38Jxaw8ctQg52n9WfVc
ILvKx8lNdrAHEioNTQAvd1l8UCxSPjzlH33nIkFWsjitL1BSdBd4LmQRySo9HGrRkXDWIAXyFrgh
RUo5M0Upw9nSjBdAWsb+rF79gAXWetDLnFqdJTdWi1fFghXlBs6op443YG1SA+X25s1rGrTKnN2Q
GE9MdyCrn15R+lRMLQDb6bUKLNyBbtHy5Nut6i7p8lq0rvaXC5He6O2DGZ/nnfcmCxqRarXJfiaw
FWYrBoFtHAHynT7NvTJeBqWMMdGoIFJEPr8MW0XXpxXeguBOurO9znbpQQuZOnbKeU8jff5VGxiA
wownrBy5Bz8jC4t282dNZmXfrePCv6xezHfr8FGDISzt2Gu83iVvdQbhUX2wTnASmsL1O6oJ+e9f
az5aCuiGdh1y/0tqaKg3lQhQe/4Hj2f7ITj0NlU/p1zl3tJVXtY9fgnA6TGT41DD5ytgvtQqURnK
TTwvR7Ijibetl5hNE3EpgGSy3Y4BVTWHaKGdywHjXoRiM0D0hWhKH+kWuTMBg0FA7VoOcaxmvBZI
xNql91CIDvYS+B9zKjU3cYSmxWjlgO8riK50POLRtVtsGxSwINBmYxo9TQz61MIpniuSj8VWJBTg
cct+70Ym823rNqF2GV4lvW/sbrLRF+8OYvi9NEp2sGCVAoMS4JQ+uYN+VW+EWkvbL7MWtyBvNUg4
yP8K2p5lEE2S6/tT4o9ov3o+G5jrCgp/nlqk3kXm2Jk1vz8iEOPOuAFWHf9p8IAF2c7mNv5ibsge
KdqhXRzFjeqNZpkv5MGUZ3I1jrlLNHyr9M4PrHu16gcfJpsUJrn23ivRS78+STPBhnHvgcuvBjQ6
dyh+nJBn23ebEE5Y5n3kPB0HYLRNw7EjBrzlTx0wJ0lJbY3zEFTEsQ7fGOalr2f9fukpdb8qfH+N
Azc/4Ws9g/YMC4aWSk3fpgO1y0y6rLmDDMQg2qM+Uyac1Fo+9z0PO03x171er/VplLY/ohH1BqJt
aXAKqaXL6MyeXAJfGczGnd2mCWevS4JJbv4srBKP76catstCCSQ4deFmTzRTPaBsUNue2HMKpUNt
BHpu2m2HHHTb4S2KUv4JrDOOIORA+BNLC2f3YpVCBAqzgVmpoHljywfqieOCzV+JSTGpGaVBV9CS
oL1OGfbz3T8UQomM75+UgiCG3w0Gz5UlXF8uNpSi4N6VnBvQlKjMEKKOIzhxOlFt1qPKYT9CFwNe
l8hN+JOwRhbIDlCF6OXkqGbyqohFs0hqOD/k1fahC5wqAUhCTIf/GqRDi6v5VfzeEv7akIT748uP
PeCafU+IjsnEONuqGDoH8qRy3ALk1SrYhMzOTQ2vSuHHvqW7LRVJFek3Xe/0DIHf7JzWNfbuQP+a
jYs9XpuPQHegetRaXv6zW8BvULnBiG1ssmF/jLBZrRs6ok7Lc6pWIzmwjUP5fo3DDhovXAwuaQ3e
YzzxunLAv6dtedFasxdYjfH4t9buiST/U3oCBaYUeTqIGm9F4V1UBiPPPqlO9K2J7AiqG2zP5V+p
xLvbDurpW5X1YC/dKKYyWx234tEooM4u4BpH3eQgvbynzrOZ+KE2Kb6mkC3ES+avxmbdW91A6CEu
4GtVWYN0drPLJ4cCLHfWmB3XjPthh2OdJk85LzlStF3gM2E1Gc86Vi65K0Fj8CSbrz93DrUnZkZO
5XuvMEIMEeAXk/aLgeyDG8Mp4M0e9htdVAajr4Bm+1nAyldIkR9FJkrfqRLkyO/MQPy4/TSTF0my
LQnGTqgpnweAiVAapg/sGT4HNtNJAxpzXjDF++gLSaSTeqy1tiJt/D/262cPeT40+djkY/qknCn2
hhVzRl+8niIUcYkep0GspA5z2KmYh7e4158crNQrshHjIgT5HxpjLz3f2rz4fA9VWy5JiToo7QyI
8db5z2hfGjxagIWKuVUaPE79pNDxes16J4KhMy7PBUxc2Zib+v8qv5p3EPm40uftjgFayWRlnGaN
0GAMujsqZ0lZwcorbYlvXRIDyq4YrN50pW4PfVsZRWWOaOaFlC1xN/YsMSd04cFZIzsaPHBVlbSu
rXp2Dau0o4CG/qmL/1EoG27nOhoS+FMsOMk3Ayy1JElpB4DtR0fGOEFwtt7jASykykLh8g0nHxcR
z0+TFNOTMycOELvGMK7ombBtiSuKEAnL3GfsNiiSYKzz+vRMRBl1iPT4kNS9ClozG96LNtzWiOcP
F0xBpConJZ9VzAzmgWrdWwHsvVHByia2cczfz6WB58E6ER5DXInmM0klVeHZwf4RfmbJQGcfjlyR
N4Kby0RIbHaMHlitwdgkKNR1L6qZjgcihsvmjsQMPCarqJtCM0M7usMkFdzVWC+XAlaT/Tkbf8Wo
IN9J+p7uOzecvKXRS5Jb/KZqa8xUoxVpF7nVd7d+Z0C3Gh9iKb/sSzgtwI/uH1+UyQ7VoX6UIpQg
jorYELiqJygD3Cx5f3GJO9wwRUUpljFc46CM3YoLRRj+vH9z9eWyyThItyL7z6Kg6KLP/MBOJmL4
J3zBtRWyj3HwQYRiZwLqZQSzc3exbN2iVzB0fwNsFhp438E8h7moAzwnBTytV7WbagZk1pLNwFyc
BN+XF1xyzFcT+64V0G7dWHZn9hiXBa1bc+KwNT2huMYapRsysN9Eqk//U2sg+yL1YBxFvZ5AXI+r
oSRJoe/Ow5To8di/qW/zIEVowTuy55fVzEO7HcbuXmvYfQaJHap3aCCsck9ftRXreC5pUjwsRpnb
XjTymh+wCZwTKWsRlFizKlgNF8/xJ/sscfnypJPK1safIoyjY3wxGe35eCeikD2jyhpPbkv+RBR1
ZALWEMh8vEXWqY3PnfRrQULlrFTMmKA5BNFdSQrDeLaZUCEjsBEh/+DIyOXkyYvHR22/jiqR8qKk
7VOmqwQylgfVChWUK7auZE4mE1jCZam6dyXshLTB+/AcXOfnIsNKIELpviNUfjUpcw7BGXQc2FmL
HjRdHZWRVXmUm5koD38/YFL5w6RXfRRUTQ5O7GOSVlJJpVou+4QGN7Ju2EKaSP57rNXvpBEFD51r
PNRQbMlNWe4V7FJgVc8BmMph/vx6iNlkwX4gFFkcEZGg4NFcuTCGHY1QOE3Bwvhj9jEYf9qryHDr
g2dSSLE25sxTqLAdHHW40k+JLhCTdfbOdvnjSFIKtZ/AQWtL/PLwVTHmNXMlQo+v4r6eQadiv43O
rMZx02A6+irNmPRz5FIDiFNHtHGYTiyQcWfC1uTnD9YByQto1AvSl0vNKvEM/mwC7n8Wwmw8OUC4
3EQhWYCFWrI8CNOv4ZaXFnZ+eVcIRVWk9ytCWehGRTGRDL8yZNJGFsN5HyF3m1yPneMo9l1uMz5p
BBibWUxT2r+KSODSJqoAK8x79OVc02FoUodYCF5/i9zfbPe/9U5NClTtn62eh/zzh10Mt4zJj3KA
xdTM/Pe8pmT8Wz+f52Ujk+MkTyDLTypEAsp8yDO27VwH+v8GFGwBRWwrRsB0mykQXRlb9jz6Dm3+
FZLIwbOCFXeiAZ8n47c7CG+vxcWG1uZK78xaVaoeLA+ZGgXNBNWoNEYK5fZnPkcV6HVvRNTNPqHZ
+17dd4csnP7AGNZrHQcN0SAsYz+Hs+UMy6Dsb5ocD3u2swLAcE/PQ3hGU/NUsz0BeoPK9v1TsUyz
HcZ2qOsS51XkP1ZWjFmxSjToROylRiDa8BveEhxGXaribP+1i7fACAWG38C/KJdcR/iE091v0wtg
H3RM/DyDQCTXrXuDPtHsfKaLueGV7nNynsh3vcA9s9uCYQgE5Q7C8vw4h7VdvQw8iGx+BfiXyifA
zHyUmMg6Qib0L8mlp7Zbv+dPfftu4yfGb0w1QFHpKqw48p9T0UvYTz2I5Wb9VzDKGnNfFAkPkvlg
w25SlTiGgUPW2eA6Cl7csbJsH8HyhO2zG0Zx0c2g5uw9wVZucMwXN3vp4ETcpEZzDY1KePeMkfcv
hx1i0MWu6egBYMNDAQZXyo9JzqZIm/XNC1Usl1idp6nO1JGxPD8+F5BTyeoLYvQvBc4GsixEO0b5
4PK9YQnswUp4QQTllxUjxP1zd30PJxVAJlELm362rCCyVSMaP3dzqMrFigGhW18kvqaOtGRg2Ghy
NMuSHOq4QtoekEbnbYDD/X6xp8hp++ZmefCg1UnFWRc4wGJYfU7vlWSoBDliWkMLCg2dHzYpzCbr
Oq8JPOl9vjCNmMtWI7hY3WkbvuU6c24O5khd71xgS90EsLuYyb9w4XfJxlEaQQrbgBE+0AlmLGvW
HqY7VDB6Kn41I6AzNCGk3KYnAOxfOnqVIHnCibGfuLWCWSXJzqwnOTIKrdpYPWgujp/kZX74fMSw
XB+uTBszW3SJPDeHnoXA3h8RqFHkT8gd3A1bINELBLtbMNI0yHWce+f4i8/5GkSvMoEfgdbi5A90
K9gjyEBOl1zVBzEfL0XhcGoJjNIBkKovCiHQxRIfnc0HYMoOhgXYwrbDjLy6dN7EtpH+5bfg1e1B
3teAobn3YRPL035+HNVgOXWuVKsjggg0/O2X2yHUJ374GRXTJNEgGCbzKWD4EJJj1KZRggez5JKt
gh+1K2xKrS1dHnCfT1Gj6nHEXWEuReXoeQu+vkR/GFyRv+d94utj19nkJHJu0W8pxudy6VxR3mEb
2yfiejUEY5OYxA1hXo9EJancYkZLFEm2NFs4/ZfaaFTrI2bvgSjSUySeQai4bTYzrAeyV7ITsSWO
a0+KQbsDfJ7kbex5pnPEks5FsByYnjSa3WU26h2ZWjMmFxoZvH3wg/XIN8HJm2tHdy3+DCBvH/uo
XrUDQcwUhuxkEfqRqXFpWD/dvvjRVMrnj+Gq5C388VQi4q6AC8fvBo1RSA5kJy20B7pmi/DKnZN2
l3QdJwDD/m3yjkTViBxRt1X+wNKIoIhXHNrdlfvB2evs+7Z0foj37JGL2TCJoBW+jWS/QAwi51oX
2Tmfv5v9veaskgeEOAszrgYx/pvXXKTXAyblrJoXUohtWmPk9eTv+A7RT9NyrcrtVcVhwd+mhy8h
kcN0i8R2J69j7TL897sbaokSjmbzY0sqY6lhzLA0XtQycNQEHK27m1+0rOonDsUmbjDNq6gpnY2r
HZUXCgp7OoBzCl0NwD2qveapLg+S0GafQfYDWPDOrLBUhSKkymYA2kTAixzZnBlX0gH7HunKSIO6
XMqAmiWjDiTyDj1lgzfjMi2YNkLK/F/Q0FOhcVk5C4QMwJeBKVXDr6EJItvPmbcNs36/49Fk8q3g
L2zBt2bTMmdjUUu4GinSfWISgsiKx1QHMIkF+b9BVF+V4CUlD7ML0YbmuFnq6PsCp7zE4DMZo1iY
/os+dVxI4PgDsLFGHsNlxkYx/Y4HG1QdVPWJLZ+eX0o9UFAtQBbgcIyf0PejWj4F5BoKb6mciUh0
Zl2aP4ePurNRkXg/elDD2el2k0g410AJGke83jibQMTE7AAFOyrDAx8um6QyyMad+D+y11JofiUK
wT0StUKUkB0IW/rrAz9oScZyeWsu9uu45uUiPzcCbwlfov/j+JMdVqM/Xr+RHlsFZmnwldX9Afk3
ZBatpQqHyF9zTEs5Qd/Te0hcUsc6CAt4pCZG+b9gsUovC5bSBYZZo/moP/f6CdGGuXVua9b/ABbx
ojWhTP4aVL4fGo/MTS24IRBC0i4J5QNJHUs3LGt6TuaAShqNG8fxI/G2gPvon4xVmAxi9f8YISy+
dJxtQnx1jde4artPI6jlEkGXaz1GbH0+LYZiuB9mZdLqSh4ws1yHr6+MQZeaPku6Vr6igRTzP4i0
YtpvrYT47F4usQgKDSnBER5VoAb6f4NYrTUK8IcdPTTIHS8ls5pJC38EffXW4eLXWFuEyaftqNFI
Ibc6uNP7IUyGw41WoJZjvVNloZKuDQ/wNm5GrUINDqpUnuXEOM0wSQLeENSh0rsGwxV6LieCWkTv
ozpM2Czh9TSS/z3tq+m0z44t0jR4DAuojHvf/YCmlbFGbL2rRI6sbIGeXoEXrnwlCS8eRGWptO9+
2vEmhGNHjzmETAtQ55GYBEzY5FxykxI9rQ2brI2vPhK+c7f+uJXgTErILCrMpiPfrQVik/Mfm7is
Ar4q5prGgRb/Z2SF6msJqq60a0AvTBQrxps2JhlVwiFOU5NRFaNfjg4Gfe7BDP4TJVe4HS1INRF8
e5G+VbMPh+AUUEZV2+0hmbIZ5Z3we57D7p5oaKyqygmRNRYG4tWQy6nFgXhu4sGqy8jyXqIRvtiq
1JFJ/TReVGvrOGN7GTq+9ZS7Hpr9IBtFyL6coAQ0S4IFwp8RmVuERBXRUEZIzrpvQGGZKGp61+V6
ILR2YNfzOrGe0147EVAleMS6R7zc5wDUyvhnDO5VthF/xy3ivBuyuVd7hQgJQEBCLKcAURshy9jK
pxcnxID3Q1KhIflLhpsgo6i65aple8v1FWh+nj44/rsnE/WgWgpbYyfFFvB5kJc9Da7NBopbVLtY
0J2TxzKAXuuBElT/Kxq3vdewX1kfs5p5CijBYgayXR4QispUScLJVxehxgWpIT3dDEhP1jo5GAwz
TJT5Z3QuEsh++dpi8qJcrYyLEkwDx6skie4cK1Td5RxpWLrnT7m9Wg44F1ihMIoyBySyGTU04P7F
GJoRK2hEqBkdgbHnAKyQXmrkxDiKkQ4Rcs8EeY+Fy3CulEDQPXfcCJsc8KKhmviOlrG37CfVXYPp
Fak+dX8WgjKhoE3J/kZCJ3NQ3ya0az4hhxbtOWdvXYIVjTvju7ZyDzvYlCnTzsp0ogNRW6mN5fTU
zkWAvY2/sZSa50q1mJFpPUFXGWVh/a8XL4Bc8B7b+IsMiUuYYY7OXLiRc6hPLRPC4AUWKlPY4hWI
amrzzkqRcDbP8erI14odFHLrLs42h2OSQnin9XgtTur08zZITxk1qcJk1WxSQf3vRN5D3SUyFqbt
eY3L0xKg7buhu42Xy2YVOaqZHGp7Hw5+Pbiyqn84hKyvPHunj8UFd+3FJvLtGufs6MDwgGJHN/9x
WcV5MguCVBDH6GFuX1AtrOQwKX59v2w63dF5wPdzrbQmYzHCPAHx0bGIBwW1Ej00wQInZOG/zOoS
cGqoHi4v89FkSn4ge9vcQpMbdQrOC9z/DIYDVtxYndMVLjoGL6Fqj2qGpQbXHMB91VUoS0yUL7WY
t8yt447dGh3wRPY2V38+k4l3mCVz4sEtdkwg/Usg1s8A6Y/lBek+AUKSC8s18b5KNasznRxYiOcv
RgunPucoK/nmLNGeoP8e0syplqfgefUEhQsQdgcjdEtujYvZDePPQX3i3m8QI7hryXnOf3IHOU10
/vhqLzGQm9P2Zxxy5qHHQnb2RBPhv5W0KTuw4B98NJCttrKCl4USs2cPsLiicZ1cZ8UsvIUayX/t
AbUJaGOz8tGrSLruCQ0dnAMtTkE0p34LPT9hk1EzKq0HH3ScHhK97fm8KiBmvoNsmplddGBQ9Kz4
d3jv05+x2MfxL8suCEoYQHAMSFtYviqTyHNmSkjIIvBU3gOkVmt1L+fG7g/ldJxY9hzcYSoJK3K0
QotxIA+FK3sl75G1x/Bb4kMTiuR0+pdsv8rhUO0Qd0aQyWPCGXM+aBa+tq0O9oGhOCIpYMzzf/BX
F5ABXF43X7sM7KIQdxNhXJLpOQ7vStcgSdWrVbUH0wNl1XnfJ7GnXCdkw+XO7ce7SUbx92300a/a
odoxpLPZs5rEmwWjAmF81UPAP8pFpwdWn/70qxJFbqDKhWIhoIGXI/cQoxhMmGHO162K5ZhJAsQ5
KrOxDig7iZIJrJMpZ83WhJdeqKLM9i5k0LJ2zbttz9ulcQte8HWuOk9MGK67ZUeV6LifLmxeFII+
cAD4uEcgjJwWVDkAA6Z4da+sTT09FzvVzoUClEG1o9RSycWhNsf2jJLRIhKI/1+DZDhlp3XeU1Dk
WlhzyuEQ348RxkxptMkLTOvKeH2r2F2ta+dPDMqkF9qPqlwjKZqtPtr6Y4TYbCYQi3MZwmqOGyyF
JHcXIBCpHoWTubS17vG2n96ae41UarOACYFfX0bm7RXocl4sEsHk0m+XRbzeYh7BvY9uElJ2Nanu
/9AVbUw5jrEmGSYZz1I7xq+LSDVunzrGYCYtUn+63T55zk9G/evUbgu3tL/LldPhrrm47Z7FMbj1
9OBWW1wN5QY/+VwhRoUnwD7lX6x4zhsj76X8vJlADOZt/gxwF25a3YnUgeOekN3EMNBEzIgVbL0K
3QJLZ304QHhMrjTUpLaEWM1PKtB030HzWbqFGrzvrziKVcGJQQ3QyXZbg7lx2dLuRhMwhRkqZlSk
HKdjU/dV8+qq+SLOj7TgB3QC679+iPqc7NWBGb5xQGNJaGzHaF1wJKMNR3S/2vojQph+doEIFJVE
kjpspqZCD8Tsa8brtNT3XLPzUzi0zMX/kv57TbAhQ/zDPgoMC62xYDlA2w5gSQNiTXVPCe1RcegA
2Hqz8My52FObFl3Y0CUbNSmEU0FYK7d/4E97G/32+nDdrxq7f07oXmk/1eEcSPTF2KqC/rU9fIst
80YHBL/oQyCB2C/ZKcfAjBfsjkZ5boS8QATetjFJg4GD/KqQRpQvGjmXBKBekM3KBv8UVGqdj1Ky
5+BcCKQh/RXNjc9TeAI423Bxpz2aDibtlRr2uj3KOHWZXLF1AINVcpU0T5++e87SMg1oe8OUg44d
KC/WpXYXbUXV1ZYnwqMB9mfZTVgegXo9SFCRXSFfINlE0bHU01lv5v6Z1wZYC1xQZEhnsUWDuSR3
CaKtKx5HbCa+bqbpAXzqwtEgkZjZyYtDnG/r8k1dsGH8b13Plo5OskSH7Y0y35oWhA7EjqgQHcjo
uFdjSDOusGXz+WpShWIqUeZvBOScZnkQ1O16xLbgB4ts7GfKUnsKnci9WFTEmc29kEcB8JFYIxUX
s6dmZg9rwK7qmfkewLeUMxH8nboJSn/DHkPJWQytDl5Bhz+3tYyVkQMfSHkYrdLOnLYiB/ScZcGf
OmXGqnJMk4G+ze+1tWpt0XfEfPTWH3/bcYU+w2w0+Bchkzrijvnn/3GC6eVoZJrlz+/3G1USwtJi
zUecGjO5otymhDyJv7/PxmMlJ1kI9r6B5ysxcM59fTXx9ipc0a7+FVaf45cfLheFZ1GqVY9SIj/M
kyBOP3sOA1MLZeN0qzP/5PDZQqU1tQjdibZhkv74ww9f1c+iT4YKYN9HQK40yNM1ueu5uRmL4Sg9
q227M59xr14i/HOUqEylax8iZFIROFhWyzo3AZArXYYuuSJvNs/VM72ANsiSv9O0+MagpodrT23V
HL5PvRJ8ZxXh6xK89EOFuXVkXg+mUcCdKjpRPVu08w8G4+IUSVvPKKoi132pPZ8Rp3lnipI+WrPx
PWsls0oGdgl8/TMsT05/CkcWGb371ITcnjNQZRXblvUe6eI85h3slNMoPAhivuN+9EthOQSCfIAm
RzdGis+nXLjiWG4KcHr6ZZ4safn24TeJW48/pcp0OH+gqfyIDkLBRTgZ3fDPI3NDJVY1VUTHl1XJ
usqYgnW1E6I0mrMPrJiHep26eRTHQIL9BKOULBJLp4vaFNMXQDo2oyV3GOmlXZjzwGOcQsGdHb/T
sCksTZQs4KFeqZFaZYv9B1gTVhw9WxymoF76H4x8fhmd7ajUJJS8Gv7vZewbkFMwuBRnFth1YP27
dYfEiwLNpcatHIBhn035Cctyd6OsU4CU7wSnsxscH9zDVDI5zTCxKoPICBqXq9byfV5YXwywbuc/
50r2qGJUXcUivzdAJ2HN0h1sa7NRiPmhBwxNmQvsCtiIpkVLVbX6C5Qzs1EXaEEQa+CVOftdoxep
VEV7Ol+/aAHTG0K4H68IvTBk30d2VXoyghF2xoSvxD5PtbEqDp08+W0PN+fGPoD4+/36HZUj/8h3
PRs1+FrU5y2LBeqLhIPwENW/nYlOU0QYQWXecHxARE/znkzoYogmW3NWaPTdjOB4OLDQxqD8+wBm
T4qts3OE7CbG1k+8SxwWKVXg7hlP5u2G9HshEIHZa73AjC88FxTGBcmUvK5pd2R7U6o5aZQI9LiU
FPgQKBSEBmCwQY4CJC5AD/v//2HahYtfNXpmGXgGVA4xdxr9ATsIvznn4c3a1nlYmrA+BzZ0n5BA
PD7Rdue359eGE98PfmIsNzTM4lQ0cqZZW4kzMfKXWKtZESW9dHT8aaPUh9qk3Qmigg4ASL2vKb4s
CEsnJDhan9C7Hy+ePWBaymsNVgJzJtDuN4h0yEfe4gmnB4oMAmN+jIgsCWrTfm1xmK1tcVOK9VIF
qy4/DUuOr+7mLJbcSbYVASP53mxO5GHh5SuRPDSIaXEeVWjiCqnlWPWFTg1X/+ujBnz231LU8Rcy
FE0dnhwcmgOWrJYY/ej+wDiENcbu0n9yZqrG2xgBimZgF956z/stHmA6l9m9rb0D8o5aDO/8YHW3
d3TnSZlCUl2Y31YshkM5abifHYqQeebS9IdQub5WGB9cBRiXBOTPIY6g0WBKje8EUW8mnjGTnZOy
GCplRPKAmxDUtx5rGcrTgVXFnSVjqXiyQMe+jahFDjo/ui6m8vN//k1VcK71E5Se4nzt5xNHE/XG
YvBRd9FQxkkET/DlsMLyoJk42QHmXsPWyH7i9HXwG1l+SEkv5RdYFv4dMjlNsVMWxt9BPN2AwXhU
fDCJdbhgYjtGjecQBNTQU7ylHwVO22edGgfNaD8SBQ3YBpJau5tZ0xdOxuTu5jgSUGAJzBPSdtAC
HMVBX1Wpu9Nl6pfh7EPxwktLI+y3sV+ClsGPP7o/s1WFEOswMTF+BlbSBu1nSUhvSXSZ7iZL0Tnz
/URaSYaVcRxyyD9To+8o6zDilmEdVJmt4FFjUyIq5HlcF0IGVzLCf5eR9Y0O/sOVw0oJv68J69K4
aCA8y7vmtTVlqBX+LS5nkOsjWxbcKL0aMmr7fnrfR/fyvJiz/lru+qit+UCIsKA8I+giW0YREgZT
JDz5VT9KnRM0NXl0smBknJ36fnnstMQXuEznD3aU/ETRs6mz6S4iWA3mXPxGycWzb93IyPlGiXHK
2csrUPOC1cZCbVmWV43BCSO4zX+WDEFZKj9w5zTw+LuzKTmO3XPNbQvKMioT0fZ2hCqxmxP0nZnT
fmjJBHYoWS6XopDdc89CgkpkWuxrdIHc/uykblLolWdCkO71Mdt7+TzO60iKgNXZwjkUYkKX+mjU
v+OkQm8hSDsGUYQfk99f8lms8S1iVBAxfOH5pgYmndM5yM5lVKv7gW/KjP76ovWFlpzVaxvgP4e1
tB9iMrXYcWPbGgFzKrVUygTmViW0yEWPsWLL5ULxRVUm+yTapsl0zLqEu+UnXZls1QUz7dotlgMX
7I9pUuPeBKXcaotqgfjjE6h1ru5uJyS1OjGrCE6Pv0HiUM03FmEy3SAhUq5sTSMRN3g46KansMfT
OmyEyhOQbzGlcF7yiZRAM3zRJmfZiXhrIsRZo77EF2N5jKeUFmuCP2x8YdNw6uzdvUNaXh5cdM/o
mf/QU0r3DvmSMx70ZsMITvvM3NNO9skLbOgXGYRJp+UI0MOCKp/9NT1pSUTsxbaBOIgLVaWkI2U4
ocf7eBw8dz4duTbwGaQD+5EVLu0uEAMslPYQHsNsWt65aHg87FegBj4D9aTqt9KoeFVawSumwkeh
Z7tqryONhXe8czISkru+OVtfYDCz+kkpHVsDXSkN/iZpRfewjMYXGfQHJZe8qDtnLd8znAGcJSKF
9VOQpUSOznDCOth892A+de24DmHh7LIM2+9LjITi4/mnsz4nBUOZGacNPgT9fu3J75XSyrTXuk0q
AXeylE31r3mjp+P4RqUD3tPM/qnzmjY32OJq0MH3DduI3XhhOGBSQTtghEftKLfQayJTfXoCWpr3
bItyLeEY0DYNjhkcoU+85w7oSoAjeUIc86EiLVI1szRhmVpfhjqGSu9hF8ooXxTBlky3hGpneMpO
VbraTPqVs59AoGZCeu12zaPe4uthlILxBeivAc8VBhElD+9212zkTWRQqkaOqOBKQKp+QTnR0sHj
sApPLIVQgOZXWUzEpnYsAs1Kx5Rmq12kifuQi2f+qZcQxOwB21A7XwIXlmn2SVdxct0woUTMEefU
k19Iuy3t2OKHrrLAk98T0hca/YtxzqkRPZJT0l1X/ye5Xy46dXbbxIGNmw5fiAc3g6lEUL/hRfTk
LbdcS8nrd1MP9B5aLlasIm5P6oqDtrzCasVOY5DQaQd4QKGdgfG9LGYmmt/nof1TYdquCaMwBcrd
6izYSGYuFKqe4Ls60bb6nbVV0lDuX/rvlixkW078M6wMnkgkF6aws8xYOKXLwKZ/jGYl/bs27KBl
MMXL7uYdv0K1oSsmeGYOE3O7y81lWVqC+MJqWU44K2+EHujOeF4yjisw2PO8GWwY5C+iGgu8/kLs
oj3bTfsUZMf9vvG14OAW1+kHxEt4SbHKvZe4TEjYEy76e2Zh4N91ydUVlLFO7s8cpDm5K9arIua1
ZswfpV9kr9CNu4zbLuRHrZ8v1dxjph+eZ2lXssXpQJoTtOskgYCLTMKsHiG/izgTYEH7FvzLA5FX
xQWrNAXhUJOgM15CwaKCuhI/rdJbvhGpd1ULCtA9RMON+xdGRn1/gf/9jvxhXkz2c4nDITAhUMK1
3yWBM+6CUzPkpSH46iEJWO9XTgRsOtIk7s/4gsBLUyNRwBLcFQqtTtplxZ9Yy7ko0gK/bhUyqndk
yAQpUQFcsh68kSVpSFt7vyva0cvfr4Wv7qzbTLvoDe8ji8xHz26skNxFyp9ZQaqPCUjB6xxvzN3T
TFpHLV1M1cNfk6Mp2eRzIRJEJnWIMfwW2MnC05JCFr3zefyrjZuAqfHCQHG7B6zRYcwAylzo7pAV
lWRS8M+lNtjsgA4KYsGjYj8oE37m7KbgWwcX1pEoF4DSeUPrhseOclnWzRS47cvvK34IJs0U5sMm
f5qOu5fpss18Xd1eajPcek7Z4Rs+pti4caYqS+oJ0qK9H2pAnEe4TcHeNHq8KLMTgfk+5f99szLQ
JpbeCH58+3zw7rZnLCx2wMwo11jZd65OHlajqxW2pK4I22DpYBuO/VWAfev057mSHIsD2e0Sj16D
VzhcYa70JwB//1VbI454nfPnhqTO2bI40MzpAhlTr2qJjf1Hb+rUVUt01ocYyM60s3+9OFmP1BN1
zAjSKSdYVynfYkEgwZhv/5v/G10NSfWXN7ve0ydk3LA86KuXYU+qH9e63qEsoibnGpE34NXz/lwS
gN90bzNTsf2B56BUy7+zNXejnhaIBZ6GXlXdT91RWTitWxm0f9CnR9xT3/vI/0vgYuf1D0T2BFAo
EviRwL8YwPZGrmA9S86O6NVseMp8P9yIYuylnybtNO/XW/qd9KuoxRp/ls/qM4mnN5Ezq5DqyYvD
apCdRQfSTpO/3O1q4qnwvjXpHBBRx4BGNEiXrzRW7m/dur0xRAgBGyN0iDIYCRVqagYYspEScxC6
oVBkknbI+I2uWS1qgrCiqnkrltRmF2u8qbm6fqbZdZAIfbFfmpuySu4EjJxe8hrCd2tAHYuYqgxB
qtWxPWK0ATPpkF1IxQ8kn80LqgMiEQARIbpX/sMfcA8/m+kscq0grvBDSW+IQN6eqSTcT2wE+IVW
aHC3ZchbB9fBox/PIU0MWzCBAP6WiWzonXisUMqCKz7lJN2tAnsgNLkHTY2q80Dt0DBUV+EPizt/
04wXznpJp3tEDcmK3Bk3xi+w/29LjY0mPLzuDsw7dMd/+fQZMfmNraj56I0Z/amkUTy2SlUMYdX+
Alkzr68gKA2aDw8JDn7p8LyLhG90ooX3nhzNfYW485PDWCIqdULRB4py96t4FuvX4+fazRprnrfE
jb0JoGYOrjShYcXh5m0kv2LZ1YZ60PVffcXqaqDIDILdYC2xpQQa2YFV9+LH04JPF27BV9cJHM3K
APIKb5QtcAoCmnzGTH51Vhk68PYSjGSUq00YCTagyYHEMCMTZAzhUXhLcuiWUR9YUHtcxE8SNlkI
3lntUUShkoaD2CSRX/zO0Ix0sAbjLupVFER7qcI+hIoq7Y212/oYRNO25sH7KTxZZuqUSPbhTtUe
SK3vqQsxwg3EZkEvNF9CB5jUlRGi2vOfyCDXoVZuThL025AHi4YacxNw4lkgyFuOMxizZE01SchS
ize2kZe+3lwdnF1JBxJJ0+gTnkCqrDpwWk+GXRB+K3KAvnrOF6J+yamOAA2jOtUEHBKoEUqidTC2
w1T0s9yBLzh8TEl3m+YMPlgRSRh5rR2pfI8DltopASTjm663qSOi91cuJD9tZDQuMt7dCT2S9fC2
5GgqUXx76fqcXX4ImbQdNICrux7KcC6SPsBzMQd/PqRiqfE41uKfb88BDRtW0jyD+fvLw9WuwatL
hg6XySSn6kZ+KZA3DVtPvQdqYehlk1vrjeyaKn6t5632au4rOCWr7yX1XtxN6HxzFg9aTFSbEf+G
d/to7+7WO5XjNThHSad/K1i9sJFB9ZtzEKp8UBm8Y/bZ8Fbb1xgfFAOPWGJ6ft7ZclzW1+vuAxZF
MlGOK2iWZLvzem+l+8zW+dCNwLA0Pb3XTgc5cuCnaK9F/dvDnk+0f+9jCxeNW27FL4pc9mh7Y8nk
8iNOuee0a0UC8b8Wszu89prbmbYl6m0jSfMUA0397xgEpkfktSdqR7HuRxKzEwAWwfFzICCesP+c
zRYsu05kFpVvaR2codUuubE7aaRkoqdn5ez+fWh9jGjdKJIkZZvS53Z7Or9q9oYvr/V3urXe/puI
AiRWO+Zzfe61Nbbl/s6j6o1B0smQu3D7NT+fGBOjbk3XtcxKz75aCQRWdk/7xWrKszzAvl51WbU9
ELZHBIFEPa5AaZBt/M+WuoKHpjPRH1p9n3dRb6yhr0ujN1Qb72oR7lWdVVyU3HNxJysZJZXNC33/
BDyQHizG++wuHsGtFsLWQmxbLWsbaytQpmLlChPSEyMq5KZ/AWwSb8+f9bbQM736Nm3KAh9eHEcq
OquHCpIR4Rtx5uAA9lxZVm9fXrmrdiH4+Uac49T0BQPnAgnpzvSmbDMotIsyY1IpJ0tJdJDrlZVd
NRiDBMQWUlySyjJdvSwnpU5OyHi5RjpznSoEzOBrzaVdSYCRvf4+6LUcXV0qSJav5wYzArbwajG+
0QfuYBBxJWzjuzf4s/DVoDHVSxpfNbV6LK+Qv0ciL20rnmiDnuhp6BOuMx00tenvW9dfvBnPXxyn
37LxUPTozidmZTnrOnX/4Y9qBFGf5sCynOc7lknnkgAhRLOuUk/cGVH1Wt6ixbbaNHiD1DLZ9hzh
OMxgR80huYr6zBkI8QI/Peu6NvCneQnsoYSzs/h4npLOYOm4NtEtK0pZ1woZNNOjKxn/vyIoHaq4
cD10VWLvl/VJNukjJGNugJ1EzXEdqpiYOS3asDvv3416mRsq7oriYvT++dj8e5Auq0ZESKlWzvI8
hkNelcNtTavn+f8ZdxD8Xu2PqDSD21Y6OpNYh7nMyvbp+7MsKtexFhBwi46C1KBkwoqm/Wj0A6yi
Zknt+Mmn+2UfsrVzZI9yX84Zs9RYwxbL+h64liRJtqaCzCX6tSSCXL5XDRyCCAaw7jH2m5DVRZnd
qVv9cJ0ZgLirZFyJXDdzYVnxVjpBWXu9XkZn5iZ5HfAgEdAA11J4RZvxg7wPMATW8WuFA8TeSlJs
QIpuvpluDrNtXO8lTXB1p60tA8XENpXRL9lPeJz8j+XnDeJ+00yu/aq+aMTwRCUpU7JSkLFXKMhe
Ga/+4YYj07wvFvEJBHynAzy81H39M69aoRoZ2+6No8C63dGwP+bjc+JbNGIsZx4/mngiYV7i3MIK
RDG8J7mvdTsPIszQM8wxyPdCDkkwyR9gMofZs4mVCM0nDChZaVEni4uJr9NTWF+J9mKdHwDnasjE
otgmzwB8/1cyVHVrRunGaTdqvqYxYk26oBV67UuQ/fh/NPbfr3NAX487P3UoJGo5f2D5UyyBribf
JlCDU04i1oxXu7QgPyoRbAsR6B4NcCT2zhiOJ5CMO5B/ccVJCViq7/YRYidNh2PA1o50xRYsucE7
Q93e0u+YMk75XrbaMSSVVbn6Fc84x81mo+/902RtT2oMlUgJbgsluobczsLsRlkEHTkmpNlyOXm3
CjUqj5Sq0qNQ9h4zzUy1ghqXqmNIErIhF/msjNp8dnIrCiYanVTLapoXMm6h4sWXgFBX9QVUaHoQ
ni/DHc4Aetyt8F+2WxuVi/Oa5GApuokObkeyUQKJuSQyZBxI1S1RNhmJOOeJXs2OYo6uUW7d3wQH
KLLwT/iqSixsVIWUIEqPYOXtNVincyYrxqzSprFi3TYtOg2IS7CUD4QJdC+CbMT+xQzdUkCEB27n
BDEy8Qjcxq2ZJlafSLLFb5CkXpSK/vcuFtcvddHzYUpf7sJEje58pswCLipNUJSPQcC7gtrkvYOM
ozAaw0WkE5KXk2opyKNS/jTjtIZmvNuzE3MMxYwZO6G9GNKP8QhOXUPPB8+Kik2X9Hmi85114i7M
wSagKvw50mjAO5u8IbrGXJYIshMYrHtLTZsWWdHob6d1I9ewJzCM7wzT4IYB6ufv8O4Zg1BXhkAv
IpOjLN2aWoyOvmgBqCENWlRFNnC8XZrx22FyYEALhH+AWFVU21vdxJFg2RB6E69oZBX7TvhCyVS8
/+Z29NnMPGjCc9HlIgS8AjJlQOxPY+85Be1Ur3FY79ngAYbqtGm1BeBGkn0ExQG13ZYzXEWAcx3o
iNvuE1HlAig9iFjJu9OekA6vJL+UN2aWXW8YUssOLkYdiEKQGYnT5kZdEJ/TXabhaJ4U6xtKRQXY
LmqL8uFh3nTDyg6XJ8c+75xJ3DfFz5K2L3wSFJTGtSF0s/Twvk/TCmJVkPek39zzcWsNlsZk2oop
0CXAn3RDSWAWU3Q4AsWpOyR5PZmUA+ajfc/s9jduEW5cdIB+Ur+iMxXeK8drqKa5+qmaFJwCT4zb
vagldb6KRnCqw0VCTNshLL6SV4wEXaBnLZM2PRL298DVoWeewg2VzvLmhQhtkNL/bIzlLfi+kwiI
j83j7STmGxGY7xlq++Cx69UU/xxjn4IZWuLT5eyaIooddW/fxtpAxOL1sEPrkmPhLpAiaNj5S/2F
HO+3j77Cid9bgGRGOSpwzRUUu+HKgZ+hpN203PFoa3n41gKVEoIMJNudDbPcThWXP1ExOVnShE81
5ZqLnDwrAsM6r7+D54TbP3Q8oENJUO3PkWPMy+WiLzPDdqAu6psoZgwM4kudh5zGoalZM0qnFi1T
iHADY1Mg9tO0qk2L//2RRlHfUTqKwDQJ8/bXAdGYWcv5XrOOBlQRyAhH7ELAc2Fjy0GIELEQq199
XQkEjpVKfFkVzrkdevKp8MQ6ZirHcpCTnJwvgOOnpMCO2jFZSXlsbm/ysQ+efeVPTAxlxGfANc7G
oHEcrZX9WrItvlFaQzEcrlCxC7duHrVK7WLeGI9lST3Ebzt+QjhHL+jkPjsGMzMwHrrJQz9yswN2
iROQkktN32Y1qtjWrg13YCptlNdKb9hT6vsxmglUlPC9zozzrp0lkNjhEholsiGSeBIFt9Rii6rG
FL5JZZ+1yjnMMLcD35LLUmyxNDhXl51rdWHqqGpeynep9K16POyTaR6hLQPs8/2UJChi1On+ABS6
GNYofjYO8hYWV3Cmv/B0+9b+NC3ss7TQvWy7FEa+6nw8AvTsf0WQ9A7ZClOCpNfVECcwNRNyD1al
UKQcz3JYZY1HefxkUVXLw/BFMObb2gjN7f3lat9EHgmRo61NI/3rz4teOuUiDKZkugM9g498dvE6
H8UdEOC3l4SG+BQrCmKq5lUvUY6JAmXaYNa8goBlPkt8Xk/y9sNSLqz6+HSyxQqp59Ee65Nvr+6s
FphChHIWcZQfWqvlfsA7OkA4sJ6TypZkGPmLyFAL5xUMpVloAPaJ90ZP+S59f2bYtguTo/kvCK3X
2VLbZmWTPzhF3C5b84aWOF2hWpCy2Mp2yO5qk1496anbBjLbiaWvNMJE08cD2SoUAcf5cAsHwyi9
Ds5n+qoBRyOuz6p4KzwR5hAy2GXFs44zPc5OY74E5jz1Zb/5fTroQgtrxWw+QLZMJGjukNftGhq0
S3h/+R01nT+rkpnosM9Bcz4Xni+7immeid2XaO0w9kWEmkKlgOoEbQRrMPQgR3bAeTjK0yEGV3pI
9h+U0oqXKn74aqpV1pO3FtPDWsgsLB9pE3suhDXTuhRmfLP16OxJndK50vemkJlfithC1g7wHtPW
/WUoBVUvd7kckzby3MxLnWO0g/frBz1vKuSpFH3z/EUHC/mhbfne9uYgl2S7PGrTLeYB9Dl82Dbs
xFosqL3IW/7qxzi2SIpimT2SE8TL00Vi7AwiTkDWcYMP36hM3fg0/zlIuzGwpZL3R3uzfSyYEsCD
mGIGV0LPHD5Eo7DjlSqxu6qqHuAQ1XSLQo2fKEJy9N2ByimlWhlojSnyn1FxW5040emmqF5O3w6a
1oSu/cmevNV2NXW84nJGWY0nMMjxQq1uWg3A5Uo4BGsJbM48s8bbzJisX5BHIMzgLJhX2kdbsn0I
CHMsXg4JJJ7fsxdfGo4Sqfvn7CgkoLd5lAXbr67U8cwVhjG0zkRc0DexqYtVjJuYcl5y9kNwmlNU
5AmvK5ZrI1zLm8V1m66qk/B4ih65hE2EYeZVW8J04OiRoXdk35Ly6g6G4/WkjhvHZlt6929GIX5q
jb93m0Rt12b0qoZp0hjM+5GJ1V/CYLkHHwTjIA3sijRGuRCR1Ll3YiXjMDmoBFZldl1aJ4Cep2L/
A1hKFVJQnj1bp88TlSmVrsOZDDdjxR+IW7qPm2pem313ZBcnlkWa+ucmLH+HZFrxuuPe5t/K8Kvn
ujjnUmEEj9T6CKz/LkyTS1ZHWYYn/WG6s6zTr1wBpl1vO/nOTdWKWLdLBsKMrYsTAUIdQly6CVb+
Q8ruSuVdJE9qpZnl3eC/ZlaIJ6D31u44XT8olYVboUO4BjeXzKwzWs4fZXzbF11ECIYYM0fYDoGV
0mjWtkykJOaEG6hWt00BwzDJjIn6FfsGcqyPmAefTAKJ4DT5nqSiU8IdQI8EelsUoyIQthGVmLm7
h7Kl1D8qySemLrW6E6FWOawIq8ZznY1ot0siDFd+4nm+J6P2x15qE/qftm6nKXGAqzsOoD61a8Gt
VfihSYiGNrFIjevycx/8MvW0fHnm6aHOUso9vaiAAU9GjELrmAL7o3XwaQ+0RrwP6XeNiw5KSEJM
o3sSANobZHlfGWhRBuRO/0yAR6ycOHZvkiVpdvWnVdh7ZWCkK52rvxJur8ZmbMgoU6bf13YH7jlP
k6nQ604vJQlrwTlK+Nhd98nsi9bv2EYTveLEQzDTNceG9DOg0a3438qXzRSeyEeqFIvoG1p89aUV
CKjHLQ2651pXjbgFYbRJcukK963OhphYHE6SHCx4TyrkMoGEyPQJvqA8KOycfrTStRpGouzWh8pb
Ho5fwYphFl5G84of5tcdLIXuyJH/6fra+tGdCRyEKVlJYG9ufbTeON8MN4cYk+qNwBBo/YAp9Ith
f8onoO/lcNIuwGGgiNDBAwTBO7ithbVmWUqCQu68i0YiGBvmMRuiO1mAg+7HnyS60ADmTVojp1+U
wnhgvQBUH//Rz6yQBS7XgxDZNiT6wsaAlyBKKIwNByvZtn+VPlNPzT6JKQWQ7EEESURzvQlZ7unr
VQASj3jy38AdpGnc4FeoUkp4k5d8moVUAEkcCpX/hgpSj3fRgV2MgqRd48i3L5NMutaCniTaqeyw
HpJD+IVklP4vGgaUPbz/iPyJqiobYG2xEs4N6W0VTGYavJ85D/rBGxvE54Ux11s6KoIKIMCyj56T
TGVyKHELmRWVdhfl96rp5IFkE1/xUnd4NxdOREugd3s0bnSnsNx8Zfz3bXZ+ZLT9S+30m2+zpxuW
3gNt80bCMqADGly8s9J4fGO1GB8ktvM+Gv7lB4e34+etjVv49ssD+b6WDy+v+TOu+RZ8HaJDPL3u
jBc1f7Pj5w9QGsm1XKRVzZR/kWmG5S3KrQo4j98uqhmyatnkb6bD0QJFp1KIEZGib6n+jbjr+dYt
L3BIfSP/F8uXXcbHuarShWwdgnODeOMFmn/hHYGKBzdKYZQu5USi0bQIRi/R86XtRb0cmElk6KZ7
EXMdOts5cEWzrY69atOPBethcr8n8NiQa+OWJ4Axf3pBzUi/b3Gxfr3LEzzWiu37Lp3BB9MjB1bu
wVrY1SKm6f2Q/fcpJuufwxR8Mlmm2uiZ7N1LqrhmFog1e/RA/bwfWcIRw0Su/0Ez7Ab3nVt5BpRP
Gie1HB54bfGOWnSW2mUZzGNWPCpCmWj4NeRBbNIfOsxa93rRlSTAPa3oGdskVvAjzHVRLDg1rGg1
iNBgpA9ED547WyRIrK9+0TL1qLB+0/w8urvJlROMUVbri/gtsMI+UMf+EHwV0RR8IvqJw0i2PMkH
bV9oyuyc/Xrn1rr6HMVINWW8zmmwbMdzrUH6GlQxELp929/uC//A32+NbC5FgGlYJycxZ2xLnPUy
hyfijODRBn5aLYc6b2VssRGkhR4DciAxR8OvDUmdnqMtvlEyG+1mZcV/q3ix6g+tmE9UxWmJ6z47
lrDWXZIvsvHC7vugE8uTmG3YyTzXZ3KTGKRsWBYPwgQ4VlAK3YoV9g5EYxJlTOZmdCgQABoI7jLN
s/q6XIq7LKHK+DfEwJKtCrq7N7S5YfXHgbsydhmvCShinYTZqhKlYbK9A8JBz/Uluw9MKsgStTDm
ReqTO0rymqOnFLkE3hMe3ljA/3afInNb4rWGtrB3czzHm58taRVC2QdE4QIylJtNJ6QiNAKkNe5P
g55yjK2mh5kvN/yx1XgQHuZi/og/AGkgz6UEP+HFuzH9eAmbWbVMiesrxTBhqwOUCgprIS96ts+V
dP0irk6ScVxmEdx5EGYKKka9GoWi/tO69ja00dWRh9sb+UWaUZ0hYREtrdwfFEZf/cBrbZ8heilm
LsNrFortz2xD1779+T2i6XGELZ44o40Bu4+YxR/96L6B6Aa1XrtZg77O+++3gfvsPWDGHPkeDMvS
jfxIlGc2X3YebktPY0MR2FDHZIvMguVACAHOkQ1qp4RI7GHrVvykuORf/7uZKczJaBKh10I9N7Zc
kO9xH2pLRYAa7PhQu/m+eDebelcX+NF3kWpWlveagtUFqD8qqI4KUx1vxIOQLmA1sGZRNpb9JfVi
AMXNh/qAgeR3gYPaNuvhH0TFLKIPIuZkkbmhIVq4LvNlRyIT+v/LoVBEJBGVFaxlL48r1nShkrJs
YabHKz0pgP8SgN0eHsWGqUEOxZZT750y7/4m8aTs5z56e+ZnPH/yuR/ntmCXb4m/udn/UerXyCS9
rdWstrVQ7uHBVe6O+Nu8Pr3OGD8BiTsN/+ZlBHU52cpe7gCpHNkxxMkpva8ruHIGBT4QVt3a0etO
se+Xug6Lav0EprHrJW0z0xdNZKYF7rfvDpUmTPnJ4aCwmp7eH+LTdqTe2KCwGO/OKx55Fs958CJa
LeZFnxgW477ML8UpZIzKXLwHvxr71/orpL/vJXKAiF6Dc7mAVIqJ0+P/BY4Mmynw8hjig8vSpSWi
Lf3MRZTJMuQz2XCJGvPUDfVntQhSVD7QqgYaIRcLc7kYF3AAKMCIWRVYoHU+hz6kFZcXoUJP4dcC
itXelcSS398F2IrDj+4mST8SC/yYjvjIlJaF2i/4PtUExPuW1y64T4jK6ex+rBtWuojyhAi/sc0T
4DLLiX1F5lBmZpY1cdjp36+nJMJc3XkuEtWnXgU+1ZSeViVNxHZIGIAfAERVno9Dl7rJ41HnAQP0
VofBW1xnX10YJAXPiRKourvQfn7z8yedrRhuzX1TSkxMqnC5LhCj/Q5oO8efHWH89kuYm7QBwfDY
ezn+Gkc4Va0I4No72iMkYMzwumdYbm4m+tsaijoNgO5ONVjdkZJlFHO9VGLmtkxVaP1WpUoCaSzy
hKDXlGtbqwqAQKLtG6UfxebvkX1xDSwpgmYbc+3nBclzqDfF8iV+4u5LRugBSxRzeJPU5odz3mWn
Xn6v+bqpioqvdqtzHTQpEGnsXIjzrJhmKka1IYdqkF6FjbizCo2DozLksBsxjCx9K60EwiZb6MjW
qdBk9SXl5f796eN7QZbD3jpgwC1YyCHdJ2EOjGQ3LhPm76B85rkAF7WfqEEtYNdUORqhuZWU0LPL
R3HiGcS0G9e4nI2yQWi4Nw1QmQAGjD7g3pzw1IDL8nml0cVhyvN3ZFAw98vKGSAF1su/b9m/gF6x
e422bFPT0eL2d0sjNKbSRIFSuYcGyHO5/XAyqBXL+Fq2rnvMh7hrH7+hX0wrDr+ZA6DgKVE3FsXs
bKEMKL2ZbzaHRlih74KVdCAcRyi5WuR2lEVvAJYhkofuF48Dnq7XPwZeuPrOF1vLd0YjL7MLymrM
kKf3Sr3a1cjkO5y3tbP+eQAo8fl8aq5gTQJ41WDIfMolNN79V9C0D07EpbcbDmZy++G2i7HISy9j
DTutuTTxzemVfmaUHBm+fEnVk3Mv7g/eDdpuxovy3++/FoOm2W2R8jj/lRxe9ubXvL5/iDkI6gTC
Pw7hlUeTDJM/We976jyTXNOdIjuGBopJwWJXzL2bozR9eetptYXtZiw/bqaPEzc45jvqGdna6OxF
MGTcMF7NCVd97n781B6/C1gEyo0mPIF1A5N+lp5ZHV33W7IGFQQV7tyFtlzuIf+ABL61Kg/KbwLK
z73wUYC3HXnR0Tm4P7xal/pwuGLE2T0pBU5Z7RjDB0PU2n+6goSyTUvOt6r72CL3LXD47dsl3fym
qc6brYsk7CN6TNKX0iGreeqv6NG+KYbtq5nWeTgXVTFpucNz50/TJjl6NdINowoqn41T2vzr5Uza
d6BaNfDEhkGUERSViBK0ZJ3nQQ2nP/dpRuns9Le5W+dpEKWespebpPb3kWTNnJbxf7UhtZZ6CDqi
YQfBEtCjIVx33qbMnHAeOmdc9hKegSBUQXrgVla/w+QopWCms4Ui4QnThUQzJcAhhbMNahKfpLjo
eTtL0rBfqEmM5EVeENtA4JJWOjlB3ZSFP2QfI8l5rWzOKr/uuXEHWl90bjAy0vbj9Z3XENgq/+G/
BIBjQo1R0jw2QAdc2S31mzLYJw2UqDmZ3DpcJQ1pU4vwizo9Qsn/ZpQtng++z4IIJMMhsD6dFXls
Pefw68ay8VtwhaZU13xxnjyi2ig7ThBlLTnyvyprrRKlisjEvqD8UXqKm6dquURz5gQDEyeRDr5l
Xdtr+7SslyIXQVueQEHJZxI1Hdwe+uebKOEtwfu7YrlKrOiCbJCgoM682/ZkmMyBBlgrzf7LN0dW
xRDjpMDdCjIqTPif2k2aU4nt0S6JsCLgfu6r2xrZBA+URrp9k2jYQEVR6S3aT+FxmQ7uD0KTHMyn
shI0JzxMWup6pStjpJR90QY5I+MCKRp6d9QYq2thOf3ZUYpMvTkM7Imhdinc6h+yLGOqlEhGWIO8
hvIRYzYXMbysT7bGj8JzPhcITTKL2v0Lcc98qI8al2hkc6w27pDhvt0whsNhYtClq8cFvMS22o75
6wiNRBZgaW6qfwCdmpZu/mTIv5HH/ZSe9WgZo986QpBFCjm8IJn9+s6+gDL7qmVyKjJXaVXk6C+I
3YCALcOSA6mV5NDV+NgFclzruXWh81xfhKYKOa+DrwVSlek8uvACbPCaof8LzfHrr9c+nudoapmx
ZxKy9R1IUQrFL/CkvNgM2dSJcCqcnCZYBD0JI6uMvUgsydddSnYwBBq6LMk6Rh/Wym6OjoZ2Ut2k
Y5YnncG9eShIdo23XNMioRHdmQysl00oJEdHhZU/p83o6hZpg+2M+O2yDUejoXnQW4/o7XmxbBoE
Wx4/Nmk8WeFzNsAOyQyeJsmURVM1+QLorGRshMny+A15luQn0HAv7oN0Gyy4CmvWSsOxgZ+vkldq
gXVM5vtJlcnwIgcca0qUuc64v5G9pLLS6Xdvycz+tUnGwTmI+Yk4OfWp3Y9drwJm77sTOhXkvvXd
InhEIEmF1REpxCiFDtuxQ4QOZqrWMSbt6IjwIUg+GPfq0DEVmeqqp7hKe/l5Bs/N2/zUQe/wn+a6
1XCXgfcHCRCgPJiitUd5miETLCRkdWLQjWnxmsNy6KWa4UKfiGxJIeNTw45HaTYHcAVubFRqWySO
SHnVLOgQ8rJsaYMKUeHuPAAtjODzhUht4feuudahe05ZG6A5Fl0vstld7vLJzcoZAtW6jUHVbDpE
CsAoQxZXn8CaEnDuKmHNgsK2uunCMHpdK7Haz1ViVqKj+DwXyTYZ8mfbvISRMCH9Y2t48YpUl8ky
bzF8Fh/tMzljmcdpLDhdBLGBxt+1D8G0oFwATQ34u+PT/UpehGxf4MfJP8Kuu7jyeeRf5mwTat81
dnTl5VHjEAn6OHe+RsmhJo8os8XpxeycozVU4+3mKxDOJbmb8ZpVSuehQTEHUzhoi5YNTKz+su/t
XGSisAO+rETZ2H1ZNHcA5B3+9AUtNyvjjfEvwQnTL0AbqrE7D3Ei6wB+MvE5lROo7F57ozduMcz2
MPNDCIDyQZzOoaHzuot3jW5p5Tb5fdaH11NgfQRwyrmhQ9gHrpbTCrpC1b1CE0haLZO6UlCgGeg5
Z3NjBjsRDsIb582OgmvwNtdtlIUV1xC05s+L/FL9g6Mug4iQTb1g6VkUm92IABqw1D15rj2gTRRY
1FrYx5p2gsZTKV9/jcFES1Ps8xE9B9QqijnZrkw91BYLtkHfIBpYG2oaaZxzIydPKYkAL25QFmTi
5MY5H3MAnmzZYFY0Xzi/m0NsU7mw5jygPqm36NWzvETX0X++QpnOxMrYrRQHtYMxdnh27VOFrlxY
sPshGVoFRZCj3VBB6witOo9ckKQCcZsizyzcD6dbIlCVmJxXbbkLzQ/6EK2+WhaFYcMRwvsdl3tv
GXM5S9GguRGJpyfUedpzNzlCKuZZyzgQnaRJz+l39IhCRqp3ux7z16MXRplk+zO5ORfjMWi4suBK
nKdubeJLXqVCecjz7bs2samMOzLTQC4zp3KN7+3NteIh1VK12xtuOga5O6vPCXFpGMkY2mnG1whY
FTdHOe5Qpl9ocBXKmsUSBPBgTsVbNjMHOv36Th7EIkxTwWb3OILR40Pj6SkTuIIu8oPLtKjAlbp4
KkzP/pCrY/KmX4bsT24ovPz4xp/l54JUSPXZ/9Y4354NYfG3NtE/TM8N3CTDgIn+LdTDKc8vYjwW
Y2QKMdo7411nclMCgFFFUVWFau6YlZwkQWmoH/EUY01Hf+rWBNGP/IztiXwQOL4TNZcTSreNYkzC
0al55WBUjIru24Qm7zriEUAqKgGlhcQjtHIf2Nxz//JPbSs9y03HISCXS9JU1+MZYR4ZIEAT5bA1
7d9l7/rjk+FuDndFSHaNeZ12z/ae6bCMT6n3Wirt1mg5I+2l6yVktIkPQwBRvuNvQndJ1hGpTKRT
h+9PHuBLHu0y8O1S9qCmYIhhVavQPJL7SvTTp+9L2ksyO16VBbL8Wn7SwzQIvm5feXQqkI1AcfWK
BkAc7c2p+f/r4ejM/nhdoiTGOsu4zRA2Bu1R/Vw3v/NGxMbNs5xNHElSLPmiZOPRvgGn2P2GFgfD
uiEM8o8LRDfaZrhQxET0ysVJdnf7wslohOSv/dmQaQXnUp3FswBFZdTMtTRYbcCLEI+xHzUPtd8R
RHtympKqPb1IsvhmQRkSxNfgRLlkyVwTtqaGI6OqeMOBJZCfOY2JKwDRz36bFXxQ9ae9sMD3qTTg
2HufjXjL6OIdqxNNIAQqWpi/k5CSERETsXRIyYFAKti3xdYqk7rpCIkd1vZeNOYMtmlEAf8VRrdC
mfOJjlMayVl75IZ57sO4UxOuA3NLjBYN908i8pq+dAO1eZjkIjArayD2bn8VEmW/xqVIAZiy+ZWf
mzKa9oDxQ7MYE0ThXF4klY2lkiU1TCFLvoQfurf4CrTFO+Z/+BBfi3vXDe3p5ulrGqsxWCnNadSo
NuvtSB3w/1ckiz64KXShv+Bwzgeubjm8sXX5WIQw6XFrRIB6kmEgHTaWcjq+7zKn5d+yLr2N+WDu
iNEEQ3IIi2XU+Z+arlJ699RGgwWDsRdMSxYEDnsP4WJAcxr9sH8Slks4Sje1v4DV1BQpZBafxQKf
hNopSSlt5wUa8zwVLA8mNnJxO8ZuH1XRfE+iorFoukUsaJuH8bAxSolixyTqACIDjBYIhvRQkWOQ
cfoQ+1lXLRhb+RtwhDCDk9LyByWv3x36DVHwTnZ/MGjDfY39abYxPQo60Y780o67ZzMhTalEdX+F
iTX8E5rhFDgjFISCFh74kSg2ZZuI+HjbAXQBW3JaMra+vjr+Cl3T21mKvk+2ntByP9WFL/QQ6/K5
V8BZZISehnpwZJn0p2/UMMb6itF3Dp92GmKBWFnsbgQSAcg6fTSIDGzVYWKRC7+KqUnc/ZCtWS/U
eLszKVRHnFcNCnoveCKrnWKq1o5XB1z84y+zNlIn1dUfTA4UFxjf6PZjJ4WGfr324OoBuuu7Ujnb
MPT5QjhjOiLG8tkTZ40CuF9o/8uNZTVBZR6bd89I8kgO0G/OPSX4yDPP4YnUCRlaW9/Js2j9in7n
xpJmp/WgxsHdtsIWHbHFKykIRIbIgxJhstETNIZ7K9ydSSn157K+cPqBxpa1vHiPQn5Jqbj2FRNB
ifpLwCK1wKA6pW0/s5CqreEs59oTXdwc5iXmAEiKBwnOHfgd2di+56m9OeUuZs5IcIyY9BMdavm0
UT1+mTGD6JtkLI5j3vy/RyHjk/NNx27HiXjktDw4Lg3tha98AfB+cNKDdIxFlzmscantNqcZ/s9s
WeskUyTGotgp5J8jU6EXryarSmBC9IBQ2le0FCZ26zNAh2ymA/unlBRbam+uwEzQOSWt/hCenFub
hF6dECayHdFGf8xlqnpzxMFvh3Tk5wRnqzIenBAeCHpDETWJdFcMNsZBTWpp8OT6a0mWrm+gW7BK
mCjwDHp9eYZy8KEjAhi0gGXX6XEZzTA0mIoaEWWGWnZip0bBS3ZFFVI=
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
