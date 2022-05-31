// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon May 30 18:41:37 2022
// Host        : sentinel running 64-bit EndeavourOS Linux
// Command     : write_verilog -force -mode funcsim
//               /home/ayush/Documents/Masters/ECE544/Projects/ece544_function_generator/vivado_project/ece544_function_generator/ece544_function_generator.gen/sources_1/bd/embsys/ip/embsys_blk_mem_gen_0_0/embsys_blk_mem_gen_0_0_sim_netlist.v
// Design      : embsys_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "embsys_blk_mem_gen_0_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module embsys_blk_mem_gen_0_0
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE WRITE_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
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
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
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
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "embsys_blk_mem_gen_0_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  embsys_blk_mem_gen_0_0_blk_mem_gen_v8_4_4 U0
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
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21440)
`pragma protect data_block
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
A+M2pki5sAY=
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
