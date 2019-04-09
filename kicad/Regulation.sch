EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 26 0
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
Text HLabel 4400 2750 0    50   Input ~ 0
Vout
Text HLabel 2000 5050 0    50   Input ~ 0
Iset
Text HLabel 3950 3900 0    50   Input ~ 0
Vset
$Comp
L Device:R R22
U 1 1 5CA4CAB6
P 5600 2850
F 0 "R22" V 5393 2850 50  0000 C CNN
F 1 "50k" V 5484 2850 50  0000 C CNN
F 2 "" V 5530 2850 50  0001 C CNN
F 3 "~" H 5600 2850 50  0001 C CNN
	1    5600 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R27
U 1 1 5CA4CBE5
P 6550 2850
F 0 "R27" V 6450 2900 50  0000 R CNN
F 1 "9k65" V 6650 2900 50  0000 R CNN
F 2 "" V 6480 2850 50  0001 C CNN
F 3 "~" H 6550 2850 50  0001 C CNN
	1    6550 2850
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR015
U 1 1 5CA4CE12
P 6900 2900
F 0 "#PWR015" H 6900 2650 50  0001 C CNN
F 1 "GNDREF" H 6905 2727 50  0001 C CNN
F 2 "" H 6900 2900 50  0001 C CNN
F 3 "" H 6900 2900 50  0001 C CNN
	1    6900 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2850 6900 2850
Wire Wire Line
	6900 2850 6900 2900
$Comp
L Amplifier_Operational:OPA4196 U1
U 2 1 5CA4D15A
P 6450 2200
F 0 "U1" H 6575 1835 50  0000 C CNN
F 1 "OPA4196" H 6575 1926 50  0000 C CNN
F 2 "" H 6450 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 6550 2500 50  0001 C CNN
	2    6450 2200
	1    0    0    1   
$EndComp
Wire Wire Line
	6850 2200 6850 1750
Wire Wire Line
	6850 1750 6300 1750
Wire Wire Line
	6300 1750 6300 2100
Wire Wire Line
	6300 2300 6150 2300
Wire Wire Line
	6150 2300 6150 2850
Connection ~ 6150 2850
Wire Wire Line
	6150 2850 6400 2850
Wire Wire Line
	6850 2200 7150 2200
Connection ~ 6850 2200
Text HLabel 7150 2200 2    50   Output ~ 0
Vread
$Comp
L Amplifier_Operational:OPA4196 U1
U 3 1 5CA4D6FC
P 6500 3800
F 0 "U1" H 6625 4165 50  0000 C CNN
F 1 "OPA4196" H 6625 4074 50  0000 C CNN
F 2 "" H 6500 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 6600 4100 50  0001 C CNN
	3    6500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2850 6150 3700
Wire Wire Line
	6150 3700 6350 3700
$Comp
L Device:R R25
U 1 1 5CA4DC18
P 4100 3900
F 0 "R25" V 3893 3900 50  0000 C CNN
F 1 "100k" V 3984 3900 50  0000 C CNN
F 2 "" V 4030 3900 50  0001 C CNN
F 3 "~" H 4100 3900 50  0001 C CNN
	1    4100 3900
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:PN2222A Q2
U 1 1 5CA4DE97
P 6200 4950
F 0 "Q2" H 6391 4996 50  0000 L CNN
F 1 "PN2222A" H 6391 4905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6400 4875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 6200 4950 50  0001 L CNN
	1    6200 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR014
U 1 1 5CA4DF2D
P 6300 5150
F 0 "#PWR014" H 6300 4900 50  0001 C CNN
F 1 "GNDREF" H 6305 4977 50  0001 C CNN
F 2 "" H 6300 5150 50  0001 C CNN
F 3 "" H 6300 5150 50  0001 C CNN
	1    6300 5150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA4196 U1
U 4 1 5CA4ED48
P 4500 4950
F 0 "U1" H 4625 5315 50  0000 C CNN
F 1 "OPA4196" H 4625 5224 50  0000 C CNN
F 2 "" H 4500 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 4600 5250 50  0001 C CNN
	4    4500 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 5CA4EDDB
P 5650 4950
F 0 "R23" V 5443 4950 50  0000 C CNN
F 1 "10k" V 5534 4950 50  0000 C CNN
F 2 "" V 5580 4950 50  0001 C CNN
F 3 "~" H 5650 4950 50  0001 C CNN
	1    5650 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 4950 5200 4950
Wire Wire Line
	5200 4950 5200 5200
Connection ~ 5200 4950
Wire Wire Line
	5200 4950 4900 4950
$Comp
L Device:R R21
U 1 1 5CA4F35D
P 5200 5350
F 0 "R21" H 5270 5396 50  0000 L CNN
F 1 "10k" H 5270 5305 50  0000 L CNN
F 2 "" V 5130 5350 50  0001 C CNN
F 3 "~" H 5200 5350 50  0001 C CNN
	1    5200 5350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:PN2222A Q1
U 1 1 5CA4F44B
P 5650 5750
F 0 "Q1" H 5841 5796 50  0000 L CNN
F 1 "PN2222A" H 5841 5705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5850 5675 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 5650 5750 50  0001 L CNN
	1    5650 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR013
U 1 1 5CA4F4F1
P 5750 5950
F 0 "#PWR013" H 5750 5700 50  0001 C CNN
F 1 "GNDREF" H 5755 5777 50  0001 C CNN
F 2 "" H 5750 5950 50  0001 C CNN
F 3 "" H 5750 5950 50  0001 C CNN
	1    5750 5950
	1    0    0    -1  
$EndComp
Text HLabel 5750 5550 1    50   Output ~ 0
CLIM
Wire Wire Line
	5200 5500 5200 5750
Wire Wire Line
	5200 5750 5450 5750
Text HLabel 4250 4850 0    50   Input ~ 0
Iread
Wire Wire Line
	6900 3800 7000 3800
Wire Wire Line
	4250 4850 4350 4850
Text HLabel 7650 3800 2    50   Output ~ 0
Vreg
$Comp
L Device:R R28
U 1 1 5CA53939
P 7150 3800
F 0 "R28" V 6943 3800 50  0000 C CNN
F 1 "1k" V 7034 3800 50  0000 C CNN
F 2 "" V 7080 3800 50  0001 C CNN
F 3 "~" H 7150 3800 50  0001 C CNN
	1    7150 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 3800 7450 3800
$Comp
L Device:C_Small C11
U 1 1 5CA53E20
P 7450 4000
F 0 "C11" H 7542 4046 50  0000 L CNN
F 1 "1µF" H 7542 3955 50  0000 L CNN
F 2 "" H 7450 4000 50  0001 C CNN
F 3 "~" H 7450 4000 50  0001 C CNN
	1    7450 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3800 7450 3900
Connection ~ 7450 3800
Wire Wire Line
	7450 3800 7650 3800
$Comp
L power:GNDREF #PWR016
U 1 1 5CA54324
P 7450 4100
F 0 "#PWR016" H 7450 3850 50  0001 C CNN
F 1 "GNDREF" H 7455 3927 50  0001 C CNN
F 2 "" H 7450 4100 50  0001 C CNN
F 3 "" H 7450 4100 50  0001 C CNN
	1    7450 4100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA4196 U?
U 2 1 5CA456C8
P 4550 2850
F 0 "U?" H 4675 3215 50  0000 C CNN
F 1 "OPA4196" H 4675 3124 50  0000 C CNN
F 2 "" H 4550 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 4650 3150 50  0001 C CNN
	2    4550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2850 4950 3150
Wire Wire Line
	4950 3150 4400 3150
Wire Wire Line
	4400 3150 4400 2950
Connection ~ 4950 2850
Wire Wire Line
	4950 2850 5450 2850
Wire Wire Line
	5750 2850 6150 2850
$Comp
L Device:C_Small C?
U 1 1 5CA9D630
P 4600 4050
F 0 "C?" H 4692 4096 50  0000 L CNN
F 1 "100n" H 4692 4005 50  0000 L CNN
F 2 "" H 4600 4050 50  0001 C CNN
F 3 "~" H 4600 4050 50  0001 C CNN
	1    4600 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CA9D6CC
P 4300 4200
F 0 "#PWR?" H 4300 3950 50  0001 C CNN
F 1 "GNDREF" H 4305 4027 50  0001 C CNN
F 2 "" H 4300 4200 50  0001 C CNN
F 3 "" H 4300 4200 50  0001 C CNN
	1    4300 4200
	1    0    0    -1  
$EndComp
Connection ~ 4600 3900
Wire Wire Line
	5800 4950 6000 4950
Wire Wire Line
	6300 3900 6300 4750
$Comp
L Device:R R?
U 1 1 5CA9F7C0
P 4300 4050
F 0 "R?" H 4370 4096 50  0000 L CNN
F 1 "?" H 4370 4005 50  0000 L CNN
F 2 "" V 4230 4050 50  0001 C CNN
F 3 "~" H 4300 4050 50  0001 C CNN
	1    4300 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3950 4600 3900
Wire Wire Line
	4600 4150 4600 4200
Wire Wire Line
	4600 4200 4300 4200
Connection ~ 4300 4200
Wire Wire Line
	4300 3900 4600 3900
Connection ~ 4300 3900
$Comp
L Device:R R?
U 1 1 5CAA1526
P 5250 3900
F 0 "R?" V 5043 3900 50  0000 C CNN
F 1 "100k" V 5134 3900 50  0000 C CNN
F 2 "" V 5180 3900 50  0001 C CNN
F 3 "~" H 5250 3900 50  0001 C CNN
	1    5250 3900
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CAA21C0
P 5550 4050
F 0 "C?" H 5642 4096 50  0000 L CNN
F 1 "100n" H 5642 4005 50  0000 L CNN
F 2 "" H 5550 4050 50  0001 C CNN
F 3 "~" H 5550 4050 50  0001 C CNN
	1    5550 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4150 5550 4200
Connection ~ 4600 4200
Wire Wire Line
	5550 3950 5550 3900
Wire Wire Line
	4300 3900 4250 3900
Wire Wire Line
	6300 3900 6350 3900
$Comp
L Device:C_Small C?
U 1 1 5CAD0AA8
P 4950 4050
F 0 "C?" H 5042 4096 50  0000 L CNN
F 1 "10n" H 5042 4005 50  0000 L CNN
F 2 "" H 4950 4050 50  0001 C CNN
F 3 "~" H 4950 4050 50  0001 C CNN
	1    4950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3900 4950 3900
Wire Wire Line
	4950 3950 4950 3900
Connection ~ 4950 3900
Wire Wire Line
	4600 4200 4950 4200
Wire Wire Line
	4950 4150 4950 4200
Connection ~ 4950 4200
Wire Wire Line
	4950 3900 5100 3900
Wire Wire Line
	4950 4200 5550 4200
$Comp
L Device:C_Small C?
U 1 1 5CAD5D86
P 5900 4050
F 0 "C?" H 5992 4096 50  0000 L CNN
F 1 "10n" H 5992 4005 50  0000 L CNN
F 2 "" H 5900 4050 50  0001 C CNN
F 3 "~" H 5900 4050 50  0001 C CNN
	1    5900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3900 5900 3900
Connection ~ 6300 3900
Wire Wire Line
	5900 3950 5900 3900
Connection ~ 5900 3900
Wire Wire Line
	5900 3900 6300 3900
Wire Wire Line
	5900 4150 5900 4200
Wire Wire Line
	5900 4200 5550 4200
Connection ~ 5550 4200
$Comp
L Device:R R?
U 1 1 5CAD83AA
P 2150 5050
F 0 "R?" V 1943 5050 50  0000 C CNN
F 1 "100k" V 2034 5050 50  0000 C CNN
F 2 "" V 2080 5050 50  0001 C CNN
F 3 "~" H 2150 5050 50  0001 C CNN
	1    2150 5050
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CAD83B1
P 2650 5200
F 0 "C?" H 2742 5246 50  0000 L CNN
F 1 "100n" H 2742 5155 50  0000 L CNN
F 2 "" H 2650 5200 50  0001 C CNN
F 3 "~" H 2650 5200 50  0001 C CNN
	1    2650 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CAD83B8
P 2350 5350
F 0 "#PWR?" H 2350 5100 50  0001 C CNN
F 1 "GNDREF" H 2355 5177 50  0001 C CNN
F 2 "" H 2350 5350 50  0001 C CNN
F 3 "" H 2350 5350 50  0001 C CNN
	1    2350 5350
	1    0    0    -1  
$EndComp
Connection ~ 2650 5050
$Comp
L Device:R R?
U 1 1 5CAD83BF
P 2350 5200
F 0 "R?" H 2420 5246 50  0000 L CNN
F 1 "?" H 2420 5155 50  0000 L CNN
F 2 "" V 2280 5200 50  0001 C CNN
F 3 "~" H 2350 5200 50  0001 C CNN
	1    2350 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 5100 2650 5050
Wire Wire Line
	2650 5300 2650 5350
Wire Wire Line
	2650 5350 2350 5350
Connection ~ 2350 5350
Wire Wire Line
	2350 5050 2650 5050
Connection ~ 2350 5050
$Comp
L Device:R R?
U 1 1 5CAD83CC
P 3300 5050
F 0 "R?" V 3093 5050 50  0000 C CNN
F 1 "100k" V 3184 5050 50  0000 C CNN
F 2 "" V 3230 5050 50  0001 C CNN
F 3 "~" H 3300 5050 50  0001 C CNN
	1    3300 5050
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CAD83D3
P 3600 5200
F 0 "C?" H 3692 5246 50  0000 L CNN
F 1 "100n" H 3692 5155 50  0000 L CNN
F 2 "" H 3600 5200 50  0001 C CNN
F 3 "~" H 3600 5200 50  0001 C CNN
	1    3600 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5300 3600 5350
Connection ~ 2650 5350
Wire Wire Line
	3600 5100 3600 5050
Wire Wire Line
	2350 5050 2300 5050
$Comp
L Device:C_Small C?
U 1 1 5CAD83DE
P 3000 5200
F 0 "C?" H 3092 5246 50  0000 L CNN
F 1 "10n" H 3092 5155 50  0000 L CNN
F 2 "" H 3000 5200 50  0001 C CNN
F 3 "~" H 3000 5200 50  0001 C CNN
	1    3000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 5050 3000 5050
Wire Wire Line
	3000 5100 3000 5050
Wire Wire Line
	2650 5350 3000 5350
Wire Wire Line
	3000 5300 3000 5350
Connection ~ 3000 5350
Wire Wire Line
	3000 5350 3600 5350
$Comp
L Device:C_Small C?
U 1 1 5CAD83EE
P 3950 5200
F 0 "C?" H 4042 5246 50  0000 L CNN
F 1 "10n" H 4042 5155 50  0000 L CNN
F 2 "" H 3950 5200 50  0001 C CNN
F 3 "~" H 3950 5200 50  0001 C CNN
	1    3950 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5050 3950 5050
Wire Wire Line
	3950 5100 3950 5050
Connection ~ 3950 5050
Wire Wire Line
	3950 5300 3950 5350
Wire Wire Line
	3950 5350 3600 5350
Connection ~ 3600 5350
Wire Wire Line
	3950 5050 4350 5050
Wire Wire Line
	3150 5050 3000 5050
Connection ~ 3000 5050
Wire Wire Line
	3450 5050 3600 5050
Connection ~ 3600 5050
Wire Wire Line
	5400 3900 5550 3900
Connection ~ 5550 3900
$EndSCHEMATC
