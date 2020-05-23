#pragma once

#include <core/def.h>

#define PWR 0x40007000

#define PWR_CR (*(volatile uint32*)PWR)
#define PWR_CSR (*(volatile uint32*)(PWR+0x04))