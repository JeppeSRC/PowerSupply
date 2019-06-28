
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

#include <sys/registers/registers.h>

void setup() {
	//Clock setup
	RCC->CR.PLLON = 0; // Disable PLL

	while (RCC->CR.PLLRDY != 0); // Wait for PLL ready

	RCC->CFGR.PLLSRC = 0; // Set PLL source to HSI/2
	RCC->CFGR.PLLMUL = 3; // Set PLL multiplier to 5

	RCC->CR.PLLON = 1; // Enable PLL
	RCC->CFGR.SW = 2; // Set PLL as system clock source

}

int main() {

	

}
