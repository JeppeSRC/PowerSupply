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
	USBConfigurationDescriptor configuration;
	USBInterfaceDescriptor interface;
	USBEndpointDescriptor endpointIn;
	USBEndpointDescriptor endpointOut;
};

#pragma pack(pop)

#define IN 0
#define OUT 1


class USB {
private:
	static Data desc;
	static uint8 address;
	static USBState deviceState;

	static bool endpointHalted;

	static void HandleTransfers();
	static void HandleControlTransfers();

	static void HandleClearFeature(USBSetupData* data);
	static void HandleGetConfiguration(USBSetupData* data);
	static void HandleGetDescriptor(USBSetupData* data);
	static void HandleGetInterface(USBSetupData* data);
	static void HandleGetStatus(USBSetupData* data);
	static void HandleSetAddress(USBSetupData* data);
	static void HandleSetConfiguration(USBSetupData* data);
	static void HandleSetDescriptor(USBSetupData* data);
	static void HandleSetFeature(USBSetupData* data);
	static void HandleSetInterface(USBSetupData* data);
	static void HandleSynchFrame(USBSetupData* data);

	static void RequestError(uint8 dir);

	static void InitializationAfterReset();
public:
	static void InterruptHandler();
	static void Initialize();

	static inline USBState GetDeviceState() { return deviceState; }
};
