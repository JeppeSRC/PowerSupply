#include "memory.h"

void memset(void* dst, uint8 v, uint32 size) {
	for (uint32 i = 0; i < size; i++) {
		((uint8*)dst)[i] = v;
	}
}

void memcpy(void* dst, void* src, uint32 size) {
	for (uint32 i = 0; i < size; i += 4) {
		((uint8*)dst)[i] = ((uint8*)src)[i];
	}
}