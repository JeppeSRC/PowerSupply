#include <core/def.h>
#include <sys/registers/registers.h>
#include <sys/time.h>

void Error(uint16 period) {
	while (1) {
		DelayMillis(period >> 1);
		GPIOB_BSRR = BS(4);
		DelayMillis(period >> 1);
		GPIOB_BSRR = BR(4);
	}
}

void NMI_Handler() {
	Error(500);
}

void HardFault_Handler() {
	Error(1000);
}

void MMFault_Handler() {
	Error(1500);
}

void BusFault_Handler() {
	Error(2000);
}

void UsageFault_Handler() {
	Error(2500);
}
