EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
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
L power:VDD #PWR?
U 1 1 5CA02FAB
P 1575 800
F 0 "#PWR?" H 1575 650 50  0001 C CNN
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
L power:VDD #PWR?
U 1 1 5CA2E77F
P 3325 800
F 0 "#PWR?" H 3325 650 50  0001 C CNN
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
L power:GNDA #PWR?
U 1 1 5D80A7D5
P 3325 1300
F 0 "#PWR?" H 3325 1050 50  0001 C CNN
F 1 "GNDA" H 3330 1127 50  0000 C CNN
F 2 "" H 3325 1300 50  0001 C CNN
F 3 "" H 3325 1300 50  0001 C CNN
	1    3325 1300
	1    0    0    -1  
$EndComp
Connection ~ 3325 1300
$Comp
L power:GNDA #PWR?
U 1 1 5D80B3C5
P 1575 1300
F 0 "#PWR?" H 1575 1050 50  0001 C CNN
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
P 2525 -1125
F 0 "U?" H 2625 -875 50  0000 L CNN
F 1 "OPA4196" H 2625 -975 50  0000 L CNN
F 2 "" H 2525 -1125 50  0001 C CNN
F 3 "" H 2625 -825 50  0001 C CNN
F 4 "OPA4196IDR" H 2525 -1125 50  0001 C CNN "MPN"
	5    2525 -1125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2925 -1125 2925 -825
Wire Wire Line
	2925 -825 2325 -825
Wire Wire Line
	2325 -825 2325 -1025
$Comp
L power:GNDA #PWR?
U 1 1 5DB4A32D
P 2325 -1225
F 0 "#PWR?" H 2325 -1475 50  0001 C CNN
F 1 "GNDA" H 2330 -1398 50  0000 C CNN
F 2 "" H 2325 -1225 50  0001 C CNN
F 3 "" H 2325 -1225 50  0001 C CNN
	1    2325 -1225
	0    1    1    0   
$EndComp
$Comp
L symbols:OPA4196 U?
U 4 1 5E9434AD
P 3450 -1125
F 0 "U?" H 3550 -875 50  0000 L CNN
F 1 "OPA4196" H 3550 -975 50  0000 L CNN
F 2 "" H 3450 -1125 50  0001 C CNN
F 3 "" H 3550 -825 50  0001 C CNN
F 4 "OPA4196IDR" H 3450 -1125 50  0001 C CNN "MPN"
	4    3450 -1125
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 -1125 3850 -825
Wire Wire Line
	3850 -825 3250 -825
Wire Wire Line
	3250 -825 3250 -1025
$Comp
L power:GNDA #PWR?
U 1 1 5E9434B6
P 3250 -1225
F 0 "#PWR?" H 3250 -1475 50  0001 C CNN
F 1 "GNDA" H 3255 -1398 50  0000 C CNN
F 2 "" H 3250 -1225 50  0001 C CNN
F 3 "" H 3250 -1225 50  0001 C CNN
	1    3250 -1225
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA892B1
P 3800 2025
AR Path="/5EA892B1" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892B1" Ref="R?"  Part="1" 
F 0 "R?" V 3750 1825 50  0000 C CNN
F 1 "0R5" V 3750 2225 50  0000 C CNN
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
AR Path="/5EA89332" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 2425 50  0001 C CNN
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
AR Path="/5EA89338" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3950 3875 50  0001 C CNN
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
AR Path="/5EA8934E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2850 1975 50  0001 C CNN
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
AR Path="/5EAA874D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5850 1975 50  0001 C CNN
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
AR Path="/5EAA8753" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 1975 50  0001 C CNN
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
	6900 2025 7400 2025
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
AR Path="/5EAA87A4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6400 1575 50  0001 C CNN
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
	4850 7500 4850 7350
Connection ~ 4850 7350
Wire Wire Line
	4850 7350 4900 7350
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
P 5100 7250
AR Path="/5CA4C891/5EABE726" Ref="U?"  Part="3" 
AR Path="/5EABE726" Ref="U?"  Part="3" 
F 0 "U?" H 5225 7615 50  0000 C CNN
F 1 "OPA4196" H 5225 7524 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5100 7250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 5200 7550 50  0001 C CNN
F 4 "OPA4196IDR" H 5100 7250 50  0001 C CNN "MPN"
	3    5100 7250
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
P 4850 7500
AR Path="/5CA4C891/5EABE76F" Ref="TP?"  Part="1" 
AR Path="/5EABE76F" Ref="TP?"  Part="1" 
F 0 "TP?" H 4792 7526 50  0000 R CNN
F 1 "Iset" H 4792 7617 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5050 7500 50  0001 C CNN
F 3 "~" H 5050 7500 50  0001 C CNN
	1    4850 7500
	-1   0    0    1   
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5EABE776
P 6800 5050
AR Path="/5CA4C891/5EABE776" Ref="#PWR?"  Part="1" 
AR Path="/5EABE776" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6800 4800 50  0001 C CNN
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
F 1 "10K" V 6184 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6230 6050 50  0001 C CNN
F 3 "CRCW080510K0FKEAC" H 6300 6050 50  0001 C CNN
	1    6300 6050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EABE78F
P 5575 6650
AR Path="/5CA4C891/5EABE78F" Ref="R?"  Part="1" 
AR Path="/5EABE78F" Ref="R?"  Part="1" 
F 0 "R?" H 5645 6696 50  0000 L CNN
F 1 "?" H 5645 6605 50  0000 L CNN
F 2 "" V 5505 6650 50  0001 C CNN
F 3 "~" H 5575 6650 50  0001 C CNN
	1    5575 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6325 6650 6325 6800
$Comp
L power:GNDA #PWR?
U 1 1 5EABE79A
P 6325 6800
AR Path="/5CA4C891/5EABE79A" Ref="#PWR?"  Part="1" 
AR Path="/5EABE79A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6325 6550 50  0001 C CNN
F 1 "GNDA" H 6330 6627 50  0000 C CNN
F 2 "" H 6325 6800 50  0001 C CNN
F 3 "" H 6325 6800 50  0001 C CNN
	1    6325 6800
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
L power:VDD #PWR?
U 1 1 5EBC7CA4
P 2400 2025
F 0 "#PWR?" H 2400 1875 50  0001 C CNN
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
	4575 7350 4850 7350
Wire Wire Line
	6550 6050 6775 6050
Connection ~ 6550 6050
Wire Wire Line
	3650 3500 3650 3625
Wire Wire Line
	4900 6050 4900 7150
Wire Wire Line
	6050 6050 6100 6050
Wire Wire Line
	6325 6250 6100 6250
Wire Wire Line
	6100 6250 6100 6050
Connection ~ 6100 6050
Wire Wire Line
	6100 6050 6150 6050
Wire Wire Line
	5575 6450 5575 6500
Wire Wire Line
	5575 6450 5925 6450
$Comp
L Device:C_Small C?
U 1 1 5FFC0F1E
P 5925 6625
F 0 "C?" H 6017 6671 50  0000 L CNN
F 1 "?" H 6017 6580 50  0000 L CNN
F 2 "" H 5925 6625 50  0001 C CNN
F 3 "~" H 5925 6625 50  0001 C CNN
	1    5925 6625
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 6525 5925 6450
Connection ~ 5925 6450
Wire Wire Line
	5925 6450 6025 6450
Wire Wire Line
	5925 6725 5925 6800
Wire Wire Line
	5925 6800 6325 6800
Connection ~ 6325 6800
$Comp
L Device:R R?
U 1 1 600595C9
P 5575 6950
AR Path="/5CA4C891/600595C9" Ref="R?"  Part="1" 
AR Path="/600595C9" Ref="R?"  Part="1" 
F 0 "R?" H 5645 6996 50  0000 L CNN
F 1 "?" H 5645 6905 50  0000 L CNN
F 2 "" V 5505 6950 50  0001 C CNN
F 3 "~" H 5575 6950 50  0001 C CNN
	1    5575 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5575 7100 5575 7250
Wire Wire Line
	5575 7250 5500 7250
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
L power:GNDA #PWR?
U 1 1 6026B660
P 5225 6300
F 0 "#PWR?" H 5225 6050 50  0001 C CNN
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
	4900 6050 4550 6050
Wire Wire Line
	4550 6050 4550 4400
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
	5925 6450 5925 6300
Wire Wire Line
	5925 6300 5800 6300
Wire Wire Line
	5500 6300 5225 6300
Wire Wire Line
	5225 6300 5225 6275
Connection ~ 5225 6300
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5EABE787
P 6225 6450
AR Path="/5CA4C891/5EABE787" Ref="Q?"  Part="1" 
AR Path="/5EABE787" Ref="Q?"  Part="1" 
F 0 "Q?" H 6431 6496 50  0000 L CNN
F 1 "2N7002NXAK" H 6431 6405 50  0000 L CNN
F 2 "" H 6425 6550 50  0001 C CNN
F 3 "~" H 6225 6450 50  0001 C CNN
	1    6225 6450
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
S -2275 5025 1050 900 
U 5F1751CC
F0 "MCU" 50
F1 "MCU.sch" 50
$EndSheet
$Sheet
S -1750 3250 825  700 
U 5F3D442D
F0 "Power" 50
F1 "Power.sch" 50
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
Text GLabel 4575 7350 0    50   UnSpc ~ 0
Iset
Text GLabel 6775 6050 2    50   UnSpc ~ 0
Vset
Text GLabel 7125 4350 2    50   UnSpc ~ 0
Vread
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5EB2B36B
P 6225 7300
AR Path="/5CA4C891/5EB2B36B" Ref="Q?"  Part="1" 
AR Path="/5EB2B36B" Ref="Q?"  Part="1" 
F 0 "Q?" H 6431 7346 50  0000 L CNN
F 1 "2N7002NXAK" H 6431 7255 50  0000 L CNN
F 2 "" H 6425 7400 50  0001 C CNN
F 3 "~" H 6225 7300 50  0001 C CNN
	1    6225 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB2CD20
P 5875 7300
F 0 "R?" V 5668 7300 50  0000 C CNN
F 1 "10K" V 5759 7300 50  0000 C CNN
F 2 "" V 5805 7300 50  0001 C CNN
F 3 "~" H 5875 7300 50  0001 C CNN
	1    5875 7300
	0    1    1    0   
$EndComp
Wire Wire Line
	5725 7300 5575 7300
Wire Wire Line
	5575 7300 5575 7250
Connection ~ 5575 7250
$Comp
L power:GND #PWR?
U 1 1 5EB3377E
P 6325 7575
F 0 "#PWR?" H 6325 7325 50  0001 C CNN
F 1 "GND" H 6330 7402 50  0000 C CNN
F 2 "" H 6325 7575 50  0001 C CNN
F 3 "" H 6325 7575 50  0001 C CNN
	1    6325 7575
	1    0    0    -1  
$EndComp
Text GLabel 6550 7100 2    50   UnSpc ~ 0
CLIMIT
Wire Wire Line
	6550 7100 6325 7100
$Comp
L Device:D_Zener D?
U 1 1 5EB3B310
P 6025 7450
F 0 "D?" V 6000 7250 50  0000 C CNN
F 1 "10V-16V" V 6075 7225 50  0000 C CNN
F 2 "" H 6025 7450 50  0001 C CNN
F 3 "~" H 6025 7450 50  0001 C CNN
	1    6025 7450
	0    1    1    0   
$EndComp
Connection ~ 6025 7300
Wire Wire Line
	6025 7600 6125 7600
Wire Wire Line
	6125 7600 6125 7575
Wire Wire Line
	6125 7575 6325 7575
Wire Wire Line
	6325 7500 6325 7575
Connection ~ 6325 7575
$Comp
L symbols:LM317 U?
U 1 1 5EB5170E
P 1650 6625
AR Path="/5EB5170E" Ref="U?"  Part="1" 
AR Path="/5F3D442D/5EB5170E" Ref="U?"  Part="1" 
F 0 "U?" H 1650 6890 50  0000 C CNN
F 1 "LM317" H 1650 6799 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1650 7125 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/LM317M-D-1810713.pdf" H 1650 6625 50  0001 C CNN
	1    1650 6625
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 6625 1075 6625
Connection ~ 1075 6625
Wire Wire Line
	1075 6625 925  6625
$Comp
L power:VDD #PWR?
U 1 1 5EB51717
P 925 6625
AR Path="/5EB51717" Ref="#PWR?"  Part="1" 
AR Path="/5F3D442D/5EB51717" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 925 6475 50  0001 C CNN
F 1 "VDD" H 942 6798 50  0000 C CNN
F 2 "" H 925 6625 50  0001 C CNN
F 3 "" H 925 6625 50  0001 C CNN
	1    925  6625
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB5171E
P 1075 6725
AR Path="/5EB5171E" Ref="C?"  Part="1" 
AR Path="/5F3D442D/5EB5171E" Ref="C?"  Part="1" 
F 0 "C?" H 1167 6771 50  0000 L CNN
F 1 "100nF" H 1167 6680 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1075 6725 50  0001 C CNN
F 3 "~" H 1075 6725 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 1075 6725 50  0001 C CNN "MPN"
	1    1075 6725
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB51724
P 1850 7150
AR Path="/5EB51724" Ref="R?"  Part="1" 
AR Path="/5F3D442D/5EB51724" Ref="R?"  Part="1" 
F 0 "R?" V 1750 7150 50  0000 C CNN
F 1 "1K" V 1850 7150 50  0000 C CNN
F 2 "" V 1780 7150 50  0001 C CNN
F 3 "~" H 1850 7150 50  0001 C CNN
	1    1850 7150
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB5172A
P 1650 7375
AR Path="/5EB5172A" Ref="R?"  Part="1" 
AR Path="/5F3D442D/5EB5172A" Ref="R?"  Part="1" 
F 0 "R?" H 1720 7421 50  0000 L CNN
F 1 "10K" H 1720 7330 50  0000 L CNN
F 2 "" V 1580 7375 50  0001 C CNN
F 3 "~" H 1650 7375 50  0001 C CNN
	1    1650 7375
	1    0    0    -1  
$EndComp
Wire Wire Line
	1075 7525 1075 6825
Connection ~ 1650 7525
$Comp
L Device:C_Small C?
U 1 1 5EB51732
P 1250 7375
AR Path="/5EB51732" Ref="C?"  Part="1" 
AR Path="/5F3D442D/5EB51732" Ref="C?"  Part="1" 
F 0 "C?" H 1342 7421 50  0000 L CNN
F 1 "1µF" H 1342 7330 50  0000 L CNN
F 2 "" H 1250 7375 50  0001 C CNN
F 3 "~" H 1250 7375 50  0001 C CNN
	1    1250 7375
	1    0    0    -1  
$EndComp
Wire Wire Line
	1075 7525 1250 7525
Wire Wire Line
	1250 7525 1250 7475
Connection ~ 1250 7525
Wire Wire Line
	1250 7525 1650 7525
$Comp
L Device:R R?
U 1 1 5EB5173C
P 2150 7150
AR Path="/5EB5173C" Ref="R?"  Part="1" 
AR Path="/5F3D442D/5EB5173C" Ref="R?"  Part="1" 
F 0 "R?" V 2050 7150 50  0000 C CNN
F 1 "100R" V 2150 7150 50  0000 C CNN
F 2 "" V 2080 7150 50  0001 C CNN
F 3 "~" H 2150 7150 50  0001 C CNN
	1    2150 7150
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB51742
P 2375 6800
AR Path="/5EB51742" Ref="R?"  Part="1" 
AR Path="/5F3D442D/5EB51742" Ref="R?"  Part="1" 
F 0 "R?" H 2445 6846 50  0000 L CNN
F 1 "100R" H 2445 6755 50  0000 L CNN
F 2 "" V 2305 6800 50  0001 C CNN
F 3 "~" H 2375 6800 50  0001 C CNN
	1    2375 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB51748
P 2700 6800
AR Path="/5EB51748" Ref="R?"  Part="1" 
AR Path="/5F3D442D/5EB51748" Ref="R?"  Part="1" 
F 0 "R?" H 2770 6846 50  0000 L CNN
F 1 "100R" H 2770 6755 50  0000 L CNN
F 2 "" V 2630 6800 50  0001 C CNN
F 3 "~" H 2700 6800 50  0001 C CNN
	1    2700 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6625 2700 6650
Wire Wire Line
	1950 6625 2050 6625
Wire Wire Line
	2375 6650 2375 6625
Connection ~ 2375 6625
Wire Wire Line
	2375 6625 2700 6625
Wire Wire Line
	2300 7150 2375 7150
Wire Wire Line
	2700 7150 2700 6950
Wire Wire Line
	2375 6950 2375 7150
Connection ~ 2375 7150
Wire Wire Line
	2375 7150 2700 7150
$Comp
L Device:CP_Small C?
U 1 1 5EB51758
P 3075 6825
AR Path="/5EB51758" Ref="C?"  Part="1" 
AR Path="/5F3D442D/5EB51758" Ref="C?"  Part="1" 
F 0 "C?" H 3163 6871 50  0000 L CNN
F 1 "22µF" H 3163 6780 50  0000 L CNN
F 2 "" H 3075 6825 50  0001 C CNN
F 3 "~" H 3075 6825 50  0001 C CNN
	1    3075 6825
	1    0    0    -1  
$EndComp
Wire Wire Line
	3075 6725 3075 6625
Wire Wire Line
	3075 6625 2700 6625
Connection ~ 2700 6625
$Comp
L Device:D_Schottky D?
U 1 1 5EB51761
P 1650 6225
AR Path="/5EB51761" Ref="D?"  Part="1" 
AR Path="/5F3D442D/5EB51761" Ref="D?"  Part="1" 
F 0 "D?" H 1650 6441 50  0000 C CNN
F 1 "SS16HE" H 1650 6350 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1650 6225 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/SS13HE-D-1814993.pdf" H 1650 6225 50  0001 C CNN
	1    1650 6225
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6225 1075 6225
Wire Wire Line
	1075 6225 1075 6625
Wire Wire Line
	1800 6225 2050 6225
Wire Wire Line
	2050 6225 2050 6625
Connection ~ 2050 6625
Wire Wire Line
	2050 6625 2200 6625
$Comp
L Device:D_Schottky D?
U 1 1 5EB5176D
P 2025 6925
AR Path="/5EB5176D" Ref="D?"  Part="1" 
AR Path="/5F3D442D/5EB5176D" Ref="D?"  Part="1" 
F 0 "D?" H 2025 6709 50  0000 C CNN
F 1 "SS16HE" H 2025 6800 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 2025 6925 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/SS13HE-D-1814993.pdf" H 2025 6925 50  0001 C CNN
	1    2025 6925
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 7225 1650 7150
Connection ~ 1650 7150
Wire Wire Line
	1250 7150 1650 7150
Wire Wire Line
	1250 7150 1250 7275
Wire Wire Line
	1700 7150 1650 7150
Wire Wire Line
	1875 6925 1650 6925
Wire Wire Line
	1650 6825 1650 6925
Connection ~ 1650 6925
Wire Wire Line
	1650 6925 1650 7150
Wire Wire Line
	2175 6925 2200 6925
Wire Wire Line
	2200 6925 2200 6625
Connection ~ 2200 6625
Wire Wire Line
	2200 6625 2375 6625
Wire Wire Line
	3075 6925 3075 7025
Wire Wire Line
	3075 7525 1650 7525
$Comp
L power:+12V #PWR?
U 1 1 5EB51782
P 3075 6625
AR Path="/5EB51782" Ref="#PWR?"  Part="1" 
AR Path="/5F3D442D/5EB51782" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3075 6475 50  0001 C CNN
F 1 "+12V" H 3090 6798 50  0000 C CNN
F 2 "" H 3075 6625 50  0001 C CNN
F 3 "" H 3075 6625 50  0001 C CNN
	1    3075 6625
	1    0    0    -1  
$EndComp
Connection ~ 3075 6625
$Comp
L Device:C_Small C?
U 1 1 5EB51789
P 3475 6825
AR Path="/5EB51789" Ref="C?"  Part="1" 
AR Path="/5F3D442D/5EB51789" Ref="C?"  Part="1" 
F 0 "C?" H 3567 6871 50  0000 L CNN
F 1 "1µF" H 3567 6780 50  0000 L CNN
F 2 "" H 3475 6825 50  0001 C CNN
F 3 "~" H 3475 6825 50  0001 C CNN
	1    3475 6825
	1    0    0    -1  
$EndComp
Wire Wire Line
	3475 6725 3475 6625
Wire Wire Line
	3475 6625 3075 6625
Wire Wire Line
	3475 6925 3475 7025
Wire Wire Line
	3475 7025 3075 7025
Connection ~ 3075 7025
Wire Wire Line
	3075 7025 3075 7525
$Comp
L power:GND #PWR?
U 1 1 5EB51795
P 1650 7525
AR Path="/5F3D442D/5EB51795" Ref="#PWR?"  Part="1" 
AR Path="/5EB51795" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1650 7275 50  0001 C CNN
F 1 "GND" H 1655 7352 50  0000 C CNN
F 2 "" H 1650 7525 50  0001 C CNN
F 3 "" H 1650 7525 50  0001 C CNN
	1    1650 7525
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 5375 1050 5375
Wire Wire Line
	1950 5375 2100 5375
Connection ~ 1050 5375
Wire Wire Line
	1050 5375 900  5375
Connection ~ 1650 5575
Connection ~ 2100 5375
Wire Wire Line
	2100 5375 2500 5375
Wire Wire Line
	2500 5375 2750 5375
Connection ~ 2500 5375
Wire Wire Line
	2500 5575 2100 5575
Connection ~ 2100 5575
Wire Wire Line
	2100 5575 1650 5575
$Comp
L power:VDD #PWR?
U 1 1 5EB5E92C
P 900 5375
AR Path="/5EB5E92C" Ref="#PWR?"  Part="1" 
AR Path="/5F3D442D/5EB5E92C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 900 5225 50  0001 C CNN
F 1 "VDD" H 917 5548 50  0000 C CNN
F 2 "" H 900 5375 50  0001 C CNN
F 3 "" H 900 5375 50  0001 C CNN
	1    900  5375
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5EB5E932
P 2750 5375
AR Path="/5EB5E932" Ref="#PWR?"  Part="1" 
AR Path="/5F3D442D/5EB5E932" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2750 5225 50  0001 C CNN
F 1 "+3V3" H 2765 5548 50  0000 C CNN
F 2 "" H 2750 5375 50  0001 C CNN
F 3 "" H 2750 5375 50  0001 C CNN
	1    2750 5375
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5575 1050 5575
$Comp
L symbols:LD1086 U?
U 1 1 5EB5E93A
P 1650 5375
AR Path="/5EB5E93A" Ref="U?"  Part="1" 
AR Path="/5F3D442D/5EB5E93A" Ref="U?"  Part="1" 
F 0 "U?" H 1650 5640 50  0000 C CNN
F 1 "LD1086D2T33" H 1650 5549 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 1650 5375 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/389/ld1086-974047.pdf" V 1650 5375 50  0001 C CNN
F 4 "LD1086D2T33TR" H 1650 5375 50  0001 C CNN "MPN"
	1    1650 5375
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB5E941
P 1050 5475
AR Path="/5EB5E941" Ref="C?"  Part="1" 
AR Path="/5F3D442D/5EB5E941" Ref="C?"  Part="1" 
F 0 "C?" H 1142 5521 50  0000 L CNN
F 1 "10µF" H 1142 5430 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1050 5475 50  0001 C CNN
F 3 "~" H 1050 5475 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 1050 5475 50  0001 C CNN "MPN"
	1    1050 5475
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB5E948
P 2100 5475
AR Path="/5EB5E948" Ref="C?"  Part="1" 
AR Path="/5F3D442D/5EB5E948" Ref="C?"  Part="1" 
F 0 "C?" H 2192 5521 50  0000 L CNN
F 1 "10µF" H 2192 5430 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2100 5475 50  0001 C CNN
F 3 "~" H 2100 5475 50  0001 C CNN
F 4 "EMK212BJ106KG-T" H 2100 5475 50  0001 C CNN "MPN"
	1    2100 5475
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB5E94F
P 2500 5475
AR Path="/5EB5E94F" Ref="C?"  Part="1" 
AR Path="/5F3D442D/5EB5E94F" Ref="C?"  Part="1" 
F 0 "C?" H 2592 5521 50  0000 L CNN
F 1 "100nF" H 2592 5430 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2500 5475 50  0001 C CNN
F 3 "~" H 2500 5475 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 2500 5475 50  0001 C CNN "MPN"
	1    2500 5475
	1    0    0    -1  
$EndComp
Wire Wire Line
	1775 5000 2100 5000
Wire Wire Line
	2100 5000 2100 5375
Wire Wire Line
	1475 5000 1050 5000
Wire Wire Line
	1050 5000 1050 5375
$Comp
L Device:D_Schottky D?
U 1 1 5EB5E959
P 1625 5000
AR Path="/5EB5E959" Ref="D?"  Part="1" 
AR Path="/5F3D442D/5EB5E959" Ref="D?"  Part="1" 
F 0 "D?" H 1625 5216 50  0000 C CNN
F 1 "SS16HE" H 1625 5125 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1625 5000 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/SS13HE-D-1814993.pdf" H 1625 5000 50  0001 C CNN
	1    1625 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB5E95F
P 1650 5575
AR Path="/5F3D442D/5EB5E95F" Ref="#PWR?"  Part="1" 
AR Path="/5EB5E95F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1650 5325 50  0001 C CNN
F 1 "GND" H 1655 5402 50  0000 C CNN
F 2 "" H 1650 5575 50  0001 C CNN
F 3 "" H 1650 5575 50  0001 C CNN
	1    1650 5575
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
F 0 "#PWR?" H 1100 1800 50  0001 C CNN
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
F 0 "#PWR?" H 1250 2000 50  0001 C CNN
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
F 0 "#FLG?" H 1100 2150 50  0001 C CNN
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
F 0 "#FLG?" H 1250 2250 50  0001 C CNN
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
$EndSCHEMATC
