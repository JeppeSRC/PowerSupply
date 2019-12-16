#pragma once

#include <core/def.h>

class USART {
private:
	
public:
	static void Initialize();
	static void Send(uint8 data);
};
