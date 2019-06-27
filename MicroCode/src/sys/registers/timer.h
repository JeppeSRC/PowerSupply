#ifndef SYS_REGISTERS_TIMER_H_
#define SYS_REGISTERS_TIMER_H_


struct TIM32_CR1 {
	unsigned char CEN : 1;
	unsigned char UDIS : 1;
	unsigned char URS : 1;
	unsigned char OPM : 1;
	unsigned char DIR : 1;
	unsigned char CMS : 2;
	unsigned char ARPE : 1;
	unsigned char CKD : 2;
	unsigned int reserved : 22;
};

struct TIM32_CR2 {
	unsigned char reserved : 3;
	unsigned char CDDS : 1;
	unsigned char MMS : 3;
	unsigned char TI1S : 1;
	unsigned int reserved2 : 24;
};

struct TIM32_SMCR {
	unsigned char SMS : 3;
	unsigned char reserved : 1;
	unsigned char TS : 3;
	unsigned char MSM : 1;
	unsigned char ETF : 4;
	unsigned char ETPS : 2;
	unsigned char ECE : 1;
	unsigned char ETP : 1;
	unsigned int reserved2 : 16;
};

struct TIM32_DIER {
	unsigned char UIE : 1;
	unsigned char CC1IE : 1;
	unsigned char CC2IE : 1;
	unsigned char CC3IE : 1;
	unsigned char CC4IE : 1;
	unsigned char reserved : 1;
	unsigned char TIE : 1;
	unsigned char reserved2 : 1;
	unsigned char UDE : 1;
	unsigned char CC1DE : 1;
	unsigned char CC2DE : 1;
	unsigned char CC3DE : 1;
	unsigned char CC4DE : 1;
	unsigned char reserved3 : 1;
	unsigned char TDE : 1;
	unsigned int reserved4 : 17;
};

struct TIM32_SR {
	unsigned char UIF : 1;
	unsigned char CC1IF : 1;
	unsigned char CC2IF : 1;
	unsigned char CC3IF : 1;
	unsigned char CC4IF : 1;
	unsigned char reserved : 1;
	unsigned char TIF : 1;
	unsigned char reserved2 : 2;
	unsigned char CC1OF : 1;
	unsigned char CC2OF : 1;
	unsigned char CC3OF : 1;
	unsigned char CC4OF : 1;
	unsigned int reserved3 : 19;
};

struct TIM32_EGR {
	unsigned char UG : 1;
	unsigned char CC1G : 1;
	unsigned char CC2G : 1;
	unsigned char CC3G : 1;
	unsigned char CC4G : 1;
	unsigned char reserved : 1;
	unsigned char TG : 1;
	unsigned int reserved2 : 25;
};

struct TIM32_CCMR1 {
	union {
		struct {
			unsigned char CC1S : 2;
			unsigned char OC1FE : 1;
			unsigned char OC1PE : 1;
			unsigned char OC1M : 3;
			unsigned char OC1CE : 1;
			unsigned char CC2S : 2;
			unsigned char OC2FE : 1;
			unsigned char OC2PE : 1;
			unsigned char OC2M : 3;
			unsigned char OC2CE : 1;
		};

		struct {
			unsigned char reserved : 2;
			unsigned char IC1PSC : 2;
			unsigned char IC1F : 4;
			unsigned char reserved2 : 2;
			unsigned char IC2PSC : 2;
			unsigned char IC2F : 4;
		};
	};

	unsigned short reserved3 : 16;
};

struct TIM32_CCMR2 {
	union {
		struct {
			unsigned char CC3S : 2;
			unsigned char OC3FE : 1;
			unsigned char OC3PE : 1;
			unsigned char OC3M : 3;
			unsigned char OC3CE : 1;
			unsigned char CC4S : 2;
			unsigned char OC4FE : 1;
			unsigned char OC4PE : 1;
			unsigned char OC4M : 3;
			unsigned char OC4CE : 1;
		};

		struct {
			unsigned char reserved : 2;
			unsigned char IC3PSC : 2;
			unsigned char IC3F : 4;
			unsigned char reserved2 : 2;
			unsigned char IC4PSC : 2;
			unsigned char IC4F : 4;
		};
	};

	unsigned short reserved3 : 16;
};

struct TIM32_CCER {
	unsigned char CC1E : 1;
	unsigned char CC1P : 1;
	unsigned char reserved : 1;
	unsigned char CC1NP : 1;
	unsigned char CC2E : 1;
	unsigned char CC2P : 1;
	unsigned char reserved2 : 1;
	unsigned char CC2NP;
	unsigned char CC3E : 1;
	unsigned char CC3P : 1;
	unsigned char reserved3 : 1;
	unsigned char CC3NP : 1;
	unsigned char CC4E : 1;
	unsigned char CC4P : 1;
	unsigned char reserved4 : 1;
	unsigned char CC4NP : 1;
};

typedef unsigned int TIM32_CNT;
typedef unsigned int TIM32_PSC;
typedef unsigned int TIM32_ARR;
typedef unsigned int TIM32_CCRx;

struct TIM32_DCR {
	unsigned char DBA : 5;
	unsigned char reserved : 3;
	unsigned char DBL5 : 5;
	unsigned int reserved2 : 19;
};

struct TIM32_DMAR {
	unsigned short DMAB : 16;
	unsigned short reserved : 16;
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
	unsigned int reserved : 32;
	TIM32_CCRx CCR1;
	TIM32_CCRx CCR2;
	TIM32_CCRx CCR3;
	TIM32_CCRx CCR4;
	unsigned int reserved2 : 32;
	struct TIM32_DCR DCR;
	struct TIM32_DMAR DMAR;
};

struct TIM16_CR1 {
	unsigned char CEN : 1;
	unsigned char UDIS : 1;
	unsigned char URS : 1;
	unsigned char OPM : 1;
	unsigned char reserved : 3;
	unsigned char ARPE : 1;
	unsigned char reserved2 : 8;
};

struct TIM16_CR2 {
	unsigned char reserved : 4;
	unsigned char MMS : 3;
	unsigned short reserved2 : 9;
};

struct TIM16_DIER {
	unsigned char UIE : 1;
	unsigned char reserved : 7;
	unsigned char UDE : 1;
	unsigned char reserved2 : 7;
};

struct TIM16_SR {
	unsigned char UIF : 1;
	unsigned short reserved : 15;
};

struct TIM16_EGR {
	unsigned char UG : 1;
	unsigned short reserved : 15;
};

typedef unsigned int TIM16_CNT;
typedef unsigned int TIM16_PSC;
typedef unsigned int TIM16_ARR;

// Timers 6, 7, 18
struct TIMxB {
	struct TIM16_CR1 CR1;
	struct TIM16_CR2 CR2;
	unsigned short reserved;
	struct TIM16_DIER DIER;
	struct TIM16_SR SR;
	struct TIM16_EGR EGR;
	unsigned long long reserved2 : 48;
	TIM16_CNT CNT;
	TIM16_PSC PSC;
	TIM16_ARR ARR;
};

#endif
