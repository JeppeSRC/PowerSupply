#pragma once

#include <core/def.h>

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

