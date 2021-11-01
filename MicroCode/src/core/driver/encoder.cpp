#include "encoder.h"

#include <sys/registers/registers.h>
#include <sys/sys.h>
#include <core/driver/usart.h>
#include <sys/time.h>
#include <core/psu.h>

void InitializeEncoders() {
	RCC_APB2ENR |= TIM19EN;
	RCC_APB1ENR |= TIM4EN;

	//ENC0
	TIM19_ARR = 1;
	TIM19_PSC = 0;
	TIM19_DIER |= 0x01;
	TIM19_SMCR = SMS(1);
	TIM19_CCMR1 = CC1S(1) | CC2S(1);
	TIM19_CR1 = CEN(1);
	TIM19_EGR |= 1;

	//ENC1
	TIM4_ARR = 1;
	TIM4_PSC = 0;
	TIM4_DIER |= 0x01;
	TIM4_SMCR = SMS(1);
	TIM4_CCMR1 = CC1S(1) | CC2S(1);
	TIM4_CR1 = CEN(1);

	EnableInterrupt(78); // TIM19
	EnableInterrupt(30); // TIM4

	USART::Print("Encoders Initialized");
}

volatile uint32 vLast = 0;
volatile uint32 iLast = 0;


#define CALC_FACTOR(dif, f) (f / (float)dif)
#define FACTOR(dif, f) CLAMP(CALC_FACTOR(dif, f), 1.0f, 25.0f)

extern "C" void TIM19_Handler() {
	uint32 time = Millis();
	uint32 dif = time - vLast;

	uint16 vSet = PSU::Data1.vSet;

	if (TIM19_CR1 & 0x10) {
		vSet -= (uint16)(1.0f * FACTOR(dif, 200.0f));
	} else {
		vSet += (uint16)(1.0f * FACTOR(dif, 200.0f));
	}

	PSU::SetVSet(vSet);

	ClearPendingInterrupt(78);
	TIM19_SR &= ~1;

	vLast = time;
}

extern "C" void TIM4_Handler() {
	uint32 time = Millis();
	uint32 dif = time - iLast;

	uint16 iSet = PSU::Data1.iSet;

	if (TIM4_CR1 & 0x10) {
		iSet -= (uint16)(1.0f * FACTOR(dif, 200.0f));
	} else {
		iSet += (uint16)(1.0f * FACTOR(dif, 200.0f));
	}

	PSU::SetISet(iSet);

	ClearPendingInterrupt(30);
	TIM4_SR &= ~1;

	iLast = time;
}