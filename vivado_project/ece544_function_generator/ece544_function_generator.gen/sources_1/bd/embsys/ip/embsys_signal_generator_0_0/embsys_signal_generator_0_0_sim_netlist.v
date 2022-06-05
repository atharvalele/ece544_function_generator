// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Jun  5 16:03:39 2022
// Host        : sentinel running 64-bit EndeavourOS Linux
// Command     : write_verilog -force -mode funcsim
//               /home/ayush/Documents/Masters/ECE544/Projects/ece544_function_generator/vivado_project/ece544_function_generator/ece544_function_generator.gen/sources_1/bd/embsys/ip/embsys_signal_generator_0_0/embsys_signal_generator_0_0_sim_netlist.v
// Design      : embsys_signal_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "embsys_signal_generator_0_0,signal_generator_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "signal_generator_v1_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module embsys_signal_generator_0_0
   (addr,
    din,
    signal_waveform,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output [7:0]addr;
  input [7:0]din;
  output [7:0]signal_waveform;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire [7:0]addr;
  wire [7:0]din;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [7:0]signal_waveform;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  embsys_signal_generator_0_0_signal_generator_v1_0 inst
       (.Q(addr),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .din(din),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .signal_waveform(signal_waveform));
endmodule

(* ORIG_REF_NAME = "func_gen" *) 
module embsys_signal_generator_0_0_func_gen
   (SR,
    Q,
    signal_waveform,
    s00_axi_aclk,
    s00_axi_aresetn,
    \set_sig_type_reg[2]_0 ,
    din,
    \set_freq_reg[31]_0 ,
    signal_data1_carry_0,
    \signal_data_reg[6]_i_4_0 );
  output [0:0]SR;
  output [7:0]Q;
  output [7:0]signal_waveform;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [2:0]\set_sig_type_reg[2]_0 ;
  input [7:0]din;
  input [31:0]\set_freq_reg[31]_0 ;
  input [7:0]signal_data1_carry_0;
  input [15:0]\signal_data_reg[6]_i_4_0 ;

  wire [7:0]Q;
  wire [0:0]SR;
  wire addr0_carry_i_1_n_0;
  wire addr0_carry_i_2_n_0;
  wire addr0_carry_i_3_n_0;
  wire addr0_carry_i_4_n_0;
  wire addr0_carry_i_5_n_0;
  wire addr0_carry_i_6_n_0;
  wire addr0_carry_n_1;
  wire addr0_carry_n_2;
  wire addr0_carry_n_3;
  wire addr1;
  wire addr1_carry__0_i_1_n_0;
  wire addr1_carry__0_i_2_n_0;
  wire addr1_carry__0_i_3_n_0;
  wire addr1_carry__0_i_4_n_0;
  wire addr1_carry__0_i_5_n_0;
  wire addr1_carry__0_i_6_n_0;
  wire addr1_carry__0_i_7_n_0;
  wire addr1_carry__0_i_8_n_0;
  wire addr1_carry__0_n_0;
  wire addr1_carry__0_n_1;
  wire addr1_carry__0_n_2;
  wire addr1_carry__0_n_3;
  wire addr1_carry__1_i_1_n_0;
  wire addr1_carry__1_i_2_n_0;
  wire addr1_carry__1_i_3_n_0;
  wire addr1_carry__1_i_4_n_0;
  wire addr1_carry__1_i_5_n_0;
  wire addr1_carry__1_i_6_n_0;
  wire addr1_carry__1_i_7_n_0;
  wire addr1_carry__1_i_8_n_0;
  wire addr1_carry__1_n_0;
  wire addr1_carry__1_n_1;
  wire addr1_carry__1_n_2;
  wire addr1_carry__1_n_3;
  wire addr1_carry__2_i_1_n_0;
  wire addr1_carry__2_i_2_n_0;
  wire addr1_carry__2_i_3_n_0;
  wire addr1_carry__2_i_4_n_0;
  wire addr1_carry__2_i_5_n_0;
  wire addr1_carry__2_i_6_n_0;
  wire addr1_carry__2_i_7_n_0;
  wire addr1_carry__2_i_8_n_0;
  wire addr1_carry__2_n_0;
  wire addr1_carry__2_n_1;
  wire addr1_carry__2_n_2;
  wire addr1_carry__2_n_3;
  wire addr1_carry_i_1_n_0;
  wire addr1_carry_i_2_n_0;
  wire addr1_carry_i_3_n_0;
  wire addr1_carry_i_4_n_0;
  wire addr1_carry_i_5_n_0;
  wire addr1_carry_i_6_n_0;
  wire addr1_carry_i_7_n_0;
  wire addr1_carry_i_8_n_0;
  wire addr1_carry_n_0;
  wire addr1_carry_n_1;
  wire addr1_carry_n_2;
  wire addr1_carry_n_3;
  wire \addr1_inferred__0/i__carry_n_1 ;
  wire \addr1_inferred__0/i__carry_n_2 ;
  wire \addr1_inferred__0/i__carry_n_3 ;
  wire \addr[4]_i_2_n_0 ;
  wire \addr[5]_i_2_n_0 ;
  wire \addr[7]_i_4_n_0 ;
  wire [6:5]addr_end;
  wire \addr_end_reg_n_0_[5] ;
  wire \addr_end_reg_n_0_[6] ;
  wire [6:6]addr_start;
  wire \addr_start_reg_n_0_[6] ;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire \counter[20]_i_2_n_0 ;
  wire \counter[20]_i_3_n_0 ;
  wire \counter[20]_i_4_n_0 ;
  wire \counter[20]_i_5_n_0 ;
  wire \counter[24]_i_2_n_0 ;
  wire \counter[24]_i_3_n_0 ;
  wire \counter[24]_i_4_n_0 ;
  wire \counter[24]_i_5_n_0 ;
  wire \counter[28]_i_2_n_0 ;
  wire \counter[28]_i_3_n_0 ;
  wire \counter[28]_i_4_n_0 ;
  wire \counter[28]_i_5_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [31:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[28]_i_1_n_1 ;
  wire \counter_reg[28]_i_1_n_2 ;
  wire \counter_reg[28]_i_1_n_3 ;
  wire \counter_reg[28]_i_1_n_4 ;
  wire \counter_reg[28]_i_1_n_5 ;
  wire \counter_reg[28]_i_1_n_6 ;
  wire \counter_reg[28]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [7:0]din;
  wire \duty_count[7]_i_3_n_0 ;
  wire [7:0]duty_count_reg;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [7:0]p_0_in;
  wire p_1_in;
  wire [7:0]p_2_in;
  wire [3:0]pattern_bit;
  wire \pattern_bit[0]_i_1_n_0 ;
  wire \pattern_bit[1]_i_1_n_0 ;
  wire \pattern_bit[2]_i_1_n_0 ;
  wire \pattern_bit[3]_i_1_n_0 ;
  wire \pattern_bit[3]_i_2_n_0 ;
  wire \pattern_bit[3]_i_3_n_0 ;
  wire \pattern_bit[3]_i_4_n_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire sel;
  wire [31:0]set_freq;
  wire \set_freq1_inferred__0/i__carry__0_n_0 ;
  wire \set_freq1_inferred__0/i__carry__0_n_1 ;
  wire \set_freq1_inferred__0/i__carry__0_n_2 ;
  wire \set_freq1_inferred__0/i__carry__0_n_3 ;
  wire \set_freq1_inferred__0/i__carry__1_n_1 ;
  wire \set_freq1_inferred__0/i__carry__1_n_2 ;
  wire \set_freq1_inferred__0/i__carry__1_n_3 ;
  wire \set_freq1_inferred__0/i__carry_n_0 ;
  wire \set_freq1_inferred__0/i__carry_n_1 ;
  wire \set_freq1_inferred__0/i__carry_n_2 ;
  wire \set_freq1_inferred__0/i__carry_n_3 ;
  wire \set_freq[31]_i_10_n_0 ;
  wire \set_freq[31]_i_11_n_0 ;
  wire \set_freq[31]_i_12_n_0 ;
  wire \set_freq[31]_i_13_n_0 ;
  wire \set_freq[31]_i_2_n_0 ;
  wire \set_freq[31]_i_3_n_0 ;
  wire \set_freq[31]_i_4_n_0 ;
  wire \set_freq[31]_i_5_n_0 ;
  wire \set_freq[31]_i_6_n_0 ;
  wire \set_freq[31]_i_7_n_0 ;
  wire \set_freq[31]_i_8_n_0 ;
  wire \set_freq[31]_i_9_n_0 ;
  wire set_freq_0;
  wire [31:0]\set_freq_reg[31]_0 ;
  wire set_sig_type;
  wire [2:0]\set_sig_type_reg[2]_0 ;
  wire \set_sig_type_reg_n_0_[0] ;
  wire \set_sig_type_reg_n_0_[1] ;
  wire \set_sig_type_reg_n_0_[2] ;
  wire [7:6]signal_data;
  wire [7:0]signal_data1_carry_0;
  wire signal_data1_carry_i_1_n_0;
  wire signal_data1_carry_i_2_n_0;
  wire signal_data1_carry_i_3_n_0;
  wire signal_data1_carry_i_4_n_0;
  wire signal_data1_carry_i_5_n_0;
  wire signal_data1_carry_i_6_n_0;
  wire signal_data1_carry_i_7_n_0;
  wire signal_data1_carry_i_8_n_0;
  wire signal_data1_carry_n_0;
  wire signal_data1_carry_n_1;
  wire signal_data1_carry_n_2;
  wire signal_data1_carry_n_3;
  wire \signal_data[6]_i_1_n_0 ;
  wire \signal_data[6]_i_2_n_0 ;
  wire \signal_data[6]_i_3_n_0 ;
  wire \signal_data[6]_i_6_n_0 ;
  wire \signal_data[6]_i_7_n_0 ;
  wire \signal_data[6]_i_8_n_0 ;
  wire \signal_data[6]_i_9_n_0 ;
  wire \signal_data[7]_i_1_n_0 ;
  wire \signal_data[7]_i_2_n_0 ;
  wire \signal_data[7]_i_3_n_0 ;
  wire \signal_data[7]_i_4_n_0 ;
  wire [15:0]\signal_data_reg[6]_i_4_0 ;
  wire \signal_data_reg[6]_i_4_n_0 ;
  wire \signal_data_reg[6]_i_5_n_0 ;
  wire [7:0]signal_waveform;
  wire [3:3]NLW_addr0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr0_carry_O_UNCONNECTED;
  wire [3:0]NLW_addr1_carry_O_UNCONNECTED;
  wire [3:0]NLW_addr1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_addr1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_addr1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_addr1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_set_freq1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_set_freq1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_set_freq1_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_set_freq1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]NLW_signal_data1_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 addr0_carry
       (.CI(1'b0),
        .CO({NLW_addr0_carry_CO_UNCONNECTED[3],addr0_carry_n_1,addr0_carry_n_2,addr0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,addr0_carry_i_1_n_0,addr0_carry_i_2_n_0,addr0_carry_i_3_n_0}),
        .O(NLW_addr0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,addr0_carry_i_4_n_0,addr0_carry_i_5_n_0,addr0_carry_i_6_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    addr0_carry_i_1
       (.I0(Q[6]),
        .I1(\addr_start_reg_n_0_[6] ),
        .I2(Q[7]),
        .O(addr0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    addr0_carry_i_2
       (.I0(\addr_start_reg_n_0_[6] ),
        .I1(Q[5]),
        .O(addr0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    addr0_carry_i_3
       (.I0(Q[3]),
        .I1(\addr_start_reg_n_0_[6] ),
        .I2(Q[2]),
        .O(addr0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    addr0_carry_i_4
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\addr_start_reg_n_0_[6] ),
        .O(addr0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    addr0_carry_i_5
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\addr_start_reg_n_0_[6] ),
        .O(addr0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    addr0_carry_i_6
       (.I0(Q[2]),
        .I1(\addr_start_reg_n_0_[6] ),
        .I2(Q[3]),
        .O(addr0_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 addr1_carry
       (.CI(1'b0),
        .CO({addr1_carry_n_0,addr1_carry_n_1,addr1_carry_n_2,addr1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({addr1_carry_i_1_n_0,addr1_carry_i_2_n_0,addr1_carry_i_3_n_0,addr1_carry_i_4_n_0}),
        .O(NLW_addr1_carry_O_UNCONNECTED[3:0]),
        .S({addr1_carry_i_5_n_0,addr1_carry_i_6_n_0,addr1_carry_i_7_n_0,addr1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 addr1_carry__0
       (.CI(addr1_carry_n_0),
        .CO({addr1_carry__0_n_0,addr1_carry__0_n_1,addr1_carry__0_n_2,addr1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({addr1_carry__0_i_1_n_0,addr1_carry__0_i_2_n_0,addr1_carry__0_i_3_n_0,addr1_carry__0_i_4_n_0}),
        .O(NLW_addr1_carry__0_O_UNCONNECTED[3:0]),
        .S({addr1_carry__0_i_5_n_0,addr1_carry__0_i_6_n_0,addr1_carry__0_i_7_n_0,addr1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry__0_i_1
       (.I0(set_freq[15]),
        .I1(counter_reg[15]),
        .I2(counter_reg[14]),
        .I3(set_freq[14]),
        .O(addr1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry__0_i_2
       (.I0(set_freq[13]),
        .I1(counter_reg[13]),
        .I2(counter_reg[12]),
        .I3(set_freq[12]),
        .O(addr1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry__0_i_3
       (.I0(set_freq[11]),
        .I1(counter_reg[11]),
        .I2(counter_reg[10]),
        .I3(set_freq[10]),
        .O(addr1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry__0_i_4
       (.I0(set_freq[9]),
        .I1(counter_reg[9]),
        .I2(counter_reg[8]),
        .I3(set_freq[8]),
        .O(addr1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry__0_i_5
       (.I0(counter_reg[15]),
        .I1(set_freq[15]),
        .I2(counter_reg[14]),
        .I3(set_freq[14]),
        .O(addr1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry__0_i_6
       (.I0(counter_reg[13]),
        .I1(set_freq[13]),
        .I2(counter_reg[12]),
        .I3(set_freq[12]),
        .O(addr1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry__0_i_7
       (.I0(counter_reg[11]),
        .I1(set_freq[11]),
        .I2(counter_reg[10]),
        .I3(set_freq[10]),
        .O(addr1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry__0_i_8
       (.I0(counter_reg[9]),
        .I1(set_freq[9]),
        .I2(counter_reg[8]),
        .I3(set_freq[8]),
        .O(addr1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 addr1_carry__1
       (.CI(addr1_carry__0_n_0),
        .CO({addr1_carry__1_n_0,addr1_carry__1_n_1,addr1_carry__1_n_2,addr1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({addr1_carry__1_i_1_n_0,addr1_carry__1_i_2_n_0,addr1_carry__1_i_3_n_0,addr1_carry__1_i_4_n_0}),
        .O(NLW_addr1_carry__1_O_UNCONNECTED[3:0]),
        .S({addr1_carry__1_i_5_n_0,addr1_carry__1_i_6_n_0,addr1_carry__1_i_7_n_0,addr1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry__1_i_1
       (.I0(set_freq[23]),
        .I1(counter_reg[23]),
        .I2(counter_reg[22]),
        .I3(set_freq[22]),
        .O(addr1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry__1_i_2
       (.I0(set_freq[21]),
        .I1(counter_reg[21]),
        .I2(counter_reg[20]),
        .I3(set_freq[20]),
        .O(addr1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry__1_i_3
       (.I0(set_freq[19]),
        .I1(counter_reg[19]),
        .I2(counter_reg[18]),
        .I3(set_freq[18]),
        .O(addr1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry__1_i_4
       (.I0(set_freq[17]),
        .I1(counter_reg[17]),
        .I2(counter_reg[16]),
        .I3(set_freq[16]),
        .O(addr1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry__1_i_5
       (.I0(counter_reg[23]),
        .I1(set_freq[23]),
        .I2(counter_reg[22]),
        .I3(set_freq[22]),
        .O(addr1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry__1_i_6
       (.I0(counter_reg[21]),
        .I1(set_freq[21]),
        .I2(counter_reg[20]),
        .I3(set_freq[20]),
        .O(addr1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry__1_i_7
       (.I0(counter_reg[19]),
        .I1(set_freq[19]),
        .I2(counter_reg[18]),
        .I3(set_freq[18]),
        .O(addr1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry__1_i_8
       (.I0(counter_reg[17]),
        .I1(set_freq[17]),
        .I2(counter_reg[16]),
        .I3(set_freq[16]),
        .O(addr1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 addr1_carry__2
       (.CI(addr1_carry__1_n_0),
        .CO({addr1_carry__2_n_0,addr1_carry__2_n_1,addr1_carry__2_n_2,addr1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({addr1_carry__2_i_1_n_0,addr1_carry__2_i_2_n_0,addr1_carry__2_i_3_n_0,addr1_carry__2_i_4_n_0}),
        .O(NLW_addr1_carry__2_O_UNCONNECTED[3:0]),
        .S({addr1_carry__2_i_5_n_0,addr1_carry__2_i_6_n_0,addr1_carry__2_i_7_n_0,addr1_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry__2_i_1
       (.I0(set_freq[31]),
        .I1(counter_reg[31]),
        .I2(counter_reg[30]),
        .I3(set_freq[30]),
        .O(addr1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry__2_i_2
       (.I0(set_freq[29]),
        .I1(counter_reg[29]),
        .I2(counter_reg[28]),
        .I3(set_freq[28]),
        .O(addr1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry__2_i_3
       (.I0(set_freq[27]),
        .I1(counter_reg[27]),
        .I2(counter_reg[26]),
        .I3(set_freq[26]),
        .O(addr1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry__2_i_4
       (.I0(set_freq[25]),
        .I1(counter_reg[25]),
        .I2(counter_reg[24]),
        .I3(set_freq[24]),
        .O(addr1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry__2_i_5
       (.I0(counter_reg[31]),
        .I1(set_freq[31]),
        .I2(counter_reg[30]),
        .I3(set_freq[30]),
        .O(addr1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry__2_i_6
       (.I0(counter_reg[29]),
        .I1(set_freq[29]),
        .I2(counter_reg[28]),
        .I3(set_freq[28]),
        .O(addr1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry__2_i_7
       (.I0(counter_reg[27]),
        .I1(set_freq[27]),
        .I2(counter_reg[26]),
        .I3(set_freq[26]),
        .O(addr1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry__2_i_8
       (.I0(counter_reg[25]),
        .I1(set_freq[25]),
        .I2(counter_reg[24]),
        .I3(set_freq[24]),
        .O(addr1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry_i_1
       (.I0(set_freq[7]),
        .I1(counter_reg[7]),
        .I2(counter_reg[6]),
        .I3(set_freq[6]),
        .O(addr1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry_i_2
       (.I0(set_freq[5]),
        .I1(counter_reg[5]),
        .I2(counter_reg[4]),
        .I3(set_freq[4]),
        .O(addr1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry_i_3
       (.I0(set_freq[3]),
        .I1(counter_reg[3]),
        .I2(counter_reg[2]),
        .I3(set_freq[2]),
        .O(addr1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    addr1_carry_i_4
       (.I0(set_freq[1]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(set_freq[0]),
        .O(addr1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry_i_5
       (.I0(counter_reg[7]),
        .I1(set_freq[7]),
        .I2(counter_reg[6]),
        .I3(set_freq[6]),
        .O(addr1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry_i_6
       (.I0(counter_reg[5]),
        .I1(set_freq[5]),
        .I2(counter_reg[4]),
        .I3(set_freq[4]),
        .O(addr1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry_i_7
       (.I0(counter_reg[3]),
        .I1(set_freq[3]),
        .I2(counter_reg[2]),
        .I3(set_freq[2]),
        .O(addr1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr1_carry_i_8
       (.I0(counter_reg[1]),
        .I1(set_freq[1]),
        .I2(counter_reg[0]),
        .I3(set_freq[0]),
        .O(addr1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \addr1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({addr1,\addr1_inferred__0/i__carry_n_1 ,\addr1_inferred__0/i__carry_n_2 ,\addr1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_addr1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \addr[0]_i_1 
       (.I0(Q[0]),
        .I1(addr1_carry__2_n_0),
        .I2(addr1),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \addr[1]_i_1 
       (.I0(addr1),
        .I1(addr1_carry__2_n_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'h8ABABA8ABA8ABA8A)) 
    \addr[2]_i_1 
       (.I0(\addr_start_reg_n_0_[6] ),
        .I1(addr1),
        .I2(addr1_carry__2_n_0),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h0000000028888888)) 
    \addr[3]_i_1 
       (.I0(addr1_carry__2_n_0),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(addr1),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \addr[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(\addr[4]_i_2_n_0 ),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \addr[4]_i_2 
       (.I0(addr1),
        .I1(addr1_carry__2_n_0),
        .O(\addr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hBA8A8ABA)) 
    \addr[5]_i_1 
       (.I0(\addr_start_reg_n_0_[6] ),
        .I1(addr1),
        .I2(addr1_carry__2_n_0),
        .I3(Q[5]),
        .I4(\addr[5]_i_2_n_0 ),
        .O(p_2_in[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \addr[5]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\addr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8ABABA8A)) 
    \addr[6]_i_1 
       (.I0(\addr_start_reg_n_0_[6] ),
        .I1(addr1),
        .I2(addr1_carry__2_n_0),
        .I3(Q[6]),
        .I4(\addr[7]_i_4_n_0 ),
        .O(p_2_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \addr[7]_i_1 
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT5 #(
    .INIT(32'hCBCBCB00)) 
    \addr[7]_i_2 
       (.I0(\set_sig_type_reg_n_0_[0] ),
        .I1(\set_sig_type_reg_n_0_[2] ),
        .I2(\set_sig_type_reg_n_0_[1] ),
        .I3(addr1_carry__2_n_0),
        .I4(addr0_carry_n_1),
        .O(p_1_in));
  LUT5 #(
    .INIT(32'h00002888)) 
    \addr[7]_i_3 
       (.I0(addr1_carry__2_n_0),
        .I1(Q[7]),
        .I2(\addr[7]_i_4_n_0 ),
        .I3(Q[6]),
        .I4(addr1),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \addr[7]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\addr[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \addr_end[5]_i_1 
       (.I0(\set_sig_type_reg[2]_0 [2]),
        .I1(\set_sig_type_reg[2]_0 [1]),
        .I2(\set_sig_type_reg[2]_0 [0]),
        .O(addr_end[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \addr_end[6]_i_1 
       (.I0(\set_sig_type_reg[2]_0 [1]),
        .I1(\set_sig_type_reg[2]_0 [2]),
        .O(addr_end[6]));
  FDSE \addr_end_reg[5] 
       (.C(s00_axi_aclk),
        .CE(set_sig_type),
        .D(addr_end[5]),
        .Q(\addr_end_reg_n_0_[5] ),
        .S(SR));
  FDSE \addr_end_reg[6] 
       (.C(s00_axi_aclk),
        .CE(set_sig_type),
        .D(addr_end[6]),
        .Q(\addr_end_reg_n_0_[6] ),
        .S(SR));
  FDRE \addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \addr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \addr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[7]),
        .Q(Q[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr_start[6]_i_1 
       (.I0(\set_sig_type_reg[2]_0 [0]),
        .I1(\set_sig_type_reg[2]_0 [1]),
        .O(addr_start));
  FDRE \addr_start_reg[6] 
       (.C(s00_axi_aclk),
        .CE(set_sig_type),
        .D(addr_start),
        .Q(\addr_start_reg_n_0_[6] ),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_3 
       (.I0(counter_reg[3]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_4 
       (.I0(counter_reg[2]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_5 
       (.I0(counter_reg[1]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_6 
       (.I0(counter_reg[0]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_3 
       (.I0(counter_reg[14]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_4 
       (.I0(counter_reg[13]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_5 
       (.I0(counter_reg[12]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_2 
       (.I0(counter_reg[19]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_3 
       (.I0(counter_reg[18]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_4 
       (.I0(counter_reg[17]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_5 
       (.I0(counter_reg[16]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_2 
       (.I0(counter_reg[23]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_3 
       (.I0(counter_reg[22]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_4 
       (.I0(counter_reg[21]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_5 
       (.I0(counter_reg[20]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_2 
       (.I0(counter_reg[27]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_3 
       (.I0(counter_reg[26]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_4 
       (.I0(counter_reg[25]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_5 
       (.I0(counter_reg[24]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_2 
       (.I0(counter_reg[31]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_3 
       (.I0(counter_reg[30]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_4 
       (.I0(counter_reg[29]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_5 
       (.I0(counter_reg[28]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .I1(addr1_carry__2_n_0),
        .O(\counter[8]_i_5_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_2_n_0 }),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({\counter[0]_i_3_n_0 ,\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 }));
  FDRE \counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(SR));
  FDRE \counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(SR));
  FDRE \counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDRE \counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(SR));
  FDRE \counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(SR));
  FDRE \counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(SR));
  FDRE \counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({\counter[16]_i_2_n_0 ,\counter[16]_i_3_n_0 ,\counter[16]_i_4_n_0 ,\counter[16]_i_5_n_0 }));
  FDRE \counter_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(SR));
  FDRE \counter_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(SR));
  FDRE \counter_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(SR));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]),
        .R(SR));
  FDRE \counter_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S({\counter[20]_i_2_n_0 ,\counter[20]_i_3_n_0 ,\counter[20]_i_4_n_0 ,\counter[20]_i_5_n_0 }));
  FDRE \counter_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(SR));
  FDRE \counter_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(SR));
  FDRE \counter_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(SR));
  FDRE \counter_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({\counter[24]_i_2_n_0 ,\counter[24]_i_3_n_0 ,\counter[24]_i_4_n_0 ,\counter[24]_i_5_n_0 }));
  FDRE \counter_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(SR));
  FDRE \counter_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]),
        .R(SR));
  FDRE \counter_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_4 ),
        .Q(counter_reg[27]),
        .R(SR));
  FDRE \counter_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_7 ),
        .Q(counter_reg[28]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [3],\counter_reg[28]_i_1_n_1 ,\counter_reg[28]_i_1_n_2 ,\counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_1_n_4 ,\counter_reg[28]_i_1_n_5 ,\counter_reg[28]_i_1_n_6 ,\counter_reg[28]_i_1_n_7 }),
        .S({\counter[28]_i_2_n_0 ,\counter[28]_i_3_n_0 ,\counter[28]_i_4_n_0 ,\counter[28]_i_5_n_0 }));
  FDRE \counter_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_6 ),
        .Q(counter_reg[29]),
        .R(SR));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]),
        .R(SR));
  FDRE \counter_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_5 ),
        .Q(counter_reg[30]),
        .R(SR));
  FDRE \counter_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_4 ),
        .Q(counter_reg[31]),
        .R(SR));
  FDRE \counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]),
        .R(SR));
  FDRE \counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDRE \counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(SR));
  FDRE \counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(SR));
  FDRE \counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(SR));
  FDRE \counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDRE \counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \duty_count[0]_i_1 
       (.I0(duty_count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \duty_count[1]_i_1 
       (.I0(duty_count_reg[0]),
        .I1(duty_count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \duty_count[2]_i_1 
       (.I0(duty_count_reg[2]),
        .I1(duty_count_reg[0]),
        .I2(duty_count_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \duty_count[3]_i_1 
       (.I0(duty_count_reg[3]),
        .I1(duty_count_reg[1]),
        .I2(duty_count_reg[0]),
        .I3(duty_count_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \duty_count[4]_i_1 
       (.I0(duty_count_reg[2]),
        .I1(duty_count_reg[0]),
        .I2(duty_count_reg[1]),
        .I3(duty_count_reg[3]),
        .I4(duty_count_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \duty_count[5]_i_1 
       (.I0(duty_count_reg[5]),
        .I1(duty_count_reg[2]),
        .I2(duty_count_reg[0]),
        .I3(duty_count_reg[1]),
        .I4(duty_count_reg[3]),
        .I5(duty_count_reg[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \duty_count[6]_i_1 
       (.I0(duty_count_reg[6]),
        .I1(\duty_count[7]_i_3_n_0 ),
        .I2(duty_count_reg[5]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'h2000)) 
    \duty_count[7]_i_1 
       (.I0(\set_sig_type_reg_n_0_[0] ),
        .I1(\set_sig_type_reg_n_0_[2] ),
        .I2(\set_sig_type_reg_n_0_[1] ),
        .I3(addr1_carry__2_n_0),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \duty_count[7]_i_2 
       (.I0(duty_count_reg[7]),
        .I1(duty_count_reg[5]),
        .I2(\duty_count[7]_i_3_n_0 ),
        .I3(duty_count_reg[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \duty_count[7]_i_3 
       (.I0(duty_count_reg[4]),
        .I1(duty_count_reg[3]),
        .I2(duty_count_reg[1]),
        .I3(duty_count_reg[0]),
        .I4(duty_count_reg[2]),
        .O(\duty_count[7]_i_3_n_0 ));
  FDRE \duty_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(p_0_in[0]),
        .Q(duty_count_reg[0]),
        .R(SR));
  FDRE \duty_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(p_0_in[1]),
        .Q(duty_count_reg[1]),
        .R(SR));
  FDRE \duty_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(p_0_in[2]),
        .Q(duty_count_reg[2]),
        .R(SR));
  FDRE \duty_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(p_0_in[3]),
        .Q(duty_count_reg[3]),
        .R(SR));
  FDRE \duty_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(p_0_in[4]),
        .Q(duty_count_reg[4]),
        .R(SR));
  FDRE \duty_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(p_0_in[5]),
        .Q(duty_count_reg[5]),
        .R(SR));
  FDRE \duty_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(p_0_in[6]),
        .Q(duty_count_reg[6]),
        .R(SR));
  FDRE \duty_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(p_0_in[7]),
        .Q(duty_count_reg[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1
       (.I0(set_freq[21]),
        .I1(\set_freq_reg[31]_0 [21]),
        .I2(set_freq[22]),
        .I3(\set_freq_reg[31]_0 [22]),
        .I4(\set_freq_reg[31]_0 [23]),
        .I5(set_freq[23]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(set_freq[18]),
        .I1(\set_freq_reg[31]_0 [18]),
        .I2(set_freq[19]),
        .I3(\set_freq_reg[31]_0 [19]),
        .I4(\set_freq_reg[31]_0 [20]),
        .I5(set_freq[20]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3
       (.I0(set_freq[15]),
        .I1(\set_freq_reg[31]_0 [15]),
        .I2(set_freq[16]),
        .I3(\set_freq_reg[31]_0 [16]),
        .I4(\set_freq_reg[31]_0 [17]),
        .I5(set_freq[17]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4
       (.I0(set_freq[14]),
        .I1(\set_freq_reg[31]_0 [14]),
        .I2(set_freq[12]),
        .I3(\set_freq_reg[31]_0 [12]),
        .I4(\set_freq_reg[31]_0 [13]),
        .I5(set_freq[13]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_1
       (.I0(\set_freq_reg[31]_0 [31]),
        .I1(set_freq[31]),
        .I2(\set_freq_reg[31]_0 [30]),
        .I3(set_freq[30]),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_2
       (.I0(set_freq[29]),
        .I1(\set_freq_reg[31]_0 [29]),
        .I2(set_freq[27]),
        .I3(\set_freq_reg[31]_0 [27]),
        .I4(\set_freq_reg[31]_0 [28]),
        .I5(set_freq[28]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3
       (.I0(set_freq[24]),
        .I1(\set_freq_reg[31]_0 [24]),
        .I2(set_freq[25]),
        .I3(\set_freq_reg[31]_0 [25]),
        .I4(\set_freq_reg[31]_0 [26]),
        .I5(set_freq[26]),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(set_freq[11]),
        .I1(\set_freq_reg[31]_0 [11]),
        .I2(set_freq[9]),
        .I3(\set_freq_reg[31]_0 [9]),
        .I4(\set_freq_reg[31]_0 [10]),
        .I5(set_freq[10]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__0
       (.I0(Q[6]),
        .I1(\addr_end_reg_n_0_[6] ),
        .I2(\addr_start_reg_n_0_[6] ),
        .I3(Q[7]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(\set_freq_reg[31]_0 [8]),
        .I1(set_freq[8]),
        .I2(set_freq[6]),
        .I3(\set_freq_reg[31]_0 [6]),
        .I4(set_freq[7]),
        .I5(\set_freq_reg[31]_0 [7]),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    i__carry_i_2__0
       (.I0(Q[5]),
        .I1(\addr_end_reg_n_0_[5] ),
        .I2(Q[4]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(\set_freq_reg[31]_0 [5]),
        .I1(set_freq[5]),
        .I2(set_freq[3]),
        .I3(\set_freq_reg[31]_0 [3]),
        .I4(set_freq[4]),
        .I5(\set_freq_reg[31]_0 [4]),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    i__carry_i_3__0
       (.I0(Q[3]),
        .I1(\addr_start_reg_n_0_[6] ),
        .I2(Q[2]),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(\set_freq_reg[31]_0 [2]),
        .I1(set_freq[2]),
        .I2(set_freq[0]),
        .I3(\set_freq_reg[31]_0 [0]),
        .I4(set_freq[1]),
        .I5(\set_freq_reg[31]_0 [1]),
        .O(i__carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    i__carry_i_4__0
       (.I0(\addr_end_reg_n_0_[6] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(Q[7]),
        .I1(\addr_start_reg_n_0_[6] ),
        .I2(\addr_end_reg_n_0_[6] ),
        .I3(Q[6]),
        .O(i__carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    i__carry_i_6
       (.I0(Q[4]),
        .I1(\addr_end_reg_n_0_[5] ),
        .I2(Q[5]),
        .O(i__carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    i__carry_i_7
       (.I0(Q[2]),
        .I1(\addr_start_reg_n_0_[6] ),
        .I2(Q[3]),
        .O(i__carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    i__carry_i_8
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\addr_end_reg_n_0_[6] ),
        .O(i__carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \pattern_bit[0]_i_1 
       (.I0(\set_sig_type_reg_n_0_[1] ),
        .I1(\set_sig_type_reg_n_0_[2] ),
        .I2(\set_sig_type_reg_n_0_[0] ),
        .I3(addr1_carry__2_n_0),
        .I4(pattern_bit[0]),
        .O(\pattern_bit[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040004000000)) 
    \pattern_bit[1]_i_1 
       (.I0(\set_sig_type_reg_n_0_[1] ),
        .I1(\set_sig_type_reg_n_0_[2] ),
        .I2(\set_sig_type_reg_n_0_[0] ),
        .I3(addr1_carry__2_n_0),
        .I4(pattern_bit[1]),
        .I5(pattern_bit[0]),
        .O(\pattern_bit[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \pattern_bit[2]_i_1 
       (.I0(\pattern_bit[3]_i_4_n_0 ),
        .I1(pattern_bit[0]),
        .I2(pattern_bit[1]),
        .I3(pattern_bit[2]),
        .O(\pattern_bit[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \pattern_bit[3]_i_1 
       (.I0(\set_sig_type_reg[2]_0 [2]),
        .I1(\set_sig_type_reg[2]_0 [0]),
        .I2(\set_sig_type_reg[2]_0 [1]),
        .I3(\pattern_bit[3]_i_3_n_0 ),
        .I4(\pattern_bit[3]_i_4_n_0 ),
        .O(\pattern_bit[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \pattern_bit[3]_i_2 
       (.I0(\pattern_bit[3]_i_4_n_0 ),
        .I1(pattern_bit[1]),
        .I2(pattern_bit[0]),
        .I3(pattern_bit[2]),
        .I4(pattern_bit[3]),
        .O(\pattern_bit[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \pattern_bit[3]_i_3 
       (.I0(\set_sig_type_reg[2]_0 [2]),
        .I1(\set_sig_type_reg_n_0_[2] ),
        .I2(\set_sig_type_reg_n_0_[1] ),
        .I3(\set_sig_type_reg[2]_0 [1]),
        .I4(\set_sig_type_reg[2]_0 [0]),
        .I5(\set_sig_type_reg_n_0_[0] ),
        .O(\pattern_bit[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \pattern_bit[3]_i_4 
       (.I0(addr1_carry__2_n_0),
        .I1(\set_sig_type_reg_n_0_[0] ),
        .I2(\set_sig_type_reg_n_0_[2] ),
        .I3(\set_sig_type_reg_n_0_[1] ),
        .O(\pattern_bit[3]_i_4_n_0 ));
  FDRE \pattern_bit_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\pattern_bit[3]_i_1_n_0 ),
        .D(\pattern_bit[0]_i_1_n_0 ),
        .Q(pattern_bit[0]),
        .R(SR));
  FDRE \pattern_bit_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\pattern_bit[3]_i_1_n_0 ),
        .D(\pattern_bit[1]_i_1_n_0 ),
        .Q(pattern_bit[1]),
        .R(SR));
  FDRE \pattern_bit_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\pattern_bit[3]_i_1_n_0 ),
        .D(\pattern_bit[2]_i_1_n_0 ),
        .Q(pattern_bit[2]),
        .R(SR));
  FDRE \pattern_bit_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\pattern_bit[3]_i_1_n_0 ),
        .D(\pattern_bit[3]_i_2_n_0 ),
        .Q(pattern_bit[3]),
        .R(SR));
  CARRY4 \set_freq1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\set_freq1_inferred__0/i__carry_n_0 ,\set_freq1_inferred__0/i__carry_n_1 ,\set_freq1_inferred__0/i__carry_n_2 ,\set_freq1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_set_freq1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \set_freq1_inferred__0/i__carry__0 
       (.CI(\set_freq1_inferred__0/i__carry_n_0 ),
        .CO({\set_freq1_inferred__0/i__carry__0_n_0 ,\set_freq1_inferred__0/i__carry__0_n_1 ,\set_freq1_inferred__0/i__carry__0_n_2 ,\set_freq1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_set_freq1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \set_freq1_inferred__0/i__carry__1 
       (.CI(\set_freq1_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_set_freq1_inferred__0/i__carry__1_CO_UNCONNECTED [3],\set_freq1_inferred__0/i__carry__1_n_1 ,\set_freq1_inferred__0/i__carry__1_n_2 ,\set_freq1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(\NLW_set_freq1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  LUT5 #(
    .INIT(32'h03332222)) 
    \set_freq[31]_i_1 
       (.I0(\set_freq[31]_i_2_n_0 ),
        .I1(\set_freq[31]_i_3_n_0 ),
        .I2(\set_freq[31]_i_4_n_0 ),
        .I3(\set_freq[31]_i_5_n_0 ),
        .I4(\set_freq[31]_i_6_n_0 ),
        .O(set_freq_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \set_freq[31]_i_10 
       (.I0(set_freq[27]),
        .I1(set_freq[21]),
        .I2(set_freq[28]),
        .I3(set_freq[31]),
        .I4(set_freq[22]),
        .I5(set_freq[29]),
        .O(\set_freq[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \set_freq[31]_i_11 
       (.I0(set_freq[25]),
        .I1(set_freq[23]),
        .I2(set_freq[24]),
        .I3(set_freq[20]),
        .O(\set_freq[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \set_freq[31]_i_12 
       (.I0(set_freq[6]),
        .I1(set_freq[7]),
        .I2(set_freq[5]),
        .I3(set_freq[8]),
        .O(\set_freq[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \set_freq[31]_i_13 
       (.I0(set_freq[10]),
        .I1(set_freq[11]),
        .O(\set_freq[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AE)) 
    \set_freq[31]_i_2 
       (.I0(\set_freq[31]_i_7_n_0 ),
        .I1(\set_freq[31]_i_8_n_0 ),
        .I2(\set_freq[31]_i_9_n_0 ),
        .I3(set_freq[17]),
        .I4(set_freq[18]),
        .I5(set_freq[16]),
        .O(\set_freq[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \set_freq[31]_i_3 
       (.I0(\set_freq[31]_i_10_n_0 ),
        .I1(\set_freq[31]_i_11_n_0 ),
        .I2(\set_freq1_inferred__0/i__carry__1_n_1 ),
        .I3(set_freq[26]),
        .I4(set_freq[30]),
        .I5(set_freq[19]),
        .O(\set_freq[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFD0000)) 
    \set_freq[31]_i_4 
       (.I0(\set_freq[31]_i_12_n_0 ),
        .I1(\set_freq[31]_i_13_n_0 ),
        .I2(set_freq[9]),
        .I3(set_freq[12]),
        .I4(set_freq[13]),
        .I5(set_freq[14]),
        .O(\set_freq[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \set_freq[31]_i_5 
       (.I0(set_freq[18]),
        .I1(set_freq[15]),
        .I2(set_freq[17]),
        .I3(set_freq[16]),
        .O(\set_freq[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \set_freq[31]_i_6 
       (.I0(\set_sig_type_reg_n_0_[1] ),
        .I1(\set_sig_type_reg_n_0_[2] ),
        .I2(\set_sig_type_reg_n_0_[0] ),
        .O(\set_freq[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \set_freq[31]_i_7 
       (.I0(set_freq[14]),
        .I1(set_freq[15]),
        .I2(set_freq[12]),
        .I3(set_freq[13]),
        .I4(set_freq[11]),
        .I5(set_freq[10]),
        .O(\set_freq[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \set_freq[31]_i_8 
       (.I0(set_freq[3]),
        .I1(set_freq[4]),
        .I2(set_freq[2]),
        .I3(set_freq[5]),
        .O(\set_freq[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \set_freq[31]_i_9 
       (.I0(set_freq[7]),
        .I1(set_freq[6]),
        .I2(set_freq[8]),
        .I3(set_freq[9]),
        .I4(set_freq[11]),
        .O(\set_freq[31]_i_9_n_0 ));
  FDSE \set_freq_reg[0] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [0]),
        .Q(set_freq[0]),
        .S(SR));
  FDRE \set_freq_reg[10] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [10]),
        .Q(set_freq[10]),
        .R(SR));
  FDRE \set_freq_reg[11] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [11]),
        .Q(set_freq[11]),
        .R(SR));
  FDRE \set_freq_reg[12] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [12]),
        .Q(set_freq[12]),
        .R(SR));
  FDRE \set_freq_reg[13] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [13]),
        .Q(set_freq[13]),
        .R(SR));
  FDRE \set_freq_reg[14] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [14]),
        .Q(set_freq[14]),
        .R(SR));
  FDRE \set_freq_reg[15] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [15]),
        .Q(set_freq[15]),
        .R(SR));
  FDRE \set_freq_reg[16] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [16]),
        .Q(set_freq[16]),
        .R(SR));
  FDRE \set_freq_reg[17] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [17]),
        .Q(set_freq[17]),
        .R(SR));
  FDRE \set_freq_reg[18] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [18]),
        .Q(set_freq[18]),
        .R(SR));
  FDRE \set_freq_reg[19] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [19]),
        .Q(set_freq[19]),
        .R(SR));
  FDSE \set_freq_reg[1] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [1]),
        .Q(set_freq[1]),
        .S(SR));
  FDRE \set_freq_reg[20] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [20]),
        .Q(set_freq[20]),
        .R(SR));
  FDRE \set_freq_reg[21] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [21]),
        .Q(set_freq[21]),
        .R(SR));
  FDRE \set_freq_reg[22] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [22]),
        .Q(set_freq[22]),
        .R(SR));
  FDRE \set_freq_reg[23] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [23]),
        .Q(set_freq[23]),
        .R(SR));
  FDRE \set_freq_reg[24] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [24]),
        .Q(set_freq[24]),
        .R(SR));
  FDRE \set_freq_reg[25] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [25]),
        .Q(set_freq[25]),
        .R(SR));
  FDRE \set_freq_reg[26] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [26]),
        .Q(set_freq[26]),
        .R(SR));
  FDRE \set_freq_reg[27] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [27]),
        .Q(set_freq[27]),
        .R(SR));
  FDRE \set_freq_reg[28] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [28]),
        .Q(set_freq[28]),
        .R(SR));
  FDRE \set_freq_reg[29] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [29]),
        .Q(set_freq[29]),
        .R(SR));
  FDSE \set_freq_reg[2] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [2]),
        .Q(set_freq[2]),
        .S(SR));
  FDRE \set_freq_reg[30] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [30]),
        .Q(set_freq[30]),
        .R(SR));
  FDRE \set_freq_reg[31] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [31]),
        .Q(set_freq[31]),
        .R(SR));
  FDRE \set_freq_reg[3] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [3]),
        .Q(set_freq[3]),
        .R(SR));
  FDRE \set_freq_reg[4] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [4]),
        .Q(set_freq[4]),
        .R(SR));
  FDSE \set_freq_reg[5] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [5]),
        .Q(set_freq[5]),
        .S(SR));
  FDSE \set_freq_reg[6] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [6]),
        .Q(set_freq[6]),
        .S(SR));
  FDSE \set_freq_reg[7] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [7]),
        .Q(set_freq[7]),
        .S(SR));
  FDSE \set_freq_reg[8] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [8]),
        .Q(set_freq[8]),
        .S(SR));
  FDSE \set_freq_reg[9] 
       (.C(s00_axi_aclk),
        .CE(set_freq_0),
        .D(\set_freq_reg[31]_0 [9]),
        .Q(set_freq[9]),
        .S(SR));
  LUT6 #(
    .INIT(64'h03020303FFFF6FF6)) 
    \set_sig_type[2]_i_1 
       (.I0(\set_sig_type_reg_n_0_[0] ),
        .I1(\set_sig_type_reg[2]_0 [0]),
        .I2(\set_sig_type_reg[2]_0 [1]),
        .I3(\set_sig_type_reg_n_0_[1] ),
        .I4(\set_sig_type_reg_n_0_[2] ),
        .I5(\set_sig_type_reg[2]_0 [2]),
        .O(set_sig_type));
  FDRE \set_sig_type_reg[0] 
       (.C(s00_axi_aclk),
        .CE(set_sig_type),
        .D(\set_sig_type_reg[2]_0 [0]),
        .Q(\set_sig_type_reg_n_0_[0] ),
        .R(SR));
  FDRE \set_sig_type_reg[1] 
       (.C(s00_axi_aclk),
        .CE(set_sig_type),
        .D(\set_sig_type_reg[2]_0 [1]),
        .Q(\set_sig_type_reg_n_0_[1] ),
        .R(SR));
  FDRE \set_sig_type_reg[2] 
       (.C(s00_axi_aclk),
        .CE(set_sig_type),
        .D(\set_sig_type_reg[2]_0 [2]),
        .Q(\set_sig_type_reg_n_0_[2] ),
        .R(SR));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 signal_data1_carry
       (.CI(1'b0),
        .CO({signal_data1_carry_n_0,signal_data1_carry_n_1,signal_data1_carry_n_2,signal_data1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({signal_data1_carry_i_1_n_0,signal_data1_carry_i_2_n_0,signal_data1_carry_i_3_n_0,signal_data1_carry_i_4_n_0}),
        .O(NLW_signal_data1_carry_O_UNCONNECTED[3:0]),
        .S({signal_data1_carry_i_5_n_0,signal_data1_carry_i_6_n_0,signal_data1_carry_i_7_n_0,signal_data1_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    signal_data1_carry_i_1
       (.I0(duty_count_reg[7]),
        .I1(signal_data1_carry_0[7]),
        .I2(duty_count_reg[6]),
        .I3(signal_data1_carry_0[6]),
        .O(signal_data1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    signal_data1_carry_i_2
       (.I0(duty_count_reg[5]),
        .I1(signal_data1_carry_0[5]),
        .I2(duty_count_reg[4]),
        .I3(signal_data1_carry_0[4]),
        .O(signal_data1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    signal_data1_carry_i_3
       (.I0(duty_count_reg[3]),
        .I1(signal_data1_carry_0[3]),
        .I2(duty_count_reg[2]),
        .I3(signal_data1_carry_0[2]),
        .O(signal_data1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    signal_data1_carry_i_4
       (.I0(duty_count_reg[1]),
        .I1(signal_data1_carry_0[1]),
        .I2(duty_count_reg[0]),
        .I3(signal_data1_carry_0[0]),
        .O(signal_data1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    signal_data1_carry_i_5
       (.I0(signal_data1_carry_0[7]),
        .I1(duty_count_reg[7]),
        .I2(signal_data1_carry_0[6]),
        .I3(duty_count_reg[6]),
        .O(signal_data1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    signal_data1_carry_i_6
       (.I0(signal_data1_carry_0[5]),
        .I1(duty_count_reg[5]),
        .I2(signal_data1_carry_0[4]),
        .I3(duty_count_reg[4]),
        .O(signal_data1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    signal_data1_carry_i_7
       (.I0(signal_data1_carry_0[3]),
        .I1(duty_count_reg[3]),
        .I2(signal_data1_carry_0[2]),
        .I3(duty_count_reg[2]),
        .O(signal_data1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    signal_data1_carry_i_8
       (.I0(signal_data1_carry_0[1]),
        .I1(duty_count_reg[1]),
        .I2(signal_data1_carry_0[0]),
        .I3(duty_count_reg[0]),
        .O(signal_data1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000088800080)) 
    \signal_data[6]_i_1 
       (.I0(\signal_data[6]_i_2_n_0 ),
        .I1(s00_axi_aresetn),
        .I2(signal_data[6]),
        .I3(\signal_data[7]_i_2_n_0 ),
        .I4(\signal_data[6]_i_3_n_0 ),
        .I5(\signal_data[7]_i_3_n_0 ),
        .O(\signal_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \signal_data[6]_i_2 
       (.I0(signal_data1_carry_n_0),
        .I1(addr1_carry__2_n_0),
        .I2(\set_sig_type_reg_n_0_[1] ),
        .I3(\set_sig_type_reg_n_0_[2] ),
        .I4(\set_sig_type_reg_n_0_[0] ),
        .O(\signal_data[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA8AA888)) 
    \signal_data[6]_i_3 
       (.I0(addr1_carry__2_n_0),
        .I1(\set_freq[31]_i_6_n_0 ),
        .I2(pattern_bit[3]),
        .I3(\signal_data_reg[6]_i_4_n_0 ),
        .I4(\signal_data_reg[6]_i_5_n_0 ),
        .O(\signal_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \signal_data[6]_i_6 
       (.I0(\signal_data_reg[6]_i_4_0 [11]),
        .I1(\signal_data_reg[6]_i_4_0 [10]),
        .I2(pattern_bit[1]),
        .I3(\signal_data_reg[6]_i_4_0 [9]),
        .I4(pattern_bit[0]),
        .I5(\signal_data_reg[6]_i_4_0 [8]),
        .O(\signal_data[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \signal_data[6]_i_7 
       (.I0(\signal_data_reg[6]_i_4_0 [15]),
        .I1(\signal_data_reg[6]_i_4_0 [14]),
        .I2(pattern_bit[1]),
        .I3(\signal_data_reg[6]_i_4_0 [13]),
        .I4(pattern_bit[0]),
        .I5(\signal_data_reg[6]_i_4_0 [12]),
        .O(\signal_data[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \signal_data[6]_i_8 
       (.I0(\signal_data_reg[6]_i_4_0 [3]),
        .I1(\signal_data_reg[6]_i_4_0 [2]),
        .I2(pattern_bit[1]),
        .I3(\signal_data_reg[6]_i_4_0 [1]),
        .I4(pattern_bit[0]),
        .I5(\signal_data_reg[6]_i_4_0 [0]),
        .O(\signal_data[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \signal_data[6]_i_9 
       (.I0(\signal_data_reg[6]_i_4_0 [7]),
        .I1(\signal_data_reg[6]_i_4_0 [6]),
        .I2(pattern_bit[1]),
        .I3(\signal_data_reg[6]_i_4_0 [5]),
        .I4(pattern_bit[0]),
        .I5(\signal_data_reg[6]_i_4_0 [4]),
        .O(\signal_data[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \signal_data[7]_i_1 
       (.I0(addr1_carry__2_n_0),
        .I1(\signal_data[7]_i_2_n_0 ),
        .I2(signal_data[7]),
        .I3(s00_axi_aresetn),
        .I4(\signal_data[7]_i_3_n_0 ),
        .O(\signal_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000F08000F00000)) 
    \signal_data[7]_i_2 
       (.I0(\signal_data[7]_i_4_n_0 ),
        .I1(s00_axi_aresetn),
        .I2(addr1_carry__2_n_0),
        .I3(\set_sig_type_reg_n_0_[0] ),
        .I4(\set_sig_type_reg_n_0_[2] ),
        .I5(\set_sig_type_reg_n_0_[1] ),
        .O(\signal_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \signal_data[7]_i_3 
       (.I0(\set_sig_type_reg_n_0_[2] ),
        .I1(\set_sig_type_reg_n_0_[1] ),
        .I2(addr1_carry__2_n_0),
        .I3(signal_data[6]),
        .I4(signal_data[7]),
        .I5(\set_sig_type_reg_n_0_[0] ),
        .O(\signal_data[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \signal_data[7]_i_4 
       (.I0(signal_data[6]),
        .I1(signal_data[7]),
        .O(\signal_data[7]_i_4_n_0 ));
  FDRE \signal_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\signal_data[6]_i_1_n_0 ),
        .Q(signal_data[6]),
        .R(1'b0));
  MUXF7 \signal_data_reg[6]_i_4 
       (.I0(\signal_data[6]_i_6_n_0 ),
        .I1(\signal_data[6]_i_7_n_0 ),
        .O(\signal_data_reg[6]_i_4_n_0 ),
        .S(pattern_bit[2]));
  MUXF7 \signal_data_reg[6]_i_5 
       (.I0(\signal_data[6]_i_8_n_0 ),
        .I1(\signal_data[6]_i_9_n_0 ),
        .O(\signal_data_reg[6]_i_5_n_0 ),
        .S(pattern_bit[2]));
  FDRE \signal_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\signal_data[7]_i_1_n_0 ),
        .Q(signal_data[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFAEF0A20)) 
    \signal_waveform[0]_INST_0 
       (.I0(signal_data[6]),
        .I1(\set_sig_type_reg[2]_0 [0]),
        .I2(\set_sig_type_reg[2]_0 [2]),
        .I3(\set_sig_type_reg[2]_0 [1]),
        .I4(din[0]),
        .O(signal_waveform[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFAEF0A20)) 
    \signal_waveform[1]_INST_0 
       (.I0(signal_data[6]),
        .I1(\set_sig_type_reg[2]_0 [0]),
        .I2(\set_sig_type_reg[2]_0 [2]),
        .I3(\set_sig_type_reg[2]_0 [1]),
        .I4(din[1]),
        .O(signal_waveform[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFAEF0A20)) 
    \signal_waveform[2]_INST_0 
       (.I0(signal_data[6]),
        .I1(\set_sig_type_reg[2]_0 [0]),
        .I2(\set_sig_type_reg[2]_0 [2]),
        .I3(\set_sig_type_reg[2]_0 [1]),
        .I4(din[2]),
        .O(signal_waveform[2]));
  LUT5 #(
    .INIT(32'hFAEF0A20)) 
    \signal_waveform[3]_INST_0 
       (.I0(signal_data[6]),
        .I1(\set_sig_type_reg[2]_0 [0]),
        .I2(\set_sig_type_reg[2]_0 [2]),
        .I3(\set_sig_type_reg[2]_0 [1]),
        .I4(din[3]),
        .O(signal_waveform[3]));
  LUT5 #(
    .INIT(32'hFAEF0A20)) 
    \signal_waveform[4]_INST_0 
       (.I0(signal_data[6]),
        .I1(\set_sig_type_reg[2]_0 [0]),
        .I2(\set_sig_type_reg[2]_0 [2]),
        .I3(\set_sig_type_reg[2]_0 [1]),
        .I4(din[4]),
        .O(signal_waveform[4]));
  LUT5 #(
    .INIT(32'hFAEF0A20)) 
    \signal_waveform[5]_INST_0 
       (.I0(signal_data[6]),
        .I1(\set_sig_type_reg[2]_0 [0]),
        .I2(\set_sig_type_reg[2]_0 [2]),
        .I3(\set_sig_type_reg[2]_0 [1]),
        .I4(din[5]),
        .O(signal_waveform[5]));
  LUT5 #(
    .INIT(32'hFAEF0A20)) 
    \signal_waveform[6]_INST_0 
       (.I0(signal_data[6]),
        .I1(\set_sig_type_reg[2]_0 [0]),
        .I2(\set_sig_type_reg[2]_0 [2]),
        .I3(\set_sig_type_reg[2]_0 [1]),
        .I4(din[6]),
        .O(signal_waveform[6]));
  LUT5 #(
    .INIT(32'hFAEF0A20)) 
    \signal_waveform[7]_INST_0 
       (.I0(signal_data[7]),
        .I1(\set_sig_type_reg[2]_0 [0]),
        .I2(\set_sig_type_reg[2]_0 [2]),
        .I3(\set_sig_type_reg[2]_0 [1]),
        .I4(din[7]),
        .O(signal_waveform[7]));
endmodule

(* ORIG_REF_NAME = "signal_generator_v1_0" *) 
module embsys_signal_generator_0_0_signal_generator_v1_0
   (Q,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    signal_waveform,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    din,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output [7:0]Q;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output [7:0]signal_waveform;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [7:0]din;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [7:0]Q;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [7:0]din;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [7:0]signal_waveform;

  embsys_signal_generator_0_0_signal_generator_v1_0_S00_AXI signal_generator_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .addr(Q),
        .din(din),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .signal_waveform(signal_waveform));
endmodule

(* ORIG_REF_NAME = "signal_generator_v1_0_S00_AXI" *) 
module embsys_signal_generator_0_0_signal_generator_v1_0_S00_AXI
   (addr,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    signal_waveform,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    din,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output [7:0]addr;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output [7:0]signal_waveform;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [7:0]din;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [7:0]addr;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [7:0]din;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sig_inst_n_0;
  wire [7:0]signal_waveform;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [2:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire \slv_reg2_reg_n_0_[9] ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(sig_inst_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(sig_inst_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(sig_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(sig_inst_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(sig_inst_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(sig_inst_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(sig_inst_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(sig_inst_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg3[0]),
        .I2(slv_reg0[0]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(\slv_reg2_reg_n_0_[10] ),
        .I2(slv_reg0[10]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg3[11]),
        .I2(slv_reg0[11]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg2_reg_n_0_[11] ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg0[12]),
        .I1(slv_reg1[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg2_reg_n_0_[12] ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg0[13]),
        .I1(slv_reg1[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg2_reg_n_0_[13] ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg3[14]),
        .I2(slv_reg0[14]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg2_reg_n_0_[14] ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg0[15]),
        .I1(slv_reg1[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg2_reg_n_0_[15] ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg0[16]),
        .I1(slv_reg1[16]),
        .I2(\slv_reg2_reg_n_0_[16] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(\slv_reg2_reg_n_0_[17] ),
        .I2(slv_reg0[17]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg0[18]),
        .I1(slv_reg1[18]),
        .I2(\slv_reg2_reg_n_0_[18] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(\slv_reg2_reg_n_0_[19] ),
        .I2(slv_reg0[19]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg2[1]),
        .I2(slv_reg0[1]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg0[20]),
        .I1(slv_reg1[20]),
        .I2(\slv_reg2_reg_n_0_[20] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(\slv_reg2_reg_n_0_[21] ),
        .I2(slv_reg0[21]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg3[22]),
        .I2(slv_reg0[22]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg2_reg_n_0_[22] ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(\slv_reg2_reg_n_0_[23] ),
        .I2(slv_reg0[23]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg0[24]),
        .I1(slv_reg1[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg2_reg_n_0_[24] ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg0[25]),
        .I1(slv_reg1[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg2_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg3[26]),
        .I2(slv_reg0[26]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg2_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg0[27]),
        .I1(slv_reg1[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg2_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg0[28]),
        .I1(slv_reg1[28]),
        .I2(\slv_reg2_reg_n_0_[28] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(\slv_reg2_reg_n_0_[29] ),
        .I2(slv_reg0[29]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg0[2]),
        .I1(slv_reg1[2]),
        .I2(slv_reg2[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg0[30]),
        .I1(slv_reg1[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg2_reg_n_0_[30] ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg0[31]),
        .I1(slv_reg1[31]),
        .I2(\slv_reg2_reg_n_0_[31] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg0[3]),
        .I1(slv_reg1[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg2_reg_n_0_[3] ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg0[4]),
        .I1(slv_reg1[4]),
        .I2(\slv_reg2_reg_n_0_[4] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg0[5]),
        .I1(slv_reg1[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg2_reg_n_0_[5] ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg0[6]),
        .I1(slv_reg1[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg2_reg_n_0_[6] ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(\slv_reg2_reg_n_0_[7] ),
        .I2(slv_reg0[7]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg0[8]),
        .I1(slv_reg1[8]),
        .I2(\slv_reg2_reg_n_0_[8] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg0[9]),
        .I1(slv_reg1[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg2_reg_n_0_[9] ),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(sig_inst_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(sig_inst_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(sig_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(sig_inst_n_0));
  embsys_signal_generator_0_0_func_gen sig_inst
       (.Q(addr),
        .SR(sig_inst_n_0),
        .din(din),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\set_freq_reg[31]_0 (slv_reg0),
        .\set_sig_type_reg[2]_0 (slv_reg2),
        .signal_data1_carry_0(slv_reg1[7:0]),
        .\signal_data_reg[6]_i_4_0 (slv_reg3[15:0]),
        .signal_waveform(signal_waveform));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(sig_inst_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(sig_inst_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(sig_inst_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(sig_inst_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(sig_inst_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(sig_inst_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(sig_inst_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(sig_inst_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule
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
