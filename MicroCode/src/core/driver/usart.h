#pragma once

#include <core/def.h>
#include <sys/registers/apb2.h>

class USART {
private:
	
public:
	static void Initialize();
	static void Send(uint8 data);
};
