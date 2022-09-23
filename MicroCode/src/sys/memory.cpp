#include "memory.h"

extern "C" {


// Attribute required for -flto
void __attribute__((used)) memset(volatile void* dst, uint8 v, uint32 size) {
	for (uint32 i = 0; i < size; i++) {
		*((volatile uint8*)dst + i) = v;
	}
}

void memcpy(volatile void* dst, const void* src, uint32 size) {
	for (uint32 i = 0; i < size; i++) {
		*((volatile uint8*)dst + i) = *((volatile uint8*)src + i);
	}
}

void memzero(volatile void* dst, uint32 size) {
	for (uint32 i = 0; i < size; i++) {
		*((volatile uint8*)dst + i) = 0;
	}
}

}
