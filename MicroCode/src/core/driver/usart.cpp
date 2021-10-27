#include "usart.h"
#include <sys/registers/registers.h>
#include <sys/time.h>
#include <sys/setup.h>
#include <core/string.h>

char USART::dmaBuffer[256];

void USART::Initialize(uint32 baud) {
	RCC_APB2ENR |= USART1EN;

	NOP;

	USART1_BRR = 48000000 / baud;
	USART1_CR1 |= 0x09;

	DMA1_CCR4 = 0;
	DMA1_CPAR4 = USART1 + 0x28;
	DMA1_CMAR4 = (uint32)dmaBuffer;
}

void USART::SendDMA(uint16 num) {
	USART1_CR3 |= 0x80;

	DMA1_CCR4 = 0;
	DMA1_CNDTR4 = DMA_CNDTR_NDT(num);

	USART1_ICR = 0x40;

	DMA1_CCR4 = DMA_CCR_PL(1) | DMA_CCR_PSIZE(2) | DMA_CCR_MINC | DMA_CCR_DIR | DMA_CCR_EN;
}

void USART::Send(uint8 data) {
	while (!(USART1_ISR & 0x40));
	while (!(USART1_ISR & 0x80));

	USART1_CR3 &= ~0x80;

	USART1_TDR = data;
}

void USART::Send(uint8* data, uint16 len) {
	while (!(USART1_ISR & 0x40));

	memcpy(dmaBuffer, data, len);

	SendDMA(len);
}

void USART::Print(const char* string) {
	uint32 len = strlen(string);

	Send((uint8*)string, (uint16)len);
}

void USART::Printf(const char* fmt, ...) {
	va_list list;
	va_start(list, fmt);
	while (!(USART1_ISR & 0x40));
	uint16 len = vsprintf(dmaBuffer, sizeof(dmaBuffer), fmt, list);

	va_end(list);

	SendDMA(len);
}