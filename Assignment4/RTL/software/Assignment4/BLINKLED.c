/*
 * BLINKLED.c
 *
 *  Created on: Jun 17, 2024
 *      Author: bannawich
 */
#include <io.h>
#include <system.h>
#include "unistd.h" // For usleep function
#include <stdio.h>
int main() {
    volatile unsigned int *led_pio = (unsigned int *)PIO_0_BASE;
    volatile unsigned int *sw_pio = (unsigned int *)PIO_1_BASE;

    while (1) {
    	if (*sw_pio){
    		// Turn LED on
    		printf("LED ON\n");
    		*led_pio = 0xFE;
    		usleep(500000);

    		// Turn LED off
    		printf("LED OFF\n");
    		*led_pio = 0xFF;
    		usleep(500000);
    	}
    	else {
    		printf("LED OFF\n");
    		*led_pio = 0xFF;
    	}
    }

    return 0;
}



