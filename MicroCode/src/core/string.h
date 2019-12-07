#ifndef CORE_STRING_H_
#define CORE_STRING_H_

#include "def.h"
#include <sys/memory.h>

uint32 strlen(const char* string);
uint32 sprintf_real(char* buffer, uint32 bufferSize, const char* format, uint32 dummy1, uint32 dummy2, ...);
#define sprintf(buffer, bufferSize, format, ...) sprintf_real(buffer, bufferSize, format, 0, 0, __VA_ARGS__)

void append(char* dst, const char* string, uint32 start);
uint32 uint32ToString(uint32 value, uint8 base, char* buffer, uint8 minChars, uint8 upper);

#endif