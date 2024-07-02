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
    volatile unsigned int *pio_data = (unsigned int *)(PIO_0_BASE);
    volatile unsigned int *pio_dir = (unsigned int *)(PIO_0_BASE + 0x04);
    *pio_dir = 0xFF;

    while (1) {
    	if (*pio_data & 0x100){
    		// Turn LED on
    		printf("LED ON\n");
    		*pio_data = 0x01;
    		usleep(500000);

    		// Turn LED off
    		printf("LED OFF\n");
    		*pio_data = 0x00;
    		usleep(500000);
    	}
    	else {
    		printf("LED OFF\n");
    		*pio_data = 0x00;
    	}
    }

    return 0;
}



