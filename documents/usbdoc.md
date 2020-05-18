# USB 
This is a document exmplaning how to communicate with the device over USB

The device has two endpoints:
- Endpoint 0 which is the default control pipe for control transfers.
- Endpoint 1 is a interrupt endpoint which is used for all data transfers.

## Data structures used on endpoint 1
### Input
```
struct USBInData {
    uint16 vSet : 13;
    uint16 iSet : 13;
    uint16 FanSpeed : 9;
    uint16 Attributes;
}
```

`vSet`: Is used to set the wanted output voltage. Bits 0:11 are used for the value and bit 12 is used to select what kind of value. If bit 12 is set to 1 the value in bits 0:11 is the actually 12 bit DAC value. If bit 12 is cleared the value in bits 0:11 is the actual voltage ranging from 0 to 2000, where each unit is 10mV. So a value of 1200 would result in a voltage of 12.00V.

`iSet`: Is used to set the wanted current limit. Bits 0:11 are used for the value and bit 12 is used to select what kind of value. If bit 12 is set to 1 the value in bits 0:11 is the actually 12 bit DAC value. If bit 12 is cleared the value in bits 0:11 is the actual current limit ranging from 0 to 400, where each unit is 10mA. So a value of 100 would result in a current limit of 1.00A.

`Attributes`: TBD

`FanSpeed`: Is used to set the fan mode and speed. Bits 0:7 is value used for the fan speed. Bit 8 is used to set the fan in manual or auto. If bit 8 is set the fan is in auto, if cleared the fan speed will be set by the value in bits 0:7.

### Output
```
struct USBOutData {
    uint16 vRead : 11;
    uint16 iRead : 9;
    uint16 vReadADC : 12;
    uint16 iReadADC : 12;
    uint8  FanSpeed;
    uint16 FanRPM;
    int8   Temperature;
    uint16 TemperatureADC : 12;
    uint16 Attributes;
}
```

`vRead`: The current read output voltage.

`iRead`: The current read current.

`vReadADC`: The current `vRead` 12 bit ADC value.

`iReadADC`: The current `iRead` 12 bit ADC value.

`FanSpeed`: The current speed of the fan.

`FanRPM`: The current fan rpm.

`Temperature`: The current heatsink temperature, ranging from -40 to 125.

`TemperatureADC`: The current `Temperature` 12 bit ADC value.

`Attributes`: TBD
