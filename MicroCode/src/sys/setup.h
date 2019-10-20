#pragma once

/*	Device			Port			PhysicalPin
	ENC0_A			PA0				10
	ENC0_B			PA1				11
	ENC0_SW			PA2				12
	ENC1_A			PB6				42
	ENC1_B			PB7				43
	ENC1_SW			PA3				13
	----------------------------------
	Iset			PA5				15 DAC1_CH2
	Vset			PA6				16 DAC2_CH1
	----------------------------------
	Iread			PE9				22
	Vread			PE8				21
	----------------------------------
	CLIM			PA4				14
	.---------------------------------
	OUTPUT_ON		PB8				45
	C_LIMIT			PB9				46
	----------------------------------
	USB_D-			PA11			32
	USB_D+			PA12			33
	----------------------------------
	Display_RS		PA13			34
	Display_RW		PF6				35
	Display_E		PF7				36
	Display_D4		PA14			37
	Display_D5		PA15			38
	Display_D6		PB3				39
	Display_D7		PB4				40
 */


 // AHB		48 Mhz
 // APB2	48 Mhz
 // APB1	24 Mhz
 // SDADC	6  Mhz

 /* Display Format 2x16

	 ------------------
	 |SET 00.00V 0.00A|
	 |OUT 00.00V 0.00A|
	 ------------------
 */

#include <sys/registers/registers.h>

void Initialize();
