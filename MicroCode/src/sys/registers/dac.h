#pragma once

#include <core/def.h>

#define DAC1 0x40007400
#define DAC2 0x40009800

#define DAC1_CR (*(volatile uint32*)DAC1)
#define DAC2_CR (*(volatile uint32*)DAC2)

#define DAC1_SWTRIGR (*(volatile uint32*)(DAC1+0x04))
#define DAC2_SWTRIGR (*(volatile uint32*)(DAC2+0x04))

#define DAC1_DHR12R1 (*(volatile uint32*)(DAC1+0x08))
#define DAC2_DHR12R1 (*(volatile uint32*)(DAC2+0x08))

#define DAC1_DHR12L1 (*(volatile uint32*)(DAC1+0x0C))
#define DAC2_DHR12L1 (*(volatile uint32*)(DAC2+0x0C))

#define DAC1_DHR8R1 (*(volatile uint32*)(DAC1+0x10))
#define DAC2_DHR8R1 (*(volatile uint32*)(DAC2+0x10))

#define DAC1_DHR12R2 (*(volatile uint32*)(DAC1+0x14))
#define DAC2_DHR12R2 (*(volatile uint32*)(DAC2+0x14))

#define DAC1_DHR12L2 (*(volatile uint32*)(DAC1+0x18))
#define DAC2_DHR12L2 (*(volatile uint32*)(DAC2+0x18))

#define DAC1_DHR8R2 (*(volatile uint32*)(DAC1+0x1C))
#define DAC2_DHR8R2 (*(volatile uint32*)(DAC2+0x1C))

#define DAC1_DHR12RD (*(volatile uint32*)(DAC1+0x20))
#define DAC2_DHR12RD (*(volatile uint32*)(DAC2+0x20))

#define DAC1_DHR12LD (*(volatile uint32*)(DAC1+0x24))
#define DAC2_DHR12LD (*(volatile uint32*)(DAC2+0x24))

#define DAC1_DHR8RD (*(volatile uint32*)(DAC1+0x28))
#define DAC2_DHR8RD (*(volatile uint32*)(DAC2+0x28))

#define DAC1_DOR1 (*(volatile uint32*)(DAC1+0x2C))
#define DAC2_DOR1 (*(volatile uint32*)(DAC2+0x2C))

#define DAC1_DOR2 (*(volatile uint32*)(DAC1+0x30))
#define DAC2_DOR2 (*(volatile uint32*)(DAC2+0x30))

#define DAC1_SR (*(volatile uint32*)(DAC1+0x34))
#define DAC2_SR (*(volatile uint32*)(DAC2+0x34))
