#ifndef CORE_DRIVER_DISPLAY_H_
#define CORE_DITVER_DISPLAY_H_

#include <core/def.h>

void InitializeDisplay();
void DisplayControl(uint8 displayOn, uint8 cursorOn, uint8 blinkOn);
void DisplayPrint(uint8 address, const char* string);
void DisplayPrintChar(uint8 address, const char c);
void DisplayClear();

#endif