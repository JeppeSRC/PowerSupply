#include "usart.h"
#include <sys/registers/registers.h>
#include <sys/time.h>

void USART::Initialize() {
	RCC_APB2ENR |= USART1EN;

	DelayMicros(10);

	USART1_BRR = 48000000 / 5000; //9600
	USART1_CR1 |= 0x05;
	
	DelayMicros(10);

	while (!(USART1_ISR & 0x70));
}

void USART::Send(uint8 data) {
	while (!(USART1_ISR & 0x80));

	USART1_TDR = data;

	while (!(USART1_ISR & 0x70));
}