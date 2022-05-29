/**
 * HAGL library HAL provider
 *
 * Provide basic drawing functions to
 * the drawing library
 *
 * Author: Atharva Lele <atharva@pdx.edu>
 */

#include "../system.h"
#include "PmodOLEDrgb.h"

#include "hagl_hal.h"

/* Clear the screen */
void hagl_hal_clear_screen(void)
{
    OLEDrgb_Clear(&pmodOLEDrgb_inst);
}

/* Draw one pixel on the screen at given location */
void hagl_hal_put_pixel(int16_t x0, int16_t y0, color_t color)
{
	OLEDrgb_DrawPixel(&pmodOLEDrgb_inst, x0, y0, color);
}
