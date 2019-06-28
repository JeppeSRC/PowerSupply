#ifndef SYS_REGISTERS_AHB1_H_
#define SYS_REGISTERS_AHB1_H_

#include <core/def.h>

#pragma region DMA

struct DMA_ISR {
	//Channel 1
	uint8 GIF1 : 1;
	uint8 TCIF1 : 1;
	uint8 HTIF1 : 1;
	uint8 TEIF1 : 1;
	//Channel 2
	uint8 GIF2 : 1;
	uint8 TCIF2 : 1;
	uint8 HTIF2 : 1;
	uint8 TEIF2 : 1;
	//Channel 3
	uint8 GIF3 : 1;
	uint8 TCIF3 : 1;
	uint8 HTIF3 : 1;
	uint8 TEIF3 : 1;
	//Channel 4
	uint8 GIF4 : 1;
	uint8 TCIF4 : 1;
	uint8 HTIF4 : 1;
	uint8 TEIF4 : 1;
	//Channel 5
	uint8 GIF5 : 1;
	uint8 TCIF5 : 1;
	uint8 HTIF5 : 1;
	uint8 TEIF5 : 1;
	//Channel 6
	uint8 GIF6 : 1;
	uint8 TCIF6 : 1;
	uint8 HTIF6 : 1;
	uint8 TEIF6 : 1;
	//Channel 7
	uint8 GIF7 : 1;
	uint8 TCIF7 : 1;
	uint8 HTIF7 : 1;
	uint8 TEIF7 : 1;

	uint8 reserved : 4;
};

struct DMA_IFCR {
						//Channel 1
	uint8 CGIF1 : 1;
	uint8 CTCIF1 : 1;
	uint8 CHTIF1 : 1;
	uint8 CTEIF1 : 1;
	//Channel 2
	uint8 CGIF2 : 1;
	uint8 CTCIF2 : 1;
	uint8 CHTIF2 : 1;
	uint8 CTEIF2 : 1;
	//Channel 3
	uint8 CGIF3 : 1;
	uint8 CTCIF3 : 1;
	uint8 CHTIF3 : 1;
	uint8 CTEIF3 : 1;
	//Channel 4
	uint8 FGIF4 : 1;
	uint8 FTCIF4 : 1;
	uint8 FHTIF4 : 1;
	uint8 FTEIF4 : 1;
	//Channel 5
	uint8 CGIF5 : 1;
	uint8 CTCIF5 : 1;
	uint8 CHTIF5 : 1;
	uint8 CTEIF5 : 1;
	//Channel 6
	uint8 CGIF6 : 1;
	uint8 CTCIF6 : 1;
	uint8 CHTIF6 : 1;
	uint8 CTEIF6 : 1;
	//Channel 7
	uint8 CGIF7 : 1;
	uint8 CTCIF7 : 1;
	uint8 CHTIF7 : 1;
	uint8 CTEIF7 : 1;

	uint8 reserved : 4;
};

struct DMA_CCRx {
	uint8 EN : 1;
	uint8 TCIE : 1;
	uint8 HTIE : 1;
	uint8 TEIE : 1;
	uint8 DIR : 1;
	uint8 CIRC : 1;
	uint8 PINC : 1;
	uint8 MINC : 1;
	uint8 PSIZE : 2;
	uint8 MSIZE : 2;
	uint8 PL : 2;
	uint8 MEM2MEM : 1;

	uint32 reserved : 17;
};

struct DMA_CNDTRx {
	uint16 NDT : 16;
	uint16 reserved : 16;
};

struct DMA_CPARx {
	uint32 PA : 32;
};

struct DMA_CMARx {
	uint32 MA : 32;
};

#define DMA_CHANNEL(n) struct DMA_CCRx CCR##n; struct DMA_CNDTRx CNDTR##n; struct DMA_CPARx CPAR##n; struct DMA_CMARx CMAR##n;

struct DMAx {
	struct DMA_ISR ISR;
	struct DMA_IFCR IFCR;

	DMA_CHANNEL(1);
	DMA_CHANNEL(2);
	DMA_CHANNEL(3);
	DMA_CHANNEL(4);
	DMA_CHANNEL(5);
	DMA_CHANNEL(6);
	DMA_CHANNEL(7);

};

#define DMA1 ((struct DMAx*)0x40020000)
#define DMA2 ((struct DMAx*)0x40020400)

#pragma endregion

#pragma region RCC

struct RCC_CR {
	uint8 HSION : 1;
	uint8 HSIRDY : 1;
	uint8 reserved : 1;
	uint8 HSITRIM : 5;
	uint8 HSICAL : 8;
	uint8 HSEON : 1;
	uint8 HSERDY : 1;
	uint8 HSEBYP : 1;
	uint8 CSSON : 1;
	uint8 reserved1 : 4;
	uint8 PLLON : 1;
	uint8 PLLRDY : 1;
	uint8 reserved2 : 6;
};

struct RCC_CFGR {
	uint8 SW : 2;
	uint8 SWS : 2;
	uint8 HPRE : 4;
	uint8 PPRE1 : 3;
	uint8 PPRE2 : 3;
	uint8 ADCPRE : 2;
	uint8 PLLSRC : 1;
	uint8 PLLXTPRE : 1;
	uint8 PLLMUL : 4;
	uint8 USBPRE : 1;
	uint8 reserved : 1;
	uint8 MCO : 3;
	uint8 SDPRE : 5;
};

struct RCC_CIR {
	uint8 LSIRDYF : 1;
	uint8 LSERDYF : 1;
	uint8 HSIRDYF : 1;
	uint8 HSERDYF : 1;
	uint8 PLLRDYF : 1;
	uint8 reserved : 2;
	uint8 CSSF : 1;
	uint8 LSIRDYIE : 1;
	uint8 LSERDYIE : 1;
	uint8 HSIRDYIE : 1;
	uint8 HSERDYIE : 1;
	uint8 PLLRDYIE : 1;
	uint8 reserved1 : 3;
	uint8 LSIRDYC : 1;
	uint8 LSERDYC : 1;
	uint8 HSIRDYC : 1;
	uint8 HSERDYC : 1;
	uint8 PLLRDYC : 1;
	uint8 reserved2 : 2;
	uint8 CSSC : 1;
	uint8 reserved3 : 8;
};

struct RCC_APB2RSTR {
	uint8 SYSCFGRST : 1;
	uint8 reserved : 8;
	uint8 ADCRST : 1;
	uint8 reserved1 : 2;
	uint8 SPI1RST : 1;
	uint8 reserved2 : 1;
	uint8 USART1RST : 1;
	uint8 reserved3 : 1;
	uint8 TIM15RST : 1;
	uint8 TIM16RST : 1;
	uint8 TIM17RST : 1;
	uint8 TIM19RST : 1;
	uint8 reserved4 : 4;
	uint8 SDAD1RST : 1;
	uint8 SDAD2RST : 1;
	uint8 SDAD3RST : 1;
	uint8 reserved5 : 5;
};

struct RCC_APB1RSTR {
	uint8 TIM2RST : 1;
	uint8 TIM3RST : 1;
	uint8 TIM4RST : 1;
	uint8 TIM5RST : 1;
	uint8 TIM6RST : 1;
	uint8 TIM7RST : 1;
	uint8 TIM12RST : 1;
	uint8 TIM13RST : 1;
	uint8 TIM14RST : 1;
	uint8 TIM18RST : 1;
	uint8 reserved : 1;
	uint8 WWDGRST : 1;
	uint8 reserved2 : 2;
	uint8 SPI2RST : 1;
	uint8 SPI3RST : 1;
	uint8 reserved3 : 1;
	uint8 USART2RST : 1;
	uint8 USART3RST : 1;
	uint8 reserved4 : 2;
	uint8 I2C1RST : 1;
	uint8 I2C2RST : 1;
	uint8 USBRST : 1;
	uint8 reserved5 : 1;
	uint8 CANRST : 1;
	uint8 DAC2RST : 1;
	uint8 reserved6 : 1;
	uint8 PWRRST : 1;
	uint8 DAC1RST : 1;
	uint8 CECRST : 1;
	uint8 reserved7 : 1;
};

struct RCC_AHBENR {
	uint8 DMAEN : 1;
	uint8 DMA2EN : 1;
	uint8 SRAMEN : 1;
	uint8 reserved : 1;
	uint8 FLITFEN : 1;
	uint8 reserved2 : 1;
	uint8 CRCEN : 1;
	uint16 reserved3 : 10;
	uint8 IOPAEN : 1;
	uint8 IOPBEN : 1;
	uint8 IOPCEN : 1;
	uint8 IOPDEN : 1;
	uint8 IOPEEN : 1;
	uint8 IOPFEN : 1;
	uint8 reserved4 : 1;
	uint8 TSCEN : 1;
	uint8 reserved5 : 7;

};

struct RCC_APB2ENR {
	uint8 SYSCFGEN : 1;
	uint8 reserved : 8;
	uint8 ADCEN : 1;
	uint8 reserved2 : 2;
	uint8 SPI1EN : 1;
	uint8 reserved3 : 1;
	uint8 USART1EN : 1;
	uint8 reserved4 : 1;
	uint8 TIM15EN : 1;
	uint8 TIM16EN : 1;
	uint8 TIM17EN : 1;
	uint8 TIM19EN : 1;
	uint8 reserved5 : 2;
	uint8 DBGMCUEN : 1;
	uint8 reserved6 : 1;
	uint8 SDADC1EN : 1;
	uint8 SDADC2EN : 1;
	uint8 SDADC3EN : 1;
	uint8 reserved7 : 5;

};

struct RCC_APB1ENR {
	uint8 TIM2EN : 1;
	uint8 TIM3EN : 1;
	uint8 TIM4EN : 1;
	uint8 TIM5EN : 1;
	uint8 TIM6EN : 1;
	uint8 TIM7EN : 1;
	uint8 TIM12EN : 1;
	uint8 TIM13EN : 1;
	uint8 TIM14EN : 1;
	uint8 TIM18EN : 1;
	uint8 reserved : 1;
	uint8 WWDGEN : 1;
	uint8 reserved2 : 2;
	uint8 SPI2EN : 1;
	uint8 SPI3EN : 1;
	uint8 reserved3 : 1;
	uint8 USART2EN : 1;
	uint8 USART3EN : 1;
	uint8 reserved4 : 2;
	uint8 I2C1EN : 1;
	uint8 I2C2EN : 1;
	uint8 USBEN : 1;
	uint8 reserved5 : 1;
	uint8 CANEN : 1;
	uint8 DAC2EN : 1;
	uint8 reserved6 : 1;
	uint8 PWREN : 1;
	uint8 DAC1EN : 1;
	uint8 CECEN : 1;
	uint8 reserved7 : 1;
};

struct RCC_BDCR {
	uint8 LSEON : 1;
	uint8 LSERDT : 1;
	uint8 LSEBYP : 1;
	uint8 LSEDRV : 2;
	uint8 reserved : 3;
	uint8 RTCSEL : 2;
	uint8 reserved2 : 5;
	uint8 RTCEN : 1;
	uint8 RDRST : 1;
	uint16 reserved3 : 15;
};

struct RCC_CSR {
	uint8 LSION : 1;
	uint8 LSIRDY : 1;
	uint32 reserved : 21;
	uint8 V18PWRRSTF : 1;
	uint8 RMVF : 1;
	uint8 OBLRSTF : 1;
	uint8 PINRSTF : 1;
	uint8 PORRSTF : 1;
	uint8 SFTRSTF : 1;
	uint8 IWDGRSTF : 1;
	uint8 WWDGRSTF : 1;
	uint8 LPWRRSTF : 1;
};

struct RCC_AHBRSTR {
	uint32 reserved : 17;
	uint8 IOPARST : 1;
	uint8 IOPBRST : 1;
	uint8 IOPCRST : 1;
	uint8 IOPDRST : 1;
	uint8 IOPERST : 1;
	uint8 IOPFRST : 1;
	uint8 reserved2 : 1;
	uint8 TSCRST : 1;
	uint8 reserved3 : 7;
};

struct RCC_CFGR2 {
	uint8 PREDIV : 4;
	uint32 reserved : 28;
};

struct RCC_CFGR3 {
	uint8 USART1SW : 2;
	unsigned reserved : 2;
	uint8 I2C1SW : 1;
	uint8 I2C2SW : 1;
	uint8 CECSW : 1;
	uint16 reserved2 : 9;
	uint8 USART2SW : 2;
	uint8 USART3SW : 2;
	uint16 reserved3 : 12;
};

struct RCCx {
	struct RCC_CR CR;
	struct RCC_CFGR CFGR;
	struct RCC_CIR CIR;
	struct RCC_APB2RSTR APB2RSTR;
	struct RCC_APB1RSTR APB1RSTR;
	struct RCC_AHBENR AHBENR;
	struct RCC_APB2ENR APB2ENR;
	struct RCC_APB1ENR APB1ENR;
	struct RCC_BDCR BDCR;
	struct RCC_CSR CSR;
	struct RCC_AHBRSTR AHBRSTR;
	struct RCC_CFGR2 CFGR2;
	struct RCC_CFGR3 CFGR3;
};

#define RCC ((struct RCCx*)0x40021000)

#pragma endregion

#endif
