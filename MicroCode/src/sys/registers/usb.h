#pragma once

#include <core/def.h>

#define USB_ADDR 0x40005C00
#define USB_SRAM 0x40006000

#define USB_CNTR (*(volatile uint16*)(USB_ADDR + 0x40))

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

#define USB_ISTR (*(volatile uint16*)(USB_ADDR + 0x44))

#define EP_ID(x) ((x) & 0x0F)
#define EP_DIR 0x10
#define ESOF ESOFM
#define SOF SOFM
#define RESET RESETM
#define SUSP SUSPM
#define WKUP WKUPM
#define ERR ERRM
#define PMAOVR PMAOVRM
#define CTR CTRM

#define USB_FNR (*(volatile uint16*)(USB_ADDR + 0x48))

#define FN(x) (x & 0x7FF)
#define LSOF(x) ((x & 0x02) << 11)
#define LCK(x) ((x & 0x01) << 13)
#define RXDM(x) ((x & 0x01) << 14)
#define RXDP(x) ((x & 0x01) << 15)

#define USB_DADDR (*(volatile uint16*)(USB_ADDR + 0x4C))

#define ADD(x) (x & 0x7F)
#define EF 0x80

#define USB_BTABLE (*(volatile uint16*)(USB_ADDR + 0x50))

#define USB_ENPnR(n) (*(volatile uint16*)(USB_ADDR + 0x04 * n))
#define USB_ENP0R USB_ENPnR(0)
#define USB_ENP1R USB_ENPnR(1)
#define USB_ENP2R USB_ENPnR(2)
#define USB_ENP3R USB_ENPnR(3)
#define USB_ENP4R USB_ENPnR(4)
#define USB_ENP5R USB_ENPnR(5)
#define USB_ENP6R USB_ENPnR(6)
#define USB_ENP7R USB_ENPnR(7)

#define EA(x) ((x & 0xF))
#define STAT_TX(curr, nxt) (((curr ^ nxt) & 0x03) << 4)
#define DTOG_TX 0x40
#define CTR_TX 0x80
#define EP_KIND 0x100
#define EP_TYPE(x) ((x & 0x03) << 9)
#define SETUP 0x800
#define STAT_RX(curr, nxt) (((curr ^ nxt) & 0x03) << 12)
#define DTOG_RX 0x4000
#define CTR_RX 0x8000

#define DISABLED 0
#define STALL 1
#define NAK 2
#define VALID 3

#define BULK 0
#define CONTROL 1
#define ISO 2
#define INTERRUPT 3


#define USB_BTABLE_VALUE 0x1C0
#define USB_BTABLE_VALUE2 (USB_SRAM + (USB_BTABLE_VALUE << 1))

#define USB_ADDR0_TX (*(volatile uint16*)(USB_BTABLE_VALUE2 + 0x0))
#define USB_ADDR1_TX (*(volatile uint16*)(USB_BTABLE_VALUE2 + 0x10))
#define USB_ADDR2_TX (*(volatile uint16*)(USB_BTABLE_VALUE2 + 0x20))

#define USB_COUNT0_TX (*(volatile uint16*)(USB_BTABLE_VALUE2 + 0x04))
#define USB_COUNT1_TX (*(volatile uint16*)(USB_BTABLE_VALUE2 + 0x14))
#define USB_COUNT2_TX (*(volatile uint16*)(USB_BTABLE_VALUE2 + 0x24))

#define USB_ADDR0_RX (*(volatile uint16*)(USB_BTABLE_VALUE2 + 0x08))
#define USB_ADDR1_RX (*(volatile uint16*)(USB_BTABLE_VALUE2 + 0x18))
#define USB_ADDR2_RX (*(volatile uint16*)(USB_BTABLE_VALUE2 + 0x28))

#define USB_COUNT0_RX (*(volatile uint16*)(USB_BTABLE_VALUE2 + 0x0C))
#define USB_COUNT1_RX (*(volatile uint16*)(USB_BTABLE_VALUE2 + 0x1C))
#define USB_COUNT2_RX (*(volatile uint16*)(USB_BTABLE_VALUE2 + 0x2C))

#define BLSIZE 0x8000
#define NUM_BLOCK(x) ((x & 0x1F) << 10)
#define COUNT_RX(x) (x & 0x3F)

#pragma pack(push, 1)

enum class DescriptorType : uint8 {
	Device = 1,
	Configuration = 2,
	String = 3,
	Interface = 4,
	Endpoint = 5,
	DeviceQualifier = 6,
	OtherSpeedConfiguration = 7,
	InterfacePower = 8
};

struct USBDeviceDescriptor { // 18 Bytes
	uint8 Length;
	DescriptorType Type;
	uint16 USBVersion;
	uint8 DeviceClass;
	uint8 DeviceSubClass;
	uint8 DeviceProtocol;
	uint8 MaxPacketSize0;
	uint16 idVendor;
	uint16 idProduct;
	uint16 DeviceVersion;
	uint8 Manufacturer;
	uint8 Product;
	uint8 SerialNumber;
	uint8 NumConfigurations;
};

struct USBDeviceQualifierDescriptor { // 18 Bytes
	uint8 Length;
	DescriptorType Type;
	uint16 USBVersion;
	uint8 DeviceClass;
	uint8 DeviceSubClass;
	uint8 DeviceProtocol;
	uint8 MaxPacketSize0;
	uint8 NumConfigurations;
	uint8 Reserved;
};

struct USBConfigurationDescriptor { //9 Bytes
	uint8 Length;
	DescriptorType Type;
	uint16 TotalLength;
	uint8 NumInterfaces;
	uint8 ConfigurationValue;
	uint8 Configuration;
	uint8 Attributes;
	uint8 MaxPower;
};

struct USBInterfaceDescriptor { //9 Bytes
	uint8 Length;
	DescriptorType Type;
	uint8 InterfaceNumber;
	uint8 AlternateSetting;
	uint8 NumEndpoints;
	uint8 InterfaceClass;
	uint8 InterfaceSubClass;
	uint8 InterfaceProtocol;
	uint8 Interface;
};

struct USBEndpointDescriptor { //7 Bytes
	uint8 Length;
	DescriptorType Type;
	uint8 EndpointAddress;
	uint8 Attributes;
	uint16 MaxPacketSize;
	uint8 Interval;
};

struct USBStringDescriptor {
	uint8 Length;
	DescriptorType Type;
};

enum class ControlRequest : uint8 {
	GetStatus = 0,
	ClearFeature = 1,
	SetFeature = 3,
	SetAddress = 5,
	GetDescriptor = 6,
	SetDescriptor = 7,
	GetConfiguration = 8,
	SetConfiguration = 9,
	GetInterface = 10,
	SetInterface = 11,
	SynchFrame = 12
};

enum class TransferDir : uint8 {
	HostToDevice = 0,
	DeviceToHost = 1
};

enum class RequestType : uint8 {
	Standard = 0,
	Class = 1,
	Vendor = 2,
	Reserved = 3
};

enum class RecipientType : uint8 {
	Device = 0,
	Interface = 1,
	Endpoint = 2,
	Ohter = 3
};

enum Feature {
	EndpointHalt = 0,
	DeviceRemoteWakeup = 1,
	TestMode = 2
};

struct USBSetupData {
	RecipientType Recipient : 5;
	RequestType Type : 2;
	TransferDir Dir : 1;
	ControlRequest Request;
	uint16 Value;
	uint16 Index;
	uint16 Length;
};

struct MicrosoftOSStringDescriptor {
	uint8 Length;
	uint8 Type;
	uint16 String[7];
	uint8 Padding;
};

struct MicrosoftIDFeatureDescriptor {
	uint32 Length;
	uint16 Version;
	uint16 CompatibilityID;
	uint8 NumberOfSections;
	uint8 Reserved0[7];
	uint8 Interface;
	uint8 Reserved1;
	uint8 CompatibleID[8];
	uint8 SubCompatibleID[8];
	uint8 Reserved2[6];
};

#pragma pop
