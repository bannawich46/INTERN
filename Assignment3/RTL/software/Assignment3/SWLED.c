/*
 * SWLED.c
 *
 *  Created on: Jun 12, 2024
 *      Author: bannawich
 */
/*
 * presspb_led_nios2.c
  */
#include <stdio.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"
#include "unistd.h" // For usleep function

int main()
{
    while (1)
    {
    	int switch_state = IORD_ALTERA_AVALON_PIO_DATA(SW_PIO_BASE);
    	if (switch_state) {
    		// Toggle the LED state
    		IOWR_ALTERA_AVALON_PIO_DATA(LED_PIO_BASE, 0x01);
    		usleep(500000);
    		IOWR_ALTERA_AVALON_PIO_DATA(LED_PIO_BASE, 0x00);
    		usleep(500000);
    	}
    	else {
    		IOWR_ALTERA_AVALON_PIO_DATA(LED_PIO_BASE, 0x00);
    	}
    }
    return 0;
}
