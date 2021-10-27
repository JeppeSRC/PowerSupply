#pragma once

#include <sys/registers/registers.h>

enum class USBState {
	Detached,
	Attached,
	Powered,
	Default,
	Addressed,
	Configured,
	Suspended
};

#pragma pack(push, 1)

struct Data {
	USBDeviceDescriptor device;
	USBDeviceQualifierDescriptor qualifier;
	USBConfigurationDescriptor configuration;
	USBInterfaceDescriptor interface;
	USBEndpointDescriptor endpointIn1;
	USBEndpointDescriptor endpointOut1;
	USBEndpointDescriptor endpointIn2;
	USBEndpointDescriptor endpointOut2;
};



struct alignas (4) USBInData1 {
	uint16 vReadADC;
	uint16 iReadADC;
	uint16 vRead;
	uint16 vSet;
	uint16 iRead;
	uint16 iSet;
};

struct USBOutData1 {
	uint16 vSetDAC;
	uint16 vSet;
	uint16 iSetDAC;
	uint16 iSet;
};

struct USBInData2 {
	uint16 Version;
	uint8  FanSpeed;
	uint16 FanRPM;
	int8   Temperature;
	uint16 TemperatureADC;
	float  vSetCal;
	float  iSetCal;
	float  DefaultVSetCal;
	float  DefaultISetCal;
	uint32 Attributes;
};

struct USBOutData2 {
	uint8  FanSpeed;
	float  vSetCal;
	float  iSetCal;
	uint32 Attributes;
};

#pragma pack(pop)

#define IN 0
#define OUT 1

#define EP0 USB::endpoints[0]
#define EP1 USB::endpoints[1]
#define EP2 USB::endpoints[2]

class Endpoint {
public:
	volatile uint16* address;
	uint16 base;

	void operator=(uint16 data);
	uint16 operator&(uint16 data);
};

class USB {
private:

	static Data desc;
	static uint8 address;
	static USBState deviceState;

	static Endpoint endpoints[3];

	static void SetupTransfer();
	static void DataTransfer(uint16 ep, uint16 dir);
	static void InitializationAfterReset();
public:
	static void InterruptHandler();
	static void Initialize();
};
