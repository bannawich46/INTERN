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
#define PIO_0_BASE 0x8810
#define PIO_1_BASE 0x8800
#define PIO_0_DIR 0x8814
#define PIO_1_DIR 0x8804

int main() {
    volatile unsigned int *led_pio = (unsigned int *)PIO_0_BASE;
    volatile unsigned int *sw_pio = (unsigned int *)PIO_1_BASE;
    volatile unsigned int *led_dir = (unsigned int *)PIO_0_DIR;
    volatile unsigned int *sw_dir = (unsigned int *)PIO_1_DIR;
    *led_dir = 0xFF;
    *sw_dir = 0x00;

    while (1) {
    	if (*sw_pio){
    		// Turn LED on
    		printf("LED ON\n");
    		*led_pio = 0x01;
    		usleep(500000);

    		// Turn LED off
    		printf("LED OFF\n");
    		*led_pio = 0x00;
    		usleep(500000);
    	}
    	else {
    		printf("LED OFF\n");
    		*led_pio = 0x00;
    	}
    }

    return 0;
}



