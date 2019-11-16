#include "memory.h"

void memset(void* dst, uint8 v, uint32 size) {
	for (uint32 i = 0; i < size; i++) {
		*((volatile uint8*)dst + i) = v;
	}
}

void memcpy(void* dst, void* src, uint32 size) {
	for (uint32 i = 0; i < size; i += 4) {
		((volatile uint8*)dst)[i] = ((uint8*)src)[i];
	}
}

void memzero(void* dst, uint32 size) {
	for (uint32 i = 0; i < size; i++) {
		*((volatile uint8*)dst + i) = 0;
	}
}