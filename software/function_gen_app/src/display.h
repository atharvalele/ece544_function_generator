#ifndef __DISPLAY_H__
#define __DISPLAY_H__

/**
*
* @file display
*
* @author Atharva Lele (atharva@pdx.edu)
* @copyright Atharva Lele, 2021
*
* Contains display related functionality
*******************************************************************************/

/* Includes */
#include "system.h"
#include "function_gen.h"

/* Function declarations */
extern void display_clear(void);
extern void display_init(void);
extern void display_set_wavetype(wave_type_t type);
extern void display_set_freq(uint32_t freq);
extern void display_set_modifier(uint16_t modifier);
extern void display_set_dutycycle(uint8_t dutycycle);
extern void display_set_duty_indicator(uint8_t on);
extern void display_set_pattern(uint16_t pattern);

#endif
