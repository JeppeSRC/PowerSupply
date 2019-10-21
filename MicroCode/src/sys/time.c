#include "time.h"

// bus clock speed 24 Mhz
// TIM18 reserved for delay functions
// TIM2 reserved for time tracking
#include <memory.h>

void InitializeTimers() {
	RCC->APB1ENR.TIM18EN = 1;
	RCC->APB1ENR.TIM2EN = 1;

	TIM2_ARR = ~0;
	TIM2_PSC = 23;
	TIM2_CR1 = 0x07;
}

void ResetTimers() {
	TIM2_CNT = 0;
}

void Delay(uint8 seconds) {
	DelayMillis(((uint16)seconds & 0x7F) * 1000); // 64 seconds MAX
}

void DelayMillis(uint16 milliSeconds) {
	TIM18_PSC = 23999; // Setting clock to 1 khz (24 Mhz / (23999 + 1)) to get one cycle every milliSecond
	TIM18_ARR = milliSeconds;
	TIM18_CR1 = 0x0D;

	while (TIM18_CR1 & 0x01);
}

void DelayMicros(uint16 microSeconds) {
	TIM18_PSC = 23; // Setting clock to 1Mhz (24 Mhz / (23+1)) to get one cycle every microSecond
	TIM18_ARR = microSeconds;
	TIM18_CR1 = 0x0D;

	while (TIM18_CR1 & 0x01);
}

uint32 Millis() {
	return TIM2_CNT / 1000;
}

uint32 Micros() {
	return TIM2_CNT;
}