#include "setup.h"
#include <core/driver/display.h>

void InitializeClock();
void InitializeGPIO();
void InitializeDAC();
void InitializeSDADC();
void InitializeEncoders();

void Initialize() {
	InitializeClock();
	/*InitializeGPIO();
	InitializeDisplay();
	InitializeDAC();
	InitializeSDADC();
	InitializeEncoders();*/
}

void InitializeClock() {
	RCC_CR &= ~PLLON; // Disable PLL
	
	while (RCC_CR & PLLRDY); // Wait for PLL ready

	RCC_CFGR = SDPRE(0b10011) | USBPRE | PLLMUL(0b1010) | PPRE1(0b100);

#if USE_HSE
	RCC->CR.HSEON = 1; //Enable HSE
	RCC->CFGR.PLLSRC = 1; // Set PLL source to HSE/PREDIV

	while (RCC->CR.HSERDY == 0); //Wait for HSE
#endif

	RCC_CR |= PLLON; // Enable PLL

	while (RCC_CR & PLLRDY); // Wait for PLL ready

	RCC_CFGR |= SW(0b10); // Set PLL as system clock source

#if USE_HSE
	RCC_CR &= ~HSION;
#endif
}

void InitializeGPIO() {

	// CLock enable
	RCC_AHBENR |= IOPAEN | IOPBEN | IOPEEN | IOPFEN;

	asm("mov r1, r1"); //NOP instruction so GPIO peripherals aren't accessed right after being enabled

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
	GPIOE_PUPDR = 0;
	GPIOE_PUPDR = 0;
}

void InitializeDAC() {
	RCC_APB1ENR |= DAC1EN | DAC2EN;
	
	DAC1_CR = 0x10000; //Enable only channel 2
	DAC2_CR = 1;
	
	DAC1_DHR12R2 = 0;
	DAC2_DHR12R1 = 0;
}

void InitializeSDADC() {
	PWR_CR = 0x600; // Enable SDADC1 and 2 power stuff
	RCC_APB2ENR |= SDADC1EN | SDADC2EN; // Enable SDADC1 and SDADC2 clock

	SDADC1_CR1 = 0x80000000; // Enter init mode
	SDADC2_CR1 = 0x80000000; // Enter init mode

	while (!(SDADC1_ISR & 0x80000000) && !(SDADC2_ISR & 0x80000000)); //Wait for INITRDY

	SDADC1_CR2 = 0x1880001; // Enable SDADC1, Fast mode and set channel to 8, Vref to external
	SDADC2_CR2 = 0x1870001; // Enable SDADC2, Fast mode and set channel to 7, Vref to external
	SDADC1_CONF0R = 0x0C000000; // Single ended zero voltage mode, x1 gain
	SDADC2_CONF0R = 0x0C000000; // Single ended zero voltage mode, x1 gain
	//SDADC_CONFCHR1 has CONF0R set as default
	SDADC1_CR1 = 0; //Leave init mode
	SDADC2_CR1 = 0; //Leave init mode

	while (SDADC1_ISR & 0x8000 && SDADC2_ISR & 0x8000); //Wait for SDADC1 to be stable

	SDADC1_CR2 |= 0x10; //Start calibration
	SDADC2_CR2 |= 0x10; //Start calibration

	while (!(SDADC1_ISR & 0x01) && !(SDADC2_ISR & 0x01)); //Wait for calibration to finish

	SDADC1_CLRISR = 1; // Clear EOCALF in SDADC_ISR
	SDADC2_CLRISR = 1; // Clear EOCALF in SDADC_ISR

	SDADC1_CR2 |= 0x800000; // Start conversion
	SDADC2_CR2 |= 0x800000;	// Start conversion
}

void InitializeEncoders() {
	SYSCFG_EXTICR1 = 0; //Set EXTI0 interrupt to trigger on PA0, EXTI2 on PA2, EXTI3 on PA3
	SYSCFG_EXTICR2 = 0x100; //Set EXTI6 interrupt to trigger on PB6
	
	EXTI_IMR |= 0x4D; // Enabled EXTI0, EXTI1, EXTI3 and EXTI6 interrupts
	EXTI_RTSR |= 0x4D; //Set EXTI0, EXTI1, EXTI3 and EXTI6 interrupts to trigger on rising edge

	// ISR handlers are implemented in main.c
}