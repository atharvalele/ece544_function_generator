/**
*
* @file main.c
*
* @author Atharva Lele (atharva@pdx.edu)
* @copyright Atharva Lele, 2021
*******************************************************************************/

#include "platform.h"
#include "system.h"
#include "xparameters.h"

#include "nexys4io.h"
#include "xwdttb.h"

#include "hagl-lib/hagl.h"

int main(void)
{
	uint32_t status;

	/* Initialize the system */
	init_platform();
	status = do_init();

	/* Enable global interrupts */
	microblaze_enable_interrupts();

	/* Init OK? */
	if (status != XST_SUCCESS)
		while (1);

	xil_printf("Board INIT OK");

	/* Turn OFF all LEDs and displays onboard */
	NX410_SSEG_setAllDigits(SSEGLO, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, 0);
	NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, 0);

	/* Set up and clear OLED */
	hagl_init();
	hagl_clear_screen();

	while (1) {
		// Reset WDT if expired
		if (XWdtTb_IsWdtExpired(&WDTTimerInst)) {
			XWdtTb_RestartWdt(&WDTTimerInst);
		}
	}
}