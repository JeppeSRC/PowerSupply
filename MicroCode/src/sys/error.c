#include <core/def.h>
#include <sys/registers/registers.h>
#include <sys/time.h>
#include <core/driver/display.h>

void Error(uint16 period) {
	DisplayPrint(0x40, "FAIL!!!!");
}

void NMI_Handler() {
	DisplayPrint(0x40, "NMI Error");
}

void HardFault_Handler() {
	DisplayPrint(0x40, "Hard Fault");
}

void MMFault_Handler() {
	DisplayPrint(0x40, "MM Fault");
}

void BusFault_Handler() {
	DisplayPrint(0x40, "Bus Fault");
}

void UsageFault_Handler() {
	DisplayPrint(0x40, "Usage Fault");
}
