#ifndef CORE_DRIVER_DISPLAY_H_
#define CORE_DITVER_DISPLAY_H_

#include <core/def.h>

/*
void InitializeDisplay();
void DisplayControl(uint8 displayOn, uint8 cursorOn, uint8 blinkOn);
void Display::Print(uint8 address, const char* string);
void Display::Print(uint8 address, const char* string, uint32 length);
void Display::PrintChar(uint8 address, const char c);
void Display::Printf(uint8 address, const char* format, ...);
void DisplayClear();*/


class Display {
private:
	static void  ExecuteCommand(uint32 instCode);
	static uint8 ReadResult();
	static void WaitBusy();
	static void SetAddress(uint8 address);
public:
	static void Initialize();
	static void Control(uint8 display, uint8 cursor, uint8 blink);

	static void Clear();

	static void Print(uint8 address, const char* const string);
	static void Print(uint8 address, const char* const string, uint8 length);
	static void Print(uint8 address, const char c);
	static void Printf(uint8 address, const char* const format, ...);

};

#endif