#ifndef SYS_REGISTERS_APB2_H_
#define SYS_REGISTERS_APB2_H_

#pragma region SYSCFG 

struct SYSCFG_CFGR1 {
	unsigned char MEM_MODE : 2;
	unsigned short reserved : 9;
	unsigned char TIM16_DMA_RMP : 1;
	unsigned char TIM17_DMA_RMP : 1;
	unsigned char TIM16_DAC1_OUT1_DMA_RMP : 1;
	unsigned char TIM17_DAC1_OUT2_DMA_RMP : 1;
	unsigned char TIM18_DAC2_OUT1_DMA_RMP : 1;
	unsigned char I2C_PB6_FMP : 1;
	unsigned char I2C_PB7_FMP : 1;
	unsigned char I2C_PB8_FMP : 1;
	unsigned char I2C_PB9_FMP : 1;
	unsigned char I2C1_FMP : 1;
	unsigned char I2C2_FMP : 1;
	unsigned char reserved2 : 2;
	unsigned char VBAT_MON : 1;
	unsigned char reserved3 : 1;
	unsigned char FPU_IE : 6;
};

struct SYSCFG_EXTICR1 {
	unsigned char EXTI0 : 4;
	unsigned char EXTI1 : 4;
	unsigned char EXTI2 : 4;
	unsigned char EXTI3 : 4;
	unsigned int reserved : 16;
};

struct SYSCFG_EXTICR2 {
	unsigned char EXTI4 : 4;
	unsigned char EXTI5 : 4;
	unsigned char EXTI6 : 4;
	unsigned char EXTI7 : 4;
	unsigned int reserved : 16;
};

struct SYSCFG_EXTICR3 {
	unsigned char EXTI8 : 4;
	unsigned char EXTI9 : 4;
	unsigned char EXTI10 : 4;
	unsigned char EXTI11 : 4;
	unsigned int reserved : 16;
};

struct SYSCFG_EXTICR4 {
	unsigned char EXTI12 : 4;
	unsigned char EXTI13 : 4;
	unsigned char EXTI14 : 4;
	unsigned char EXTI15 : 4;
	unsigned int reserved : 16;
};

struct SYSCFG_CFGR2 {
	unsigned char LOCUP_LOCK : 1;
	unsigned char SRAM_PARITY_LOCK : 1;
	unsigned char PVD_LOCK : 1;
	unsigned char reserved : 5;
	unsigned char SRAM_PEF : 1;
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


#endif
