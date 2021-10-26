#pragma once

#include "def.h"

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
    static uint16 Version;

    static volatile uint32 Attributes;

    static volatile uint16 vSet;
    static volatile uint16 iSet;
    static volatile uint16 vRead;
    static volatile uint16 iRead;

    static volatile float  vSetCal;
    static volatile float  iSetCal;
    static volatile uint32 vSetDAC;
    static volatile uint32 iSetDAC;


    static void SetVSet(uint16 value);
    static void SetVSetDAC(uint16 value);
    static void SetISet(uint16 value);
    static void SetISetDAC(uint16 value);
};
