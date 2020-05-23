#pragma once

#include <core/def.h>

#define USART1 0x40013800

#define USART1_CR1 (*(volatile uint32*)(USART1))
#define USART1_CR2 (*(volatile uint32*)(USART1+0x04))
#define USART1_CR3 (*(volatile uint32*)(USART1+0x08))
#define USART1_BRR (*(volatile uint32*)(USART1+0x0C))
#define USART1_GTPR (*(volatile uint32*)(USART1+0x10))
#define USART1_RTOR (*(volatile uint32*)(USART1+0x14))
#define USART1_RQR (*(volatile uint32*)(USART1+0x18))
#define USART1_ISR (*(volatile uint32*)(USART1+0x1C))
#define USART1_ICR (*(volatile uint32*)(USART1+0x20))
#define USART1_RDR (*(volatile uint32*)(USART1+0x24))
#define USART1_TDR (*(volatile uint32*)(USART1+0x28))

