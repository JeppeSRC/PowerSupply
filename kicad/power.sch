EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	825  1100 1200 1100
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F7AF148
P 1200 1000
AR Path="/5F3D442D/5F7AF148" Ref="#FLG?"  Part="1" 
AR Path="/5F7AF148" Ref="#FLG?"  Part="1" 
AR Path="/5F79B199/5F7AF148" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 1200 1075 50  0001 C CNN
F 1 "PWR_FLAG" V 1200 1128 50  0000 L CNN
F 2 "" H 1200 1000 50  0001 C CNN
F 3 "~" H 1200 1000 50  0001 C CNN
	1    1200 1000
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F7AF14F
P 1200 1100
AR Path="/5F3D442D/5F7AF14F" Ref="#FLG?"  Part="1" 
AR Path="/5F7AF14F" Ref="#FLG?"  Part="1" 
AR Path="/5F79B199/5F7AF14F" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 1200 1175 50  0001 C CNN
F 1 "PWR_FLAG" V 1200 1228 50  0000 L CNN
F 2 "" H 1200 1100 50  0001 C CNN
F 3 "~" H 1200 1100 50  0001 C CNN
	1    1200 1100
	0    1    1    0   
$EndComp
Wire Notes Line width 10
	1750 625  1750 1425
Wire Notes Line width 10
	1750 1425 525  1425
Wire Notes Line width 10
	525  1425 525  625 
Wire Notes Line width 10
	525  625  1750 625 
Text Notes 525  600  0    50   ~ 10
Connector
Wire Notes Line width 10
	4825 625  4825 2875
Wire Notes Line width 10
	1850 2875 1850 625 
Text Notes 1875 725  0    50   ~ 10
12V Regulator @ 1.5A Max
Wire Notes Line width 10
	1850 2875 4825 2875
Wire Notes Line
	4825 2875 4825 2850
Wire Notes Line width 10
	4825 625  1850 625 
$Comp
L symbols:AP64352 U?
U 1 1 5F759666
P 2975 1725
F 0 "U?" H 2975 2290 50  0000 C CNN
F 1 "AP64352" H 2975 2199 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.41x3.3mm_ThermalVias" H 4575 2625 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP64352.pdf" H 4575 2625 50  0001 C CNN
F 4 "AP64352" H 2975 1725 50  0001 C CNN "MPN"
	1    2975 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	2575 1425 2575 1625
$Comp
L power:GND #PWR?
U 1 1 5F75A97A
P 2975 2225
F 0 "#PWR?" H 2975 1975 50  0001 C CNN
F 1 "GND" H 2980 2052 50  0000 C CNN
F 2 "" H 2975 2225 50  0001 C CNN
F 3 "" H 2975 2225 50  0001 C CNN
	1    2975 2225
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F75B474
P 3500 1525
F 0 "C?" H 3592 1571 50  0000 L CNN
F 1 "100nF" H 3592 1480 50  0000 L CNN
F 2 "" H 3500 1525 50  0001 C CNN
F 3 "~" H 3500 1525 50  0001 C CNN
	1    3500 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 1425 3500 1425
Wire Wire Line
	3375 1625 3500 1625
$Comp
L power:VDD #PWR?
U 1 1 5F75BF28
P 2275 1425
AR Path="/5F3D442D/5F75BF28" Ref="#PWR?"  Part="1" 
AR Path="/5F75BF28" Ref="#PWR?"  Part="1" 
AR Path="/5F79B199/5F75BF28" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2275 1275 50  0001 C CNN
F 1 "VDD" H 2292 1598 50  0000 C CNN
F 2 "" H 2275 1425 50  0001 C CNN
F 3 "" H 2275 1425 50  0001 C CNN
	1    2275 1425
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5F75D0A8
P 2275 1525
F 0 "C?" H 2075 1575 50  0000 L CNN
F 1 "220µF" H 1950 1500 50  0000 L CNN
F 2 "" H 2275 1525 50  0001 C CNN
F 3 "~" H 2275 1525 50  0001 C CNN
	1    2275 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 1425 2425 1425
Connection ~ 2575 1425
$Comp
L power:GND #PWR?
U 1 1 5F75ED75
P 2275 1625
F 0 "#PWR?" H 2275 1375 50  0001 C CNN
F 1 "GND" H 2280 1452 50  0000 C CNN
F 2 "" H 2275 1625 50  0001 C CNN
F 3 "" H 2275 1625 50  0001 C CNN
	1    2275 1625
	1    0    0    -1  
$EndComp
Connection ~ 2275 1425
$Comp
L Device:L_Small L?
U 1 1 5F760236
P 3975 1375
F 0 "L?" H 4160 1375 50  0000 C CNN
F 1 "10µH" V 4069 1375 50  0000 C CNN
F 2 "" H 3975 1375 50  0001 C CNN
F 3 "~" H 3975 1375 50  0001 C CNN
	1    3975 1375
	-1   0    0    1   
$EndComp
Connection ~ 3500 1625
$Comp
L Device:R_Small R?
U 1 1 5F750889
P 2425 2200
F 0 "R?" H 2484 2246 50  0000 L CNN
F 1 "100k" H 2484 2155 50  0000 L CNN
F 2 "" H 2425 2200 50  0001 C CNN
F 3 "~" H 2425 2200 50  0001 C CNN
	1    2425 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2575 2025 2425 2025
Wire Wire Line
	2425 2025 2425 2100
$Comp
L Device:R_Small R?
U 1 1 5F75156A
P 2275 2450
F 0 "R?" H 2334 2496 50  0000 L CNN
F 1 "100k" H 2334 2405 50  0000 L CNN
F 2 "" H 2275 2450 50  0001 C CNN
F 3 "~" H 2275 2450 50  0001 C CNN
	1    2275 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F751ACA
P 2575 2450
F 0 "R?" H 2634 2496 50  0000 L CNN
F 1 "100k" H 2634 2405 50  0000 L CNN
F 2 "" H 2575 2450 50  0001 C CNN
F 3 "~" H 2575 2450 50  0001 C CNN
	1    2575 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2575 2350 2575 2325
Wire Wire Line
	2575 2325 2425 2325
Wire Wire Line
	2425 2325 2425 2300
Wire Wire Line
	2425 2325 2275 2325
Wire Wire Line
	2275 2325 2275 2350
Connection ~ 2425 2325
$Comp
L power:GND #PWR?
U 1 1 5F752932
P 2425 2550
F 0 "#PWR?" H 2425 2300 50  0001 C CNN
F 1 "GND" H 2430 2377 50  0000 C CNN
F 2 "" H 2425 2550 50  0001 C CNN
F 3 "" H 2425 2550 50  0001 C CNN
	1    2425 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2425 2550 2575 2550
Wire Wire Line
	2425 2550 2275 2550
Connection ~ 2425 2550
Wire Wire Line
	3975 1625 3975 1475
Wire Wire Line
	3500 1625 3975 1625
Wire Wire Line
	3975 1275 3975 1175
$Comp
L Device:CP_Small C?
U 1 1 5F7581EE
P 4325 1325
F 0 "C?" H 4125 1375 50  0000 L CNN
F 1 "220µF" H 4000 1300 50  0000 L CNN
F 2 "" H 4325 1325 50  0001 C CNN
F 3 "~" H 4325 1325 50  0001 C CNN
	1    4325 1325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 1225 4325 1175
Wire Wire Line
	3975 1175 4325 1175
$Comp
L Device:C_Small C?
U 1 1 5F7596ED
P 4325 1075
F 0 "C?" H 4417 1121 50  0000 L CNN
F 1 "100nF" H 4417 1030 50  0000 L CNN
F 2 "" H 4325 1075 50  0001 C CNN
F 3 "~" H 4325 1075 50  0001 C CNN
	1    4325 1075
	1    0    0    -1  
$EndComp
Connection ~ 4325 1175
$Comp
L power:GND #PWR?
U 1 1 5F759FC7
P 4325 1425
F 0 "#PWR?" H 4325 1175 50  0001 C CNN
F 1 "GND" H 4330 1252 50  0000 C CNN
F 2 "" H 4325 1425 50  0001 C CNN
F 3 "" H 4325 1425 50  0001 C CNN
	1    4325 1425
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F75A5F1
P 4325 975
F 0 "#PWR?" H 4325 725 50  0001 C CNN
F 1 "GND" H 4330 802 50  0000 C CNN
F 2 "" H 4325 975 50  0001 C CNN
F 3 "" H 4325 975 50  0001 C CNN
	1    4325 975 
	-1   0    0    1   
$EndComp
Wire Wire Line
	4325 1175 4725 1175
$Comp
L power:+12V #PWR?
U 1 1 5F75B61B
P 4725 1175
F 0 "#PWR?" H 4725 1025 50  0001 C CNN
F 1 "+12V" H 4740 1348 50  0000 C CNN
F 2 "" H 4725 1175 50  0001 C CNN
F 3 "" H 4725 1175 50  0001 C CNN
	1    4725 1175
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F75C8C7
P 4725 1275
F 0 "R?" H 4667 1229 50  0000 R CNN
F 1 "100k" H 4667 1320 50  0000 R CNN
F 2 "" H 4725 1275 50  0001 C CNN
F 3 "~" H 4725 1275 50  0001 C CNN
	1    4725 1275
	1    0    0    1   
$EndComp
Connection ~ 4725 1175
$Comp
L Device:R_Small R?
U 1 1 5F75DFEF
P 4725 1475
F 0 "R?" H 4667 1429 50  0000 R CNN
F 1 "100k" H 4667 1520 50  0000 R CNN
F 2 "" H 4725 1475 50  0001 C CNN
F 3 "~" H 4725 1475 50  0001 C CNN
	1    4725 1475
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F75E2C6
P 4725 1675
F 0 "R?" H 4667 1629 50  0000 R CNN
F 1 "100k" H 4667 1720 50  0000 R CNN
F 2 "" H 4725 1675 50  0001 C CNN
F 3 "~" H 4725 1675 50  0001 C CNN
	1    4725 1675
	1    0    0    1   
$EndComp
Wire Wire Line
	4725 1775 4725 1825
Wire Wire Line
	4725 1825 4525 1825
$Comp
L Device:C_Small C?
U 1 1 5F75FA92
P 3450 2175
F 0 "C?" H 3542 2221 50  0000 L CNN
F 1 "100nF" H 3542 2130 50  0000 L CNN
F 2 "" H 3450 2175 50  0001 C CNN
F 3 "~" H 3450 2175 50  0001 C CNN
	1    3450 2175
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2075 3450 2025
Wire Wire Line
	3450 2025 3375 2025
$Comp
L power:GND #PWR?
U 1 1 5F7606EF
P 3450 2275
F 0 "#PWR?" H 3450 2025 50  0001 C CNN
F 1 "GND" H 3455 2102 50  0000 C CNN
F 2 "" H 3450 2275 50  0001 C CNN
F 3 "" H 3450 2275 50  0001 C CNN
	1    3450 2275
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F760C42
P 4100 1950
F 0 "R?" H 4041 1904 50  0000 R CNN
F 1 "10k" H 4041 1995 50  0000 R CNN
F 2 "" H 4100 1950 50  0001 C CNN
F 3 "~" H 4100 1950 50  0001 C CNN
	1    4100 1950
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F7615A4
P 4100 2150
F 0 "R?" H 4041 2104 50  0000 R CNN
F 1 "10k" H 4041 2195 50  0000 R CNN
F 2 "" H 4100 2150 50  0001 C CNN
F 3 "~" H 4100 2150 50  0001 C CNN
	1    4100 2150
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F761C20
P 4425 1825
F 0 "R?" V 4500 1825 50  0000 C CNN
F 1 "10k" V 4575 1825 50  0000 C CNN
F 2 "" H 4425 1825 50  0001 C CNN
F 3 "~" H 4425 1825 50  0001 C CNN
	1    4425 1825
	0    1    1    0   
$EndComp
Wire Wire Line
	4325 1825 4100 1825
$Comp
L Device:R_Small R?
U 1 1 5F762F1D
P 4100 2350
F 0 "R?" H 4042 2304 50  0000 R CNN
F 1 "1k" H 4042 2395 50  0000 R CNN
F 2 "" H 4100 2350 50  0001 C CNN
F 3 "~" H 4100 2350 50  0001 C CNN
	1    4100 2350
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F763590
P 4100 2550
F 0 "R?" H 4042 2504 50  0000 R CNN
F 1 "1k" H 4042 2595 50  0000 R CNN
F 2 "" H 4100 2550 50  0001 C CNN
F 3 "~" H 4100 2550 50  0001 C CNN
	1    4100 2550
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F76393D
P 4100 2650
F 0 "#PWR?" H 4100 2400 50  0001 C CNN
F 1 "GND" H 4105 2477 50  0000 C CNN
F 2 "" H 4100 2650 50  0001 C CNN
F 3 "" H 4100 2650 50  0001 C CNN
	1    4100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1850 4100 1825
Connection ~ 4100 1825
Wire Wire Line
	4100 1825 3375 1825
Text Notes 1900 2200 0    50   ~ 0
1MHz/100k
$Comp
L Connector:TestPoint TP?
U 1 1 5F766860
P 2425 1175
F 0 "TP?" H 2483 1293 50  0000 L CNN
F 1 "12V Vin" H 2483 1202 50  0000 L CNN
F 2 "" H 2625 1175 50  0001 C CNN
F 3 "~" H 2625 1175 50  0001 C CNN
	1    2425 1175
	1    0    0    -1  
$EndComp
Wire Wire Line
	2425 1175 2425 1425
Connection ~ 2425 1425
Wire Wire Line
	2425 1425 2575 1425
$Comp
L Connector:TestPoint TP?
U 1 1 5F768C6F
P 3975 1150
F 0 "TP?" H 3917 1268 50  0000 R CNN
F 1 "12V" H 3917 1177 50  0000 R CNN
F 2 "" H 4175 1150 50  0001 C CNN
F 3 "~" H 4175 1150 50  0001 C CNN
	1    3975 1150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3975 1175 3975 1150
Connection ~ 3975 1175
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5F76CCB9
P 625 1000
F 0 "J?" H 733 1181 50  0000 C CNN
F 1 "L" H 733 1090 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 625 1000 50  0001 C CNN
F 3 "~" H 625 1000 50  0001 C CNN
	1    625  1000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5F76D673
P 625 1100
F 0 "J?" H 775 1225 50  0000 R CNN
F 1 "N" H 750 1150 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 625 1100 50  0001 C CNN
F 3 "~" H 625 1100 50  0001 C CNN
	1    625  1100
	1    0    0    1   
$EndComp
Wire Wire Line
	825  1000 1200 1000
Text Label 875  1000 0    50   ~ 0
Line
Text Label 875  1100 0    50   ~ 0
Neutral
Wire Wire Line
	7000 1675 7000 1600
Text Label 7000 1600 0    50   ~ 0
Line
Wire Wire Line
	7000 1600 7150 1600
Wire Wire Line
	7000 2275 7000 2375
Text Label 7000 2375 0    50   ~ 0
Neutral
Wire Wire Line
	7000 2375 7275 2375
$Comp
L power:GND #PWR?
U 1 1 5F77ED46
P 6575 2075
F 0 "#PWR?" H 6575 1825 50  0001 C CNN
F 1 "GND" H 6580 1902 50  0000 C CNN
F 2 "" H 6575 2075 50  0001 C CNN
F 3 "" H 6575 2075 50  0001 C CNN
	1    6575 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1975 6575 1975
Wire Wire Line
	6575 1975 6575 2075
Wire Wire Line
	7300 1975 7475 1975
$Comp
L power:VDD #PWR?
U 1 1 5F780DF2
P 8275 1975
F 0 "#PWR?" H 8275 1825 50  0001 C CNN
F 1 "VDD" H 8290 2148 50  0000 C CNN
F 2 "" H 8275 1975 50  0001 C CNN
F 3 "" H 8275 1975 50  0001 C CNN
	1    8275 1975
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5F78214D
P 7475 2075
F 0 "C?" H 7563 2121 50  0000 L CNN
F 1 "CP_Small" H 7563 2030 50  0000 L CNN
F 2 "" H 7475 2075 50  0001 C CNN
F 3 "~" H 7475 2075 50  0001 C CNN
	1    7475 2075
	1    0    0    -1  
$EndComp
Connection ~ 7475 1975
Wire Wire Line
	7475 1975 8275 1975
$Comp
L Diode_Bridge:GBU6M D?
U 1 1 5F783487
P 7000 1975
F 0 "D?" H 7100 2150 50  0000 L CNN
F 1 "GBU6M" H 7075 1775 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_Vishay_GBU" H 7150 2100 50  0001 L CNN
F 3 "http://www.vishay.com/docs/88656/gbu6a.pdf" H 7000 1975 50  0001 C CNN
	1    7000 1975
	1    0    0    -1  
$EndComp
$EndSCHEMATC
