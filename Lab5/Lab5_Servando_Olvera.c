#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "tm4c123gh6pm.h"
#include "gpio.h"
#include "nvic.h"
#include "clock.h"
#include "wait.h"
#include "uart0.h"

#define MIC1 PORTE,3
#define MIC2 PORTE,2
#define MIC3 PORTE,1
#define MIC4 PORTD,3

#define C0_POS PORTC,6
#define C0_NEG PORTC,7

char str[100];
uint32_t trigger = 0;

// Sequencer SS1 | samples 4 | Depth FIFO 4 |

void initHw() {

    initSystemClockTo40Mhz();

    SYSCTL_RCGCADC_R |= SYSCTL_RCGCADC_R0;          // ADC clock Module 0
    _delay_cycles(3);
    SYSCTL_RCGCACMP_R |= SYSCTL_RCGCACMP_R0;        // Comparator 0
    _delay_cycles(3);
    SYSCTL_RCGCTIMER_R |= SYSCTL_RCGCTIMER_R1;      // Regular timer 1 clock
    _delay_cycles(3);

    enablePort(PORTC);
    enablePort(PORTD);
    enablePort(PORTE);

    selectPinAnalogInput(MIC1);     // ADC PE3
    selectPinAnalogInput(MIC2);     // ADC PE2
    selectPinAnalogInput(MIC3);     // ADC PE1
    selectPinAnalogInput(MIC4);     // ADC PD3

    selectPinAnalogInput(C0_POS);
    selectPinAnalogInput(C0_NEG);

    COMP_ACREFCTL_R |= COMP_ACREFCTL_EN | COMP_ACREFCTL_RNG | 0x3;                                              // Ladder enable, Range Ladder enable, and Set Vref
    COMP_ACCTL0_R   |= COMP_ACCTL0_TOEN | COMP_ACCTL0_ASRCP_REF | COMP_ACCTL0_CINV | COMP_ACCTL0_ISEN_RISE;     // Trigger ADC enable, Use Internal Vref, Invert Output, INT on rising edge
    COMP_ACINTEN_R |= COMP_ACINTEN_IN0;                     // Enable COMP interrupt
    enableNvicInterrupt(41);                                // Turn on respective NVIC
    _delay_cycles(10);

    ADC0_ACTSS_R &= ~ADC_ACTSS_ASEN1;                       // Disable SS1 for configuration
    ADC0_EMUX_R |= ADC_EMUX_EM1_PROCESSOR;                  // SS1 trigger select = Processor
//    ADC0_SAC_R |= ADC_SAC_AVG_4X;                           // Sample is averaged by 8
//    ADC0_CTL_R |= 0x40;                                     // Activate DITHER since we averaging
    ADC0_SSMUX1_R |= (4 << ADC_SSMUX1_MUX3_S);              // AIN4 --> PD3
    ADC0_SSMUX1_R |= (2 << ADC_SSMUX1_MUX2_S);              // AIN2 --> PE1
    ADC0_SSMUX1_R |= (1 << ADC_SSMUX1_MUX1_S);              // AIN1 --> PE2
    ADC0_SSMUX1_R |= (0 << ADC_SSMUX1_MUX0_S);              // AIN0 --> PE3
    ADC0_SSCTL1_R |= ADC_SSCTL1_END3;                       // 4th sample is end of sequence
    ADC0_ACTSS_R |= ADC_ACTSS_ASEN1;                        // Enable SS1. Done with configuration

    TIMER1_CTL_R &= ~TIMER_CTL_TAEN;                        // turn-off timer before reconfiguring
    TIMER1_TAMR_R |= TIMER_TAMR_TAMR_1_SHOT;                // count down
    TIMER1_IMR_R |= TIMER_IMR_TATOIM;                       // Enable Interrupt
    enableNvicInterrupt(37);                                // Enable ENVIC
}

void comp0ISR() {
    trigger = 1;
    ADC0_PSSI_R |= ADC_PSSI_SS1;            // Start Sampling

    COMP_ACMIS_R = COMP_ACMIS_IN0;          // Clear INT Flag

    COMP_ACINTEN_R &= ~COMP_ACINTEN_IN0;    // Disable COMP INTs
    //COMP_ACREFCTL_R &= ~COMP_ACREFCTL_EN;   // Disable COMP

    TIMER1_TAV_R = 800000;                  // Starting value on timer/ count down from
    TIMER1_CTL_R |= TIMER_CTL_TAEN;         // turn-on timer
}

void timer1ISR() {
    COMP_ACINTEN_R |= COMP_ACINTEN_IN0;     // Enable COMP INTs
    //COMP_ACREFCTL_R |= COMP_ACREFCTL_EN;    // Enable COMP

    TIMER1_ICR_R = TIMER_ICR_TATOCINT;      // Clear Timer flag
}

int main(void) {

    initHw();

    initUart0();
    setUart0BaudRate(115200, 40e6);

    while(true) {
        if(trigger == 1) {
            waitMicrosecond(50);    // Wait a bit before reading from FIFO

            snprintf(str, sizeof(str), "MIC1: %d \t", ADC0_SSFIFO1_R);  // ADC PE3 --> MIC1 --> Tower
            putsUart0(str);
            snprintf(str, sizeof(str), "MIC2: %d \t", ADC0_SSFIFO1_R);  // ADC PE2 --> MIC2 --> Right
            putsUart0(str);
            snprintf(str, sizeof(str), "MIC3: %d \t", ADC0_SSFIFO1_R);  // ADC PE1 --> MIC3 --> Top Left
            putsUart0(str);
            snprintf(str, sizeof(str), "MIC4: %d \t", ADC0_SSFIFO1_R);  // ADC PD3 --> MIC4 --> Bottom Left
            putsUart0(str);

            putsUart0("\n");

            trigger = 0;
        }
    }
}
