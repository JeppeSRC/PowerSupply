#include "usb.h"

void Endpoint::operator=(uint16 data) {
    *address = base | ((data ^ CTR_TX ^ CTR_RX));
}

uint16 Endpoint::operator&(uint16 data) {
    return *address & data;
}