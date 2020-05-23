#pragma once

#include <core/def.h>

#define FLASH 0x40022000

#define FLASH_ACR (*(volatile uint32*)(FLASH))
