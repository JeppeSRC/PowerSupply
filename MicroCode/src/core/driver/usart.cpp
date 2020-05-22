#include "usart.h"
#include <sys/registers/registers.h>
#include <sys/time.h>
#include <sys/setup.h>
#include <core/string.h>

char USART::tmpBuffer[128];

void USART::Initialize(uint32 baud) {
	RCC_APB2ENR |= USART1EN;

	USART1_BRR = 48000000 / baud;
	USART1_CR1 |= 0x01; 
}

void USART::Send(uint8 data) {
	USART1_CR1 |= 0x08;
	while (!(USART1_ISR & 0x80));

	USART1_TDR = data;

	while (!(USART1_ISR & 0x40));
	USART1_CR1 &= ~0x08;
}

void USART::Send(uint8* data, uint16 len) {
	USART1_CR1 |= 0x08;

	for (uint32 i = 0; i < len; i++) {
		while (!(USART1_ISR & 0x80));

		USART1_TDR = data[i];
	}

	while (!(USART1_ISR & 0x40));
	USART1_CR1 &= ~0x08;
}

void USART::Print(const char* string) {
	uint32 len = strlen(string);

	Send((uint8*)string, (uint16)len);
}

void USART::Printf(const char* fmt, ...) {
	va_list list;
	va_start(list, fmt);

	uint16 len = vsprintf(tmpBuffer, sizeof(tmpBuffer), fmt, list);

	va_end(list);

	Send((uint8*)tmpBuffer, len);
}