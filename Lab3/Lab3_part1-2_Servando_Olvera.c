#include <stdint.h>
#include <stdbool.h>
#include "tm4c123gh6pm.h"
#include "clock.h"
#include "wait.h"
#include "gpio.h"
#include "nvic.h"

// Debug Freq   769.2 kHz
// Release Freq 1.429 MHz


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
    uint32_t x = *PORT;
    x ^= PB1_MASK;
    *PORT = x;
}

int main(void) {

    initHw();

    while(true) {
        toggleBit(&GPIO_PORTB_DATA_R);
    }
}
