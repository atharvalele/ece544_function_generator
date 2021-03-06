/**
*
* @file display
*
* @author Atharva Lele (atharva@pdx.edu)
* @copyright Atharva Lele, 2021
*
* Contains display related functionality
*******************************************************************************/

#include "display.h"
#include "system.h"
#include "PmodOLEDrgb.h"
#include "nexys4io.h"
#include "function_gen.h"
#include "input.h"

#include <stdio.h>
#include <string.h>

static char value_buf[15];

/* Clear display */
void display_clear(void)
{
	OLEDrgb_Clear(&pmodOLEDrgb_inst);
}

/* Initialize the display and set static text */
void display_init(void)
{
	display_clear();

	/* Set font color to white */
	OLEDrgb_SetFontColor(&pmodOLEDrgb_inst, OLEDrgb_BuildRGB(255, 255, 255));

	/* Print Waveform, red background */
	OLEDrgb_SetFontBkColor(&pmodOLEDrgb_inst, OLEDrgb_BuildRGB(255, 0, 0));
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 2, 0);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "Waveform");

	/* Print Frequency green background */
	OLEDrgb_SetFontBkColor(&pmodOLEDrgb_inst, OLEDrgb_BuildRGB(0, 0, 160));
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 1, 4);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "Frequency");
}

/* Display the waveform type on the OLED */
void display_set_wavetype(wave_type_t type)
{
	/* Black background, white text */
	OLEDrgb_SetFontBkColor(&pmodOLEDrgb_inst, OLEDrgb_BuildRGB(0, 0, 0));
	OLEDrgb_SetFontColor(&pmodOLEDrgb_inst, OLEDrgb_BuildRGB(255, 255, 255));

	/* Clear existing text */
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 2);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "             ");

	/* Set text depending on waveform type */
	switch (type) {
	case SINE_WAVE:
		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 2);
		OLEDrgb_PutString(&pmodOLEDrgb_inst, "Sine");
		break;

	case TRIANGULAR_WAVE:
		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 2, 2);
		OLEDrgb_PutString(&pmodOLEDrgb_inst, "Triangle");
		break;

	case SQUARE_WAVE:
		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 3, 2);
		OLEDrgb_PutString(&pmodOLEDrgb_inst, "Square");
		break;

	case PWM_WAVE:
		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 4, 2);
		OLEDrgb_PutString(&pmodOLEDrgb_inst, "PWM");
		break;

	case PATTERN_GEN_WAVE:
		OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 2);
		OLEDrgb_PutString(&pmodOLEDrgb_inst, "Pattern Gen.");
		break;
	}
}

/* Display the frequency on the OLED */
void display_set_freq(uint32_t freq)
{
	float freq_float;
	uint8_t printed;

	/* Calculate floating point value */
	switch (freq) {
	case 0 ... 999:
		freq_float = freq;
		printed = sprintf(value_buf, "%.1f", freq_float);
		sprintf(value_buf + printed, " Hz");
	break;

	case 1000 ... 999999:
		freq_float = freq / 1000.0;
		printed = sprintf(value_buf, "%.3f", freq_float);
		sprintf(value_buf + printed, " kHz");
	break;

	case 1000000 ... 9999999:
		freq_float = freq / 1000000.0;
		printed = sprintf(value_buf, "%.2f", freq_float);
		sprintf(value_buf + printed, " MHz");
	break;
	}

	/* Black background, white text */
	OLEDrgb_SetFontBkColor(&pmodOLEDrgb_inst, OLEDrgb_BuildRGB(0, 0, 0));
	OLEDrgb_SetFontColor(&pmodOLEDrgb_inst, OLEDrgb_BuildRGB(255, 255, 255));

	/* Clear existing text */
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 0, 6);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, "            ");

	/* Print updated text */
	OLEDrgb_SetCursor(&pmodOLEDrgb_inst, 1, 6);
	OLEDrgb_PutString(&pmodOLEDrgb_inst, value_buf);
}

/* Display current value modifier on lower 7-segment displays */
void display_set_modifier(uint16_t modifier)
{
	uint8_t segment = 0;
	uint8_t digit = 0;

	/* Blank out all digits */
	NX410_SSEG_setAllDigits(SSEGLO, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, 0);

	/* Set digits */
	while (modifier != 0) {
			digit = modifier % 10;
	        modifier = modifier / 10;

	        NX4IO_SSEG_setDigit(SSEGLO, segment, digit);
	        segment++;
	}
}

/* Display set dutycycle on the higher 7-segment displays */
void display_set_dutycycle(uint8_t dutycycle)
{
	uint8_t segment = 0;
	uint8_t digit = 0;
	wave_type_t curr_wave = input_get_sel_wave();

	/* Blank out all digits */
	NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, 0);

	/* Keep display blank if PWM is not selected */
	if (curr_wave != PWM_WAVE)
		return;

	/* Set digits */
	if (dutycycle == 0) {
		NX4IO_SSEG_setDigit(SSEGHI, DIGIT6, CC_0);
		NX4IO_SSEG_setDigit(SSEGHI, DIGIT5, CC_F);
		NX4IO_SSEG_setDigit(SSEGHI, DIGIT4, CC_F);
	} else {
		while (dutycycle != 0) {
				digit = dutycycle % 10;
				dutycycle = dutycycle / 10;

				NX4IO_SSEG_setDigit(SSEGHI, segment, digit);
				segment++;
		}
	}
}

/*
 * Display that we are editing the duty cycle by
 * lighting a decimal point
 */
void display_set_duty_indicator(uint8_t on)
{
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT7, on);
}

/* Display the set pattern on the board LEDs */
void display_set_pattern(uint16_t pattern)
{
	if (input_get_sel_wave() != PATTERN_GEN_WAVE)
		NX4IO_setLEDs(0);
	else
		NX4IO_setLEDs(pattern);
}
