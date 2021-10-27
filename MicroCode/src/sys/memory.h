#pragma once

#include <core/def.h>

extern "C" {

void memset(volatile void* dst, uint8 v, uint32 size);
void memcpy(volatile void* dst, const void* src, uint32 size);
void memzero(volatile void* dst, uint32 size);

}