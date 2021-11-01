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


int main() {
	Initialize();
	memset(&PSU::Data, 0, 12);

	USART::Print("Done!");

	while (true) {
		DelayMillis(10);

		uint16 vRead = uint16(float((PSU::Data.vReadADC ^ 0x8000) >> 4) * 0.95f / 2.0f);
		//uint16 vRead = (PSU::Data.vReadADC ^ 0x8000) >> 5;

		UI::UpdateVRead(vRead);
		UI::UpdateVISet(PSU::Data.vSet, PSU::Data.iSet);
	}

	__asm ("b .");
}
