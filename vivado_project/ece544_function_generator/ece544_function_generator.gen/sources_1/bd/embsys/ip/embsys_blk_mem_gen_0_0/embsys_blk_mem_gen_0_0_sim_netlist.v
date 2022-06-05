// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Jun  5 14:41:40 2022
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
afTZ1gdDGI1Fz4m4bx44UlO6Gp00BrPT318CTxdYTLY7z26aRgsfJ6eykAWD9Hr/V/ko3AH3LvY7
M2MPpIGZVvFdVjMLAz2l1RvxR772rXiPMuScGbhNgxmIWBoGFWjsbIHiwu82WdpcdbQ3vAMhrVjF
zoB6vnE8kjbszL8qC0L8zzSgemA70M192PufclMA+g8xkLiMkaBhaInYr3x8hb4mhLyFfwrx9ZDM
lTP1aHJVQFGzyausf+W28IY8vOOnUtqkw9UfkE2JGMrcrmhYH15uq978NCr6o64EsT51dEK5MQv2
Coyhs0N1oV9SgvKssPNK3okSyl04GkPrj+DJOmL3wzJPF+yIrcKNoA+TlHsn9AGaEoPoTe9a/Ies
A0lNi8f+a65SDMYeR3zD5sllnhy251t+dbSCrerE01Uol8oh+Q4KpDenW1ymdSdQIaCDLl/4oDY0
70I4QY5U7wqUb13qkV2ixRLXenCQavHKfk85g5e37wk7mAbN/9CdYwOzYCvNarX7t8N0Lu6fgJ9R
QOa5OJkvfQ6pjrH7IBj1BQCRRJP1V9CDCZjmlaFSWxqSoptm3YRpaINbCQ7fuvOruB7aUnbF9xte
BG7l/0BPM6kHDMtvqCRvDMbO6OpDIOGDTbQp5EJhmFlGai/05eZwRGVD8u9KIrEiwiSoiGprqTXP
IsqFkW1GGCYlQgucO1mZZnwFvsL0bsYFX9YbvA3vHWYgSETsQWQkQ4tevx47qfVR/r8LA7VMdVil
I3svTUVhhezTVQvZsIRl0p7uXvCXUv33IvpwIktMGjTYMJGhZc24aMw4vdh8xJXZNj0S9Kxi50zl
ycIn5rzRX7yYPz2Z1fvdWavlECIJOjqVeni/ayhkE+iKnumWXlBnUX8R7PgvXXh5Ljc/1eVNZY1K
1TFP5jw7K8yG5cNDxAzqcHtIUGu6HF1UO8BVRvYjb0SKx5MSymqml6IHQEKNJXwO7+1mIAZbHKxH
9Le+g09EZBp1yqMxuhEAd4MtAIZW8emSkNMFsNrQzudF7sQ7JBzx9c06l/5T1qjqSMDoThvRBju1
fb1G/EXxoQ+lIleJvAn/9KEHZQGoHAv31GLKGSjuk7yElkfiLgpGHaA8pqq2OWUAWwXZgRp4rTRu
mawbUhY1yYuc3X7BsemrQbIcNwIbr/gMpQteY6L+gPZ5+053FVXIx/ezFVNKeEsAwJeqo06L0a5V
a+PUVAHbZaL0xbtam8nB951lGWtYQ2vQ36vA+EXq86b5V8QTUWGVGO7OYoyq2RxHf3/a6jh+HXqQ
+byLLF2IkSCZiJZeyUaKv7jmUIkVYJIyGtiYoXhYKehcZFyyYnZuepWTAfJgsyrO1moSXEOW2BGQ
PP0ylC+7lzbb2IuD4DczPa0tUUMNQGcBY6yJGyNXumEvmnz0h/xlsEceV09ojvndYEXTZFtGMycB
k6/sIHy2Z8wMDOzQqR8lxW+7WKB7Tj68di8wSo7kxShyf1NVsLOJAqGpydsfBjWvwnzcLQ8nOc+5
rI40AESo/xTWZzBtpylSHNeTIPV6S4dtIyQIMXJJ916M8rAckMrJJWuI7RXOp+f/HqqDliHNvd8B
uDXUyunk0y5mn3le4yJi778gQRosrb68eoshrIMuwaJv/Ajf2KeXPuY2Hp67UxZ9uJMYoJDMXnL1
OHLE9C55+XOQiuc3E+cziULVSGADqNMPytp3vVZcPPqmmOChlAP5vtxnQRmBDZ4OfDFGVLj9DUHB
IpOP5pUnuyw3r8zsGPdqv8g7pvZUsDD66O3x8TxvdV3GPV4VXnjNoAQf7ExWb7l6LeFxGdgxmXI/
eIIi/Wgi1pmNItu20a/j80LboDbpC3nd3VA0Wgx46aS1iwwGnadMt9jxhT8aGaNyVpu4HisztaQb
zM83vtiAe22gJi8cV1ZKEEe2ZO1o7n6Iy7jjAJXz95lxzkkjLVBTrGddQFsRSgKJqUU+/J1KZbkL
yoPj8RS0+5IJtz69hj5P79oD10jNkQBnuEnpmEiS4bdZHG94k3YBTaH23h6ir6UTQUGL4qPgDKb8
0d/moSAqjZ+IbuEft4T6Ya3vaNpfzfN3MBwp1qXwWwCqR4fsfHPtAZvS8ag/nfNwI+n82uEqFNV6
u5ft6eqDyfxxevTnqgPQY6tTuA72wulAvXBJisNU83hmbpDroorHA5fhMrXcEgbMnePv+4eTZ7Lv
KHi4eJF91MLGcgBhM5pVyBf0UieKf1OOAzQHYK2ctOlISNk7Zg/AmsyW6BaIvpLISRllz3bHMD0U
+d1/F0L5AQn3iWXDBlhVzSMHQ4cIADtZosR62hNt88SO8Gq1N1RrsWVbAlMTBIbhGjy8p19SApZX
7igNEMPEQ30OVlb8YKasINGXLtqgJFsgXh7fsaYaa4yUFFKRSwMtJS0QZcXrTDqd5uXcze6puhl7
xOw2+mYFfhOrIEK/hXRLCcveearsMxeKoftmBroTcBlp9yd6VyrMgWNUwOIcPERtYYkp/RjSO7sX
/zqmw/+92+w4VljmK2Nao5qdc7gJZ3KvyBneOIfONMUYUnRrzdxawhJa8j1J0j3Y7MuuxxlJzwh2
j+ll3KMODVhC7HaKjt3B6GM/7UYBqjiKght6fTC3vEJ5seqBWWGih66rGIJSgRnSpc7AOxhxci+I
CnfCR14wFsUkjqXmocYtCd3BYP9wq6LCJNwlfsWhPL9leIdBqLA712tb8P8MmGPVzKJj955d75kg
Xpy/1Kr/t8vz/r/2/UrTbTv6VOpy+2821I4m7WzAhTI6/yH6K8A3VvIu2pQNHbL3pSmCooCwhHhf
WM/rttaCEZbkVC72qu/ls0AHqo6AvbeUunsUNSAF+rjvqLYYcLj8Hckp2lAddXEAaiPUR+kgIH11
A0q1xGiir1BkP+PEWj/pvreLH1n1a5w99uJvOgcuhFVckuoxbHuEqk2Br0Uicru+ehOj3rbh2Lve
0b+HzC2SvtesggSLsmsJF3D3mi9tfxtXz/qVZmR1hdZMZVRIqFIOm+nGixmzWw4IL/O5S85n+glI
hV8bWOAQ4PMII7SitWy+UmEQYKCGFjpOJB9POfxUSTUpdHugJoT2TUVZmg8RDrI4dlbMhf019LGz
z5wMU7FxznVcPM51NJEbi3U6IGzy8nw1Sa7d+bSAtxCytCoZdJ3op1MxUMViFcXkRk0gYMiMXbEE
B1zDKZCYCX3/uW7mX9o1ZZd4KXkIfNj+08m8Pmv+1gBoxGnkfBEKC+2UbOlZAhk5Dv458LxAcnH9
hzKAlTgq06LC8Y1v7q/A1i3rEaKzVAyUyOe7ntgmeEld10REdE/jBV0ScH/UNWIc6GIgo1Cioj14
V30DIxc4ih9+vKMickDRMj0lKhEvb0TWGe0eu1HuOqA9Eb/vbZ34sskKP6GE7FXRRtQKZJcypn7B
C1/bu04QYMv7Yvz7isidXS888fI4616xeI0rgYdNMCaW8bGRk0LvoNdeZUwXyDKLIIFPzXmuTipY
Vo53IwGGFg6tKqD41TzK0m5Ikf9gYQh8BXaJfDYULOPXUQGjPUIZ/WhNsTsf6vMkPprpZtEphfgs
muKUQT8ddX5FgloqdSihG90A/iHmC7/5JSIZ33L2sC8SlO+T9zepvFU+sZgzV03UR0EDfnkr2Rfn
wjN89n0vQ8a1Mz0jXmmX+uaP9Kd1s6mP+x82LWnuNwMTpVfZRLlf8k65E+KUtkMf5uQefMo2zHrl
n/c0y31k+xL5rWjCQzlhz+sNwAhaiEW/gx7ADE/mxhKNDVR9O+qGvtnfNriPrbpiGA30Lk+mz5cr
DlMxlEBA/7KFlb3jWcL4GmSbLEDdmLb8mVm+5zZpsu+bxdk6NhVK7M077tCZ1nKHkUAp0+iBWVc9
/gm5nmFSj2x18mmPbO9ub9jB4r9QnuDrJnNS8N2PPsBbmzoVp81iMnDqy7sVn89IgBGnEXiIKoqe
PD0qCwEJwmSucg4cqSzJakFBSmnwUhf0HJqIYEybfpT8icdK0+EDt03q0cvhg2E1pUyOEG5o5e50
L9CMs5l42bRzyynya7ps4x2mAt223BdEtZm08UxAmoGbYCGqVCJaLv5Uipnn4zFcOtYpAJ0PFkTB
JjOfSevaVYvxxWF+0tTTCCEclgGbknKuZ0tv2RmaOGFcxbvDo46yr9H0eBjGGSC1xZSgF6LU/o+N
DVpRt3N6FXSfSVrYeXcXEUUGm11uo7S42w0nBVBIBsDmnoOi7Amoq9slmocaESLW1UzoQiu6Wxig
3eVgc6yF2UUQUe2zzEj5XqBsH/VNkTO35ZyQvdiYW70n62y4EZO5eKdRslzHicf6rOqfUnmq5Vaa
BTKPLuHL1vLmcn36zYpeylD6iGj53BfEKDSHVqlXSwSHZeedOhnbSQHbnaWshLo3cpzbU6lTZWXH
gDfsTVU+Jz5j0P4nQV6//jTgM8+FjYH/qUlpRA5yv1o+3aFuNIIdE20CnLboyiPqWxdfDRuNfdTF
yRvlIYs/Bn+za5e8h5wNYLtQ1KYInYsFRCGLtd1os1T+x4UQ9g622aQXbddJ5gAOG8Eh9p22xn1H
Y6TELu0d2g4s3UYaxzOMvXbia+w3TF3IOV2r9yF7oygSIOo95B/fQna//uLAb8ZwnYfiRAKCmJxN
kOmqsEGMEDTvzQNawDqbP+R3AIPMY093qREflrZLyrmGMTNUflMHvzUh/6+R6wEoIWAvbtDO+NJV
BEsSpi83E5stFu1gTsS0ZjBylag62hqlu1PBQHfVmo84w9MCZjs7r/dzK421OcBL5rXgpIoCY1sk
liTTjrLs7Xm6XD2t1Vt3cwlOTMUQEGAVrkryK28p73esJedtDL6A9DAiCSjtK5WsnmMiQHd4nMIW
CnE+FBMHYUh4EKm0L5pC5IPmk8YSi8vocROhkq7I2anJAIGr9yKZrMm+LbepUnJS0+4794jrpG4x
tkmuywrqBDUifl/qg3xyT8SbQQ5glem4PBux/2mgbenu7piBYq3t/wxN373dE4NbXu6H2rEh13ol
zZlj9WMv0ycJF2TKhQggdKNedMPho9LMcnBEsx31QFyCuT8XwL3JTVeA8pjwRKGpMx20bWWNDJOI
GTBmPRshnkqq97orKslxP7m8WaFpMxPMB6AbgAgobueHAPyuso8AC/aSnLAZfZbsdXdukQ7/cEZA
S6FAiENfqSZtuGeZbgZiWXieUM8LPYVapFNqhC0s/2KMS/4XWcWXCWFseltZ1QEXW/USXtxCb3B6
mK6+ocK7GA0wqAR1BBPWuF9b+WurYy2yDVI4RqRWvuAjLm8Quk65Qkl/PWb23JlOJi5nW+/y1lC4
N8z75xO8X5iZ0QW7K0tFqLCHDyQG/TpRPe7QY3OXe5RZTsled9qDHUGmAyoNo2lMIx/2sxmp5U1e
h1mWuTEdWPo/KuQyBeaBroLelcEF/iHDLH/e84/ZHKIhKamz/RCQNIrz/kD15h5fYyZznMUN7CgW
PDL8Ruu95apsX4poIaBRiSsgFSWg0vJMYfqnROWi363DsunPSWS3ETYk4I2aIfCeXhLM09TN3Uwp
E6eyBXxvCHp7rP/SGpRYWWVN+Qb71p9nVELticS5hURAvsGYxnWoQTlDwuf0xvyq6/UJkEAfyXkk
9I0gBf/U7/ubkj2gfFaLBI6puo93bpmt/Eyc7m63JDLJ3rCcesmyzh9rqrlifujFBAxLUmAhWjTC
++X8WzUCaaXHpWWA3k+4S7TIDT8grFmGO4y9CHyH6dKtxbke5jvAIJg1ZKoPuuclPh+jrnL8hPGl
4juEi4xU68F8Z8ixvjl2OZQjz21lMQcdpn7BJnbVkjHQjXI3rdspIxOS1R+j0vr78aqniUZXKPAy
QrOMVw/NveEyzRV2axu585ZzSWvAO1TN5uQ56fNJGZRUcMDLr6t3lUhVkQ7+gpzzy7kCkV2Ez+al
mgoanZS9E9xBzADRwQ5B3Sw+ICLAv17SYbs6s6O1EZ6vjbnE/xnO3QnllXBDNyRa6275LNcLTqsX
Gtm0AjlJUqOtDxGWq9EhT/3WVAUR1hmY0zgB2SWcKvr+BO8oVJIrtkzij8Chj+Rw695qFboyN7NM
rd/k+gr5nSsKLJxDCKZ39ADxtm09A/BgT7HiPt26tNVgojSBB0Brq2SNrmO7LHgjexRoMDJRGWmo
femJEDYBYodxa0xVmsvYlG6MAvGNxynsR3aASIyozPfJuadcTWOtFspziwkuUSNLO5sk6KjhQSgL
n9cgjglptdF9WrQ4TXjSSRO9LQvRSwdKM6BQIbMfZaJ6rSPMC5T2D8v0nY33+MU5elq4ha17Ib0W
EAwuepwJQ71b6H6zIuxo5TxQLx4otebewANnWFEg+iUVjOz67pU437oGHvEilaWqK5Jak8CGkFnT
UAy2TeNBDdcXK/dv7jovpbdeiLp10DkArXOrKzxSK1wICw4Jh3+eQ4VDNseX7lDC1CG4z+kL5Ze6
Xzfl7juFsYu2BBw7CdLQozf3cduJEnhKeC+UDZ89kzaJg0VVAm+Jj+TLA/hv5vUCmiqqjkUM/ho/
iae9GcAJ2Ov7B9qJafgdf/tGsIfEgZYJ8xBfUAdPE0AgxoJJwJAVnlfvMhKHRzi1zvw4llZHAjYD
jpTSCYGQPgSU9BHBTpFSG7dScERbqB7kfqguFerJVp+GRW7CCJJTS8ujfZWtMMYBvJG+9eBqFaoX
6dJ88h56dN0EmkB6JnNqfuNl8AXZZixRXoKCm9R1yEQ3hZNaTiEpj6KgOCqL1cXYTVBJgUjGB6EM
IOPoyWOojoTT8h/gYbN3DJtmk36m6etTvnIxEGrNRwozSoDRyx0JXoUJW5Qkjc4bJB78tzUvPRQb
eL5XwkaLfmGivvXY3v/F0xHtgzeRuSt2WqMfSP903r+qKKYYvetatO+WckSjrIWvNqPmJOgW2Tz+
jsTccg/3JR7oTnGbyf+Wl6tms6y7Zm7IQGmDXEcKlZ25Orpf/zOp0fqgEdHyDiwZzcK+oUBXV3Tg
aHwiU6IZpwAisXt07KM2BfoMYRHO+tN5zMj/rDTSk0ZtQ06f2Vz+NFEJKbmZnlybvqWj/mrtt11Y
ZxXwEj9osa7Zdr+DCC1IO/lkV4LYpdQckV4SrmLKDPTQTHrBmFzwnUeshzXwhrXDQevJYjvhNdRT
SoKBMaK8M9ioww6qLm4Y07OABhbmWsKLKm8uELiim/KfCbI0U52LgmxmrcUsvLWwGN5ztHsr9rAF
5ON2Y5GOmdi7Ed44qVmj82r0IlkTIGMQtKR9174l4GfgRjjixYOqKAFyzZ7QpLPdh/9pctLHQ0rZ
s55yoV5I+B4W6UDP/XSw8xoLFWU8zBZm8uze4FFwJZmAzx+7/NfChHiOpmCuYl/mAYvLrecx6EQ8
lPi+hY9dnlc0chHO2DERwn655hMZjzxhqDUmWJ2wRrsh1q814Zm8XKgiAkamltWGmFzkCqGVG8uj
mYxTDuzEH89mNWtnvK8vPaLmeiv9s0KxzxmDII1c7QZ1KFlCllB/8Jq+3hqakcSaAEpR3WhlzXFq
ThBRVnYUjLyRSaJ6U+wP9DgUbyCO7voG1MAZajTr8fghH6PpekMS4ML4Vaw864DOimZj6iO/RLCX
Mp7RRzpIPl6cKkH6yVewu0hpn1zVZ5Wa3s9kQE/C3vJMZmejDzYVaQNZDMEEnUwlfvTpwF5b0nic
zSEkUWUoaHs9YXy9Ui8r7ke2p0LDpYK91qXvVtHO8xuI4IJCKu/DtYY0v4oClzyKAkBoJ6t9RIoU
v/4RUfojAOaB8hqaONQ2WV4MzHNxTK57DN6VsZmMkowTdjzyLIlhf8VWgpH0FUK3XHzl3xV8Y5XA
BFmGOdPH3/Y4MzVa2e8E+wD/T6q2DF2PglZaMfMr1C1iKA8Yl9mEsFgJ3Le/OwfCMJYjW7gnWw7H
cxSKgT+ce9DqL4i6P6Xmnr/HFZO7MctibRciFUbaj1t2tvGZUOyA24Q3q/5cBIKm0XqueCghLI1X
ytKcEwbJX16iLTZaQSP6WWel+x6USex2Oy3e3tGLia+bYU2RJ2A2cvBqG6MWPIjXVRKpIko0u6Pa
ezO9aj0Xb1qYcuyo3/DUboyLNXpZ+n3FrdHxNlxVePerrvtCuwo1Sy9Xlox+VRpRIlUWTbGI3RK2
srpi+sXMjY61ciAhMuK4dhHFHvLriIRA/n+n39fiO8y+SsXTPWrm8N9hFrHGyEdC6bwpMGwXyYbp
asVE+wSvyR+9x7LJpUwvh22F5/Y75aFReQB+yjzcm7h7WnC/p1BAV3Du/TedtSyqa8ARjIh2yvdY
2ZuvQefQKwitDhwgVIYMKCtlfVbny+aHGQ1DWTCoLdSXiWQ7FqqslnOm1c2pOyeqGgktqeSJxslW
2CRAT4zMhJhiHw/Hg2rgGSnlk4pTpC8LoV2KQLcYHR469LXx6bivSN2LM1W9CQgxmd+gI7hXLAjX
OnqiU0RQcDBirghNh/WlZi5mzAhQEK9jKHhLKS8EnhF+ehv1tJRtIMEvX/kr316wOvmJ7Bs+WbU0
GEbsj8vqwk5bMYK+pOBBg4ZRwQLD14GIqpW2Y3I66iIuLV6VqbG+0qdJTb10007/wFbr1+wxPLvm
AabhCLpo4isKPKa8pPyYxPranmAZjzC4mcRUT0lFCsxCI8sWkk+T41Dw3Zbz6Qo6JcrU6IUQm8gE
y1DBvQHvhXh6rn91insUqskhAVMvOgjYUDJPfO6XXkwT0/tVqi1ROEsvtj6sVqOwxEO3fkamFpym
4Fw1BNhEvD0NHqgZf2qUp7uX1vYQB+RJ1WpwevuezvMbAZOva/ygqNm4GFHbC2Jefk2etesk8mu4
4kwY2hRuUEKhJ3JeWyTn+VLxLvQWFDtxNPVIgpQi8fxnPAYvCNFrPeY4J3EOGMvbia0K/8ZpKGNE
2h2MODln3MWVZvWrT5jQPqP3ARDS4MB8DrOpsN6PF4ZfQR3AfI8k1dmpjHXDrf7j3kRYCytLlte9
5vJI/fS8BsCi6/jv4tWN2fK3spNAPbAuCz3crEFZ9rhEEUQdu4GQzazE29jhX/D5XIB9rdqWdlqi
MU81fhhC6wTvlLGZNJ9zN88MPgEpjC0tkv4NzMfACBzLym+e4S4/hagGbkRq1NdtX4w19qDnJVzO
5El4sZkXAqb30jbn48W8GU6SovSywn9huKzmD1tOpNfqKPJnXxH2mWmi4e2F8LpiYYqhnHGVFnf7
3SnBAggPbinm09n5BO5XMSq90aVUvR8PNTRk5g8HOfkg4wJe4aCLnD4h60AJjcYzFyGKMWqHVSYS
w4JlTYsNdrlfhXL4ow810lKmyIlB6/PKt1uC+u6XpSSYYl6uUqbWm58Jzat9jqsUtl0UnaukGZ4l
BRUDw/efzxqGADbA+b25zXYZh09fgsl5NUk1ZjAwDUp7CiaQ5lHmoY5tTpVT01qIWn5ElZlXtAKc
YFyy169+sVjWr6qXhR3CubXAGA31JENa0odiGBkGZ4evcNc2eqrgTAHSDxCgF9Xyfn5e13YHwJyX
0l8ARN+LS4jlMUJq/933EkdpPY7vRz5R2x7BEiqTlgnzzcJvXWWCw7bCWhmLLzXHMDkVt+uQH+Qz
aW0eC2poTxUNWkJnLT/6/1HTVMYSn8tBf+7BM75arVeE2NF7MQREDQX/gkTl07gIHJaTGIC603eB
h3/oDLTAJOgSmD+q0AmOpEvlON+STukjaz7/3C06jnKR8eWN3c36RYpk6FLPQ5aaK5TcRJFDE5it
449ke293mTmocStfUWb1DHpA8dEaqe7mDj4YIv8T1GtrIUI80rU0X7I2lIA+YFn4egNFamDyW72/
phgof1+HAmZRUnLRlwKYnXEqIwQ+Cc94frPU8Rmk6BDFvU0ldmHqXiCcBMtI8ACE/0oBB5a8kRRD
vWEM+3QzGunplV1fyaOAAi/8yXdj/6NpqhIlm0JSbEcrKO/5JLV9BvOAW79uiZOtVjS0DKQ32Yow
+FR+XHkp3JZeAtBRylvuBbeSuQpO4vOfXu+/hu2UTYNpiDmQlnr3aJmWp/xVcAzdcOMGoj/httT9
M13qnRi/VepgCxjhZhaDeHovB6MFviRdTIKP2nRaGtOhbsGhnLFVCykuqiNbk1Afd798hDnxg4D5
O7+QouJv9cA7zLEbpT+B47cyGpktTzP5E41JFSqLCShPKn6riEzN5ON7yCnAjiifIBNIOidjMUMg
j0Z44MC1vSIEQ7w3EW9JL3I9+sJErAoMPEaRyrcmHEdu4sJ33LLIQ/0/Cp6NWToZOx7BqxF7q32O
9Z+jZWm7lbXJjFv3N1GCtrqN45LXRVq6mhQIWbd+kvzqVKjS5lqkH6mFpgP5cFAVI8JL6Yg4aoCd
yP/ouXzFDqA94qRKreH9/6LW0oeVVjHo7HUsP2E1FFrTB7gpM7qvmms2oSwTSXYH0qV6O2WnJXoh
mlh9Y114Kk81lOOVOHIJx7yY6FsDkq4ZIGW0p2R/Rfx3L2uQ4S1UQy/4KX6liQpOAhnyN666eSnk
EQ+EpdFnkHB3k8EuXTwV/IhT3sKOgHV4TgQ+s+M/rUJqquI4/ZjRCOe4e9hmPym3+iK4ysWoOt83
DTMz18OJfDpXf0rL09fNhGGxzfQQcAg1Q1JOgt1yPSx1GJdxQ19xBpcNrhZQfh5UeVKHckfcMyBQ
Yr4WrGSQ6TxNHmA85EvwR3PIpUpNkioQTpgYLFy6YJN6P851CJymXChMmXD5GpU9lWcdx2CbKKaf
j64ihe+5XZ0VTWxiB2F2P38zml6vooLZLEVoH6/EY79Odly2/dXty/DpBRUUmCczAN5uKoK/+R6b
xHQk0FwoJ6zATfBbuzjhwJTWIIIeWreGgLGUbH8ULygsQLcBsm5W9j0E/KZIWmB0Lkf88a6a4OIL
2ih1zl7RmIhUOb/DaQEHDPd+UNixWDsiuPYBa3QtAuw6OsX2Li1Op5tm7+zVNzu9JuXAxiz5Re61
LVSLUB8QGkMADaI+GDS0TFfFiLtTqoFXxVLzEQJeFFUASKUMg1V5piyysxLqgJHRqw/BZAUqyZ/M
Xbg/lu6RQNevOn70Z3l0YN43EXE47IzeYaNSmZ9VPRJh6pvwmcQCrv0d8a9+mK/riyYajRMaWnaO
QXnk5gopziUFhMnj2W/FkvNGk9SexF5n8Nyy/tQxeEcjYy89gDITnnGXdF2BBaePH4L9k2XggGzn
g4UEaBmZYtivWge1lkBt8wQD5KGioGzFxo4cd/+vFI5myRJ7YWJEGAtX+DPvtsf1NBTirwKNzBNw
pGzlfbLQ2n9QxokQamXFxONXP0Udr9tdaDBACBol74XSvIMt4Kt6VNNSoQfVXkJt0I8iytbNQwCY
RID2i9z+vYl/1vMCxa2frA2WTSZ3nCgDSWMMyf+8ikkLWoOsbbVmkcAchpYhU+mUarUW4l735MdX
YJgqn9zhFlaoKkXOXLqTVQ6/X7xGlEPxCFz04X3ocxPVgr0x1KKWNLWfwio+RVyg7AaSAWiDjYkr
picNgMo0Wfe0XDnnxWwR6+rkFhS14P4nx9STlI1FzhP0NWE2uYlvW9FiUnCaCRKBmfHDF5S0wiGW
4EkflsAe/CniJrhWCKNnspJjS+35jNgpeuTMDDuuLbZg3CrqxJqqtHcm6Ib6SRzEcswaQH1peM/U
1oWb7MUmEtwsoiMzWulVY7l2G2CrxT54fIv5NnFnIVS7r97u8RMqLB8SBMCpC/NNURXG87ywhnls
mcOEKbDLx/pDTCLJqB3HN4/7D0hwMjJ5zljQUX+pQYcYzgEyzyHeVOXT4vKtnsc/Eeh4+ZPQHxLk
GiD3Sb3BzSfSo90eIDx6eDku4XsmoS/CCFu2DCnkZQpWctlOLBEfvH6irrwQd3EffG4aV1/NDGvY
iBOn/MuUpsPOLUqgDkyIiaI0CTTBc0X3T9g2wWQyueUsIiXJtDDJCvN3jyp+Z2m/WOjQ0SDTDNEF
fBmIACk1EY1xX/WvGPYCL7H62dcwJPpfRC1swT5YC111UnaK1cYEHyXz9JYR9qmzTZW7zInWd0dl
oTo4wFHNkpUF5Cl13aCrMIM28wTYGXsvzLK03wiLsSSGZLAmkONpV/8xEVCSdHEq0ECglHlGTn3j
WripN/m1441hNl4e/VVBp0f9tmvVBRDHAqzS54teqhpNkJtsmWIGa3TzZGPT0ca/SfyQ5pwF+W6W
QJK1EliB7qLQpzchvzK1tHcpyB0gbQ11TStjK45Sjb/05hVfAQb3AjwdYcNgRZNezBlZHRQlp+W2
/OE8yh6UJJJ8zM+WNvbc0XMO2Wk9ycV7CHwvP7DpDAIDOZdpZS7klmZe/5EUreSIawMl2k8T7gHz
fZ6VIvpcLoVAzSpUN8abUUfRctdWJbFVrYVUkoVoFMm9Tl5lhGtPEYPamaumAVtyuY90b/C5ojFn
RolF+Qtbn/uKnHUPPNYNuyfQSJMZS4KE4vmEpCNXEb6szBqKM0CSGBjJ7JFUgMzYiuEabGNx3vKN
EKnuYcUhj8T1HWfg+iS7IKpO+finuI2XabRUHY8i8R1iP9bu2odvIc/f5BMeykSGKOXPCn31KcZx
stUS8dLnuh82JRb3du9d2MaWLWM1z+fU/mOSkiDhjenLM7zXwyJ0gWrNbXxyQSytXk24bXvY2L4B
Z/8LF89lXVkGJg3007RErG4hoBciKlN2ohctJFJcH1CfxYGWqc7LsTfG0WW2gqLBzmbRQzhZ/Etj
VJfXONzr6Bro/j02mzoKuffyU3AiocNDsiz0fp035mWqMuG1aRxWy+RP/qfN6i8B3iY/XCzEbXcw
FZkokMa9Y8PIj8M6XhdLJ8OXwVNXsJ1zPWY2egbnp9N0SPGdsLJtdrrZIMLYPWhIA7PX9fFJ13T2
wUvArrRZ3dQhXUhkoIlfNRwCLLMttbQ0DWP1F8dkkTGiF1S2F781XfrCsfQn6Q9Lrc3qG2ftjsVe
CvssJhpVLO+BiGvtjHScSpBzJ53hwZRo7bCori4nkPihA9pKhM0DukvZlVE9KsojmQ4ZzjKdZKMo
M8uqFrtKXZGIbwTetbB2MVHaQDiBX+M7pKVvojEKy0rc2qcNblnQbEaypeJxwRFu1r3AnrlUTsRr
lTJPWdwAZm2t4C9Oef1ChwUZgt8xx+AmaI+JpjbLhVodC4ufw0Br1q3S3v3Edi6Sv87eIDUiEuff
dBG6mZGsoRYvIrit24Fm0t6m5vi54T0TJA/OI6ettSv8toTslENVx4qvxwYYMWIrm6EF5kvbrfsX
L1h7iuuWHBh2KzBdF4sW+uIR6GDe6Xe3ZwpIgay4oqRUxO+JAi2PJNHq4g5eBJswgtTQ2gRdQCbd
lu3NV5uRcXt3qTloOZBCXVxL2aT6/pd0kRUT7S4VHZkJ3WZ87gh1ETGNNiYr8ZTujahaG4lIpg2c
+ahfEiBwONxTfyRYnytvG3OzCbsQHdOOa81Wqjlk/2w6JT2An1XklQW5g23OuZfullqL66KMLIjs
XL50Y07FbLEp/v+3lBHUQ7IxexrIudOEfxHtk75DPADVz9uBiDYYC/RPQYhXAlD79Qs3tRJ4C3XR
lRPs+k/+SULe1RDARnwc/z/5j+TKS+X1Flkta8AAfkjXrZJVasbpJMaJ8bN3EFam/JjZf40mNfYz
6QS/nhu1o2MuyiY6xGLXqYYVPAi6DiusaQek9BtmqDNbVkT7whw56xWINZXwJxpHwkNNKcTd1+5g
fIAh/A2w7ikJtKDsGwo+OgoV3Gvvc34VUhabDE5sT/+5ILAqsTRktmlNtkAXsL9JYHPJz4DeKzxR
2YVJMC4Xh+zjinnt3Q6D2pyhyrzxSHsIa/kE9EtsA+Yt3zOdQO5+neuj9838OasCuhpN7lgpB3rr
j3P1hSyvdoUxoXqrvmBR8hznjn7TeTtx42f6kYHCPsNQjSXPZF8BJRQ0utQ9fOgcSQvBM3MxXhwa
VIh/+C7HB0Dl5yLy1i2DQtU46+A7f31IuG4rezyDwlaXA67RJjN6ALLu3Iz2pi7tI7xNTlqPVtHu
tlfWD+YYhDhEem3jZgNjw+ktGRUtbvA7XASr+ynulIsVAg6GmYbQQ+BEecS1VPiW/wbJDNrsN8O5
cNe0q0tMy06Pzlf4Zk1BfuC5wZsAqIGhmjEixRsYg4sYeLNa3dnUE1w9ejt+jLYOoPh7H6sEaY/+
5tPrOkYLD32bi3WrnH7Le5OfzNytFu8ivA+RexcMNWC8BG++PR8lT7HhBbNBBGEIBl/CHnJbFf0t
pJzuG32MzzoOyyouMCVDDbBGyABEmnUZyvTSeQ5xq1Sw4t28GpsMAcbnJNGf3+oCbseMs8Ic6mgn
JICJ4PjTsgCmXlJ1+gJx3e4jNT/z/qm7RwdgQ58mHwdq8OuYQL52mnpCVPkEGPMe4mjW+C7MSm+6
Tx0D6iIh5vP1q7Ef38H+wtaAKf2tt/ICPlcPMHea14wTlvSWBL3ZInhKwAjv2bv+TRhrNdnBmuBa
nM1ogHT0t4WqwdM7aUPgmXj6lSze/x+9FRmsIeLuTTLPl0d2pks87vd0CqWfAk7HlfaxDiGDSouj
tpdV5pCmbMJIEhX3zJe0HzkJ9vI/jBz8+5wF7FqUgHgDcOiyR5q5+4DjYTLm1u9S/dTViYpvzeoy
XdtyoRJlCYXeSWkI0U6+0uiuS8bdEpIm6ICwZhQr8KBv2I2qVuc7V0CYNYqubUjeN0eyTqlgdWiN
JOIB1FCmBYkcay/2BfeAF9oH4QAuRYhHG/wQZSQ/cCg3be5806RSkng1YGDrdyb164Mn1XDuOFQF
n0QtlVqZ/5gPwTZXM0tyXqKdzGejjYBKfwOWil3UOhmfwGI/++v9v+qXno3HMAD2/MdN5MIwgu5Q
L0phd/OSTi0zC8coDBxYp7z24psrO4W5c84nPNh5OIVSW3PKX58em+y5D4ZiLcHHRXiuQo5yKv/f
Af/R5BT7x6GfouWSnwl2bmQwEhttI535asu4uekiiBM4DYpFcIi0Gyy15W3HtMhLAdxxm8S/lPHS
8ehJ4lZVBe0y9aSis5Ejuea9lmiZvTpopXa8SCBZbX5dgo4za8WXEt2GHbhK+hGuXnP90oaM+JVz
aW7gdjhQ1lcdjPcmVLx2DmXlMPSWi5Y/m+naihcGzI47P+lT9vNem1JYEnOI39aMz6Dry/b2csDT
whK4p6gbvWkNP6wwtuQ+p0DvHhYJSsEDdP8xRc8J0y+jnwPFmhHSzS6fewF1MI/pxaub+3fZjvog
6Se2KanCsC99u3pTRH9Jp4gEUEJu9/nL/APXtbILL/niFnbNEAD+zaUVNLejQ68NJx6kCqP/C9MB
8qqjhXGScWjYR1sWJAQLGTir9AaZHhGCGohaKRFuJk7qYb6RoPl3QNd9qfG3wihHT7N4p/g3m5PZ
45vHPJHSloSPsfLIaoh63pTxupk4pu9U8aHgXvEOqQdIhN9rCY3mhvEOKWxVTdS8lXSVmd5lWVsj
13MqKO932HKe+zSyvyoS0nnjA5s9A6aP7nuZAUpn3W+w+M9DOza1OTm+fAXonePK89ibU/vOhGrd
eypoMrfB0MlgRlPfMp8uSs+rnMGsSHBJXXKAK+khsJfRtDXy2pM4V19fwBT0BruVbycYD+N7y/5B
GyM+9owPjU1SlaT2xRp9sx1FVO6tm4gVsT32mBTr3vhBQE/rBBD3K6Q8x1PFdvTINg0iCfTrpeB/
HvDZJr7OFKPE15aXP9gmnisaeHYD6cjO8VYdKvI+FsjwYP1MBN/gc6gdf8xYUaDVX6q81CLaAkOi
LAl7yDZUpgbbw5lVo3IHKSODxMOGfMygeoormPw8KqyIpshyf2z5FHVD9zLskmsVCP8Ix+SgDdM6
iZfJR830qGdLY19NkeMowHIesIyUNRIXG/VTBQoPne81dg57BOow+zQdITHPDpXh22xfmHxeh6Ul
hYiKvjA9Gv5rFNR1TE9RM12KbdJCbWcLHrA7PLrsoMEQTeco5sTjSksXNnBjL14Q6OQquKphZyQ6
Mh26iGb6Gb2YAAVfFkKSiif/jR4XADSZ768AwQpwZinKPXHDPHTRhbMbGuTY89nDZ/mp/4TrVUaO
OlyhJLRBmwT9gyBdSlf5xwWSGn7VqNN0C9K5O82TSrzXDn/mfVEknDccOGxGXzepCczZvvtAG5DJ
PymtDrTQYF9FkJDa0W5RtZPX+U90C1rWpdgIzb+y77E12FAkTIRMnpqNDB8YXKXRQR4AD3XYaLFh
jnflDPy1pqHz7FyZJyM+O8FS6mMiz/JA8Is1sWLNJKYyg/Z9Epew4UnIn78ZX3Kn/XlOrKk/t+U3
1hw0waeztQGRx3pdQ8moX7hfirfMJ6j00HtPut3cKhk63nS0e9iAAqWwQFhMYs0G8JYGWSZGRCWx
bzbcbQHginnvvZ07N7YHkEEvUhrkZHOI6+JuLH1iOAJbP5xF7jeQ06RVeqiXFjnOq7aDSecV03eG
Q7DV4qo/Hk3MaHue87niMuPvZ7F26so1Jxlj6beGaqjnBiOrGZl0CqJ+S6jZJiaOs0WXBC1zmEPu
sG8hLb4UXHKggFIiDEDC2egOWilp5RzBfbaCv3I7FsBLHBXlzOuJ+u8fhydwTDBT5pWdTgEioadR
J4kkHBJ5gtXKocpiTi60Qk3ras4rXt+gGysJ6/PmwU0p8dX+aWeVdCbJqI0zse5u5LBKgCnzsLmM
raNNUo1sD9pWZPZ7gFCcOAYPe50LvrDOd5n6uAZCz0jv+uFjt73TZfDphoScbm+vHLBixCW3QTGx
6iW4FltwEUR+ria3MUiaXUQqTIoid1kmnHhKBfMll7FLTXVaCdcF25M6AQxLiLbCBNjkcOGDGK3X
CNPB7euQPjPxVWEy2W3pIB0YUCpzyqnYQ5MYo1v4hoz8SV9I6Kll0DGm3r28cKdALiaTjShmKEyq
cYjn5yjWO89LXZDpA/mTXcvY+n3eP/osW6kTus7foczWbZeMQNdXksankswyqw2A1VUXFkxCnuiN
O09DAIL3FPgTK8Kws3jUGKo56wnoqHK/PlIpJmssYqeBNLwpr5GFcwrNBcra+J3Qq/HyXdnXLvce
j+38RgAJyPALaHQik7uHzjlWjsfJbtp+7Xo5L6VUkt8qHMuP3AhLXsPTcy+/AGJTPtp2BsTwBBHL
INHEZPBmvd6gNTEXaVDL/ukNiOK02HfQMq3y0+L8Xzpn4dRhmzv0vTWScjPJGqzTQ8/bGjoypTKz
xvq0793ezwmcFlRSUOqzAdMUe1GKZu4GtSR7K7aObs5rSJv5jl6uDXu4YfUxVt3u7TrASlQZcaVo
1Yfi+dgZMFjgOuKzbaBe4gv3/PI31aAyeniw6d/SWD6o+svN6Tdb1BLKVDKsVrPueHccmZz/5ce5
UPw1QHSNtyEXFoFxhUWH+103dnhU5FVqfb+qYHZaAil0e+lLLEyoAGbi6FgKK2E7QHFF5DLksQUx
l7GRJA2UNWEmySydlk0EqszmrKi0e92cBN0Tzw25PDOook1L5wme1LENKoDquneNZv5CGe9/78Jt
qrF9itnrGp0g04aCUpdEQn6oKCExrAlGsKB4gJJT5oe5SpXQqsC3ABu2V1fQZrFSPf/iZb1BS6uQ
OdPmT8+K9/SpfqnPT/45VpA++xrx1n7QYGcEUilquuKAKfhAy6P12AV/zxMNRbVLRj68o2OSgnQ7
HL4Rz9iDHi/G+mdMqdG/iipCsnSGT5erbZa+CT50Fbch2JHphAXEP8/nxAB+CQR5g1pbVE4YYL7p
jyroodWxcUhGqNF/WmfbKPCsCjRBd7NpdCGHGHkyQDTkORFIynIabvSAJRvAMVWjamd//QCVYq0/
1Hxrn9AJ0we9HtzDJ69GBNpGxpi0xgerf8uhx7cd0BvY9XsPaCMrk9zgvNCYnJz6sdI39Ptg+zoU
4CjMtuvVLfgnf4WXKpK8eM0ZaRpeJai9CZz2Yhb0t5pWDw5dJotl2YbcPxWHnDMAcZbQvhApm15+
6+Poe3vcdlBE/kftk7LNq3zb4yr2ieY66P/lBTpTLy597LS8WNZ53xtZ27yJbKNMjNrXA2XZUbhK
6pdthu4gu10mVMF8LlUiDAj5mek6rmPybVI+aivVIDwIsnhq1k4EClzHcXL+NIg4g7OOpgeXqSWC
nY3U4OPcIoFP7qHQZTK8XINOTTjUQtW5xiMJbZcWm5nEec+f4lM6OUHKvNVXbErHEIfJdRCLa9FJ
PM26t+J1wwaGo9ZiGGgCEVDxd4lpqqLYkkONwbk5oNC6BruFB2JoIU1LEgKbNqfwn8KhdmnCcq6t
WJayIglLszcu7bL1M60vJ0kfQDEj2G+D/X5y9sa/w4UePhl7mAeCFWdsitQPwyvMkKLT0ifwS6nY
GAtadw73CO8Tc5FPQ3uOrPfKefkldw/uU9RMfg2lxvoGAQXGt/61mIcu6jgQ9a6YeuVLTFni1hN2
PBqhAkv4bcUKKkhTJZ/kAxLY/LHFcFEyrtAvmA91m1wzIXUpy3LW6hIj6dIB1qGbF2kWBPIIMx14
bi3LI1nSA/T1w/Igw2TSmUeWjKx1Q9Yrj7pWRQBtyOC7PNqNuzpFZVbPUixji8x1RNh9iXLFqn0A
zrijT6+AciIWI+6U7Bt9bdmRoZIzBhULn5PnfHN+FEtQKaa5tmgliKZPDIlKMeZESQ47ULLGPjSe
akVYnnexswnlSfSOJ0QZpvforX0ceSN+BlwxF3PWOOl4nWfIfZoLxY1NQZtn5bBPTEey4YHtOquh
VmMV+YLbBobs2bmRQoaNxR8fI7+gSstzUwpeR+ddFDSMkTRhzJySVDhLksjvH7jQ7wPOp7GzIM8F
C7s7KNdNgjfhvJG6Xjqd4Em0gXCqBnBzgeIFYOPMmG3zf4bQTNr5coCIc4pHhyJE3S/2Kwk+ZdW4
dvXGX1Uo8hxBJWYQPJ5gdS4gLHPOQt+UPCrFu2YLHfdKVrqGfKsCO8KxFBXU2HNY/Bd9b7lL77GO
Jk6Q+ev960mFPJScuAoo75XjdPbiHZL8j2DXWXfvjWPObNwwBlDpKtXapXSHe1zUwleqeEVTgzqp
QUdXgkFKxY1zD3jT2AGis+Dj9lVuLZ8jQrT/WQcbJrJAfY5oxIB2TBOZUOpkohlDPUE1ZSoMqGFx
C+RPRFSra/gCevOIKyjvrr4LFDApA66FoEIlvmTUM3poMSS/5c7NL/4cvhOIS6EcLxjvn9kJM3ge
jb8cq6haqSQO8cJzlRIiksqK2tiIRT28/RZ7rjjKh7Al1G7fFhx4E09x71wHC0D8xsRfsuLlmpv/
POv+e7QX0hqtWzP4S+BISOVgKV5Y7aTrn3D7ZCUqBLGG8n2I6TEtYAYdw9y/MIcUD7hDe9ENRfPs
pQDIsRCVVJYmbf/pvIWNr33hA4Gpkzek5QPvay59gWVzGxD7WNBxZGjKm1xJoC5dkOkUH450VyPN
HgK3PFFjoaF+im3v1kbui5A36xOn+UcjBp6nNGflOl6e66DvgGWKVEtML4Kk8VkngAcO1rLyce8L
U7Sh91COKVhmdtXgtgBkG5xGdyG83IB1KFHqtS4Z5/5unetrZQLLm7aWzshbyyGX5WipCPyINnYK
cC26Ob1XT4vnhxQisvYatvZk0KGPAB7N2PSUg/5a89rAOTPnigtmW55ZL2sbN/KooJK0zzvSsYIh
7k8HrUClINA14kDPvRpWTAEFvv/VM+EBqxO2NbB5J8HNqhjOZ4tno4IHKe7t8pK+3s3YNWzEBa25
uUQHfebbcUqiFZf/7q0p09zNVDIWKWcPrEoHERDOGYeOt1R+h8RVaqhKUogfWvwq8cqvoyy/VH2a
rhZHUA7Mk22r2xfd4RZ3OBwgNlpGgLUIdoE++Di9RnGQvvEVbwdN0j7XrLrOp5ky7l2Hd0tEu/Q8
CYG6AIyuiVunWdM20sc7N1INJawxbEyv9Pi2/U7USoGUd1+eeewGSUtMInWLSpXsjmYPcqXFP4fd
nEGFgz+7yuBZaiiKGuZNQjpaekNqCB1MrvuA/6MN/ZwVlWkKg/iEeWOyydkvS21aQplFnMEdnyDC
4+85x3JlBxopIMCMLFoSzIT3wUkf86aC01CkjryDPLtT/vpvetCbFAslJaNRzpRJcVG5I8apu6Ha
uP5UyDDhqh1aipGYFVoc3OmEFCBMhVXZkJrIaiFFyYvf3KthfdrCvF7wAVkDdSUTDsE3dW0neR12
EaCjWo5me+u+R9DTjniZl3y1BC1TI9D//bAknnuwdSHzkqof6b6SfavqL4MRT6IZEfxJFpKtr6gZ
bJF6UlmTGDIS8WFRkp2NIVEZCd9h6ZjJT2OSrKgXsRnmcofDy0i4jqn6l59Mok0a7ZiJrqJeTUX2
DXQ4S7GB5lt5e1KamZ51keyoBz+hnQCDEi7Yoj3Q/2VWm5ctb6qqKMXt8WH+Jrjxxoh7GaydqfWZ
dg5MbZ/xEtifkT2v0pUQ1T/QXTCBau9v4mMGf/nTJHne4xiFg+zDidXy9kYkNj/v/RD2A1HXLWUG
MjFPc6g6lT9Ji7I+bA9WwM8q+LaV4lViGGIgSEmQy4yGUqav+jgKIpFMLD1AeOq1NH9M+WllcU0j
uRFEq9e13217nYs6ItgTFConVplD12U1ZobmrkYydm4xpo0JLK5JgXc3J4y0xBly6mpPqzn48AYB
GePat2SRqAdMcU2EoHohv/7ZlBTO0Cmo+ZdbXuYLNfmCsDgD1tv4H02KEyLVYuiMDxZyK0Go/sXd
5qGeKSX48gE22IvFpLgUWdu0QL2fRSxgNAkR2dltGM1Vy/Z7OPLpjZivy2gqElehJijXRSk4WsDl
5QY+EhAII+kLZ5ijgbgHZkRvP9sZKUZD6UfTPRqRJcCweRdPcUfp6djEFh7MacyCfUixMFZhxiko
yIjni4dAZ7LtcXdww8QIhO0Sn5O/MGdWfVZ8c/xSCBEfOTCeNtl/0QFgEsiEwRL34e/HbG52zncJ
4l3kuvsQQtsxPrpyxyo/6hOHA6VBY8rccuME6GbkVrZkD9pqT3uDimyf51HhOQvVDw7/qlMasXZW
RThj8sP7D03MRz3g3AG/pdsaSFX+kHj+col88j4pbbSjrwv7hU8pffAk0EIwGUyI3dHB5vi3yBgR
PZKcmkkKAgwNA+fkQBAeeELQlgyVAs5kf/6I/tbY3VSSxhKTkytQSP4zRXGvi0H1fHqi7lwq96gB
lpRvyg5PZBSuc6T84ISkwV0opJfg2j7L24T5A9m5K0XpvI0LbWLYgbO2ayFnSNron7Dk/XC9TPCj
YinyMH74fBoOg4MKI/oFzvT3zuC8zCW6QpzgS9mxCGdjXYXFn+NlyTyRc37HgIDC7gf9/S4iTMvT
Y/uO0iaFOYRXBw12Gj0DIquyFbrSr7HDYL2oGxrZG7xRmnKIw3tuph8zmEzttE1AYex6poLOAvS6
Ta0NfoM1ff6KdwQ4e3TqD9V6Vvf3YWrhjAko6Fu4VpnjyZQj5SlhslzRS1GOMW/3rqrV3duI74js
G3E2bOkiMSQFfzhcooW+JSrYE3pXZmnn7XKjpZeloN1y5ugden3zJeGtyNpdaM0Hkfcnx+buw26C
nGvK219yuW2N8TEBe0FxWB+fQQ2Sl3G5X8O9/sIrGN34IWkszFSlSxtg6x+vc3PX0SEuGUnA9tmy
IoHrA3gCHPBDI75QukBQpxsxwauOZKuGBAmyISGUO0efDElcUhmuAEN9/jY67AemKcTCi2/WBQeF
eqeco9qk0aTz+yOV/4EXxGjn154FU1jFFcVghoZ8v69ux2RYWrrNAt6K+ckdPDe5bc+pNXdhqRbF
2HFEANnQM+M+rcPdBLnl18o8brtEdCgDy6j0ezfbvQd9FgzKhhXxmlXge+/cu0mWb3DQUAYK4onu
FMTkJ6BS5tMaQ55/m8M7tHjebSZzMsjxv1kcqb+7+4RY7WhW4npWKvqQNhS229S//SBtu0KYw25Z
/3pR0oIlEm/qQ48lnK8Fce/jV2v0SnlpUbb8Ot0a/P1JB7cTXcGC34Ysdg2Si4W2d06JTXpGef3U
xQNwAsPrRGtEsPMF+uX3L+f3EW8mloYlqwfaDOb7YZ9MNBe4dpLB6cM/aYmqBwSDlEmjJ9kYfgVg
gJbX5GjN6fpEhPc6Yr0P6B0SfQNUtdaOPev4lPre34xSZtAKMQlagnN7pQfygAQAZohwumY1kYc3
8ici83cKbV/RN4VSqiv7/SQyTRu23DC2EIgLdFnet/EOekaqMRCdnz3csNvB/DVP28LEE6nQRwl2
5sUJv73gUmB8BKc5PXoNY7Q0DPE0t594A6LcVAgcbFmRjFFDlN8qlP4weYXXlyrF5xyVH0GzbfpQ
FPr7aqwJxgIi2u8Ee3xdurMaYbR75khBMXZKzmS3vadJXlBsDOqLA83aSJ44rpmDPwh2Cvgl+HY6
X4zC6wjQ7m/M9kB91bmKzqveGLfPH+H7UEZmoziR+keA6jn8n6xqIw1wbKGum4gG+JA4owwxUgYY
3vtw6keR+HywtrIi67S4Pgh2U7oMu+bpMdqh9DUl+Hd9J16BxsSpz+oVW8fgnwVwhdi3DH003Lew
kVibTgGDWxknW1pqURv/ededOkY1ZNUB2b7ig6BN7s/Yfzy7k+lv2I2/vGxWfqKtM91pxQaJMzyx
bfrrzKAfNGFrbQLMduUUP2OQFjFZW3v5b55EWhD5XeHPTLedXA1NwdJyBhQBlAvuoVx4fXfxMrYF
ATEGE6BgKEBPaCPL30pxQ9snx3iJRIdw2z54Ue4q/pW50iaQl0G0oFqipGom63fsPA1LzgcA8QN2
MjMya92nih4NvpoWwbynlIQXeYCnCEVGnm/LYRm+9D/jpaYtpziq8gE4GPyojfXKdZM+HqbYdHge
VBKEjVyq0spgjISyV9a1UAtq6E9gDQiypzrM55Plkmcg1hyeSSz9rNRA3Bq9VLV0E6nSqNAcsPoY
hBTg0x0v/M8vqhK6YyHY6Lt/iI6aGu1g6A6ZbuhZx7KFxDX+BeeXWoy2BwnDVTCEXs+/xbkIWpIV
OAO8YWvenT6og67CBc7otVnyARp6Jz/lPjhejH2ZhCcsHbSNTT61MnRUcW/GLbD9cQVUqJ1okjKd
qJGd3bPYYgI8QneuURApPhAWM3EZev2vWAP++WPNWJgAxuQqQZm2hZa76P5yGrIl7PqrOZV+0V//
gvK5/U3Qyzw5qxP8TsYjeTanpLTfmxK9HsU0s+tlHSk8b/xJq6tdUjKH+UqCn7croatYdl73K1YS
COGjlB7RiNgbjso0DLtX0tW2KEeMOowoL4BjPIwzEkljn3KrThDTDNzbw4IgVTN/keK01F5Wk8qb
ZDx2oJ+bZa/VusGmXsKGROifiGxxVPmOLUVqouODlTmsiIL3pc6cGLxtC7Cf4TrwRskVA3jwcbyv
4cel0gABZ7SPAXp1+7G8LestqxMwR2vWYwGCFiQbbue+D6HJJn4ySUktPVUb92G9X8rjQfuDnwzJ
fy0EK3gThWurghkNgB01OsUCB66Uw2NOw/SWfrXuceSBaQ0LWPh1CXWYahXfWQ+JVGvorrNHo0sZ
k+ukyw/jgxIlFmJwBTxSGjkziAjJGRBTTU7MvxdgG3fKNH6oQbHdBdoC/4YleGw9tjmNF6bIH5tD
r5QDgyFTfRsMnVXZxK8Uc0k1204s8K/n5ZyqcLQ1fUlPycMYBrv3oCGbS3nI2uoXJGufT1pQaK/P
VPhndHplI3cTvX7NGM0CC6Iqake9EMNuVjhGBElTV2V9g667uY0JBM1SEO7BGJ/HKoW0veeKyHsQ
MWG6IkU9C1yIw6n4jBsREYDFaFZh9R8tH65syG5yno4o2JwG1jpiUcNBkjZLvE7wr3hmcoTTHJul
BYH5hf6yRYnx6yL26bSly3ABEs4TkII2shDS6iLI7CJcDaiVpxHAuVZbFakuu6DotYc/scui6lPZ
0nn+yxoM+L2rW8RWSY7a92omb8JrlUrRf5QO4/YFyYH1sRF+GYf+1BrVU3+pFI2vZ981ncJxGjFj
s8E5sW7m+SZnoEUZlwhHoPmDI23GC8uz7D8K9mMgXAn8xqk95tM4V7ZOBvxseqH0k6iWmZyNCyJs
GIQZtTfdprN4A9XLBqLvar5zrOiyzmD/9KcJ+r2HtO6Sd0q2snJ8QmwNIZqNc9ulnpNRNyyMQYY1
fQKfxDb1oGMy0lLqujnqOVndAU8BKKmaYQOUMyWkGqTHf1MFuAULLAoDb6CU6k4XZhLDhtbjO2N9
XaKs3iTd4BwL3pLqU5QQWuuNChb8uj9AfKnB/EaTil/ix1Xe21pzThEuk6kWrYuZIXqplFHmo1cw
Z4KScqIHrpn0ans5G0GatdA8Qdf0kcy+smrnLzTeJk3PX2u8GxA8pRcsduEyKRR6JK3l4I6mq5ot
61Um95kgyCiATGpE/zXCxpIXccosouzCJGp70mspKWtpNK1sEP6jRuTPfHC2Try6ncl+bxjTzsJN
lJ0JKMRaWAo4E3oiAGfWzGwmOawsQ9lwfataxD7htSPCabmfQYCRtE3S5x6RrZgDaX1o4yJy+UrQ
/b0r0v8mCNoQsJuHc+1QRX6AiiXAylCc3bk5oYhCX0npBX3cS3St63sQumZ4g3jgEkVXUSTD7uTJ
xX7i+JNyGikK9LV42DfdLajClAp8QzKJXTn5yGoMXgTsOQOLPvUygK8GPLq7Tw2Yk+p1jb9wfS65
kpRqQfo7XkliGjMDEId7168vjIQ9f33QpeX2L8Yjzwk72eOvNf3eouB/7EA4zCaeUe3VlFa1m7ok
hiqIUwIZZL2ui2xfX+6IpUwDykD/oDFcAK/RGM7TOYtqmbhKMdqpeBQ8NSatfex1y/gwM7r1eVuR
1n3fx+8zv0+qVYIZAGw6CV3FNWKTu9tLWjhGpbPOOt3bvVPFcNqRBv2N2tSFQ/DaVnPBftK6O6qU
5KemuV9V0ZQBY16VKcW39lwyFO74HyxqgEneaYdibgcfyRJ+1SEbb1exyc882MyCSkRUn5epATZZ
JFdZgdfsghPcVNncWK8NH+TAqTS0kzxBwN/jZp0O3GoyDRk/cT3+MWC5VqZ5jLdKDB6ujvUmKI6T
w+2nZV4vC7Y+OOfw6nV40HggeI1n8Y5s+pve0/PFFAtkkKkJvo+20EwQu+UfoRo63LOU2DulAMUW
gzSeXqVKFNl8OHolZHxc5+2PjrtBNyJ3mzWrzsI4f5/RuVgMVpmugK5HCMXR6whnQftrpXE81dZG
E3plies70rl+bUbIQCZJcLQ9COuT7TeSH62Zy1eOyZWEvtueaqLcP1sAID9AzFiibwmg8fbN6v5l
th+xv7cioCnOGQHM9pioWzRuNHwdZZoIuLWJjxRrTEg75w/wYV6ZUHjXzyaAVgXmzFFxkL+3+WRv
WQidw8k0pb8VfS6LvNopboI2tAk7hV7+xQ7RyfoIZ/LvYa0Jy3Ysy41Xg7+chlPGyhUPfSeCpdW6
tGkRRS1J9yqZZ8JE7CSTNV/d6t0d31z7FaIaCiR2K9mdJjiLqoYhASm1NNKh8SCdd73JYgXZ5hG5
Mx5IivipKuGPL9lKOpWtVlpoMTy0XajJwMo+CHb5zjXXAPQUfejTw7CiOZkOlR++DfAEgsFxC//S
u4Cjk3eA10SUeSveOdKB2K7GTMXCmdbxomoCGcHcOc9nY4lvdZp9+rTEvYg5WVu7eE93Rt5ekjA5
KkgyYVX22Sk6oxncMvTrEO5RMe675XaCcdlYefzdBI3AYG3anlSjqN5BypsQ82LaCsTG2fPkSQMl
1p5yMun1msy1vTQj4b49C8YCyYnEqVGUhaVw3531XG3sUugCl/kK/jn40xO6hguXuHuqkaHmwRbM
3BCL4Pn8aHWnxVqxcTMvMm7NQPZrzA9DniDgXjO/SYTY8O76ZZSZ0JRHsfnW4hwfG4Qg2EJbWKcc
Fk7Lk9liIpI5U/N6RlivvSvDtYwMYa/I1T1+qo/hI+e/d0bJT/xBVdUulpyrtguBccIpokrqo081
FWNaUvzavVTs+2UI0LK4XooJFRXlNnUWVknsO+Y5/hnc+y86rsPAMbqX0b75Ut8w4VBQ/KR+eoX4
nDPWkLwVO+G5w07fkj1sSDWQUNqgUPngMfFUSEzkZNKG3RiBGuYu43/o1uW7R7lpu/rhoW8z3lFR
xLzSpkC+f527rgeQC6ThI2Vzj7fcP5Nfbh94FOrxSN1Q/LDpCirepl2iTQWfQgJsS5PSsLtO/a4q
g3C7N1mA6tZDspeglaBwIP1N2eAZIe//W7zAeSb0TnKqVlxqTZIcJUf6aKP/K/WUlR+BqfeeztUg
Qvwf9HksGgHrDUFEzYp/zvrV5Lx8/VUkpOkrNtNjD9uDX0lkbp/Zt2LB6J54dU2AGh/XjMViGj0G
heSU1qdHV9MoIDZgRwWXo2dJnXf3icFG24lC2TjUe9AEtxyWAlnZA53Ir3EqTnsqofpY5f+tiW7m
pr9Q/HdLmiFeRAzNU+KsHBY/QYNEPtp0gdakPSMQK9f8dgNMZOus07NFsBcxdCCzJfdCv0PW3HPn
WtOZrdRZhpd28b1T5isDOLRkGbEFXbFu/zIDAH2SJ5Ot0iEatluR1+5LyAoJSAAotFwTnUnu1jAy
1O5RPXihQgP9l99/2OyvSU3vm2rCSJRGAUw4NU8LZDt5bNbmouvX8v+oA6jkfjOfELP9g1TKw90c
PlzyCppZnXdiym9TOiCJ7bCYDMdcMbh21rd6lDnupfXHl9BLTJWTRRjTXJWDJnvBYRUubRrEGKSA
GQq/7SlN9fn8/mehcMPMDiLDLEh4Sofy9gK/Mnv6GP0VMQ9TXTK6c7HSaZd2w5NmyGCOjOmS5aga
9ejBZc1Xr+ntbN9GmXwB9lr52ULXIiG1yq0uUIs/uDDQGV94W7UDJTneDYc4Vk21G+HaVgcrtuQV
fub3QINcKMBIRPWGiKib4lHFtQ/QkfZBz3d2rs0ONV+vmP3yLA4h6WTVUSrJE+r1lfdnP037M73K
Qks/M5paIIFnSS1ObXiNLRglOj95qckMrm0KajXC6xP3UJ741QCg84AnXtem7p5Xk8y5Q2COKXZb
th+bbLvAyKhG3emakQlgTo7SQ5fFC63Q8AQJgt+WiGD0v0smgYbqDHsgtNMiL+QFMDJLuoG20ZF5
eX1yqD7li/ESiG4xcULij66rMCqwjdmy813bG3PvvLoSamOmsbdpDQd22naFVeesx4pGQc7/eVNH
kILrkbk8CnibT2ISWn+RBQdZ5RJvzbq059QQtx88Unvum2vJF8oF+08TUNaA3VklaGKfeeduxs2z
zXL0OQEKYhrTzQkEVjwZpGJrQYibemsBJb791qok5q7COJeP4KUZ7GGL65inPoAJ8fm6QtfsixLO
3bCKxRxSz3rQgKMTatigu4pd/8tDxus2k+ja3X5GAidLsnlq96ImnsImhLDyN+WH+TzjezoYlCJa
SgYzszY0GAP3r1f+NWkqx6zGSMxTA4KNLZh268qWHqRd22gXe3qCyn+20jtkf8R0oPeMVMAHjsEU
7zlYqHD353o9drQCYXVhRwIrEEbrw8KUPqQDGaJwJtQo2Hr+m8szq6RO1ZzuVXwuaJk4sGuuSOtE
Zcfznfa08fDxNA2R68UfjLqrxCiVLAwWDpGWP5+zrfJyK6KMWrI7WBj0pDLYIGdJmT2v0hvQ8qzr
Yds4CcTUllGg3fM4nPG9kqaYsB596e0fXIN4sV+gNoXUYKPTozxwUqlpVC+uA7qud4LQSMkrFYEC
siwe6/L1EGZpaudltsy34j25y4eutixxqe7cici4gk+2Kb+RpeaK4ct7rOxpo/6jwihQ0VZixRqz
f1OZCgLeuP6jXcvXLG6MhsZQmCuyQO/wX9+fNbTgmL8hP5NVoGgrb3ChvMA7gDdf3VJtSEnzzwt4
GdqvdZE8a7AiI4lQUuWinmG/DMdROENfLfBIgHIqXMgGtPG68H3XQWTJffhYeHqKK7AmGOsUn2Dv
OA3uhqaNJdONOD5hNjE+BqS7x/Pg4G8npbKhRThJQCpD1d1q2T2oDJSVu6RrCvECw8vEjJNR7FyM
z4D2ytgXsrG1u374ud8o9TBpzA+PscYU+vilIGTsHnoTrin+B+WgAUZLQPdF6p8w7bDk2r/2J0u+
EbQseakI+hDBHQmMwFxvSuzq1JKbdK3jTdWODSnnUu5iEa+hWpjmG1dfzQ9t7/ESR96UoChPRKsG
Hzqs8Jpi9XyQzxyOjj3s7oPRb3nlVa0QEDEilI1vKd8HXjubhRD2wNJioP/21NOf+S3/eNUKIbCo
5bGwYOK1DsPgbMrAd/OanpQK56UUnUKsbSB36azRyJHlGzxib+b1Jrf30cuTkNaGGh3zCBMkIteT
L2C1d+Bb10nRpcc0xG8CpY+56sYJW5M31IkzvF05sS0PMXabJSbipRqWLf/hq6K0RRewsNh9vIvW
MZbEPjZXzoJIN2tA96H60IBllyU/E/l/BbjNtJGsOI3eOf9uKcsfcInJ2Ez8r8TIejkbHMRuPHKk
OANqPVR6AbJJGcLJ9wWd2LwqamZtfZEYuIYF6sdcDUudjcoddP9x2tp2yOjaHXLcmLOGQQkrtVCM
6kRx5Zz179d0EqjDn733JLPS8MdIO/61n2xD+gJdLmsudKcZ1Y8IR7cI+vfupY4wbi6zKl8ZQ30A
Zm4/o45ZdNE=
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
