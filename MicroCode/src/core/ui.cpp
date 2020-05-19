#include "ui.h"
#include <core/driver/display.h>
#include <sys/time.h>

/* Display Format 2x16

	------------------
	|SET 00.00V 0.00A|
	|OUT 00.00V 0.00A|
	------------------
*/

#define VSET_OFFSET 0x04
#define ISET_OFFSET 0x0B
#define VREAD_OFFSET (0x40 + VSET_OFFSET)
#define IREAD_OFFSET (0x40 + ISET_OFFSET)

uint8 UI::uiState;

void UI::Initialize() {
	Display::Clear();
	Display::Print(0x00, "-------PSU------");
	Display::Printf(0x40, "Version: %02H.%02H", MC_VERSION / 0x100, MC_VERSION % 0x100);
	Delay(2);
	Display::Clear();
	Display::Printf(0x00, "SET %02U.%02UV %01U.%02UA", 0, 0, 0, 0);
	Display::Print(0x40, "OUT 00.00V 0.00A");
}

void UI::UpdateVSet(uint16 vset) {
	Display::Printf(VSET_OFFSET, "%02U.%02U", vset / 100, vset % 100);
}

void UI::UpdateISet(uint16 iset) {
	Display::Printf(ISET_OFFSET, "%01U.%02U", iset / 100, iset % 100);
}

void UI::UpdateVRead(uint16 vread) {
	Display::Printf(VREAD_OFFSET, "%02U.%02U", vread / 100, vread % 100);
}

void UI::UpdateIRead(uint16 iread) {
	Display::Printf(IREAD_OFFSET, "%01U.%02U", iread / 100, iread % 100);
}

void UI::UpdateVISet(uint16 vset, uint16 iset) {
	UpdateVSet(vset);
	UpdateISet(iset);
}