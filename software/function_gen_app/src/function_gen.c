/**
*
* @file function_gen.c
*
* @author Atharva Lele (atharva@pdx.edu)
* @copyright Atharva Lele, 2021
*
* Function generator peripheral driver
*******************************************************************************/

#include "system.h"
#include "xparameters.h"

#include "input.h"
#include "function_gen.h"

/* Peripheral functions */

/* Init - Set sine wave @ 1kHz */
void function_gen_init(void)
{
	function_gen_set_type(SINE_WAVE);
	function_gen_set_freq(1000);
}

/* Set type - set wave type */
void function_gen_set_type(wave_type_t type)
{
	SIGNAL_GENERATOR_mWriteReg(FUNCTION_GEN_BASE_ADDR,
							   FUNCTION_GEN_SIG_TYPE_OFFSET,
							   type);
}

/* Get Wave Name */
const char* function_gen_get_wave_name(wave_type_t wave)
{
   switch (wave)
   {
      case SINE_WAVE: return "Sine";
      case TRIANGULAR_WAVE: return "Triangular";
      case SQUARE_WAVE: return "Square";
      case PWM_WAVE: return "PWM";
      case PATTERN_GEN_WAVE: return "Pattern Gen";
      default: return "Unknown";
   }
}

/* Set frequency for generation */
void function_gen_set_freq(uint32_t freq)
{
	/*
	 * Calculate the divider value
	 * Divider = (Clock / (desired freq * no. of samples)) - 1
	 *
	 * -1 needed since counting starts from 0
	 *
	 * Square and PWM are generated, so the number of
	 * samples is effectively two - 0 and 1
	 */
	float divider;
	wave_type_t wave_type = input_get_sel_wave();

	/* Set divider value according to wave type */
	switch (wave_type) {
	case SINE_WAVE:
	case TRIANGULAR_WAVE:
		divider = (FUNCTION_GEN_FREQ / (freq * FUNCTION_GEN_NUM_OF_SAMPLES)) - 1;
		break;

	case SQUARE_WAVE:
		divider = (FUNCTION_GEN_FREQ / (freq * FUNCTION_GEN_SQR_BITS)) - 1;
		break;
	case PWM_WAVE:
		divider = (FUNCTION_GEN_FREQ / (freq * FUNCTION_GEN_PWM_BITS)) - 1;
		break;

	case PATTERN_GEN_WAVE:
		divider = (FUNCTION_GEN_FREQ / (freq * FUNCTION_GEN_PATTERN_BITS)) - 1;
		break;
	}

	/* Write divider value to hardware */
	SIGNAL_GENERATOR_mWriteReg(FUNCTION_GEN_BASE_ADDR,
							   FUNCTION_GEN_FREQUENCY_OFFSET,
							   (uint32_t)divider);

	xil_printf("Divider Value: %d\n", (uint32_t)divider);
}

/* Set dutycycle for PWM */
void function_gen_set_duty(uint8_t duty)
{
	/* Scale 0-100 to 0-255 */
	duty = (uint16_t)duty * 255 / 100;

	/* Write to device */
	SIGNAL_GENERATOR_mWriteReg(FUNCTION_GEN_BASE_ADDR,
							   FUNCTION_GEN_DUTYCYCLE_OFFSET,
							   duty);
}

/* Set 16-bit pattern */
void function_gen_set_pattern(uint16_t pattern)
{
	/* Write to device */
	SIGNAL_GENERATOR_mWriteReg(FUNCTION_GEN_BASE_ADDR,
							   FUNCTION_GEN_PATTERN_OFFSET,
							   pattern);
}
