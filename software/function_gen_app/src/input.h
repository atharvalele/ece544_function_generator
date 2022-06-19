#ifndef __INPUT_H__
#define __INPUT_H__

/**
*
* @file input.h
*
* @author Atharva Lele (atharva@pdx.edu)
* @copyright Atharva Lele, 2021
*
* Input related variables and tasks
*******************************************************************************/

/* Includes */
#include <stdint.h>
#include "system.h"
#include "function_gen.h"

/* Global Variables */
extern volatile uint8_t freq_update;
extern volatile uint8_t duty_cycle_update;
extern volatile uint8_t wave_type_update;
extern volatile uint8_t modifier_update;
extern volatile uint8_t pattern_update;

/* Function declarations */
extern void input_init(void);
extern uint32_t input_get_freq(void);
extern uint16_t input_get_modifier(void);
extern wave_type_t input_get_sel_wave(void);
extern int16_t input_get_dutycycle(void);
extern uint8_t input_get_duty_sel(void);
extern uint16_t input_get_pattern(void);
extern void input_task(void);

#endif
