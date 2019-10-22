#ifndef SYS_REGISTERS_APB1_H_
#define SYS_REGISTERS_APB1_H_

#include <core/def.h>

#pragma region PWR

#define PWR 0x40007000

#define PWR_CR (*(uint32*)PWR)
#define PWR_CSR (*(uint32*)(PWR+0x04))

#pragma endregion

#pragma region DAC

#define DAC1 0x40007400
#define DAC2 0x40009800

#define DAC1_CR (*(uint32*)DAC1)
#define DAC2_CR (*(uint32*)DAC2)

#define DAC1_SWTRIGR (*(uint32*)(DAC1+0x04))
#define DAC2_SWTRIGR (*(uint32*)(DAC2+0x04))

#define DAC1_DHR12R1 (*(uint32*)(DAC1+0x08))
#define DAC2_DHR12R1 (*(uint32*)(DAC2+0x08))

#define DAC1_DHR12L1 (*(uint32*)(DAC1+0x0C))
#define DAC2_DHR12L1 (*(uint32*)(DAC2+0x0C))

#define DAC1_DHR8R1 (*(uint32*)(DAC1+0x10))
#define DAC2_DHR8R1 (*(uint32*)(DAC2+0x10))

#define DAC1_DHR12R2 (*(uint32*)(DAC1+0x14))
#define DAC2_DHR12R2 (*(uint32*)(DAC2+0x14))

#define DAC1_DHR12L2 (*(uint32*)(DAC1+0x18))
#define DAC2_DHR12L2 (*(uint32*)(DAC2+0x18))

#define DAC1_DHR8R2 (*(uint32*)(DAC1+0x1C))
#define DAC2_DHR8R2 (*(uint32*)(DAC2+0x1C))

#define DAC1_DHR12RD (*(uint32*)(DAC1+0x20))
#define DAC2_DHR12RD (*(uint32*)(DAC2+0x20))

#define DAC1_DHR12LD (*(uint32*)(DAC1+0x24))
#define DAC2_DHR12LD (*(uint32*)(DAC2+0x24))

#define DAC1_DHR8RD (*(uint32*)(DAC1+0x28))
#define DAC2_DHR8RD (*(uint32*)(DAC2+0x28))

#define DAC1_DOR1 (*(uint32*)(DAC1+0x2C))
#define DAC2_DOR1 (*(uint32*)(DAC2+0x2C))

#define DAC1_DOR2 (*(uint32*)(DAC1+0x30))
#define DAC2_DOR2 (*(uint32*)(DAC2+0x30))

#define DAC1_SR (*(uint32*)(DAC1+0x34))
#define DAC2_SR (*(uint32*)(DAC2+0x34))

#pragma endregion

#pragma region TIMERS

#define TIM2 0x40000000

#define TIM2_CR1 (*(uint32*)TIM2)
#define TIM2_CR2 (*(uint32*)(TIM2+0x04))
#define TIM2_SMCR (*(uint32*)(TIM2+0x08))
#define TIM2_DIER (*(uint32*)(TIM2+0x0C))
#define TIM2_SR (*(uint32*)(TIM2+0x10))
#define TIM2_EGR (*(uint32*)(TIM2+0x14))
#define TIM2_CCMR1 (*(uint32*)(TIM2+0x18))
#define TIM2_CCMR2 (*(uint32*)(TIM2+0x1C))
#define TIM2_CCER (*(uint32*)(TIM2+0x20))
#define TIM2_CNT (*(uint32*)(TIM2+0x24))
#define TIM2_PSC (*(uint32*)(TIM2+0x28))
#define TIM2_ARR (*(uint32*)(TIM2+0x2C))
#define TIM2_CCR1 (*(uint32*)(TIM2+0x34))
#define TIM2_CCR2 (*(uint32*)(TIM2+0x38))
#define TIM2_CCR3 (*(uint32*)(TIM2+0x3C))
#define TIM2_CCR4 (*(uint32*)(TIM2+0x40))
#define TIM2_DCR (*(uint32*)(TIM2+0x48))
#define TIM2_DMAR (*(uint32*)(TIM2+0x4C))


#define TIM3 0x40000400

#define TIM3_CR1 (*(uint32*)TIM3)
#define TIM3_CR2 (*(uint32*)(TIM3+0x04))
#define TIM3_SMCR (*(uint32*)(TIM3+0x08))
#define TIM3_DIER (*(uint32*)(TIM3+0x0C))
#define TIM3_SR (*(uint32*)(TIM3+0x10))
#define TIM3_EGR (*(uint32*)(TIM3+0x14))
#define TIM3_CCMR1 (*(uint32*)(TIM3+0x18))
#define TIM3_CCMR2 (*(uint32*)(TIM3+0x1C))
#define TIM3_CCER (*(uint32*)(TIM3+0x20))
#define TIM3_CNT (*(uint32*)(TIM3+0x24))
#define TIM3_PSC (*(uint32*)(TIM3+0x28))
#define TIM3_ARR (*(uint32*)(TIM3+0x2C))
#define TIM3_CCR1 (*(uint32*)(TIM3+0x34))
#define TIM3_CCR2 (*(uint32*)(TIM3+0x38))
#define TIM3_CCR3 (*(uint32*)(TIM3+0x3C))
#define TIM3_CCR4 (*(uint32*)(TIM3+0x40))
#define TIM3_DCR (*(uint32*)(TIM3+0x48))
#define TIM3_DMAR (*(uint32*)(TIM3+0x4C))


#define TIM4 0x40000800

#define TIM4_CR1 (*(uint32*)TIM4)
#define TIM4_CR2 (*(uint32*)(TIM4+0x04))
#define TIM4_SMCR (*(uint32*)(TIM4+0x08))
#define TIM4_DIER (*(uint32*)(TIM4+0x0C))
#define TIM4_SR (*(uint32*)(TIM4+0x10))
#define TIM4_EGR (*(uint32*)(TIM4+0x14))
#define TIM4_CCMR1 (*(uint32*)(TIM4+0x18))
#define TIM4_CCMR2 (*(uint32*)(TIM4+0x1C))
#define TIM4_CCER (*(uint32*)(TIM4+0x20))
#define TIM4_CNT (*(uint32*)(TIM4+0x24))
#define TIM4_PSC (*(uint32*)(TIM4+0x28))
#define TIM4_ARR (*(uint32*)(TIM4+0x2C))
#define TIM4_CCR1 (*(uint32*)(TIM4+0x34))
#define TIM4_CCR2 (*(uint32*)(TIM4+0x38))
#define TIM4_CCR3 (*(uint32*)(TIM4+0x3C))
#define TIM4_CCR4 (*(uint32*)(TIM4+0x40))
#define TIM4_DCR (*(uint32*)(TIM4+0x48))
#define TIM4_DMAR (*(uint32*)(TIM4+0x4C))


#define TIM5 0x40000C00

#define TIM5_CR1 (*(uint32*)TIM5)
#define TIM5_CR2 (*(uint32*)(TIM5+0x04))
#define TIM5_SMCR (*(uint32*)(TIM5+0x08))
#define TIM5_DIER (*(uint32*)(TIM5+0x0C))
#define TIM5_SR (*(uint32*)(TIM5+0x10))
#define TIM5_EGR (*(uint32*)(TIM5+0x14))
#define TIM5_CCMR1 (*(uint32*)(TIM5+0x18))
#define TIM5_CCMR2 (*(uint32*)(TIM5+0x1C))
#define TIM5_CCER (*(uint32*)(TIM5+0x20))
#define TIM5_CNT (*(uint32*)(TIM5+0x24))
#define TIM5_PSC (*(uint32*)(TIM5+0x28))
#define TIM5_ARR (*(uint32*)(TIM5+0x2C))
#define TIM5_CCR1 (*(uint32*)(TIM5+0x34))
#define TIM5_CCR2 (*(uint32*)(TIM5+0x38))
#define TIM5_CCR3 (*(uint32*)(TIM5+0x3C))
#define TIM5_CCR4 (*(uint32*)(TIM5+0x40))
#define TIM5_DCR (*(uint32*)(TIM5+0x48))
#define TIM5_DMAR (*(uint32*)(TIM5+0x4C))


#define TIM6 0x40001000

#define TIM6_CR1 (*(uint32*)TIM6)
#define TIM6_CR2 (*(uint32*)(TIM6+0x04))
#define TIM6_DIER (*(uint32*)(TIM6+0x0C))
#define TIM6_SR (*(uint32*)(TIM6+0x10))
#define TIM6_EGR (*(uint32*)(TIM6+0x14))
#define TIM6_CNT (*(uint32*)(TIM6+0x24))
#define TIM6_PSC (*(uint32*)(TIM6+0x28))
#define TIM6_ARR (*(uint32*)(TIM6+0x2C))

#define TIM7 0x40001400

#define TIM7_CR1 (*(uint32*)TIM7)
#define TIM7_CR2 (*(uint32*)(TIM7+0x04))
#define TIM7_DIER (*(uint32*)(TIM7+0x0C))
#define TIM7_SR (*(uint32*)(TIM7+0x10))
#define TIM7_EGR (*(uint32*)(TIM7+0x14))
#define TIM7_CNT (*(uint32*)(TIM7+0x24))
#define TIM7_PSC (*(uint32*)(TIM7+0x28))
#define TIM7_ARR (*(uint32*)(TIM7+0x2C))

#define TIM18 0x40009C00

#define TIM18_CR1 (*(uint32*)TIM18)
#define TIM18_CR2 (*(uint32*)(TIM18+0x04))
#define TIM18_DIER (*(uint32*)(TIM18+0x0C))
#define TIM18_SR (*(uint32*)(TIM18+0x10))
#define TIM18_EGR (*(uint32*)(TIM18+0x14))
#define TIM18_CNT (*(uint32*)(TIM18+0x24))
#define TIM18_PSC (*(uint32*)(TIM18+0x28))
#define TIM18_ARR (*(uint32*)(TIM18+0x2C))

#pragma endregion

#endif
