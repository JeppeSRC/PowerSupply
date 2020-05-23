#pragma once

#include <core/def.h>

#define TIM2 0x40000000

#define TIM2_CR1 (*(volatile uint32*)TIM2)
#define TIM2_CR2 (*(volatile uint32*)(TIM2+0x04))
#define TIM2_SMCR (*(volatile uint32*)(TIM2+0x08))
#define TIM2_DIER (*(volatile uint32*)(TIM2+0x0C))
#define TIM2_SR (*(volatile uint32*)(TIM2+0x10))
#define TIM2_EGR (*(volatile uint32*)(TIM2+0x14))
#define TIM2_CCMR1 (*(volatile uint32*)(TIM2+0x18))
#define TIM2_CCMR2 (*(volatile uint32*)(TIM2+0x1C))
#define TIM2_CCER (*(volatile uint32*)(TIM2+0x20))
#define TIM2_CNT (*(volatile uint32*)(TIM2+0x24))
#define TIM2_PSC (*(volatile uint32*)(TIM2+0x28))
#define TIM2_ARR (*(volatile uint32*)(TIM2+0x2C))
#define TIM2_CCR1 (*(volatile uint32*)(TIM2+0x34))
#define TIM2_CCR2 (*(volatile uint32*)(TIM2+0x38))
#define TIM2_CCR3 (*(volatile uint32*)(TIM2+0x3C))
#define TIM2_CCR4 (*(volatile uint32*)(TIM2+0x40))
#define TIM2_DCR (*(volatile uint32*)(TIM2+0x48))
#define TIM2_DMAR (*(volatile uint32*)(TIM2+0x4C))


#define TIM3 0x40000400

#define TIM3_CR1 (*(volatile uint32*)TIM3)
#define TIM3_CR2 (*(volatile uint32*)(TIM3+0x04))
#define TIM3_SMCR (*(volatile uint32*)(TIM3+0x08))
#define TIM3_DIER (*(volatile uint32*)(TIM3+0x0C))
#define TIM3_SR (*(volatile uint32*)(TIM3+0x10))
#define TIM3_EGR (*(volatile uint32*)(TIM3+0x14))
#define TIM3_CCMR1 (*(volatile uint32*)(TIM3+0x18))
#define TIM3_CCMR2 (*(volatile uint32*)(TIM3+0x1C))
#define TIM3_CCER (*(volatile uint32*)(TIM3+0x20))
#define TIM3_CNT (*(volatile uint32*)(TIM3+0x24))
#define TIM3_PSC (*(volatile uint32*)(TIM3+0x28))
#define TIM3_ARR (*(volatile uint32*)(TIM3+0x2C))
#define TIM3_CCR1 (*(volatile uint32*)(TIM3+0x34))
#define TIM3_CCR2 (*(volatile uint32*)(TIM3+0x38))
#define TIM3_CCR3 (*(volatile uint32*)(TIM3+0x3C))
#define TIM3_CCR4 (*(volatile uint32*)(TIM3+0x40))
#define TIM3_DCR (*(volatile uint32*)(TIM3+0x48))
#define TIM3_DMAR (*(volatile uint32*)(TIM3+0x4C))


#define TIM4 0x40000800

#define TIM4_CR1 (*(volatile uint32*)TIM4)
#define TIM4_CR2 (*(volatile uint32*)(TIM4+0x04))
#define TIM4_SMCR (*(volatile uint32*)(TIM4+0x08))
#define TIM4_DIER (*(volatile uint32*)(TIM4+0x0C))
#define TIM4_SR (*(volatile uint32*)(TIM4+0x10))
#define TIM4_EGR (*(volatile uint32*)(TIM4+0x14))
#define TIM4_CCMR1 (*(volatile uint32*)(TIM4+0x18))
#define TIM4_CCMR2 (*(volatile uint32*)(TIM4+0x1C))
#define TIM4_CCER (*(volatile uint32*)(TIM4+0x20))
#define TIM4_CNT (*(volatile uint32*)(TIM4+0x24))
#define TIM4_PSC (*(volatile uint32*)(TIM4+0x28))
#define TIM4_ARR (*(volatile uint32*)(TIM4+0x2C))
#define TIM4_CCR1 (*(volatile uint32*)(TIM4+0x34))
#define TIM4_CCR2 (*(volatile uint32*)(TIM4+0x38))
#define TIM4_CCR3 (*(volatile uint32*)(TIM4+0x3C))
#define TIM4_CCR4 (*(volatile uint32*)(TIM4+0x40))
#define TIM4_DCR (*(volatile uint32*)(TIM4+0x48))
#define TIM4_DMAR (*(volatile uint32*)(TIM4+0x4C))


#define TIM5 0x40000C00

#define TIM5_CR1 (*(volatile uint32*)TIM5)
#define TIM5_CR2 (*(volatile uint32*)(TIM5+0x04))
#define TIM5_SMCR (*(volatile uint32*)(TIM5+0x08))
#define TIM5_DIER (*(volatile uint32*)(TIM5+0x0C))
#define TIM5_SR (*(volatile uint32*)(TIM5+0x10))
#define TIM5_EGR (*(volatile uint32*)(TIM5+0x14))
#define TIM5_CCMR1 (*(volatile uint32*)(TIM5+0x18))
#define TIM5_CCMR2 (*(volatile uint32*)(TIM5+0x1C))
#define TIM5_CCER (*(volatile uint32*)(TIM5+0x20))
#define TIM5_CNT (*(volatile uint32*)(TIM5+0x24))
#define TIM5_PSC (*(volatile uint32*)(TIM5+0x28))
#define TIM5_ARR (*(volatile uint32*)(TIM5+0x2C))
#define TIM5_CCR1 (*(volatile uint32*)(TIM5+0x34))
#define TIM5_CCR2 (*(volatile uint32*)(TIM5+0x38))
#define TIM5_CCR3 (*(volatile uint32*)(TIM5+0x3C))
#define TIM5_CCR4 (*(volatile uint32*)(TIM5+0x40))
#define TIM5_DCR (*(volatile uint32*)(TIM5+0x48))
#define TIM5_DMAR (*(volatile uint32*)(TIM5+0x4C))


#define TIM6 0x40001000

#define TIM6_CR1 (*(volatile uint32*)TIM6)
#define TIM6_CR2 (*(volatile uint32*)(TIM6+0x04))
#define TIM6_DIER (*(volatile uint32*)(TIM6+0x0C))
#define TIM6_SR (*(volatile uint32*)(TIM6+0x10))
#define TIM6_EGR (*(volatile uint32*)(TIM6+0x14))
#define TIM6_CNT (*(volatile uint32*)(TIM6+0x24))
#define TIM6_PSC (*(volatile uint32*)(TIM6+0x28))
#define TIM6_ARR (*(volatile uint32*)(TIM6+0x2C))

#define TIM7 0x40001400

#define TIM7_CR1 (*(volatile uint32*)TIM7)
#define TIM7_CR2 (*(volatile uint32*)(TIM7+0x04))
#define TIM7_DIER (*(volatile uint32*)(TIM7+0x0C))
#define TIM7_SR (*(volatile uint32*)(TIM7+0x10))
#define TIM7_EGR (*(volatile uint32*)(TIM7+0x14))
#define TIM7_CNT (*(volatile uint32*)(TIM7+0x24))
#define TIM7_PSC (*(volatile uint32*)(TIM7+0x28))
#define TIM7_ARR (*(volatile uint32*)(TIM7+0x2C))

#define TIM18 0x40009C00

#define TIM18_CR1 (*(volatile uint32*)TIM18)
#define TIM18_CR2 (*(volatile uint32*)(TIM18+0x04))
#define TIM18_DIER (*(volatile uint32*)(TIM18+0x0C))
#define TIM18_SR (*(volatile uint32*)(TIM18+0x10))
#define TIM18_EGR (*(volatile uint32*)(TIM18+0x14))
#define TIM18_CNT (*(volatile uint32*)(TIM18+0x24))
#define TIM18_PSC (*(volatile uint32*)(TIM18+0x28))
#define TIM18_ARR (*(volatile uint32*)(TIM18+0x2C))

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
