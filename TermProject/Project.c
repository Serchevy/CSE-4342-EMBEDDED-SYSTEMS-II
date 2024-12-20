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
#include "rgb_led.h"

#define MIC1 PORTE,3
#define MIC2 PORTE,2
#define MIC3 PORTE,1
#define MIC4 PORTD,3

#define L   20
#define N   64

#define START_EVENT     1
#define ONE_BUF_FULL    2
#define PROCESS_DATA    3

#define UDMA_CH15_SS1   0x8000

#pragma DATA_ALIGN(CTL_TABLE, 1024)
uint8_t CTL_TABLE[1024];

// Global Variables
//----------------------------------------------------------------
char str[100];
uint32_t validEvent = 0;

bool pingFullLast = 0;
bool pongFullLast = 0;

uint32_t limit = 250;

uint16_t ping[128] = {0};
uint16_t pong[128] = {0};

//----------------------------------------------------------------

volatile uint32_t* UDMA_CH15_PRIM_SEP;
volatile uint32_t* UDMA_CH15_PRIM_DEP;
volatile uint32_t* UDMA_CH15_PRIM_CTLW;
volatile uint32_t* UDMA_CH15_ALT_SEP;
volatile uint32_t* UDMA_CH15_ALT_DEP;
volatile uint32_t* UDMA_CH15_ALT_CTLW;

void initDMA() {

    // Module Config
    SYSCTL_RCGCDMA_R |= SYSCTL_RCGCDMA_R0;      // Enable DMA clock
    _delay_cycles(3);

    UDMA_CFG_R |= UDMA_CFG_MASTEN;              // Master Mode Enable

    UDMA_CTLBASE_R |= (uint32_t)&CTL_TABLE;     // Base address for control table

    UDMA_ENACLR_R &= ~UDMA_CH15_SS1;            // Disable CH15, to allow config

    // Channel Attributes
    UDMA_ALTCLR_R |= UDMA_CH15_SS1;             // Ch 15 uses primary control structure

    UDMA_USEBURSTCLR_R |= UDMA_CH15_SS1;        // Ch 15 responds to single and burst requests

    UDMA_REQMASKCLR_R |= UDMA_CH15_SS1;         // Allow uDMA to recognize requests for Ch 15

    // Channel Control Structure
    UDMA_CH15_PRIM_SEP = ((volatile uint32_t *)((uint32_t)UDMA_CTLBASE_R + 0x0F0));    // 0x|0|CH15|OFFSET|
    UDMA_CH15_PRIM_DEP = ((volatile uint32_t *)((uint32_t)UDMA_CTLBASE_R + 0x0F4));
    UDMA_CH15_PRIM_CTLW= ((volatile uint32_t *)((uint32_t)UDMA_CTLBASE_R + 0x0F8));
    UDMA_CH15_ALT_SEP  = ((volatile uint32_t *)((uint32_t)UDMA_CTLBASE_R + 0x2F0));    // 0x|2|CH15|OFFSET|
    UDMA_CH15_ALT_DEP  = ((volatile uint32_t *)((uint32_t)UDMA_CTLBASE_R + 0x2F4));
    UDMA_CH15_ALT_CTLW = ((volatile uint32_t *)((uint32_t)UDMA_CTLBASE_R + 0x2F8));

    // Channel Source and Destination
    *UDMA_CH15_PRIM_SEP = (uint32_t)&ADC0_SSFIFO1_R;        // FIFO1 to PRIM_SEP

    *UDMA_CH15_PRIM_DEP = (uint32_t)&ping[127];

    *UDMA_CH15_ALT_SEP = (uint32_t)&ADC0_SSFIFO1_R;         // FIFO1 to ALT_SEP

    *UDMA_CH15_ALT_DEP = (uint32_t)&pong[127];

    // Dest Incr 16, Data size 16, No Incr Source, Data size 16, Arb Size 64, 128 items, Pin-pong mode
    *UDMA_CH15_PRIM_CTLW = UDMA_CHCTL_DSTINC_16 | UDMA_CHCTL_DSTSIZE_16 | UDMA_CHCTL_SRCINC_NONE | UDMA_CHCTL_SRCSIZE_16
                              | UDMA_CHCTL_ARBSIZE_4 | 0x7F0 | UDMA_CHCTL_XFERMODE_PINGPONG;

    *UDMA_CH15_ALT_CTLW = UDMA_CHCTL_DSTINC_16 | UDMA_CHCTL_DSTSIZE_16 | UDMA_CHCTL_SRCINC_NONE | UDMA_CHCTL_SRCSIZE_16
                            | UDMA_CHCTL_ARBSIZE_4 | 0x7F0 | UDMA_CHCTL_XFERMODE_PINGPONG;

    ADC0_SSCTL1_R |= ADC_SSCTL1_IE3;            // Enable ADC0 INT
    ADC0_IM_R |= ADC_IM_MASK1;
    enableNvicInterrupt(31);

    UDMA_ENASET_R |= UDMA_CH15_SS1;             // Enable DMA

}

void initHw() {

    initSystemClockTo40Mhz();

    SYSCTL_RCGCADC_R |= SYSCTL_RCGCADC_R0;          // ADC clock Module 0
    _delay_cycles(3);

    SYSCTL_RCGCADC_R |= SYSCTL_RCGCADC_R1;          // ADC clock Module 1
    _delay_cycles(3);

    SYSCTL_RCGCTIMER_R |= SYSCTL_RCGCTIMER_R1;      // Regular timer 1 clock
    _delay_cycles(3);

    SYSCTL_RCGCTIMER_R |= SYSCTL_RCGCTIMER_R2;      // Regular timer 2
    _delay_cycles(3);

    enablePort(PORTC);
    enablePort(PORTD);
    enablePort(PORTE);

    selectPinAnalogInput(MIC1);     // ADC PE3
    selectPinAnalogInput(MIC2);     // ADC PE2
    selectPinAnalogInput(MIC3);     // ADC PE1
    selectPinAnalogInput(MIC4);     // ADC PD3

    // ADC0 Config
    ADC0_ACTSS_R &= ~ADC_ACTSS_ASEN1;                       // Disable SS1 for configuration
    ADC0_EMUX_R |= ADC_EMUX_EM1_ALWAYS;                     // SS1 trigger select = always
//    ADC0_SAC_R |= ADC_SAC_AVG_4X;                           // Sample is averaged by 8
//    ADC0_CTL_R |= 0x40;                                     // Activate DITHER since we averaging
    ADC0_SSMUX1_R |= (4 << ADC_SSMUX1_MUX3_S);              // AIN4 --> PD3
    ADC0_SSMUX1_R |= (2 << ADC_SSMUX1_MUX2_S);              // AIN2 --> PE1
    ADC0_SSMUX1_R |= (1 << ADC_SSMUX1_MUX1_S);              // AIN1 --> PE2
    ADC0_SSMUX1_R |= (0 << ADC_SSMUX1_MUX0_S);              // AIN0 --> PE3
    ADC0_SSCTL1_R |= ADC_SSCTL1_END3;                       // 4th sample is end of sequence, enable INT
    ADC0_ACTSS_R |= ADC_ACTSS_ASEN1;                        // Enable ADC0 SS1. Done with configuration

    // ADC1 Config
    ADC1_ACTSS_R &= ~ADC_ACTSS_ASEN1;                       // Disable SS1 for configuration
    ADC1_EMUX_R |= ADC_EMUX_EM1_ALWAYS;                     // SS1 trigger select = comp
//    ADC1_SAC_R |= ADC_SAC_AVG_4X;                           // Sample is averaged by 8
//    ADC1_CTL_R |= 0x40;                                     // Activate DITHER since we averaging

    // DCs Ranges         Upper range value              Lower range value
    ADC1_DCCMP0_R = (0xFF << ADC_DCCMP0_COMP1_S) | (0x000 << ADC_DCCMP0_COMP0_S );
    ADC1_DCCMP1_R = (0xFF << ADC_DCCMP1_COMP1_S) | (0x000 << ADC_DCCMP1_COMP0_S );
    ADC1_DCCMP2_R = (0xFF << ADC_DCCMP2_COMP1_S) | (0x000 << ADC_DCCMP2_COMP0_S );
    ADC1_DCCMP3_R = (0xFF << ADC_DCCMP3_COMP1_S) | (0x000 << ADC_DCCMP3_COMP0_S );

    // Send Samples to respective DCs
    ADC1_SSOP1_R |= ADC_SSOP1_S3DCOP | ADC_SSOP1_S2DCOP | ADC_SSOP1_S1DCOP | ADC_SSOP1_S0DCOP;

    ADC1_SSDC1_R |= (3 << ADC_SSDC1_S3DCSEL_S);             // Sample 3 --> DC3
    ADC1_SSDC1_R |= (2 << ADC_SSDC1_S2DCSEL_S);             // Sample 2 --> DC2
    ADC1_SSDC1_R |= (1 << ADC_SSDC1_S1DCSEL_S);             // Sample 1 --> DC1
    ADC1_SSDC1_R |= (0 << ADC_SSDC1_S0DCSEL_S);             // Sample 0 --> DC0

    // DC 0-3, INT enable, High-band, Hyst Once
    ADC1_DCCTL0_R |= ADC_DCCTL0_CIE | ADC_DCCTL0_CIC_HIGH | ADC_DCCTL0_CIM_ONCE;
    ADC1_DCCTL1_R |= ADC_DCCTL1_CIE | ADC_DCCTL1_CIC_HIGH | ADC_DCCTL1_CIM_ONCE;
    ADC1_DCCTL2_R |= ADC_DCCTL2_CIE | ADC_DCCTL2_CIC_HIGH | ADC_DCCTL2_CIM_ONCE;
    ADC1_DCCTL3_R |= ADC_DCCTL3_CIE | ADC_DCCTL3_CIC_HIGH | ADC_DCCTL3_CIM_ONCE;

    ADC1_SSMUX1_R |= (4 << ADC_SSMUX1_MUX3_S);              // AIN4 --> PD3
    ADC1_SSMUX1_R |= (2 << ADC_SSMUX1_MUX2_S);              // AIN2 --> PE1
    ADC1_SSMUX1_R |= (1 << ADC_SSMUX1_MUX1_S);              // AIN1 --> PE2
    ADC1_SSMUX1_R |= (0 << ADC_SSMUX1_MUX0_S);              // AIN0 --> PE3
    ADC1_SSCTL1_R |= ADC_SSCTL1_END3;                       // 4th sample is end of sequence
    enableNvicInterrupt(65);
    ADC1_IM_R |= ADC_IM_DCONSS1;
    ADC1_ACTSS_R |= ADC_ACTSS_ASEN1;                        // Enable ADC1 SS1. Done with configuration

    // Timer Cinfig
    TIMER1_CTL_R &= ~TIMER_CTL_TAEN;                        // turn-off timer before reconfiguring
    TIMER1_TAMR_R |= TIMER_TAMR_TAMR_PERIOD;                // count down
    TIMER1_TAILR_R = 10000000;                              // every 1/4 sec calculate new avg
    TIMER1_IMR_R |= TIMER_IMR_TATOIM;                       // Enable Interrupt
    enableNvicInterrupt(37);                                // Enable ENVIC
    TIMER1_CTL_R |= TIMER_CTL_TAEN;                         // Enable Timer

    TIMER2_CTL_R &= ~TIMER_CTL_TAEN;                        // turn-off timer before reconfiguring
    TIMER2_TAMR_R |= TIMER_TAMR_TAMR_1_SHOT;                // count down
    TIMER2_TAILR_R = 40000000;                              // Every One second
    TIMER2_IMR_R = TIMER_IMR_TATOIM;                        // turn-on interrupts
    enableNvicInterrupt(39);                                // Enable ENVIC
    TIMER2_CTL_R |= TIMER_CTL_TAEN;                         // Enable Timer
}

void ADC0_SS1_ISR() {

    // PRIM_CTLW if transfer mode is zero ping is full
    if(!((*UDMA_CH15_PRIM_CTLW) & UDMA_CHCTL_XFERMODE_PINGPONG)) {
        // Ping is Full
        *UDMA_CH15_PRIM_CTLW = UDMA_CHCTL_DSTINC_16 | UDMA_CHCTL_DSTSIZE_16 | UDMA_CHCTL_SRCINC_NONE | UDMA_CHCTL_SRCSIZE_16
                                | UDMA_CHCTL_ARBSIZE_4 | 0x7F0 | UDMA_CHCTL_XFERMODE_PINGPONG;
        pingFullLast = 1;
        pongFullLast = 0;
    }
    else {
        // Pong is Full
        *UDMA_CH15_ALT_CTLW = UDMA_CHCTL_DSTINC_16 | UDMA_CHCTL_DSTSIZE_16 | UDMA_CHCTL_SRCINC_NONE | UDMA_CHCTL_SRCSIZE_16
                                | UDMA_CHCTL_ARBSIZE_4 | 0x7F0 | UDMA_CHCTL_XFERMODE_PINGPONG;
        pingFullLast = 0;
        pongFullLast = 1;
    }

    if(validEvent == START_EVENT) {         // Start of event --> One Buffer FULL
        validEvent = ONE_BUF_FULL;
        UDMA_ENASET_R |= UDMA_CH15_SS1;
    }
    else if(validEvent == ONE_BUF_FULL) {   // One Buffer Full Set (Thus 2nd one is FULL) --> Process Data
        validEvent = PROCESS_DATA;
        ADC0_ACTSS_R &= ~ADC_ACTSS_ASEN1;
    }
    else {
        UDMA_ENASET_R |= UDMA_CH15_SS1;
    }

    UDMA_CHIS_R = UDMA_CH15_SS1;
    ADC0_ISC_R = ADC_ISC_IN1;
}

void ADC1_CMPs_ISR() {

    validEvent = START_EVENT;              // Set Valid Event Flag

    ADC1_ACTSS_R &= ~ADC_ACTSS_ASEN1;      // Disable ADC1, or Digital COMP

    if(ADC1_DCISC_R & ADC_DCISC_DCINT3) ADC1_DCISC_R = ADC_DCISC_DCINT3;
    if(ADC1_DCISC_R & ADC_DCISC_DCINT2) ADC1_DCISC_R = ADC_DCISC_DCINT2;
    if(ADC1_DCISC_R & ADC_DCISC_DCINT1) ADC1_DCISC_R = ADC_DCISC_DCINT1;
    if(ADC1_DCISC_R & ADC_DCISC_DCINT0) ADC1_DCISC_R = ADC_DCISC_DCINT0;

    ADC1_ISC_R = ADC_ISC_DCINSS1;
}

void timer1ISR() {

    uint32_t avgs[4] = {0};
    uint32_t upper[4] = {0};
    int32_t lower[4] = {0};
    uint16_t i;

    // Grab 10 samples from each Mic
    for(i=0; i<80; i++) {
        if(pingFullLast)
            avgs[i%4] += ping[i+8];
        else
            avgs[i%4] += pong[i+8];
    }
    // Find the average for each mic
    for(i=0; i<4; i++) {
        avgs[i] = avgs[i]/20;
    }
    // Compute upper limits
    for(i=0; i<4; i++) {
        upper[i] = avgs[i] + 350;
    }
    // Compute lower limits
    for(i=0; i<4; i++) {
        lower[i] = avgs[i] - 300;

        if(lower[i] < 0) lower[i] = 15;
    }

    ADC1_DCCMP0_R = (0xFFF << ADC_DCCMP0_COMP1_S) | (0x000 << ADC_DCCMP0_COMP0_S );     // Tower Mic, useless
    ADC1_DCCMP1_R = (limit << ADC_DCCMP1_COMP1_S) | (lower[1] << ADC_DCCMP1_COMP0_S );
    ADC1_DCCMP2_R = (limit << ADC_DCCMP2_COMP1_S) | (lower[2] << ADC_DCCMP2_COMP0_S );
    ADC1_DCCMP3_R = (limit << ADC_DCCMP3_COMP1_S) | (lower[3] << ADC_DCCMP3_COMP0_S );

    TIMER1_ICR_R = TIMER_ICR_TATOCINT;      // Clear Timer flag
}

void timer2ISR() {

    ADC1_ACTSS_R |= ADC_ACTSS_ASEN1;        // Digital CMP

    TIMER2_ICR_R = TIMER_ICR_TATOCINT;      // Clear timer 2 flag
}

void getData(uint32_t mic1_T[], uint32_t mic2_x[], uint32_t mic3_y[], uint32_t mic4_z[]) {
    uint32_t i;

    if(pongFullLast) {              // Pong was last to get full, load Ping first then Pong
        for(i=0; i<125; i+=4) {
            mic1_T[(i/4)] = ping[i];
            mic2_x[(i/4)] = ping[i+1];
            mic3_y[(i/4)] = ping[i+2];
            mic4_z[(i/4)] = ping[i+3];
        }
        for(i=0; i<125; i+=4) {
            mic1_T[(i/4)+32] = pong[i];
            mic2_x[(i/4)+32] = pong[i+1];
            mic3_y[(i/4)+32] = pong[i+2];
            mic4_z[(i/4)+32] = pong[i+3];
        }
    }

    if(pingFullLast) {              // Ping was last to get full, load Pong first then Ping
        for(i=0; i<125; i+=4) {
            mic1_T[(i/4)] = pong[i];
            mic2_x[(i/4)] = pong[i+1];
            mic3_y[(i/4)] = pong[i+2];
            mic4_z[(i/4)] = pong[i+3];
        }
        for(i=0; i<125; i+=4) {
            mic1_T[(i/4)+32] = ping[i];
            mic2_x[(i/4)+32] = ping[i+1];
            mic3_y[(i/4)+32] = ping[i+2];
            mic4_z[(i/4)+32] = ping[i+3];
        }
    }

    // Shift mics data one to the left bc DMA weird
    uint32_t temp1 = mic1_T[0];
    uint32_t temp2 = mic2_x[0];
    uint32_t temp3 = mic3_y[0];
    uint32_t temp4 = mic4_z[0];

    for(i = 0; i<N-1; i++) {
        mic1_T[i] = mic1_T[i+1];
        mic2_x[i] = mic2_x[i+1];
        mic3_y[i] = mic3_y[i+1];
        mic4_z[i] = mic4_z[i+1];
    }

    mic1_T[N-1] = temp1;
    mic2_x[N-1] = temp2;
    mic3_y[N-1] = temp3;
    mic4_z[N-1] = temp4;

}

//int32_t crossCo(uint16_t X[], uint16_t Y[], uint32_t window, uint32_t *MAX) {
//
//    uint32_t XY[N-L-1] = {0};
//    uint32_t i, j;
//
//    // Perform Cross correlation between two mics
//    for(i=0; i<N-L-1; i++) {
//        XY[i] = 0;
//        for(j=0; j<L; j++) {
//            XY[i] += Y[j+window]*X[i+j];
//        }
//    }
//
//    // Find max value & its index
//    uint32_t max = XY[0];
//    uint32_t indx = 0;
//
//    for(i=0; i<N-L-1; i++) {
//        if(XY[i] > max) {
//            max = XY[i];
//            indx = i;
//        }
//    }
//    (*MAX) = max;
//    return indx;
//}

void Normalize(uint32_t arr[], uint32_t *idx) {
    uint32_t i;
    uint32_t max = arr[0];

    for(i=0; i<N; i++) {
        if(arr[i] > max) {
            max = arr[i];
            (*idx) = i;
        }
    }

    for(i=0; i<N; i++) {
        arr[i] = (arr[i]*100)/max;
    }
}

int32_t crossCo(uint32_t X[], uint32_t Y[]) {

    uint64_t coSum[2*N-1] = {0};

    int32_t i, j;

    for (i=-N+1; i<N; i++) {
        coSum[i+N-1] = 0;

        for (j=0; j<N; j++) {
            if((j+i>-1) && (j+i<N)) {   // Within bounds
                coSum[i+N-1] += (uint64_t)X[j] * (uint64_t)Y[j + i];
            }
        }
    }

    uint64_t max = coSum[0];
    int32_t  indx = 0;

    for(i=0; i<2*N-1; i++) {    // Find max value index
        if(coSum[i] > max) {
            max = coSum[i];
            indx = i;
        }
    }

    return indx-N+1;            // offset of for shift
}

int32_t abs(int32_t num) {
    if (num < 0) {
        return -num;
    }
    else {
        return num;
    }
}

void setColor(int32_t Angle) {

    uint32_t red = 0;
    uint32_t blue = 0;
    uint32_t green = 0;

    if(Angle >= 0 && Angle < 120) {
        // Red and Blue on
        red = 1023;
        blue = (1024/120) * Angle;
        green = 0;
    }
    else if(Angle >= 120 && Angle < 240) {
        // Blue and Green on
        red = 0;
        blue = 1023;
        green = (1024/120) * (Angle - 120);
    }
    else if(Angle >= 240 && Angle < 360) {
        // Green and Red on
        red = (1024/120) * (Angle - 240);
        blue = 0;
        green = 1023;
    }

    setRgbColor(red, blue, green);
}

int32_t angleOfArrival(int32_t Txy, int32_t Tyz, int32_t Txz) {

    int32_t sign = 0;
    int32_t T = 0;
    int32_t theta_0 = 0;
    int32_t theta = 0;

    if((Txy > 0) && (Txz > 0)) {
        theta_0 = 0;
        T = abs(Tyz);

        if(Tyz > 0) {
            sign = 1;
        }
        else {
            sign = -1;
            theta_0 = 360;
        }
    }
    else if((Tyz > 0) && (Txy < 0)) {
        theta_0 = 120;
        T = abs(Txz);

        if(Txz > 0) {
            sign = -1;
        }
        else {
            sign = 1;
        }
    }
    else if((Tyz < 0) && (Txz < 0)) {
        theta_0 = 240;
        T = abs(Txy);

        if(Txy < 0) {
            sign = -1;
        }
        else {
            sign = 1;
        }
    }

    int32_t k = ((60*T)/57) * sign;

    theta = theta_0 + k; //k1(T) + k2(T)^2;

//    snprintf(str, sizeof(str), "Angle: %d\tT: %d\n", theta_0, T);
//    putsUart0(str);

    setColor(theta);

    return theta;
}

int main(void) {

    COMMAND_DATA data;

    initHw();
    initDMA();
    initUart0();
    setUart0BaudRate(115200, 40e6);

    initRgb();

    int32_t Angle = 0;
    uint32_t holdoff = 1;
    uint32_t always = 0;
    uint32_t timeDiffArr = 0;

    uint32_t mic1_T[N] = {0};
    uint32_t mic2_x[N] = {0};
    uint32_t mic3_y[N] = {0};
    uint32_t mic4_z[N] = {0};

    uint32_t Tx = 0;
    uint32_t Ty = 0;
    uint32_t Tz = 0;

    int32_t Txy = 0;
    int32_t Tyz = 0;
    int32_t Txz = 0;

    while(true) {

        if(validEvent == PROCESS_DATA) {
            getData(mic1_T, mic2_x, mic3_y, mic4_z);

            // Normalize data
            Normalize(mic2_x, &Tx);
            Normalize(mic3_y, &Ty);
            Normalize(mic4_z, &Tz);

            // Cross Correlation Attempt
            Txy = crossCo(mic2_x, mic3_y);
            Tyz = crossCo(mic3_y, mic4_z);
            Txz = crossCo(mic2_x, mic4_z);

            // Adjust cross correlation indexes since not really accurate
            Txy = (Txy == 0) ? Txy : (Txy < 0) ? Txy - 7 : Txy + 7;
            Tyz = (Tyz == 0) ? Tyz : (Tyz < 0) ? Tyz - 4 : Tyz + 4;
            Txz = (Tyz == 0) ? Tyz : (Txz < 0) ? Txz - 7 : Txz + 7;

            // Get angle of arrival
            Angle = angleOfArrival(Txy, Tyz, Txz);

            if(always) {
                snprintf(str, sizeof(str), "AoA: %d\n", Angle);
                putsUart0(str);
            }

            if(timeDiffArr) {
                putsUart0("------------------------------------\n");
                snprintf(str, sizeof(str), "T1-2: %d\n", abs(Tx-Ty-1));
                putsUart0(str);

                snprintf(str, sizeof(str), "T2-3: %d\n", abs(Ty-Tz-1));
                putsUart0(str);

                snprintf(str, sizeof(str), "T1-3: %d\n", abs(Tx-Tz-2));
                putsUart0(str);
                putsUart0("------------------------------------\n\n");
            }

            ADC0_ACTSS_R |= ADC_ACTSS_ASEN1;            // Data Collection
            UDMA_ENASET_R |= UDMA_CH15_SS1;             // Enable back uDMA

            // Wait, then enable digital Comparators
            TIMER2_CTL_R &= ~TIMER_CTL_TAEN;            // Disable Timer
            TIMER2_TAILR_R = holdoff * 40000000;        // New time
            TIMER2_CTL_R |= TIMER_CTL_TAEN;             // Enable timer

            validEvent = 0;                             // Done with data
        }

        if(kbhitUart0()) {

            bool valid = false;
            getsUart0(&data);
            parseFields(&data);

            // holdoff H
            if(isCommand(&data, "holdoff", 1)) {
                holdoff = getFieldInteger(&data, 1);

                valid = true;
            }

            // holdoff (Missing parameter H)
            if(isCommand(&data, "holdoff", 0)) {
                snprintf(str, sizeof(str), "Current [Holdoff] Setting: %d seconds\n", holdoff);
                putsUart0(str);

                valid = true;
            }

            // aoa
            if(isCommand(&data, "aoa", 0)) {
                snprintf(str, sizeof(str), "Latest Angle of Arrival: %d\n", Angle);
                putsUart0(str);

                valid = true;
            }

            // aoa always ON|OFF
            if(isCommand(&data, "aoa", 2)) {
                char *str1 = getFieldString(&data, 1);
                char *str2 = getFieldString(&data, 2);

                if(strgcmp(str1, "always")) {
                    if (strgcmp(str2, "ON")) {
                        always = 1;
                    }
                    else {
                        always = 0;
                    }
                }

                valid = true;
            }

            // tdoa ON|OFF
            if(isCommand(&data, "tdoa", 1)) {
                char *str1 = getFieldString(&data, 1);

                if(strgcmp(str1, "ON")) {
                    timeDiffArr = 1;
                }
                else {
                    timeDiffArr = 0;
                }

                valid = true;
            }

            // Upper Limit
            if(isCommand(&data, "limit", 1)) {
                limit = getFieldInteger(&data, 1);

                valid = true;
            }

            if (!valid) {
                putsUart0("Invalid command\n");
            }
        }
    }
}

