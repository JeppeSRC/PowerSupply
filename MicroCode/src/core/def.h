#pragma once

typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned int uint32;
typedef unsigned long long uint64;

typedef signed char int8;
typedef signed short int16;
typedef signed int int32;
typedef signed long long int64;

#define va_list uint8*
#define va_start(list, ap) list = (((va_list)&ap)+sizeof(ap))
#define va_end(list)
#define va_arg(list, type) (*(type*)((list += sizeof(type)) - sizeof(type)))

#define CLAMP(x, min, max) ((x) < (min) ? (min) : (x) > (max) ? (max) : (x))