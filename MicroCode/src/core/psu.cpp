#include "psu.h"

#include <sys/registers/dac.h>

const uint16 PSU::vSetMin = 50;
const uint16 PSU::iSetMin = 100;
const uint16 PSU::iSetMax = 2048;
const uint16 PSU::vSetMax = 2048;
const float PSU::DefaultVSetCal = 2.0475f;
const float PSU::DefaultISetCal = 10.26f;

uint16 PSU::Version = 0x0001;
volatile uint32 PSU::Attributes = 0;
volatile uint16 PSU::vSet = 0;
volatile uint16 PSU::iSet = 0;
volatile uint16 PSU::vRead = 0;
volatile uint16 PSU::iRead = 0;
volatile uint16 PSU::vReadADC = 0;
volatile uint16 PSU::iReadADC = 0;

volatile float  PSU::vSetCal = PSU::DefaultVSetCal; //TODO: move into flash, for non-volatile storage
volatile float  PSU::iSetCal = PSU::DefaultISetCal;  //TODO: move into flash, for non-volatile storage
volatile uint32 PSU::vSetDAC = 0;
volatile uint32 PSU::iSetDAC = 0;

void PSU::SetVSet(uint16 value) {
    vSet = CLAMP(value, vSetMin, vSetMax);
    vSetDAC = ((uint32)(float(vSet) * vSetCal) & 0xFFF);

    DAC2_DHR12R1 = vSetDAC;
}

void PSU::SetVSetDAC(uint16 value) {
    vSetDAC = value;
    vSet = CLAMP(uint16(float(value) / vSetCal) & 0xFFF, vSetMin, vSetMax);

    DAC2_DHR12R1 = value;
}

void PSU::SetISet(uint16 value) {
    iSet = CLAMP(value, iSetMin, iSetMax);;
    iSetDAC = ((uint32)(float(iSet) * iSetCal) & 0xFFF);

    DAC1_DHR12R2 = iSetDAC;
}

void PSU::SetISetDAC(uint16 value) {
    iSetDAC = value;
    iSet = CLAMP(uint16(float(value) / iSetCal) & 0xFFF, iSetMin, iSetMax);

    DAC1_DHR12R2 = value;
}