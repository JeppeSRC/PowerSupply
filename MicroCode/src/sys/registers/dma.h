#pragma once

#include <core/def.h>

#define DMA1 0x40020000
#define DMA2 0x40020400

#define DMA1_ISR (*(volatile uint32*)(DMA1))
#define DMA2_ISR (*(volatile uint32*)(DMA2))

#define DMA1_IFCR (*(volatile uint32*)(DMA1 + 0x04))
#define DMA2_IFCR (*(volatile uint32*)(DMA2 + 0x04))

#define DMA1_CCR1 (*(volatile uint32*)(DMA1 + 0x08 + (0x14 * 0)))
#define DMA1_CCR2 (*(volatile uint32*)(DMA1 + 0x08 + (0x14 * 1)))
#define DMA1_CCR3 (*(volatile uint32*)(DMA1 + 0x08 + (0x14 * 2)))
#define DMA1_CCR4 (*(volatile uint32*)(DMA1 + 0x08 + (0x14 * 3)))
#define DMA1_CCR5 (*(volatile uint32*)(DMA1 + 0x08 + (0x14 * 4)))
#define DMA1_CCR6 (*(volatile uint32*)(DMA1 + 0x08 + (0x14 * 5)))
#define DMA1_CCR7 (*(volatile uint32*)(DMA1 + 0x08 + (0x14 * 6)))

#define DMA2_CCR1 (*(volatile uint32*)(DMA2 + 0x08 + (0x14 * 0)))
#define DMA2_CCR2 (*(volatile uint32*)(DMA2 + 0x08 + (0x14 * 1)))
#define DMA2_CCR3 (*(volatile uint32*)(DMA2 + 0x08 + (0x14 * 2)))
#define DMA2_CCR4 (*(volatile uint32*)(DMA2 + 0x08 + (0x14 * 3)))
#define DMA2_CCR5 (*(volatile uint32*)(DMA2 + 0x08 + (0x14 * 4)))

#define DMA1_CNDTR1 (*(volatile uint32*)(DMA1 + 0x0C + (0x14 * 0)))
#define DMA1_CNDTR2 (*(volatile uint32*)(DMA1 + 0x0C + (0x14 * 1)))
#define DMA1_CNDTR3 (*(volatile uint32*)(DMA1 + 0x0C + (0x14 * 2)))
#define DMA1_CNDTR4 (*(volatile uint32*)(DMA1 + 0x0C + (0x14 * 3)))
#define DMA1_CNDTR5 (*(volatile uint32*)(DMA1 + 0x0C + (0x14 * 4)))
#define DMA1_CNDTR6 (*(volatile uint32*)(DMA1 + 0x0C + (0x14 * 5)))
#define DMA1_CNDTR7 (*(volatile uint32*)(DMA1 + 0x0C + (0x14 * 6)))

#define DMA2_CNDTR1 (*(volatile uint32*)(DMA2 + 0x0C + (0x14 * 0)))
#define DMA2_CNDTR2 (*(volatile uint32*)(DMA2 + 0x0C + (0x14 * 1)))
#define DMA2_CNDTR3 (*(volatile uint32*)(DMA2 + 0x0C + (0x14 * 2)))
#define DMA2_CNDTR4 (*(volatile uint32*)(DMA2 + 0x0C + (0x14 * 3)))
#define DMA2_CNDTR5 (*(volatile uint32*)(DMA2 + 0x0C + (0x14 * 4)))

#define DMA1_CPAR1 (*(volatile uint32*)(DMA1 + 0x10 + (0x14 * 0)))
#define DMA1_CPAR2 (*(volatile uint32*)(DMA1 + 0x10 + (0x14 * 1)))
#define DMA1_CPAR3 (*(volatile uint32*)(DMA1 + 0x10 + (0x14 * 2)))
#define DMA1_CPAR4 (*(volatile uint32*)(DMA1 + 0x10 + (0x14 * 3)))
#define DMA1_CPAR5 (*(volatile uint32*)(DMA1 + 0x10 + (0x14 * 4)))
#define DMA1_CPAR6 (*(volatile uint32*)(DMA1 + 0x10 + (0x14 * 5)))
#define DMA1_CPAR7 (*(volatile uint32*)(DMA1 + 0x10 + (0x14 * 6)))

#define DMA2_CPAR1 (*(volatile uint32*)(DMA2 + 0x10 + (0x14 * 0)))
#define DMA2_CPAR2 (*(volatile uint32*)(DMA2 + 0x10 + (0x14 * 1)))
#define DMA2_CPAR3 (*(volatile uint32*)(DMA2 + 0x10 + (0x14 * 2)))
#define DMA2_CPAR4 (*(volatile uint32*)(DMA2 + 0x10 + (0x14 * 3)))
#define DMA2_CPAR5 (*(volatile uint32*)(DMA2 + 0x10 + (0x14 * 4)))

#define DMA1_CMAR1 (*(volatile uint32*)(DMA1 + 0x14 + (0x14 * 0)))
#define DMA1_CMAR2 (*(volatile uint32*)(DMA1 + 0x14 + (0x14 * 1)))
#define DMA1_CMAR3 (*(volatile uint32*)(DMA1 + 0x14 + (0x14 * 2)))
#define DMA1_CMAR4 (*(volatile uint32*)(DMA1 + 0x14 + (0x14 * 3)))
#define DMA1_CMAR5 (*(volatile uint32*)(DMA1 + 0x14 + (0x14 * 4)))
#define DMA1_CMAR6 (*(volatile uint32*)(DMA1 + 0x14 + (0x14 * 5)))
#define DMA1_CMAR7 (*(volatile uint32*)(DMA1 + 0x14 + (0x14 * 6)))

#define DMA2_CMAR1 (*(volatile uint32*)(DMA2 + 0x14 + (0x14 * 0)))
#define DMA2_CMAR2 (*(volatile uint32*)(DMA2 + 0x14 + (0x14 * 1)))
#define DMA2_CMAR3 (*(volatile uint32*)(DMA2 + 0x14 + (0x14 * 2)))
#define DMA2_CMAR4 (*(volatile uint32*)(DMA2 + 0x14 + (0x14 * 3)))
#define DMA2_CMAR5 (*(volatile uint32*)(DMA2 + 0x14 + (0x14 * 4)))