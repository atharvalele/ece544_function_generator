/**
*
* @file input.c
*
* @author Atharva Lele (atharva@pdx.edu)
* @copyright Atharva Lele, 2021
*
* Input related variables and tasks
*******************************************************************************/

#include "system.h"
#include "xparameters.h"

#include "nexys4io.h"
#include "PmodENC.h"

#include "input.h"
#include "display.h"
#include "function_gen.h"

/* Static Variables */
static uint8_t enc_state, enc_last_state;
static uint8_t button_state = 0, button_last_state = 0;
static uint16_t freq_modifier;
static wave_type_t waveform_type;
static int32_t waveform_freq, waveform_freq_temp;
static int16_t waveform_duty;
static uint8_t duty_sel;
static uint16_t pattern, slide_switch_state, slide_switch_last_state;

/* Volatile Variables */
volatile uint8_t freq_update = 0;
volatile uint8_t duty_cycle_update = 0;
volatile uint8_t wave_type_update = 0;
volatile uint8_t modifier_update = 0;
volatile uint8_t pattern_update = 0;

/* Initialize bootup values */
void input_init(void)
{
	/*
	 * 100 Hz Sine Wave at boot
	 *
	 * Value is set to 99 because input_task()
	 * detects a rotary encoder spin for some reason
	 * and increments the value by 1
	 */
	waveform_type = SINE_WAVE;
	waveform_freq = 99;

	/* Set frequency modifier to 1 at boot */
	freq_modifier = 1;
}

/* Input task -- to be called in the superloop */
void input_task(void)
{
	/* Check for buttons */
	button_state = NX4IO_getBtns();
	if ((NX4IO_isPressed(BTNR)) && (button_state != button_last_state)) {
		waveform_type++;
		if (waveform_type > 4)
			waveform_type = 0;

		freq_update = 1;
		wave_type_update = 1;
		duty_cycle_update = 1;
		pattern_update = 1;
	}
	else if ((NX4IO_isPressed(BTNL)) && (button_state != button_last_state)) {
		waveform_type--;
		if (waveform_type > 5)
			waveform_type = 4;

		freq_update = 1;
		wave_type_update = 1;
		duty_cycle_update = 1;
		pattern_update = 1;
	}
	else if ((NX4IO_isPressed(BTNU)) && (button_state != button_last_state)) {
		freq_modifier = freq_modifier * 10;
		if (freq_modifier > 1000)
			freq_modifier = 1000;

		modifier_update = 1;
	}
	else if ((NX4IO_isPressed(BTND)) && (button_state != button_last_state)) {
		freq_modifier = freq_modifier / 10;
		if (freq_modifier < 1)
			freq_modifier = 1;

		modifier_update = 1;
	}
	else if ((NX4IO_isPressed(BTNC)) && (button_state != button_last_state) && (waveform_type == PWM_WAVE)) {
		duty_sel = !duty_sel;
		duty_cycle_update = 1;
	}

	/* Update push button state */
	button_last_state = button_state;

	/* Check if waveform type is pattern, and then read the slide switches */
	if (waveform_type == PATTERN_GEN_WAVE) {
		slide_switch_state = NX4IO_getSwitches();

		/* If value is changed, update the value & set flags */
		if (slide_switch_state != slide_switch_last_state) {
			pattern = slide_switch_state;
			slide_switch_last_state = slide_switch_state;

			pattern_update = 1;
		}
	}

	/* Get rotary encoder state */
	enc_state = ENC_getState(&pmodENC_inst);

	/* Update frequency value */
	if (waveform_type == PWM_WAVE) {
		/* Changing duty cycle value? */
		if (duty_sel) {
			waveform_duty += ENC_getRotation(enc_state, enc_last_state);
			if (waveform_duty > 100)
				waveform_duty = 100;
			else if (waveform_duty < 0)
				waveform_duty = 0;
			duty_cycle_update = 1;
		} else {
			/* Changing frequency value */
			waveform_freq_temp = waveform_freq;
			waveform_freq_temp += freq_modifier * ENC_getRotation(enc_state, enc_last_state);
		}
	} else {
		waveform_freq_temp = waveform_freq;
		waveform_freq_temp += freq_modifier * ENC_getRotation(enc_state, enc_last_state);
	}

	/* Limit to min-max freq range */
	if (waveform_freq_temp < FUNCTION_GEN_FREQ_MIN)
		waveform_freq_temp = FUNCTION_GEN_FREQ_MIN;
	else if (waveform_freq_temp > FUNCTION_GEN_FREQ_MAX)
		waveform_freq_temp = FUNCTION_GEN_FREQ_MAX;

	/* Update display */
	if (waveform_freq_temp != waveform_freq) {
		waveform_freq = waveform_freq_temp;
		freq_update = 1;
	}

	/* Update state */
	enc_last_state = enc_state;
}

/* Getters for various parameters */

uint32_t input_get_freq(void)
{
	return waveform_freq;
}

wave_type_t input_get_sel_wave(void)
{
	return waveform_type;
}

uint16_t input_get_modifier(void)
{
	return freq_modifier;
}

int16_t input_get_dutycycle(void)
{
	return waveform_duty;
}

uint8_t input_get_duty_sel(void)
{
	return duty_sel;
}

uint16_t input_get_pattern(void)
{
	return pattern;
}
