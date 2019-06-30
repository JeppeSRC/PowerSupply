
/*	Device			Port			PhysicalPin
	ENC0_A			PA0				10
	ENC0_B			PA1				11
	ENC0_SW			PA15			38
	ENC1_A			PA2				12
	ENC1_B			PA3				13
	ENC1_SW			PA14			37
	----------------------------------
	Iset			PA4				14
	Vset			PA6				16
	----------------------------------
	Iread			PE9				22
	Vread			PE8				21
	----------------------------------
	CLIM			PD8				28
	.---------------------------------
	CODE_B0			PA5				15
	CODE_B1			PF0				5
	CODE_B2			PF1				6
	CODE_B3			PA8				29
	CODE_B4			PA9				30
	CODE_B5 		PA10			31
	CODE_B6			PF6				35
	CODE_B7			PF7				36
	OUTPUT_ON		PA13			34
	----------------------------------
	USB_D-			PA11			32
	USB_D+			PA12			33
	----------------------------------
	Display_RS		PB0				18
	Display_RW		PB1				19
	Display_E		PB2				20
	Display_D0		PB3				39
	Display_D1		PB4				40
	Display_D2		PB5				41
	Display_D3		PB6				42
	Display_D4		PB7				43
	Display_D5		PB8				45
	Display_D6		PB9				46
	Display_D7		PB14			26
 */


// SYSCLK	20 Mhz
// AHB		20 Mhz
// APB		20 Mhz
// SDADC	1  Mhz

/* Display Format 2x16
	
	-------------------
	|SET  0.00V 0.00A |
	|OUT  0.00V 0.00A |
	-------------------
*/

#include <sys/registers/registers.h>


void setup() {
	//Clock setup
	RCC->CR.PLLON = 0; // Disable PLL

	while (RCC->CR.PLLRDY != 0); // Wait for PLL ready

	RCC->CFGR.PLLSRC = 0; // Set PLL source to HSI/2
	RCC->CFGR.PLLMUL = 0b11; // Set PLL multiplier to 5 (20Mhz)

	RCC->CR.PLLON = 1; // Enable PLL

	while (RCC->CR.PLLRDY != 1); // Wait for PLL ready

	RCC->CFGR.SW = 0b10; // Set PLL as system clock source

	RCC->CFGR.SDPRE = 0b11000; // SDADC division factor 20 (1Mhz)

	//GPIO setup
	// CLock enable
	RCC->AHBENR.IOPAEN = 1;
	RCC->AHBENR.IOPBEN = 1;
	RCC->AHBENR.IOPDEN = 1;
	RCC->AHBENR.IOPEEN = 1;
	RCC->AHBENR.IOPFEN = 1;

	// Alternate function mode
	GPIOA->MODER.p0 = 2;
	GPIOA->MODER.p1 = 2;
	GPIOA->MODER.p2 = 2;
	GPIOA->MODER.p3 = 2;

	GPIOA->AFR.p0 = AF1;
	GPIOA->AFR.p1 = AF1;
	GPIOA->AFR.p2 = AF2;
	GPIOA->AFR.p3 = AF2;

	//Analog mode
	GPIOA->MODER.p4 = 3;
	GPIOA->MODER.p6 = 3;
	GPIOA->MODER.p11 = 3;
	GPIOA->MODER.p12 = 3;
	GPIOE->MODER.p9 = 3;
	GPIOE->MODER.p8 = 3;

	//Output 
	GPIOA->MODER.p5 = 1;
	GPIOA->MODER.p8 = 1;
	GPIOA->MODER.p9 = 1;
	GPIOA->MODER.p10 = 1;
	GPIOA->MODER.p13 = 1;
	GPIOF->MODER.p0 = 1;
	GPIOF->MODER.p1 = 1;
	GPIOF->MODER.p6 = 1;
	GPIOF->MODER.p7 = 1;
	GPIOB->MODER.p0 = 1;
	GPIOB->MODER.p1 = 1;
	GPIOB->MODER.p2 = 1;
	GPIOB->MODER.p3 = 1;
	GPIOB->MODER.p4 = 1;
	GPIOB->MODER.p5 = 1;
	GPIOB->MODER.p6 = 1;
	GPIOB->MODER.p7 = 1;
	GPIOB->MODER.p8 = 1;
	GPIOB->MODER.p9 = 1;
	GPIOB->MODER.p14 = 1;

	GPIOA->OTYPER.p5 = 0;
	GPIOA->OTYPER.p8 = 0;
	GPIOA->OTYPER.p9 = 0;
	GPIOA->OTYPER.p10 = 0;
	GPIOA->OTYPER.p13 = 0;
	GPIOF->OTYPER.p0 = 0;
	GPIOF->OTYPER.p1 = 0;
	GPIOF->OTYPER.p6 = 0;
	GPIOF->OTYPER.p7 = 0;
	GPIOB->OTYPER.p0 = 0;
	GPIOB->OTYPER.p1 = 0;
	GPIOB->OTYPER.p2 = 0;
	GPIOB->OTYPER.p3 = 0;
	GPIOB->OTYPER.p4 = 0;
	GPIOB->OTYPER.p5 = 0;
	GPIOB->OTYPER.p6 = 0;
	GPIOB->OTYPER.p7 = 0;
	GPIOB->OTYPER.p8 = 0;
	GPIOB->OTYPER.p9 = 0;
	GPIOB->OTYPER.p14 = 0;

	GPIOA->OSPEEDR.p5 = 0;
	GPIOA->OSPEEDR.p8 = 0;
	GPIOA->OSPEEDR.p9 = 0;
	GPIOA->OSPEEDR.p10 = 0;
	GPIOA->OSPEEDR.p13 = 0;
	GPIOF->OSPEEDR.p0 = 0;
	GPIOF->OSPEEDR.p1 = 0;
	GPIOF->OSPEEDR.p6 = 0;
	GPIOF->OSPEEDR.p7 = 0;
	GPIOB->OSPEEDR.p0 = 0;
	GPIOB->OSPEEDR.p1 = 0;
	GPIOB->OSPEEDR.p2 = 3;
	GPIOB->OSPEEDR.p3 = 0;
	GPIOB->OSPEEDR.p4 = 0;
	GPIOB->OSPEEDR.p5 = 0;
	GPIOB->OSPEEDR.p6 = 0;
	GPIOB->OSPEEDR.p7 = 0;
	GPIOB->OSPEEDR.p8 = 0;
	GPIOB->OSPEEDR.p9 = 0;
	GPIOB->OSPEEDR.p14 = 0;

	GPIOA->PUPDR.p5 = 0;
	GPIOA->PUPDR.p8 = 0;
	GPIOA->PUPDR.p9 = 0;
	GPIOA->PUPDR.p10 = 0;
	GPIOA->PUPDR.p13 = 0;
	GPIOF->PUPDR.p0 = 0;
	GPIOF->PUPDR.p1 = 0;
	GPIOF->PUPDR.p6 = 0;
	GPIOF->PUPDR.p7 = 0;
	GPIOB->PUPDR.p0 = 0;
	GPIOB->PUPDR.p1 = 0;
	GPIOB->PUPDR.p2 = 0;
	GPIOB->PUPDR.p3 = 0;
	GPIOB->PUPDR.p4 = 0;
	GPIOB->PUPDR.p5 = 0;
	GPIOB->PUPDR.p6 = 0;
	GPIOB->PUPDR.p7 = 0;
	GPIOB->PUPDR.p8 = 0;
	GPIOB->PUPDR.p9 = 0;
	GPIOB->PUPDR.p14 = 0;

	//Input mode
	GPIOA->MODER.p14 = 0;
	GPIOA->MODER.p15 = 0;
	GPIOD->MODER.p8 = 0;

	GPIOA->OSPEEDR.p14 = 0;
	GPIOA->OSPEEDR.p15 = 0;
	GPIOD->OSPEEDR.p8 = 0;

	GPIOA->PUPDR.p14 = 1;
	GPIOA->PUPDR.p15 = 1;
	GPIOD->PUPDR.p8 = 1;
}

int main() {

	

}
