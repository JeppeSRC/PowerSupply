#pragma once

#include <sys/registers/registers.h>

void InitializeTimers();
void ResetTimers();

void Delay(uint8 seconds); 
void DelayMillis(uint16 milliSeceonds);
void DelayMicros(uint16 microSeconds);


uint32 Millis();
uint32 Micros();
