#ifndef SYS_REGISTERS_AHB1_H_
#define SYS_REGISTERS_AHB1_H_

#include <core/def.h>

#pragma region RCC

#define RCC 0x40021000

#define RCC_CR (*(uint32*)(RCC))

#define PLLRDY 0x2000000
#define PLLON 0x1000000
#define CSSON 0x80000
#define HSEBYP 0x40000
#define HSERDY 0x20000
#define HSEON 0x10000
#define HSICAL(cal) ((cal & 0xFF) << 8)
#define HSITRIM(trim) ((trim & 0x1F) << 3)
#define HSIRDY 0x2
#define HSION 0x1

#define RCC_CFGR (*(uint32*)(RCC+0x04))

#define SDPRE(sdpre) ((sdpre & 0x1F) << 27)
#define MCO(mco) ((mco & 0x7) << 24)
#define USBPRE 0x400000
#define PLLMUL(mul) ((mul & 0xF) << 18)
#define PLLXTPRE 0x20000
#define PLLSRC 0x10000
#define ADCPRE(pre) ((pre & 0x3) << 14)
#define PPRE2(pre) ((pre & 0x7) << 8)
#define PPRE1(pre) ((pre & 0xF) << 4)
#define HPRE(pre) ((pre & 0x7) << 4)
#define SWS(sws) ((sws & 0x3) << 2)
#define SW(sw) ((sw & 0x3))

#define RCC_CIR (*(uint32*)(RCC+0x08))

#define CSSC 0x800000
#define PLLRDYC 0x100000
#define HSERDYC 0x80000
#define HSIRDYC 0x40000
#define LSERDYC 0x20000
#define LSIRDYC 0x10000
#define PLLRDYIE 0x1000
#define HSERDYIE 0x800
#define HSIRDYIE 0x400
#define LSERDYIE 0x200
#define LSIRDYIE 0x100
#define CSSF 0x80
#define PLLRDYF 0x10
#define HSERDYF 0x8
#define HSIRDYF 0x4
#define LSERDYF 0x2
#define LSIRDYF 0x1

#define RCC_APB2RSTR (*(uint32*)(RCC+0x0C))

#define SDADC3RST 0x4000000
#define SDADC2RST 0x2000000
#define SDADC1RST 0x1000000
#define TIM19RST 0x80000
#define TIM17RST 0x40000
#define TIM16RST 0x20000
#define TIM15RST 0x10000
#define USART1RST 0x4000
#define SPI1RST 0x1000
#define ADCRST 0x200
#define SYSCFGRST 0x1

#define RCC_APB1RSTR (*(uint32*)(RCC+0x10))

#define CECRST 0x40000000
#define DAC1RST 0x20000000
#define PWRRST 0x10000000
#define DAC2RST 0x4000000
#define CANRST 0x2000000
#define USBRST 0x800000
#define I2C2RST 0x400000
#define I2C1RST 0x200000
#define USART3RST 0x40000
#define USART2RST 0x20000
#define SPI3RST 0x8000
#define SPI2RST 0x4000
#define WWDGRST 0x800
#define TIM18RST 0x200
#define TIM14RST 0x100
#define TIM13RST 0x80
#define TIM12RST 0x40
#define TIM7RST 0x20
#define TIM6RST 0x10
#define TIM5RST 0x8
#define TIM4RST 0x4
#define TIM3RST 0x2
#define TIM2RST 0x1

#define RCC_AHBENR (*(uint32*)(RCC+0x14))

#define TSCEN 0x1000000
#define IOPFEN 0x400000
#define IOPEEN 0x200000
#define IOPDEN 0x100000
#define IOPCEN 0x80000
#define IOPBEN 0x40000
#define IOPAEN 0x20000
#define CRCEN 0x40
#define FLITFEN 0x10
#define SRAMEN 0x4
#define DMA2EN 0x2
#define DMA1EN 0x1

#define RCC_APB2ENR (*(uint32*)(RCC+0x18))

#define SDADC3EN 0x4000000
#define SDADC2EN 0x2000000
#define SDADC1EN 0x1000000
#define DBGMCUEN 0x400000
#define TIM19EN 0x80000
#define TIM17EN 0x40000
#define TIM16EN 0x20000
#define TIM15EN 0x10000
#define USART1EN 0x4000
#define SPI1EN 0x1000
#define ADCEN 0x200
#define SYSCFGEB 0x1

#define RCC_APB1ENR (*(uint32*)(RCC+0x1C))

#define CECEN 0x40000000
#define DAC1EN 0x20000000
#define PWREN 0x10000000
#define DAC2EN 0x4000000
#define CANEN 0x2000000
#define USBEN 0x800000
#define I2C2EN 0x400000
#define I2C1EN 0x200000
#define USART3EN 0x40000
#define USART2EN 0x20000
#define SPI3EN 0x8000
#define SPI2EN 0x4000
#define WWDGEN 0x800
#define TIM18EN 0x200
#define TIM14EN 0x100
#define TIM13EN 0x80
#define TIM12EN 0x40
#define TIM7EN 0x20
#define TIM6EN 0x10
#define TIM5EN 0x8
#define TIM4EN 0x4
#define TIM3EN 0x2
#define TIM2EN 0x1

#define RCC_BDCR (*(uint32*)(RCC+0x20))

#define BDRST 0x10000
#define RTCEN 0x8000
#define RTCSEL(sel) ((sel 0x3) << 8)
#define LSEDRV(drv) ((drv & 0x3) << 3)
#define LSEBYP 0x4
#define LSERDY 0x2
#define LSEON 0x1

#define RCC_CSR (*(uint32*)(RCC+0x24))

#define LPWRRSTF 0x80000000
#define WWDGRSTF 0x40000000
#define IWDGRSTF 0x20000000
#define SFTRSTF 0x10000000
#define PORRSTF 0x8000000
#define PINRSTF 0x4000000
#define OBLRSTF 0x2000000
#define RMVF 0x1000000
#define V18PWRRSTF 0x800000
#define LSIRDY 0x2
#define LSION 0x1

#define RCC_AHBRSTR (*(uint32*)(RCC+0x28))

#define TSCRST 0x1000000
#define IOPFRST 0x400000
#define IOPERST 0x200000
#define IOPDRST 0x100000
#define IOPCRST 0x80000
#define IOPBRST 0x40000
#define IOPARST 0x20000

#define RCC_CFGR2 (*(uint32*)(RCC+0x2C))

#define PREDIV(div) (div & 0xF)

#define RCC_CFGR3 (*(uint32*)(RCC+0x30))

#define USART3SW(sw) ((sw & 0x3) << 18)
#define USART2SW(sw) ((sw & 0x3) << 16)
#define CECSW 0x40
#define I2C2SW 0x20
#define I2C1SW 0x10
#define USART1SW(sw) (sw & 0x3)



#pragma endregion

#endif

#pragma pack(pop)