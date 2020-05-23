#pragma once

#include <core/def.h>

class USART {
private:
	static char dmaBuffer[256];
	
	static void SendDMA(uint16 num);
public:
	static void Initialize(uint32 baud);
	static void Send(uint8 data);
	static void Send(uint8* data, uint16 len);
	static void Print(const char* string);
	static void Printf(const char* fmt, ...);
};
