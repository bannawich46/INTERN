/*
 * PWM_LED.c
 *
 *  Created on: Jun 28, 2024
 *      Author: bannawich
 */
#include <io.h>
#include <system.h>
#include "unistd.h" // For usleep function
#include <stdio.h>

int main() {
    volatile unsigned int *pwm_data = (unsigned int *)(PWM_0_BASE);
    volatile unsigned int *pwm_duty = (unsigned int *)(PWM_0_BASE + 0x04);
    volatile unsigned int *pwm_freq = (unsigned int *)(PWM_0_BASE + 0x08);

    while (1) {
    		printf("DUTY > 100 FREQ = 1KHZ\n");
    		*pwm_data = 0xA5;
    		*pwm_duty = 0xFF;
			*pwm_freq = 0x0;
    		usleep(5000000);

    		printf("DUTY = 1 FREQ = 100 KHZ\n");
    		*pwm_data = 0x5A;
    		*pwm_duty = 0x01;
    		*pwm_freq = 0xF;
    		usleep(5000000);

    		printf("DUTY = 0 FREQ = 100 KHZ\n");
    		*pwm_duty = 0x00;
    		usleep(5000000);

    		printf("DUTY = 50 FREQ = 1 HZ\n\n");
    		*pwm_duty = 0x32;
    		*pwm_freq = 0x1;
    		usleep(5000000);
    }

    return 0;
}



