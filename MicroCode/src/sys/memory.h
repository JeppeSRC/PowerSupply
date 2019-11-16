#pragma once

#include <core/def.h>

void memset(void* dst, uint8 v, uint32 size);
void memcpy(void* dst, void* src, uint32 size);
void memzero(void* dst, uint32 size);