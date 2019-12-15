#pragma once

#include <core/def.h>

extern "C" {

void memset(void* dst, uint8 v, uint32 size);
void memcpy(void* dst, const void* src, uint32 size);
void memzero(void* dst, uint32 size);

}