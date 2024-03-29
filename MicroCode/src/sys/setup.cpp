#include "setup.h"
#include <core/driver/display.h>
#include "sys.h"
#include "time.h"

void InitializeClock();
void InitializeGPIO();
void InitializeDAC();
void InitializeSDADC();
void InitializeEncoders();

void Initialize() {
	InitializeClock();
	InitializeTimers();
	InitializeGPIO();
	Display::Initialize();
	InitializeDAC();
	InitializeEncoders();
	InitializeSDADC();
}

void InitializeClock() {
	RCC_CR &= ~PLLON; // Disable PLL
	
	while ((RCC_CR & PLLRDY) != 0); // Wait for PLL ready

	RCC_CFGR = SDPRE(0b10011) | USBPRE | PLLMUL(0b1010) | PPRE1(0b100);

#if USE_HSE
	RCC_CR |= HSEON; //Enable HSE
	RCC_CFGR |= PLLSRC; // Set PLL source to HSE/PREDIV

	while ((RCC_CR & HSERDY) == 0); //Wait for HSE
#endif
	
	RCC_CR |= PLLON; // Enable PLL
	
	while (RCC_CR & PLLRDY); // Wait for PLL ready

	FLASH_ACR |= 1;

	RCC_CFGR |= SW(0b10); // Set PLL as system clock source

#if USE_HSE
	RCC_CR &= ~HSION;
#endif
}

void InitializeGPIO() {
	// CLock enable
	RCC_AHBENR |= IOPAEN | IOPBEN | IOPEEN | IOPFEN;

	NOP; //NOP instruction so GPIO peripherals aren't accessed right after being enabled

	//Alternate functions
	GPIOA_AFRH = 0x770;
	GPIOA_AFRL = 0xBB;

	GPIOB_AFRL = 0x22000000;

	//Mode
	GPIOA_MODER = MODER(0, 2) | MODER(1, 2) | MODER(5, 3) | MODER(6, 4) | MODER(9, 2) | MODER(10, 2) | MODER(11, 3) | MODER(12, 3) | MODER(13, 1) | MODER(14, 1) | MODER(15, 1);
	GPIOB_MODER = MODER(3, 1) | MODER(4, 1) | MODER(6, 2) | MODER(7, 2) | MODER(8, 1) | MODER(9, 1);
	GPIOE_MODER = MODER(8, 3) | MODER(9, 3);
	GPIOF_MODER = MODER(6, 1) | MODER(7, 1);

	//Speed
	GPIOA_OSPEEDR = ~0;
	GPIOB_OSPEEDR = ~0;
	GPIOE_OSPEEDR = ~0;
	GPIOF_OSPEEDR = ~0;

	//Pull up/pull down
	GPIOA_PUPDR = PUPDR(4, 1) | PUPDR(3, 1) | PUPDR(2, 1);
	GPIOB_PUPDR = 0;
	GPIOE_PUPDR = 0;
	GPIOE_PUPDR = 0;
}

void InitializeDAC() {
	RCC_APB1ENR |= DAC1EN | DAC2EN;
	
	NOP;

	DAC1_CR = 0x10000; //Enable only channel 2
	DAC2_CR = 1;
	
	DAC1_DHR12R2 = 0;
	DAC2_DHR12R1 = 0;
}

void InitializeSDADC() {
	RCC_APB2ENR |= SDADC1EN | SDADC2EN; // Enable SDADC1 and SDADC2 clock
	PWR_CR = 0x600; // Enable SDADC1 and 2 power stuff

	SDADC1_CR1 = 0;

	DelayMillis(5);

	SDADC1_CR2 = 1; //ADON
	
	while (SDADC1_ISR & 0x8000); // Wait for stabilization
	
	SDADC1_CR1 |= 0x80000000; //Enter init mode

	while ((SDADC1_ISR & 0x80000000) == 0); //Wait

	SDADC1_CR2 |= 0x480000; 
	SDADC1_CONF0R = 0x4C000000;
	SDADC1_CONFCHR2 = 0;
	
	SDADC1_CR1 ^= 0x80000000; // Leave init mode

	while (SDADC1_ISR & 0x80000000); //Wait
	
	SDADC1_CR2 |= 0x10; //Start calibration

	while (SDADC1_ISR & 0x1000); //Wait for calibration to finish
}
