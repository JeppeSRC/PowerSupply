#ifndef SYS_REGISTERS_APB2_H_
#define SYS_REGISTERS_APB2_H_

#include <core/def.h>

#include "timer.h"

#pragma region SYSCFG 

struct SYSCFG_CFGR1 {
	uint8 MEM_MODE : 2;
	uint16 reserved : 9;
	uint8 TIM16_DMA_RMP : 1;
	uint8 TIM17_DMA_RMP : 1;
	uint8 TIM16_DAC1_OUT1_DMA_RMP : 1;
	uint8 TIM17_DAC1_OUT2_DMA_RMP : 1;
	uint8 TIM18_DAC2_OUT1_DMA_RMP : 1;
	uint8 I2C_PB6_FMP : 1;
	uint8 I2C_PB7_FMP : 1;
	uint8 I2C_PB8_FMP : 1;
	uint8 I2C_PB9_FMP : 1;
	uint8 I2C1_FMP : 1;
	uint8 I2C2_FMP : 1;
	uint8 reserved2 : 2;
	uint8 VBAT_MON : 1;
	uint8 reserved3 : 1;
	uint8 FPU_IE : 6;
};

struct SYSCFG_EXTICR1 {
	uint8 EXTI0 : 4;
	uint8 EXTI1 : 4;
	uint8 EXTI2 : 4;
	uint8 EXTI3 : 4;
	uint32 reserved : 16;
};

struct SYSCFG_EXTICR2 {
	uint8 EXTI4 : 4;
	uint8 EXTI5 : 4;
	uint8 EXTI6 : 4;
	uint8 EXTI7 : 4;
	uint32 reserved : 16;
};

struct SYSCFG_EXTICR3 {
	uint8 EXTI8 : 4;
	uint8 EXTI9 : 4;
	uint8 EXTI10 : 4;
	uint8 EXTI11 : 4;
	uint32 reserved : 16;
};

struct SYSCFG_EXTICR4 {
	uint8 EXTI12 : 4;
	uint8 EXTI13 : 4;
	uint8 EXTI14 : 4;
	uint8 EXTI15 : 4;
	uint32 reserved : 16;
};

struct SYSCFG_CFGR2 {
	uint8 LOCUP_LOCK : 1;
	uint8 SRAM_PARITY_LOCK : 1;
	uint8 PVD_LOCK : 1;
	uint8 reserved : 5;
	uint8 SRAM_PEF : 1;
};

struct SYSCFGx {
	struct SYSCFG_CFGR1 CFGR1;
	struct SYSCFG_EXTICR1 EXRICR1;
	struct SYSCFG_EXTICR2 EXRICR2;
	struct SYSCFG_EXTICR3 EXRICR3;
	struct SYSCFG_EXTICR4 EXRICR4;
	struct SYSCFG_CFGR2 CFGR2;
};

#define SYSCFG ((struct SYSCFGx*)0x40010000)

#pragma endregion

#pragma region COMP

struct COMP_CSR {
	uint8 COMP1EN : 1;
	uint8 COMP1_INP_DAC : 1;
	uint8 COMP1MODE : 2;
	uint8 COMP1INSEL : 3;
	uint8 reserved : 1;
	uint8 COMP1OUTSEL : 3;
	uint8 COMP1POL : 1;
	uint8 COMP1HYST : 2;
	uint8 COMP1OUT : 1;
	uint8 COMP1LOCK : 1;
	uint8 COMP2EN : 1;
	uint8 reserved2 : 1;
	uint8 COMP2MODE : 2;
	uint8 COMP2INSEL : 3;
	uint8 WNDWEN : 1;
	uint8 COMP2OUTSEL : 3;
	uint8 COMP2POL : 1;
	uint8 COMP2HYST : 2;
	uint8 COMP2OUT : 1;
	uint8 COMP2LOCK : 1;
};

struct COMPx {
	struct COMP_CSR CSR;
};

#define COMP ((struct COMPx*)0x4001001C)

#pragma endregion

#pragma region TIMERS

#define TIM19 ((TIMxA*)0x40015C00)

#pragma endregion

#endif
