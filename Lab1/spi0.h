// SPI0 library
// Jason Losh

//-----------------------------------------------------------------------------
// Hardware Target
//-----------------------------------------------------------------------------

// Target Platform: EK-TM4C123GXL
// Target uC:       TM4C123GH6PM
// System Clock:    -

// Hardware configuration:
// SPI0 Interface:
//   MOSI on PD3 (SSI0Tx)
//   MISO on PD2 (SSI0Rx)
//   ~CS on PD1  (SSI0Fss)
//   SCLK on PD0 (SSI0Clk)

//-----------------------------------------------------------------------------
// Device includes, defines, and assembler directives
//-----------------------------------------------------------------------------

#ifndef SPI0_H_
#define SPI0_H_

#define USE_SSI_FSS 1       // Software Control = 0
#define USE_SSI_RX  2       // second bit set to 1 => receive

//-----------------------------------------------------------------------------
// Subroutines
//-----------------------------------------------------------------------------

void initSpi0(uint32_t pinMask);
void setSpi0BaudRate(uint32_t clockRate, uint32_t fcyc);
void setSpi0Mode(uint8_t polarity, uint8_t phase);
void writeSpi0Data(uint32_t data);
uint32_t readSpi0Data();
void spi0write(uint8_t add, uint8_t data);
uint8_t spi0read(uint8_t add);


#endif
