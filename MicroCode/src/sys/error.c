#include <core/def.h>
#include <sys/registers/registers.h>
#include <sys/time.h>
#include <core/driver/display.h>
#include "memory.h"
#include "sys.h"
#include <core/string.h>

void Error(uint16 period) {
	DisplayPrint(0x40, "FAIL!!!!");
}

void NMI_Handler() {
	DisplayPrint(0x40, "NMI Error");
}

void HardFault_Handler() {
	DisplayClear();
	DisplayPrint(0x0, "Hard Fault");

	if (HFSR & 0x2) {
		DisplayPrint(0x40, "VECTTBL");
	} else if (HFSR & 0x40000000) {

		char tmp[17] = { 0 };
//		memset(tmp, 0, 17);

		if (CFSR & 0x2000000) { //Division by 0
			DisplayPrint(0x40, "DIVBYZERO");
		} else if (CFSR & 0x1000000) { // Unaligned memory access
			DisplayPrint(0x40, "UNALIGNED");
		} else if (CFSR & 0x80000) { // No co-processor
			DisplayPrint(0x40, "NOCP");
		} else if (CFSR & 0x40000) { //Invalid PC
			DisplayPrint(0x40, "INVPC");
		} else if (CFSR & 0x20000) { // Invalid state
			DisplayPrint(0x40, "INVSTATE");
		} else if (CFSR & 0x10000) { // Undefined instruction
			DisplayPrint(0x40, "UNDEFINSTR");
		} else if (CFSR & 0x8000) { // Bus fault with valid address
			DisplayPrint(0x40, "BFARVALID");
			DelayMillis(1500);
			DisplayPrint(0x40, "An address");
		} else if (CFSR & 0x2000) { // Bus fault floating point lazy state prevention
			DisplayPrint(0x40, "LSPERR");
		} else if (CFSR & 0x1000) { // Stacking exception
			DisplayPrint(0x40, "STKERR");
		} else if (CFSR & 0x800) { // Unstacking exception
			DisplayPrint(0x40, "UNSTKERR");
		} else if (CFSR & 0x400) { // Imprecise data bus error
			DisplayPrint(0x40, "IMPRECISERR");
		} else if (CFSR & 0x200) { // Precise data bus error
			DisplayPrint(0x40, "PRECISERR");
		} else if (CFSR & 0x100) { //Instruction bus error
			DisplayPrint(0x40, "IBUSERR");
		} else if (CFSR & 0x80) { // Memory management error with valid address
			DisplayPrint(0x40, "MMARVALID");
			DelayMillis(1500);
			//sprintf(tmp, 16, "ADDR: 0x%8H", BFAR);
			DisplayPrint(0x40, tmp);
		} else if (CFSR & 0x20) { //  A MemManage fault occurred during floating-point lazy state preservation 
			DisplayPrint(0x40, "MLSPERR");
		} else if (CFSR & 0x10) { //  Memory manager fault on stacking for exception entry
			DisplayPrint(0x40, "MSTKERRO");
		} else if (CFSR & 0x8) { //  Memory manager fault on unstacking for a return from exception. 
			DisplayPrint(0x40, "MUNSTKERR");
		} else if (CFSR & 0x2) { // Data access violation flag with valid address
			DisplayPrint(0x40, "DACCVIOL");
		} else if (CFSR & 0x1) { // Instruction access violation flag
			DisplayPrint(0x40, "IACCVIOL");
		}

	} else {
		DisplayPrint(0x40, "Unkown");
	}

	asm("b .");
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
