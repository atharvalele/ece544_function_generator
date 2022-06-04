// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Jun  3 17:54:21 2022
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
bR60oRdw6KY=
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
