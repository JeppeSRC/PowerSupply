#pragma once

#include <core/driver/display.h>

class UI {
private:
	static uint8 uiState;
public:
	static void Initialize();

	static void UpdateVSet(uint16 vset);
	static void UpdateISet(uint16 iset);
	static void UpdateVRead(uint16 vread);
	static void UpdateIRead(uint16 iread);

};

