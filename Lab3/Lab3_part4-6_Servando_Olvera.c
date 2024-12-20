#include <stdint.h>
#include <stdbool.h>
#include "tm4c123gh6pm.h"
#include "clock.h"
#include "wait.h"

// Part 4 Debug Freq    1 MHz
// Part 5 Release Freq  1.82 MHz

#define BLUE_LED    (*((volatile uint32_t *)(0x42000000 + (0x400053FC-0x40000000)*32 + 1*4))) // PB1

// Port F2
#define BLUE_LED_MASK   2

void initHw() {

    initSystemClockTo40Mhz();

    SYSCTL_RCGCGPIO_R |= SYSCTL_RCGCGPIO_R1;
    _delay_cycles(3);

    GPIO_PORTB_DIR_R |= BLUE_LED_MASK;      // Set as output
    GPIO_PORTB_DEN_R |= BLUE_LED_MASK;      // Digital Enable
}

void toggleBit(volatile uint32_t *PORT) {
    //waitMicrosecond(1000000);
    *PORT ^= 1;
}

int main(void) {

    initHw();

    while(true) {
        toggleBit(&BLUE_LED);
    }
}
