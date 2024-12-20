#include <stdint.h>
#include <stdbool.h>
#include "tm4c123gh6pm.h"
#include "clock.h"
#include "wait.h"
#include "gpio.h"
#include "nvic.h"

// Part 1 Debug Freq   769.2 kHz
// Part 2 Release Freq 1.429 MHz
// Part 3 ASM Freq     1.17 MHz


// #define PB1 PORTB,1
#define PB1_MASK 2

void initHw() {

    initSystemClockTo40Mhz();

    //enablePort(PORTB);
    //selectPinPushPullOutput(PB1);

    SYSCTL_RCGCGPIO_R |= SYSCTL_RCGCGPIO_R1;    // Enable clock for port B
    _delay_cycles(3);


    GPIO_PORTB_DIR_R |= PB1_MASK;               // Set as output
    GPIO_PORTB_DEN_R |= PB1_MASK;               // Digital Enable
}

void toggleBit(volatile uint32_t *PORT) {
    __asm("        LDR R1, [R0]                         ");
    __asm("        EOR R1, #2                           ");     // Mask 2
    __asm("        STR R1, [R0]                         ");
}

int main(void) {

    initHw();

    while(true) {
        toggleBit(&GPIO_PORTB_DATA_R);
    }
}
