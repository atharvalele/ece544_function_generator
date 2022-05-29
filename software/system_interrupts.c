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
#include "nexys4io.h"

/**************************** INTERRUPT HANDLERS ******************************/

/****************************************************************************/
/**
* Fixed interval timer interrupt handler
*
* Reads the GPIO port which reads back the hardware generated PWM wave for the RGB Leds
*
* @note
* ECE 544 students - When you implement your software solution for pulse width detection in
* Project 1 this could be a reasonable place to do that processing.
 *****************************************************************************/

void FIT_Handler(void)
{
	static uint16_t dp_count = 0;
	static uint8_t dp_state = 0;

	dp_count++;

	// Blink every once in a while
	if (dp_count > 10000) {
		dp_count = 0;
		dp_state = !dp_state;
		NX4IO_SSEG_setDecPt(SSEGLO, DIGIT2, dp_state);
	}
}
