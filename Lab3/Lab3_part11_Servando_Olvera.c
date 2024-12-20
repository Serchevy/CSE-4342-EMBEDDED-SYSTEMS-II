#include <stdint.h>
#include <stdbool.h>
#include "tm4c123gh6pm.h"
#include "clock.h"
#include "wait.h"
#include "gpio.h"
#include "nvic.h"

#define PB_IN PORTB,0
#define OUT PORTB,2

#define PORT_B2 2

void initHw() {

    initSystemClockTo40Mhz();

    enablePort(PORTB);

    selectPinDigitalInput(PB_IN);               // Input
    enablePinPullup(PB_IN);

    selectPinPushPullOutput(OUT);               // Output

    selectPinInterruptFallingEdge(PB_IN);
    enablePinInterrupt(PB_IN);                  // Enable interrupt
    enableNvicInterrupt(17);                    // Enable Nvic

}

void PinB1ISR() {
    uint32_t *p;
    p = (uint32_t *)PORTB + PORT_B2;
    *p = 1;
}

int main(void) {

    initHw();

    setPinValue(OUT, 0);        // Initially LOW

    while(true);

}
