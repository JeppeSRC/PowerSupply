#include "usart.h"
#include <sys/registers/registers.h>
#include <sys/time.h>
#include <sys/setup.h>

void USART::Initialize() {
	RCC_APB2ENR |= USART1EN;

	USART1_BRR = 48000000 / 1000000; //1Mbps
	USART1_CR1 |= 0x01; 
}

void USART::Send(uint8 data) {
	USART1_CR1 |= 0x08;
	while (!(USART1_ISR & 0x80));

	USART1_TDR = data;

	while (!(USART1_ISR & 0x40));
	USART1_CR1 &= ~0x08;
}