/**
*
* @file system_interrupts.c
*
* @author Atharva Lele (atharva@pdx.edu)
* @copyright Atharva Lele, 2021
*
* @note This file contains all interrupt handlers
*******************************************************************************/
#include "system.h"

volatile uint8_t input_flag = 0;
volatile uint32_t ms = 0;

/* Time Handler: measures milliseconds approximately */
void time_handler(void)
{
	ms++;

	if (ms == 100) {
		input_flag = 1;
		ms = 0;
	}
}
