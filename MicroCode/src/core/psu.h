#pragma once

#include "def.h"

#include <core/driver/usb.h>

// Temporary while using v2 board
#define RANGE_4A

enum _Attribs {
    Attrib_EXCLPC = 0x01,
    Attrib_MDAC = 0x02,
    Attrib_MFAN = 0x04,
    Attrib_SDADC = 0x08,
    Attrib_CVCALI = 0x10000000,
    Attrib_CICALI = 0x20000000,
    Attrib_VCALI = 0x40000000,
    Attrib_ICALI = 0x80000000
};

class PSU {
public:
    static const uint16 vSetMin;
    static const uint16 iSetMin;
    static const uint16 iSetMax;
    static const uint16 vSetMax;
    static const float DefaultVSetCal;
    static const float DefaultISetCal;
public:

    // Must be aligned on 4 bytes when using DMA
    static volatile USBInData1 Data1;
    static volatile USBInData2 Data2;

    static void SetVSet(uint16 value);
    static void SetVSetDAC(uint16 value);
    static void SetISet(uint16 value);
    static void SetISetDAC(uint16 value);
};
