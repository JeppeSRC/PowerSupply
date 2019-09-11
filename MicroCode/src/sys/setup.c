#include "setup.h"

void InitializeClock();
void InitializeGPIO();
void InitializeDAC();
void InitializeSDADC();

void Initialize() {
	InitializeClock();
	InitializeGPIO();
	InitializeDAC();
	InitializeSDADC();
}

void InitializeClock() {
	RCC->CR.PLLON = 0; // Disable PLL
	RCC->CR.HSEON = 1; //Enable HSE

	while (RCC->CR.PLLRDY == 1); // Wait for PLL ready

	RCC->CFGR.PLLXTPRE = 0; // Disable HSE prescaler
	RCC->CFGR.PLLSRC = 1; // Set PLL source to HSE/PREDIV
	RCC->CFGR.PLLMUL = 0xA; // Set PLL multiplier to 12 (48MHz)

	while (RCC->CR.HSERDY == 0); //Wait for HSE

	RCC->CR.PLLON = 1; // Enable PLL

	while (RCC->CR.PLLRDY == 0); // Wait for PLL ready

	RCC->CFGR.USBPRE = 1;
	RCC->CFGR.SDPRE = 0b10011; // SDADC division factor 48 (1MHz)
	RCC->CFGR.PPRE1 = 0b100; // Set APB1 prescaler. AHB / 2 (24MHz)
	RCC->CFGR.SW = 0b10; // Set PLL as system clock source
	RCC->CR.HSION = 0;

	// CLock enable
	// GPIO
	RCC->AHBENR.IOPAEN = 1;
	RCC->AHBENR.IOPBEN = 1;
	RCC->AHBENR.IOPEEN = 1;
	RCC->AHBENR.IOPFEN = 1;
}

void InitializeGPIO() {
	//IO pin setup
	//Alternate function
	GPIOA->AFR.p0 = AF11;
	GPIOA->AFR.p1 = AF11;
	GPIOA->AFR.p9 = AF7;
	GPIOA->AFR.p10 = AF7;
	GPIOB->AFR.p6 = AF2;
	GPIOB->AFR.p7 = AF2;

	//Mode
	GPIO_MODER(GPIOA, 2, 2, 0, 0, 0, 3, 3, 0, 0, 2, 2, 3, 3, 1, 1, 1);
	GPIO_MODER(GPIOB, 0, 0, 0, 1, 1, 0, 2, 2, 1, 1, 0, 0, 0, 0, 0, 0);
	GPIOE->MODER.p6 = 3;
	GPIOE->MODER.p9 = 3;
	GPIOF->MODER.p6 = 1;
	GPIOF->MODER.p7 = 1;

	//Speed
	GPIOA->OSPEEDR.p = ~0;
	GPIOB->OSPEEDR.p = ~0;
	GPIOF->OSPEEDR.p = ~0;

	//Pull up/pull down
	GPIO_PUPDR(GPIOA, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);
	GPIO_PUPDR(GPIOB, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1);
	GPIOF->PUPDR.p6 = 0;
	GPIOF->PUPDR.p7 = 0;
}

void InitializeDAC() {
	RCC->APB1ENR.DAC1EN = 1;
	RCC->APB1ENR.DAC2EN = 1;

	DAC1_CR(=, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0);
	DAC2_CR(=, 1, 1, 0, 0, 0, 0, 0, 0);

	DAC1->DHR12R2 = 0;
	DAC2->DHR12R1 = 0;
}

void InitializeSDADC() {
	PWR_CR(=, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0); // Enable SDADC1 and 2 power stuff
	RCC->APB2ENR.SDADC1EN = 1; // Enable SDADC1 clock
	RCC->APB2ENR.SDADC2EN = 2; // ENable SDADC2 clock

	SDADC1_CR1(=, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1); // Enter init mode
	SDADC2_CR1(=, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1); // Enter init mode

	while (SDADC1_ISR(&, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) && SDADC2_ISR(&, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)); //Wait for INITRDY

	SDADC1_CR2(=, 1, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 1); // Enable SDADC1, Fast mode and set channel to 7, Vref to external
	SDADC2_CR2(=, 1, 0, 0, 0, 0, 0, 0, 0, 8, 1, 0, 1); // Enable SDADC2, Fast mode and set channel to 8
	SDADC1_CONF0R(=, 0, 0, 3, 0); // Single ended zero voltage mode, x1 gain
	SDADC2_CONF0R(=, 0, 0, 3, 0); // Single ended zero voltage mode, x1 gain
	//SDADC_CONFCHR1 has CONF0R set as default
	SDADC1_CR1(=, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0); //Leave init mode
	SDADC2_CR1(=, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0); //Leave init mode

	while (SDADC1_ISR(&, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0) && SDADC2_ISR(&, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0)); //Wait for SDADC1 to be stable

	SDADC1_CR2(|= , 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0); //Start calibration
	SDADC2_CR2(|= , 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0); //Start calibration

	while (SDADC1_ISR(&, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0) && SDADC2_ISR(&, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0)); //Wait for calibration to finish

	SDADC1_CR2(|=, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);
	SDADC2_CR2(|=, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);
}