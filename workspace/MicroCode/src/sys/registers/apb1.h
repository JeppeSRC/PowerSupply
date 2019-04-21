#ifndef SYS_REGISTERS_APB1_H_
#define SYS_REGISTERS_APB1_H_

#include "timer.h"

#pragma region PWR

struct PWR_CR {
	unsigned char LPDS : 1;
	unsigned char PDDS : 1;
	unsigned char CWUF : 1;
	unsigned char PVDE : 1;
	unsigned char PLS : 3;
	unsigned char DBP : 1;
	unsigned char ENSD1 : 1;
	unsigned char ENSD2 : 1;
	unsigned char ENSD3 : 1;
	unsigned int reserved : 20;
};

struct PWR_CSR {
	unsigned char WUF : 1;
	unsigned char SBF : 1;
	unsigned char PVDO : 1;
	unsigned char VREFINTRDYF : 1;
	unsigned char reserved : 4;
	unsigned char EWUP1 : 1;
	unsigned char EWUP2 : 1;
	unsigned char EWUP3 : 1;
	unsigned int reserved2 : 21;
};

struct PWRx {
	struct PWR_CR CR;
	struct PWR_CSR CSR;
};

#define PWR ((struct PWRx*)0x40007000)

#pragma endregion

#pragma region DAC

struct DAC_CR {
	unsigned char EN1 : 1;
	unsigned char BOFF1 : 1;
	unsigned char TEN1 : 1;
	unsigned char TSEL1 : 3;
	unsigned char WAVE1 : 2;
	unsigned char MAMP1 : 4;
	unsigned char DMAEN1 : 1;
	unsigned char DMAUDRIE1 : 1;
	unsigned char reserved : 2;
	unsigned char EN2 : 1;
	unsigned char BOFF2 : 1;
	unsigned char TEN2 : 1;
	unsigned char TSEL2 : 3;
	unsigned char WAVE2 : 2;
	unsigned char MAMP2 : 4;
	unsigned char DMAEN2 : 1;
	unsigned char DMAUDRIE2 : 1;
	unsigned char reserved2 : 2;
};

struct DAC_SWTRIGR {
	unsigned char SWTRIG1 : 1;
	unsigned char SWTRIG2 : 1;
	unsigned int reserved : 30;
};

struct DAC_DHR12R1 {
	unsigned short DACC1DHR : 12;
	unsigned int reserved : 20;
};

struct DAC_DHR12L1 {
	unsigned char reserved : 4;
	unsigned short DACC1DHR : 12;
	unsigned short reserved2 : 16;
};

struct DAC_DHR8R1 {
	unsigned short DACC1DHR : 8;
	unsigned int reserved : 24;
};

struct DAC_DHR12R2 {
	unsigned short DACC2DHR : 12;
	unsigned int reserved : 20;
};

struct DAC_DHR12L2 {
	unsigned char reserved : 4;
	unsigned short DACC2DHR : 12;
	unsigned short reserved2 : 16;
};

struct DAC_DHR8R2 {
	unsigned short DACC2DHR : 8;
	unsigned int reserved : 24;
};

struct DAC_DHR12RD {
	unsigned short DACC1DHR : 12;
	unsigned char reserved : 4;
	unsigned short DACC2DHR : 12;
	unsigned char reserved2 : 4;
};

struct DAC_DHR12LD {
	unsigned char reserved : 4;
	unsigned short DACC1DHR : 12;
	unsigned char reserved2 : 4;
	unsigned short DACC2DHR : 12;
};

struct DAC_DHR8RD {
	unsigned char DACC1DHR : 8;
	unsigned char DACC2DHR : 8;
	unsigned short reserved : 16;
};

struct DAC_DOR1 {
	unsigned short DACC1DOR : 12;
	unsigned int reserved : 20;
};

struct DAC_DOR2 {
	unsigned short DACC2DOR : 12;
	unsigned int reserved : 20;
};

struct DAC_SR {
	unsigned short reserved : 13;
	unsigned char DMAUDR1 : 1;
	unsigned int reserved2 : 15;
	unsigned char DMAUDR2 : 1;
	unsigned char reserved3 : 2;
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

#pragma endregion

#endif
