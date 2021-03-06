#ifndef __FUNCTION_GEN_H__
#define __FUNCTION_GEN_H__

/**
*
* @file function_gen.h
*
* @author Atharva Lele (atharva@pdx.edu)
* @copyright Atharva Lele, 2021
*
* Function generator peripheral driver
*******************************************************************************/

/* Includes */
#include "system.h"
#include "xparameters.h"
#include "signal_generator.h"

/* Peripheral addresses and defines */
#define FUNCTION_GEN_BASE_ADDR			XPAR_SIGNAL_GENERATOR_0_S00_AXI_BASEADDR
#define FUNCTION_GEN_FREQUENCY_OFFSET	SIGNAL_GENERATOR_S00_AXI_SLV_REG0_OFFSET
#define FUNCTION_GEN_DUTYCYCLE_OFFSET	SIGNAL_GENERATOR_S00_AXI_SLV_REG1_OFFSET
#define FUNCTION_GEN_SIG_TYPE_OFFSET	SIGNAL_GENERATOR_S00_AXI_SLV_REG2_OFFSET
#define FUNCTION_GEN_PATTERN_OFFSET		SIGNAL_GENERATOR_S00_AXI_SLV_REG3_OFFSET

/* Function generator parameters according to specifications */
#define FUNCTION_GEN_NUM_OF_SAMPLES		100
#define FUNCTION_GEN_SQR_BITS			2
#define FUNCTION_GEN_PWM_BITS			256
#define FUNCTION_GEN_PATTERN_BITS		16
#define FUNCTION_GEN_FREQ				100000000
#define FUNCTION_GEN_FREQ_MIN			100
#define FUNCTION_GEN_FREQ_MAX			100000

/* Wave types */
typedef enum {
	SINE_WAVE,
	TRIANGULAR_WAVE,
	SQUARE_WAVE,
	PWM_WAVE,
	PATTERN_GEN_WAVE
} wave_type_t;

/* Peripheral functions */
extern void function_gen_init(void);
extern void function_gen_set_type(wave_type_t type);
extern void function_gen_set_freq(uint32_t freq);
extern void function_gen_set_duty(uint8_t duty);
extern void function_gen_set_pattern(uint16_t pattern);

/* Helper functions */
extern const char* function_gen_get_wave_name(wave_type_t wave);

#endif
