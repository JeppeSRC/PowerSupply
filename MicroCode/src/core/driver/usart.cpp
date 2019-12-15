#include "usart.h"


void USART::Initialize() {
	USART1_BRR = 48000000 / 5000; //9600
	USART1_CR1 |= 0x05;
}

void USART::Send(uint8 data) {
	while (!(USART1_ISR & 0x80));

	USART1_TDR = data;
}