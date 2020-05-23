#pragma once

#include <core/def.h>

#define SYSCFG 0x40010000

#define SYSCFG_CFGR1 (*(volatile uint32*)(SYSCFG))
#define SYSCFG_EXTICR1 (*(volatile uint32*)(SYSCFG+0x08))
#define SYSCFG_EXTICR2 (*(volatile uint32*)(SYSCFG+0x0C))
#define SYSCFG_EXTICR3 (*(volatile uint32*)(SYSCFG+0x010))
#define SYSCFG_EXTICR4 (*(volatile uint32*)(SYSCFG+0x14))
#define SYSCFG_CFGR2 (*(volatile uint32*)(SYSCFG+0x18))

