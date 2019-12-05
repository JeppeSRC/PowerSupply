#include <sys/setup.h>
#include <sys/time.h>
#include <core/driver/display.h>
#include <sys/memory.h>
#include <core/string.h>
#include <sys/sys.h>

#define DEBUG 1

#define ATTRIB_OUTPUT 0x01
#define ATTRIB_CLIMIT 0x02

volatile uint8 attributes;

void EXTI2TS_Handler() { // Switch (Encoder 0) output on off toggle; Interrupt 8
	attributes ^= ATTRIB_OUTPUT;

	EXTI_PR |= 0x4;
}

void EXTI3_Handler() { //Swicth (Encoder 1); Interrupt 9
	EXTI_PR |= 0x8;
}

char line1Buffer[17] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };
char line2Buffer[17] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };

int main() {
	Initialize();

	DisplayPrint(0x0, "ABCDEF");


	sprintf(line1Buffer, 16, "Test %U");

	DisplayPrint(0x40, line1Buffer);

	asm("b .");
}
