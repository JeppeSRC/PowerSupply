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
#include <core/driver/sdadc.h>


int main() {
	Initialize();
	memset(&PSU::Data1, 0, 12);

	PSU::SetVSet(330);
	PSU::SetISet(50);

	USART::Print("Done!");

	uint32 last = Micros();
	uint32 last2 = Micros();

	while (true) {
		uint32 now = Micros();

		if ((now - last) >= 1000) { //Update at 1KHz
			last = now;

			SDADC::Read(&PSU::Data1.vReadADC, &PSU::Data1.iReadADC);

			PSU::Data1.vRead = uint16(float(PSU::Data1.vReadADC >> 4) * 0.95f / 2.0f);
			PSU::Data1.iRead = uint16(float(PSU::Data1.iReadADC >> 4) * 0.10f);

			if ((now - last2) >= 100000) {
				last2 = now;
				UI::UpdateVIRead(PSU::Data1.vRead, PSU::Data1.iRead);
				UI::UpdateVISet(PSU::Data1.vSet, PSU::Data1.iSet);
			}
		}
	}

	__asm ("b .");
}
