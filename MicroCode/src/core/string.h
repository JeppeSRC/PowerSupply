#ifndef CORE_STRING_H_
#define CORE_STRING_H_

#include "def.h"
#include <sys/memory.h>

uint32 strlen(const char* string);
uint32 sprintf(char* buffer, uint32 bufferSize, const char* format, ...);

void append(char* dst, const char* string, uint32 start);

#endif