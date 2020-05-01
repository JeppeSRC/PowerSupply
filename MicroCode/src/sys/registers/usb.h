#pragma once
#include <core/def.h>

#define USB 0x40005C00

#define USB_CNTR (*(volatile uint32*)(USB + 0x40))

#define FRES 0x01
#define PDWN 0x02
#define LP_MODE 0x04
#define FSUSP 0x08
#define RESUMW 0x10
#define ESOFM 0x100
#define SOFM 0x200
#define RESETM 0x400
#define SUSPM 0x800
#define WKUPM 0x1000
#define ERRM 0x2000
#define PMAOVRM 0x4000
#define CTRM 0x8000

#define USB_ISTR (*(volatile uint32*)(USB + 0x44))

#define EP_ID(x) (x & 0x0F)
#define DIR 0x10
#define ESOF ESOFM
#define SOF SOFM
#define RESET RESETM
#define SUSP SUSPM
#define WKUP WKUPM
#define ERR ERRM
#define PMAOVR PMAOVRM
#define CTR CTRM

#define USB_FNR (*(volatile uint32*)(USB + 0x48))

#define FN(x) (x & 0x7FF)
#define LSOF(x) ((x & 0x02) << 11)
#define LCK(x) ((x & 0x01) << 13)
#define RXDM(x) ((x & 0x01) << 14)
#define RXDP(x) ((x & 0x01) << 15)

#define USB_DADDR (*(volatile uint32*)(USB + 0x4C))

#define ADD(x) (x & 0x7F)
#define EF 0x80

#define USB_BTABLE (*(volatile uint32*)(USB + 0x50))

#define USB_ENP0R (*(volatile uint32*)(USB))
#define USB_ENP1R (*(volatile uint32*)(USB + 0x04))
#define USB_ENP2R (*(volatile uint32*)(USB + 0x08))
#define USB_ENP3R (*(volatile uint32*)(USB + 0x0C))
#define USB_ENP4R (*(volatile uint32*)(USB + 0x10))
#define USB_ENP5R (*(volatile uint32*)(USB + 0x14))
#define USB_ENP6R (*(volatile uint32*)(USB + 0x18))
#define USB_ENP7R (*(volatile uint32*)(USB + 0x1C))

#define EA(x) ((x & 0xF))
#define STAT_TX(x) ((x & 0x03) << 4)
#define DTOG_TX 0x40
#define CTR_TX 0x80
#define EP_KIND 0x100
#define EP_TYPE(x) ((x & 0x03) << 9)
#define SETUP 0x800
#define STAT_RX(x) ((x & 0x03) << 12)
#define DTOG_RX 0x4000
#define CTR_RX 0x8000

#define USB_BTABLE_VALUE 0x1C0
#define USB_BTABLE_VALUE2 (USB_BTABLE_VALUE << 1)

#define USB_ADDR0_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x0)
#define USB_ADDR0_TX_0 USB_ADDR0_TX
#define USB_ADDR0_RX_0 USB_ADDR0_TX
#define USB_ADDR1_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x10)
#define USB_ADDR1_TX_0 USB_ADDR1_TX
#define USB_ADDR1_RX_0 USB_ADDR1_TX
#define USB_ADDR2_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x20)
#define USB_ADDR2_TX_0 USB_ADDR2_TX
#define USB_ADDR2_RX_0 USB_ADDR2_TX
#define USB_ADDR3_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x30)
#define USB_ADDR3_TX_0 USB_ADDR3_TX
#define USB_ADDR3_RX_0 USB_ADDR3_TX
#define USB_ADDR4_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x40)
#define USB_ADDR4_TX_0 USB_ADDR4_TX
#define USB_ADDR4_RX_0 USB_ADDR4_TX
#define USB_ADDR5_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x50)
#define USB_ADDR5_TX_0 USB_ADDR5_TX
#define USB_ADDR5_RX_0 USB_ADDR5_TX
#define USB_ADDR6_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x60)
#define USB_ADDR6_TX_0 USB_ADDR6_TX
#define USB_ADDR6_RX_0 USB_ADDR6_TX
#define USB_ADDR7_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x70)
#define USB_ADDR7_TX_0 USB_ADDR7_TX
#define USB_ADDR7_RX_0 USB_ADDR7_TX

#define USB_COUNT0_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x04)
#define USB_COUNT0_TX_0 USB_COUNT0_TX
#define USB_COUNT0_RX_0 USB_COUNT0_TX
#define USB_COUNT1_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x14)
#define USB_COUNT1_TX_0 USB_COUNT1_TX
#define USB_COUNT1_RX_0 USB_COUNT1_TX
#define USB_COUNT2_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x24)
#define USB_COUNT2_TX_0 USB_COUNT2_TX
#define USB_COUNT2_RX_0 USB_COUNT2_TX
#define USB_COUNT3_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x34)
#define USB_COUNT3_TX_0 USB_COUNT3_TX
#define USB_COUNT3_RX_0 USB_COUNT3_TX
#define USB_COUNT4_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x44)
#define USB_COUNT4_TX_0 USB_COUNT4_TX
#define USB_COUNT4_RX_0 USB_COUNT4_TX
#define USB_COUNT5_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x54)
#define USB_COUNT5_TX_0 USB_COUNT5_TX
#define USB_COUNT5_RX_0 USB_COUNT5_TX
#define USB_COUNT6_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x64)
#define USB_COUNT6_TX_0 USB_COUNT6_TX
#define USB_COUNT6_RX_0 USB_COUNT6_TX
#define USB_COUNT7_TX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x74)
#define USB_COUNT7_TX_0 USB_COUNT7_TX
#define USB_COUNT7_RX_0 USB_COUNT7_TX

#define USB_ADDR0_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x08)
#define USB_ADDR0_RX_1 USB_ADDR0_RX
#define USB_ADDR0_TX_1 USB_ADDR0_RX
#define USB_ADDR1_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x18)
#define USB_ADDR1_RX_1 USB_ADDR1_RX
#define USB_ADDR1_TX_1 USB_ADDR1_RX
#define USB_ADDR2_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x28)
#define USB_ADDR2_RX_1 USB_ADDR2_RX
#define USB_ADDR2_TX_1 USB_ADDR2_RX
#define USB_ADDR3_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x38)
#define USB_ADDR3_RX_1 USB_ADDR3_RX
#define USB_ADDR3_TX_1 USB_ADDR3_RX
#define USB_ADDR4_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x48)
#define USB_ADDR4_RX_1 USB_ADDR4_RX
#define USB_ADDR4_TX_1 USB_ADDR4_RX
#define USB_ADDR5_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x58)
#define USB_ADDR5_RX_1 USB_ADDR5_RX
#define USB_ADDR5_TX_1 USB_ADDR5_RX
#define USB_ADDR6_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x68)
#define USB_ADDR6_RX_1 USB_ADDR6_RX
#define USB_ADDR6_TX_1 USB_ADDR6_RX
#define USB_ADDR7_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x78)
#define USB_ADDR7_RX_1 USB_ADDR7_RX
#define USB_ADDR7_TX_1 USB_ADDR7_RX

#define USB_COUNT0_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x0C)
#define USB_COUNT0_RX_1 USB_COUNT0_RX
#define USB_COUNT0_TX_1 USB_COUNT0_RX
#define USB_COUNT1_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x1C)
#define USB_COUNT1_RX_1 USB_COUNT1_RX
#define USB_COUNT1_TX_1 USB_COUNT1_RX
#define USB_COUNT2_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x2C)
#define USB_COUNT2_RX_1 USB_COUNT2_RX
#define USB_COUNT2_TX_1 USB_COUNT2_RX
#define USB_COUNT3_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x3C)
#define USB_COUNT3_RX_1 USB_COUNT3_RX
#define USB_COUNT3_TX_1 USB_COUNT3_RX
#define USB_COUNT4_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x4C)
#define USB_COUNT4_RX_1 USB_COUNT4_RX
#define USB_COUNT4_TX_1 USB_COUNT4_RX
#define USB_COUNT5_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x5C)
#define USB_COUNT5_RX_1 USB_COUNT5_RX
#define USB_COUNT5_TX_1 USB_COUNT5_RX
#define USB_COUNT6_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x6C)
#define USB_COUNT6_RX_1 USB_COUNT6_RX
#define USB_COUNT6_TX_1 USB_COUNT6_RX
#define USB_COUNT7_RX (*(volatile uint32*)(USB_BTABLE_VALUE2 + 0x7C)
#define USB_COUNT7_RX_1 USB_COUNT7_RX
#define USB_COUNT7_TX_1 USB_COUNT7_RX

#define BLSIZE 0x8000
#define NUM_BLOCK(x) ((x & 0x1F) << 10)
#define COUNT_RX(x) (x & 0x3F)