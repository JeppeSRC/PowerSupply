#ifndef SYS_REGISTERS_APB2_H_
#define SYS_REGISTERS_APB2_H_

#include <core/def.h>

#pragma region TIMERS

#define TIM19 0x40015C00

#define TIM19_CR1 (*(uint32*)TIM19)
#define TIM19_CR2 (*(uint32*)(TIM19+0x04))
#define TIM19_SMCR (*(uint32*)(TIM19+0x08))
#define TIM19_DIER (*(uint32*)(TIM19+0x0C))
#define TIM19_SR (*(uint32*)(TIM19+0x10))
#define TIM19_EGR (*(uint32*)(TIM19+0x14))
#define TIM19_CCMR1 (*(uint32*)(TIM19+0x18))
#define TIM19_CCMR2 (*(uint32*)(TIM19+0x1C))
#define TIM19_CCER (*(uint32*)(TIM19+0x20))
#define TIM19_CNT (*(uint32*)(TIM19+0x24))
#define TIM19_PSC (*(uint32*)(TIM19+0x28))
#define TIM19_ARR (*(uint32*)(TIM19+0x2C))
#define TIM19_CCR1 (*(uint32*)(TIM19+0x34))
#define TIM19_CCR2 (*(uint32*)(TIM19+0x38))
#define TIM19_CCR3 (*(uint32*)(TIM19+0x3C))
#define TIM19_CCR4 (*(uint32*)(TIM19+0x40))
#define TIM19_DCR (*(uint32*)(TIM19+0x48))
#define TIM19_DMAR (*(uint32*)(TIM19+0x4C))

#pragma endregion

#pragma region SDADC 

#define SDADC1 0x40016000
#define SDADC2 0x40016400
#define SDADC3 0x40016800

#define SDADC1_CR1 (*(uint32*)SDADC1)
#define SDADC2_CR1 (*(uint32*)SDADC2)
#define SDADC3_CR1 (*(uint32*)SDADC3)

#define SDADC1_CR2 (*(uint32*)(SDADC1+0x04))
#define SDADC2_CR2 (*(uint32*)(SDADC2+0x04))
#define SDADC3_CR2 (*(uint32*)(SDADC3+0x04))

#define SDADC1_ISR (*(uint32*)(SDADC1+0x08))
#define SDADC2_ISR (*(uint32*)(SDADC2+0x08))
#define SDADC3_ISR (*(uint32*)(SDADC3+0x08))

#define SDADC1_CLRISR (*(uint32*)(SDADC1+0x0C))
#define SDADC2_CLRISR (*(uint32*)(SDADC2+0x0C))
#define SDADC3_CLRISR (*(uint32*)(SDADC3+0x0C))

#define SDADC1_JCHGR (*(uint32*)(SDADC1+0x14))
#define SDADC2_JCHGR (*(uint32*)(SDADC2+0x14))
#define SDADC3_JCHGR (*(uint32*)(SDADC3+0x14))

#define SDADC1_CONF0R (*(uint32*)(SDADC1+0x20))
#define SDADC2_CONF0R (*(uint32*)(SDADC2+0x20))
#define SDADC3_CONF0R (*(uint32*)(SDADC3+0x20))

#define SDADC1_CONF1R (*(uint32*)(SDADC1+0x24))
#define SDADC2_CONF1R (*(uint32*)(SDADC2+0x24))
#define SDADC3_CONF1R (*(uint32*)(SDADC3+0x24))

#define SDADC1_CONF2R (*(uint32*)(SDADC1+0x28))
#define SDADC2_CONF2R (*(uint32*)(SDADC2+0x28))
#define SDADC3_CONF2R (*(uint32*)(SDADC3+0x28))

#define SDADC1_CONFCHR1 (*(uint32*)(SDADC1+0x40))
#define SDADC2_CONFCHR1 (*(uint32*)(SDADC2+0x40))
#define SDADC3_CONFCHR1 (*(uint32*)(SDADC3+0x40))

#define SDADC1_CONFCHR2 (*(uint32*)(SDADC1+0x44))
#define SDADC2_CONFCHR2 (*(uint32*)(SDADC2+0x44))
#define SDADC3_CONFCHR2 (*(uint32*)(SDADC3+0x44))

#define SDADC1_JDATAR (*(uint32*)(SDADC1+0x60))
#define SDADC2_JDATAR (*(uint32*)(SDADC2+0x60))
#define SDADC3_JDATAR (*(uint32*)(SDADC3+0x60))

#define SDADC1_RDATAR (*(uint32*)(SDADC1+0x64))
#define SDADC2_RDATAR (*(uint32*)(SDADC2+0x64))
#define SDADC3_RDATAR (*(uint32*)(SDADC3+0x64))

#pragma endregion

#pragma region EXTI

#define EXTI 0x40010400
#define EXTI_IMR (*(uint32*)(EXTI))
#define EXTI_EMR (*(uint32*)(EXTI+0x04))
#define EXTI_RTSR (*(uint32*)(EXTI+0x08))
#define EXTI_FTSR (*(uint32*)(EXTI+0x0C))
#define EXTI_SWIER (*(uint32*)(EXTI+0x010))
#define EXTI_PR (*(uint32*)(EXTI+0x014))


#pragma end

#pragma region SYSCFG

#define SYSCFG 0x40010000

#define SYSCFG_EXTICR1 (*(uint32*)(SYSCFG))
#define SYSCFG_EXTICR2 (*(uint32*)(SYSCFG+0x08))
#define SYSCFG_EXTICR3 (*(uint32*)(SYSCFG+0x0C))
#define SYSCFG_EXTICR4 (*(uint32*)(SYSCFG+0x10))
#define SYSCFG_CFGR2 (*(uint32*)(SYSCFG+0x18))

#pragma endregion

#endif
