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
