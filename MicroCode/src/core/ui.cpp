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
	Display::Printf(0x00, "S  %02U.%02UV %01U.%03UA", 0, 0, 0, 0);
	Display::Print(0x40,  "O  00.00V 0.000A");

	USART::Print("UI Initialized");
}

void UI::UpdateVSet(uint16 vset) {
	Display::Printf(VSET_OFFSET, "%02U.%02U", vset / 100, vset % 100);
}

void UI::UpdateISet(uint16 iset) {
	Display::Printf(ISET_OFFSET, "%01U.%03U", iset / 1000, iset % 1000);
}

void UI::UpdateVRead(uint16 vread) {
	Display::Printf(VREAD_OFFSET, "%02U.%02U", vread / 100, vread % 100);
}

void UI::UpdateIRead(uint16 iread) {
	Display::Printf(IREAD_OFFSET, "%01U.%03U", iread / 1000, iread % 1000);
}

void UI::UpdateVISet(uint16 vset, uint16 iset) {
	UpdateVSet(vset);
	UpdateISet(iset);
}