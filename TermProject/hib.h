/*
 * hib.h
 *
 *  Created on: Apr 18, 2024
 *      Author: serva
 */

#ifndef HIB_H_
#define HIB_H_

#include <stdint.h>
#include <stdbool.h>

void initHib();
void configHib();
void waitPbPress();
void checkHIB();

uint32_t checkRTCC();

#endif /* HIB_H_ */
