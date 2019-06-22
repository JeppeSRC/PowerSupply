EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 29 0
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
Text Label 5350 2750 0    50   ~ 0
VReg
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
Text Label 5350 3350 0    50   ~ 0
VReg
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
Text Label 5350 3950 0    50   ~ 0
VReg
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
Text HLabel 5350 3950 3    50   Input ~ 0
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
L power:GNDREF #PWR016
U 1 1 5CA4B6B6
P 4600 3300
F 0 "#PWR016" H 4600 3050 50  0001 C CNN
F 1 "GNDREF" H 4605 3127 50  0001 C CNN
F 2 "" H 4600 3300 50  0001 C CNN
F 3 "" H 4600 3300 50  0001 C CNN
	1    4600 3300
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
$Comp
L power:GNDREF #PWR017
U 1 1 5CA4BA25
P 5900 3300
F 0 "#PWR017" H 5900 3050 50  0001 C CNN
F 1 "GNDREF" H 5905 3127 50  0001 C CNN
F 2 "" H 5900 3300 50  0001 C CNN
F 3 "" H 5900 3300 50  0001 C CNN
	1    5900 3300
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
P 6050 2000
F 0 "HS1" H 6191 2121 50  0000 L CNN
F 1 "RA-T2X-xxE" H 6191 2030 50  0000 L CNN
F 2 "footprints:RA-T2X-xxE" H 6062 2000 50  0001 C CNN
F 3 "~" H 6062 2000 50  0001 C CNN
F 4 "RA-T2X-xxE" H 6050 2000 50  0001 C CNN "MPN"
	1    6050 2000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS2
U 1 1 5CFE6A1F
P 6850 2000
F 0 "HS2" H 6991 2121 50  0000 L CNN
F 1 "RA-T2X-xxE" H 6991 2030 50  0000 L CNN
F 2 "footprints:RA-T2X-xxE" H 6862 2000 50  0001 C CNN
F 3 "~" H 6862 2000 50  0001 C CNN
F 4 "RA-T2X-xxE" H 6850 2000 50  0001 C CNN "MPN"
	1    6850 2000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS3
U 1 1 5CFE6CAC
P 7650 2000
F 0 "HS3" H 7791 2121 50  0000 L CNN
F 1 "RA-T2X-xxE" H 7791 2030 50  0000 L CNN
F 2 "footprints:RA-T2X-xxE" H 7662 2000 50  0001 C CNN
F 3 "~" H 7662 2000 50  0001 C CNN
F 4 "RA-T2X-xxE" H 7650 2000 50  0001 C CNN "MPN"
	1    7650 2000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS4
U 1 1 5CFE707C
P 8450 2000
F 0 "HS4" H 8591 2121 50  0000 L CNN
F 1 "RA-T2X-xxE" H 8591 2030 50  0000 L CNN
F 2 "footprints:RA-T2X-xxE" H 8462 2000 50  0001 C CNN
F 3 "~" H 8462 2000 50  0001 C CNN
F 4 "RA-T2X-xxE" H 8450 2000 50  0001 C CNN "MPN"
	1    8450 2000
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
Text Label 5350 2150 0    50   ~ 0
VReg
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
$EndSCHEMATC
