#include "display.h"
#include <sys/time.h>
#include <core/string.h>

/*	Device			Port			PhysicalPin
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


void WaitBusy() {
	GPIOB->MODER.p14 = 0;

	struct GPIOx_ODR* odr = &GPIOB->ODR;

	odr->p = 0x2;

	do {
		DelayMicros(10);

		odr->p2 = 1;
		DelayMicros(1);
	} while (GPIOB->IDR.p14);

	GPIOB->MODER.p14 = 1;
}

void ClearDisplay() {
	//WaitBusy();

	GPIOB->ODR.p = 0x8;
	GPIOB->ODR.p2 = 1;
	DelayMicros(1);
	GPIOB->ODR.p2 = 0;
	DelayMillis(2);
}

void ReturnHome() {
	//WaitBusy();

	GPIOB->ODR.p = 0x10;
	GPIOB->ODR.p2 = 1;
	DelayMicros(1);
	GPIOB->ODR.p2 = 0;
	DelayMillis(2);
}

void SetDDRAMAddress(uint8 address) {
	//WaitBusy();

	GPIOB->ODR.p = ((uint16)address & 0x7F) << 3;
	GPIOB->ODR.p14 = 1;
	
	GPIOB->ODR.p2 = 1;
	DelayMicros(1);
	GPIOB->ODR.p2 = 0;
	DelayMicros(50);
}

void Print(const char* string) {
	uint32 len = strlen(string);

	for (uint32 i = 0; i < len; i++) {
		uint16 data = (uint16)(string[i]) << 3;
		data |= ((data & 0x400) >> 4) | 1;

		GPIOB->ODR.p = data;
		DelayMicros(1);
		GPIOB->ODR.p2 = 0;
		DelayMicros(50);
	}
}

void InitializeDisplay() {
	DelayMillis(100);
	//WaitBusy();

	// Function set
	GPIOB->ODR.p = 0b111100000;
	GPIOB->ODR.p2 = 1;
	DelayMicros(1);
	GPIOB->ODR.p2 = 0;
	DelayMicros(50);

	// Entry mode set
	GPIOB->ODR.p = 0b10000;
	GPIOB->ODR.p2 = 1;
	DelayMicros(1);
	GPIOB->ODR.p2 = 0;
	DelayMicros(50);

	// Display on/off
	GPIOB->ODR.p = 0b1100000;
	GPIOB->ODR.p2 = 1;
	DelayMicros(1);
	GPIOB->ODR.p2 = 0;
	DelayMicros(50);
}

void DisplayPrint(uint8 address, const char* string) {
	SetDDRAMAddress(address);
	Print(string);
}
