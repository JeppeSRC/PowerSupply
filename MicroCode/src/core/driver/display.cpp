#include "display.h"
#include <sys/time.h>
#include <core/string.h>
#include <sys/sys.h>
#include <core/driver/usart.h>



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

void Display::ExecuteCommand(uint32 instCode) {
	DisableInterrupts();
	//Set RS, RW and high nibble of instruction
	GPIOA_BSRR = ((instCode & 0x200) << 4) | (((instCode & 0x200) ^ 0x200) << 20) | ((instCode & 0x30) << 10) | (((instCode & 0x30) ^ 0x30) << 26); //Set RS, D4 and D5
	GPIOF_BSRR = ((instCode & 0x100) >> 2) | (((instCode & 0x100) ^ 0x100) << 14); //Set RS
	GPIOB_BSRR = ((instCode & 0xC0) >> 3) | (((instCode & 0xC0) ^ 0xC0) << 13); // Set D6 and D7

	//Toggle E
	GPIOF_BSRR = BS(7);
	DelayMicros(4);
	GPIOF_BSRR = BR(7);

	// set lower nibble of instruction
	GPIOA_BSRR = ((instCode & 0x3) << 14) | (((instCode & 0x3) ^ 0x3) << 30); //Set D4 and D5
	GPIOB_BSRR = ((instCode & 0xC) << 1) | (((instCode & 0xC) ^ 0xC) << 17);

	//Toggle E
	GPIOF_BSRR = BS(7);
	DelayMicros(4);
	GPIOF_BSRR = BR(7);

	EnableInterrupts();
}

uint8 Display::ReadResult() {
	DisableInterrupts();
	GPIOA_MODER &= 0x0FFFFFFF; // Set D4 and D5 to input
	GPIOB_MODER &= 0xFFFFFC3F; // Set D6 and D7 to input

	uint8 res = 0;

	//Toggle E
	GPIOF_ODR ^= ODR(7, 1);
	DelayMicros(4);
	res = ((GPIOB_IDR & 0xE7) << 3) | ((GPIOA_IDR & 0xC0000000) >> 10); // High nibble
	GPIOF_ODR ^= ODR(7, 1);

	DelayMicros(4);

	GPIOF_ODR ^= ODR(7, 1);
	DelayMicros(4);
	res |= ((GPIOB_IDR & 0xE7) >> 1) | ((GPIOA_IDR & 0xC0000000) >> 14); // Low nibble
	GPIOF_ODR ^= ODR(7, 1);

	GPIOA_MODER |= 0x50000000; //Set D4 and D5 to output
	GPIOB_MODER |= 0x140; //Set D6 and D7 to output

	EnableInterrupts();

	return res;
}

void Display::WaitBusy() {
	ExecuteCommand(MAKE_INST(0, 1, 0));
	DelayMicros(10);

	while (ReadResult() & 0x80) {
		DelayMicros(10);
	}
}

void Display::Clear() {
	ExecuteCommand(MAKE_INST(0, 0, 1));
	DelayMillis(2);
}

void Display::SetAddress(uint8 address) {
	ExecuteCommand(MAKE_INST(0, 0, 0x80 | (address & 0x7F)));
	DelayMicros(40);
}

void Display::Initialize() {
	DisableInterrupts();
	GPIOB_ODR &= ODRB_MASK;// Set D6 and D7 low
	GPIOF_ODR &= ODRF_MASK;// Set RW and E low

	GPIOA_ODR = (GPIOA_ODR & ODRA_MASK) | ODR(15, 1); // Set D4 low and D5 high to change interface to 4bit

	//Toggle E
	GPIOF_BSRR = BS(7);
	DelayMicros(4);
	GPIOF_BSRR = BR(7);
	DelayMicros(100);

	ExecuteCommand(MAKE_INST(0, 0, 0x2C)); // Function set: Set num lines to 2 and Fonts size 5x11
	DelayMicros(100);

	ExecuteCommand(MAKE_INST(0, 0, 0x2C)); // Function set: Set num lines to 2 and Fonts size 5x11
	DelayMicros(100);

	Control(1, 0, 0);

	Clear();

	ExecuteCommand(MAKE_INST(0, 0, 6)); // Entry mode: Set dram to increment without display shift
	DelayMillis(50);

	EnableInterrupts();

	USART::Print("Display Initialized");
}

void Display::Control(uint8 displayOn, uint8 cursorOn, uint8 blinkOn) {
	ExecuteCommand(MAKE_INST(0, 0, 0x8 | ((displayOn & 0x1) << 2) | ((cursorOn & 0x1) << 1) | (blinkOn & 0x1)));
	DelayMicros(100);
}

void Display::Print(uint8 address, const char* const string) {
	if (address != 0xFF) SetAddress(address);
	uint32 length = strlen(string);

	for (uint32 i = 0; i < length; i++) {
		Print(0xFF, string[i]);
	}
}

void Display::Print(uint8 address, const char* const string, uint8 length) {
	if (address != 0xFF) SetAddress(address);

	for (uint8 i = 0; i < length; i++) {
		Print(0xFF, string[i]);
	}
}

void Display::Print(uint8 address, const char c) {
	if (address != 0xFF) SetAddress(address);

	ExecuteCommand(MAKE_INST(1, 0, c));
	DelayMicros(40);
}


void Display::Printf(uint8 address, const char* const format, ...) {
	char tmpBuffer[17];
	va_list list;
	va_start(list, format);

	uint8 num = vsprintf(tmpBuffer, 16, format, list);

	va_end(list);

	Print(address, tmpBuffer, num);
}