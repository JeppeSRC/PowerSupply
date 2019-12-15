#include "sys.h"

void EnableInterrupt(uint8 interrupt) {
	*(volatile uint32*)(NVIC_ISER + ((interrupt >> 5) << 2)) = 1UL << (interrupt & 0x1F);
}

void DisableInterrupt(uint8 interrupt) {
	*(volatile uint32*)(NVIC_ICER + ((interrupt >> 5) << 2)) = 1UL << (interrupt & 0x1F);
}

void SetPendingInterrupt(uint8 interrupt) {
	*(volatile uint32*)(NVIC_ISPR + ((interrupt >> 5) << 2)) = 1UL << (interrupt & 0x1F);
}

void ClearPendingInterrupt(uint8 interrupt) {
	*(volatile uint32*)(NVIC_ICPR + ((interrupt >> 5) << 2)) = 1UL << (interrupt & 0x1F);
}

void SetInterruptPriority(uint8 interrupt, uint8 priority) {
	volatile uint8* ip = (uint8*)NVIC_IPR + interrupt;
	*ip = (*ip & 0) | (priority << 4);
}