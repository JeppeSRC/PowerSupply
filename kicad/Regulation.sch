EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4050 2750 0    50   Input ~ 0
Vout
Text HLabel 4900 4750 0    50   Input ~ 0
Iset
Text HLabel 5400 3900 0    50   Input ~ 0
Vset
Wire Wire Line
	6700 2850 6900 2850
Wire Wire Line
	6900 2850 6900 2900
Wire Wire Line
	6850 2200 6850 1750
Wire Wire Line
	6850 1750 6250 1750
Wire Wire Line
	6250 1750 6250 2100
Connection ~ 6150 2850
Wire Wire Line
	6150 2850 6400 2850
Wire Wire Line
	6850 2200 7000 2200
Text HLabel 7150 2200 2    50   Output ~ 0
Vread
Text HLabel 4900 4550 0    50   Input ~ 0
Iread
Wire Wire Line
	4900 4550 5000 4550
Text HLabel 7550 3800 2    50   Output ~ 0
Vreg
Wire Wire Line
	4650 2850 4650 3150
Wire Wire Line
	4650 3150 4050 3150
Wire Wire Line
	4050 3150 4050 2950
Wire Wire Line
	6150 2300 6250 2300
Wire Wire Line
	4900 4750 4950 4750
Wire Wire Line
	6150 3700 6300 3700
Text Notes 5150 3050 0    39   ~ 0
(9.88 / 59.88) * 20 = 3.3\n
Connection ~ 4650 2850
Wire Wire Line
	7000 2200 7000 2100
Connection ~ 7000 2200
Wire Wire Line
	7000 2200 7150 2200
Wire Wire Line
	4950 4900 4950 4750
Connection ~ 4950 4750
Wire Wire Line
	4950 4750 5000 4750
$Comp
L Device:R R21
U 1 1 5CA4CBE5
P 6550 2850
F 0 "R21" V 6450 2900 50  0000 R CNN
F 1 "9k88" V 6650 2900 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 2850 50  0001 C CNN
F 3 "~" H 6550 2850 50  0001 C CNN
F 4 "TNPW08059K88BEEN" H 6550 2850 50  0001 C CNN "MPN"
	1    6550 2850
	0    1    1    0   
$EndComp
$Comp
L symbols:OPA4196 U1
U 4 1 5CA4D15A
P 6450 2200
F 0 "U1" H 6575 1835 50  0000 C CNN
F 1 "OPA4196" H 6575 1926 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6450 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 6550 2500 50  0001 C CNN
F 4 "OPA4196IDR" H 6450 2200 50  0001 C CNN "MPN"
	4    6450 2200
	1    0    0    1   
$EndComp
$Comp
L symbols:OPA4196 U1
U 2 1 5CA4D6FC
P 6500 3800
F 0 "U1" H 6625 4165 50  0000 C CNN
F 1 "OPA4196" H 6625 4074 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6500 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 6600 4100 50  0001 C CNN
F 4 "OPA4196IDR" H 6500 3800 50  0001 C CNN "MPN"
	2    6500 3800
	1    0    0    -1  
$EndComp
$Comp
L symbols:OPA4196 U1
U 3 1 5CA4ED48
P 5200 4650
F 0 "U1" H 5325 5015 50  0000 C CNN
F 1 "OPA4196" H 5325 4924 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5200 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 5300 4950 50  0001 C CNN
F 4 "OPA4196IDR" H 5200 4650 50  0001 C CNN "MPN"
	3    5200 4650
	1    0    0    -1  
$EndComp
$Comp
L symbols:OPA4196 U1
U 5 1 5CA456C8
P 4250 2850
F 0 "U1" H 4375 3215 50  0000 C CNN
F 1 "OPA4196" H 4375 3124 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4250 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 4350 3150 50  0001 C CNN
F 4 "OPA4196IDR" H 4250 2850 50  0001 C CNN "MPN"
	5    4250 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 5CE42DE3
P 7150 3800
F 0 "R23" V 6943 3800 50  0000 C CNN
F 1 "1k" V 7034 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 3800 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 7150 3800 50  0001 C CNN
F 4 "RT0805FRE071KL" H 7150 3800 50  0001 C CNN "MPN"
	1    7150 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5CF8CD4B
P 4800 2850
F 0 "R16" V 4593 2850 50  0000 C CNN
F 1 "10k" V 4684 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4730 2850 50  0001 C CNN
F 3 "~" H 4800 2850 50  0001 C CNN
F 4 "APC0805B10K0N" H 4800 2850 50  0001 C CNN "MPN"
	1    4800 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5CF8DAB4
P 5400 2850
F 0 "R18" V 5193 2850 50  0000 C CNN
F 1 "10k" V 5284 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5330 2850 50  0001 C CNN
F 3 "~" H 5400 2850 50  0001 C CNN
F 4 "APC0805B10K0N" H 5400 2850 50  0001 C CNN "MPN"
	1    5400 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 5CF8E4B8
P 5700 2850
F 0 "R19" V 5493 2850 50  0000 C CNN
F 1 "10k" V 5584 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5630 2850 50  0001 C CNN
F 3 "~" H 5700 2850 50  0001 C CNN
F 4 "APC0805B10K0N" H 5700 2850 50  0001 C CNN "MPN"
	1    5700 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 5CF8F018
P 6000 2850
F 0 "R20" V 5793 2850 50  0000 C CNN
F 1 "10k" V 5884 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5930 2850 50  0001 C CNN
F 3 "~" H 6000 2850 50  0001 C CNN
F 4 "APC0805B10K0N" H 6000 2850 50  0001 C CNN "MPN"
	1    6000 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5CF91340
P 5100 2850
F 0 "R17" V 4893 2850 50  0000 C CNN
F 1 "10k" V 4984 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 2850 50  0001 C CNN
F 3 "~" H 5100 2850 50  0001 C CNN
F 4 "APC0805B10K0N" H 5100 2850 50  0001 C CNN "MPN"
	1    5100 2850
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5D27FEA5
P 7000 2100
F 0 "TP2" H 7058 2218 50  0000 L CNN
F 1 "Vread" H 7058 2127 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7200 2100 50  0001 C CNN
F 3 "~" H 7200 2100 50  0001 C CNN
	1    7000 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5D281C71
P 7425 3725
F 0 "TP3" H 7483 3843 50  0000 L CNN
F 1 "Vreg" H 7483 3752 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7625 3725 50  0001 C CNN
F 3 "~" H 7625 3725 50  0001 C CNN
	1    7425 3725
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5D2877CA
P 6050 3750
F 0 "TP4" H 5992 3776 50  0000 R CNN
F 1 "Vset" H 5992 3867 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6250 3750 50  0001 C CNN
F 3 "~" H 6250 3750 50  0001 C CNN
	1    6050 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5D28AE47
P 4950 4900
F 0 "TP5" H 4892 4926 50  0000 R CNN
F 1 "Iset" H 4892 5017 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5150 4900 50  0001 C CNN
F 3 "~" H 5150 4900 50  0001 C CNN
	1    4950 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 2850 6150 3700
$Comp
L power:GNDA #PWR0111
U 1 1 5D809308
P 6900 2900
F 0 "#PWR0111" H 6900 2650 50  0001 C CNN
F 1 "GNDA" H 6905 2727 50  0000 C CNN
F 2 "" H 6900 2900 50  0001 C CNN
F 3 "" H 6900 2900 50  0001 C CNN
	1    6900 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2300 6150 2850
Wire Wire Line
	6900 3800 7000 3800
Wire Wire Line
	6050 3900 6300 3900
Wire Wire Line
	5700 3900 6050 3900
Connection ~ 6050 3900
$Comp
L Device:R R?
U 1 1 5E99E59E
P 5550 3900
F 0 "R?" V 5343 3900 50  0000 C CNN
F 1 "10K" V 5434 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5480 3900 50  0001 C CNN
F 3 "CRCW080510K0FKEAC" H 5550 3900 50  0001 C CNN
	1    5550 3900
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5E9A0075
P 5950 4250
F 0 "Q?" H 6156 4296 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 6156 4205 50  0000 L CNN
F 2 "" H 6150 4350 50  0001 C CNN
F 3 "~" H 5950 4250 50  0001 C CNN
	1    5950 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4050 6050 3900
Wire Wire Line
	6050 3750 6050 3900
$Comp
L Device:R R?
U 1 1 5E9A2FF5
P 5700 4450
F 0 "R?" H 5770 4496 50  0000 L CNN
F 1 "100R" H 5770 4405 50  0000 L CNN
F 2 "" V 5630 4450 50  0001 C CNN
F 3 "~" H 5700 4450 50  0001 C CNN
	1    5700 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4250 5700 4250
Wire Wire Line
	5700 4250 5700 4300
Wire Wire Line
	5700 4600 5700 4650
Wire Wire Line
	5700 4650 5600 4650
Wire Wire Line
	6050 4450 6050 4600
$Comp
L power:GNDA #PWR?
U 1 1 5E9A5B3D
P 6050 4600
F 0 "#PWR?" H 6050 4350 50  0001 C CNN
F 1 "GNDA" H 6055 4427 50  0000 C CNN
F 2 "" H 6050 4600 50  0001 C CNN
F 3 "" H 6050 4600 50  0001 C CNN
	1    6050 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3800 7425 3800
Wire Wire Line
	7425 3725 7425 3800
Connection ~ 7425 3800
Wire Wire Line
	7425 3800 7300 3800
$EndSCHEMATC
