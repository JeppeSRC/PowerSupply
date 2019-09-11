#ifndef SYS_REGISTERS_APB1_H_
#define SYS_REGISTERS_APB1_H_

#include <core/def.h>

#include "timer.h"

#pragma pack(push)
#pragma pack(1)

#pragma region PWR


#define PWR_CR(OP, LDPS, PDDS, CWUF, CSBF, PVDE, PLS, DBP, ENSD1, ENSD2, ENSD3) PWR->CR OP ((ENSD3 << 11) | (ENSD2 << 10) | (ENSD1 << 9) | (DBP << 8) | (PLS << 5) | (PVDE << 4) | (CSBF << 3) |(CWUF << 2) | (PDDS << 1) | LPDS)
#define PWR_CSR(OP, WUF, SBF, PVDO, VREFINTRDYF, EWUP1, EWUP2, EWUP3) PWR->CSR OP ((EWUP3 << 10) | (EWUP2 << 9) | (EWUP1 << 8) | (VREFINTRDYF << 3) | (PVDO << 2) | (SBF << 1) | WUF)

struct PWRx {
	uint32 CR;
	uint32 CSR;
};

#define PWR ((struct PWRx*)0x40007000)

#pragma endregion

#pragma region DAC

#define DAC_CR(DAC, OP, EN1, BOFF1, TEN1, TSEL1, WAVE1, MAMP1, DMAEN1, DMAUDRIE1, EN2, BOFF2, TEN2, TSEL2, WAVE2, MAMP2, DMAEN2, DMAUDRIE2) DAC->CR OP ((DMAUDRIE2 << 29) | (DMAEN2 << 28) | (MAMP2 << 24) | (WAVE2 << 22) | (TSEL2 << 19) | (TEN2 << 18) | (BOFF2 << 17) | (EN2 << 16) | (DMAUDRIE1 << 13) | (DMAEN1 << 12) | (MAMP1 << 8) | (WAVE1 << 6) | (TSEL1 << 3) | (TEN1 << 2) | (BOFF1 << 1) | EN1)
#define DAC1_CR(OP, EN1, BOFF1, TEN1, TSEL1, WAVE1, MAMP1, DMAEN1, DMAUDRIE1, EN2, BOFF2, TEN2, TSEL2, WAVE2, MAMP2, DMAEN2, DMAUDRIE2) DAC_CR(DAC1, OP, EN1, BOFF1, TEN1, TSEL1, WAVE1, MAMP1, DMAEN1, DMAUDRIE1, EN2, BOFF2, TEN2, TSEL2, WAVE2, MAMP2, DMAEN2, DMAUDRIE2)
#define DAC2_CR(OP, EN1, BOFF1, TEN1, TSEL1, WAVE1, MAMP1, DMAEN1, DMAUDRIE1) DAC_CR(DAC2, OP, EN1, BOFF1, TEN1, TSEL1, WAVE1, MAMP1, DMAEN1, DMAUDRIE1, 0, 0, 0, 0, 0, 0, 0, 0)


#define DAC_SWTRIGR(DAC, OP, SWTRIG1, SWTRIG2) DAC->SWTRIGR OP ((SWTRIG2 << 1) | SWTRIG1)
#define DAC1_SWTRIGR(OP, SWTRIG1, SWTRIG2) DAC_SWTRIGR(DAC1, OP, SWTRIG1, SWTRIG2)
#define DAC2_SWTRIGR(OP, SWTRIG1, SWTRIG2) DAC_SWTRIGR(DAC2, OP, SWTRIG1, SWTRIG2)


struct DACx {
	uint32 CR;
	uint32 SWTRIGR;
	uint32 DHR12R1;
	uint32 DHR12L1;
	uint32 DHR8R1;
	uint32 DHR12R2;
	uint32 DHR12L2;
	uint32 DHR8R2;
	uint32 DHR12RD;
	uint32 DHR12LD;
	uint32 DHR8RD;
	uint32 DOR1;
	uint32 DOR2;
	uint32 SR;
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

#pragma pack(pop)