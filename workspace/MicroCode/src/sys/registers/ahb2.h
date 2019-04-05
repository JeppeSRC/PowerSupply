#ifndef SYS_REGISTERS_AHB2_H_
#define SYS_REGISTERS_AHB2_H_

/*
 * GPIO port mode:
 *
 * 		00: Input Mode
 * 		01: General purpose output
 * 		10: Alternate function
 * 		11: Analog
 *
 */

struct GPIOx_MODER {
	union {
		struct {
			unsigned char p0 : 2;
				unsigned char p1 : 2;
				unsigned char p2 : 2;
				unsigned char p3 : 2;
				unsigned char p4 : 2;
				unsigned char p5 : 2;
				unsigned char p6 : 2;
				unsigned char p7 : 2;
				unsigned char p8 : 2;
				unsigned char p9 : 2;
				unsigned char p10 : 2;
				unsigned char p11 : 2;
				unsigned char p12 : 2;
				unsigned char p13 : 2;
				unsigned char p14 : 2;
				unsigned char p15 : 2;
		};

		unsigned int p : 32;
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
			unsigned char p0 : 1;
			unsigned char p1 : 1;
			unsigned char p2 : 1;
			unsigned char p3 : 1;
			unsigned char p4 : 1;
			unsigned char p5 : 1;
			unsigned char p6 : 1;
			unsigned char p7 : 1;
			unsigned char p8 : 1;
			unsigned char p9 : 1;
			unsigned char p10 : 1;
			unsigned char p11 : 1;
			unsigned char p12 : 1;
			unsigned char p13 : 1;
			unsigned char p14 : 1;
			unsigned char p15 : 1;
		};

		unsigned int p : 16;
	};
	unsigned int reserved : 16;
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
			unsigned char p0 : 2;
				unsigned char p1 : 2;
				unsigned char p2 : 2;
				unsigned char p3 : 2;
				unsigned char p4 : 2;
				unsigned char p5 : 2;
				unsigned char p6 : 2;
				unsigned char p7 : 2;
				unsigned char p8 : 2;
				unsigned char p9 : 2;
				unsigned char p10 : 2;
				unsigned char p11 : 2;
				unsigned char p12 : 2;
				unsigned char p13 : 2;
				unsigned char p14 : 2;
				unsigned char p15 : 2;
		};

		unsigned int p : 32;
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
			unsigned char p0 : 2;
				unsigned char p1 : 2;
				unsigned char p2 : 2;
				unsigned char p3 : 2;
				unsigned char p4 : 2;
				unsigned char p5 : 2;
				unsigned char p6 : 2;
				unsigned char p7 : 2;
				unsigned char p8 : 2;
				unsigned char p9 : 2;
				unsigned char p10 : 2;
				unsigned char p11 : 2;
				unsigned char p12 : 2;
				unsigned char p13 : 2;
				unsigned char p14 : 2;
				unsigned char p15 : 2;
		};

		unsigned int p : 32;
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
			unsigned char p0 : 1;
			unsigned char p1 : 1;
			unsigned char p2 : 1;
			unsigned char p3 : 1;
			unsigned char p4 : 1;
			unsigned char p5 : 1;
			unsigned char p6 : 1;
			unsigned char p7 : 1;
			unsigned char p8 : 1;
			unsigned char p9 : 1;
			unsigned char p10 : 1;
			unsigned char p11 : 1;
			unsigned char p12 : 1;
			unsigned char p13 : 1;
			unsigned char p14 : 1;
			unsigned char p15 : 1;
		};

		unsigned int p : 16;
	};
	unsigned int reserved : 16;

};

/*
 * GPIO port ouput data:
 *
 * 		Port output data
 */

struct GPIOx_ODR {
	union {
		struct {
			unsigned char p0 : 1;
			unsigned char p1 : 1;
			unsigned char p2 : 1;
			unsigned char p3 : 1;
			unsigned char p4 : 1;
			unsigned char p5 : 1;
			unsigned char p6 : 1;
			unsigned char p7 : 1;
			unsigned char p8 : 1;
			unsigned char p9 : 1;
			unsigned char p10 : 1;
			unsigned char p11 : 1;
			unsigned char p12 : 1;
			unsigned char p13 : 1;
			unsigned char p14 : 1;
			unsigned char p15 : 1;
		};

		unsigned int p : 16;
	};
	unsigned int reserved : 16;
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
			unsigned char ps0 : 1;
			unsigned char ps1 : 1;
			unsigned char ps2 : 1;
			unsigned char ps3 : 1;
			unsigned char ps4 : 1;
			unsigned char ps5 : 1;
			unsigned char ps6 : 1;
			unsigned char ps7 : 1;
			unsigned char ps8 : 1;
			unsigned char ps9 : 1;
			unsigned char ps10 : 1;
			unsigned char ps11 : 1;
			unsigned char ps12 : 1;
			unsigned char ps13 : 1;
			unsigned char ps14 : 1;
			unsigned char ps15 : 1;
			unsigned char pr0 : 1;
			unsigned char pr1 : 1;
			unsigned char pr2 : 1;
			unsigned char pr3 : 1;
			unsigned char pr4 : 1;
			unsigned char pr5 : 1;
			unsigned char pr6 : 1;
			unsigned char pr7 : 1;
			unsigned char pr8 : 1;
			unsigned char pr9 : 1;
			unsigned char pr10 : 1;
			unsigned char pr11 : 1;
			unsigned char pr12 : 1;
			unsigned char pr13 : 1;
			unsigned char pr14 : 1;
			unsigned char pr15 : 1;
		};

		unsigned int p : 32;
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
	unsigned char p0 : 4;
	unsigned char p1 : 4;
	unsigned char p2 : 4;
	unsigned char p3 : 4;
	unsigned char p4 : 4;
	unsigned char p5 : 4;
	unsigned char p6 : 4;
	unsigned char p7 : 4;
	unsigned char p8 : 4;
	unsigned char p9 : 4;
	unsigned char p10 : 4;
	unsigned char p11 : 4;
	unsigned char p12 : 4;
	unsigned char p13 : 4;
	unsigned char p14 : 4;
	unsigned char p15 : 4;
};


struct GPIOx {
	struct GPIOx_MODER moder;
	struct GPIOx_OTYPER otyper;
	struct GPIOx_OSPEEDR ospeedr;
	struct GPIOx_PUPDR pupdr;
	struct GPIOx_IDR idr;
	struct GPIOx_ODR odr;
	struct GPIOx_BSRR bsrr;
	unsigned int lockstuffwhichigivezerofucksabout;
	struct GPIOx_AFR afr;
	unsigned int somethingthatiprobablydontneed;
};


#define GPIOA ((struct GPIOx*)0x48000000);
#define GPIOB ((struct GPIOx*)0x48000400);
#define GPIOC ((struct GPIOx*)0x48000800);
#define GPIOD ((struct GPIOx*)0x48000C00);
#define GPIOE ((struct GPIOx*)0x48001000);
#define GPIOF ((struct GPIOx*)0x48001400);

#endif
