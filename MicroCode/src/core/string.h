#pragma once

#include "def.h"
#include <sys/memory.h>

uint32 strlen(const char* string);
uint32 sprintf(char* buffer, uint32 bufferSize, const char* format, ...);
uint32 vsprintf(char* buffer, uint32 bufferSize, const char* format, va_list args);

uint32 uint32ToString(uint32 value, uint8 base, char* buffer, uint8 minChars, uint8 upper);

