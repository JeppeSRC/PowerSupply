#pragma once

#include <core/def.h>

#define EXTI 0x40010400
#define EXTI_IMR (*(volatile uint32*)(EXTI))
#define EXTI_EMR (*(volatile uint32*)(EXTI+0x04))
#define EXTI_RTSR (*(volatile uint32*)(EXTI+0x08))
#define EXTI_FTSR (*(volatile uint32*)(EXTI+0x0C))
#define EXTI_SWIER (*(volatile uint32*)(EXTI+0x010))
#define EXTI_PR (*(volatile uint32*)(EXTI+0x014))

