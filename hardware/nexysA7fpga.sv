// nexysA7fpga.sv - Top level module for the Nexys A7 version of the ECE 544 Getting Started project
//
// Created By:	Roy Kravitz
// Date:		26-March-2022
// Version:		2.0
//
// Description:
// ------------
// This module provides the top level for the Getting Started hardware which
// includes the Nexys A7 and no Pmods. Project #1 will add a PmodOLEDrgb and a
// a PmodENC to the system but we didn't want to hold up you working on this
// project while waiting for your Pmods to arrive.
//////////////////////////////////////////////////////////////////////
module nexysA7fpga(
    input logic         clk,			// 100Mhz clock input
    input logic         btnC,			// center pushbutton
    input logic         btnU,			// UP (North) pusbhbutton
    input logic         btnL,			// LEFT (West) pushbutton
    input logic         btnD,			// DOWN (South) pushbutton  - used for system reset
    input logic         btnR,			// RIGHT (East) pushbutton
	input logic         btnCpuReset,	// CPU reset pushbutton
    input logic [15:0]  sw,				// slide switches on Nexys 4
    output logic [15:0] led,			// LEDs on Nexys 4   
    output logic        RGB1_Blue,      // RGB1 LED (LD16) 
    output logic        RGB1_Green,
    output logic        RGB1_Red,
    output logic        RGB2_Blue,      // RGB2 LED (LD17)
    output logic        RGB2_Green,
    output logic        RGB2_Red,
    output logic [7:0]  an,             // Seven Segment display
    output logic [6:0]  seg,
    output logic        dp,             // decimal point display on the seven segment 
    
    input logic         uart_rtl_rxd,	// USB UART Rx and Tx on Nexys 4
    output logic        uart_rtl_txd,	
    
	output logic [7:0]  JA,              // JA Pmod conector - Can be used for debugging purposes
	inout  logic [7:0]  JB,              // JB Pmod connector - PMODOledRGB - RGB OLED Display
	inout  logic [7:0]  JD,               // JD Pmod connector - PMODEnc - Rotary encoder
    inout  logic [7:0]  JC
);

// internal variables
// Clock and Reset 
logic           sysclk; 
logic           sysreset_n, sysreset;

// Rotary Encoder pins
logic 			Pmod_out_0_pin1_i, Pmod_out_0_pin1_io, Pmod_out_0_pin1_o, Pmod_out_0_pin1_t;
logic 			Pmod_out_0_pin2_i, Pmod_out_0_pin2_io, Pmod_out_0_pin2_o, Pmod_out_0_pin2_t;
logic 			Pmod_out_0_pin3_i, Pmod_out_0_pin3_io, Pmod_out_0_pin3_o, Pmod_out_0_pin3_t;
logic 			Pmod_out_0_pin4_i, Pmod_out_0_pin4_io, Pmod_out_0_pin4_o, Pmod_out_0_pin4_t;
logic 			Pmod_out_0_pin7_i, Pmod_out_0_pin7_io, Pmod_out_0_pin7_o, Pmod_out_0_pin7_t; 
logic 			Pmod_out_0_pin8_i, Pmod_out_0_pin8_io, Pmod_out_0_pin8_o, Pmod_out_0_pin8_t; 
logic 			Pmod_out_0_pin9_i, Pmod_out_0_pin9_io, Pmod_out_0_pin9_o, Pmod_out_0_pin9_t;
logic 			Pmod_out_0_pin10_i,Pmod_out_0_pin10_io, Pmod_out_0_pin10_o, Pmod_out_0_pin10_t;

// RGB OLED Pins
logic 			pmodoledrgb_out_pin1_i, pmodoledrgb_out_pin1_io, pmodoledrgb_out_pin1_o, pmodoledrgb_out_pin1_t; 
logic 			pmodoledrgb_out_pin2_i, pmodoledrgb_out_pin2_io, pmodoledrgb_out_pin2_o, pmodoledrgb_out_pin2_t; 
logic 			pmodoledrgb_out_pin3_i, pmodoledrgb_out_pin3_io, pmodoledrgb_out_pin3_o, pmodoledrgb_out_pin3_t; 
logic 			pmodoledrgb_out_pin4_i, pmodoledrgb_out_pin4_io, pmodoledrgb_out_pin4_o, pmodoledrgb_out_pin4_t; 
logic 			pmodoledrgb_out_pin7_i, pmodoledrgb_out_pin7_io, pmodoledrgb_out_pin7_o, pmodoledrgb_out_pin7_t; 
logic 			pmodoledrgb_out_pin8_i, pmodoledrgb_out_pin8_io, pmodoledrgb_out_pin8_o, pmodoledrgb_out_pin8_t; 
logic 			pmodoledrgb_out_pin9_i, pmodoledrgb_out_pin9_io, pmodoledrgb_out_pin9_o, pmodoledrgb_out_pin9_t; 
logic 			pmodoledrgb_out_pin10_i, pmodoledrgb_out_pin10_io, pmodoledrgb_out_pin10_o, pmodoledrgb_out_pin10_t;

// R2R Pins 
logic [7:0]     signal_waveform;
// GPIO pins 
logic [7:0]	    gpio_in;				// embsys GPIO input port
logic [7:0]	    gpio_out;				// embsys GPIO output port

// RGB LED 
logic           w_RGB1_Red, w_RGB1_Blue, w_RGB1_Green;

// LED pins 
logic [15:0]    led_int;                // Nexys4IO drives these outputs

// make the connections to the GPIO port.  Most of the bits are unused in the Getting
// Started project but GPIO's provide a convenient way to get the inputs and
// outputs from logic you create to and from the Microblaze.  For example,
// you may decide that using an axi_gpio peripheral is a good way to interface
// your hardware pulse-width detect logic with the Microblaze.  Our application
// is simple.
// Wrap the RGB led output back to the application program for software pulse-width detect
assign gpio_in = {5'b00000, w_RGB1_Red, w_RGB1_Blue, w_RGB1_Green};

// HW Pulse Width Detect connections
logic [7:0] red_dutycycle;
logic [7:0] green_dutycycle;
logic [7:0] blue_dutycycle;
logic pw_clock;

// Drive the leds from the signal generated by the microblaze 
assign led = led_int;                   // LEDs are driven by led

// make the connections
// system-wide signals
assign sysclk = clk;
assign sysreset_n = btnCpuReset;		// The CPU reset pushbutton is asserted low.  The other pushbuttons are asserted high
										// but the Microblaze for Nexys 4 expects reset to be asserted low
assign sysreset = ~sysreset_n;			// Generate a reset signal that is asserted high for any logic blocks expecting it.

// Pmod OLED connections 
assign JB[0] = pmodoledrgb_out_pin1_io;
assign JB[1] = pmodoledrgb_out_pin2_io;
assign JB[2] = pmodoledrgb_out_pin3_io;
assign JB[3] = pmodoledrgb_out_pin4_io;
assign JB[4] = pmodoledrgb_out_pin7_io;
assign JB[5] = pmodoledrgb_out_pin8_io;
assign JB[6] = pmodoledrgb_out_pin9_io;
assign JB[7] = pmodoledrgb_out_pin10_io;

// PmodENC signals
// JD - top row
// Pins are assigned such that turning the knob to the right
// causes the rotary count to increment.
assign  Pmod_out_0_pin1_io = JD[0];
assign  Pmod_out_0_pin2_io = JD[1];
assign  Pmod_out_0_pin3_io = JD[2];
assign  Pmod_out_0_pin4_io = JD[3];
assign  Pmod_out_0_pin7_io = JD[4];
assign  Pmod_out_0_pin8_io = JD[5];
assign  Pmod_out_0_pin9_io = JD[6];
assign  Pmod_out_0_pin10_io = JD[7];

// JA can be used for debug purposes
assign JA[0] = signal_waveform[0];
assign JA[1] = signal_waveform[1];
assign JA[2] = signal_waveform[2];
assign JA[3] = signal_waveform[3];
assign JA[4] = signal_waveform[4];
assign JA[5] = signal_waveform[5];
assign JA[6] = signal_waveform[6];
assign JA[7] = signal_waveform[7];

// instantiate the embedded system
embsys EMBSYS
(
        // PMOD OLED pins 
        .PmodOLEDrgb_out_0_pin10_i(pmodoledrgb_out_pin10_i),
	    .PmodOLEDrgb_out_0_pin10_o(pmodoledrgb_out_pin10_o),
	    .PmodOLEDrgb_out_0_pin10_t(pmodoledrgb_out_pin10_t),
	    .PmodOLEDrgb_out_0_pin1_i(pmodoledrgb_out_pin1_i),
	    .PmodOLEDrgb_out_0_pin1_o(pmodoledrgb_out_pin1_o),
	    .PmodOLEDrgb_out_0_pin1_t(pmodoledrgb_out_pin1_t),
	    .PmodOLEDrgb_out_0_pin2_i(pmodoledrgb_out_pin2_i),
	    .PmodOLEDrgb_out_0_pin2_o(pmodoledrgb_out_pin2_o),
	    .PmodOLEDrgb_out_0_pin2_t(pmodoledrgb_out_pin2_t),
	    .PmodOLEDrgb_out_0_pin3_i(pmodoledrgb_out_pin3_i),
	    .PmodOLEDrgb_out_0_pin3_o(pmodoledrgb_out_pin3_o),
	    .PmodOLEDrgb_out_0_pin3_t(pmodoledrgb_out_pin3_t),
	    .PmodOLEDrgb_out_0_pin4_i(pmodoledrgb_out_pin4_i),
	    .PmodOLEDrgb_out_0_pin4_o(pmodoledrgb_out_pin4_o),
	    .PmodOLEDrgb_out_0_pin4_t(pmodoledrgb_out_pin4_t),
	    .PmodOLEDrgb_out_0_pin7_i(pmodoledrgb_out_pin7_i),
	    .PmodOLEDrgb_out_0_pin7_o(pmodoledrgb_out_pin7_o),
	    .PmodOLEDrgb_out_0_pin7_t(pmodoledrgb_out_pin7_t),
	    .PmodOLEDrgb_out_0_pin8_i(pmodoledrgb_out_pin8_i),
	    .PmodOLEDrgb_out_0_pin8_o(pmodoledrgb_out_pin8_o),
	    .PmodOLEDrgb_out_0_pin8_t(pmodoledrgb_out_pin8_t),
	    .PmodOLEDrgb_out_0_pin9_i(pmodoledrgb_out_pin9_i),
	    .PmodOLEDrgb_out_0_pin9_o(pmodoledrgb_out_pin9_o),
	    .PmodOLEDrgb_out_0_pin9_t(pmodoledrgb_out_pin9_t),
	    // Pmod Rotary Encoder
	    .Pmod_out_0_pin10_i(Pmod_out_0_pin10_i),
        .Pmod_out_0_pin10_o(Pmod_out_0_pin10_o),
        .Pmod_out_0_pin10_t(Pmod_out_0_pin10_t),
        .Pmod_out_0_pin1_i(Pmod_out_0_pin1_i),
        .Pmod_out_0_pin1_o(Pmod_out_0_pin1_o),
        .Pmod_out_0_pin1_t(Pmod_out_0_pin1_t),
        .Pmod_out_0_pin2_i(Pmod_out_0_pin2_i),
        .Pmod_out_0_pin2_o(Pmod_out_0_pin2_o),
        .Pmod_out_0_pin2_t(Pmod_out_0_pin2_t),
        .Pmod_out_0_pin3_i(Pmod_out_0_pin3_i),
        .Pmod_out_0_pin3_o(Pmod_out_0_pin3_o),
        .Pmod_out_0_pin3_t(Pmod_out_0_pin3_t),
        .Pmod_out_0_pin4_i(Pmod_out_0_pin4_i),
        .Pmod_out_0_pin4_o(Pmod_out_0_pin4_o),
        .Pmod_out_0_pin4_t(Pmod_out_0_pin4_t),
        .Pmod_out_0_pin7_i(Pmod_out_0_pin7_i),
        .Pmod_out_0_pin7_o(Pmod_out_0_pin7_o),
        .Pmod_out_0_pin7_t(Pmod_out_0_pin7_t),
        .Pmod_out_0_pin8_i(Pmod_out_0_pin8_i),
        .Pmod_out_0_pin8_o(Pmod_out_0_pin8_o),
        .Pmod_out_0_pin8_t(Pmod_out_0_pin8_t),
        .Pmod_out_0_pin9_i(Pmod_out_0_pin9_i),
        .Pmod_out_0_pin9_o(Pmod_out_0_pin9_o),
        .Pmod_out_0_pin9_t(Pmod_out_0_pin9_t),
        // RGB1/2 Led's 
        .RGB1_Blue_0(RGB1_Blue),
        .RGB1_Green_0(RGB1_Green),
        .RGB1_Red_0(RGB1_Red),
        .RGB2_Blue_0(RGB2_Blue),
        .RGB2_Green_0(RGB2_Green),
        .RGB2_Red_0(RGB2_Red),
        // Seven Segment Display anode control  
        .an_0(an),
        .dp_0(dp),
        .led_0(led_int),
        .seg_0(seg),
        // Push buttons and switches  
        .btnC_0(btnC),
        .btnD_0(btnD),
        .btnL_0(btnL),
        .btnR_0(btnR),
        .btnU_0(btnU),
        .sw_0(sw),
        // reset and clock 
        .sysreset_n(sysreset_n),
        .sysclk(sysclk),
        // UART pins 
        .uart_rtl_0_rxd(uart_rtl_rxd),
        .uart_rtl_0_txd(uart_rtl_txd),
        .signal_waveform_0(signal_waveform),
        .wea_0(0),
        .dina_0(0),
        .addra_0(0)
);

// Tristate buffers for the pmodOLEDrgb pins
// generated by PMOD bridge component.  Many
// of these signals are not tri-state.
IOBUF pmodoledrgb_out_pin1_iobuf
(
    .I(pmodoledrgb_out_pin1_o),
    .IO(pmodoledrgb_out_pin1_io),
    .O(pmodoledrgb_out_pin1_i),
    .T(pmodoledrgb_out_pin1_t)
);

IOBUF pmodoledrgb_out_pin2_iobuf
(
    .I(pmodoledrgb_out_pin2_o),
    .IO(pmodoledrgb_out_pin2_io),
    .O(pmodoledrgb_out_pin2_i),
    .T(pmodoledrgb_out_pin2_t)
);

IOBUF pmodoledrgb_out_pin3_iobuf
(
    .I(pmodoledrgb_out_pin3_o),
    .IO(pmodoledrgb_out_pin3_io),
    .O(pmodoledrgb_out_pin3_i),
    .T(pmodoledrgb_out_pin3_t)
);

IOBUF pmodoledrgb_out_pin4_iobuf
(
    .I(pmodoledrgb_out_pin4_o),
    .IO(pmodoledrgb_out_pin4_io),
    .O(pmodoledrgb_out_pin4_i),
    .T(pmodoledrgb_out_pin4_t)
);

IOBUF pmodoledrgb_out_pin7_iobuf
(
    .I(pmodoledrgb_out_pin7_o),
    .IO(pmodoledrgb_out_pin7_io),
    .O(pmodoledrgb_out_pin7_i),
    .T(pmodoledrgb_out_pin7_t)
);

IOBUF pmodoledrgb_out_pin8_iobuf
(
    .I(pmodoledrgb_out_pin8_o),
    .IO(pmodoledrgb_out_pin8_io),
    .O(pmodoledrgb_out_pin8_i),
    .T(pmodoledrgb_out_pin8_t)
);

IOBUF pmodoledrgb_out_pin9_iobuf
(
    .I(pmodoledrgb_out_pin9_o),
    .IO(pmodoledrgb_out_pin9_io),
    .O(pmodoledrgb_out_pin9_i),
    .T(pmodoledrgb_out_pin9_t)
);

IOBUF pmodoledrgb_out_pin10_iobuf
(
    .I(pmodoledrgb_out_pin10_o),
    .IO(pmodoledrgb_out_pin10_io),
    .O(pmodoledrgb_out_pin10_i),
    .T(pmodoledrgb_out_pin10_t)
);

// Tristate buffers for the pmodENC pins
// generated by PMOD bridge component.  Many
// of these signals are not tri-state.
IOBUF Pmod_out_0_pin1_iobuf
     (.I(Pmod_out_0_pin1_o),
      .IO(Pmod_out_0_pin1_io),
      .O(Pmod_out_0_pin1_i),
      .T(Pmod_out_0_pin1_t));
	  
IOBUF Pmod_out_0_pin2_iobuf
     (.I(Pmod_out_0_pin2_o),
      .IO(Pmod_out_0_pin2_io),
      .O(Pmod_out_0_pin2_i),
      .T(Pmod_out_0_pin2_t));
	  
IOBUF Pmod_out_0_pin3_iobuf
     (.I(Pmod_out_0_pin3_o),
      .IO(Pmod_out_0_pin3_io),
      .O(Pmod_out_0_pin3_i),
      .T(Pmod_out_0_pin3_t));
	  
IOBUF Pmod_out_0_pin4_iobuf
     (.I(Pmod_out_0_pin4_o),
      .IO(Pmod_out_0_pin4_io),
      .O(Pmod_out_0_pin4_i),
      .T(Pmod_out_0_pin4_t));
	  
IOBUF Pmod_out_0_pin7_iobuf
     (.I(Pmod_out_0_pin7_o),
      .IO(Pmod_out_0_pin7_io),
      .O(Pmod_out_0_pin7_i),
      .T(Pmod_out_0_pin7_t));
	  
IOBUF Pmod_out_0_pin8_iobuf
     (.I(Pmod_out_0_pin8_o),
      .IO(Pmod_out_0_pin8_io),
      .O(Pmod_out_0_pin8_i),
      .T(Pmod_out_0_pin8_t));
	  
IOBUF Pmod_out_0_pin9_iobuf
     (.I(Pmod_out_0_pin9_o),
      .IO(Pmod_out_0_pin9_io),
      .O(Pmod_out_0_pin9_i),
      .T(Pmod_out_0_pin9_t));
	  
IOBUF Pmod_out_0_pin10_iobuf
     (.I(Pmod_out_0_pin10_o),
          .IO(Pmod_out_0_pin10_io),
          .O(Pmod_out_0_pin10_i),
          .T(Pmod_out_0_pin10_t));

endmodule: nexysA7fpga


