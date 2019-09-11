#ifndef SYS_REGISTERS_APB2_H_
#define SYS_REGISTERS_APB2_H_

#include <core/def.h>

#include "timer.h"

#pragma region TIMERS

#define TIM19 ((struct TIMxA*)0x40015C00)

#pragma endregion

#pragma region SDADC 

#define SDADC_CR1(ADC, OP, EOCALIE, JEOCIE, JOVRIE, REOCIE, ROVRIE, REF, SLOWCK, SBI, JSYNC, RSYNC, JDMEAN, RDMEAN, INIT) ADC->CR1 OP ((INIT << 31) | (RDMEAN << 17) | (JDMEAN << 16) | (RSYNC << 15) | (JSYNC << 14) | (SBI << 11) | (SLOWCK << 10) | (REF << 8) | (ROVRIE | 4) | (REOCIE << 3) | (JOVRIE << 2) | (JEOCIE << 1) | EOCALIE)
#define SDADC1_CR1(OP, EOCALIE, JEOCIE, JOVRIE, REOCIE, ROVRIE, REF, SLOWCK, SBI, JSYNC, RSYNC, JDMEAN, RDMEAN, INIT) SDADC_CR1(SDADC1, OP, EOCALIE, JEOCIE, JOVRIE, REOCIE, ROVRIE, REF, SLOWCK, SBI, JSYNC, RSYNC, JDMEAN, RDMEAN, INIT)
#define SDADC2_CR1(OP, EOCALIE, JEOCIE, JOVRIE, REOCIE, ROVRIE, REF, SLOWCK, SBI, JSYNC, RSYNC, JDMEAN, RDMEAN, INIT) SDADC_CR1(SDADC2, OP, EOCALIE, JEOCIE, JOVRIE, REOCIE, ROVRIE, REF, SLOWCK, SBI, JSYNC, RSYNC, JDMEAN, RDMEAN, INIT)
#define SDADC3_CR1(OP, EOCALIE, JEOCIE, JOVRIE, REOCIE, ROVRIE, REF, SLOWCK, SBI, JSYNC, RSYNC, JDMEAN, RDMEAN, INIT) SDADC_CR1(SDADC3, OP, EOCALIE, JEOCIE, JOVRIE, REOCIE, ROVRIE, REF, SLOWCK, SBI, JSYNC, RSYNC, JDMEAN, RDMEAN, INIT)


#define SDADC_CR2(ADC, OP, ADON, CALIBCNT, STARTCALIB, JCONT, JDS, JEXTSEL, JEXTEN, JSWSTART, RCH, RCONT, RSWSTART, FAST) ADC->CR2 OP ((FAST << 24) | (RSWSTART << 23) | (RCONT << 22) | (RCH << 16) | (JSWSTART << 15) | (JEXTEN << 13) | (JEXTSEL << 8) | (JDS << 6) | (JCONT << 5) | (STARTCALIB << 4) | (CALIBCNT << 1) | ADON)
#define SDADC1_CR2(OP, ADON, CALIBCNT, STARTCALIB, JCONT, JDS, JEXTSEL, JEXTEN, JSWSTART, RCH, RCONT, RSWSTART, FAST) SDADC_CR2(SDADC1, OP, ADON, CALIBCNT, STARTCALIB, JCONT, JDS, JEXTSEL, JEXTEN, JSWSTART, RCH, RCONT, RSWSTART, FAST)
#define SDADC2_CR2(OP, ADON, CALIBCNT, STARTCALIB, JCONT, JDS, JEXTSEL, JEXTEN, JSWSTART, RCH, RCONT, RSWSTART, FAST) SDADC_CR2(SDADC2, OP, ADON, CALIBCNT, STARTCALIB, JCONT, JDS, JEXTSEL, JEXTEN, JSWSTART, RCH, RCONT, RSWSTART, FAST)
#define SDADC3_CR2(OP, ADON, CALIBCNT, STARTCALIB, JCONT, JDS, JEXTSEL, JEXTEN, JSWSTART, RCH, RCONT, RSWSTART, FAST) SDADC_CR2(SDADC3, OP, ADON, CALIBCNT, STARTCALIB, JCONT, JDS, JEXTSEL, JEXTEN, JSWSTART, RCH, RCONT, RSWSTART, FAST)


#define SDADC_ISR(ADC, OP, EOCALF, JEOCF, JOVRF, REOCF, ROVRF, CALIBIP, JCIP, RCIP, STABIP, INITRDY) ADC->ISR OP ((INITRDY << 31) | (STABIP << 15) | (RCIP << 14) | (JCIP << 13) | (CALIBIP << 12) | (ROVRF << 4) | (REOCF << 3) | (JOVRF << 2) | (JEOCF << 1) | EOCALF)
#define SDADC1_ISR(OP, EOCALF, JEOCF, JOVRF, REOCF, ROVRF, CALIBIP, JCIP, RCIP, STABIP, INITRDY) SDADC_ISR(SDADC1, OP, EOCALF, JEOCF, JOVRF, REOCF, ROVRF, CALIBIP, JCIP, RCIP, STABIP, INITRDY)
#define SDADC2_ISR(OP, EOCALF, JEOCF, JOVRF, REOCF, ROVRF, CALIBIP, JCIP, RCIP, STABIP, INITRDY) SDADC_ISR(SDADC2, OP, EOCALF, JEOCF, JOVRF, REOCF, ROVRF, CALIBIP, JCIP, RCIP, STABIP, INITRDY)
#define SDADC3_ISR(OP, EOCALF, JEOCF, JOVRF, REOCF, ROVRF, CALIBIP, JCIP, RCIP, STABIP, INITRDY) SDADC_ISR(SDADC3, OP, EOCALF, JEOCF, JOVRF, REOCF, ROVRF, CALIBIP, JCIP, RCIP, STABIP, INITRDY)


#define SDADC_CLRISR(ADC, OP, CLREOCALF, CLRJOVRF, CLRROVRF) ADC->CLRISR OP ((CLRROVRF << 4) | (CLRJOVRF << 2) | CLREOCALF)
#define SDADC1_CLRISR(OP, CLREOCALF, CLRJOVRF, CLRROVRF) SDADC_CLRISR(SDADC1, OP, CLREOCALF, CLRJOVRF, CLRROVRF)
#define SDADC2_CLRISR(OP, CLREOCALF, CLRJOVRF, CLRROVRF) SDADC_CLRISR(SDADC2, OP, CLREOCALF, CLRJOVRF, CLRROVRF)
#define SDADC3_CLRISR(OP, CLREOCALF, CLRJOVRF, CLRROVRF) SDADC_CLRISR(SDADC3, OP, CLREOCALF, CLRJOVRF, CLRROVRF)

#define SDADC_JCHGR(ADC, OP, JCHG) ADC->JCHGR OP (JCHG)
#define SDADC1_JCHGR(OP, JCHG) SDADC_JCHGR(SDADC1, OP, JCHG)
#define SDADC2_JCHGR(OP, JCHG) SDADC_JCHGR(SDADC2, OP, JCHG)
#define SDADC3_JCHGR(OP, JCHG) SDADC_JCHGR(SDADC3, OP, JCHG)


#define SDADC_CONFR(ADC, C, OP, OFFSET, GAIN, SE, COMMON) ADC->CONF##C##R OP ((COMMON << 30) | (SE << 26) | (GAIN << 20) | OFFSET)
#define SDADC1_CONF0R(OP, OFFSET, GAIN, SE, COMMON) SDADC_CONFR(SDADC1, 0, OP, OFFSET, GAIN, SE, COMMON)
#define SDADC2_CONF0R(OP, OFFSET, GAIN, SE, COMMON) SDADC_CONFR(SDADC2, 0, OP, OFFSET, GAIN, SE, COMMON)
#define SDADC3_CONF0R(OP, OFFSET, GAIN, SE, COMMON) SDADC_CONFR(SDADC3, 0, OP, OFFSET, GAIN, SE, COMMON)

#define SDADC1_CONF1R(OP, OFFSET, GAIN, SE, COMMON) SDADC_CONFR(SDADC1, 1, OP, OFFSET, GAIN, SE, COMMON)
#define SDADC2_CONF1R(OP, OFFSET, GAIN, SE, COMMON) SDADC_CONFR(SDADC2, 1, OP, OFFSET, GAIN, SE, COMMON)
#define SDADC3_CONF1R(OP, OFFSET, GAIN, SE, COMMON) SDADC_CONFR(SDADC3, 1, OP, OFFSET, GAIN, SE, COMMON)

#define SDADC1_CONF2R(OP, OFFSET, GAIN, SE, COMMON) SDADC_CONFR(SDADC1, 2, OP, OFFSET, GAIN, SE, COMMON)
#define SDADC2_CONF2R(OP, OFFSET, GAIN, SE, COMMON) SDADC_CONFR(SDADC2, 2, OP, OFFSET, GAIN, SE, COMMON)
#define SDADC3_CONF2R(OP, OFFSET, GAIN, SE, COMMON) SDADC_CONFR(SDADC3, 2, OP, OFFSET, GAIN, SE, COMMON)


#define SDADC_CONFCHR1(ADC, OP, CONFCH0, CONFCH1, CONFCH2, CONFCH3, CONFCH4, CONFCH5, CONFCH6, CONFCH7) ADC->CONFCHR1 OP ((CONFCH7 << 28) | (CONFCH6 << 24) | (CONFCH5 << 20) | (CONFCH4 << 16) | (CONFCH3 << 12) | (CONFCH2 << 8) | (CONFCH1 << 4) | CONFCH0)
#define SDADC1_CONFCHR1(OP, CONFCH0, CONFCH1, CONFCH2, CONFCH3, CONFCH4, CONFCH5, CONFCH6, CONFCH7) SDADC_CONFCHR1(SDADC1, OP, CONFCH0, CONFCH1, CONFCH2, CONFCH3, CONFCH4, CONFCH5, CONFCH6, CONFCH7)
#define SDADC2_CONFCHR1(OP, CONFCH0, CONFCH1, CONFCH2, CONFCH3, CONFCH4, CONFCH5, CONFCH6, CONFCH7) SDADC_CONFCHR1(SDADC2, OP, CONFCH0, CONFCH1, CONFCH2, CONFCH3, CONFCH4, CONFCH5, CONFCH6, CONFCH7)
#define SDADC3_CONFCHR1(OP, CONFCH0, CONFCH1, CONFCH2, CONFCH3, CONFCH4, CONFCH5, CONFCH6, CONFCH7) SDADC_CONFCHR1(SDADC3, OP, CONFCH0, CONFCH1, CONFCH2, CONFCH3, CONFCH4, CONFCH5, CONFCH6, CONFCH7)


#define SDADC_CONFCHR2(ADC, OP, CONFCH8) ADC->CONFCHR2 OP (CONFCH8)
#define SDADC1_CONFCHR2(OP, CONFCH8) SDADC_CONFCHR2(SDADC1, OP, CONFCH8)
#define SDADC2_CONFCHR2(OP, CONFCH8) SDADC_CONFCHR2(SDADC2, OP, CONFCH8)
#define SDADC3_CONFCHR2(OP, CONFCH8) SDADC_CONFCHR2(SDADC3, OP, CONFCH8)

#pragma pack(push)
#pragma pack(1)

struct SDADCx {
	uint32 CR1;
	uint32 CR2;
	uint32 ISR;
	uint32 CLRISR;
	uint32 res;
	uint32 JCHGR;
	uint32 res1;
	uint32 res2;
	uint32 CONF0R;
	uint32 CONF1R;
	uint32 CONF2R;
	uint32 res3;
	uint32 res4;
	uint32 res5;
	uint32 res6;
	uint32 res7;
	uint32 CONFCHR1;
	uint32 CONFCHR2;
	uint32 res8;
	uint32 res9;
	uint32 res10;
	uint32 res11;
	uint32 res12;
	uint32 res13;
	uint32 JDATAR;
	uint16 RDATAR;
	uint16 res14;
	uint32 res15;
	uint32 res16;
	uint32 JDATA12R;
	uint32 RDATA12R;
	uint32 JDATA13R;
	uint32 RDATA13R;
};

#pragma pack(pop)

#define SDADC1 ((struct SDADCx*)0x40016000)
#define SDADC2 ((struct SDADCx*)0x40016400)
#define SDADC3 ((struct SDADCx*)0x40016800)

#pragma endregion


#endif
