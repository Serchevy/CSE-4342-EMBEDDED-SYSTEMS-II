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

#define MTCH_VAL    10

void initHw() {

    initSystemClockTo40Mhz();

    enablePort(PORTF);

    selectPinDigitalInput(SW2);
    selectPinDigitalInput(SW1);
    enablePinPullup(SW1);

    selectPinPushPullOutput(RED_LED);
    selectPinPushPullOutput(BLUE_LED);
    selectPinPushPullOutput(GREEN_LED);
}

void initHib() {

    SYSCTL_RCGCHIB_R |= SYSCTL_RCGCHIB_R0;
    _delay_cycles(3);

    while(~HIB_CTL_R & HIB_CTL_WRC);                    // Poll working bit
    HIB_CTL_R = HIB_CTL_CLK32EN;                        // Enable clock32

    while(~HIB_CTL_R & HIB_CTL_WRC);
    HIB_CTL_R |= HIB_CTL_RTCEN;                         // Enable Real time clock

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

void Hib0ISR() {

    uint32_t x = checkRTCC();

    if(x == MTCH_VAL) {

        setPinValue(RED_LED, 1);
        setPinValue(BLUE_LED, 0);
        setPinValue(GREEN_LED, 0);

        HIB_IC_R = HIB_IC_RTCALT0;
    }
    else {

        setPinValue(RED_LED, 0);
        setPinValue(BLUE_LED, 1);
        setPinValue(GREEN_LED, 0);

        HIB_IC_R = HIB_IM_EXTW;
    }
}

void waitPbPress() {
    while(getPinValue(SW1));
}

void checkHibfuncs(){
    //check if from rtc >> red 1s red off
    //check if from extw >> blue , 1s, blue off)
}

int main(void) {

    initHw();
    initHib();

    setPinValue(RED_LED, 0);
    setPinValue(BLUE_LED, 0);
    setPinValue(GREEN_LED, 1);

    //checkHibfuncs();

    waitPbPress();

    setPinValue(GREEN_LED, 0);

    while(~HIB_CTL_R & HIB_CTL_WRC);
    HIB_CTL_R |= HIB_CTL_HIBREQ;     // Request Hib

    while(true);

}


