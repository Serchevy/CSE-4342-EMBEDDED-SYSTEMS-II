#include <stdint.h>
#include <stdbool.h>
#include "tm4c123gh6pm.h"
#include "i2c0.h"
#include "gpio.h"
#include "nvic.h"
#include "clock.h"
#include "wait.h"

#define IODIR   0x00
#define GPINTEN 0x02
#define INTCON  0x04
#define IOCON   0x05
#define GPPU    0x06
#define INTCAP  0x08
#define GPIO    0x09
#define OPCODE  0b0100011

#define PB1 PORTB,1

// RED_LED     2
// GREEN_LED   5
// PUSH BUTTON 7

void initHw() {

    initSystemClockTo40Mhz();

    enablePort(PORTB);

    initI2c0();

    readI2c0Register(OPCODE, GPIO);     // Junk read to clear INT

    //spi0write(INTCON,0x80);

    // Enable PB as input
    // LEDs as outputs
    writeI2c0Register(OPCODE, IODIR, 0x80);     // 0b1000 0000

    // Set INT polarity
    // to Active-high
    writeI2c0Register(OPCODE, IOCON, 0x02);     // 0b0000 0010

    // Enable Interrupt for PB
    writeI2c0Register(OPCODE, GPINTEN, 0x80);   // 0b1000 0000

    // Enable Pull UP on PB
    writeI2c0Register(OPCODE, GPPU, 0x80);

}


void PinB1ISR() {
    writeI2c0Register(OPCODE, GPIO, 0x20);      // Red OFF, Green ON

    waitMicrosecond(1000000);                   // Wait 1 secs

    writeI2c0Register(OPCODE, GPIO, 0x04);      // Red ON, Green OFF

    clearPinInterrupt(PB1);                     // Clear Interrupt
    readI2c0Register(OPCODE, GPIO);             // Junk Read to clear INT

}

void waitPbPress() {
    while(readI2c0Register(OPCODE, GPIO) & 0x80);
}


int main(void) {

    initHw();

    // turn off both LEDS
    writeI2c0Register(OPCODE, GPIO, 0x00);

    // Turn Off Green LED
    // Turn On Red
    writeI2c0Register(OPCODE, GPIO, 0x04);      // 0b0000 0100

    waitPbPress();

    // Turn On Green LED
    // Turn Off Red
    writeI2c0Register(OPCODE, GPIO, 0x20);      // 0b010 0000

    waitMicrosecond(1000000);                   // Wait a sec
    readI2c0Register(OPCODE, GPIO);             // Junk Read to clear INT

    selectPinDigitalInput(PB1);                 // Enable pin B1
    selectPinInterruptRisingEdge(PB1);          // Trigger interrupt on Rising Edge
    enablePinInterrupt(PB1);                    // Enable interrupt
    enableNvicInterrupt(17);                    // Enable Nvic

    writeI2c0Register(OPCODE, GPIO, 0x04);      // Red ON, Green OFF

    while(true);
}
