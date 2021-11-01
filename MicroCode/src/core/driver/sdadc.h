#pragma once
#include <sys/registers/sdadc.h>

class SDADC {
public:
    static void Initialize();
    static void Read(volatile uint16* vRead, volatile uint16* iRead);
};

