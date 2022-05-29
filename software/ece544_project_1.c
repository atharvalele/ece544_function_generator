 /**
*
* @file ece544_project1.c
*
* @author Atharva Lele (atharva@pdx.edu)
* @copyright Atharva Lele, 2021
*
* Modified from Original Test for Project 1 by Roy Kravitz at Portland State University
*
*******************************************************************************/

/***************************** Header Files ***********************************/
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include "platform.h"
#include "system.h"
#include "xparameters.h"
#include "xstatus.h"

#include "PmodOLEDrgb.h"
#include "PmodENC.h"

#include "nexys4io.h"
/***************************** Variables ***************************/
// Array to hold brightness values
uint8_t rgb_led_brightness[3] = {0};
uint8_t rgb_OLED_brightness[3] = {0};

// Selection of which color's brightness to control - 0: R, 1: G, 2: B
uint8_t sel_color = 0;

// OLED string buffer
char oled_buf[10];

/***************************** Function Prototypes *************************/
void oled_setup(void);
void push_btn_task(void);
uint8_t rotary_enc_task(void);
void hw_pwdetect_task(void);
uint8_t validate_dutycycle(uint8_t old, uint8_t new);

/***************************** Functions ***********************************/
int main(void)
{
	uint32_t status;
	uint8_t exit_flag = 0;

	// Initialize the system
	init_platform();
	status = do_init();

	// Enable Global Interrupts
	microblaze_enable_interrupts();

	if (status != XST_SUCCESS) {
		exit(1);
	}

	// Turn off all the 7-Segment Displays
	NX410_SSEG_setAllDigits(SSEGLO, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, 0);
	NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, 0);

	// Enable RGB led PWMs
	NX4IO_RGBLED_setChnlEn(RGB1, true, true, true);
	NX4IO_RGBLED_setChnlEn(RGB2, true, true, true);

	// By default we change dutycycle of RED LED -- so indicate RED
	// on RGB2 LED
	NX4IO_RGBLED_setDutyCycle(RGB2, 5, 0, 0);

	// System Init complete -- Print a message
	xil_printf("ECE544 Project 1 - Atharva Lele <atharva@pdx.edu>\n");

	// Draw the RGB Rectangles on the OLED
	oled_setup();

	SIGNAL_GENERATOR_mWriteReg(XPAR_SIGNAL_GENERATOR_0_S00_AXI_BASEADDR ,SIGNAL_GENERATOR_S00_AXI_SLV_REG0_OFFSET,1000000);
	// Main loop
	while (1) {
		push_btn_task();
		exit_flag = rotary_enc_task();
		//hw_pwdetect_task();

		// Application Termination Condition
		if (exit_flag)
			break;
	}

	// Print application termination message
	// Turn off all the 7-Segment Displays
	NX410_SSEG_setAllDigits(SSEGLO, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, 0);
	NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, 0);

	// Disable RGB led PWMs
	NX4IO_RGBLED_setChnlEn(RGB1, false, false, false);
	NX4IO_RGBLED_setChnlEn(RGB2, false, false, false);

	// Set OLED message
	OLEDrgb_Clear(&pmodOLEDrgb_inst);

	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 2);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "Application");
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 5);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "Terminated");

	// Disable interrupts
	microblaze_disable_interrupts();

	return 0;
}

// Set up OLED display
void oled_setup(void)
{
	uint16_t color;

	// Clear Screen
	OLEDrgb_Clear(&pmodOLEDrgb_inst);

	// Draw Rectangle
	color = OLEDrgb_BuildRGB(255, 255, 255);
	OLEDrgb_DrawRectangle(&pmodOLEDrgb_inst, 0, 0, 95, 19, color, 0, color);

	// Draw Text
	OLEDrgb_SetFontColor(&pmodOLEDrgb_inst, OLEDrgb_BuildRGB(255, 255, 255));

	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 1, 3);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "R:");
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 7, 3);
	OLEDrgb_PutChar(&pmodOLEDrgb_inst, '%');

	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 1, 5);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "G:");
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 7, 5);
	OLEDrgb_PutChar(&pmodOLEDrgb_inst, '%');

	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 1, 8);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "B:");
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 7, 8);
	OLEDrgb_PutChar(&pmodOLEDrgb_inst, '%');
}

// Check button presses and update the selected color variable
void push_btn_task(void)
{
	uint8_t btn = sel_color;

	if (NX4IO_isPressed(BTNL)) {
		btn = 0;
		 NX4IO_RGBLED_setDutyCycle(RGB2, 5, 0, 0);
	} else if (NX4IO_isPressed(BTNC)) {
		btn = 1;
		 NX4IO_RGBLED_setDutyCycle(RGB2, 0, 5, 0);
	} else if (NX4IO_isPressed(BTNR)) {
		btn = 2;
		 NX4IO_RGBLED_setDutyCycle(RGB2, 0, 0, 5);
	}

	// Update button
	if (btn != sel_color) {
		sel_color = btn;
		xil_printf("Button Pressed: %d\n", sel_color);
	}
}

// Check rotary encoder status and update count
uint8_t rotary_enc_task(void)
{
	static uint8_t state = 0, last_state = 0;

	uint16_t color, border;

	int16_t led_brightness = rgb_led_brightness[sel_color];

	// get the PmodENC state
	state = ENC_getState(&pmodENC_inst);

	// Update the brightness -- multiply by 4 to update quicker
	led_brightness += 4 * ENC_getRotation(state, last_state);

	// Limit max brightness 50% and prevent underflow
	if (led_brightness > 127)
		led_brightness = 127;
	else if (led_brightness < 0)
		led_brightness = 0;

	// Update brightness
	if (rgb_led_brightness[sel_color] != led_brightness) {
		rgb_led_brightness[sel_color] = led_brightness;
		rgb_OLED_brightness[sel_color] = 2 * led_brightness;

		xil_printf("R: %d, G: %d, B: %d\n",
					rgb_OLED_brightness[0], rgb_OLED_brightness[1], rgb_OLED_brightness[2]);

		// Set LED Brightness
		NX4IO_RGBLED_setDutyCycle(RGB1,
					rgb_led_brightness[0], rgb_led_brightness[1], rgb_led_brightness[2]);

		// Update OLED display rectangle
		border = OLEDrgb_BuildRGB(255, 255, 255);
		color = OLEDrgb_BuildRGB(rgb_OLED_brightness[0], rgb_OLED_brightness[1], rgb_OLED_brightness[2]);
		OLEDrgb_DrawRectangle(&pmodOLEDrgb_inst, 0, 0, 95, 19, border, 1, color);
	}

	// Update State
	last_state = state;

	// Check button press
	return ENC_buttonPressed(state);
}



