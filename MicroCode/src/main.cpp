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


#define CALC_FACTOR(dif, f) (f / (float)dif)
#define FACTOR(dif, f) CLAMP(CALC_FACTOR(dif, f), 1.0f, 25.0f)

extern "C" void TIM19_Handler() {
	uint32 time = Millis();
	uint32 dif = time - vLast;

	uint16 vSet = PSU::vSet;

	if (TIM19_CR1 & 0x10) {
		vSet -= (uint16)(1.0f * FACTOR(dif, 200.0f));
	} else {
		vSet += (uint16)(1.0f * FACTOR(dif, 200.0f));
	}

	PSU::SetVSet(vSet);

	ClearPendingInterrupt(78);
	TIM19_SR &= ~1;

	vLast = time;
}

extern "C" void TIM4_Handler() {
	uint32 time = Millis();
	uint32 dif = time - iLast;

	uint16 iSet = PSU::iSet;

	if (TIM4_CR1 & 0x10) {
		iSet -= (uint16)(1.0f * FACTOR(dif, 200.0f));
	} else {
		iSet += (uint16)(1.0f * FACTOR(dif, 200.0f));
	}

	PSU::SetISet(iSet);

	ClearPendingInterrupt(30);
	TIM4_SR &= ~1;

	iLast = time;
}

int main() {
	Initialize();

	USART::Initialize(2000000);
	USART::Print("USART Initialized");

	EnableInterrupt(78);
	EnableInterrupt(30);

	USB::Initialize();
	UI::Initialize();

	while (true) {
		DelayMillis(10);

		UI::UpdateVISet(PSU::vSet, PSU::iSet);
	}

	__asm ("b .");
}
