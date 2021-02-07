EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "PowerSupply"
Date ""
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 600  6900 825  700 
U 5F79B199
F0 "Power" 50
F1 "power.sch" 50
$EndSheet
Text Notes 525  575  0    50   ~ 10
OPAMP Power
Wire Notes Line width 10
	550  575  550  1550
Text GLabel 8500 1900 2    50   UnSpc ~ 0
VOUT+
$Comp
L Device:CP_Small C?
U 1 1 5EAA87AA
P 7850 1800
AR Path="/5CA4A3FE/5EAA87AA" Ref="C?"  Part="1" 
AR Path="/5EAA87AA" Ref="C?"  Part="1" 
F 0 "C?" H 7938 1846 50  0000 L CNN
F 1 "470µF" H 7938 1755 50  0000 L CNN
F 2 "" H 7850 1800 50  0001 C CNN
F 3 "~" H 7850 1800 50  0001 C CNN
F 4 "REA471M1EBK-1012P" H 7850 1800 50  0001 C CNN "MPN"
	1    7850 1800
	1    0    0    1   
$EndComp
Wire Wire Line
	7350 1700 7850 1700
Wire Wire Line
	6800 1700 7350 1700
Connection ~ 7350 1700
$Comp
L power:GNDA #PWR?
U 1 1 5EAA87A4
P 7350 1700
AR Path="/5CA4A3FE/5EAA87A4" Ref="#PWR?"  Part="1" 
AR Path="/5EAA87A4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7350 1450 50  0001 C CNN
F 1 "GNDA" H 7355 1527 50  0000 C CNN
F 2 "" H 7350 1700 50  0001 C CNN
F 3 "" H 7350 1700 50  0001 C CNN
	1    7350 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EAA879E
P 7350 1800
AR Path="/5CA4A3FE/5EAA879E" Ref="C?"  Part="1" 
AR Path="/5EAA879E" Ref="C?"  Part="1" 
F 0 "C?" H 7442 1846 50  0000 L CNN
F 1 "1µF" H 7442 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7350 1800 50  0001 C CNN
F 3 "~" H 7350 1800 50  0001 C CNN
F 4 "" H 7350 1800 50  0001 C CNN "MPN"
	1    7350 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EAA8797
P 6800 1800
AR Path="/5CA4A3FE/5EAA8797" Ref="C?"  Part="1" 
AR Path="/5EAA8797" Ref="C?"  Part="1" 
F 0 "C?" H 6892 1846 50  0000 L CNN
F 1 "1µF" H 6892 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6800 1800 50  0001 C CNN
F 3 "~" H 6800 1800 50  0001 C CNN
F 4 "" H 6800 1800 50  0001 C CNN "MPN"
	1    6800 1800
	1    0    0    -1  
$EndComp
Connection ~ 7850 1900
Wire Wire Line
	7350 1900 7850 1900
Connection ~ 7350 1900
$Comp
L Device:CP_Small C?
U 1 1 5EAA8788
P 7850 2000
AR Path="/5CA4A3FE/5EAA8788" Ref="C?"  Part="1" 
AR Path="/5EAA8788" Ref="C?"  Part="1" 
F 0 "C?" H 7938 2046 50  0000 L CNN
F 1 "100µF" H 7938 1955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7850 2000 50  0001 C CNN
F 3 "~" H 7850 2000 50  0001 C CNN
F 4 "REA101M1HBK-0811P" H 7850 2000 50  0001 C CNN "MPN"
	1    7850 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2100 6800 2100
Wire Wire Line
	7350 2100 7850 2100
Connection ~ 7350 2100
$Comp
L Device:CP_Small C?
U 1 1 5EAA8781
P 7350 2000
AR Path="/5CA4A3FE/5EAA8781" Ref="C?"  Part="1" 
AR Path="/5EAA8781" Ref="C?"  Part="1" 
F 0 "C?" H 7438 2046 50  0000 L CNN
F 1 "100µF" H 7438 1955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7350 2000 50  0001 C CNN
F 3 "~" H 7350 2000 50  0001 C CNN
F 4 "REA101M1HBK-0811P" H 7350 2000 50  0001 C CNN "MPN"
	1    7350 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5EAA874D
P 6800 2100
AR Path="/5CA4A3FE/5EAA874D" Ref="#PWR?"  Part="1" 
AR Path="/5EAA874D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6800 1850 50  0001 C CNN
F 1 "GNDA" H 6805 1927 50  0000 C CNN
F 2 "" H 6800 2100 50  0001 C CNN
F 3 "" H 6800 2100 50  0001 C CNN
	1    6800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1900 7350 1900
Connection ~ 6800 1900
Connection ~ 6800 2100
$Comp
L Device:C_Small C?
U 1 1 5EAA871C
P 6800 2000
AR Path="/5CA4A3FE/5EAA871C" Ref="C?"  Part="1" 
AR Path="/5EAA871C" Ref="C?"  Part="1" 
F 0 "C?" H 6892 2046 50  0000 L CNN
F 1 "1µF" H 6892 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6800 2000 50  0001 C CNN
F 3 "~" H 6800 2000 50  0001 C CNN
F 4 "" H 6800 2000 50  0001 C CNN "MPN"
	1    6800 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4850 6150 5075
$Comp
L Device:Opamp_Quad_Generic U?
U 1 1 5EE0F260
P 5850 4850
F 0 "U?" H 6025 4975 50  0000 R CNN
F 1 "AS324" H 6100 5075 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5850 4850 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/115/AS324-A-1512748.pdf" H 5850 4850 50  0001 C CNN
F 4 "	OPA4196IDR" H 5850 4850 50  0001 C CNN "MPN"
	1    5850 4850
	1    0    0    -1  
$EndComp
Connection ~ 6150 4850
Wire Wire Line
	6150 4750 6150 4850
Wire Wire Line
	6975 4475 6975 4625
Wire Wire Line
	6800 4475 6975 4475
Wire Wire Line
	7100 4425 7425 4425
Wire Wire Line
	6975 4950 6975 4975
Wire Wire Line
	6975 4625 7125 4625
Connection ~ 6975 4625
Wire Wire Line
	6975 4650 6975 4625
Wire Wire Line
	6850 4625 6975 4625
$Comp
L Device:R R?
U 1 1 5ED6B057
P 6975 4800
F 0 "R?" H 6925 4825 50  0000 R CNN
F 1 "100K" V 6975 4900 50  0000 R CNN
F 2 "" V 6905 4800 50  0001 C CNN
F 3 "~" H 6975 4800 50  0001 C CNN
F 4 "CRGCQ0805F100K" H 6975 4800 50  0001 C CNN "MPN"
	1    6975 4800
	1    0    0    1   
$EndComp
Wire Wire Line
	6975 4975 7125 4975
Wire Wire Line
	7125 4975 7425 4975
Connection ~ 7125 4975
Wire Wire Line
	7125 4900 7125 4975
Wire Wire Line
	7125 4625 7125 4700
Wire Wire Line
	6550 4750 6550 4625
Wire Wire Line
	6250 4750 6150 4750
Wire Wire Line
	6600 5075 6450 5075
Wire Wire Line
	6600 5425 6600 5075
Wire Wire Line
	6600 5725 6875 5725
Wire Wire Line
	6600 5425 6875 5425
Wire Wire Line
	6875 5425 7025 5425
Connection ~ 6875 5425
$Comp
L Device:R R?
U 1 1 5EC6E9A5
P 6875 5575
F 0 "R?" H 6750 5575 50  0000 C CNN
F 1 "100K" V 6875 5575 50  0000 C CNN
F 2 "" V 6805 5575 50  0001 C CNN
F 3 "~" H 6875 5575 50  0001 C CNN
F 4 "CRGCQ0805F100K" H 6875 5575 50  0001 C CNN "MPN"
	1    6875 5575
	-1   0    0    1   
$EndComp
Connection ~ 6875 5725
Wire Wire Line
	6875 5725 7325 5725
Wire Wire Line
	5425 4950 5550 4950
Wire Wire Line
	7325 5625 7325 5725
Connection ~ 6600 5425
$Comp
L Device:D_Zener D?
U 1 1 5EB3B310
P 6600 5575
F 0 "D?" V 6575 5375 50  0000 C CNN
F 1 "10V-16V" V 6650 5350 50  0000 C CNN
F 2 "" H 6600 5575 50  0001 C CNN
F 3 "~" H 6600 5575 50  0001 C CNN
F 4 "MMSZ5242B" H 6600 5575 50  0001 C CNN "MPN"
	1    6600 5575
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 5225 7325 5225
Text GLabel 7550 5225 2    50   UnSpc ~ 0
CLIMIT
Connection ~ 7325 5725
$Comp
L power:GND #PWR?
U 1 1 5EB3377E
P 7325 5725
F 0 "#PWR?" H 7325 5475 50  0001 C CNN
F 1 "GND" H 7330 5552 50  0000 C CNN
F 2 "" H 7325 5725 50  0001 C CNN
F 3 "" H 7325 5725 50  0001 C CNN
	1    7325 5725
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB2CD20
P 6300 5075
F 0 "R?" V 6200 5075 50  0000 C CNN
F 1 "10K" V 6300 5075 50  0000 C CNN
F 2 "" V 6230 5075 50  0001 C CNN
F 3 "~" H 6300 5075 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 6300 5075 50  0001 C CNN "MPN"
	1    6300 5075
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5EB2B36B
P 7225 5425
AR Path="/5CA4C891/5EB2B36B" Ref="Q?"  Part="1" 
AR Path="/5EB2B36B" Ref="Q?"  Part="1" 
F 0 "Q?" H 7431 5471 50  0000 L CNN
F 1 "2N7002NXAK" H 7431 5380 50  0000 L CNN
F 2 "" H 7425 5525 50  0001 C CNN
F 3 "~" H 7225 5425 50  0001 C CNN
F 4 "2N7002NXAK" H 7225 5425 50  0001 C CNN "MPN"
	1    7225 5425
	1    0    0    -1  
$EndComp
Text GLabel 8150 2500 2    50   UnSpc ~ 0
Vread
Text GLabel 7775 4225 2    50   UnSpc ~ 0
Vset
Text GLabel 5425 4950 0    50   UnSpc ~ 0
Iset
Connection ~ 7125 4625
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5EABE787
P 7325 4625
AR Path="/5CA4C891/5EABE787" Ref="Q?"  Part="1" 
AR Path="/5EABE787" Ref="Q?"  Part="1" 
F 0 "Q?" H 7531 4671 50  0000 L CNN
F 1 "2N7002NXAK" H 7531 4580 50  0000 L CNN
F 2 "" H 7525 4725 50  0001 C CNN
F 3 "~" H 7325 4625 50  0001 C CNN
F 4 "2N7002NXAK" H 7325 4625 50  0001 C CNN "MPN"
	1    7325 4625
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 5ECFF190
P 6650 4475
F 0 "D?" H 6650 4259 50  0000 C CNN
F 1 "10V-16V" H 6650 4350 50  0000 C CNN
F 2 "" H 6650 4475 50  0001 C CNN
F 3 "~" H 6650 4475 50  0001 C CNN
F 4 "MMSZ5242B" H 6650 4475 50  0001 C CNN "MPN"
	1    6650 4475
	-1   0    0    1   
$EndComp
Wire Wire Line
	6225 4125 6450 4125
$Comp
L power:GNDA #PWR?
U 1 1 6026B660
P 6500 4475
F 0 "#PWR?" H 6500 4225 50  0001 C CNN
F 1 "GNDA" H 6505 4302 50  0000 C CNN
F 2 "" H 6500 4475 50  0001 C CNN
F 3 "" H 6500 4475 50  0001 C CNN
	1    6500 4475
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 600595C9
P 6400 4750
AR Path="/5CA4C891/600595C9" Ref="R?"  Part="1" 
AR Path="/600595C9" Ref="R?"  Part="1" 
F 0 "R?" V 6475 4700 50  0000 L CNN
F 1 "?" V 6400 4725 50  0000 L CNN
F 2 "" V 6330 4750 50  0001 C CNN
F 3 "~" H 6400 4750 50  0001 C CNN
	1    6400 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FFC0F1E
P 7125 4800
F 0 "C?" H 7217 4846 50  0000 L CNN
F 1 "?" H 7217 4755 50  0000 L CNN
F 2 "" H 7125 4800 50  0001 C CNN
F 3 "~" H 7125 4800 50  0001 C CNN
	1    7125 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4225 7150 4225
Wire Wire Line
	7100 4425 7100 4225
Connection ~ 7100 4225
Wire Wire Line
	7050 4225 7100 4225
Wire Wire Line
	7550 4225 7775 4225
Wire Wire Line
	7550 4225 7450 4225
Connection ~ 7550 4225
Wire Wire Line
	7550 4100 7550 4225
$Comp
L power:GNDA #PWR?
U 1 1 5EABE79A
P 7425 4975
AR Path="/5CA4C891/5EABE79A" Ref="#PWR?"  Part="1" 
AR Path="/5EABE79A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7425 4725 50  0001 C CNN
F 1 "GNDA" H 7430 4802 50  0000 C CNN
F 2 "" H 7425 4975 50  0001 C CNN
F 3 "" H 7425 4975 50  0001 C CNN
	1    7425 4975
	1    0    0    -1  
$EndComp
Connection ~ 7425 4975
Wire Wire Line
	7425 4825 7425 4975
$Comp
L Device:R R?
U 1 1 5EABE78F
P 6700 4625
AR Path="/5CA4C891/5EABE78F" Ref="R?"  Part="1" 
AR Path="/5EABE78F" Ref="R?"  Part="1" 
F 0 "R?" V 6800 4525 50  0000 L CNN
F 1 "10K" V 6700 4550 50  0000 L CNN
F 2 "" V 6630 4625 50  0001 C CNN
F 3 "~" H 6700 4625 50  0001 C CNN
	1    6700 4625
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EABE781
P 7300 4225
AR Path="/5CA4C891/5EABE781" Ref="R?"  Part="1" 
AR Path="/5EABE781" Ref="R?"  Part="1" 
F 0 "R?" V 7200 4225 50  0000 C CNN
F 1 "100K" V 7300 4225 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7230 4225 50  0001 C CNN
F 3 "CRCW080510K0FKEAC" H 7300 4225 50  0001 C CNN
F 4 "CRGCQ0805F100K" H 7300 4225 50  0001 C CNN "MPN"
	1    7300 4225
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE76F
P 5550 5100
AR Path="/5CA4C891/5EABE76F" Ref="TP?"  Part="1" 
AR Path="/5EABE76F" Ref="TP?"  Part="1" 
F 0 "TP?" H 5492 5126 50  0000 R CNN
F 1 "Iset" H 5492 5217 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5750 5100 50  0001 C CNN
F 3 "~" H 5750 5100 50  0001 C CNN
	1    5550 5100
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE769
P 7550 4100
AR Path="/5CA4C891/5EABE769" Ref="TP?"  Part="1" 
AR Path="/5EABE769" Ref="TP?"  Part="1" 
F 0 "TP?" H 7492 4126 50  0000 R CNN
F 1 "Vset" H 7492 4217 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7750 4100 50  0001 C CNN
F 3 "~" H 7750 4100 50  0001 C CNN
	1    7550 4100
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE763
P 6225 4050
AR Path="/5CA4C891/5EABE763" Ref="TP?"  Part="1" 
AR Path="/5EABE763" Ref="TP?"  Part="1" 
F 0 "TP?" H 6283 4168 50  0000 L CNN
F 1 "Vreg" H 6283 4077 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6425 4050 50  0001 C CNN
F 3 "~" H 6425 4050 50  0001 C CNN
	1    6225 4050
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EABE711
P 6900 3275
AR Path="/5CA4C891/5EABE711" Ref="R?"  Part="1" 
AR Path="/5EABE711" Ref="R?"  Part="1" 
F 0 "R?" V 6800 3325 50  0000 R CNN
F 1 "10K" V 6900 3350 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6830 3275 50  0001 C CNN
F 3 "~" H 6900 3275 50  0001 C CNN
F 4 "TNPW08059K88BEEN" H 6900 3275 50  0001 C CNN "MPN"
	1    6900 3275
	0    1    1    0   
$EndComp
Connection ~ 5550 4950
Wire Wire Line
	5550 5100 5550 4950
Text Notes 7125 3525 0    39   ~ 0
(10 / 62.05) * 20.48 = 3.3\n
$Comp
L Connector:TestPoint TP?
U 1 1 5EA8932B
P 5275 4700
AR Path="/5CA3E8E1/5EA8932B" Ref="TP?"  Part="1" 
AR Path="/5EA8932B" Ref="TP?"  Part="1" 
F 0 "TP?" H 5333 4818 50  0000 L CNN
F 1 "Iread" H 5333 4727 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5475 4700 50  0001 C CNN
F 3 "~" H 5475 4700 50  0001 C CNN
	1    5275 4700
	-1   0    0    -1  
$EndComp
$Sheet
S 625  5725 1050 900 
U 5F1751CC
F0 "MCU" 50
F1 "MCU.sch" 50
$EndSheet
$Comp
L Device:R R?
U 1 1 6028C1A6
P 8200 3125
F 0 "R?" V 8125 3125 50  0000 C CNN
F 1 "100K" V 8200 3125 50  0000 C CNN
F 2 "" V 8130 3125 50  0001 C CNN
F 3 "~" H 8200 3125 50  0001 C CNN
F 4 "CRGCQ0805F100K" H 8200 3125 50  0001 C CNN "MPN"
	1    8200 3125
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6028D9FC
P 8200 3425
F 0 "R?" V 8100 3425 50  0000 C CNN
F 1 "100K" V 8200 3425 50  0000 C CNN
F 2 "" V 8130 3425 50  0001 C CNN
F 3 "~" H 8200 3425 50  0001 C CNN
F 4 "CRGCQ0805F100K" H 8200 3425 50  0001 C CNN "MPN"
	1    8200 3425
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F87FD6C
P 8775 3575
F 0 "R?" V 8875 3575 50  0000 C CNN
F 1 "100K" V 8775 3575 50  0000 C CNN
F 2 "" V 8705 3575 50  0001 C CNN
F 3 "~" H 8775 3575 50  0001 C CNN
	1    8775 3575
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F8817C7
P 9025 3800
F 0 "R?" H 9125 3800 50  0000 C CNN
F 1 "100K" V 9025 3800 50  0000 C CNN
F 2 "" V 8955 3800 50  0001 C CNN
F 3 "~" H 9025 3800 50  0001 C CNN
	1    9025 3800
	1    0    0    1   
$EndComp
Wire Wire Line
	8925 3575 9025 3575
Wire Wire Line
	9025 3575 9025 3350
Wire Wire Line
	9025 3650 9025 3575
Connection ~ 9025 3575
Wire Wire Line
	8625 3575 8425 3575
Wire Wire Line
	8425 3575 8425 3250
$Comp
L Device:R R?
U 1 1 5F8A4570
P 8825 2825
F 0 "R?" V 8925 2825 50  0000 C CNN
F 1 "100K" V 8825 2825 50  0000 C CNN
F 2 "" V 8755 2825 50  0001 C CNN
F 3 "~" H 8825 2825 50  0001 C CNN
	1    8825 2825
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F8A5427
P 9025 2575
F 0 "R?" H 9125 2575 50  0000 C CNN
F 1 "100K" V 9025 2575 50  0000 C CNN
F 2 "" V 8955 2575 50  0001 C CNN
F 3 "~" H 9025 2575 50  0001 C CNN
	1    9025 2575
	1    0    0    1   
$EndComp
Wire Wire Line
	9025 2725 9025 2825
Wire Wire Line
	8975 2825 9025 2825
Connection ~ 9025 2825
Wire Wire Line
	9025 2825 9025 3150
$Comp
L power:GND #PWR?
U 1 1 5F8B6E64
P 8675 2825
F 0 "#PWR?" H 8675 2575 50  0001 C CNN
F 1 "GND" H 8680 2652 50  0000 C CNN
F 2 "" H 8675 2825 50  0001 C CNN
F 3 "" H 8675 2825 50  0001 C CNN
	1    8675 2825
	0    1    1    0   
$EndComp
Wire Wire Line
	8425 3250 8350 3250
Wire Wire Line
	8350 3250 8350 3125
Wire Wire Line
	8350 3250 8350 3425
Connection ~ 8350 3250
Connection ~ 7050 3275
$Comp
L power:GNDA #PWR?
U 1 1 5F8EE687
P 6625 3350
F 0 "#PWR?" H 6625 3100 50  0001 C CNN
F 1 "GNDA" H 6630 3177 50  0000 C CNN
F 2 "" H 6625 3350 50  0001 C CNN
F 3 "" H 6625 3350 50  0001 C CNN
	1    6625 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3275 6625 3275
Wire Wire Line
	6625 3275 6625 3350
Text GLabel 9025 3950 3    50   UnSpc ~ 0
VOUT-
Wire Wire Line
	7850 1900 8450 1900
Wire Wire Line
	6225 4050 6225 4125
Connection ~ 6225 4125
Wire Wire Line
	6225 4125 5975 4125
Wire Wire Line
	5975 4125 5975 3675
Wire Wire Line
	5975 2350 6375 2350
Wire Wire Line
	7050 3275 7050 4025
Wire Wire Line
	7050 2600 7050 3275
Wire Wire Line
	8050 3125 8050 3275
$Comp
L Device:R R?
U 1 1 5F8C5271
P 7900 3275
F 0 "R?" V 7800 3275 50  0000 C CNN
F 1 "1K" V 7900 3275 50  0000 C CNN
F 2 "" V 7830 3275 50  0001 C CNN
F 3 "~" H 7900 3275 50  0001 C CNN
F 4 "CRGCQ0805F100K" H 7900 3275 50  0001 C CNN "MPN"
	1    7900 3275
	0    1    1    0   
$EndComp
Connection ~ 8050 3275
Wire Wire Line
	8050 3275 8050 3425
$Comp
L Device:R R?
U 1 1 5F8C9A71
P 7600 3275
F 0 "R?" V 7500 3275 50  0000 C CNN
F 1 "1K" V 7600 3275 50  0000 C CNN
F 2 "" V 7530 3275 50  0001 C CNN
F 3 "~" H 7600 3275 50  0001 C CNN
F 4 "CRGCQ0805F100K" H 7600 3275 50  0001 C CNN "MPN"
	1    7600 3275
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F8CA5A9
P 7250 3375
F 0 "R?" V 7150 3375 50  0000 C CNN
F 1 "100R" V 7250 3375 50  0000 C CNN
F 2 "" V 7180 3375 50  0001 C CNN
F 3 "~" H 7250 3375 50  0001 C CNN
F 4 "CRGCQ0805F100K" H 7250 3375 50  0001 C CNN "MPN"
	1    7250 3375
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F8CB331
P 7250 3150
F 0 "R?" V 7150 3150 50  0000 C CNN
F 1 "100R" V 7250 3150 50  0000 C CNN
F 2 "" V 7180 3150 50  0001 C CNN
F 3 "~" H 7250 3150 50  0001 C CNN
F 4 "CRGCQ0805F100K" H 7250 3150 50  0001 C CNN "MPN"
	1    7250 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 3275 7400 3275
Wire Wire Line
	7400 3275 7400 3150
Wire Wire Line
	7400 3375 7400 3275
Connection ~ 7400 3275
Wire Wire Line
	7100 3150 7100 3275
Wire Wire Line
	7100 3275 7050 3275
Connection ~ 7100 3275
Wire Wire Line
	7100 3275 7100 3375
$Comp
L Device:Opamp_Quad_Generic U?
U 2 1 5F8E5A76
P 6750 4125
F 0 "U?" H 6925 4250 50  0000 R CNN
F 1 "AS324" H 7000 4350 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6750 4125 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/115/AS324-A-1512748.pdf" H 6750 4125 50  0001 C CNN
F 4 "	OPA4196IDR" H 6750 4125 50  0001 C CNN "MPN"
	2    6750 4125
	-1   0    0    -1  
$EndComp
$Comp
L Device:Opamp_Quad_Generic U?
U 3 1 5F8E6F07
P 8725 3250
F 0 "U?" H 8900 3375 50  0000 R CNN
F 1 "AS324" H 8975 3475 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 8725 3250 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/115/AS324-A-1512748.pdf" H 8725 3250 50  0001 C CNN
F 4 "	OPA4196IDR" H 8725 3250 50  0001 C CNN "MPN"
	3    8725 3250
	-1   0    0    -1  
$EndComp
Connection ~ 8425 3250
$Comp
L Device:Opamp_Quad_Generic U?
U 4 1 5F8E983B
P 7475 2500
F 0 "U?" H 7650 2625 50  0000 R CNN
F 1 "AS324" H 7725 2725 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7475 2500 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/115/AS324-A-1512748.pdf" H 7475 2500 50  0001 C CNN
F 4 "	OPA4196IDR" H 7475 2500 50  0001 C CNN "MPN"
	4    7475 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	7175 2400 7175 2225
Wire Wire Line
	7175 2225 7800 2225
Wire Wire Line
	7800 2225 7800 2500
Connection ~ 7800 2500
Wire Wire Line
	7800 2500 7775 2500
Wire Wire Line
	7050 2600 7175 2600
$Comp
L Amplifier_Operational:OPA197xD U?
U 1 1 5F90D4D7
P 4575 4750
F 0 "U?" H 4525 4925 50  0000 L CNN
F 1 "TLV197" H 4550 4600 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4475 4550 50  0001 L CNN
F 3 "https://www.ti.com/lit/ds/symlink/tlv197-q1.pdf?ts=1595483432163&ref_url=https%253A%252F%252Fwww.ti.com%252Fstore%252Fti%252Fen%252Fp%252Fproduct%252F%253Fp%253DTLV197QDGKRQ1" H 4725 4900 50  0001 C CNN
	1    4575 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F9126DD
P 4575 4375
F 0 "C?" V 4775 4300 50  0000 L CNN
F 1 "100nF" V 4675 4300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4575 4375 50  0001 C CNN
F 3 "~" H 4575 4375 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 4575 4375 50  0001 C CNN "MPN"
	1    4575 4375
	0    1    -1   0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5ED77F7B
P 1550 775
F 0 "#PWR?" H 1550 625 50  0001 C CNN
F 1 "VDD" H 1550 925 50  0000 C CNN
F 2 "" H 1550 775 50  0001 C CNN
F 3 "" H 1550 775 50  0001 C CNN
	1    1550 775 
	1    0    0    -1  
$EndComp
Connection ~ 1550 775 
Wire Wire Line
	1050 1375 1550 1375
Connection ~ 1050 1375
Connection ~ 1550 1375
Wire Wire Line
	1050 775  1550 775 
Connection ~ 1050 775 
Wire Wire Line
	1050 1175 1050 1375
Wire Wire Line
	1050 775  1050 975 
$Comp
L Device:C_Small C?
U 1 1 5ED77F86
P 1050 1075
F 0 "C?" H 1142 1121 50  0000 L CNN
F 1 "100nF" H 1142 1030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1050 1075 50  0001 C CNN
F 3 "~" H 1050 1075 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1050 1075 50  0001 C CNN "MPN"
	1    1050 1075
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5ED77F8C
P 1550 1375
F 0 "#PWR?" H 1550 1125 50  0001 C CNN
F 1 "GNDA" H 1550 1250 50  0000 C CNN
F 2 "" H 1550 1375 50  0001 C CNN
F 3 "" H 1550 1375 50  0001 C CNN
	1    1550 1375
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5ED77F93
P 650 1075
F 0 "C?" H 742 1121 50  0000 L CNN
F 1 "100nF" H 742 1030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 650 1075 50  0001 C CNN
F 3 "~" H 650 1075 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 650 1075 50  0001 C CNN "MPN"
	1    650  1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  975  650  775 
Wire Wire Line
	650  775  1050 775 
Wire Wire Line
	1050 1375 650  1375
Wire Wire Line
	650  1375 650  1175
$Comp
L Device:Opamp_Quad_Generic U?
U 5 1 5ED77FA0
P 1650 1075
F 0 "U?" H 1608 1121 50  0000 L CNN
F 1 "AS324" H 1608 1030 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1650 1075 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/115/AS324-A-1512748.pdf" H 1650 1075 50  0001 C CNN
F 4 "AS324MTR-G1" H 1650 1075 50  0001 C CNN "MPN"
	5    1650 1075
	1    0    0    -1  
$EndComp
Wire Notes Line
	550  575  575  575 
Wire Notes Line width 10
	575  575  1875 575 
Wire Notes Line width 10
	1875 575  1875 1550
Wire Notes Line width 10
	1875 1550 550  1550
Text GLabel 3375 5675 2    50   UnSpc ~ 0
VOUT-
$Comp
L Device:R R?
U 1 1 5F9328FB
P 3125 5675
F 0 "R?" V 3025 5675 50  0000 C CNN
F 1 "0R15" V 3125 5675 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.40x3.35mm_HandSolder" V 3055 5675 50  0001 C CNN
F 3 "~" H 3125 5675 50  0001 C CNN
	1    3125 5675
	0    1    1    0   
$EndComp
Wire Wire Line
	3375 5675 3300 5675
Wire Wire Line
	2975 5675 2725 5675
Wire Wire Line
	2725 5675 2725 5800
$Comp
L power:GND #PWR?
U 1 1 5F93B5C7
P 2725 5800
F 0 "#PWR?" H 2725 5550 50  0001 C CNN
F 1 "GND" H 2730 5627 50  0000 C CNN
F 2 "" H 2725 5800 50  0001 C CNN
F 3 "" H 2725 5800 50  0001 C CNN
	1    2725 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4750 5275 4750
Connection ~ 5275 4750
Wire Wire Line
	5275 4750 4975 4750
$Comp
L Device:C_Small C?
U 1 1 5F954EF6
P 4575 4050
F 0 "C?" V 4775 3975 50  0000 L CNN
F 1 "100nF" V 4675 3975 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4575 4050 50  0001 C CNN
F 3 "~" H 4575 4050 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 4575 4050 50  0001 C CNN "MPN"
	1    4575 4050
	0    1    -1   0   
$EndComp
Wire Wire Line
	4475 4050 4475 4375
Connection ~ 4475 4375
Wire Wire Line
	4475 4375 4475 4450
Wire Wire Line
	4675 4050 4750 4050
Wire Wire Line
	4750 4050 4750 4375
Wire Wire Line
	4750 4375 4675 4375
$Comp
L power:GND #PWR?
U 1 1 5F9536AF
P 4475 5050
F 0 "#PWR?" H 4475 4800 50  0001 C CNN
F 1 "GND" H 4480 4877 50  0000 C CNN
F 2 "" H 4475 5050 50  0001 C CNN
F 3 "" H 4475 5050 50  0001 C CNN
	1    4475 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F9705B2
P 4750 4375
F 0 "#PWR?" H 4750 4125 50  0001 C CNN
F 1 "GND" H 4755 4202 50  0000 C CNN
F 2 "" H 4750 4375 50  0001 C CNN
F 3 "" H 4750 4375 50  0001 C CNN
	1    4750 4375
	1    0    0    -1  
$EndComp
Connection ~ 4750 4375
Wire Wire Line
	4275 4850 4175 4850
Wire Wire Line
	4175 4850 4175 5325
Wire Wire Line
	4175 5325 4375 5325
Wire Wire Line
	4975 5325 4975 4750
Connection ~ 4975 4750
Wire Wire Line
	4975 4750 4875 4750
$Comp
L Device:R R?
U 1 1 5F97EFFE
P 4525 5325
F 0 "R?" V 4425 5325 50  0000 C CNN
F 1 "100K" V 4525 5325 50  0000 C CNN
F 2 "" V 4455 5325 50  0001 C CNN
F 3 "~" H 4525 5325 50  0001 C CNN
	1    4525 5325
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 5675 3300 4650
Wire Wire Line
	3300 4650 3600 4650
Connection ~ 3300 5675
Wire Wire Line
	3300 5675 3275 5675
$Comp
L Device:R R?
U 1 1 5F9952BC
P 3750 4650
F 0 "R?" V 3650 4650 50  0000 C CNN
F 1 "1K" V 3750 4650 50  0000 C CNN
F 2 "" V 3680 4650 50  0001 C CNN
F 3 "~" H 3750 4650 50  0001 C CNN
F 4 "CRGCQ0805F100K" H 3750 4650 50  0001 C CNN "MPN"
	1    3750 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 4650 4275 4650
Wire Wire Line
	4675 5325 4975 5325
$Comp
L Device:R R?
U 1 1 5F997FF2
P 4175 5475
F 0 "R?" H 4075 5475 50  0000 C CNN
F 1 "10K" V 4175 5475 50  0000 C CNN
F 2 "" V 4105 5475 50  0001 C CNN
F 3 "~" H 4175 5475 50  0001 C CNN
	1    4175 5475
	1    0    0    -1  
$EndComp
Connection ~ 4175 5325
$Comp
L power:GND #PWR?
U 1 1 5F99905E
P 4175 5625
F 0 "#PWR?" H 4175 5375 50  0001 C CNN
F 1 "GND" H 4180 5452 50  0000 C CNN
F 2 "" H 4175 5625 50  0001 C CNN
F 3 "" H 4175 5625 50  0001 C CNN
	1    4175 5625
	1    0    0    -1  
$EndComp
Text Notes 3225 4300 0    50   ~ 0
Gain = (100 / 10 + 1) = 11\n0.15Ω * 2A = 0.3V\n0.3V * 11 = 3V3
Wire Wire Line
	9025 2425 8450 2425
Wire Wire Line
	8450 2425 8450 1900
Connection ~ 8450 1900
Wire Wire Line
	8450 1900 8500 1900
Text GLabel 5650 1900 0    50   UnSpc ~ 0
SVOUT
$Comp
L symbols:FQP17P10 Q?
U 1 1 5F89BA81
P 6375 1900
F 0 "Q?" V 6618 1900 50  0000 C CNN
F 1 "FQP17P10" V 6527 1900 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6425 2350 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/FQP17P10-1296917.pdf" H 6375 1900 50  0001 C CNN
	1    6375 1900
	0    1    -1   0   
$EndComp
Wire Wire Line
	6575 1900 6650 1900
$Comp
L Device:R R?
U 1 1 5F8ACC10
P 5975 3525
F 0 "R?" H 6045 3571 50  0000 L CNN
F 1 "100R" V 5975 3425 50  0000 L CNN
F 2 "" V 5905 3525 50  0001 C CNN
F 3 "~" H 5975 3525 50  0001 C CNN
	1    5975 3525
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS?
U 1 1 5F8B1D99
P 7800 900
F 0 "HS?" H 7941 1021 50  0000 L CNN
F 1 "RA-T2X-25E" H 7941 930 50  0000 L CNN
F 2 "" H 7812 900 50  0001 C CNN
F 3 "../documents/datasheets/RA-T2X-25E.pdf" H 7812 900 50  0001 C CNN
	1    7800 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7875 2500 7800 2500
Connection ~ 7875 2500
Wire Wire Line
	8150 2500 7875 2500
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE75D
P 7875 2450
AR Path="/5CA4C891/5EABE75D" Ref="TP?"  Part="1" 
AR Path="/5EABE75D" Ref="TP?"  Part="1" 
F 0 "TP?" H 7933 2568 50  0000 L CNN
F 1 "Vread" H 7933 2477 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8075 2450 50  0001 C CNN
F 3 "~" H 8075 2450 50  0001 C CNN
	1    7875 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7875 2500 7875 2450
Wire Wire Line
	6375 2350 6375 2150
Wire Wire Line
	5275 4700 5275 4750
$Comp
L Device:R R?
U 1 1 5F8C1DB2
P 6375 2500
F 0 "R?" H 6445 2546 50  0000 L CNN
F 1 "10K" V 6375 2425 50  0000 L CNN
F 2 "" V 6305 2500 50  0001 C CNN
F 3 "~" H 6375 2500 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 6375 2500 50  0001 C CNN "MPN"
	1    6375 2500
	1    0    0    -1  
$EndComp
Connection ~ 6375 2350
$Comp
L power:GND #PWR?
U 1 1 5F8D23E9
P 6375 2650
F 0 "#PWR?" H 6375 2400 50  0001 C CNN
F 1 "GND" H 6380 2477 50  0000 C CNN
F 2 "" H 6375 2650 50  0001 C CNN
F 3 "" H 6375 2650 50  0001 C CNN
	1    6375 2650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS?
U 1 1 601D5619
P 7000 900
F 0 "HS?" H 7141 1021 50  0000 L CNN
F 1 "RA-T2X-25E" H 7141 930 50  0000 L CNN
F 2 "" H 7012 900 50  0001 C CNN
F 3 "../documents/datasheets/RA-T2X-25E.pdf" H 7012 900 50  0001 C CNN
	1    7000 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5975 2350 5975 3375
$Comp
L symbols:FQP17P10 Q?
U 1 1 601E761E
P 5975 1425
F 0 "Q?" V 6218 1425 50  0000 C CNN
F 1 "FQP17P10" V 6127 1425 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6025 1875 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/FQP17P10-1296917.pdf" H 5975 1425 50  0001 C CNN
	1    5975 1425
	0    1    -1   0   
$EndComp
Wire Wire Line
	6175 1425 6650 1425
Wire Wire Line
	6650 1425 6650 1900
Connection ~ 6650 1900
Wire Wire Line
	6650 1900 6800 1900
Wire Wire Line
	5975 2350 5975 1675
Connection ~ 5975 2350
Wire Wire Line
	6175 1900 5775 1900
Wire Wire Line
	5775 1900 5775 1425
Wire Wire Line
	5775 1900 5650 1900
Connection ~ 5775 1900
$EndSCHEMATC
