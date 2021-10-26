#include "psu.h"

uint16 PSU::Version = 0x0001;
volatile float PSU::vSet = 0.0f;
volatile float PSU::iSet = 0.0f;
volatile uint16 PSU::vRead = 0;
volatile uint16 PSU::iRead = 0;
