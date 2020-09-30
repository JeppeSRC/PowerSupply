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
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5F7AF132
P 625 1100
AR Path="/5F7AF132" Ref="J?"  Part="1" 
AR Path="/5F3D442D/5F7AF132" Ref="J?"  Part="1" 
AR Path="/5F79B199/5F7AF132" Ref="J?"  Part="1" 
F 0 "J?" H 543 1417 50  0000 C CNN
F 1 "Terminal" H 543 1326 50  0000 C CNN
F 2 "footprints:20020316-GXXXXXXLF" H 625 1100 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/18/20020316-941859.pdf" H 625 1100 50  0001 C CNN
F 4 "20020316-G031B01LF" H 625 1100 50  0001 C CNN "MPN"
	1    625  1100
	-1   0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5F7AF138
P 1075 875
AR Path="/5F3D442D/5F7AF138" Ref="#PWR?"  Part="1" 
AR Path="/5F7AF138" Ref="#PWR?"  Part="1" 
AR Path="/5F79B199/5F7AF138" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1075 725 50  0001 C CNN
F 1 "VDD" H 1092 1048 50  0000 C CNN
F 2 "" H 1075 875 50  0001 C CNN
F 3 "" H 1075 875 50  0001 C CNN
	1    1075 875 
	1    0    0    -1  
$EndComp
Wire Wire Line
	825  1000 1075 1000
Wire Wire Line
	1075 1000 1075 875 
Wire Wire Line
	825  1100 1225 1100
Wire Wire Line
	1225 1100 1225 1175
$Comp
L power:GND #PWR?
U 1 1 5F7AF142
P 1225 1175
AR Path="/5F3D442D/5F7AF142" Ref="#PWR?"  Part="1" 
AR Path="/5F7AF142" Ref="#PWR?"  Part="1" 
AR Path="/5F79B199/5F7AF142" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1225 925 50  0001 C CNN
F 1 "GND" H 1230 1002 50  0000 C CNN
F 2 "" H 1225 1175 50  0001 C CNN
F 3 "" H 1225 1175 50  0001 C CNN
	1    1225 1175
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F7AF148
P 1075 1000
AR Path="/5F3D442D/5F7AF148" Ref="#FLG?"  Part="1" 
AR Path="/5F7AF148" Ref="#FLG?"  Part="1" 
AR Path="/5F79B199/5F7AF148" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 1075 1075 50  0001 C CNN
F 1 "PWR_FLAG" V 1075 1128 50  0000 L CNN
F 2 "" H 1075 1000 50  0001 C CNN
F 3 "~" H 1075 1000 50  0001 C CNN
	1    1075 1000
	0    1    1    0   
$EndComp
Connection ~ 1075 1000
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F7AF14F
P 1225 1100
AR Path="/5F3D442D/5F7AF14F" Ref="#FLG?"  Part="1" 
AR Path="/5F7AF14F" Ref="#FLG?"  Part="1" 
AR Path="/5F79B199/5F7AF14F" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 1225 1175 50  0001 C CNN
F 1 "PWR_FLAG" V 1225 1228 50  0000 L CNN
F 2 "" H 1225 1100 50  0001 C CNN
F 3 "~" H 1225 1100 50  0001 C CNN
	1    1225 1100
	0    1    1    0   
$EndComp
Connection ~ 1225 1100
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
	2275 1425 2575 1425
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
$EndSCHEMATC
