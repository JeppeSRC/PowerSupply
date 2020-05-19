EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title "PowerSupply"
Date ""
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:VDD #PWR0101
U 1 1 5CA02FAB
P 1575 800
F 0 "#PWR0101" H 1575 650 50  0001 C CNN
F 1 "VDD" H 1592 973 50  0000 C CNN
F 2 "" H 1575 800 50  0001 C CNN
F 3 "" H 1575 800 50  0001 C CNN
	1    1575 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1075 1300 1575 1300
Connection ~ 1575 800 
Wire Wire Line
	1075 800  1575 800 
Wire Wire Line
	1075 1175 1075 1300
Wire Wire Line
	1075 800  1075 975 
Connection ~ 3325 800 
Wire Wire Line
	2825 800  3325 800 
Wire Wire Line
	2825 1300 3325 1300
$Comp
L power:VDD #PWR0102
U 1 1 5CA2E77F
P 3325 800
F 0 "#PWR0102" H 3325 650 50  0001 C CNN
F 1 "VDD" H 3342 973 50  0000 C CNN
F 2 "" H 3325 800 50  0001 C CNN
F 3 "" H 3325 800 50  0001 C CNN
	1    3325 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2825 800  2825 950 
Wire Wire Line
	2825 1300 2825 1150
$Comp
L Device:C_Small C?
U 1 1 5CA2E78B
P 2825 1050
F 0 "C?" H 2917 1096 50  0000 L CNN
F 1 "100nF" H 2917 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2825 1050 50  0001 C CNN
F 3 "~" H 2825 1050 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 2825 1050 50  0001 C CNN "MPN"
	1    2825 1050
	1    0    0    -1  
$EndComp
$Comp
L symbols:OPA4196 U?
U 1 1 5CA2E794
P 3275 1050
F 0 "U?" H 3575 1100 50  0000 L CNN
F 1 "OPA4196" H 3575 1000 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3275 1050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 3375 1350 50  0001 C CNN
F 4 "OPA4196IDR" H 3275 1050 50  0001 C CNN "MPN"
	1    3275 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CA14E49
P 1075 1075
F 0 "C?" H 1167 1121 50  0000 L CNN
F 1 "100nF" H 1167 1030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1075 1075 50  0001 C CNN
F 3 "~" H 1075 1075 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1075 1075 50  0001 C CNN "MPN"
	1    1075 1075
	1    0    0    -1  
$EndComp
$Comp
L symbols:OPA4196 U?
U 1 1 5CA23A34
P 1525 1050
F 0 "U?" H 1825 1100 50  0000 L CNN
F 1 "OPA4196" H 1825 1000 50  0000 L CNN
F 2 "" H 1525 1050 50  0001 C CNN
F 3 "" H 1625 1350 50  0001 C CNN
F 4 "OPA4196IDR" H 1525 1050 50  0001 C CNN "MPN"
	1    1525 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0103
U 1 1 5D80A7D5
P 3325 1300
F 0 "#PWR0103" H 3325 1050 50  0001 C CNN
F 1 "GNDA" H 3330 1127 50  0000 C CNN
F 2 "" H 3325 1300 50  0001 C CNN
F 3 "" H 3325 1300 50  0001 C CNN
	1    3325 1300
	1    0    0    -1  
$EndComp
Connection ~ 3325 1300
$Comp
L power:GNDA #PWR0104
U 1 1 5D80B3C5
P 1575 1300
F 0 "#PWR0104" H 1575 1050 50  0001 C CNN
F 1 "GNDA" H 1580 1127 50  0000 C CNN
F 2 "" H 1575 1300 50  0001 C CNN
F 3 "" H 1575 1300 50  0001 C CNN
	1    1575 1300
	1    0    0    -1  
$EndComp
Connection ~ 1575 1300
$Comp
L symbols:OPA4196 U?
U 5 1 5DB4A324
P 6450 1025
F 0 "U?" H 6550 1275 50  0000 L CNN
F 1 "OPA4196" H 6550 1175 50  0000 L CNN
F 2 "" H 6450 1025 50  0001 C CNN
F 3 "" H 6550 1325 50  0001 C CNN
F 4 "OPA4196IDR" H 6450 1025 50  0001 C CNN "MPN"
	5    6450 1025
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1025 6850 1325
Wire Wire Line
	6850 1325 6250 1325
Wire Wire Line
	6250 1325 6250 1125
$Comp
L power:GNDA #PWR0105
U 1 1 5DB4A32D
P 6250 925
F 0 "#PWR0105" H 6250 675 50  0001 C CNN
F 1 "GNDA" H 6255 752 50  0000 C CNN
F 2 "" H 6250 925 50  0001 C CNN
F 3 "" H 6250 925 50  0001 C CNN
	1    6250 925 
	0    1    1    0   
$EndComp
$Comp
L symbols:OPA4196 U?
U 4 1 5E9434AD
P 8825 2575
F 0 "U?" H 8925 2825 50  0000 L CNN
F 1 "OPA4196" H 8925 2725 50  0000 L CNN
F 2 "" H 8825 2575 50  0001 C CNN
F 3 "" H 8925 2875 50  0001 C CNN
F 4 "OPA4196IDR" H 8825 2575 50  0001 C CNN "MPN"
	4    8825 2575
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA892B1
P 3800 2025
AR Path="/5EA892B1" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892B1" Ref="R?"  Part="1" 
F 0 "R?" V 3750 1825 50  0000 C CNN
F 1 "0R1" V 3750 2225 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 3730 2025 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/418/NG_CD_2176422_A-1591892.pdf" H 3800 2025 50  0001 C CNN
F 4 "TLRP3A30WR100FTE" H 3800 2025 50  0001 C CNN "MPN"
	1    3800 2025
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA892DD
P 3500 2475
AR Path="/5EA892DD" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892DD" Ref="R?"  Part="1" 
F 0 "R?" H 3570 2521 50  0000 L CNN
F 1 "10k" H 3570 2430 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3430 2475 50  0001 C CNN
F 3 "~" H 3500 2475 50  0001 C CNN
F 4 "APC0805B10K0N" H 3500 2475 50  0001 C CNN "MPN"
	1    3500 2475
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA892E4
P 4125 2475
AR Path="/5EA892E4" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892E4" Ref="R?"  Part="1" 
F 0 "R?" H 3925 2525 50  0000 L CNN
F 1 "10k" H 3925 2425 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4055 2475 50  0001 C CNN
F 3 "~" H 4125 2475 50  0001 C CNN
F 4 "APC0805B10K0N" H 4125 2475 50  0001 C CNN "MPN"
	1    4125 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2625 3700 2625
Wire Wire Line
	3700 2625 3700 2775
Wire Wire Line
	4125 2625 3900 2625
Wire Wire Line
	3900 2625 3900 2775
$Comp
L Device:R R?
U 1 1 5EA892FF
P 3950 3525
AR Path="/5EA892FF" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892FF" Ref="R?"  Part="1" 
F 0 "R?" H 4020 3571 50  0000 L CNN
F 1 "1k" H 4020 3480 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3880 3525 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 3950 3525 50  0001 C CNN
F 4 "RT0805FRE071KL" H 3950 3525 50  0001 C CNN "MPN"
	1    3950 3525
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EA89309
P 3950 4025
AR Path="/5EA89309" Ref="C?"  Part="1" 
AR Path="/5CA3E8E1/5EA89309" Ref="C?"  Part="1" 
F 0 "C?" H 4050 4075 50  0000 L CNN
F 1 "10nF" H 4050 3975 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3950 4025 50  0001 C CNN
F 3 "~" H 3950 4025 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 3950 4025 50  0001 C CNN "MPN"
	1    3950 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3675 3950 3825
$Comp
L symbols:OPA4196 U?
U 2 1 5EA89311
P 3800 2975
AR Path="/5EA89311" Ref="U?"  Part="2" 
AR Path="/5CA3E8E1/5EA89311" Ref="U?"  Part="3" 
F 0 "U?" V 3900 3325 50  0000 R CNN
F 1 "OPA4196" V 4000 3425 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3800 2975 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 3900 3275 50  0001 C CNN
F 4 "OPA4196IDR" H 3800 2975 50  0001 C CNN "MPN"
	2    3800 2975
	0    -1   1    0   
$EndComp
Connection ~ 3950 3825
Wire Wire Line
	3950 3825 3950 3925
Wire Wire Line
	3900 2775 4100 2775
Wire Wire Line
	4100 2775 4100 2925
Wire Wire Line
	3000 2625 3050 2625
Wire Wire Line
	3500 2625 3350 2625
Connection ~ 3500 2625
Connection ~ 3900 2775
Text Notes 3375 1775 0    39   ~ 0
Shunt resistor is at least 2W 1%
Text Notes 2775 3150 0    39   ~ 0
165 / 20 = gain of 8.25\n\n0.4V * 8.25 = 3.3V
$Comp
L Connector:TestPoint TP?
U 1 1 5EA8932B
P 4200 3825
AR Path="/5CA3E8E1/5EA8932B" Ref="TP?"  Part="1" 
AR Path="/5EA8932B" Ref="TP?"  Part="1" 
F 0 "TP?" H 4258 3943 50  0000 L CNN
F 1 "Iread" H 4258 3852 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4400 3825 50  0001 C CNN
F 3 "~" H 4400 3825 50  0001 C CNN
	1    4200 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3825 3950 3825
$Comp
L power:GNDA #PWR?
U 1 1 5EA89332
P 3000 2675
AR Path="/5CA3E8E1/5EA89332" Ref="#PWR?"  Part="1" 
AR Path="/5EA89332" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 3000 2425 50  0001 C CNN
F 1 "GNDA" H 3005 2502 50  0000 C CNN
F 2 "" H 3000 2675 50  0001 C CNN
F 3 "" H 3000 2675 50  0001 C CNN
	1    3000 2675
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5EA89338
P 3950 4125
AR Path="/5CA3E8E1/5EA89338" Ref="#PWR?"  Part="1" 
AR Path="/5EA89338" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 3950 3875 50  0001 C CNN
F 1 "GNDA" H 3955 3952 50  0000 C CNN
F 2 "" H 3950 4125 50  0001 C CNN
F 3 "" H 3950 4125 50  0001 C CNN
	1    3950 4125
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2625 3000 2675
$Comp
L Device:CP_Small C?
U 1 1 5EA8933F
P 3100 2125
AR Path="/5CA3E8E1/5EA8933F" Ref="C?"  Part="1" 
AR Path="/5EA8933F" Ref="C?"  Part="1" 
F 0 "C?" H 3188 2171 50  0000 L CNN
F 1 "100µF" H 3188 2080 50  0000 L CNN
F 2 "" H 3100 2125 50  0001 C CNN
F 3 "~" H 3100 2125 50  0001 C CNN
	1    3100 2125
	1    0    0    -1  
$EndComp
Connection ~ 3100 2025
Wire Wire Line
	3100 2025 2650 2025
$Comp
L Device:CP_Small C?
U 1 1 5EA89347
P 2650 2125
AR Path="/5CA3E8E1/5EA89347" Ref="C?"  Part="1" 
AR Path="/5EA89347" Ref="C?"  Part="1" 
F 0 "C?" H 2738 2171 50  0000 L CNN
F 1 "100µF" H 2738 2080 50  0000 L CNN
F 2 "" H 2650 2125 50  0001 C CNN
F 3 "~" H 2650 2125 50  0001 C CNN
	1    2650 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2225 2850 2225
$Comp
L power:GNDA #PWR?
U 1 1 5EA8934E
P 2850 2225
AR Path="/5CA3E8E1/5EA8934E" Ref="#PWR?"  Part="1" 
AR Path="/5EA8934E" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 2850 1975 50  0001 C CNN
F 1 "GNDA" H 2855 2052 50  0000 C CNN
F 2 "" H 2850 2225 50  0001 C CNN
F 3 "" H 2850 2225 50  0001 C CNN
	1    2850 2225
	1    0    0    -1  
$EndComp
Connection ~ 2850 2225
Wire Wire Line
	2850 2225 2650 2225
Connection ~ 2650 2025
$Comp
L Device:CP_Small C?
U 1 1 5EAA8715
P 4300 2125
AR Path="/5CA4A3FE/5EAA8715" Ref="C?"  Part="1" 
AR Path="/5EAA8715" Ref="C?"  Part="1" 
F 0 "C?" H 4392 2171 50  0000 L CNN
F 1 "22µF" H 4392 2080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4300 2125 50  0001 C CNN
F 3 "~" H 4300 2125 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 4300 2125 50  0001 C CNN "MPN"
	1    4300 2125
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EAA871C
P 5850 2125
AR Path="/5CA4A3FE/5EAA871C" Ref="C?"  Part="1" 
AR Path="/5EAA871C" Ref="C?"  Part="1" 
F 0 "C?" H 5942 2171 50  0000 L CNN
F 1 "1µF" H 5942 2080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5850 2125 50  0001 C CNN
F 3 "~" H 5850 2125 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 5850 2125 50  0001 C CNN "MPN"
	1    5850 2125
	1    0    0    -1  
$EndComp
Connection ~ 5850 2025
$Comp
L power:GNDA #PWR?
U 1 1 5EAA874D
P 5850 2225
AR Path="/5CA4A3FE/5EAA874D" Ref="#PWR?"  Part="1" 
AR Path="/5EAA874D" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 5850 1975 50  0001 C CNN
F 1 "GNDA" H 5855 2052 50  0000 C CNN
F 2 "" H 5850 2225 50  0001 C CNN
F 3 "" H 5850 2225 50  0001 C CNN
	1    5850 2225
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5EAA8753
P 4300 2225
AR Path="/5CA4A3FE/5EAA8753" Ref="#PWR?"  Part="1" 
AR Path="/5EAA8753" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 4300 1975 50  0001 C CNN
F 1 "GNDA" H 4305 2052 50  0000 C CNN
F 2 "" H 4300 2225 50  0001 C CNN
F 3 "" H 4300 2225 50  0001 C CNN
	1    4300 2225
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5EAA8781
P 6400 2125
AR Path="/5CA4A3FE/5EAA8781" Ref="C?"  Part="1" 
AR Path="/5EAA8781" Ref="C?"  Part="1" 
F 0 "C?" H 6488 2171 50  0000 L CNN
F 1 "100µF" H 6488 2080 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 6400 2125 50  0001 C CNN
F 3 "~" H 6400 2125 50  0001 C CNN
	1    6400 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2225 6900 2225
$Comp
L Device:CP_Small C?
U 1 1 5EAA8788
P 6900 2125
AR Path="/5CA4A3FE/5EAA8788" Ref="C?"  Part="1" 
AR Path="/5EAA8788" Ref="C?"  Part="1" 
F 0 "C?" H 6988 2171 50  0000 L CNN
F 1 "100µF" H 6988 2080 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 6900 2125 50  0001 C CNN
F 3 "~" H 6900 2125 50  0001 C CNN
	1    6900 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2025 6400 2025
Connection ~ 6400 2025
Wire Wire Line
	6400 2025 6900 2025
Wire Wire Line
	6400 2225 5850 2225
Connection ~ 6400 2225
Connection ~ 5850 2225
Wire Wire Line
	6900 2025 7350 2025
Connection ~ 6900 2025
$Comp
L Device:C_Small C?
U 1 1 5EAA8797
P 5850 1925
AR Path="/5CA4A3FE/5EAA8797" Ref="C?"  Part="1" 
AR Path="/5EAA8797" Ref="C?"  Part="1" 
F 0 "C?" H 5942 1971 50  0000 L CNN
F 1 "1µF" H 5942 1880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5850 1925 50  0001 C CNN
F 3 "~" H 5850 1925 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 5850 1925 50  0001 C CNN "MPN"
	1    5850 1925
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EAA879E
P 6400 1925
AR Path="/5CA4A3FE/5EAA879E" Ref="C?"  Part="1" 
AR Path="/5EAA879E" Ref="C?"  Part="1" 
F 0 "C?" H 6492 1971 50  0000 L CNN
F 1 "1µF" H 6492 1880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6400 1925 50  0001 C CNN
F 3 "~" H 6400 1925 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 6400 1925 50  0001 C CNN "MPN"
	1    6400 1925
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5EAA87A4
P 6400 1825
AR Path="/5CA4A3FE/5EAA87A4" Ref="#PWR?"  Part="1" 
AR Path="/5EAA87A4" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 6400 1575 50  0001 C CNN
F 1 "GNDA" H 6405 1652 50  0000 C CNN
F 2 "" H 6400 1825 50  0001 C CNN
F 3 "" H 6400 1825 50  0001 C CNN
	1    6400 1825
	-1   0    0    1   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5EAA87AA
P 6900 1925
AR Path="/5CA4A3FE/5EAA87AA" Ref="C?"  Part="1" 
AR Path="/5EAA87AA" Ref="C?"  Part="1" 
F 0 "C?" H 6988 1971 50  0000 L CNN
F 1 "470µF" H 6988 1880 50  0000 L CNN
F 2 "" H 6900 1925 50  0001 C CNN
F 3 "~" H 6900 1925 50  0001 C CNN
	1    6900 1925
	1    0    0    1   
$EndComp
Wire Wire Line
	5850 1825 6400 1825
Connection ~ 6400 1825
Wire Wire Line
	6400 1825 6900 1825
Wire Wire Line
	6600 5000 6800 5000
Wire Wire Line
	6800 5000 6800 5050
Wire Wire Line
	6750 4350 6750 3900
Wire Wire Line
	6750 3900 6150 3900
Wire Wire Line
	6150 3900 6150 4250
Connection ~ 6050 5000
Wire Wire Line
	6050 5000 6300 5000
Wire Wire Line
	6750 4350 6900 4350
Wire Wire Line
	5375 5000 5375 5300
Wire Wire Line
	5375 5300 4775 5300
Wire Wire Line
	4775 5300 4775 5100
Wire Wire Line
	6050 4450 6150 4450
Text Notes 4900 5525 0    39   ~ 0
(9.88 / 59.88) * 20 = 3.3\n
Wire Wire Line
	6900 4350 6900 4250
Connection ~ 6900 4350
Wire Wire Line
	6900 4350 7125 4350
Wire Wire Line
	4550 6925 4550 6775
$Comp
L Device:R R?
U 1 1 5EABE711
P 6450 5000
AR Path="/5CA4C891/5EABE711" Ref="R?"  Part="1" 
AR Path="/5EABE711" Ref="R?"  Part="1" 
F 0 "R?" V 6350 5050 50  0000 R CNN
F 1 "9k88" V 6550 5050 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6380 5000 50  0001 C CNN
F 3 "~" H 6450 5000 50  0001 C CNN
F 4 "TNPW08059K88BEEN" H 6450 5000 50  0001 C CNN "MPN"
	1    6450 5000
	0    1    1    0   
$EndComp
$Comp
L symbols:OPA4196 U?
U 4 1 5EABE718
P 6350 4350
AR Path="/5CA4C891/5EABE718" Ref="U?"  Part="4" 
AR Path="/5EABE718" Ref="U?"  Part="4" 
F 0 "U?" H 6475 3985 50  0000 C CNN
F 1 "OPA4196" H 6475 4076 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6350 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 6450 4650 50  0001 C CNN
F 4 "OPA4196IDR" H 6350 4350 50  0001 C CNN "MPN"
	4    6350 4350
	1    0    0    1   
$EndComp
$Comp
L symbols:OPA4196 U?
U 2 1 5EABE71F
P 5850 5950
AR Path="/5CA4C891/5EABE71F" Ref="U?"  Part="2" 
AR Path="/5EABE71F" Ref="U?"  Part="2" 
F 0 "U?" H 5975 6315 50  0000 C CNN
F 1 "OPA4196" H 5975 6224 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5850 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 5950 6250 50  0001 C CNN
F 4 "OPA4196IDR" H 5850 5950 50  0001 C CNN "MPN"
	2    5850 5950
	-1   0    0    -1  
$EndComp
$Comp
L symbols:OPA4196 U?
U 3 1 5EABE726
P 4750 6675
AR Path="/5CA4C891/5EABE726" Ref="U?"  Part="3" 
AR Path="/5EABE726" Ref="U?"  Part="3" 
F 0 "U?" H 4875 7040 50  0000 C CNN
F 1 "OPA4196" H 4875 6949 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4750 6675 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 4850 6975 50  0001 C CNN
F 4 "OPA4196IDR" H 4750 6675 50  0001 C CNN "MPN"
	3    4750 6675
	1    0    0    -1  
$EndComp
$Comp
L symbols:OPA4196 U?
U 5 1 5EABE72D
P 4975 5000
AR Path="/5CA4C891/5EABE72D" Ref="U?"  Part="5" 
AR Path="/5EABE72D" Ref="U?"  Part="5" 
F 0 "U?" H 5100 5365 50  0000 C CNN
F 1 "OPA4196" H 5100 5274 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4975 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 5075 5300 50  0001 C CNN
F 4 "OPA4196IDR" H 4975 5000 50  0001 C CNN "MPN"
	5    4975 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE75D
P 6900 4250
AR Path="/5CA4C891/5EABE75D" Ref="TP?"  Part="1" 
AR Path="/5EABE75D" Ref="TP?"  Part="1" 
F 0 "TP?" H 6958 4368 50  0000 L CNN
F 1 "Vread" H 6958 4277 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7100 4250 50  0001 C CNN
F 3 "~" H 7100 4250 50  0001 C CNN
	1    6900 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE763
P 4925 5875
AR Path="/5CA4C891/5EABE763" Ref="TP?"  Part="1" 
AR Path="/5EABE763" Ref="TP?"  Part="1" 
F 0 "TP?" H 4983 5993 50  0000 L CNN
F 1 "Vreg" H 4983 5902 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5125 5875 50  0001 C CNN
F 3 "~" H 5125 5875 50  0001 C CNN
	1    4925 5875
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE769
P 6550 5925
AR Path="/5CA4C891/5EABE769" Ref="TP?"  Part="1" 
AR Path="/5EABE769" Ref="TP?"  Part="1" 
F 0 "TP?" H 6492 5951 50  0000 R CNN
F 1 "Vset" H 6492 6042 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6750 5925 50  0001 C CNN
F 3 "~" H 6750 5925 50  0001 C CNN
	1    6550 5925
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE76F
P 4550 6925
AR Path="/5CA4C891/5EABE76F" Ref="TP?"  Part="1" 
AR Path="/5EABE76F" Ref="TP?"  Part="1" 
F 0 "TP?" H 4492 6951 50  0000 R CNN
F 1 "Iset" H 4492 7042 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4750 6925 50  0001 C CNN
F 3 "~" H 4750 6925 50  0001 C CNN
	1    4550 6925
	-1   0    0    1   
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5EABE776
P 6800 5050
AR Path="/5CA4C891/5EABE776" Ref="#PWR?"  Part="1" 
AR Path="/5EABE776" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 6800 4800 50  0001 C CNN
F 1 "GNDA" H 6805 4877 50  0000 C CNN
F 2 "" H 6800 5050 50  0001 C CNN
F 3 "" H 6800 5050 50  0001 C CNN
	1    6800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4450 6050 5000
$Comp
L Device:R R?
U 1 1 5EABE781
P 6300 6050
AR Path="/5CA4C891/5EABE781" Ref="R?"  Part="1" 
AR Path="/5EABE781" Ref="R?"  Part="1" 
F 0 "R?" V 6093 6050 50  0000 C CNN
F 1 "100K" V 6184 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6230 6050 50  0001 C CNN
F 3 "CRCW080510K0FKEAC" H 6300 6050 50  0001 C CNN
	1    6300 6050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EABE78F
P 5700 6450
AR Path="/5CA4C891/5EABE78F" Ref="R?"  Part="1" 
AR Path="/5EABE78F" Ref="R?"  Part="1" 
F 0 "R?" V 5800 6400 50  0000 L CNN
F 1 "?" V 5700 6425 50  0000 L CNN
F 2 "" V 5630 6450 50  0001 C CNN
F 3 "~" H 5700 6450 50  0001 C CNN
	1    5700 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	6425 6650 6425 6800
$Comp
L power:GNDA #PWR?
U 1 1 5EABE79A
P 6425 6800
AR Path="/5CA4C891/5EABE79A" Ref="#PWR?"  Part="1" 
AR Path="/5EABE79A" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 6425 6550 50  0001 C CNN
F 1 "GNDA" H 6430 6627 50  0000 C CNN
F 2 "" H 6425 6800 50  0001 C CNN
F 3 "" H 6425 6800 50  0001 C CNN
	1    6425 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 5875 4925 5950
Connection ~ 4925 5950
$Comp
L symbols:OPA4196 U?
U 3 1 5EB44970
P 3450 3725
AR Path="/5CA214F9/5EB44970" Ref="U?"  Part="2" 
AR Path="/5EB44970" Ref="U?"  Part="3" 
F 0 "U?" H 3550 4090 50  0000 C CNN
F 1 "OPA4196" H 3550 3999 50  0000 C CNN
F 2 "" H 3550 3725 50  0001 C CNN
F 3 "" H 3550 3725 50  0001 C CNN
	3    3450 3725
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 3725 2800 3725
Wire Wire Line
	3650 3500 3050 3500
Wire Wire Line
	3050 3500 3050 3725
Connection ~ 3050 3725
$Comp
L power:VDD #PWR0115
U 1 1 5EBC7CA4
P 2400 2025
F 0 "#PWR0115" H 2400 1875 50  0001 C CNN
F 1 "VDD" H 2417 2198 50  0000 C CNN
F 2 "" H 2400 2025 50  0001 C CNN
F 3 "" H 2400 2025 50  0001 C CNN
	1    2400 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2025 2650 2025
Connection ~ 6750 4350
Wire Wire Line
	3650 3825 3675 3825
Wire Wire Line
	4775 4900 4775 4450
Wire Wire Line
	5675 2025 5850 2025
Wire Wire Line
	6050 5000 6050 5850
Wire Wire Line
	6550 5925 6550 6050
Wire Wire Line
	6550 6050 6450 6050
Wire Wire Line
	4675 5950 4675 4375
Wire Wire Line
	4675 4375 5425 4375
Wire Wire Line
	4675 5950 4925 5950
Wire Wire Line
	6550 6050 6775 6050
Connection ~ 6550 6050
Wire Wire Line
	3650 3500 3650 3625
Wire Wire Line
	6050 6050 6100 6050
Wire Wire Line
	6100 6250 6100 6050
Connection ~ 6100 6050
Wire Wire Line
	6100 6050 6150 6050
$Comp
L Device:C_Small C?
U 1 1 5FFC0F1E
P 6125 6625
F 0 "C?" H 6217 6671 50  0000 L CNN
F 1 "?" H 6217 6580 50  0000 L CNN
F 2 "" H 6125 6625 50  0001 C CNN
F 3 "~" H 6125 6625 50  0001 C CNN
	1    6125 6625
	1    0    0    -1  
$EndComp
Connection ~ 6425 6800
$Comp
L Device:R R?
U 1 1 600595C9
P 5400 6575
AR Path="/5CA4C891/600595C9" Ref="R?"  Part="1" 
AR Path="/600595C9" Ref="R?"  Part="1" 
F 0 "R?" V 5475 6525 50  0000 L CNN
F 1 "?" V 5400 6550 50  0000 L CNN
F 2 "" V 5330 6575 50  0001 C CNN
F 3 "~" H 5400 6575 50  0001 C CNN
	1    5400 6575
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4925 5950 5225 5950
$Comp
L Device:R R?
U 1 1 5EA892EC
P 3200 2625
AR Path="/5EA892EC" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892EC" Ref="R?"  Part="1" 
F 0 "R?" V 2993 2625 50  0000 C CNN
F 1 "165K" V 3084 2625 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3130 2625 50  0001 C CNN
F 3 "~" H 3200 2625 50  0001 C CNN
F 4 "PCF0805R-82K5BT1" H 3200 2625 50  0001 C CNN "MPN"
	1    3200 2625
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA892F7
P 4100 3075
AR Path="/5EA892F7" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892F7" Ref="R?"  Part="1" 
F 0 "R?" H 4170 3121 50  0000 L CNN
F 1 "165K" H 4170 3030 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4030 3075 50  0001 C CNN
F 3 "~" H 4100 3075 50  0001 C CNN
F 4 "PCF0805R-82K5BT1" H 4100 3075 50  0001 C CNN "MPN"
	1    4100 3075
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6026AE92
P 5225 6125
F 0 "R?" H 5295 6171 50  0000 L CNN
F 1 "10K" H 5295 6080 50  0000 L CNN
F 2 "" V 5155 6125 50  0001 C CNN
F 3 "~" H 5225 6125 50  0001 C CNN
	1    5225 6125
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0116
U 1 1 6026B660
P 5225 6300
F 0 "#PWR0116" H 5225 6050 50  0001 C CNN
F 1 "GNDA" H 5230 6127 50  0000 C CNN
F 2 "" H 5225 6300 50  0001 C CNN
F 3 "" H 5225 6300 50  0001 C CNN
	1    5225 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5225 5975 5225 5950
Connection ~ 5225 5950
Wire Wire Line
	5225 5950 5450 5950
$Comp
L Device:R R?
U 1 1 6028C1A6
P 5700 4850
F 0 "R?" V 5493 4850 50  0000 C CNN
F 1 "100K" V 5584 4850 50  0000 C CNN
F 2 "" V 5630 4850 50  0001 C CNN
F 3 "~" H 5700 4850 50  0001 C CNN
	1    5700 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6028D9FC
P 5700 5150
F 0 "R?" V 5493 5150 50  0000 C CNN
F 1 "100K" V 5584 5150 50  0000 C CNN
F 2 "" V 5630 5150 50  0001 C CNN
F 3 "~" H 5700 5150 50  0001 C CNN
	1    5700 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 4850 5850 5000
Connection ~ 5850 5000
Wire Wire Line
	5850 5000 5850 5150
Wire Wire Line
	5550 4850 5550 5000
Wire Wire Line
	5375 5000 5550 5000
Connection ~ 5375 5000
Connection ~ 5550 5000
Wire Wire Line
	5550 5000 5550 5150
Wire Wire Line
	6050 5000 5850 5000
Wire Wire Line
	4550 6575 4550 4400
Text Notes 3550 1900 0    50   ~ 0
4 * 0.1Ω = 0.4V
Wire Wire Line
	3950 2025 4125 2025
Wire Wire Line
	3100 2025 3500 2025
$Comp
L Device:R R?
U 1 1 5EBC92B1
P 3500 2175
AR Path="/5EBC92B1" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EBC92B1" Ref="R?"  Part="1" 
F 0 "R?" H 3570 2221 50  0000 L CNN
F 1 "10k" H 3570 2130 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3430 2175 50  0001 C CNN
F 3 "~" H 3500 2175 50  0001 C CNN
F 4 "APC0805B10K0N" H 3500 2175 50  0001 C CNN "MPN"
	1    3500 2175
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EBC9910
P 4125 2175
AR Path="/5EBC9910" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EBC9910" Ref="R?"  Part="1" 
F 0 "R?" H 3925 2225 50  0000 L CNN
F 1 "10k" H 3925 2125 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4055 2175 50  0001 C CNN
F 3 "~" H 4125 2175 50  0001 C CNN
F 4 "APC0805B10K0N" H 4125 2175 50  0001 C CNN "MPN"
	1    4125 2175
	1    0    0    -1  
$EndComp
Connection ~ 4125 2025
Wire Wire Line
	4125 2025 4300 2025
Connection ~ 3500 2025
Wire Wire Line
	3500 2025 3650 2025
Wire Wire Line
	3800 3375 3950 3375
Wire Wire Line
	4100 3375 4100 3225
Connection ~ 3950 3375
Wire Wire Line
	3950 3375 4100 3375
$Comp
L Device:D_Zener D?
U 1 1 5ECFF190
P 5650 6300
F 0 "D?" H 5650 6084 50  0000 C CNN
F 1 "10V-16V" H 5650 6175 50  0000 C CNN
F 2 "" H 5650 6300 50  0001 C CNN
F 3 "~" H 5650 6300 50  0001 C CNN
	1    5650 6300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 6300 5225 6300
Wire Wire Line
	5225 6300 5225 6275
Connection ~ 5225 6300
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5EABE787
P 6325 6450
AR Path="/5CA4C891/5EABE787" Ref="Q?"  Part="1" 
AR Path="/5EABE787" Ref="Q?"  Part="1" 
F 0 "Q?" H 6531 6496 50  0000 L CNN
F 1 "2N7002NXAK" H 6531 6405 50  0000 L CNN
F 2 "" H 6525 6550 50  0001 C CNN
F 3 "~" H 6325 6450 50  0001 C CNN
	1    6325 6450
	1    0    0    -1  
$EndComp
$Sheet
S 4725 1500 575  250 
U 5EE5D0E4
F0 "PassFet2" 50
F1 "passfet.sch" 50
F2 "Gate" U R 5300 1675 50 
F3 "Source" U R 5300 1575 50 
F4 "Drain" U L 4725 1575 50 
$EndSheet
$Sheet
S 4725 1950 575  250 
U 5EF07313
F0 "PassFet1" 50
F1 "passfet.sch" 50
F2 "Gate" U R 5300 2125 50 
F3 "Source" U R 5300 2025 50 
F4 "Drain" U L 4725 2025 50 
$EndSheet
Wire Wire Line
	4300 2025 4600 2025
Connection ~ 4300 2025
$Sheet
S 4725 1075 575  250 
U 5EF37B1F
F0 "PassFet3" 50
F1 "passfet.sch" 50
F2 "Gate" U R 5300 1250 50 
F3 "Source" U R 5300 1150 50 
F4 "Drain" U L 4725 1150 50 
$EndSheet
$Sheet
S 4725 650  575  250 
U 5EF4F686
F0 "PassFet4" 50
F1 "passfet.sch" 50
F2 "Gate" U R 5300 825 50 
F3 "Source" U R 5300 725 50 
F4 "Drain" U L 4725 725 50 
$EndSheet
Wire Wire Line
	4600 2025 4600 1575
Wire Wire Line
	4600 1575 4725 1575
Connection ~ 4600 2025
Wire Wire Line
	4600 2025 4725 2025
Wire Wire Line
	4600 1575 4600 1150
Wire Wire Line
	4600 1150 4725 1150
Connection ~ 4600 1575
Wire Wire Line
	4600 1150 4600 725 
Wire Wire Line
	4600 725  4725 725 
Connection ~ 4600 1150
Wire Wire Line
	5300 2025 5675 2025
Connection ~ 5675 2025
Wire Wire Line
	5300 1575 5675 1575
Wire Wire Line
	5675 1575 5675 2025
Wire Wire Line
	5675 1575 5675 1150
Wire Wire Line
	5675 1150 5300 1150
Connection ~ 5675 1575
Wire Wire Line
	5300 725  5675 725 
Wire Wire Line
	5675 725  5675 1150
Connection ~ 5675 1150
Wire Wire Line
	5300 825  5425 825 
Wire Wire Line
	5425 825  5425 1250
Wire Wire Line
	5425 1250 5300 1250
Wire Wire Line
	5425 1250 5425 1675
Wire Wire Line
	5425 1675 5300 1675
Connection ~ 5425 1250
Wire Wire Line
	5425 1675 5425 2125
Wire Wire Line
	5425 2125 5300 2125
Connection ~ 5425 1675
Connection ~ 5425 2125
Wire Wire Line
	5425 2125 5425 4375
Wire Wire Line
	4775 4450 5675 4450
Wire Wire Line
	5675 2025 5675 4450
$Sheet
S 575  2725 1050 900 
U 5F1751CC
F0 "MCU" 50
F1 "MCU.sch" 50
$EndSheet
Text GLabel 7400 2025 2    50   UnSpc ~ 0
VOUT
$Comp
L Device:C_Small C?
U 1 1 5EAC8F58
P 675 1075
F 0 "C?" H 767 1121 50  0000 L CNN
F 1 "100nF" H 767 1030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 675 1075 50  0001 C CNN
F 3 "~" H 675 1075 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 675 1075 50  0001 C CNN "MPN"
	1    675  1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	675  975  675  800 
Wire Wire Line
	675  800  1075 800 
Connection ~ 1075 800 
Wire Wire Line
	1075 1300 675  1300
Wire Wire Line
	675  1300 675  1175
Connection ~ 1075 1300
$Comp
L Device:C_Small C?
U 1 1 5EAD4370
P 2425 1050
F 0 "C?" H 2517 1096 50  0000 L CNN
F 1 "100nF" H 2517 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2425 1050 50  0001 C CNN
F 3 "~" H 2425 1050 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 2425 1050 50  0001 C CNN "MPN"
	1    2425 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2825 1300 2425 1300
Wire Wire Line
	2425 1300 2425 1150
Connection ~ 2825 1300
Wire Wire Line
	2425 950  2425 800 
Wire Wire Line
	2425 800  2825 800 
Connection ~ 2825 800 
Wire Notes Line width 10
	550  575  550  1550
Wire Notes Line width 10
	550  1550 3950 1550
Wire Notes Line width 10
	3950 1550 3950 575 
Text Notes 525  575  0    50   ~ 10
OPAMP Power
Wire Notes Line width 10
	550  575  3950 575 
Wire Wire Line
	4550 4400 3675 4400
Wire Wire Line
	3675 4400 3675 3825
Connection ~ 3675 3825
Wire Wire Line
	3675 3825 3950 3825
Text GLabel 2800 3725 0    50   UnSpc ~ 0
Iread
Text GLabel 4425 6775 0    50   UnSpc ~ 0
Iset
Text GLabel 6775 6050 2    50   UnSpc ~ 0
Vset
Text GLabel 7125 4350 2    50   UnSpc ~ 0
Vread
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5EB2B36B
P 6225 7250
AR Path="/5CA4C891/5EB2B36B" Ref="Q?"  Part="1" 
AR Path="/5EB2B36B" Ref="Q?"  Part="1" 
F 0 "Q?" H 6431 7296 50  0000 L CNN
F 1 "2N7002NXAK" H 6431 7205 50  0000 L CNN
F 2 "" H 6425 7350 50  0001 C CNN
F 3 "~" H 6225 7250 50  0001 C CNN
	1    6225 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB2CD20
P 5300 6900
F 0 "R?" V 5093 6900 50  0000 C CNN
F 1 "10K" V 5184 6900 50  0000 C CNN
F 2 "" V 5230 6900 50  0001 C CNN
F 3 "~" H 5300 6900 50  0001 C CNN
	1    5300 6900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5EB3377E
P 6325 7550
F 0 "#PWR0117" H 6325 7300 50  0001 C CNN
F 1 "GND" H 6330 7377 50  0000 C CNN
F 2 "" H 6325 7550 50  0001 C CNN
F 3 "" H 6325 7550 50  0001 C CNN
	1    6325 7550
	1    0    0    -1  
$EndComp
Text GLabel 6550 7050 2    50   UnSpc ~ 0
CLIMIT
Wire Wire Line
	6550 7050 6325 7050
$Comp
L Device:D_Zener D?
U 1 1 5EB3B310
P 5600 7400
F 0 "D?" V 5575 7200 50  0000 C CNN
F 1 "10V-16V" V 5650 7175 50  0000 C CNN
F 2 "" H 5600 7400 50  0001 C CNN
F 3 "~" H 5600 7400 50  0001 C CNN
	1    5600 7400
	0    1    1    0   
$EndComp
Wire Wire Line
	6325 7450 6325 7550
$Comp
L symbols:LM317 U?
U 1 1 5EB5170E
P 1375 5800
AR Path="/5EB5170E" Ref="U?"  Part="1" 
AR Path="/5F3D442D/5EB5170E" Ref="U?"  Part="1" 
F 0 "U?" H 1375 6065 50  0000 C CNN
F 1 "LM317" H 1375 5974 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1375 6300 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/LM317M-D-1810713.pdf" H 1375 5800 50  0001 C CNN
	1    1375 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1075 5800 800  5800
Connection ~ 800  5800
Wire Wire Line
	800  5800 650  5800
$Comp
L power:VDD #PWR0118
U 1 1 5EB51717
P 650 5800
AR Path="/5EB51717" Ref="#PWR0118"  Part="1" 
AR Path="/5F3D442D/5EB51717" Ref="#PWR?"  Part="1" 
F 0 "#PWR0118" H 650 5650 50  0001 C CNN
F 1 "VDD" H 667 5973 50  0000 C CNN
F 2 "" H 650 5800 50  0001 C CNN
F 3 "" H 650 5800 50  0001 C CNN
	1    650  5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB5171E
P 800 5900
AR Path="/5EB5171E" Ref="C?"  Part="1" 
AR Path="/5F3D442D/5EB5171E" Ref="C?"  Part="1" 
F 0 "C?" H 892 5946 50  0000 L CNN
F 1 "100nF" H 892 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 800 5900 50  0001 C CNN
F 3 "~" H 800 5900 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 800 5900 50  0001 C CNN "MPN"
	1    800  5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB51724
P 1575 6325
AR Path="/5EB51724" Ref="R?"  Part="1" 
AR Path="/5F3D442D/5EB51724" Ref="R?"  Part="1" 
F 0 "R?" V 1475 6325 50  0000 C CNN
F 1 "1K" V 1575 6325 50  0000 C CNN
F 2 "" V 1505 6325 50  0001 C CNN
F 3 "~" H 1575 6325 50  0001 C CNN
	1    1575 6325
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB5172A
P 1375 6550
AR Path="/5EB5172A" Ref="R?"  Part="1" 
AR Path="/5F3D442D/5EB5172A" Ref="R?"  Part="1" 
F 0 "R?" H 1445 6596 50  0000 L CNN
F 1 "10K" H 1445 6505 50  0000 L CNN
F 2 "" V 1305 6550 50  0001 C CNN
F 3 "~" H 1375 6550 50  0001 C CNN
	1    1375 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  6700 800  6000
Connection ~ 1375 6700
$Comp
L Device:C_Small C?
U 1 1 5EB51732
P 975 6550
AR Path="/5EB51732" Ref="C?"  Part="1" 
AR Path="/5F3D442D/5EB51732" Ref="C?"  Part="1" 
F 0 "C?" H 1067 6596 50  0000 L CNN
F 1 "1µF" H 1067 6505 50  0000 L CNN
F 2 "" H 975 6550 50  0001 C CNN
F 3 "~" H 975 6550 50  0001 C CNN
	1    975  6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  6700 975  6700
Wire Wire Line
	975  6700 975  6650
Connection ~ 975  6700
Wire Wire Line
	975  6700 1375 6700
$Comp
L Device:R R?
U 1 1 5EB5173C
P 1875 6325
AR Path="/5EB5173C" Ref="R?"  Part="1" 
AR Path="/5F3D442D/5EB5173C" Ref="R?"  Part="1" 
F 0 "R?" V 1775 6325 50  0000 C CNN
F 1 "100R" V 1875 6325 50  0000 C CNN
F 2 "" V 1805 6325 50  0001 C CNN
F 3 "~" H 1875 6325 50  0001 C CNN
	1    1875 6325
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB51742
P 2100 5975
AR Path="/5EB51742" Ref="R?"  Part="1" 
AR Path="/5F3D442D/5EB51742" Ref="R?"  Part="1" 
F 0 "R?" H 2170 6021 50  0000 L CNN
F 1 "100R" H 2170 5930 50  0000 L CNN
F 2 "" V 2030 5975 50  0001 C CNN
F 3 "~" H 2100 5975 50  0001 C CNN
	1    2100 5975
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB51748
P 2425 5975
AR Path="/5EB51748" Ref="R?"  Part="1" 
AR Path="/5F3D442D/5EB51748" Ref="R?"  Part="1" 
F 0 "R?" H 2495 6021 50  0000 L CNN
F 1 "100R" H 2495 5930 50  0000 L CNN
F 2 "" V 2355 5975 50  0001 C CNN
F 3 "~" H 2425 5975 50  0001 C CNN
	1    2425 5975
	1    0    0    -1  
$EndComp
Wire Wire Line
	2425 5800 2425 5825
Wire Wire Line
	1675 5800 1775 5800
Wire Wire Line
	2100 5825 2100 5800
Connection ~ 2100 5800
Wire Wire Line
	2100 5800 2425 5800
Wire Wire Line
	2025 6325 2100 6325
Wire Wire Line
	2425 6325 2425 6125
Wire Wire Line
	2100 6125 2100 6325
Connection ~ 2100 6325
Wire Wire Line
	2100 6325 2425 6325
$Comp
L Device:CP_Small C?
U 1 1 5EB51758
P 2800 6000
AR Path="/5EB51758" Ref="C?"  Part="1" 
AR Path="/5F3D442D/5EB51758" Ref="C?"  Part="1" 
F 0 "C?" H 2888 6046 50  0000 L CNN
F 1 "22µF" H 2888 5955 50  0000 L CNN
F 2 "" H 2800 6000 50  0001 C CNN
F 3 "~" H 2800 6000 50  0001 C CNN
	1    2800 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5900 2800 5800
Wire Wire Line
	2800 5800 2425 5800
Connection ~ 2425 5800
$Comp
L Device:D_Schottky D?
U 1 1 5EB51761
P 1375 5400
AR Path="/5EB51761" Ref="D?"  Part="1" 
AR Path="/5F3D442D/5EB51761" Ref="D?"  Part="1" 
F 0 "D?" H 1375 5616 50  0000 C CNN
F 1 "SS16HE" H 1375 5525 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1375 5400 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/SS13HE-D-1814993.pdf" H 1375 5400 50  0001 C CNN
	1    1375 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1225 5400 800  5400
Wire Wire Line
	800  5400 800  5800
Wire Wire Line
	1525 5400 1775 5400
Wire Wire Line
	1775 5400 1775 5800
Connection ~ 1775 5800
Wire Wire Line
	1775 5800 1925 5800
$Comp
L Device:D_Schottky D?
U 1 1 5EB5176D
P 1750 6100
AR Path="/5EB5176D" Ref="D?"  Part="1" 
AR Path="/5F3D442D/5EB5176D" Ref="D?"  Part="1" 
F 0 "D?" H 1750 5884 50  0000 C CNN
F 1 "SS16HE" H 1750 5975 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1750 6100 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/SS13HE-D-1814993.pdf" H 1750 6100 50  0001 C CNN
	1    1750 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1375 6400 1375 6325
Connection ~ 1375 6325
Wire Wire Line
	975  6325 1375 6325
Wire Wire Line
	975  6325 975  6450
Wire Wire Line
	1425 6325 1375 6325
Wire Wire Line
	1600 6100 1375 6100
Wire Wire Line
	1375 6000 1375 6100
Connection ~ 1375 6100
Wire Wire Line
	1375 6100 1375 6325
Wire Wire Line
	1900 6100 1925 6100
Wire Wire Line
	1925 6100 1925 5800
Connection ~ 1925 5800
Wire Wire Line
	1925 5800 2100 5800
Wire Wire Line
	2800 6100 2800 6200
Wire Wire Line
	2800 6700 1375 6700
$Comp
L power:+12V #PWR0119
U 1 1 5EB51782
P 2800 5800
AR Path="/5EB51782" Ref="#PWR0119"  Part="1" 
AR Path="/5F3D442D/5EB51782" Ref="#PWR?"  Part="1" 
F 0 "#PWR0119" H 2800 5650 50  0001 C CNN
F 1 "+12V" H 2815 5973 50  0000 C CNN
F 2 "" H 2800 5800 50  0001 C CNN
F 3 "" H 2800 5800 50  0001 C CNN
	1    2800 5800
	1    0    0    -1  
$EndComp
Connection ~ 2800 5800
$Comp
L Device:C_Small C?
U 1 1 5EB51789
P 3200 6000
AR Path="/5EB51789" Ref="C?"  Part="1" 
AR Path="/5F3D442D/5EB51789" Ref="C?"  Part="1" 
F 0 "C?" H 3292 6046 50  0000 L CNN
F 1 "1µF" H 3292 5955 50  0000 L CNN
F 2 "" H 3200 6000 50  0001 C CNN
F 3 "~" H 3200 6000 50  0001 C CNN
	1    3200 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5900 3200 5800
Wire Wire Line
	3200 5800 2800 5800
Wire Wire Line
	3200 6100 3200 6200
Wire Wire Line
	3200 6200 2800 6200
Connection ~ 2800 6200
Wire Wire Line
	2800 6200 2800 6700
$Comp
L power:GND #PWR?
U 1 1 5EB51795
P 1375 6700
AR Path="/5F3D442D/5EB51795" Ref="#PWR?"  Part="1" 
AR Path="/5EB51795" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 1375 6450 50  0001 C CNN
F 1 "GND" H 1380 6527 50  0000 C CNN
F 2 "" H 1375 6700 50  0001 C CNN
F 3 "" H 1375 6700 50  0001 C CNN
	1    1375 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1125 4550 825  4550
Wire Wire Line
	1725 4550 1875 4550
Connection ~ 825  4550
Wire Wire Line
	825  4550 675  4550
Connection ~ 1425 4750
Connection ~ 1875 4550
Wire Wire Line
	1875 4550 2275 4550
Wire Wire Line
	2275 4550 2525 4550
Connection ~ 2275 4550
Wire Wire Line
	2275 4750 1875 4750
Connection ~ 1875 4750
Wire Wire Line
	1875 4750 1425 4750
$Comp
L power:VDD #PWR0121
U 1 1 5EB5E92C
P 675 4550
AR Path="/5EB5E92C" Ref="#PWR0121"  Part="1" 
AR Path="/5F3D442D/5EB5E92C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0121" H 675 4400 50  0001 C CNN
F 1 "VDD" H 692 4723 50  0000 C CNN
F 2 "" H 675 4550 50  0001 C CNN
F 3 "" H 675 4550 50  0001 C CNN
	1    675  4550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0122
U 1 1 5EB5E932
P 2525 4550
AR Path="/5EB5E932" Ref="#PWR0122"  Part="1" 
AR Path="/5F3D442D/5EB5E932" Ref="#PWR?"  Part="1" 
F 0 "#PWR0122" H 2525 4400 50  0001 C CNN
F 1 "+3V3" H 2540 4723 50  0000 C CNN
F 2 "" H 2525 4550 50  0001 C CNN
F 3 "" H 2525 4550 50  0001 C CNN
	1    2525 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1425 4750 825  4750
$Comp
L symbols:LD1086 U?
U 1 1 5EB5E93A
P 1425 4550
AR Path="/5EB5E93A" Ref="U?"  Part="1" 
AR Path="/5F3D442D/5EB5E93A" Ref="U?"  Part="1" 
F 0 "U?" H 1425 4815 50  0000 C CNN
F 1 "LD1086D2T33" H 1425 4724 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 1425 4550 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/389/ld1086-974047.pdf" V 1425 4550 50  0001 C CNN
F 4 "LD1086D2T33TR" H 1425 4550 50  0001 C CNN "MPN"
	1    1425 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB5E941
P 825 4650
AR Path="/5EB5E941" Ref="C?"  Part="1" 
AR Path="/5F3D442D/5EB5E941" Ref="C?"  Part="1" 
F 0 "C?" H 917 4696 50  0000 L CNN
F 1 "10µF" H 917 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 825 4650 50  0001 C CNN
F 3 "~" H 825 4650 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 825 4650 50  0001 C CNN "MPN"
	1    825  4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB5E948
P 1875 4650
AR Path="/5EB5E948" Ref="C?"  Part="1" 
AR Path="/5F3D442D/5EB5E948" Ref="C?"  Part="1" 
F 0 "C?" H 1967 4696 50  0000 L CNN
F 1 "10µF" H 1967 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1875 4650 50  0001 C CNN
F 3 "~" H 1875 4650 50  0001 C CNN
F 4 "EMK212BJ106KG-T" H 1875 4650 50  0001 C CNN "MPN"
	1    1875 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB5E94F
P 2275 4650
AR Path="/5EB5E94F" Ref="C?"  Part="1" 
AR Path="/5F3D442D/5EB5E94F" Ref="C?"  Part="1" 
F 0 "C?" H 2367 4696 50  0000 L CNN
F 1 "100nF" H 2367 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2275 4650 50  0001 C CNN
F 3 "~" H 2275 4650 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 2275 4650 50  0001 C CNN "MPN"
	1    2275 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4175 1875 4175
Wire Wire Line
	1875 4175 1875 4550
Wire Wire Line
	1250 4175 825  4175
Wire Wire Line
	825  4175 825  4550
$Comp
L Device:D_Schottky D?
U 1 1 5EB5E959
P 1400 4175
AR Path="/5EB5E959" Ref="D?"  Part="1" 
AR Path="/5F3D442D/5EB5E959" Ref="D?"  Part="1" 
F 0 "D?" H 1400 4391 50  0000 C CNN
F 1 "SS16HE" H 1400 4300 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1400 4175 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/SS13HE-D-1814993.pdf" H 1400 4175 50  0001 C CNN
	1    1400 4175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB5E95F
P 1425 4750
AR Path="/5F3D442D/5EB5E95F" Ref="#PWR?"  Part="1" 
AR Path="/5EB5E95F" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 1425 4500 50  0001 C CNN
F 1 "GND" H 1430 4577 50  0000 C CNN
F 2 "" H 1425 4750 50  0001 C CNN
F 3 "" H 1425 4750 50  0001 C CNN
	1    1425 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5EB6CA18
P 650 2175
AR Path="/5EB6CA18" Ref="J?"  Part="1" 
AR Path="/5F3D442D/5EB6CA18" Ref="J?"  Part="1" 
F 0 "J?" H 568 2492 50  0000 C CNN
F 1 "Terminal" H 568 2401 50  0000 C CNN
F 2 "footprints:20020316-GXXXXXXLF" H 650 2175 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/18/20020316-941859.pdf" H 650 2175 50  0001 C CNN
F 4 "20020316-G031B01LF" H 650 2175 50  0001 C CNN "MPN"
	1    650  2175
	-1   0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5EB6CA1E
P 1100 1950
AR Path="/5F3D442D/5EB6CA1E" Ref="#PWR?"  Part="1" 
AR Path="/5EB6CA1E" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 1100 1800 50  0001 C CNN
F 1 "VDD" H 1117 2123 50  0000 C CNN
F 2 "" H 1100 1950 50  0001 C CNN
F 3 "" H 1100 1950 50  0001 C CNN
	1    1100 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2075 1100 2075
Wire Wire Line
	1100 2075 1100 1950
Wire Wire Line
	850  2175 1250 2175
Wire Wire Line
	1250 2175 1250 2250
$Comp
L power:GND #PWR?
U 1 1 5EB6CA28
P 1250 2250
AR Path="/5F3D442D/5EB6CA28" Ref="#PWR?"  Part="1" 
AR Path="/5EB6CA28" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 1250 2000 50  0001 C CNN
F 1 "GND" H 1255 2077 50  0000 C CNN
F 2 "" H 1250 2250 50  0001 C CNN
F 3 "" H 1250 2250 50  0001 C CNN
	1    1250 2250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5EB6CA2E
P 1100 2075
AR Path="/5F3D442D/5EB6CA2E" Ref="#FLG?"  Part="1" 
AR Path="/5EB6CA2E" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0101" H 1100 2150 50  0001 C CNN
F 1 "PWR_FLAG" V 1100 2203 50  0000 L CNN
F 2 "" H 1100 2075 50  0001 C CNN
F 3 "~" H 1100 2075 50  0001 C CNN
	1    1100 2075
	0    1    1    0   
$EndComp
Connection ~ 1100 2075
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5EB6CA35
P 1250 2175
AR Path="/5F3D442D/5EB6CA35" Ref="#FLG?"  Part="1" 
AR Path="/5EB6CA35" Ref="#FLG0102"  Part="1" 
F 0 "#FLG0102" H 1250 2250 50  0001 C CNN
F 1 "PWR_FLAG" V 1250 2303 50  0000 L CNN
F 2 "" H 1250 2175 50  0001 C CNN
F 3 "~" H 1250 2175 50  0001 C CNN
	1    1250 2175
	0    1    1    0   
$EndComp
Connection ~ 1250 2175
Text GLabel 850  2275 2    50   UnSpc ~ 0
VOUT
Wire Notes Line width 10
	1775 1700 1775 2500
Wire Notes Line width 10
	1775 2500 550  2500
Wire Notes Line width 10
	550  2500 550  1700
Wire Notes Line width 10
	550  1700 1775 1700
Text Notes 550  1675 0    50   ~ 10
Connector
Wire Notes Line width 10
	2675 3875 2675 4975
Wire Notes Line width 10
	2675 4975 575  4975
Wire Notes Line width 10
	575  4975 575  3875
Text Notes 575  3850 0    50   ~ 10
3V3 Regulator
Wire Notes Line width 10
	575  3875 2675 3875
Wire Notes Line width 10
	3475 5125 3475 6925
Wire Notes Line width 10
	3475 6925 575  6925
Wire Notes Line width 10
	575  6925 575  5125
Text Notes 575  5100 0    50   ~ 10
12V Regulator
Wire Notes Line width 10
	575  5125 3475 5125
Wire Wire Line
	4425 6775 4550 6775
Connection ~ 4550 6775
Wire Wire Line
	5150 6575 5150 6675
Wire Wire Line
	5150 6675 5150 6900
Connection ~ 5150 6675
Wire Wire Line
	5875 7550 6325 7550
Connection ~ 6325 7550
$Comp
L Device:R R?
U 1 1 5EC6E9A5
P 5875 7400
F 0 "R?" H 5775 7325 50  0000 C CNN
F 1 "100K" H 5725 7400 50  0000 C CNN
F 2 "" V 5805 7400 50  0001 C CNN
F 3 "~" H 5875 7400 50  0001 C CNN
	1    5875 7400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5875 7250 6025 7250
Wire Wire Line
	5600 7550 5875 7550
Connection ~ 5875 7550
Wire Wire Line
	5600 7250 5875 7250
Connection ~ 5875 7250
Wire Wire Line
	5600 7250 5600 6900
Wire Wire Line
	5600 6900 5450 6900
Connection ~ 5600 7250
Wire Wire Line
	5250 6575 5150 6575
Wire Wire Line
	5550 6575 5550 6450
Wire Wire Line
	6125 6450 6125 6525
Wire Wire Line
	6125 6725 6125 6800
Wire Wire Line
	6125 6800 6425 6800
$Comp
L Device:R R?
U 1 1 5ED6B057
P 5975 6625
F 0 "R?" H 5906 6579 50  0000 R CNN
F 1 "100K" H 5906 6670 50  0000 R CNN
F 2 "" V 5905 6625 50  0001 C CNN
F 3 "~" H 5975 6625 50  0001 C CNN
	1    5975 6625
	1    0    0    1   
$EndComp
Wire Wire Line
	5850 6450 5975 6450
Connection ~ 6125 6450
Wire Wire Line
	5975 6475 5975 6450
Connection ~ 5975 6450
Wire Wire Line
	5975 6450 6125 6450
Wire Wire Line
	5975 6775 5975 6800
Wire Wire Line
	5975 6800 6125 6800
Connection ~ 6125 6800
Wire Wire Line
	6100 6250 6425 6250
Wire Wire Line
	5800 6300 5975 6300
Wire Wire Line
	5975 6300 5975 6450
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5EE39018
P 7450 2575
AR Path="/5CA4C891/5EE39018" Ref="Q?"  Part="1" 
AR Path="/5EE39018" Ref="Q?"  Part="1" 
F 0 "Q?" H 7656 2621 50  0000 L CNN
F 1 "2N7002NXAK" H 7656 2530 50  0000 L CNN
F 2 "" H 7650 2675 50  0001 C CNN
F 3 "~" H 7450 2575 50  0001 C CNN
	1    7450 2575
	-1   0    0    -1  
$EndComp
Connection ~ 7350 2025
Wire Wire Line
	7350 2025 7400 2025
$Comp
L power:GND #PWR?
U 1 1 5EE49A97
P 7350 2925
F 0 "#PWR?" H 7350 2675 50  0001 C CNN
F 1 "GND" H 7355 2752 50  0000 C CNN
F 2 "" H 7350 2925 50  0001 C CNN
F 3 "" H 7350 2925 50  0001 C CNN
	1    7350 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2925 7350 2900
$Comp
L Device:D_Zener D?
U 1 1 5EE8B880
P 7850 2750
F 0 "D?" V 7825 2550 50  0000 C CNN
F 1 "10V-16V" V 7900 2525 50  0000 C CNN
F 2 "" H 7850 2750 50  0001 C CNN
F 3 "~" H 7850 2750 50  0001 C CNN
	1    7850 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 2900 7350 2900
Connection ~ 7350 2900
Wire Wire Line
	7350 2900 7350 2775
Wire Wire Line
	7850 2600 7850 2575
Wire Wire Line
	7850 2575 7650 2575
$Comp
L Device:R R?
U 1 1 5EEB3138
P 8025 2750
F 0 "R?" H 8095 2796 50  0000 L CNN
F 1 "100K" H 8095 2705 50  0000 L CNN
F 2 "" V 7955 2750 50  0001 C CNN
F 3 "~" H 8025 2750 50  0001 C CNN
	1    8025 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8025 2600 8025 2575
Wire Wire Line
	8025 2575 7850 2575
Connection ~ 7850 2575
Wire Wire Line
	7850 2900 8025 2900
Connection ~ 7850 2900
$Comp
L Device:R R?
U 1 1 5EED09A6
P 8200 2575
F 0 "R?" V 7993 2575 50  0000 C CNN
F 1 "10K" V 8084 2575 50  0000 C CNN
F 2 "" V 8130 2575 50  0001 C CNN
F 3 "~" H 8200 2575 50  0001 C CNN
	1    8200 2575
	0    1    1    0   
$EndComp
Wire Wire Line
	8425 2575 8350 2575
Wire Wire Line
	8050 2575 8025 2575
Connection ~ 8025 2575
Wire Wire Line
	7350 2025 7350 2075
Wire Wire Line
	6050 4450 6050 3400
Wire Wire Line
	6050 3400 9100 3400
Connection ~ 6050 4450
Wire Wire Line
	9100 2675 9025 2675
Text GLabel 9225 2475 2    50   UnSpc ~ 0
Vset
$Comp
L Device:R R?
U 1 1 5EF8E614
P 9400 2975
F 0 "R?" V 9193 2975 50  0000 C CNN
F 1 "100K" V 9284 2975 50  0000 C CNN
F 2 "" V 9330 2975 50  0001 C CNN
F 3 "~" H 9400 2975 50  0001 C CNN
	1    9400 2975
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EF8F62E
P 9700 2975
F 0 "R?" V 9493 2975 50  0000 C CNN
F 1 "100K" V 9584 2975 50  0000 C CNN
F 2 "" V 9630 2975 50  0001 C CNN
F 3 "~" H 9700 2975 50  0001 C CNN
	1    9700 2975
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 2975 9100 2975
Wire Wire Line
	9100 2975 9100 2675
$Comp
L Device:R R?
U 1 1 5EF9DA74
P 9100 3200
F 0 "R?" H 9170 3246 50  0000 L CNN
F 1 "1K" H 9170 3155 50  0000 L CNN
F 2 "" V 9030 3200 50  0001 C CNN
F 3 "~" H 9100 3200 50  0001 C CNN
	1    9100 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3050 9100 2975
Connection ~ 9100 2975
Wire Wire Line
	9100 3400 9100 3350
Wire Wire Line
	9850 2975 9900 2975
Wire Wire Line
	9900 2975 9900 3025
$Comp
L power:GND #PWR?
U 1 1 5EFC8A0B
P 9900 3025
F 0 "#PWR?" H 9900 2775 50  0001 C CNN
F 1 "GND" H 9905 2852 50  0000 C CNN
F 2 "" H 9900 3025 50  0001 C CNN
F 3 "" H 9900 3025 50  0001 C CNN
	1    9900 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	9225 2475 9025 2475
$Comp
L Device:R R?
U 1 1 5EFD9022
P 7350 2225
F 0 "R?" H 7420 2271 50  0000 L CNN
F 1 "1K" H 7420 2180 50  0000 L CNN
F 2 "" V 7280 2225 50  0001 C CNN
F 3 "~" H 7350 2225 50  0001 C CNN
	1    7350 2225
	1    0    0    -1  
$EndComp
$EndSCHEMATC
