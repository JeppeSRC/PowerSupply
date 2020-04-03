#include <sys/setup.h>
#include <sys/time.h>
#include <core/driver/display.h>
#include <sys/memory.h>
#include <core/string.h>
#include <sys/sys.h>
#include <core/driver/usart.h>
#include <core/driver/encoder.h>
#include <core/ui.h>

volatile int16 vSet = 0;
volatile int16 iSet = 0;

volatile uint32 vLast = 0;
volatile uint32 iLast = 0;

#define CLAMP(x, min, max) ((x) < (min) ? (min) : (x) > (max) ? (max) : (x))
#define CALC_FACTOR(dif, f) (f / (float)dif)
#define FACTOR(dif, f) CLAMP(CALC_FACTOR(dif, f), 1.0f, 25.0f)

extern "C" void TIM19_Handler() {
	uint32 time = Millis();
	uint32 dif = time - vLast;

	if (TIM19_CR1 & 0x10) {
		vSet -= 1 * FACTOR(dif, 320.0f);
	} else {
		vSet += 1 * FACTOR(dif, 320.0f);
	}

	ClearPendingInterrupt(78);
	TIM19_SR &= ~1;

	vLast = time;
}

extern "C" void TIM4_Handler() {
	uint32 time = Millis();
	uint32 dif = time - iLast;

	if (TIM4_CR1 & 0x10) {
		iSet -= 1 * FACTOR(dif, 280.0f);
	} else {
		iSet += 1 * FACTOR(dif, 280.0f);
	}

	ClearPendingInterrupt(30);
	TIM4_SR &= ~1;

	iLast = time;
}

int main() {
	Initialize();

	UI::Initialize();

	EnableInterrupt(78);
	EnableInterrupt(30);

	while (true) {
		DelayMicros(1000);
		
		vSet = CLAMP(vSet, 50, 2000);
		iSet = CLAMP(iSet, 6, 400);

		DAC2_DHR12R1 = ((uint32)(vSet * 2.0475f) & 0xFFF);
		DAC1_DHR12R2 = ((uint32)(iSet * 10.26f) & 0xFFF);

		UI::UpdateVISet(vSet, iSet);
	}

	__asm ("b .");
}
