#include <stdint.h>
#include <stdbool.h>
#include "tm4c123gh6pm.h"
#include "clock.h"
#include "wait.h"
#include "gpio.h"
#include "nvic.h"

#define RED_LED     PORTF,1
#define BLUE_LED    PORTF,2
#define GREEN_LED   PORTF,3

#define SW2         PORTF,0
#define SW1         PORTF,4


void initHw() {

    initSystemClockTo40Mhz();

    enablePort(PORTF);

    SYSCTL_RCGCHIB_R |= SYSCTL_RCGCHIB_R0;          // Enable HIB clock
    _delay_cycles(3);

    //selectPinDigitalInput(SW2);
    selectPinDigitalInput(SW1);
    enablePinPullup(SW1);

    selectPinPushPullOutput(RED_LED);
    selectPinPushPullOutput(BLUE_LED);
    selectPinPushPullOutput(GREEN_LED);

    while(~HIB_CTL_R & HIB_CTL_WRC);
    HIB_CTL_R |= HIB_CTL_CLK32EN;                   // Enable CLK32

    while(~HIB_CTL_R & HIB_CTL_WRC);
    HIB_IM_R |= HIB_IM_WC;

    while(~HIB_MIS_R & HIB_MIS_WC);
}

uint32_t checkRTCC() {
    uint32_t time1 = HIB_RTCC_R;
    uint32_t sub_time = (HIB_RTCSS_R & HIB_RTCSS_RTCSSC_M);
    uint32_t time2 = HIB_RTCC_R;                                    // Obtain a valid read from RTCC

    if(time1 != time2) {
        return 0;          // Error
    }

    return time1;
}

void initHib() {

    while(~HIB_CTL_R & HIB_CTL_WRC);
    HIB_CTL_R |= HIB_CTL_RTCEN;                     // Enable Real time clock

    SYSCTL_SCGCGPIO_R &= ~SYSCTL_SCGCGPIO_S5;        // Sleep Mode port F

    while(~HIB_CTL_R & HIB_CTL_WRC);
    HIB_CTL_R |= HIB_CTL_VDD3ON;                    // VDD3ON

    while(~HIB_CTL_R & HIB_CTL_WRC);
    HIB_RTCM0_R = checkRTCC() + 10;                  // Match Value

    while(~HIB_CTL_R & HIB_CTL_WRC);
    HIB_CTL_R |= HIB_CTL_PINWEN | HIB_CTL_RTCWEN;   // Enable PIN Wake & RTC wake

}

void waitPbPress() {
    while(getPinValue(SW1));
}

void checkHIB(){

    if(HIB_RIS_R & HIB_RIS_RTCALT0) {
        setPinValue(RED_LED, 1);
        setPinValue(GREEN_LED, 0);
        HIB_IC_R |= HIB_IC_RTCALT0;     // clear interrupt

    }

    if(HIB_RIS_R & HIB_RIS_EXTW) {

        setPinValue(BLUE_LED, 1);
        setPinValue(GREEN_LED, 0);
        HIB_IC_R |= HIB_IC_EXTW;        // clear interrupt
    }
}

int main(void) {

    initHw();

    setPinValue(RED_LED, 0);
    setPinValue(BLUE_LED, 0);
    setPinValue(GREEN_LED, 1);

    checkHIB();

    waitPbPress();

    initHib();

    setPinValue(RED_LED, 0);
    setPinValue(BLUE_LED, 0);
    setPinValue(GREEN_LED, 0);

    while(~HIB_CTL_R & HIB_CTL_WRC);
    HIB_CTL_R |= HIB_CTL_HIBREQ;        // Request Hib

    while(true);

}


