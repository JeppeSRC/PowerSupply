#pragma once

#include <core/def.h>

#define NVIC_ISER 0xE000E100
#define NVIC_ICER 0xE000E180
#define NVIC_ISPR 0xE000E200
#define NVIC_ICPR 0xE000E280
#define NVIC_IPR  0xE000E400

#define CFSR (*(volatile uint32*)0xE000ED28)
#define HFSR (*(volatile uint32*)0xE000ED2C)
#define MMAR (*(volatile uint32*)0xE000ED34)
#define BFAR (*(volatile uint32*)0xE000ED38)
#define AFSR (*(volatile uint32*)0xE000ED3C)

void EnableInterrupts();
void DisableInterrupts();
void EnableInterrupt(uint8 interrupt);
void DisableInterrupt(uint8 interrupt);
void SetPendingInterrupt(uint8 interrupt);
void ClearPendingInterrupt(uint8 interrupt);
void SetInterruptPriority(uint8 interrupt, uint8 priority);
