#include "string.h"

uint32 strlen(const char* string) {
	if (string == 0) return 0;
	uint32 len = 0;

	while (string[len++]);

	return len-1;
}

char* chars = "0123456789ABCDEF";

uint32 uint32ToString(uint8 value, uint8 base, char* buffer) {
	uint8 num = 0;

	char tmp[32];

	while (value > 0) {
		if (num >= 32) break;
		tmp[num++] = chars[value % base];
		value /= base;
	}

	for (uint8 i = 0; i < num; i++) {
		buffer[i] = tmp[num - i - 1];
	}

	return num;
}



uint32 sprintf(char* buffer, uint32 bufferSize, const char* format, ...) {
	va_list list;
	va_start(list, format);

	if (!buffer || !format) return ~0;

	uint32 len = strlen(format);

	uint32 printed = 0;

	for (uint32 i = 0; i < len; i++) {
		char c = format[i];

		if (c != '%') {
			buffer[printed++] = c;
		} else {
			i++;

			if (i >= len) return printed;

			switch (format[i]) {
				case 'c':
					buffer[printed++] = va_arg(list, char);
					break;
				case 'u':
				case 'U':
				{
					char tmp[32];
					memset(tmp, 0, 32);

					uint32 num = uint32ToString(va_arg(list, uint32), 10, tmp);

					append(buffer, tmp, printed);

					printed += num;
				}
				break;
			}
		}

		if (printed >= bufferSize) return bufferSize;

	}

	return printed;
}


void append(char* dst, const char* string, uint32 start) {
	uint32 len = strlen(string);

	for (uint32 i = 0; i < len; i++) {
		dst[i + start] = string[i];
	}
}