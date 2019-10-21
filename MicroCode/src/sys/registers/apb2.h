#ifndef SYS_REGISTERS_APB2_H_
#define SYS_REGISTERS_APB2_H_

#include <core/def.h>

#pragma region TIMERS

#define TIM19 0x40015C00

#define TIM19_CR1 (*(unsigned int*)TIM19)
#define TIM19_CR2 (*(unsigned int*)(TIM19+0x04))
#define TIM19_SMCR (*(unsigned int*)(TIM19+0x08))
#define TIM19_DIER (*(unsigned int*)(TIM19+0x0C))
#define TIM19_SR (*(unsigned int*)(TIM19+0x10))
#define TIM19_EGR (*(unsigned int*)(TIM19+0x14))
#define TIM19_CCMR1 (*(unsigned int*)(TIM19+0x18))
#define TIM19_CCMR2 (*(unsigned int*)(TIM19+0x1C))
#define TIM19_CCER (*(unsigned int*)(TIM19+0x20))
#define TIM19_CNT (*(unsigned int*)(TIM19+0x24))
#define TIM19_PSC (*(unsigned int*)(TIM19+0x28))
#define TIM19_ARR (*(unsigned int*)(TIM19+0x2C))
#define TIM19_CCR1 (*(unsigned int*)(TIM19+0x34))
#define TIM19_CCR2 (*(unsigned int*)(TIM19+0x38))
#define TIM19_CCR3 (*(unsigned int*)(TIM19+0x3C))
#define TIM19_CCR4 (*(unsigned int*)(TIM19+0x40))
#define TIM19_DCR (*(unsigned int*)(TIM19+0x48))
#define TIM19_DMAR (*(unsigned int*)(TIM19+0x4C))

#pragma endregion

#pragma region SDADC 

#define SDADC1 0x40016000
#define SDADC2 0x40016400
#define SDADC3 0x40016800

#define SDADC1_CR1 (*(unsigned int*)SDADC1)
#define SDADC2_CR1 (*(unsigned int*)SDADC2)
#define SDADC3_CR1 (*(unsigned int*)SDADC3)

#define SDADC1_CR2 (*(unsigned int*)(SDADC1+0x04))
#define SDADC2_CR2 (*(unsigned int*)(SDADC2+0x04))
#define SDADC3_CR2 (*(unsigned int*)(SDADC3+0x04))

#define SDADC1_ISR (*(unsigned int*)(SDADC1+0x08))
#define SDADC2_ISR (*(unsigned int*)(SDADC2+0x08))
#define SDADC3_ISR (*(unsigned int*)(SDADC3+0x08))

#define SDADC1_CLRISR (*(unsigned int*)(SDADC1+0x0C))
#define SDADC2_CLRISR (*(unsigned int*)(SDADC2+0x0C))
#define SDADC3_CLRISR (*(unsigned int*)(SDADC3+0x0C))

#define SDADC1_JCHGR (*(unsigned int*)(SDADC1+0x14))
#define SDADC2_JCHGR (*(unsigned int*)(SDADC2+0x14))
#define SDADC3_JCHGR (*(unsigned int*)(SDADC3+0x14))

#define SDADC1_CONF0R (*(unsigned int*)(SDADC1+0x20))
#define SDADC2_CONF0R (*(unsigned int*)(SDADC2+0x20))
#define SDADC3_CONF0R (*(unsigned int*)(SDADC3+0x20))

#define SDADC1_CONF1R (*(unsigned int*)(SDADC1+0x24))
#define SDADC2_CONF1R (*(unsigned int*)(SDADC2+0x24))
#define SDADC3_CONF1R (*(unsigned int*)(SDADC3+0x24))

#define SDADC1_CONF2R (*(unsigned int*)(SDADC1+0x28))
#define SDADC2_CONF2R (*(unsigned int*)(SDADC2+0x28))
#define SDADC3_CONF2R (*(unsigned int*)(SDADC3+0x28))

#define SDADC1_CONFCHR1 (*(unsigned int*)(SDADC1+0x40))
#define SDADC2_CONFCHR1 (*(unsigned int*)(SDADC2+0x40))
#define SDADC3_CONFCHR1 (*(unsigned int*)(SDADC3+0x40))

#define SDADC1_CONFCHR2 (*(unsigned int*)(SDADC1+0x44))
#define SDADC2_CONFCHR2 (*(unsigned int*)(SDADC2+0x44))
#define SDADC3_CONFCHR2 (*(unsigned int*)(SDADC3+0x44))

#define SDADC1_JDATAR (*(unsigned int*)(SDADC1+0x60))
#define SDADC2_JDATAR (*(unsigned int*)(SDADC2+0x60))
#define SDADC3_JDATAR (*(unsigned int*)(SDADC3+0x60))

#define SDADC1_RDATAR (*(unsigned int*)(SDADC1+0x64))
#define SDADC2_RDATAR (*(unsigned int*)(SDADC2+0x64))
#define SDADC3_RDATAR (*(unsigned int*)(SDADC3+0x64))

#pragma endregion

#pragma region EXTI

#define EXTI 0x40010400
#define EXTI_IMR (*(unsigned int*)(EXTI))
#define EXTI_EMR (*(unsigned int*)(EXTI+0x04))
#define EXTI_RTSR (*(unsigned int*)(EXTI+0x08))
#define EXTI_FTSR (*(unsigned int*)(EXTI+0x0C))
#define EXTI_SWIER (*(unsigned int*)(EXTI+0x010))
#define EXTI_PR (*(unsigned int*)(EXTI+0x014))


#pragma end

#pragma region SYSCFG

#define SYSCFG 0x40010000

#define SYSCFG_EXTICR1 (*(unsigned int*)(SYSCFG))
#define SYSCFG_EXTICR2 (*(unsigned int*)(SYSCFG+0x08))
#define SYSCFG_EXTICR3 (*(unsigned int*)(SYSCFG+0x0C))
#define SYSCFG_EXTICR4 (*(unsigned int*)(SYSCFG+0x10))
#define SYSCFG_CFGR2 (*(unsigned int*)(SYSCFG+0x18))

#pragma endregion

#endif
