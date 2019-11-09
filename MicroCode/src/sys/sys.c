#include "sys.h"

void EnableInterrupt(uint8 interrupt) {
	*(volatile uint32*)(NVIC_ISER + ((interrupt >> 5) << 2)) = 1UL << (interrupt & 0x1F);
}

void DisableInterrupt(uint8 interrupt) {
	*(volatile uint32*)(NVIC_ICER + (interrupt >> 5)) = 1UL << (interrupt & 0x1F);
}

