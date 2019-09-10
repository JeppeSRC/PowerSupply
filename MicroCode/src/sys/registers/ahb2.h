#ifndef SYS_REGISTERS_AHB2_H_
#define SYS_REGISTERS_AHB2_H_

#include <core/def.h>



/*
 * GPIO port mode:
 *
 * 		00: Input Mode
 * 		01: General purpose output
 * 		10: Alternate function
 * 		11: Analog
 *
 */

#define GPIO_MODER(x, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15) x->MODER.p = (p15 << 30) | (p14 << 28) | (p13 << 26) | (p12 << 24) | (p11 << 22) | (p10 << 20) | (p9 << 18) | (p8 << 16) | (p7 << 14) | (p6 << 12) | (p5 << 10) | (p4 << 8) | (p3 << 6) | (p2 << 4) | (p1 << 2) | p0; 
#define GPIO_OSPEEDR(x, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15) x->OSPEEDR.p = (p15 << 30) | (p14 << 28) | (p13 << 26) | (p12 << 24) | (p11 << 22) | (p10 << 20) | (p9 << 18) | (p8 << 16) | (p7 << 14) | (p6 << 12) | (p5 << 10) | (p4 << 8) | (p3 << 6) | (p2 << 4) | (p1 << 2) | p0; 
#define GPIO_PUPDR(x, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15) x->PUPDR.p = (p15 << 30) | (p14 << 28) | (p13 << 26) | (p12 << 24) | (p11 << 22) | (p10 << 20) | (p9 << 18) | (p8 << 16) | (p7 << 14) | (p6 << 12) | (p5 << 10) | (p4 << 8) | (p3 << 6) | (p2 << 4) | (p1 << 2) | p0; 

struct GPIOx_MODER {
	union {
		struct {
			uint8 p0 : 2;
			uint8 p1 : 2;
			uint8 p2 : 2;
			uint8 p3 : 2;
			uint8 p4 : 2;
			uint8 p5 : 2;
			uint8 p6 : 2;
			uint8 p7 : 2;
	    	uint8 p8 : 2;
			uint8 p9 : 2;
			uint8 p10 : 2;
			uint8 p11 : 2;
			uint8 p12 : 2;
			uint8 p13 : 2;
			uint8 p14 : 2;
			uint8 p15 : 2;
		};

		uint32 p : 32;
	};

};

/*
 *	GPIO port output type:
 *
 *		0: Output push-pull
 *		1: Open drain
 *
 */

struct GPIOx_OTYPER {
	union {
		struct {
			uint8 p0 : 1;
			uint8 p1 : 1;
			uint8 p2 : 1;
			uint8 p3 : 1;
			uint8 p4 : 1;
			uint8 p5 : 1;
			uint8 p6 : 1;
			uint8 p7 : 1;
			uint8 p8 : 1;
			uint8 p9 : 1;
			uint8 p10 : 1;
			uint8 p11 : 1;
			uint8 p12 : 1;
			uint8 p13 : 1;
			uint8 p14 : 1;
			uint8 p15 : 1;
		};

		uint32 p : 16;
	};
	uint32 reserved : 16;
};

/*
 * GPIO port output speed:
 *
 * 		x0: Low speed
 * 		01: Medium speed
 * 		11: High speed
 */

struct GPIOx_OSPEEDR {
	union {
		struct {
			uint8 p0 : 2;
			uint8 p1 : 2;
			uint8 p2 : 2;
			uint8 p3 : 2;
			uint8 p4 : 2;
			uint8 p5 : 2;
			uint8 p6 : 2;
			uint8 p7 : 2;
			uint8 p8 : 2;
			uint8 p9 : 2;
			uint8 p10 : 2;
			uint8 p11 : 2;
			uint8 p12 : 2;
			uint8 p13 : 2;
			uint8 p14 : 2;
			uint8 p15 : 2;
		};

		uint32 p : 32;
	};
};

/*
 * GPIO port pull-up/pull-down:
 *
 *		00: None
 *		01: Pull-up
 *		10: Pull-down
 *		11: Reserved
 */

struct GPIOx_PUPDR {
	union {
		struct {
			uint8 p0 : 2;
			uint8 p1 : 2;
			uint8 p2 : 2;
			uint8 p3 : 2;
			uint8 p4 : 2;
			uint8 p5 : 2;
			uint8 p6 : 2;
			uint8 p7 : 2;
			uint8 p8 : 2;
			uint8 p9 : 2;
			uint8 p10 : 2;
			uint8 p11 : 2;
			uint8 p12 : 2;
			uint8 p13 : 2;
			uint8 p14 : 2;
			uint8 p15 : 2;
		};

		uint32 p : 32;
	};

};

/*
 * GPIO port input data:
 *
 * 		Read-only, port input data
 */

struct GPIOx_IDR {
	union {
		struct {
			uint8 p0 : 1;
			uint8 p1 : 1;
			uint8 p2 : 1;
			uint8 p3 : 1;
			uint8 p4 : 1;
			uint8 p5 : 1;
			uint8 p6 : 1;
			uint8 p7 : 1;
			uint8 p8 : 1;
			uint8 p9 : 1;
			uint8 p10 : 1;
			uint8 p11 : 1;
			uint8 p12 : 1;
			uint8 p13 : 1;
			uint8 p14 : 1;
			uint8 p15 : 1;
		};

		uint32 p : 16;
	};
	uint32 reserved : 16;

};

/*
 * GPIO port ouput data:
 *
 * 		Port output data
 */

struct GPIOx_ODR {
	union {
		struct {
			uint8 p0 : 1;
			uint8 p1 : 1;
			uint8 p2 : 1;
			uint8 p3 : 1;
			uint8 p4 : 1;
			uint8 p5 : 1;
			uint8 p6 : 1;
			uint8 p7 : 1;
			uint8 p8 : 1;
			uint8 p9 : 1;
			uint8 p10 : 1;
			uint8 p11 : 1;
			uint8 p12 : 1;
			uint8 p13 : 1;
			uint8 p14 : 1;
			uint8 p15 : 1;
		};

		uint32 p : 16;
	};
	uint32 reserved : 16;
};

/*
 *	GPIO port set/reset register:
 *
 *		ps = port set
 *		pr = port reset
 */

struct GPIOx_BSRR {
	union {
		struct {
			uint8 ps0 : 1;
			uint8 ps1 : 1;
			uint8 ps2 : 1;
			uint8 ps3 : 1;
			uint8 ps4 : 1;
			uint8 ps5 : 1;
			uint8 ps6 : 1;
			uint8 ps7 : 1;
			uint8 ps8 : 1;
			uint8 ps9 : 1;
			uint8 ps10 : 1;
			uint8 ps11 : 1;
			uint8 ps12 : 1;
			uint8 ps13 : 1;
			uint8 ps14 : 1;
			uint8 ps15 : 1;
		};

		uint16 ps;
	};

	union {
		struct {
			uint8 pr0 : 1;
			uint8 pr1 : 1;
			uint8 pr2 : 1;
			uint8 pr3 : 1;
			uint8 pr4 : 1;
			uint8 pr5 : 1;
			uint8 pr6 : 1;
			uint8 pr7 : 1;
			uint8 pr8 : 1;
			uint8 pr9 : 1;
			uint8 pr10 : 1;
			uint8 pr11 : 1;
			uint8 pr12 : 1;
			uint8 pr13 : 1;
			uint8 pr14 : 1;
			uint8 pr15 : 1;
		};

		uint16 pr;
	};
};

#define AF0  0x00
#define AF1  0x01
#define AF2  0x02
#define AF3  0x03
#define AF4  0x04
#define AF5  0x05
#define AF6  0x06
#define AF7  0x07
#define AF8  0x08
#define AF9  0x09
#define AF10 0x0A
#define AF11 0x0B
#define AF12 0x0C
#define AF13 0x0D
#define AF14 0x0E
#define AF15 0x0F

/*
 * GPIO alternate functions
 *
 * 		This struct contains all 16 ports and by that merges AFRL and AFRH
 */

struct GPIOx_AFR {
	uint8 p0 : 4;
	uint8 p1 : 4;
	uint8 p2 : 4;
	uint8 p3 : 4;
	uint8 p4 : 4;
	uint8 p5 : 4;
	uint8 p6 : 4;
	uint8 p7 : 4;
	uint8 p8 : 4;
	uint8 p9 : 4;
	uint8 p10 : 4;
	uint8 p11 : 4;
	uint8 p12 : 4;
	uint8 p13 : 4;
	uint8 p14 : 4;
	uint8 p15 : 4;
};


struct GPIOx {
	struct GPIOx_MODER MODER;
	struct GPIOx_OTYPER OTYPER;
	struct GPIOx_OSPEEDR OSPEEDR;
	struct GPIOx_PUPDR PUPDR;
	struct GPIOx_IDR IDR;
	struct GPIOx_ODR ODR;
	struct GPIOx_BSRR BSRR;
	uint32 lockstuffwhichigivezerofucksabout;
	struct GPIOx_AFR AFR;
	uint32 somethingthatiprobablydontneed;
};


#define GPIOA ((struct GPIOx*)0x48000000)
#define GPIOB ((struct GPIOx*)0x48000400)
#define GPIOC ((struct GPIOx*)0x48000800)
#define GPIOD ((struct GPIOx*)0x48000C00)
#define GPIOE ((struct GPIOx*)0x48001000)
#define GPIOF ((struct GPIOx*)0x48001400)

#endif
