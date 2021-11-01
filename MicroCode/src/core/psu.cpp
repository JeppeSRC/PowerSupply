#include "psu.h"

#include <sys/registers/dac.h>

const uint16 PSU::vSetMin = 50;
const uint16 PSU::iSetMin = 1;
const uint16 PSU::iSetMax = 400;
const uint16 PSU::vSetMax = 800;// 2048;
const float PSU::DefaultVSetCal = 2.0475f;
const float PSU::DefaultISetCal = 10.26f;

volatile USBInData1 PSU::Data1;
volatile USBInData2 PSU::Data2;

void PSU::SetVSet(uint16 value) {
    Data1.vSet = CLAMP(value, vSetMin, vSetMax);
    Data1.vSetDAC = ((uint32)(float(Data1.vSet) * Data2.vSetCal) & 0xFFF);

    DAC2_DHR12R1 = Data1.vSetDAC;
}

void PSU::SetVSetDAC(uint16 value) {
    Data1.vSetDAC = value;
    Data1.vSet = CLAMP(uint16(float(value) / Data2.vSetCal) & 0xFFF, vSetMin, vSetMax);

    DAC2_DHR12R1 = value;
}

void PSU::SetISet(uint16 value) {
    Data1.iSet = CLAMP(value, iSetMin, iSetMax);;
    Data1.iSetDAC = ((uint32)(float(Data1.iSet) * Data2.iSetCal) & 0xFFF);

    DAC1_DHR12R2 = Data1.iSetDAC;
}

void PSU::SetISetDAC(uint16 value) {
    Data1.iSetDAC = value;
    Data1.iSet = CLAMP(uint16(float(value) / Data2.iSetCal) & 0xFFF, iSetMin, iSetMax);

    DAC1_DHR12R2 = value;
}