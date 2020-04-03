#include "encoder.h"

#include <sys/registers/registers.h>
#include <sys/sys.h>

void InitializeEncoders() {
#ifdef USE_TIMERS
	RCC_APB2ENR |= TIM19EN;
	RCC_APB1ENR |= TIM4EN;

	//ENC0
	TIM19_ARR = 2000;
	TIM19_PSC = 0;
	TIM19_SMCR = SMS(1);
	TIM19_CCMR1 = CC1S(1) | CC2S(1);
	TIM19_CR1 = CEN(1);

	//ENC1
	TIM4_ARR = 400;
	TIM4_PSC = 0;
	TIM4_SMCR = SMS(1);
	TIM4_CCMR1 = CC1S(1) | CC2S(1);
	TIM4_CR1 = CEN(1);
#else
	SYSCFG_EXTICR1 = 0;
	SYSCFG_EXTICR2 = 0x1100;

	EXTI_IMR |= 0xC3;
	EXTI_FTSR |= 0xC3;

	EnableInterrupt(6);
	EnableInterrupt(7);
	EnableInterrupt(23);
#endif
}


#define ENC0_PINA 0x01
#define ENC0_PINB 0x02
#define ENC0_MASK (ENC0_PINA | ENC0_PINB)

#define ENC1_PINA 0x04
#define ENC1_PINB 0x08
#define ENC1_MASK (ENC1_PINA | ENC1_PINB)

volatile uint8 encoderStatus;

void EXTI0_Handler() {
	if (encoderStatus & ENC0_PINB) {
		encoderStatus ^= ENC0_MASK;

		VsetCallback(-1);
	} else {
		encoderStatus |= ENC0_PINA;
	}

	EXTI_PR |= 0x01;
}

void EXTI1_Handler() {
	if (encoderStatus & ENC0_PINA) {
		encoderStatus ^= ENC0_MASK;

		VsetCallback(1);
	} else {
		encoderStatus |= ENC0_PINB;
	}

	EXTI_PR |= 0x02;
}

void EXTI5_9_Handler() {
	if (EXTI_PR & 0x04) {
		EXTI_PR |= 0x04;
		if (encoderStatus & ENC1_PINB) {
			encoderStatus ^= ENC1_MASK;

			IsetCallback(-1);
		} else {
			encoderStatus |= ENC1_PINA;
		}
	} else if (EXTI_PR & 0x08) {
		EXTI_PR |= 0x08;
		if (encoderStatus & ENC1_PINA) {
			encoderStatus ^= ENC1_MASK;

			IsetCallback(1);
		} else {
			encoderStatus |= ENC1_PINB;
		}
	}
}
