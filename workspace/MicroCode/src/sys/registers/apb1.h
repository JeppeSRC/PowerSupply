#ifndef SYS_REGISTERS_APB1_H_
#define SYS_REGISTERS_APB1_H_

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

#endif
