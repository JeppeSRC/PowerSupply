#include <sys/setup.h>
#include <sys/time.h>
#include <core/driver/display.h>
#include <sys/memory.h>
#include <core/string.h>
#include <sys/sys.h>
#include <core/driver/usart.h>
#include <core/driver/encoder.h>
#include <core/ui.h>
#include <core/driver/usb.h>
#include <core/psu.h>

volatile uint32 vLast = 0;
volatile uint32 iLast = 0;

#define CLAMP(x, min, max) ((x) < (min) ? (min) : (x) > (max) ? (max) : (x))
#define CALC_FACTOR(dif, f) (f / (float)dif)
#define FACTOR(dif, f) CLAMP(CALC_FACTOR(dif, f), 1.0f, 25.0f)

extern "C" void TIM19_Handler() {
	uint32 time = Millis();
	uint32 dif = time - vLast;

	if (TIM19_CR1 & 0x10) {
		PSU::vSet -= 1 * FACTOR(dif, 200);
	} else {
		PSU::vSet += 1 * FACTOR(dif, 200.0f);
	}

	ClearPendingInterrupt(78);
	TIM19_SR &= ~1;

	vLast = time;
}

extern "C" void TIM4_Handler() {
	uint32 time = Millis();
	uint32 dif = time - iLast;

	if (TIM4_CR1 & 0x10) {
		PSU::iSet -= 1 * FACTOR(dif, 200.0f);
	} else {
		PSU::iSet += 1 * FACTOR(dif, 200.0f);
	}

	ClearPendingInterrupt(30);
	TIM4_SR &= ~1;

	iLast = time;
}

int main() {
	Initialize();

	DelayMillis(100);

	UI::Initialize();
	USART::Initialize(2000000);
	USART::Print("USART Initialized");

	EnableInterrupt(78);
	EnableInterrupt(30);

	USB::Initialize();

	while (true) {
		DelayMicros(1000);

		PSU::vSet = CLAMP(PSU::vSet, 50, 2000);
		PSU::iSet = CLAMP(PSU::iSet, 10, 400);

		DAC2_DHR12R1 = ((uint32)(PSU::vSet * 2.0475f) & 0xFFF);
		DAC1_DHR12R2 = ((uint32)(PSU::iSet * 10.26f) & 0xFFF);

		UI::UpdateVISet(PSU::vSet, PSU::iSet);
	}

	__asm ("b .");
}
