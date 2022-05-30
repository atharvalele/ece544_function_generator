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

void display_clear(void)
{
	OLEDrgb_Clear(&pmodOLEDrgb_inst);
}
