#include "string.h"
#include <stdarg.h>

uint32 strlen(const char* string) {
	if (string == 0) return 0;
	uint32 len = 0;

	while (string[len])	{
		len++;
	}

	return len;
}


void append(char* dst, const char* string, uint32 start) {
	memcpy(dst + start, string, strlen(string));
}

char chars[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
char CHARS[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };

uint8 maxChars[] = { 0, 0, 32, 0, 0, 0, 0, 0, 11, 0, 10, 0, 0, 0, 0, 0, 8 };

uint32 uint32ToString(uint32 value, uint8 base, char* buffer, uint8 minChars, uint8 upper) {
	uint8 num = 0;

	char tmp[32] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };

	uint8 max = maxChars[base];

	while (value > 0) {
		if (num >= max) break;
		tmp[num] = upper ? CHARS[value % base] : chars[value % base];
		num++;
		value /= base;
	}
	
	if (num < minChars) {
		uint8 range = minChars - num;

		for (uint8 i = 0; i < range; i++) {
			tmp[minChars - i - 1] = '0';
		}

		num = minChars;
	}

	for (uint8 i = 0; i < num; i++) {
		buffer[i] = tmp[num - i - 1];
	}

	return num;
}

uint8 GetMinChars(const char* const string, uint32* i) {
	char c = string[*i];

	uint8 num = 0;

	if (c >= 48 && c <= 57) {
		num = (c - 48) * 10;

		(*i)++;
	} else {
		return num;
	}

	c = string[*i];

	if (c >= 48 && c <= 57) {
		num += (c - 48);

		(*i)++;
	} else {
		num /= 10;
	}

	return num;
}

uint32 sprintf(char* buffer, uint32 bufferSize, const char* format,...) {
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

			uint8 minChars = GetMinChars(format, &i);

			uint8 upper = 1;
			uint32 num = 0;
			char tmp[32] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

			switch (format[i]) {
				case 'c':
					buffer[printed++] = va_arg(list, uint32);
					break;
				case 'u':
				case 'U':
					num = uint32ToString(va_arg(list, uint32), 10, tmp, minChars, 0);
					append(buffer, tmp, printed);
					printed += num;
					break;
				case 'h':
					upper = 0;
				case 'H':
					num = uint32ToString(va_arg(list, uint32), 16, tmp, minChars, upper);
					append(buffer, tmp, printed);
					printed += num;
					break;
			}
		}

		if (printed >= bufferSize) return bufferSize;

	}

	return printed;
}