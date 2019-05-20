EESchema Schematic File Version 4
EELAYER 29 0
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
Text HLabel 4350 2750 0    50   Input ~ 0
Vout
Text HLabel 5800 5050 0    50   Input ~ 0
Iset
Text HLabel 6150 3900 0    50   Input ~ 0
Vset
$Comp
L Device:R R16
U 1 1 5CA4CAB6
P 5600 2850
F 0 "R16" V 5393 2850 50  0000 C CNN
F 1 "50k" V 5484 2850 50  0000 C CNN
F 2 "" V 5530 2850 50  0001 C CNN
F 3 "~" H 5600 2850 50  0001 C CNN
	1    5600 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5CA4CBE5
P 6550 2850
F 0 "R17" V 6450 2900 50  0000 R CNN
F 1 "9k65" V 6650 2900 50  0000 R CNN
F 2 "" V 6480 2850 50  0001 C CNN
F 3 "~" H 6550 2850 50  0001 C CNN
	1    6550 2850
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR016
U 1 1 5CA4CE12
P 6900 2900
F 0 "#PWR016" H 6900 2650 50  0001 C CNN
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
L symbols:OPA4196 U1
U 4 1 5CA4D15A
P 6450 2200
F 0 "U1" H 6575 1835 50  0000 C CNN
F 1 "OPA4196" H 6575 1926 50  0000 C CNN
F 2 "" H 6450 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 6550 2500 50  0001 C CNN
	4    6450 2200
	1    0    0    1   
$EndComp
Wire Wire Line
	6850 2200 6850 1750
Wire Wire Line
	6850 1750 6250 1750
Wire Wire Line
	6250 1750 6250 2100
Wire Wire Line
	6150 2300 6150 2850
Connection ~ 6150 2850
Wire Wire Line
	6150 2850 6400 2850
Wire Wire Line
	6850 2200 7150 2200
Text HLabel 7150 2200 2    50   Output ~ 0
Vread
$Comp
L symbols:OPA4196 U4
U 2 1 5CA4D6FC
P 6500 3800
F 0 "U4" H 6625 4165 50  0000 C CNN
F 1 "OPA4196" H 6625 4074 50  0000 C CNN
F 2 "" H 6500 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 6600 4100 50  0001 C CNN
	2    6500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2850 6150 3700
Wire Wire Line
	6150 3700 6350 3700
$Comp
L symbols:OPA4196 U4
U 3 1 5CA4ED48
P 6100 4950
F 0 "U4" H 6225 5315 50  0000 C CNN
F 1 "OPA4196" H 6225 5224 50  0000 C CNN
F 2 "" H 6100 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 6200 5250 50  0001 C CNN
	3    6100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4950 6800 5200
Connection ~ 6800 4950
Wire Wire Line
	6800 4950 6500 4950
$Comp
L Device:R R19
U 1 1 5CA4F35D
P 6800 5350
F 0 "R19" H 6870 5396 50  0000 L CNN
F 1 "10k" H 6870 5305 50  0000 L CNN
F 2 "" V 6730 5350 50  0001 C CNN
F 3 "~" H 6800 5350 50  0001 C CNN
	1    6800 5350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:PN2222A Q1
U 1 1 5CA4F44B
P 7250 5750
F 0 "Q1" H 7441 5796 50  0000 L CNN
F 1 "PN2222A" H 7441 5705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7450 5675 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 7250 5750 50  0001 L CNN
	1    7250 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR017
U 1 1 5CA4F4F1
P 7350 5950
F 0 "#PWR017" H 7350 5700 50  0001 C CNN
F 1 "GNDREF" H 7355 5777 50  0001 C CNN
F 2 "" H 7350 5950 50  0001 C CNN
F 3 "" H 7350 5950 50  0001 C CNN
	1    7350 5950
	1    0    0    -1  
$EndComp
Text HLabel 7350 5550 1    50   Output ~ 0
CLIM
Wire Wire Line
	6800 5500 6800 5750
Wire Wire Line
	6800 5750 7050 5750
Text HLabel 5800 4850 0    50   Input ~ 0
Iread
Wire Wire Line
	6900 3800 7000 3800
Wire Wire Line
	5800 4850 5900 4850
Text HLabel 8100 3800 2    50   Output ~ 0
Vreg
$Comp
L Device:R R20
U 1 1 5CA53939
P 7150 3800
F 0 "R20" V 6943 3800 50  0000 C CNN
F 1 "1k" V 7034 3800 50  0000 C CNN
F 2 "" V 7080 3800 50  0001 C CNN
F 3 "~" H 7150 3800 50  0001 C CNN
	1    7150 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 3800 7450 3800
$Comp
L Device:C_Small C12
U 1 1 5CA53E20
P 7450 4000
F 0 "C12" H 7542 4046 50  0000 L CNN
F 1 "100n" H 7542 3955 50  0000 L CNN
F 2 "" H 7450 4000 50  0001 C CNN
F 3 "~" H 7450 4000 50  0001 C CNN
	1    7450 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3800 7450 3900
Connection ~ 7450 3800
Wire Wire Line
	7450 3800 8000 3800
$Comp
L power:GNDREF #PWR018
U 1 1 5CA54324
P 7450 4100
F 0 "#PWR018" H 7450 3850 50  0001 C CNN
F 1 "GNDREF" H 7455 3927 50  0001 C CNN
F 2 "" H 7450 4100 50  0001 C CNN
F 3 "" H 7450 4100 50  0001 C CNN
	1    7450 4100
	1    0    0    -1  
$EndComp
$Comp
L symbols:OPA4196 U1
U 5 1 5CA456C8
P 4550 2850
F 0 "U1" H 4675 3215 50  0000 C CNN
F 1 "OPA4196" H 4675 3124 50  0000 C CNN
F 2 "" H 4550 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 4650 3150 50  0001 C CNN
	5    4550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2850 4950 3150
Wire Wire Line
	4950 3150 4350 3150
Wire Wire Line
	4350 3150 4350 2950
Wire Wire Line
	4950 2850 5450 2850
Wire Wire Line
	5750 2850 6150 2850
Wire Wire Line
	6150 3900 6350 3900
$Comp
L Transistor_BJT:PN2222A Q2
U 1 1 5CB0CA0E
P 7900 4550
F 0 "Q2" H 8091 4504 50  0000 L CNN
F 1 "PN2222A" H 8091 4595 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8100 4475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 7900 4550 50  0001 L CNN
	1    7900 4550
	1    0    0    1   
$EndComp
Wire Wire Line
	8000 4350 8000 3800
Connection ~ 8000 3800
Wire Wire Line
	8000 3800 8100 3800
Wire Wire Line
	8000 4750 8000 4900
Wire Wire Line
	8000 4900 7750 4900
Wire Wire Line
	6800 4550 6800 4600
Wire Wire Line
	6800 4550 7700 4550
$Comp
L Device:R R18
U 1 1 5CB17D27
P 6800 4750
F 0 "R18" H 6870 4796 50  0000 L CNN
F 1 "10k" H 6870 4705 50  0000 L CNN
F 2 "" V 6730 4750 50  0001 C CNN
F 3 "~" H 6800 4750 50  0001 C CNN
	1    6800 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4900 6800 4950
$Comp
L power:VDD #PWR019
U 1 1 5CB18336
P 7750 4900
F 0 "#PWR019" H 7750 4750 50  0001 C CNN
F 1 "VDD" H 7767 5073 50  0000 C CNN
F 2 "" H 7750 4900 50  0001 C CNN
F 3 "" H 7750 4900 50  0001 C CNN
	1    7750 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2300 6250 2300
Wire Wire Line
	5800 5050 5900 5050
$EndSCHEMATC
