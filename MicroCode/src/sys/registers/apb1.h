#ifndef SYS_REGISTERS_APB1_H_
#define SYS_REGISTERS_APB1_H_

#include <core/def.h>

#include "timer.h"

#pragma region PWR

struct PWR_CR {
	uint8 LPDS : 1;
	uint8 PDDS : 1;
	uint8 CWUF : 1;
	uint8 PVDE : 1;
	uint8 PLS : 3;
	uint8 DBP : 1;
	uint8 ENSD1 : 1;
	uint8 ENSD2 : 1;
	uint8 ENSD3 : 1;
	uint32 reserved : 20;
};

struct PWR_CSR {
	uint8 WUF : 1;
	uint8 SBF : 1;
	uint8 PVDO : 1;
	uint8 VREFINTRDYF : 1;
	uint8 reserved : 4;
	uint8 EWUP1 : 1;
	uint8 EWUP2 : 1;
	uint8 EWUP3 : 1;
	uint32 reserved2 : 21;
};

struct PWRx {
	struct PWR_CR CR;
	struct PWR_CSR CSR;
};

#define PWR ((struct PWRx*)0x40007000)

#pragma endregion

#pragma region DAC

struct DAC_CR {
	uint8 EN1 : 1;
	uint8 BOFF1 : 1;
	uint8 TEN1 : 1;
	uint8 TSEL1 : 3;
	uint8 WAVE1 : 2;
	uint8 MAMP1 : 4;
	uint8 DMAEN1 : 1;
	uint8 DMAUDRIE1 : 1;
	uint8 reserved : 2;
	uint8 EN2 : 1;
	uint8 BOFF2 : 1;
	uint8 TEN2 : 1;
	uint8 TSEL2 : 3;
	uint8 WAVE2 : 2;
	uint8 MAMP2 : 4;
	uint8 DMAEN2 : 1;
	uint8 DMAUDRIE2 : 1;
	uint8 reserved2 : 2;
};

struct DAC_SWTRIGR {
	uint8 SWTRIG1 : 1;
	uint8 SWTRIG2 : 1;
	uint32 reserved : 30;
};

struct DAC_DHR12R1 {
	uint16 DACC1DHR : 12;
	uint32 reserved : 20;
};

struct DAC_DHR12L1 {
	uint8 reserved : 4;
	uint16 DACC1DHR : 12;
	uint16 reserved2 : 16;
};

struct DAC_DHR8R1 {
	uint16 DACC1DHR : 8;
	uint32 reserved : 24;
};

struct DAC_DHR12R2 {
	uint16 DACC2DHR : 12;
	uint32 reserved : 20;
};

struct DAC_DHR12L2 {
	uint8 reserved : 4;
	uint16 DACC2DHR : 12;
	uint16 reserved2 : 16;
};

struct DAC_DHR8R2 {
	uint16 DACC2DHR : 8;
	uint32 reserved : 24;
};

struct DAC_DHR12RD {
	uint16 DACC1DHR : 12;
	uint8 reserved : 4;
	uint16 DACC2DHR : 12;
	uint8 reserved2 : 4;
};

struct DAC_DHR12LD {
	uint8 reserved : 4;
	uint16 DACC1DHR : 12;
	uint8 reserved2 : 4;
	uint16 DACC2DHR : 12;
};

struct DAC_DHR8RD {
	uint8 DACC1DHR : 8;
	uint8 DACC2DHR : 8;
	uint16 reserved : 16;
};

struct DAC_DOR1 {
	uint16 DACC1DOR : 12;
	uint32 reserved : 20;
};

struct DAC_DOR2 {
	uint16 DACC2DOR : 12;
	uint32 reserved : 20;
};

struct DAC_SR {
	uint16 reserved : 13;
	uint8 DMAUDR1 : 1;
	uint32 reserved2 : 15;
	uint8 DMAUDR2 : 1;
	uint8 reserved3 : 2;
};

struct DACx {
	struct DAC_CR CR;
	struct DAC_SWTRIGR SWTRIGR;
	struct DAC_DHR12R1 DHR12R1;
	struct DAC_DHR12L1 DHR12L1;
	struct DAC_DHR8R1 DHR8R1;
	struct DAC_DHR12R2 DHR12R2;
	struct DAC_DHR12L2 DHR12L2;
	struct DAC_DHR8R2 DHR8R2;
	struct DAC_DHR12RD DHR12RD;
	struct DAC_DHR12LD DHR12LD;
	struct DAC_DHR8RD DHR8RD;
	struct DAC_DOR1 DOR1;
	struct DAC_DOR2 DOR2;
	struct DAC_SR SR;
};

#define DAC1 ((struct DACx*)0x40007400)
#define DAC2 ((struct DACx*)0x40009800)

#pragma endregion

#pragma region TIMERS

#define TIM2 	((struct TIMxA*)0x40000000)
#define TIM3 	((struct TIMxA*)0x40000400)
#define TIM4 	((struct TIMxA*)0x40000800)
#define TIM5 	((struct TIMxA*)0x40000C00)
#define TIM6 	((struct TIMxB*)0x40001000)
#define TIM7 	((struct TIMxB*)0x40001400)
#define TIM18 	((struct TIMxB*)0x40009C00)

#pragma endregion

#endif
