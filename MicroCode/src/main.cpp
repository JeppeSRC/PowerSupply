#include <sys/setup.h>
#include <sys/time.h>
#include <core/driver/display.h>
#include <sys/memory.h>
#include <core/string.h>
#include <sys/sys.h>
#include <core/driver/usart.h>
#include <core/driver/encoder.h>
#include <core/ui.h>

volatile uint16 vSet;
volatile uint16 iSet;

void VsetCallback(int8 dir) {
	vSet += dir;
}

void IsetCallback(int8 dir) {
	iSet += dir;
}

int main() {
	Initialize();

	UI::Initialize();

	while (true) {
		DelayMicros(1000);

		DAC2_DHR12R1 = ((uint32)(vSet * 2.0475f) & 0xFFF);
		DAC1_DHR12L2 = ((uint32)(iSet * 10.2375f) & 0xFFF);

		UI::UpdateVISet(vSet, iSet);
	}

	asm("b .");
}
