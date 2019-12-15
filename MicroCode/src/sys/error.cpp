#include <core/def.h>
#include <sys/registers/registers.h>
#include <sys/time.h>
#include <core/driver/display.h>
#include "memory.h"
#include "sys.h"
#include <core/string.h>

void Error(uint16 period) {
	Display::Print(0x40, "FAIL!!!!");
}

extern "C" {

void NMI_Handler() {
	Display::Print(0x40, "NMI Error");
}

void HardFault_Handler() {
	Display::Clear();
	Display::Print(0x0, "Hard Fault");

	if (HFSR & 0x2) {
		Display::Print(0x40, "VECTTBL");
	} else if (HFSR & 0x40000000) {

		char tmp[17] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };

		if (CFSR & 0x2000000) { //Division by 0
			Display::Print(0x40, "DIVBYZERO");
		} else if (CFSR & 0x1000000) { // Unaligned memory access
			Display::Print(0x40, "UNALIGNED");
		} else if (CFSR & 0x80000) { // No co-processor
			Display::Print(0x40, "NOCP");
		} else if (CFSR & 0x40000) { //Invalid PC
			Display::Print(0x40, "INVPC");
		} else if (CFSR & 0x20000) { // Invalid state
			Display::Print(0x40, "INVSTATE");
		} else if (CFSR & 0x10000) { // Undefined instruction
			Display::Print(0x40, "UNDEFINSTR");
		} else if (CFSR & 0x8000) { // Bus fault with valid address
			Display::Print(0x40, "BFARVALID");
			DelayMillis(1500);
			Display::Print(0x40, "An address");
		} else if (CFSR & 0x2000) { // Bus fault floating point lazy state prevention
			Display::Print(0x40, "LSPERR");
		} else if (CFSR & 0x1000) { // Stacking exception
			Display::Print(0x40, "STKERR");
		} else if (CFSR & 0x800) { // Unstacking exception
			Display::Print(0x40, "UNSTKERR");
		} else if (CFSR & 0x400) { // Imprecise data bus error
			Display::Print(0x40, "IMPRECISERR");
		} else if (CFSR & 0x200) { // Precise data bus error
			Display::Print(0x40, "PRECISERR");
		} else if (CFSR & 0x100) { //Instruction bus error
			Display::Print(0x40, "IBUSERR");
		} else if (CFSR & 0x80) { // Memory management error with valid address
			Display::Print(0x40, "MMARVALID");
			DelayMillis(1500);
			//sprintf(tmp, 16, "ADDR: 0x%8H", BFAR);
			Display::Print(0x40, tmp);
		} else if (CFSR & 0x20) { //  A MemManage fault occurred during floating-point lazy state preservation 
			Display::Print(0x40, "MLSPERR");
		} else if (CFSR & 0x10) { //  Memory manager fault on stacking for exception entry
			Display::Print(0x40, "MSTKERRO");
		} else if (CFSR & 0x8) { //  Memory manager fault on unstacking for a return from exception. 
			Display::Print(0x40, "MUNSTKERR");
		} else if (CFSR & 0x2) { // Data access violation flag with valid address
			Display::Print(0x40, "DACCVIOL");
		} else if (CFSR & 0x1) { // Instruction access violation flag
			Display::Print(0x40, "IACCVIOL");
		}

	} else {
		Display::Print(0x40, "Unkown");
	}

	asm("b .");
}

void MMFault_Handler() {
	Display::Print(0x40, "MM Fault");
}

void BusFault_Handler() {
	Display::Print(0x40, "Bus Fault");
}

void UsageFault_Handler() {
	Display::Print(0x40, "Usage Fault");
}

}