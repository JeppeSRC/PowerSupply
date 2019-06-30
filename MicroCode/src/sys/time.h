#ifndef SYS_TIME_H_
#define SYS_TIME_H_

#include <sys/registers/registers.h>

void InitializeTimers();

void Delay(uint8 seconds); 
void DelayMillis(uint16 milliSeceonds);
void DelayMicros(uint16 microSeconds);

#endif