#include "time.h"

// Clock speed 20 Mhz
// TIM18 reserved for delay functions

void InitializeTimers() {
	TIM18->CR1.ARPE = 0;
	TIM18->CR1.OPM = 1;
	TIM18->CR1.URS = 1;
}

void Delay(uint8 seconds) {
	DelayMillis(((uint16)seconds & 0x7F) * 1000); // 64 seconds MAX
}

void DelayMillis(uint16 milliSeconds) {
	TIM18->PSC = 19999; // Setting clock to 1 khz (20 Mhz / (19999 + 1)) to get one cycle every milliSecond
	TIM18->ARR = milliSeconds;
	TIM18->CR1.CEN = 1;

	asm("wfe");
}

void DelayMicros(uint16 microSeconds) {
	TIM18->PSC = 19; // Setting clock to 1Mhz (20 Mhz / (19+1)) to get one cycle every microSecond
	TIM18->ARR = microSeconds;
	TIM18->CR1.CEN = 1;

	asm("wfe");
}
