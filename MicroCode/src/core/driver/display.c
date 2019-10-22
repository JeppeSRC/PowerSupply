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

#define MAKE_INST(rs, rw, data) ((rs << 9) | (rw << 8) | data)

#define ODRA_MASK 0x1FFFFFFF 
#define ODRB_MASK 0xFFFFFFE7
#define ODRF_MASK 0xFFFFFF3F

/*instCode format:
	0:7	instruction
	8	RW
	9	RS
*/

void ExecuteCommand(uint32 instCode) {
	uint32 odra = GPIOA_ODR & ODRA_MASK;
	uint32 odrb = GPIOB_ODR & ODRB_MASK;
	uint32 odrf = GPIOA_ODR & ODRF_MASK;

	//Sets RS, RW and high nibble of instruction
	GPIOA_ODR = (odra |= ((instCode & 0x200) << 4)) | ((instCode & 0x30) << 10); //Sets RS, D4 and D5
	GPIOB_ODR = odrb | ((instCode & 0xC0) >> 3); //Sets D6 and D7
	GPIOF_ODR = odrf | ((instCode & 0x100) >> 2); //Sets RW

	//Toggle E
	GPIOF_ODR ^= 0x80;
	DelayMicros(1);
	GPIOF_ODR ^= 0x80;
	
	//Sets low nibble of instruction
	GPIOA_ODR = odra | ((instCode & 0x3) << 14); //Sets D4 and D5
	GPIOB_ODR = odrb | ((instCode & 0xC) << 1); //Sets D6 and D7

	//Toggle E
	GPIOF_ODR ^= 0x80;
	DelayMicros(1);
	GPIOF_ODR ^= 0x80;
}

uint8 ReadResult() {
	GPIOA_MODER &= 0x0FFFFFFF; // Set D4 and D5 to input
	GPIOB_MODER &= 0xFFFFFC3F; // Set D6 and D7 to input

	uint8 res = 0;

	//Toggle E
	GPIOF_ODR ^= 0x80;
	DelayMicros(1);
	res = ((GPIOB_IDR & 0xE7) << 3) | ((GPIOA_IDR & 0xC0000000) >> 10); // High nibble
	GPIOF_ODR ^= 0x80;

	DelayMicros(1);

	GPIOF_ODR ^= 0x80;
	DelayMicros(1);
	res |= ((GPIOB_IDR & 0xE7) >> 1) | ((GPIOA_IDR & 0xC0000000) >> 14); // Low nibble
	GPIOF_ODR ^= 0x80;

	GPIOA_MODER |= 0x50000000; //Set D4 and D5 to output
	GPIOB_MODER |= 0x140; //Set D6 and D7 to output

	return res;
}

void WaitBusy() {
	ExecuteCommand(MAKE_INST(0, 1, 0));
	DelayMicros(10);

	while (ReadResult() & 0x80) {
		DelayMicros(10);
	}
}

void DisplayClear() {
	ExecuteCommand(MAKE_INST(0, 0, 1));
	DelayMillis(2);
}

void ReturnHome() {
	ExecuteCommand(MAKE_INST(0, 0, 2));
	DelayMillis(2);
}

void SetDDRAMAddress(uint8 address) {
	ExecuteCommand(MAKE_INST(0, 0, 0x80 | (address & 0x7F)));
	DelayMicros(40);
}

void Print(const char* string) {
	uint32 len = strlen(string);

	for (uint32 i = 0; i < len; i++) {
		ExecuteCommand(MAKE_INST(1, 0, string[i]));
		DelayMicros(40);
	}
}

void InitializeDisplay() {
	DelayMillis(100);
	GPIOB_ODR &= ODRB_MASK;// Set D6 and D7 low
	GPIOF_ODR &= ODRF_MASK;// Set RW and E low

	uint32 odra = GPIOA_ODR & ODRA_MASK;

	GPIOA_ODR = odra | 0x80000000; // Set D4 low and D5 high to change interface to 4bit

	//Toggle E
	GPIOF_ODR ^= 0x80;
	DelayMicros(1);
	GPIOF_ODR ^= 0x80;

	DelayMillis(50);
	ExecuteCommand(MAKE_INST(0, 0, 0x2C)); // Function set: Set num lines to 2 and Fonts size 5x11
	DelayMicros(50);

	ExecuteCommand(MAKE_INST(0, 0, 6)); // Entry mode: Set dram to increment without display shift
	DelayMicros(50);

	DisplayControl(1, 0, 0);
}

void DisplayControl(uint8 displayOn, uint8 cursorOn, uint8 blinkOn) {
	ExecuteCommand(MAKE_INST(0, 0, 0x8 | ((displayOn & 0x1) << 2) | ((cursorOn & 0x1) << 1) | (blinkOn & 0x1)));
	DelayMicros(40);
}

void DisplayPrint(uint8 address, const char* string) {
	SetDDRAMAddress(address);
	Print(string);
}
