#include "display.h"
#include <sys/time.h>
#include <core/string.h>

/*	Device			Port			PhysicalPin
	Display_RS		PA13			34
	Display_RW		PF6				35
	Display_E		PF7				36
	Display_D4		PA14			37
	Display_D5		PA15			38
	Display_D6		PB3				39
	Display_D7		PB4				40
 */

#define ODRA_MASK 0x1FFFFFFF 
#define ODRB_MASK 0xFFFFFFE7
#define ODRF_MASK 0xFFFFFF3F

/*instCode format:
	0:7	instruction
	8	RW
	9	RS
*/

void ExecuteCommand(uint32 instCode) {
	uint32 odra = GPIOA->ODR & ODRA_MASK;
	uint32 odrb = GPIOB->ODR & ODRB_MASK;
	uint32 odrf = GPIOA->ODR & ODRF_MASK;

	//Sets RS, RW and high nibble of instruction
	GPIOA->ODR = (odra |= ((instCode & 0x200) << 4)) | ((instCode & 0x30) << 10); //Sets RS, D4 and D5
	GPIOB->ODR = odrb | ((instCode & 0xC0) >> 3); //Sets D6 and D7
	GPIOF->ODR = odrf | ((instCode & 0x100) >> 2); //Sets RW

	//Toggle E
	GPIOF->ODR ^= 0x80;
	DelayMicros(1);
	GPIOF->ODR ^= 0x80;
	
	//Sets low nibble of instruction
	GPIOA->ODR = odra | ((instCode & 0x3) << 14); //Sets D4 and D5
	GPIOB->ODR = odrb | ((instCode & 0xC) << 1); //Sets D6 and D7

	//Toggle E
	GPIOF->ODR ^= 0x80;
	DelayMicros(1);
	GPIOF->ODR ^= 0x80;
}

void WaitBusy() {
	
}

void ClearDisplay() {

}

void ReturnHome() {

}

void SetDDRAMAddress(uint8 address) {

}

void Print(const char* string) {

}

void InitializeDisplay() {

}

void DisplayPrint(uint8 address, const char* string) {
	SetDDRAMAddress(address);
	Print(string);
}
