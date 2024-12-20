#include <stdint.h>
#include <stdbool.h>
#include "tm4c123gh6pm.h"
#include "spi0.h"
#include "gpio.h"
#include "nvic.h"
#include "clock.h"
#include "wait.h"

#define IODIR   0x00
#define GPINTEN 0x02
#define INTCON  0x04
#define GPPU    0x06
#define GPIO    0x09
#define IOCON   0x05

#define PB1 PORTB,1

// RED_LED     2
// GREEN_LED   5
// PUSH BUTTON 7

void initHw() {

    initSystemClockTo40Mhz();

    enablePort(PORTF);
    enablePort(PORTA);
    enablePort(PORTB);

    initSpi0(0x2);
    setSpi0BaudRate(2e6, 40e6);

    spi0read(GPIO);             // Junk read to clear INT

    //spi0write(INTCON,0x80);

    // Enable PB as input
    // LEDs as outputs
    spi0write(IODIR, 0x80);     // 0b1000 0000

    // Set INT polarity
    // to Active-high
    spi0write(IOCON, 0x02);     // 0b0000 0010

    // Enable Interrupt for PB
    spi0write(GPINTEN, 0x80);   // 0b1000 0000

    // Enable Pull UP on PB
    spi0write(GPPU, 0x80);

    selectPinDigitalInput(PB1);         // Enable pin B1
    selectPinInterruptRisingEdge(PB1);  // Trigger interrupt on Rising Edge
    enablePinInterrupt(PB1);            // Enable interrupt

}


void PinB1ISR() {
    spi0write(GPIO, 0x20);      // Red OFF, Green ON

    waitMicrosecond(1000000);   // Wait 1 secs

    spi0write(GPIO, 0x04);      // Red ON, Green OFF

    clearPinInterrupt(PB1);     // Clear Interrupt
    spi0read(GPIO);             // Junk Read to clear INT

}

void waitPbPress() {
    while(spi0read(GPIO) & 0x80);
}


int main(void) {

    initHw();

    // turn off both LEDS
    spi0write(GPIO, 0x00);

    // Turn Off Green LED
    // Turn On Red
    spi0write(GPIO, 0x04);      // 0b0000 0100

    waitPbPress();

    // Turn On Green LED
    // Turn Off Red
    spi0write(GPIO, 0x20);      // 0b010 0000

    waitMicrosecond(1000000);   // Wait a sec
    spi0read(GPIO);             // Junk Read to clear INT
    enableNvicInterrupt(17);    // Enable Nvic
    spi0write(GPIO, 0x04);      // Red ON, Green OFF

    while(true);
}
