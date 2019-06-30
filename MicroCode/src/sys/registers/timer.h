#ifndef SYS_REGISTERS_TIMER_H_
#define SYS_REGISTERS_TIMER_H_

#include <core/def.h>

struct TIM32_CR1 {
	uint8 CEN : 1;
	uint8 UDIS : 1;
	uint8 URS : 1;
	uint8 OPM : 1;
	uint8 DIR : 1;
	uint8 CMS : 2;
	uint8 ARPE : 1;
	uint8 CKD : 2;
	uint32 reserved : 22;
};

struct TIM32_CR2 {
	uint8 reserved : 3;
	uint8 CDDS : 1;
	uint8 MMS : 3;
	uint8 TI1S : 1;
	uint32 reserved2 : 24;
};

struct TIM32_SMCR {
	uint8 SMS : 3;
	uint8 reserved : 1;
	uint8 TS : 3;
	uint8 MSM : 1;
	uint8 ETF : 4;
	uint8 ETPS : 2;
	uint8 ECE : 1;
	uint8 ETP : 1;
	uint32 reserved2 : 16;
};

struct TIM32_DIER {
	uint8 UIE : 1;
	uint8 CC1IE : 1;
	uint8 CC2IE : 1;
	uint8 CC3IE : 1;
	uint8 CC4IE : 1;
	uint8 reserved : 1;
	uint8 TIE : 1;
	uint8 reserved2 : 1;
	uint8 UDE : 1;
	uint8 CC1DE : 1;
	uint8 CC2DE : 1;
	uint8 CC3DE : 1;
	uint8 CC4DE : 1;
	uint8 reserved3 : 1;
	uint8 TDE : 1;
	uint32 reserved4 : 17;
};

struct TIM32_SR {
	uint8 UIF : 1;
	uint8 CC1IF : 1;
	uint8 CC2IF : 1;
	uint8 CC3IF : 1;
	uint8 CC4IF : 1;
	uint8 reserved : 1;
	uint8 TIF : 1;
	uint8 reserved2 : 2;
	uint8 CC1OF : 1;
	uint8 CC2OF : 1;
	uint8 CC3OF : 1;
	uint8 CC4OF : 1;
	uint32 reserved3 : 19;
};

struct TIM32_EGR {
	uint8 UG : 1;
	uint8 CC1G : 1;
	uint8 CC2G : 1;
	uint8 CC3G : 1;
	uint8 CC4G : 1;
	uint8 reserved : 1;
	uint8 TG : 1;
	uint32 reserved2 : 25;
};

struct TIM32_CCMR1 {
	union {
		struct {
			uint8 CC1S : 2;
			uint8 OC1FE : 1;
			uint8 OC1PE : 1;
			uint8 OC1M : 3;
			uint8 OC1CE : 1;
			uint8 CC2S : 2;
			uint8 OC2FE : 1;
			uint8 OC2PE : 1;
			uint8 OC2M : 3;
			uint8 OC2CE : 1;
		};

		struct {
			uint8 reserved : 2;
			uint8 IC1PSC : 2;
			uint8 IC1F : 4;
			uint8 reserved2 : 2;
			uint8 IC2PSC : 2;
			uint8 IC2F : 4;
		};
	};

	uint16 reserved3 : 16;
};

struct TIM32_CCMR2 {
	union {
		struct {
			uint8 CC3S : 2;
			uint8 OC3FE : 1;
			uint8 OC3PE : 1;
			uint8 OC3M : 3;
			uint8 OC3CE : 1;
			uint8 CC4S : 2;
			uint8 OC4FE : 1;
			uint8 OC4PE : 1;
			uint8 OC4M : 3;
			uint8 OC4CE : 1;
		};

		struct {
			uint8 reserved : 2;
			uint8 IC3PSC : 2;
			uint8 IC3F : 4;
			uint8 reserved2 : 2;
			uint8 IC4PSC : 2;
			uint8 IC4F : 4;
		};
	};

	uint16 reserved3 : 16;
};

struct TIM32_CCER {
	uint8 CC1E : 1;
	uint8 CC1P : 1;
	uint8 reserved : 1;
	uint8 CC1NP : 1;
	uint8 CC2E : 1;
	uint8 CC2P : 1;
	uint8 reserved2 : 1;
	uint8 CC2NP;
	uint8 CC3E : 1;
	uint8 CC3P : 1;
	uint8 reserved3 : 1;
	uint8 CC3NP : 1;
	uint8 CC4E : 1;
	uint8 CC4P : 1;
	uint8 reserved4 : 1;
	uint8 CC4NP : 1;
};

typedef uint32 TIM32_CNT;
typedef uint32 TIM32_PSC;
typedef uint32 TIM32_ARR;
typedef uint32 TIM32_CCRx;

struct TIM32_DCR {
	uint8 DBA : 5;
	uint8 reserved : 3;
	uint8 DBL5 : 5;
	uint32 reserved2 : 19;
};

struct TIM32_DMAR {
	uint16 DMAB : 16;
	uint16 reserved : 16;
};


//Timers 2, 3, 4, 5, 19
struct TIMxA {
	struct TIM32_CR1 CR1;
	struct TIM32_CR2 CR2;
	struct TIM32_SMCR SMCR;
	struct TIM32_DIER DIER;
	struct TIM32_SR SR;
	struct TIM32_EGR EGR;
	struct TIM32_CCMR1 CCMR1;
	struct TIM32_CCMR2 CCMR2;
	struct TIM32_CCER CCER;
	TIM32_CNT CNT;
	TIM32_PSC PSC;
	TIM32_ARR ARR;
	uint32 reserved : 32;
	TIM32_CCRx CCR1;
	TIM32_CCRx CCR2;
	TIM32_CCRx CCR3;
	TIM32_CCRx CCR4;
	uint32 reserved2 : 32;
	struct TIM32_DCR DCR;
	struct TIM32_DMAR DMAR;
};

struct TIM16_CR1 {
	uint8 CEN : 1;
	uint8 UDIS : 1;
	uint8 URS : 1;
	uint8 OPM : 1;
	uint8 reserved : 3;
	uint8 ARPE : 1;
	uint8 reserved2 : 8;
};

struct TIM16_CR2 {
	uint8 reserved : 4;
	uint8 MMS : 3;
	uint16 reserved2 : 9;
};

struct TIM16_DIER {
	uint8 UIE : 1;
	uint8 reserved : 7;
	uint8 UDE : 1;
	uint8 reserved2 : 7;
};

struct TIM16_SR {
	uint8 UIF : 1;
	uint16 reserved : 15;
};

struct TIM16_EGR {
	uint8 UG : 1;
	uint16 reserved : 15;
};

typedef uint16 TIM16_CNT;
typedef uint16 TIM16_PSC;
typedef uint16 TIM16_ARR;

// Timers 6, 7, 18
struct TIMxB {
	struct TIM16_CR1 CR1;
	struct TIM16_CR2 CR2;
	uint16 reserved;
	struct TIM16_DIER DIER;
	struct TIM16_SR SR;
	struct TIM16_EGR EGR;
	unsigned long long reserved2 : 48;
	TIM16_CNT CNT;
	TIM16_PSC PSC;
	TIM16_ARR ARR;
};

#endif
