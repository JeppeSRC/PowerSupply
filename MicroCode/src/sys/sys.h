#pragma once

#include <core/def.h>

#define NVIC_ISER 0xE000E100
#define NVIC_ICER 0xE000E180

void EnableInterrupt(uint8 interrupt);
void DisableInterrupt(uint8 interrupt);