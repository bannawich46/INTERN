/*
 * SWLED.c
 *
 *  Created on: Jun 12, 2024
 *      Author: bannawich
 */
/*
 * presspb_led_nios2.c
  */
#include "sys/alt_stdio.h"
#include "system.h"

#define LED_BLINK_DELAY 250000 // Blink delay for LED2 (every 1 seconds)
int main()
{
	int switch_value;
	int led_value = 0;
	int counter = 0;

	    while (1) {
	        // Read the switch value
	        switch_value = *(volatile unsigned char *) SW_PIO_BASE;

	        // Control LED1 with the switch
	        if (switch_value & 0x01) {
	            led_value |= 0x01; // Set the last bit of led_value to 1
	        } else {
	            led_value &= ~0x01; // Set the last bit of led_value to 0
	        }

	        // Blink LED2 every 0.5 seconds
	        counter++;
	        if (counter >= LED_BLINK_DELAY) {
	            counter = 0;
	            led_value ^= 0x02; // Toggle the second bit of led_value
	        }

	        // Write the value to the LED
	        *(volatile unsigned char *) LED_PIO_BASE = led_value;
	    }
   return (0);
}



