#ifndef __HAGL_HAL_H__
#define __HAGL_HAL_H__

/**
 * HAGL library HAL provider
 *
 * Provide basic drawing functions to
 * the drawing library
 *
 * Author: Atharva Lele <atharva@pdx.edu>
 */

#include <stdint.h>
#include "PmodOLEDrgb.h"

typedef uint16_t color_t;

/* Display Parameters */
#define DISPLAY_WIDTH       OLEDRGB_WIDTH
#define DISPLAY_HEIGHT      OLEDRGB_HEIGHT
#define DISPLAY_DEPTH       4

/* Display Features */
#define HAGL_HAS_HAL_CLEAR_SCREEN

#endif
