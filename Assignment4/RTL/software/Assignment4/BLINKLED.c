/*
 * BLINKLED.c
 *
 *  Created on: Jun 17, 2024
 *      Author: bannawich
 */
#include <io.h>
#include <system.h>
#include "unistd.h" // For usleep function

int main() {

    while (1) {
    	IOWR(PIO_0_BASE, 0, 0xFF);
    	usleep(1000000);
    	IOWR(PIO_0_BASE, 0, 0x00);
    	usleep(1000000);
    }

    return 0;
}



