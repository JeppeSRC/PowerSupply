#include "time.h"

// timer clock speed 48 Mhz
// TIM18 reserved for delay functions
// TIM2 reserved for time tracking
#include <memory.h>

void InitializeTimers() {
	RCC_APB1ENR |= TIM18EN | TIM2EN | TIM7EN;

	TIM2_ARR = ~0;
	TIM2_PSC = 47;
	TIM2_CR1 = 0x01;
	TIM2_EGR |= 0x01;

	TIM7_PSC = 47999; // Setting clock to 1 khz (48 MHz / (47999 + 1)) to get one cycle every milliSecond
	TIM18_PSC = 47; // Setting clock to 1MHz (48 MHz / (47+1)) to get one cycle every microSecond

	DelayMicros(10);
	DelayMillis(10);
}

void ResetTimers() {
	TIM2_CNT = 0;
}

void Delay(uint8 seconds) {
	DelayMillis(((uint16)seconds & 0x7F) * 1000); // 64 seconds MAX
}

void DelayMillis(uint16 milliSeconds) {
	TIM7_ARR = milliSeconds;
	TIM7_CR1 = 0x0D;

	while (TIM7_CR1 & 0x01);
}

void DelayMicros(uint16 microSeconds) {
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