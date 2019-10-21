#include "setup.h"
#include <core/driver/display.h>

void InitializeClock();
void InitializeGPIO();
void InitializeDAC();
void InitializeSDADC();
void InitializeEncoders();

void Initialize() {
	InitializeClock();
	InitializeGPIO();
	InitializeDisplay();
	InitializeDAC();
	InitializeSDADC();
	InitializeEncoders();
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
	RCC->CFGR.SDPRE = 0b10011; // SDADC division factor 8 (6MHz)
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
	//Alternate functions
	GPIOA_AFRH = 0x770;

	//Mode
	GPIOA_MODER = MODER(5, 3) | MODER(6, 4) | MODER(9, 2) | MODER(10, 2) | MODER(11, 3) | MODER(12, 3) | MODER(13, 1) | MODER(14, 1) | MODER(15, 1);
	GPIOB_MODER = MODER(3, 1) | MODER(4, 1) | MODER(8, 1) | MODER(9, 1);
	GPIOE_MODER = MODER(8, 3) | MODER(9, 3);
	GPIOF_MODER = MODER(6, 1) | MODER(7, 1);

	//Speed
	GPIOA_OSPEEDR = ~0;
	GPIOB_OSPEEDR = ~0;
	GPIOE_OSPEEDR = ~0;
	GPIOF_OSPEEDR = ~0;

	//Pull up/pull down
	GPIOA_PUPDR = PUPDR(4, 1);
	GPIOB_PUPDR = 0;
	GPIOC_PUPDR = 0x54000000;
	GPIOD_PUPDR = PUPDR(8, 1);
	GPIOE_PUPDR = 0;
	GPIOE_PUPDR = 0;
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
	RCC->APB2ENR.SDADC2EN = 1; // ENable SDADC2 clock

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

void InitializeEncoders() {
	SYSCFG_EXTICR1(|=, 0, 0, 0, 0); //Set EXTI0 interrupt to trigger on PA0
	SYSCFG_EXTICR2(|=, 0, 0, 1, 0); //Set EXTI6 interrupt to trigger on PB6
	
	EXTI_IMR |= 0x41; // Enabled EXTI0 and EXTI6 interrupts
	EXTI_RTSR |= 0x41; //Set EXTI0 and EXTI6 interrupts to trigger on rising edge

	// ISR handlers are implemented in main.c
}