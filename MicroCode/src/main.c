
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

	RCC->CFGR.PLLXTPRE = 0; // Set HSE prediv to 1
	RCC->CFGR.PLLSRC = 1; // Set PLL source to HSE/PREDIV
	RCC->CFGR.PLLMUL = 0xA; // Set PLL multiplier to 12 (48MHz)

	RCC->CR.HSEON = 1; //Enable HSE

	while (RCC->CR.HSERDY != 0); //Wait for HSE

	RCC->CR.PLLON = 1; // Enable PLL

	while (RCC->CR.PLLRDY != 1); // Wait for PLL ready

	RCC->CFGR.USBPRE = 1; 
	RCC->CFGR.SDPRE = 0b11111; // SDADC division factor 48 (1MHz)
	RCC->CFGR.PPRE1 = 0b100; // Set APB1 prescaler. AHB / 2 (24MHz)
	RCC->CFGR.SW = 0b10; // Set PLL as system clock source
	RCC->CR.HSION = 0;

	// CLock enable
	// GPIO
	RCC->AHBENR.IOPAEN = 1;
	RCC->AHBENR.IOPBEN = 1;
	RCC->AHBENR.IOPDEN = 1;
	RCC->AHBENR.IOPEEN = 1;
	RCC->AHBENR.IOPFEN = 1;

	//SDADC
	RCC->APB2ENR.SDADC1EN = 1;
	RCC->APB2ENR.SDADC2EN = 1;

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

int main() {

	

}
