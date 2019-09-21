EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L symbols:FQP17P10 U?
U 1 1 5CA4A679
P 5350 2500
AR Path="/5CA4A679" Ref="U?"  Part="1" 
AR Path="/5CA4A3FE/5CA4A679" Ref="U6"  Part="1" 
F 0 "U6" V 5593 2500 50  0000 C CNN
F 1 "FQP17P10" V 5502 2500 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5300 2500 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/FQP17P10-1296917.pdf" H 5300 2500 50  0001 C CNN
F 4 "FQP17P10" H 5350 2500 50  0001 C CNN "MPN"
	1    5350 2500
	0    1    -1   0   
$EndComp
$Comp
L symbols:FQP17P10 U?
U 1 1 5CA4A681
P 5350 3100
AR Path="/5CA4A681" Ref="U?"  Part="1" 
AR Path="/5CA4A3FE/5CA4A681" Ref="U7"  Part="1" 
F 0 "U7" V 5593 3100 50  0000 C CNN
F 1 "FQP17P10" V 5502 3100 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5300 3100 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/FQP17P10-1296917.pdf" H 5300 3100 50  0001 C CNN
F 4 "FQP17P10" H 5350 3100 50  0001 C CNN "MPN"
	1    5350 3100
	0    1    -1   0   
$EndComp
$Comp
L symbols:FQP17P10 U?
U 1 1 5CA4A689
P 5350 3700
AR Path="/5CA4A689" Ref="U?"  Part="1" 
AR Path="/5CA4A3FE/5CA4A689" Ref="U8"  Part="1" 
F 0 "U8" V 5593 3700 50  0000 C CNN
F 1 "FQP17P10" V 5502 3700 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5300 3700 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/FQP17P10-1296917.pdf" H 5300 3700 50  0001 C CNN
F 4 "FQP17P10" H 5350 3700 50  0001 C CNN "MPN"
	1    5350 3700
	0    1    -1   0   
$EndComp
Wire Wire Line
	5150 2500 5050 2500
Wire Wire Line
	5050 3100 5150 3100
Wire Wire Line
	5050 3100 5050 3700
Wire Wire Line
	5050 3700 5150 3700
Connection ~ 5050 3100
Wire Wire Line
	5550 3700 5700 3700
Wire Wire Line
	5550 3100 5700 3100
Connection ~ 5700 3100
Wire Wire Line
	5700 3100 5700 3700
Wire Wire Line
	5550 2500 5700 2500
Wire Wire Line
	5700 2500 5700 3100
Wire Wire Line
	5050 2500 5050 3100
Text HLabel 4550 3100 0    50   Input ~ 0
Vin
Wire Wire Line
	4550 3100 4600 3100
Wire Wire Line
	5700 3100 5900 3100
Text HLabel 6150 3100 2    50   Output ~ 0
Vout
Text HLabel 5350 4450 3    50   Input ~ 0
VReg_set
$Comp
L Device:C_Small C10
U 1 1 5CA4B52D
P 4600 3200
F 0 "C10" H 4692 3246 50  0000 L CNN
F 1 "10µF HV" H 4692 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4600 3200 50  0001 C CNN
F 3 "~" H 4600 3200 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 4600 3200 50  0001 C CNN "MPN"
	1    4600 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5CA4BA1E
P 5900 3200
F 0 "C11" H 5992 3246 50  0000 L CNN
F 1 "10µF HV" H 5992 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5900 3200 50  0001 C CNN
F 3 "~" H 5900 3200 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 5900 3200 50  0001 C CNN "MPN"
	1    5900 3200
	1    0    0    -1  
$EndComp
Connection ~ 5900 3100
Wire Wire Line
	5900 3100 6150 3100
Connection ~ 4600 3100
Wire Wire Line
	4600 3100 5050 3100
$Comp
L Mechanical:Heatsink HS1
U 1 1 5CFE3377
P 6750 1950
F 0 "HS1" H 6891 2071 50  0000 L CNN
F 1 "RA-T2X-xxE" H 6891 1980 50  0000 L CNN
F 2 "footprints:RA-T2X-xxE" H 6762 1950 50  0001 C CNN
F 3 "~" H 6762 1950 50  0001 C CNN
F 4 "RA-T2X-xxE" H 6750 1950 50  0001 C CNN "MPN"
	1    6750 1950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS2
U 1 1 5CFE6A1F
P 7550 1950
F 0 "HS2" H 7691 2071 50  0000 L CNN
F 1 "RA-T2X-xxE" H 7691 1980 50  0000 L CNN
F 2 "footprints:RA-T2X-xxE" H 7562 1950 50  0001 C CNN
F 3 "~" H 7562 1950 50  0001 C CNN
F 4 "RA-T2X-xxE" H 7550 1950 50  0001 C CNN "MPN"
	1    7550 1950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS3
U 1 1 5CFE6CAC
P 8350 1950
F 0 "HS3" H 8491 2071 50  0000 L CNN
F 1 "RA-T2X-xxE" H 8491 1980 50  0000 L CNN
F 2 "footprints:RA-T2X-xxE" H 8362 1950 50  0001 C CNN
F 3 "~" H 8362 1950 50  0001 C CNN
F 4 "RA-T2X-xxE" H 8350 1950 50  0001 C CNN "MPN"
	1    8350 1950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS4
U 1 1 5CFE707C
P 9150 1950
F 0 "HS4" H 9291 2071 50  0000 L CNN
F 1 "RA-T2X-xxE" H 9291 1980 50  0000 L CNN
F 2 "footprints:RA-T2X-xxE" H 9162 1950 50  0001 C CNN
F 3 "~" H 9162 1950 50  0001 C CNN
F 4 "RA-T2X-xxE" H 9150 1950 50  0001 C CNN "MPN"
	1    9150 1950
	1    0    0    -1  
$EndComp
Connection ~ 5700 2500
Wire Wire Line
	5700 1900 5700 2500
Wire Wire Line
	5550 1900 5700 1900
Connection ~ 5050 2500
Wire Wire Line
	5050 2500 5050 1900
Wire Wire Line
	5050 1900 5150 1900
$Comp
L symbols:FQP17P10 U?
U 1 1 5CA4A671
P 5350 1900
AR Path="/5CA4A671" Ref="U?"  Part="1" 
AR Path="/5CA4A3FE/5CA4A671" Ref="U5"  Part="1" 
F 0 "U5" V 5593 1900 50  0000 C CNN
F 1 "FQP17P10" V 5502 1900 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5300 1900 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/FQP17P10-1296917.pdf" H 5300 1900 50  0001 C CNN
F 4 "FQP17P10" H 5350 1900 50  0001 C CNN "MPN"
	1    5350 1900
	0    1    -1   0   
$EndComp
$Comp
L power:GNDA #PWR04
U 1 1 5D816ECC
P 5900 3300
F 0 "#PWR04" H 5900 3050 50  0001 C CNN
F 1 "GNDA" H 5905 3127 50  0000 C CNN
F 2 "" H 5900 3300 50  0001 C CNN
F 3 "" H 5900 3300 50  0001 C CNN
	1    5900 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR03
U 1 1 5D817C1D
P 4600 3300
F 0 "#PWR03" H 4600 3050 50  0001 C CNN
F 1 "GNDA" H 4605 3127 50  0000 C CNN
F 2 "" H 4600 3300 50  0001 C CNN
F 3 "" H 4600 3300 50  0001 C CNN
	1    4600 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R39
U 1 1 5DB0B8C7
P 5350 4100
F 0 "R39" H 5280 4054 50  0000 R CNN
F 1 "100R" H 5280 4145 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5280 4100 50  0001 C CNN
F 3 "~" H 5350 4100 50  0001 C CNN
	1    5350 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 4250 5350 4450
$Comp
L Device:R R37
U 1 1 5DB0D18B
P 6400 2750
F 0 "R37" V 6200 2750 50  0000 C CNN
F 1 "100R" V 6300 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 2750 50  0001 C CNN
F 3 "~" H 6400 2750 50  0001 C CNN
	1    6400 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R24
U 1 1 5DB0E618
P 6400 2150
F 0 "R24" V 6193 2150 50  0000 C CNN
F 1 "100R" V 6284 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 2150 50  0001 C CNN
F 3 "~" H 6400 2150 50  0001 C CNN
	1    6400 2150
	0    1    1    0   
$EndComp
Connection ~ 6550 2750
Wire Wire Line
	6550 2750 6550 2150
Wire Wire Line
	6250 2150 5350 2150
Wire Wire Line
	6250 2750 5350 2750
Wire Wire Line
	5350 4250 6550 4250
Wire Wire Line
	6550 2750 6550 4250
Connection ~ 5350 4250
$Comp
L Device:R R38
U 1 1 5DB178D6
P 4950 4100
F 0 "R38" H 5020 4146 50  0000 L CNN
F 1 "100R" H 5020 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4880 4100 50  0001 C CNN
F 3 "~" H 4950 4100 50  0001 C CNN
	1    4950 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4250 5350 4250
Wire Wire Line
	4950 3950 4950 3350
Wire Wire Line
	4950 3350 5350 3350
$EndSCHEMATC
