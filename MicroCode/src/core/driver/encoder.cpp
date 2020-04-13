#include "encoder.h"

#include <sys/registers/registers.h>
#include <sys/sys.h>
#include <core/driver/display.h>

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
}
