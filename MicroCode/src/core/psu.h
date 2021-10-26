#pragma once

#include "def.h"

class PSU {
public:
    static uint16 Version;

    static volatile float vSet;
    static volatile float iSet;
    static volatile uint16 vRead;
    static volatile uint16 iRead;



};
