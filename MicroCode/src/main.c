#include <sys/setup.h>
#include <sys/time.h>
#include <core/driver/display.h>
#include <sys/memory.h>
#include <core/string.h>

#define DEBUG 1

volatile uint16 vSet = 0; //Variable used by the encoders
volatile uint16 cSet = 0; //Variable used by the encoders

void EXTI0_Handler() { //Encoder 0 (Voltage)
	vSet += (GPIOA_IDR & IDR(1, 1)) >> 1;

	if (vSet > 2000) vSet = 2000;
}

void EXTI5_9_Handler() { //Encoder 1 (Current)
	cSet += (GPIOB_IDR & IDR(7, 1)) >> 7;

	if (cSet > 400) cSet = 400;
}

#define ATTRIB_OUTPUT 0x01
#define ATTRIB_CLIMIT 0x02

volatile uint8 attributes;

void EXTI2TS_Handler() { // Switch (Encoder 0) output on off toggle
	attributes ^= ATTRIB_OUTPUT;
}

void EXTI3_Handler() { //Swicth (Encoder 1)

}

char line1Buffer[17];
char line2Buffer[17];

int main() {
	Initialize();
	
	DisplayPrint(0, "Hello World!");
	DisplayPrint(0x40, "It Works!");

	asm("b .");
	/*
	DisplayControl(1, 0, 0);

#if DEBUG
	DisplayPrint(0, "Stating....");
	DisplayPrint(0x40, "Debug Mode");
	Delay(2);
#endif

	DisplayClear();

	while (1) {
		DelayMillis(20); 

		if (attributes & ATTRIB_OUTPUT) {
			DAC1_DHR12R2 = vSet * 2;
			DAC2_DHR12R1 = cSet * 5;

			GPIOB_BSRR |= BS(8); // Setting OUTPUT_ON LED ON
		} else {
			DAC1_DHR12R2 = 0;
			DAC2_DHR12R1 = 0;

			GPIOB_BSRR |= BR(8); // Setting OUTPUT_ON LED OFF
		}

		if (GPIOA_IDR & IDR(4, 1)) { // Current is not limited
			GPIOA_BSRR |= BR(4);  //Wrong
		} else { 
			GPIOA_BSRR |= BS(4);
		}

		while (!(SDADC1_ISR & 0x08));
		
		uint16 vRead = (SDADC1_RDATAR >> 4) >> 1;

		while (!(SDADC2_ISR & 0x08));

		uint16 cRead = (SDADC2_RDATAR >> 4) / 5;

		memset(line1Buffer, 0, sizeof(line1Buffer));
		memset(line2Buffer, 0, sizeof(line2Buffer));

		sprintf(line1Buffer, sizeof(line1Buffer), "SET %u.%uV %u.%uA", vSet / 100, vSet % 100, cSet / 100, cSet % 100);
		sprintf(line2Buffer, sizeof(line2Buffer), "OUT %u.%uV %u.%uA", vRead / 100, vRead % 100, cRead / 100, cRead % 100);

		DisplayPrint(0, line1Buffer);
		DisplayPrint(0x40, line2Buffer);
	}
	*/
}
