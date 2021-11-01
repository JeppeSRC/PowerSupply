# USB 
This is a document exmplaning how to communicate with the device over USB

The device has 3 endpoints:
- Endpoint 0 which is the default control pipe for control transfers (unused after enumeration).
- Endpoint 1 is an interrupt endpoint which is used for reading/setting Voltage/Current settings.
- Endpoint 2 is a bulk endpoint used settings.

Sending a 0 size OUT packet to a endpoint will preload data for the next IN packet. This is only necessary if a significant time has passed (or if the polling interval is slow) since the last IN packet. Because the data for a IN packet is loaded on the previous IN packet.

## Data structures used on endpoint 1

### IN (Device To Host)
```
struct USBInData1 { 
	uint16 vReadADC;
	uint16 iReadADC;
	uint16 vRead;
	uint16 iRead;
	uint16 vSetDAC;
	uint16 iSetDAC;
	uint16 vSet;
	uint16 iSet;
}
```

`vReadADC`: The current `vRead` (12/16) bit ADC value.

`iReadADC`: The current `iRead` (12/16) bit ADC value.

`vRead`: Is the measured voltage on the output. 

`iRead`: Is the measured current.

`vSetDAC`: The current `vSet` 12 bit DAC value

`iSetDAC`: The current `iSet` 12 bit DAC value.

`vSet`: Is the set voltage.

`iSet`: Is the set current.

All parameters except the ADC and DAC ones are encoded the same way. Where the high byte is the value before the decimal point and the low byte is after the decimal point.
So 12.35V is 0x0C23 in hex.

### OUT (Host To Device)
```
struct USBOutData1 {
    uint16 vSetDAC;
    uint16 iSetDAC;
    uint16 vSet;
    uint16 iSet;
}
```
`vSetDAC`: Sets the raw `vSet` 12 bit DAC value

`vSet`: Is the voltage to be set.

`iSetDAC`: Sets the raw `iSet` 12 bit DAC value.

`iSet`: Is the current to be set.

They use the same encoding as above. Except if the MSB is set it's ignored. The [`MDAC`](#attributes) bit needs to be set to be able to set the DAC values.
If the MSB is cleared in all parameters. `vSet` and `iSet` takes priority.

## Data structures used on endpoint 2
### IN (Device To Host)

```
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
}

```
`Version`: The current FW version.

`FanSpeed`: The current speed of the fan. Where 0 is nothing and 255 is full speed

`FanRPM`: The current fan rpm.

`Temperature`: The current heatsink temperature, ranging from -40C to 125C.

`TemperatureADC`: The current `Temperature` 12 bit ADC value.

`vSetCal`: calibration values for `vSet`.

`iSetCal`: calibration values for `iSet`.

`Attributes`:  See [Attributes](#attributes).

### OUT (Host To Device)

```
struct USBOutData2 {
    uint8  FanSpeed;
    float  vSetCal;
    float  iSetCal;
    uint32 Attributes;
}
```

`FanSpeed`: Sets the fan speed. 0-255.

`vSetCal`: calibration values for `vSet`.

`iSetCal`: calibration values for `iSet`.

`Attributes`: See [Attributes](#attributes).

## Attributes

List of Attributes:

Bit(s) | 31    | 30    | 29     | 28     | 27-4     | 3     | 2     | 1    | 0      |
-------|-------|-------|--------|--------|----------|-------|-------|------|--------|
Attrib | ICALI | VCALI | CICALI | CVCALI | Reserved | SDADC | MFAN  | MDAC | EXCLPC |

`ICALI`: If set in `USBOutData2`, `iSetCal` will be the new `iSetCal` value. When returned in `USBInData2` it will be set if `iSetCal`has been modified, ie it no longer has the defualt calibration.

`VCALI`: If set in `USBOutData2`, `vSetCal` will be the new `vSetCal` value. When returned in `USBInData2` it will be set if `vSetCal`has been modified, ie it no longer has the defualt calibration.

`CICALI`: Clears `ICALI` in `USBInData2` and resets `iSetCal` to default.

`CVCALI`: Clears `VCALI` in `USBInData2` and resets `vSetCal` to default.

`SDADC`: If this bit is set the 16 bit SDADC will be used.

`MFAN`: If this bit is set it allows the PC software to control the fan speed.

`MDAC`: If this bit is set it allows the PC software to set the raw 12 bit DAC values.

`EXCLPC`: If this bit is set it gives the PC software full control. Physical encoders and switches will no longer do anything.

#### Notes
> If `xCALI` and `CxCALI` are set at the same time `CxCALI` takes precedence.