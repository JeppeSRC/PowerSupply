#include "time.h"

// bus clock speed 24 Mhz
// TIM18 reserved for delay functions
// TIM2 reserved for time tracking
#include <memory.h>

void InitializeTimers() {
	RCC->APB1ENR.TIM18EN = 1;

	RCC->APB1ENR.TIM2EN = 1;
	TIM2->ARR = ~0;
	TIM2->PSC = 23;
	TIM2_CR1(=, 1, 1, 1, 0, 0, 0, 0, 0);
}

void ResetTimers() {
	TIM2->CNT = 0;
}

void Delay(uint8 seconds) {
	DelayMillis(((uint16)seconds & 0x7F) * 1000); // 64 seconds MAX
}

void DelayMillis(uint16 milliSeconds) {
	TIM18->PSC = 23999; // Setting clock to 1 khz (20 Mhz / (19999 + 1)) to get one cycle every milliSecond
	TIM18->ARR = milliSeconds;
	TIM18_CR1(= , 1, 0, 1, 1, 0);

	asm("wfe");
}

void DelayMicros(uint16 microSeconds) {
	TIM18->PSC = 23; // Setting clock to 1Mhz (20 Mhz / (19+1)) to get one cycle every microSecond
	TIM18->ARR = microSeconds;
	TIM18_CR1(= , 1, 0, 1, 1, 0);

	asm("wfe");
}

uint32 Millis() {
	return TIM2->CNT / 1000;
}

uint32 Micros() {
	return TIM2->CNT;
}