#ifndef SYS_REGISTERS_AHB1_H_
#define SYS_REGISTERS_AHB1_H_

#pragma region DMA

struct DMA_ISR {
	//Channel 1
	unsigned char GIF1 : 1;
	unsigned char TCIF1 : 1;
	unsigned char HTIF1 : 1;
	unsigned char TEIF1 : 1;
	//Channel 2
	unsigned char GIF2 : 1;
	unsigned char TCIF2 : 1;
	unsigned char HTIF2 : 1;
	unsigned char TEIF2 : 1;
	//Channel 3
	unsigned char GIF3 : 1;
	unsigned char TCIF3 : 1;
	unsigned char HTIF3 : 1;
	unsigned char TEIF3 : 1;
	//Channel 4
	unsigned char GIF4 : 1;
	unsigned char TCIF4 : 1;
	unsigned char HTIF4 : 1;
	unsigned char TEIF4 : 1;
	//Channel 5
	unsigned char GIF5 : 1;
	unsigned char TCIF5 : 1;
	unsigned char HTIF5 : 1;
	unsigned char TEIF5 : 1;
	//Channel 6
	unsigned char GIF6 : 1;
	unsigned char TCIF6 : 1;
	unsigned char HTIF6 : 1;
	unsigned char TEIF6 : 1;
	//Channel 7
	unsigned char GIF7 : 1;
	unsigned char TCIF7 : 1;
	unsigned char HTIF7 : 1;
	unsigned char TEIF7 : 1;

	unsigned char reserved : 4;
};

struct DMA_IFCR {
						//Channel 1
	unsigned char CGIF1 : 1;
	unsigned char CTCIF1 : 1;
	unsigned char CHTIF1 : 1;
	unsigned char CTEIF1 : 1;
	//Channel 2
	unsigned char CGIF2 : 1;
	unsigned char CTCIF2 : 1;
	unsigned char CHTIF2 : 1;
	unsigned char CTEIF2 : 1;
	//Channel 3
	unsigned char CGIF3 : 1;
	unsigned char CTCIF3 : 1;
	unsigned char CHTIF3 : 1;
	unsigned char CTEIF3 : 1;
	//Channel 4
	unsigned char FGIF4 : 1;
	unsigned char FTCIF4 : 1;
	unsigned char FHTIF4 : 1;
	unsigned char FTEIF4 : 1;
	//Channel 5
	unsigned char CGIF5 : 1;
	unsigned char CTCIF5 : 1;
	unsigned char CHTIF5 : 1;
	unsigned char CTEIF5 : 1;
	//Channel 6
	unsigned char CGIF6 : 1;
	unsigned char CTCIF6 : 1;
	unsigned char CHTIF6 : 1;
	unsigned char CTEIF6 : 1;
	//Channel 7
	unsigned char CGIF7 : 1;
	unsigned char CTCIF7 : 1;
	unsigned char CHTIF7 : 1;
	unsigned char CTEIF7 : 1;

	unsigned char reserved : 4;
};

struct DMA_CCRx {
	unsigned char EN : 1;
	unsigned char TCIE : 1;
	unsigned char HTIE : 1;
	unsigned char TEIE : 1;
	unsigned char DIR : 1;
	unsigned char CIRC : 1;
	unsigned char PINC : 1;
	unsigned char MINC : 1;
	unsigned char PSIZE : 2;
	unsigned char MSIZE : 2;
	unsigned char PL : 2;
	unsigned char MEM2MEM : 1;

	unsigned int reserved : 17;
};

struct DMA_CNDTRx {
	unsigned short NDT : 16;
	unsigned short reserved : 16;
};

struct DMA_CPARx {
	unsigned int PA : 32;
};

struct DMA_CMARx {
	unsigned int MA : 32;
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
	unsigned char HSION : 1;
	unsigned char HSIRDY : 1;
	unsigned char reserved : 1;
	unsigned char HSITRIM : 5;
	unsigned char HSICAL : 8;
	unsigned char HSEON : 1;
	unsigned char HSERDY : 1;
	unsigned char HSEBYP : 1;
	unsigned char CSSON : 1;
	unsigned char reserved1 : 4;
	unsigned char PLLON : 1;
	unsigned char PLLRDY : 1;
	unsigned char reserved2 : 6;
};

struct RCC_CFGR {
	unsigned char SW : 2;
	unsigned char SWS : 2;
	unsigned char HPRE : 4;
	unsigned char PPRE1 : 3;
	unsigned char PPRE2 : 3;
	unsigned char ADCPRE : 2;
	unsigned char PLLSRC : 1;
	unsigned char PLLXTPRE : 1;
	unsigned char PLLMUL : 4;
	unsigned char USBPRE : 1;
	unsigned char reserved : 1;
	unsigned char MCO : 3;
	unsigned char SDPRE : 5;
};

struct RCC_CIR {
	unsigned char LSIRDYF : 1;
	unsigned char LSERDYF : 1;
	unsigned char HSIRDYF : 1;
	unsigned char HSERDYF : 1;
	unsigned char PLLRDYF : 1;
	unsigned char reserved : 2;
	unsigned char CSSF : 1;
	unsigned char LSIRDYIE : 1;
	unsigned char LSERDYIE : 1;
	unsigned char HSIRDYIE : 1;
	unsigned char HSERDYIE : 1;
	unsigned char PLLRDYIE : 1;
	unsigned char reserved1 : 3;
	unsigned char LSIRDYC : 1;
	unsigned char LSERDYC : 1;
	unsigned char HSIRDYC : 1;
	unsigned char HSERDYC : 1;
	unsigned char PLLRDYC : 1;
	unsigned char reserved2 : 2;
	unsigned char CSSC : 1;
	unsigned char reserved3 : 8;
};

struct RCC_APB2RSTR {
	unsigned char SYSCFGRST : 1;
	unsigned char reserved : 8;
	unsigned char ADCRST : 1;
	unsigned char reserved1 : 2;
	unsigned char SPI1RST : 1;
	unsigned char reserved2 : 1;
	unsigned char USART1RST : 1;
	unsigned char reserved3 : 1;
	unsigned char TIM15RST : 1;
	unsigned char TIM16RST : 1;
	unsigned char TIM17RST : 1;
	unsigned char TIM19RST : 1;
	unsigned char reserved4 : 4;
	unsigned char SDAD1RST : 1;
	unsigned char SDAD2RST : 1;
	unsigned char SDAD3RST : 1;
	unsigned char reserved5 : 5;
};

struct RCC_APB1RSTR {
	unsigned char TIM2RST : 1;
	unsigned char TIM3RST : 1;
	unsigned char TIM4RST : 1;
	unsigned char TIM5RST : 1;
	unsigned char TIM6RST : 1;
	unsigned char TIM7RST : 1;
	unsigned char TIM12RST : 1;
	unsigned char TIM13RST : 1;
	unsigned char TIM14RST : 1;
	unsigned char TIM18RST : 1;
	unsigned char reserved : 1;
	unsigned char WWDGRST : 1;
	unsigned char reserved2 : 2;
	unsigned char SPI2RST : 1;
	unsigned char SPI3RST : 1;
	unsigned char reserved3 : 1;
	unsigned char USART2RST : 1;
	unsigned char USART3RST : 1;
	unsigned char reserved4 : 2;
	unsigned char I2C1RST : 1;
	unsigned char I2C2RST : 1;
	unsigned char USBRST : 1;
	unsigned char reserved5 : 1;
	unsigned char CANRST : 1;
	unsigned char DAC2RST : 1;
	unsigned char reserved6 : 1;
	unsigned char PWRRST : 1;
	unsigned char DAC1RST : 1;
	unsigned char CECRST : 1;
	unsigned char reserved7 : 1;
};

struct RCC_AHBENR {
	unsigned char DMAEN : 1;
	unsigned char DMA2EN : 1;
	unsigned char SRAMEN : 1;
	unsigned char reserved : 1;
	unsigned char FLITFEN : 1;
	unsigned char reserved2 : 1;
	unsigned char CRCEN : 1;
	unsigned short reserved3 : 10;
	unsigned char IOPAEN : 1;
	unsigned char IOPBEN : 1;
	unsigned char IOPCEN : 1;
	unsigned char IOPDEN : 1;
	unsigned char IOPEEN : 1;
	unsigned char IOPFEN : 1;
	unsigned char reserved4 : 1;
	unsigned char TSCEN : 1;
	unsigned char reserved5 : 7;

};

struct RCC_APB2ENR {
	unsigned char SYSCFGEN : 1;
	unsigned char reserved : 8;
	unsigned char ADCEN : 1;
	unsigned char reserved2 : 2;
	unsigned char SPI1EN : 1;
	unsigned char reserved3 : 1;
	unsigned char USART1EN : 1;
	unsigned char reserved4 : 1;
	unsigned char TIM15EN : 1;
	unsigned char TIM16EN : 1;
	unsigned char TIM17EN : 1;
	unsigned char TIM19EN : 1;
	unsigned char reserved5 : 2;
	unsigned char DBGMCUEN : 1;
	unsigned char reserved6 : 1;
	unsigned char SDADC1EN : 1;
	unsigned char SDADC2EN : 1;
	unsigned char SDADC3EN : 1;
	unsigned char reserved7 : 5;

};

struct RCC_APB1ENR {
	unsigned char TIM2EN : 1;
	unsigned char TIM3EN : 1;
	unsigned char TIM4EN : 1;
	unsigned char TIM5EN : 1;
	unsigned char TIM6EN : 1;
	unsigned char TIM7EN : 1;
	unsigned char TIM12EN : 1;
	unsigned char TIM13EN : 1;
	unsigned char TIM14EN : 1;
	unsigned char TIM18EN : 1;
	unsigned char reserved : 1;
	unsigned char WWDGEN : 1;
	unsigned char reserved2 : 2;
	unsigned char SPI2EN : 1;
	unsigned char SPI3EN : 1;
	unsigned char reserved3 : 1;
	unsigned char USART2EN : 1;
	unsigned char USART3EN : 1;
	unsigned char reserved4 : 2;
	unsigned char I2C1EN : 1;
	unsigned char I2C2EN : 1;
	unsigned char USBEN : 1;
	unsigned char reserved5 : 1;
	unsigned char CANEN : 1;
	unsigned char DAC2EN : 1;
	unsigned char reserved6 : 1;
	unsigned char PWREN : 1;
	unsigned char DAC1EN : 1;
	unsigned char CECEN : 1;
	unsigned char reserved7 : 1;
};

struct RCC_BDCR {
	unsigned char LSEON : 1;
	unsigned char LSERDT : 1;
	unsigned char LSEBYP : 1;
	unsigned char LSEDRV : 2;
	unsigned char reserved : 3;
	unsigned char RTCSEL : 2;
	unsigned char reserved2 : 5;
	unsigned char RTCEN : 1;
	unsigned char RDRST : 1;
	unsigned short reserved3 : 15;
};

struct RCC_CSR {
	unsigned char LSION : 1;
	unsigned char LSIRDY : 1;
	unsigned int reserved : 21;
	unsigned char V18PWRRSTF : 1;
	unsigned char RMVF : 1;
	unsigned char OBLRSTF : 1;
	unsigned char PINRSTF : 1;
	unsigned char PORRSTF : 1;
	unsigned char SFTRSTF : 1;
	unsigned char IWDGRSTF : 1;
	unsigned char WWDGRSTF : 1;
	unsigned char LPWRRSTF : 1;
};

struct RCC_AHBRSTR {
	unsigned int reserved : 17;
	unsigned char IOPARST : 1;
	unsigned char IOPBRST : 1;
	unsigned char IOPCRST : 1;
	unsigned char IOPDRST : 1;
	unsigned char IOPERST : 1;
	unsigned char IOPFRST : 1;
	unsigned char reserved2 : 1;
	unsigned char TSCRST : 1;
	unsigned char reserved3 : 7;
};

struct RCC_CFGR2 {
	unsigned char PREDIV : 4;
	unsigned int reserved : 28;
};

struct RCC_CFGR3 {
	unsigned char USART1SW : 2;
	unsigned reserved : 2;
	unsigned char I2C1SW : 1;
	unsigned char I2C2SW : 1;
	unsigned char CECSW : 1;
	unsigned short reserved2 : 9;
	unsigned char USART2SW : 2;
	unsigned char USART3SW : 2;
	unsigned short reserved3 : 12;
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
