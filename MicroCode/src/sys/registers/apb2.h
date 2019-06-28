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

#define TIM19 ((struct TIMxA*)0x40015C00)

#pragma endregion

#pragma region SDADC 

struct SDADC_CR1 {
	uint8 EOCALIE : 1;
	uint8 JEOCIE : 1;
	uint8 JORVIE : 1;
	uint8 REOCIE : 1;
	uint8 ROVRIE : 1;
	uint8 reserved : 3;
	uint8 REFV : 2;
	uint8 SLOWCK : 1;
	uint8 SBI : 1;
	uint8 PDI : 1;
	uint8 reserved2 : 1;
	uint8 JSYNC : 1;
	uint8 RSYNC : 1;
	uint8 JDMAEN : 1;
	uint8 RDMEAN : 1;
	uint16 reserved3 : 14;
};

struct SDADC_CR2 {
	uint8 ADON : 1;
	uint8 CALIBCNT : 2;
	uint8 reserved : 1;
	uint8 STARTCALIB : 1;
	uint8 JCONT : 1;
	uint8 JDS : 1;
	uint8 reserved2 : 1;
	uint8 JEXTSEL : 3;
	uint8 reserved3 : 2;
	uint8 JEXTEN : 2;
	uint8 JSWSTART : 1;
	uint8 RCH : 4;
	uint8 reserved4 : 2;
	uint8 RCONT : 1;
	uint8 RSWSTART : 1;
	uint8 FAST : 1;
	uint8 reserved5 : 7;
};

struct SDADC_ISR {
	uint8 EOCALF : 1;
	uint8 JEOCF : 1;
	uint8 JOVRF : 1;
	uint8 REOCF : 1;
	uint8 ROVRF : 1;
	uint8 reserved : 7;
	uint8 CALIBIP : 1;
	uint8 JCIP : 1;
	uint8 RCIP : 1;
	uint8 STABIP : 1;
	uint16 reserved2 : 15;
	uint8 INITRDY : 1;
};

struct SDADC_CLRISR {
	uint8 CLREOCALF : 1;
	uint8 reserved : 1;
	uint8 CLRJOVRF : 1;
	uint8 reserved2 : 1;
	uint8 CLRROVRF : 1;
	uint32 reserved3 : 27;
};

struct SDADC_JCHGR {
	uint16 JCHG : 9;
	uint32 reserved : 23;
};


//0, 1, 2
struct SDADC_CONFxR {
	uint16 OFFSET : 12;
	uint8 res : 8;
	uint8 GAIN : 3;
	uint8 res2 : 3;
	uint8 SE : 2;
	uint8 res3 : 2;
	uint8 COMMON : 2;
};

#define CONF_CHANNEL(x) \
	uint8 CONFCH##x : 2;\
	uint8 res##x : 2;

struct SDADC_CONFCHR1 {
	CONF_CHANNEL(0);
	CONF_CHANNEL(1);
	CONF_CHANNEL(2);
	CONF_CHANNEL(3);
	CONF_CHANNEL(4);
	CONF_CHANNEL(5);
	CONF_CHANNEL(6);
	CONF_CHANNEL(7);
};

struct SDADC_CONFCHR2 {
	CONF_CHANNEL(8);
	uint32 res : 28;
};

struct SDADC_JDATAR {
	uint16 JDATA : 16;
	uint8 res : 8;
	uint8 JDATACH : 4;
	uint8 res2 : 4;
};

struct SDADC_RDATAR {
	uint16 RDATA : 16;
	uint16 res : 16;
};

struct SDADC_JDATA12R {
	uint16 JDATA1 : 16;
	uint16 JDATA2 : 16;
};

struct SDADC_RDATA12R {
	uint16 RDATA1 : 16;
	uint16 RDATA2 : 16;
};

struct SDADC_JDATA13R {
	uint16 JDATA1 : 16;
	uint16 JDATA3 : 16;
};

struct SDADC_RDATA13R {
	uint16 RDATA1 : 16;
	uint16 RDATA3 : 16;
};

struct SDADCx {
	struct SDADC_CR1 CR1;
	struct SDADC_CR2 CR2;
	struct SDADC_ISR ISR;
	struct SDADC_CLRISR CLRISR;
	uint32 res;
	struct SDADC_JCHGR JCHGR;
	uint32 res1;
	uint32 res2;
	struct SDADC_CONFxR CONF0R;
	struct SDADC_CONFxR CONF1R;
	struct SDADC_CONFxR CONF2R;
	uint32 res3;
	uint32 res4;
	uint32 res5;
	uint32 res6;
	uint32 res7;
	struct SDADC_CONFCHR1 CONFCHR1;
	struct SDADC_CONFCHR2 CONFCHR2;
	uint32 res8;
	uint32 res9;
	uint32 res10;
	uint32 res11;
	uint32 res12;
	uint32 res13;
	struct SDADC_JDATAR JDATAR;
	struct SDADC_RDATAR RDATAR;
	uint32 res14;
	struct SDADC_JDATA12R JDATA12R;
	struct SDADC_RDATA12R RDATA12R;
	struct SDADC_JDATA13R JDATA13R;
	struct SDADC_RDATA13R RDATA13R;

};

#define SDADC1 ((struct SDADCx*)0x40016000)
#define SDADC2 ((struct SDADCx*)0x40016400)
#define SDADC3 ((struct SDADCx*)0x40016800)

#pragma endregion

#endif
