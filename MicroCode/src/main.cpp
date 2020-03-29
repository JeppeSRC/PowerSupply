#include <sys/setup.h>
#include <sys/time.h>
#include <core/driver/display.h>
#include <sys/memory.h>
#include <core/string.h>
#include <sys/sys.h>
#include <core/driver/usart.h>

char line1Buffer[17] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };
char line2Buffer[17] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };

int main() {
	Initialize();

	uint16 vSet = 0;
	uint16 iSet = 0;

	Display::Print(0x00, "SET 00.00V 0.00A");
	Display::Print(0x40, "OUT 00.00V 0.00A");

	while (true) {
		if (vSet != TIM19_CNT) {
			DAC2_DHR12R1 = vSet = TIM19_CNT;

			Display::Printf(0x04, "%02U.%02UV", vSet / 100, vSet % 100);
		}

		if (iSet != TIM4_CNT) {
			DAC1_DHR12R2 = iSet = TIM4_CNT;

			Display::Printf(0x0B, "%01U.%02A", iSet / 100, iSet % 100);
		}
	}

	asm("b .");
}
