#include "usb.h"
#include <sys/time.h>
#include <sys/sys.h>
#include <sys/memory.h>

#define ADDR0_RX_OFFSET 0x00
#define ADDR0_RX_SIZE	0x40

#define ADDR0_TX_OFFSET (ADDR0_RX_OFFSET + ADDR0_RX_SIZE)
#define ADDR0_TX_SIZE   100

#define ADDR1_RX_OFFSET (ADDR0_TX_OFFSET + ADDR0_TX_SIZE)
#define ADDR1_RX_SIZE	100

#define ADDR1_TX_OFFSET	(ADDR1_RX_OFFSET + ADDR1_RX_SIZE)
#define ADDR1_TX_SIZE	100

#define SRAM_ADDR(x) ((void*)(USB_SRAM + (x << 2)))

#define CTR_TX_CLEAR 0x870F
#define CTR_RX_CLEAR 0x070F

#define ENP0R_DEFAULT 0x8280
#define ENP1R_DEFAULT 0x8681

Data USB::desc;
USBState USB::deviceState;
bool USB::endpointHalted = false;

void usb_copy_to_sram(void* dst, void* src, uint32 size) {
	bool odd = size & 0x01;

	size = (0xFFFFFFFE & size) >> 1;

	for (uint32 i = 0; i < size; i++) {
		((volatile uint16*)dst)[i << 1] = ((volatile uint16*)src)[i];
	}

	if (odd) {
		((volatile uint16*)dst)[size << 1] = ((volatile uint8*)src)[size << 1];
	}
}

void usb_copy_from_sram(void* dst, void* src, uint32 size) {
	bool odd = size & 0x01;

	size = (0xFFFFFFFE & size) >> 1;

	for (uint32 i = 0; i < size; i++) {
		((volatile uint16*)dst)[i] = ((volatile uint16*)src)[i << 1];
	}

	if (odd) {
		uint16 tmp = ((volatile uint16*)src)[(size + 1) << 1];
		((volatile uint8*)dst)[size * 2] = (uint8)tmp;
	}
}

extern "C" void USB_LP_Handler() {
	USB::InterruptHandler();
}

void USB::InterruptHandler() {
	if (USB_ISTR & RESET) {
		USB_ISTR &= ~RESET;

		InitializationAfterReset();
	} else if (USB_ISTR & SUSP) {
		USB_ISTR &= ~SUSP;
		deviceState = USBState::Suspended;

		USB_CNTR |= FSUSP | LP_MODE;
	} else if (USB_ISTR & WKUP) {
		USB_ISTR &= ~WKUP;
		deviceState = USBState::Configured;

		USB_CNTR &= ~FSUSP;
	}

	if (USB_ISTR & CTR) {
		HandleTransfers();
	}
}

void USB::HandleTransfers() {
	if (EP_ID(USB_ISTR) == 0) {
		if (USB_ENP0R & SETUP) {
			HandleControlTransfers();
			return;
		}
	} 


}

void USB::HandleControlTransfers() {
	if ((USB_ISTR & EP_DIR) == 0) {
		USB_ENP0R &= CTR_TX_CLEAR;

		USB_ENP0R = ENP0R_DEFAULT | STAT_RX(NAK, VALID); // Enable reception again

		if ((USB_ENP0R & CTR_RX) == 0) return; // Return if there's no unprocessed reception
	}

	USBSetupData data;
	
	usb_copy_from_sram(&data, SRAM_ADDR(ADDR0_RX_OFFSET), sizeof(USBSetupData));


	switch (data.Request) {
		case ControlRequest::ClearFeature:
			HandleClearFeature(&data);
			break;
		case ControlRequest::GetConfiguration:
			HandleGetConfiguration(&data);
			break;
		case ControlRequest::GetDescriptor:
			HandleGetDescriptor(&data);
			break;
		case ControlRequest::GetInterface:
			HandleGetInterface(&data);
			break;
		case ControlRequest::GetStatus:
			HandleGetStatus(&data);
			break;
		case ControlRequest::SetAddress:
			HandleSetAddress(&data);
			break;
		case ControlRequest::SetConfiguration:
			HandleSetConfiguration(&data);
			break;
		case ControlRequest::SetDescriptor:
			HandleSetDescriptor(&data);
			break;
		case ControlRequest::SetFeature:
			HandleSetFeature(&data);
			break;
		case ControlRequest::SetInterface:
			HandleSetInterface(&data);
			break;
		case ControlRequest::SynchFrame:
			HandleSynchFrame(&data);
			break;
	}

	USB_ENP0R = ENP0R_DEFAULT ^ CTR_RX ^ CTR_TX;
}

void USB::HandleClearFeature(USBSetupData* data) {
	switch (data->Recipient) {
		case RecipientType::Device:
			if (data->Value == Feature::DeviceRemoteWakeup && data->Index == 0 && data->Length == 0) {
				desc.configuration.Attributes &= ~0x20;
			} else {
				goto error;
			}
			break;
		case RecipientType::Interface:
			goto error;
		case RecipientType::Endpoint:
			if (data->Value == Feature::EndpointHalt) {
				if (deviceState == USBState::Addressed && data->Index == 0) {
				} else if (deviceState == USBState::Configured && data->Index == 1) {
					endpointHalted = false;
					uint32 rxtx = ((USB_ENP1R & STAT_RX(DISABLED, VALID)) & STAT_TX(DISABLED, VALID));
					USB_ENP1R = ENP1R_DEFAULT | STAT_TX(rxtx >> 4, VALID) | STAT_RX(rxtx >> 12, VALID);
				} else {
					goto error;
				}
			} else {
				goto error;
			}
			break;
		default:
			goto error;
	}

	USB_ENP0R = ENP0R_DEFAULT | STAT_TX(NAK, VALID);

	return;

error:
	RequestError(IN);
}

void USB::HandleGetConfiguration(USBSetupData* data) {
	if (data->Dir != TransferDir::DeviceToHost || data->Recipient != RecipientType::Device || data->Value || data->Index || data->Length != 1) {
		RequestError(IN);
		return;
	}

	uint16 tmp = deviceState == USBState::Addressed ? 0 : 1;

	usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET), &tmp, 2);

	USB_COUNT0_TX = 0x01;

	USB_ENP0R = ENP0R_DEFAULT | STAT_TX(NAK, VALID);
}

void USB::HandleGetDescriptor(USBSetupData* data) {
	if (data->Dir != TransferDir::DeviceToHost || data->Recipient != RecipientType::Device) {
		RequestError(IN);
		return;
	}

	uint16 size = 0;

	switch ((DescriptorType)(data->Value >> 8)) {
		case DescriptorType::Device:
			usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET), &desc.device, size = desc.device.Length);
			break;
		case DescriptorType::Configuration:
			usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET), &desc.configuration, size = sizeof(USBConfigurationDescriptor) + sizeof(USBInterfaceDescriptor) + sizeof(USBEndpointDescriptor) * 2);
			break;
		default:
			RequestError(IN);
			return;
	}

	size = size > data->Length ? data->Length : size;

	USB_COUNT0_TX = size;

	USB_ENP0R = ENP0R_DEFAULT | STAT_TX(NAK, VALID);
}

void USB::HandleGetInterface(USBSetupData* data) {
	if (data->Dir != TransferDir::DeviceToHost || data->Recipient != RecipientType::Interface || data->Length != 1) {
		RequestError(IN);
		return;
	}

	uint16 tmp = desc.interface.AlternateSetting;

	usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET), &tmp, 2);

	USB_COUNT0_TX = 1;

	USB_ENP0R = ENP0R_DEFAULT | STAT_TX(NAK, VALID);
}

void USB::HandleGetStatus(USBSetupData* data) {
	if (data->Dir != TransferDir::DeviceToHost || data->Length != 2 || deviceState == USBState::Default) {
		RequestError(IN);
		return;
	}

	uint16 tmp = 0;

	switch (data->Recipient) {
		case RecipientType::Device:
			tmp = ((desc.configuration.Attributes >> 6) & 0x01) | ((desc.configuration.Attributes >> 4) & 0x02);
			break;
		case RecipientType::Interface:
			break;
		case RecipientType::Endpoint:
			if (data->Index == 1) {
				tmp = endpointHalted ? 1 : 0;
			} else if (data->Index != 0) {
				RequestError(IN);
				return;
			}
			break;
		default:
			RequestError(IN);
			return;
	}

	usb_copy_to_sram(SRAM_ADDR(ADDR0_TX_OFFSET), &tmp, 2);

	USB_COUNT0_TX = 2;

	USB_ENP0R = ENP0R_DEFAULT | STAT_TX(NAK, VALID);

}

void USB::HandleSetAddress(USBSetupData* data) {
	if (data->Dir != TransferDir::HostToDevice || data->Recipient != RecipientType::Device) {
		RequestError(IN);
		return;
	}

	USB_ENP0R = ENP0R_DEFAULT | STAT_TX(NAK, VALID);

	if (data->Value == 0) {
		deviceState = USBState::Default;
	} else {
		deviceState = USBState::Addressed;
	}

	USB_DADDR |= data->Value & 0x7F;

	USB_ENP1R = ENP1R_DEFAULT;

	USB_ADDR1_RX = ADDR1_RX_OFFSET;
	USB_ADDR1_TX = ADDR1_TX_OFFSET;
	USB_COUNT1_RX = ADDR1_RX_SIZE << 9;
}

void USB::HandleSetConfiguration(USBSetupData* data) {
	if (data->Dir != TransferDir::HostToDevice || data->Recipient != RecipientType::Device) {
		RequestError(IN);
		return;
	}

	if ((data->Value & 0xFF) == 0) {
		deviceState = USBState::Addressed;
	} else if ((data->Value & 0xFF) == 1) {
		deviceState = USBState::Configured;
	} else {
		RequestError(IN);
	}

	USB_ENP0R = ENP0R_DEFAULT | STAT_TX(NAK, VALID);
}

void USB::HandleSetDescriptor(USBSetupData* data) {
	RequestError(IN);
}

void USB::HandleSetFeature(USBSetupData* data) {
	if (data->Dir != TransferDir::HostToDevice) {
		RequestError(IN);
		return;
	}

	switch (data->Recipient) {
		case RecipientType::Device:
			if (data->Value != (uint16)Feature::DeviceRemoteWakeup || deviceState == USBState::Addressed) {
				RequestError(IN);
				return;
			}

			desc.configuration.Attributes |= 0x20;

			break;
		case RecipientType::Endpoint:
			if (data->Value != (uint16)Feature::EndpointHalt) {
				RequestError(IN);
				return;
			} else if (data->Index == 1) {
				endpointHalted = true;
				uint32 rxtx = ((USB_ENP1R & STAT_RX(DISABLED, VALID)) & STAT_TX(DISABLED, VALID));
				USB_ENP1R = ENP1R_DEFAULT | STAT_TX(rxtx >> 4, STALL) | STAT_RX(rxtx >> 12, STALL);
			}
			break;
		default:
			RequestError(IN);
			return;
	}


	USB_ENP0R = ENP0R_DEFAULT | STAT_TX(NAK, VALID);

	DelayMillis(1);

	USB_ENP0R = ENP0R_DEFAULT | STAT_TX(VALID, NAK) | STAT_RX(NAK, VALID);
}

void USB::HandleSetInterface(USBSetupData* data) {
	RequestError(IN);
}

void USB::HandleSynchFrame(USBSetupData* data) {
	RequestError(IN);
}

void USB::RequestError(uint8 dir) {
	if (dir == IN) {
		USB_ENP0R = ENP0R_DEFAULT | STAT_TX(NAK, STALL);
	} else if (dir == OUT) {
		USB_ENP0R = ENP0R_DEFAULT | STAT_RX(NAK, STALL);
	}

	DelayMillis(1);
}

void USB::InitializationAfterReset() {
	deviceState = USBState::Default;

	USB_BTABLE = USB_BTABLE_VALUE;
	USB_DADDR = EF;

	//Endpoint 0 reception buffer setup
	USB_ADDR0_TX = ADDR0_TX_OFFSET;
	USB_COUNT0_TX = 0;
	USB_ADDR0_RX = ADDR0_RX_OFFSET;
	USB_COUNT0_RX = BLSIZE;

	USB_ENP0R = EA(0) | STAT_TX(DISABLED, VALID) | EP_TYPE(CONTROL) | STAT_RX(DISABLED, VALID);
}

void USB::Initialize() {
	deviceState = USBState::Detached;

	EnableInterrupt(75);

	RCC_APB1ENR |= USBEN;

	USB_CNTR ^= PDWN; // Enable transiver power

	DelayMicros(1); // Wait for power to settle

	USB_ISTR = 0; // Clear interrupts
	USB_CNTR ^= FRES; // Clear USB reset

	USB_CNTR |= RESETM | SUSPM | CTRM | WKUPM; // Enable interrupts

	desc.device.Length = sizeof(USBDeviceDescriptor);
	desc.device.Type = DescriptorType::Device;
	desc.device.USBVersion = 0x0200;
	desc.device.DeviceClass = 0xFF;
	desc.device.DeviceSubClass = 0;
	desc.device.DeviceProtocol = 0;
	desc.device.MaxPacketSize0 = 0x20;
	desc.device.idVendor = 0x1209;
	desc.device.idProduct = 0x0001;
	desc.device.DeviceVersion = 0x0001;
	desc.device.Manufacturer = 0;
	desc.device.Product = 0;
	desc.device.SerialNumber = 0;
	desc.device.NumConfigurations = 1;

	desc.configuration.Length = sizeof(USBConfigurationDescriptor);
	desc.configuration.Type = DescriptorType::Configuration;
	desc.configuration.TotalLength = sizeof(USBConfigurationDescriptor) + sizeof(USBInterfaceDescriptor) + sizeof(USBEndpointDescriptor);
	desc.configuration.NumInterfaces = 1;
	desc.configuration.ConfigurationValue = 1;
	desc.configuration.Configuration = 0;
	desc.configuration.Attributes = 0xC0;
	desc.configuration.MaxPower = 5;

	desc.interface.Length = sizeof(USBInterfaceDescriptor);
	desc.interface.Type = DescriptorType::Interface;
	desc.interface.InterfaceNumber = 0;
	desc.interface.AlternateSetting = 0;
	desc.interface.NumEndpoints = 2;
	desc.interface.InterfaceClass = 0xFF;
	desc.interface.InterfaceSubClass = 0xFF;
	desc.interface.InterfaceProtocol = 0xFF;
	desc.interface.Interface = 0;

	desc.endpointOut.Length = sizeof(USBEndpointDescriptor);
	desc.endpointOut.Type = DescriptorType::Endpoint;
	desc.endpointOut.EndpointAddress = 0x01;
	desc.endpointOut.Attributes = 0x03;
	desc.endpointOut.MaxPacketSize = ADDR1_RX_SIZE;
	desc.endpointOut.Interval = 10;

	desc.endpointIn.Length = sizeof(USBEndpointDescriptor);
	desc.endpointIn.Type = DescriptorType::Endpoint;
	desc.endpointIn.EndpointAddress = 0x01;
	desc.endpointIn.Attributes = 0x83;
	desc.endpointIn.MaxPacketSize = ADDR1_TX_SIZE;
	desc.endpointIn.Interval = 10;
}
