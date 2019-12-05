#ifndef SYS_REGISTERS_APB2_H_
#define SYS_REGISTERS_APB2_H_

#include <core/def.h>

#pragma region TIMERS

#define TIM19 0x40015C00

#define TIM19_CR1 (*(volatile uint32*)TIM19)
#define TIM19_CR2 (*(volatile uint32*)(TIM19+0x04))
#define TIM19_SMCR (*(volatile uint32*)(TIM19+0x08))
#define TIM19_DIER (*(volatile uint32*)(TIM19+0x0C))
#define TIM19_SR (*(volatile uint32*)(TIM19+0x10))
#define TIM19_EGR (*(volatile uint32*)(TIM19+0x14))
#define TIM19_CCMR1 (*(volatile uint32*)(TIM19+0x18))
#define TIM19_CCMR2 (*(volatile uint32*)(TIM19+0x1C))
#define TIM19_CCER (*(volatile uint32*)(TIM19+0x20))
#define TIM19_CNT (*(volatile uint32*)(TIM19+0x24))
#define TIM19_PSC (*(volatile uint32*)(TIM19+0x28))
#define TIM19_ARR (*(volatile uint32*)(TIM19+0x2C))
#define TIM19_CCR1 (*(volatile uint32*)(TIM19+0x34))
#define TIM19_CCR2 (*(volatile uint32*)(TIM19+0x38))
#define TIM19_CCR3 (*(volatile uint32*)(TIM19+0x3C))
#define TIM19_CCR4 (*(volatile uint32*)(TIM19+0x40))
#define TIM19_DCR (*(volatile uint32*)(TIM19+0x48))
#define TIM19_DMAR (*(volatile uint32*)(TIM19+0x4C))

//CR1
#define CKD(data) ((data & 0x03) << 8)
#define APRE(data) ((data & 0x01) << 7)
#define CMS(data) ((data & 0x03) << 5)
#define DIR(data) ((data & 0x01) << 4)
#define OPM(data) ((data & 0x01) << 3)
#define URS(data) ((data & 0x01) << 2)
#define UDIS(data) ((data & 0x01) << 1)
#define CEN(data) (data & 0x01)

//CR2
#define TI1S(data) ((data & 0x01) << 7)
#define MMS(data) ((data & 0x07) << 4)
#define CCDS(data) ((data & 0x01) << 3)

//SMCR
#define ETP(data) ((data & 0x01) << 15)
#define ECE(data) ((data & 0x01) << 14)
#define ETPS(data) ((data & 0x03) << 12)
#define ETF(data) ((data & 0x0F) << 8)
#define MSM(data) ((data & 0x01) << 7)
#define TS(data) ((data & 0x07) << 4)
#define SMS(data) (data & 0x07)

//CCMR1
#define CC2S(data) ((data & 0x03) << 8)
#define CC1S(data) (data & 0x03)

//Output
#define OC2CE(data) ((data & 0x01) << 15)
#define OC2M(data) ((data & 0x07) << 12)
#define OC2PE(data) ((data & 0x01) << 11)
#define OC2FE(data) ((data & 0x01) << 10)
#define OC1CE(data) ((data & 0x01) << 7)
#define OC1M(data) ((data & 0x07) << 4)
#define OC1PE(data) ((data & 0x01) << 3)
#define OC1FE(data) ((data & 0x01) << 2)

//Input
#define IC2F(data) ((data & 0x07) << 12)
#define IC2PSC(data) ((data & 0x03) << 10)
#define IC1F(data) ((data & 0x07) << 4)
#define IC1PSC(data) ((data & 0x03) << 2)

//CCMR2
#define CC4S(data) ((data & 0x03) << 8)
#define CC3S(data) (data & 0x03)

//Output
#define OC4CE(data) ((data & 0x01) << 15)
#define OC4M(data) ((data & 0x07) << 12)
#define OC4PE(data) ((data & 0x01) << 11)
#define OC4FE(data) ((data & 0x01) << 10)
#define OC3CE(data) ((data & 0x01) << 7)
#define OC3M(data) ((data & 0x07) << 4)
#define OC3PE(data) ((data & 0x01) << 3)
#define OC3FE(data) ((data & 0x01) << 2)

//Input
#define IC4F(data) ((data & 0x07) << 12)
#define IC4PSC(data) ((data & 0x03) << 10)
#define IC3F(data) ((data & 0x07) << 4)
#define IC3PSC(data) ((data & 0x03) << 2)

//CCER
#define CC4NP(data) ((data & 0x01) << 15)
#define CC4P(data) ((data & 0x01) << 13)
#define CC4E(data) ((data & 0x01) << 12)
#define CC3NP(data) ((data & 0x01) << 11)
#define CC3P(data) ((data & 0x01) << 9)
#define CC3E(data) ((data & 0x01) << 8)
#define CC2NP(data) ((data & 0x01) << 7)
#define CC2P(data) ((data & 0x01) << 5)
#define CC2E(data) ((data & 0x01) << 4)
#define CC1NP(data) ((data & 0x01) << 3)
#define CC1P(data) ((data & 0x01) << 1)
#define CC1E(data) (data & 0x01)



#pragma endregion

#pragma region SDADC 

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

#pragma endregion

#pragma region EXTI

#define EXTI 0x40010400
#define EXTI_IMR (*(volatile uint32*)(EXTI))
#define EXTI_EMR (*(volatile uint32*)(EXTI+0x04))
#define EXTI_RTSR (*(volatile uint32*)(EXTI+0x08))
#define EXTI_FTSR (*(volatile uint32*)(EXTI+0x0C))
#define EXTI_SWIER (*(volatile uint32*)(EXTI+0x010))
#define EXTI_PR (*(volatile uint32*)(EXTI+0x014))

#pragma end

#pragma region SYSCFG

#define SYSCFG 0x40010000

#define SYSCFG_CFGR1 (*(volatile uint32*)(SYSCFG))
#define SYSCFG_EXTICR1 (*(volatile uint32*)(SYSCFG+0x08))
#define SYSCFG_EXTICR2 (*(volatile uint32*)(SYSCFG+0x0C))
#define SYSCFG_EXTICR3 (*(volatile uint32*)(SYSCFG+0x010))
#define SYSCFG_EXTICR4 (*(volatile uint32*)(SYSCFG+0x14))
#define SYSCFG_CFGR2 (*(volatile uint32*)(SYSCFG+0x18))

#pragma endregion

#endif
