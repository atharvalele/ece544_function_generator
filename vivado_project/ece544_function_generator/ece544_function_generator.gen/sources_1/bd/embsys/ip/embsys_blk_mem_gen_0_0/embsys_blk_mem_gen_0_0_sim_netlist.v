// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat May 28 23:20:43 2022
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3933 mW" *) 
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
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19840)
`pragma protect data_block
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
Zm7XPg==
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
