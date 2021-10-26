#include "usb.h"
#include <sys/time.h>
#include <sys/sys.h>
#include <sys/memory.h>
#include <core/driver/display.h>
#include <sys/setup.h>
#include <core/driver/usart.h>
#include <core/string.h>
#include <core/psu.h>

#define ADDR0_RX_OFFSET 0x00
#define ADDR0_RX_SIZE	64

#define ADDR0_TX_OFFSET (ADDR0_RX_OFFSET + ADDR0_RX_SIZE)
#define ADDR0_TX_SIZE   64

#define ADDR1_RX_OFFSET (ADDR0_TX_OFFSET + ADDR0_TX_SIZE)
#define ADDR1_RX_SIZE	64

#define ADDR1_TX_OFFSET	(ADDR1_RX_OFFSET + ADDR1_RX_SIZE)
#define ADDR1_TX_SIZE	64

#define ADDR2_RX_OFFSET (ADDR1_TX_OFFSET + ADDR1_TX_SIZE)
#define ADDR2_RX_SIZE	64

#define ADDR2_TX_OFFSET	(ADDR2_RX_OFFSET + ADDR2_RX_SIZE)
#define ADDR2_TX_SIZE	64

#define COUNT_SIZE(count, bl) ((((count) & 0x1F) << 10) | (((bl) & 0x01) << 15))

#define SRAM_ADDR(x) ((void*)(USB_SRAM + ((x) << 1)))

Data USB::desc;
USBState USB::deviceState;
uint8 USB::address;
Endpoint USB::endpoints[3];

static const char* MfgString = "\0T\0h\0e\0H\0o\0l\0y\0H\0o\0r\0s\0e";
static const char* ProductString = "\0P\0o\0w\0e\0r\0S\0u\0p\0p\0l\0y";

void usb_copy_to_sram(volatile void* dst, volatile const void* src, uint32 size) {
	bool odd = size & 0x01;

	size >>= 1;

	for (uint32 i = 0; i < size; ++i) {
		((volatile uint16*)dst)[i << 1] = ((volatile uint16*)src)[i];
	}

	if (odd) {
		uint16 tmp = ((volatile uint8*)src)[size << 1];
		((volatile uint16*)dst)[size << 1] = tmp;
	}
}

void usb_copy_from_sram(volatile void* dst, volatile const void* src, uint32 size) {
	bool odd = size & 0x01;

	size >>= 1;

	for (uint32 i = 0; i < size; i++) {
		((volatile uint16*)dst)[i] = (((volatile uint16*)src)[i << 1]);
	}

	if (odd) {
		uint16 tmp = ((volatile uint16*)src)[size << 1];
		((volatile uint8*)dst)[size << 1] = tmp;
	}
}

extern "C" void USB_LP_Handler() {
	USB::InterruptHandler();
}

void USB::InterruptHandler() {
	if (USB_ISTR & RESET) {
		//USART::Print("Reset");
		InitializationAfterReset();
		return;
	}

	if (USB_ISTR & SUSP) {
		USB_ISTR = ~SUSP;
		USB_CNTR |= FSUSP;
		//USART::Print("Suspended");
		return;
	}

	if (USB_ISTR & CTR) {
		uint16 istr = USB_ISTR;
		uint16 ep = EP_ID(istr);
		uint16 dir = (istr & EP_DIR) >> 4;

		if (ep == 0) {
			if (dir == 0) {

				if (address) {
					USB_DADDR = (address & 0x3FF) | EF;

					address = 0;

					USB_ADDR1_RX = ADDR1_RX_OFFSET;
					USB_ADDR2_RX = ADDR2_RX_OFFSET;
					USB_ADDR1_TX = ADDR1_TX_OFFSET;
					USB_ADDR2_TX = ADDR2_TX_OFFSET;
					USB_COUNT1_TX = 0;
					USB_COUNT2_TX = 0;
					USB_COUNT1_RX = COUNT_SIZE(1, 1);
					USB_COUNT2_RX = COUNT_SIZE(1, 1);

					EP1.address = (volatile uint16*)(USB_ADDR + 4);
					EP1.base = EA(1) | EP_TYPE(INTERRUPT);
					EP2.address = (volatile uint16*)(USB_ADDR + 8);
					EP2.base = EA(2) | EP_TYPE(INTERRUPT);

					EP1 = STAT_TX(DISABLED, VALID) | STAT_RX(DISABLED, VALID);
					EP2 = STAT_TX(DISABLED, VALID) | STAT_RX(DISABLED, VALID);
				}

				EP0 = CTR_TX | STAT_RX(NAK, VALID);
			} else {
				if (EP0 & SETUP) {
					EP0 = CTR_RX;

					SetupTransfer();
				} else {
					EP0 = CTR_RX | STAT_RX(NAK, VALID);
				}
			}
		} else {
			DataTransfer(ep, dir);
		}

	}
}

void USB::SetupTransfer() {
	volatile USBSetupData data;

	usb_copy_from_sram(&data, SRAM_ADDR(ADDR0_RX_OFFSET), sizeof(USBSetupData));

//	USART::Printf("Setup -> Recipient=%1u Type=%1u Dir=%1u Request=%1u Value=0x%4h Index=%1u Length=%1u",
//		(uint8)data.Recipient, (uint8)data.Type, (uint8)data.Dir, (uint8)data.Request, data.Value, data.Index, data.Length);


	if (data.Request == ControlRequest::GetDescriptor) { //GetDescriptor
		if (!(data.Recipient == RecipientType::Device && data.Type == RequestType::Standard && data.Dir == TransferDir::DeviceToHost)) {
			USART::Print("Invalid SETUP packet for GetDescriptor");
			EP0 = STAT_TX(NAK, STALL);
			return;
		}

		DescriptorType type = (DescriptorType)(data.Value >> 8);

		if (type == DescriptorType::Device) {
			usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET), &desc.device, sizeof(USBDeviceDescriptor));

			USB_COUNT0_TX = sizeof(USBDeviceDescriptor);
			//USART::Printf("Sending DeviceDescriptor %1u", sizeof(USBDeviceDescriptor));
		} else if (type == DescriptorType::Configuration) {

			uint16 size = desc.configuration.TotalLength;

			if (data.Length < size) {
				size = data.Length;
			}

			usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET), &desc.configuration, size);

			USB_COUNT0_TX = size;
			//USART::Printf("Sending ConfigurationDescriptor(s) %1u", size);
		} else if (type == DescriptorType::DeviceQualifier) {
			uint16 size = sizeof(USBDeviceQualifierDescriptor);

			usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET), &desc.qualifier, size);

			if (data.Length < size) {
				size = data.Length;
			}

			USB_COUNT0_TX = size;
			//USART::Printf("Sending DeviceQualifierDescriptor %1u", size);
		} else if (type == DescriptorType::String) {
			uint8 stringIndex = (uint8)data.Value & 0xFF;
			USBStringDescriptor desc;

			desc.Type = DescriptorType::String;

			if (stringIndex == 0) {
				desc.Length = sizeof(USBStringDescriptor) + 2;
				uint16 langid = 0x0409; //English (US)

				usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET), &desc, sizeof(USBStringDescriptor));
				usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET+2), &langid, 2);
			} else if (stringIndex == 1) {
				const uint16 len = 12 * 2; //TheHolyHorse Len = 12
				desc.Length = sizeof(USBStringDescriptor) + len;

				usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET), &desc, sizeof(USBStringDescriptor));
				usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET+2), MfgString, len);
			} else if (stringIndex == 2) {
				const uint16 len = 11 * 2; //PowerSupply Len = 11
				desc.Length = sizeof(USBStringDescriptor) + len;

				usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET), &desc, sizeof(USBStringDescriptor));
				usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET+2), ProductString, len);
			} else {
				const uint16 len = 3 * 2; //N/A Len = 3
				desc.Length = sizeof(USBStringDescriptor) + len;

				usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET), &desc, sizeof(USBStringDescriptor));
				usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET+2), "\0N\0/\0A", len);
			}

			uint16 size = data.Length < desc.Length ? data.Length : desc.Length;

			//USART::Printf("GetString Index=%1u Size=%1u Lang=%4h", stringIndex, size, data.Index);

			USB_COUNT0_TX = size;

			//USART::Printf("Sending StringDescriptor %1u", size);
		} else {
			//USART::Printf("DescriptorType not implemented %u", (uint32)type);
			EP0 = STAT_TX(NAK, STALL);
		}

		EP0 = STAT_TX(NAK, VALID);
	} else if (data.Request == ControlRequest::SetAddress) {
		if (!(data.Recipient == RecipientType::Device && data.Type == RequestType::Standard && data.Dir == TransferDir::HostToDevice)) {
			USART::Print("Invalid SETUP packet for SetAddress");
			EP0 = STAT_TX(NAK, STALL);
			return;
		}

		address = data.Value;
		USB_COUNT0_TX = 0;
		EP0 = STAT_TX(NAK, VALID);
	} else if (data.Request == ControlRequest::SetConfiguration) {
		if (!(data.Recipient == RecipientType::Device && data.Type == RequestType::Standard && data.Dir == TransferDir::HostToDevice)) {
			USART::Print("Invalid SETUP packet for SetConfiguration");
			EP0 = STAT_TX(NAK, STALL);
			return;
		}

		USB_COUNT0_TX = 0;
		EP0 = STAT_TX(NAK, VALID);

		//USART::Printf("SetConfiguration %1u", data.Value);
	} else if (data.Request == ControlRequest::SetInterface) {
		if (!(data.Recipient == RecipientType::Interface && data.Type == RequestType::Standard && data.Dir == TransferDir::HostToDevice)) {
			USART::Print("Invalid SETUP packet for SetConfiguration");
			EP0 = STAT_TX(NAK, STALL);
			return;
		}

		USB_COUNT0_TX = 0;
		EP0 = STAT_TX(NAK, VALID);
	//	USART::Printf("SetInterface %1u:%1u", data.Index, data.Value);
	} else if (data.Request == ControlRequest::GetStatus) {
		if (!(data.Type == RequestType::Standard && data.Dir == TransferDir::DeviceToHost && data.Length == 2)) {
			USART::Print("Invalid SETUP packet for GetStatus");
			EP0 = STAT_TX(NAK, STALL);
			return;
		}

		volatile uint16 result = 0;

		switch (data.Recipient) {
			case RecipientType::Device:
				result = 0x01; //Self Powered;
				break;
			case RecipientType::Endpoint:
				//TODO: implement endpoint halt
				break;
		}

		usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET), &result, 2);
		USB_COUNT0_TX = 2;
		EP0 = STAT_TX(NAK, VALID);
	}
}

void USB::DataTransfer(uint16 ep, uint16 dir) {
	if (ep == 1) {
		if (dir == 1) {
			uint16 size = USB_COUNT1_RX & 0x3ff;

			if (size) {
				volatile USBOutData1 data;

				usb_copy_from_sram(&data, SRAM_ADDR(ADDR1_RX_OFFSET), size);

				if ((data.vSet & 0x8000) == 0) {
					PSU::SetVSet(data.vSet);
				} else if ((PSU::Attributes & Attrib_MDAC) && (data.vSetDAC & 0x8000)) {
					PSU::SetVSetDAC(data.vSetDAC);
				}

				if ((data.iSet & 0x8000) == 0) {
					PSU::SetISet(data.iSet);
				} else if ((PSU::Attributes & Attrib_MDAC) && (data.iSetDAC & 0x8000)) {
					PSU::SetISetDAC(data.iSetDAC);
				}
			} else if (size == 0) {
				const uint32 size = sizeof(USBInData1);
				volatile USBInData1 data;

				data.vReadADC = 0;
				data.vRead = PSU::vRead;
				data.vSet = PSU::vSet;
				data.iReadADC = 0;
				data.iRead = PSU::iRead;
				data.iSet = PSU::iSet;

				usb_copy_to_sram(SRAM_ADDR(ADDR1_TX_OFFSET), &data, size);

				USB_COUNT1_TX = size;
			}

			EP1 = CTR_RX | STAT_RX(NAK, VALID);
		} else {
			const uint32 size = sizeof(USBInData1);
			volatile USBInData1 data;

			data.vReadADC = 0;
			data.vRead = PSU::vRead;
			data.vSet = PSU::vSet;
			data.iReadADC = 0;
			data.iRead = PSU::iRead;
			data.iSet = PSU::iSet;

			usb_copy_to_sram(SRAM_ADDR(ADDR1_TX_OFFSET), &data, size);

			USB_COUNT1_TX = size;

			EP1 = CTR_TX | STAT_TX(NAK, VALID);
		}
	} else if (ep == 2) {
		if (dir == 1) {
			uint16 size = USB_COUNT2_RX & 0x3ff;

			if (size) {
				volatile USBOutData2 data;

				usb_copy_from_sram(&data, SRAM_ADDR(ADDR2_RX_OFFSET), size);

				PSU::Attributes = data.Attributes & ~(Attrib_VCALI | Attrib_ICALI | Attrib_CVCALI | Attrib_CICALI);

				if (PSU::Attributes & Attrib_MFAN) {
					// TODO: set fan speed when supported
				}

				if (data.Attributes & Attrib_VCALI) {
					PSU::vSetCal = data.vSetCal;
					PSU::Attributes |= Attrib_VCALI;
				}

				if (data.Attributes & Attrib_ICALI) {
					PSU::iSetCal = data.iSetCal;
					PSU::Attributes |= Attrib_ICALI;
				}

				if (data.Attributes & Attrib_CVCALI) {
					PSU::vSetCal = PSU::DefaultVSetCal;
					PSU::Attributes &= ~Attrib_VCALI;
				}

				if (data.Attributes & Attrib_CICALI) {
					PSU::iSetCal = PSU::DefaultISetCal;
					PSU::Attributes &= ~Attrib_ICALI;
				}

			} else if (size == 0) {
				const uint16 size = sizeof(USBInData2);
				volatile USBInData2 data;

				data.Version = PSU::Version;
				data.FanSpeed = 0xDE;
				data.FanRPM = 0xBEAD;
				data.Temperature = 0xEF;
				data.TemperatureADC = 0xEDDE;
				data.vSetCal = PSU::vSetCal;
				data.iSetCal = PSU::iSetCal;
				data.DefaultVSetCal = PSU::DefaultVSetCal;
				data.DefaultISetCal = PSU::DefaultISetCal;
				data.Attributes = PSU::Attributes;

				usb_copy_to_sram(SRAM_ADDR(ADDR2_TX_OFFSET), &data, size);

				USB_COUNT2_TX = size;
			}

			EP2 = CTR_RX | STAT_RX(NAK, VALID);
		} else {
			const uint16 size = sizeof(USBInData2);
			volatile USBInData2 data;

			data.Version = PSU::Version;
			data.FanSpeed = 0xDE;
			data.FanRPM = 0xBEAD;
			data.Temperature = 0xEF;
			data.TemperatureADC = 0xDEED;
			data.vSetCal = PSU::vSetCal;
			data.iSetCal = PSU::iSetCal;
			data.DefaultVSetCal = PSU::DefaultVSetCal;
			data.DefaultISetCal = PSU::DefaultISetCal;
			data.Attributes = PSU::Attributes;

			usb_copy_to_sram(SRAM_ADDR(ADDR2_TX_OFFSET), &data, size);

			USB_COUNT2_TX = size;

			EP2 = CTR_TX | STAT_TX(NAK, VALID);
		}
	}
}

void USB::InitializationAfterReset() {
	USB_ISTR = 0;

	USB_BTABLE = USB_BTABLE_VALUE;

	USB_ADDR0_RX = ADDR0_RX_OFFSET;
	USB_ADDR0_TX = ADDR0_TX_OFFSET;
	USB_COUNT0_RX = COUNT_SIZE(1, 1);
	USB_COUNT0_TX = 0;

	USB_CNTR = RESETM | CTRM; // Enable interrupts

	USB_DADDR = EF;

	EP0.address = (volatile uint16*)(USB_ADDR);
	EP0.base = EA(0) | EP_TYPE(CONTROL);

	EP0 = STAT_TX(DISABLED, NAK) | STAT_RX(DISABLED, VALID);
}

void USB::Initialize() {
	RCC_APB1ENR |= USBEN;

	desc.device.Length = sizeof(USBDeviceDescriptor);
	desc.device.Type = DescriptorType::Device;
	desc.device.USBVersion = 0x0200;
	desc.device.DeviceClass = 0;
	desc.device.DeviceSubClass = 0;
	desc.device.DeviceProtocol = 0;
	desc.device.MaxPacketSize0 = ADDR0_RX_SIZE;
	desc.device.idVendor = 0x1209;
	desc.device.idProduct = 0xCACE;
	desc.device.DeviceVersion = 0x0001;
	desc.device.Manufacturer = 0;
	desc.device.Product = 0;
	desc.device.SerialNumber = 0;
	desc.device.NumConfigurations = 1;

	desc.qualifier.Length = sizeof(USBDeviceQualifierDescriptor);
	desc.qualifier.Type = DescriptorType::DeviceQualifier;
	desc.qualifier.USBVersion = 0x0200;
	desc.qualifier.DeviceClass = 0;
	desc.qualifier.DeviceSubClass = 0;
	desc.qualifier.DeviceProtocol = 0;
	desc.qualifier.MaxPacketSize0 = ADDR0_RX_SIZE;
	desc.qualifier.NumConfigurations = 1;
	desc.qualifier.Reserved = 0;

	desc.configuration.Length = sizeof(USBConfigurationDescriptor);
	desc.configuration.Type = DescriptorType::Configuration;
	desc.configuration.TotalLength = sizeof(USBConfigurationDescriptor) + sizeof(USBInterfaceDescriptor) + sizeof(USBEndpointDescriptor) * 4;
	desc.configuration.NumInterfaces = 1;
	desc.configuration.ConfigurationValue = 1;
	desc.configuration.Configuration = 0;
	desc.configuration.Attributes = 0xC0;
	desc.configuration.MaxPower = 0;

	desc.interface.Length = sizeof(USBInterfaceDescriptor);
	desc.interface.Type = DescriptorType::Interface;
	desc.interface.InterfaceNumber = 0;
	desc.interface.AlternateSetting = 0;
	desc.interface.NumEndpoints = 4;
	desc.interface.InterfaceClass = 0xFF;
	desc.interface.InterfaceSubClass = 0;
	desc.interface.InterfaceProtocol = 0;
	desc.interface.Interface = 0;

	desc.endpointIn1.Length = sizeof(USBEndpointDescriptor);
	desc.endpointIn1.Type = DescriptorType::Endpoint;
	desc.endpointIn1.EndpointAddress = 0x81;
	desc.endpointIn1.Attributes = 0x03;
	desc.endpointIn1.MaxPacketSize = ADDR1_TX_SIZE;
	desc.endpointIn1.Interval = 1;

	desc.endpointOut1.Length = sizeof(USBEndpointDescriptor);
	desc.endpointOut1.Type = DescriptorType::Endpoint;
	desc.endpointOut1.EndpointAddress = 0x01;
	desc.endpointOut1.Attributes = 0x03;
	desc.endpointOut1.MaxPacketSize = ADDR1_RX_SIZE;
	desc.endpointOut1.Interval = 1;

	desc.endpointIn2.Length = sizeof(USBEndpointDescriptor);
	desc.endpointIn2.Type = DescriptorType::Endpoint;
	desc.endpointIn2.EndpointAddress = 0x82;
	desc.endpointIn2.Attributes = 0x03;
	desc.endpointIn2.MaxPacketSize = ADDR2_TX_SIZE;
	desc.endpointIn2.Interval = 1;

	desc.endpointOut2.Length = sizeof(USBEndpointDescriptor);
	desc.endpointOut2.Type = DescriptorType::Endpoint;
	desc.endpointOut2.EndpointAddress = 0x02;
	desc.endpointOut2.Attributes = 0x03;
	desc.endpointOut2.MaxPacketSize = ADDR2_RX_SIZE;
	desc.endpointOut2.Interval = 1;

	USB_CNTR = FRES; // Enable transiver power

	DelayMicros(2);

	USB_CNTR = 0; // Clear USB reset
	NOP;
	NOP;

	InitializationAfterReset();

	USB_CNTR = RESETM | CTRM | SUSPM; // Enable interrupts

	EnableInterrupt(75);
}
