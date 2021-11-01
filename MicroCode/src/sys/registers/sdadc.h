#pragma once

#include <core/def.h>


#define SDADC1 0x40016000
#define SDADC2 0x40016400
#define SDADC3 0x40016800

#define SDADC1_CR1 (*(volatile uint32*)SDADC1)
#define SDADC2_CR1 (*(volatile uint32*)SDADC2)
#define SDADC3_CR1 (*(volatile uint32*)SDADC3)

#define SDADC1_CR2 (*(volatile uint32*)(SDADC1+0x04))
#define SDADC2_CR2 (*(volatile uint32*)(SDADC2+0x04))
#define SDADC3_CR2 (*(volatile uint32*)(SDADC3+0x04))

#define SDADC1_ISR (*(volatile uint32*)(SDADC1+0x08))
#define SDADC2_ISR (*(volatile uint32*)(SDADC2+0x08))
#define SDADC3_ISR (*(volatile uint32*)(SDADC3+0x08))

#define SDADC1_CLRISR (*(volatile uint32*)(SDADC1+0x0C))
#define SDADC2_CLRISR (*(volatile uint32*)(SDADC2+0x0C))
#define SDADC3_CLRISR (*(volatile uint32*)(SDADC3+0x0C))

#define SDADC1_JCHGR (*(volatile uint32*)(SDADC1+0x14))
#define SDADC2_JCHGR (*(volatile uint32*)(SDADC2+0x14))
#define SDADC3_JCHGR (*(volatile uint32*)(SDADC3+0x14))

#define SDADC1_CONF0R (*(volatile uint32*)(SDADC1+0x20))
#define SDADC2_CONF0R (*(volatile uint32*)(SDADC2+0x20))
#define SDADC3_CONF0R (*(volatile uint32*)(SDADC3+0x20))

#define SDADC1_CONF1R (*(volatile uint32*)(SDADC1+0x24))
#define SDADC2_CONF1R (*(volatile uint32*)(SDADC2+0x24))
#define SDADC3_CONF1R (*(volatile uint32*)(SDADC3+0x24))

#define SDADC1_CONF2R (*(volatile uint32*)(SDADC1+0x28))
#define SDADC2_CONF2R (*(volatile uint32*)(SDADC2+0x28))
#define SDADC3_CONF2R (*(volatile uint32*)(SDADC3+0x28))

#define SDADC1_CONFCHR1 (*(volatile uint32*)(SDADC1+0x40))
#define SDADC2_CONFCHR1 (*(volatile uint32*)(SDADC2+0x40))
#define SDADC3_CONFCHR1 (*(volatile uint32*)(SDADC3+0x40))

#define SDADC1_CONFCHR2 (*(volatile uint32*)(SDADC1+0x44))
#define SDADC2_CONFCHR2 (*(volatile uint32*)(SDADC2+0x44))
#define SDADC3_CONFCHR2 (*(volatile uint32*)(SDADC3+0x44))

#define SDADC1_JDATAR (*(volatile uint32*)(SDADC1+0x60))
#define SDADC2_JDATAR (*(volatile uint32*)(SDADC2+0x60))
#define SDADC3_JDATAR (*(volatile uint32*)(SDADC3+0x60))

#define SDADC1_RDATAR (*(volatile uint32*)(SDADC1+0x64))
#define SDADC2_RDATAR (*(volatile uint32*)(SDADC2+0x64))
#define SDADC3_RDATAR (*(volatile uint32*)(SDADC3+0x64))

#define SDADC1_RDATA12R (*(volatile uint32*)(SDADC1+0x74))

