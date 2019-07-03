#include "string.h"

uint32 strlen(const char* string) {
	if (string == 0) return ~0;
	uint32 len = 0;

	while (string[len++]);

	return len;
}