#include "ui.h"
#include <core/driver/display.h>
#include <sys/time.h>
#include <core/psu.h>
#include <core/driver/usart.h>

/* Display Format 2x16

	------------------
	|S  00.00V 0.000A|
	|O  00.00V 0.000A|
	------------------
*/

#define VSET_OFFSET 0x03
#define ISET_OFFSET 0x0A
#define VREAD_OFFSET (0x40 + VSET_OFFSET)
#define IREAD_OFFSET (0x40 + ISET_OFFSET)



uint8 UI::uiState;

void UI::Initialize() {
	Display::Clear();
	Display::Print(0x00, "-------PSU------");
	Display::Printf(0x40, "Version: %02H.%02H", PSU::Version / 0x100, PSU::Version % 0x100);
	Delay(2);
	Display::Clear();

#ifdef RANGE_4A
	Display::Print(0x00,  "S  00.00V 0.00A");
	Display::Print(0x40,  "O  00.00V 0.00A");
#else
	Display::Print(0x00, "S  00.00V 0.000A");
	Display::Print(0x40, "O  00.00V 0.000A");
#endif

	USART::Print("UI Initialized");
}

void UI::UpdateVSet(uint16 vset) {
	Display::Printf(VSET_OFFSET, "%02U.%02U", vset / 100, vset % 100);
}

#ifdef RANGE_4A

void UI::UpdateISet(uint16 iset) {
	Display::Printf(ISET_OFFSET, "%01U.%02U", iset / 100, iset % 100);
}

#else

void UI::UpdateISet(uint16 iset) {
	Display::Printf(ISET_OFFSET, "%01U.%03U", iset / 1000, iset % 1000);
}

#endif

void UI::UpdateVRead(uint16 vread) {
	Display::Printf(VREAD_OFFSET, "%02U.%02U", vread / 100, vread % 100);
}

#ifdef RANGE_4A

void UI::UpdateIRead(uint16 iread) {
	Display::Printf(IREAD_OFFSET, "%01U.%02U", iread / 100, iread % 100);
}

#else

void UI::UpdateIRead(uint16 iread) {
	Display::Printf(IREAD_OFFSET, "%01U.%03U", iread / 1000, iread % 1000);
}

#endif

void UI::UpdateVISet(uint16 vset, uint16 iset) {
	UpdateVSet(vset);
	UpdateISet(iset);
}

void UI::UpdateVIRead(uint16 vread, uint16 iread) {
	UpdateVRead(vread);
	UpdateIRead(iread);
}