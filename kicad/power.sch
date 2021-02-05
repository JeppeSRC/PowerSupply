EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
Text Notes 550  1575 0    50   ~ 10
12V Regulator @ 1.5A Max
Wire Notes Line width 10
	4875 1475 525  1475
$Comp
L Connector:TestPoint TP?
U 1 1 5F766860
P 7675 1725
F 0 "TP?" H 7733 1843 50  0000 L CNN
F 1 "VDD" H 7733 1752 50  0000 L CNN
F 2 "" H 7875 1725 50  0001 C CNN
F 3 "~" H 7875 1725 50  0001 C CNN
	1    7675 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	7675 1725 7675 1975
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
P 9375 1175
F 0 "#PWR?" H 9375 1025 50  0001 C CNN
F 1 "VDD" H 9390 1348 50  0000 C CNN
F 2 "" H 9375 1175 50  0001 C CNN
F 3 "" H 9375 1175 50  0001 C CNN
	1    9375 1175
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5F78214D
P 7475 2075
F 0 "C?" H 7563 2121 50  0000 L CNN
F 1 "10mF" H 7563 2030 50  0000 L CNN
F 2 "" H 7475 2075 50  0001 C CNN
F 3 "~" H 7475 2075 50  0001 C CNN
	1    7475 2075
	1    0    0    -1  
$EndComp
Connection ~ 7475 1975
Wire Wire Line
	7475 1975 7675 1975
$Comp
L Diode_Bridge:GBU6M D?
U 1 1 5F783487
P 7000 1975
F 0 "D?" H 7100 2150 50  0000 L CNN
F 1 "UD4KB100" H 7075 1775 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_Vishay_KBPM" H 7150 2100 50  0001 L CNN
F 3 "http://www.vishay.com/docs/88656/gbu6a.pdf" H 7000 1975 50  0001 C CNN
	1    7000 1975
	1    0    0    -1  
$EndComp
Connection ~ 7675 1975
Wire Wire Line
	7675 1975 7875 1975
Text Notes 550  3875 0    50   ~ 10
Pre regulator 21V @ 2.5A Max
Wire Notes Line
	3825 5700 3825 5675
$Comp
L symbols:AP64352 U?
U 1 1 5F9DF63F
P 1950 4550
F 0 "U?" H 1950 5115 50  0000 C CNN
F 1 "AP64352" H 1950 5024 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.41x3.3mm_ThermalVias" H 3550 5450 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP64352.pdf" H 3550 5450 50  0001 C CNN
F 4 "AP64352" H 1950 4550 50  0001 C CNN "MPN"
	1    1950 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4250 1550 4450
$Comp
L power:GND #PWR?
U 1 1 5F9DF646
P 1950 5050
F 0 "#PWR?" H 1950 4800 50  0001 C CNN
F 1 "GND" H 1955 4877 50  0000 C CNN
F 2 "" H 1950 5050 50  0001 C CNN
F 3 "" H 1950 5050 50  0001 C CNN
	1    1950 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F9DF64C
P 2500 4350
F 0 "C?" H 2592 4396 50  0000 L CNN
F 1 "100nF" H 2592 4305 50  0000 L CNN
F 2 "" H 2500 4350 50  0001 C CNN
F 3 "~" H 2500 4350 50  0001 C CNN
	1    2500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4250 2500 4250
Wire Wire Line
	2350 4450 2500 4450
$Comp
L Device:L_Small L?
U 1 1 5F9DF668
P 2975 4450
F 0 "L?" V 3100 4450 50  0000 C CNN
F 1 "40µH" V 3025 4450 50  0000 C CNN
F 2 "" H 2975 4450 50  0001 C CNN
F 3 "~" H 2975 4450 50  0001 C CNN
	1    2975 4450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F9DF66F
P 1425 5025
F 0 "R?" H 1484 5071 50  0000 L CNN
F 1 "100k" H 1484 4980 50  0000 L CNN
F 2 "" H 1425 5025 50  0001 C CNN
F 3 "~" H 1425 5025 50  0001 C CNN
	1    1425 5025
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4850 1425 4850
Wire Wire Line
	1425 4850 1425 4925
$Comp
L Device:R_Small R?
U 1 1 5F9DF677
P 1275 5275
F 0 "R?" H 1334 5321 50  0000 L CNN
F 1 "100k" H 1334 5230 50  0000 L CNN
F 2 "" H 1275 5275 50  0001 C CNN
F 3 "~" H 1275 5275 50  0001 C CNN
	1    1275 5275
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F9DF67D
P 1575 5275
F 0 "R?" H 1634 5321 50  0000 L CNN
F 1 "100k" H 1634 5230 50  0000 L CNN
F 2 "" H 1575 5275 50  0001 C CNN
F 3 "~" H 1575 5275 50  0001 C CNN
	1    1575 5275
	1    0    0    -1  
$EndComp
Wire Wire Line
	1575 5175 1575 5150
Wire Wire Line
	1575 5150 1425 5150
Wire Wire Line
	1425 5150 1425 5125
Wire Wire Line
	1425 5150 1275 5150
Wire Wire Line
	1275 5150 1275 5175
Connection ~ 1425 5150
$Comp
L power:GND #PWR?
U 1 1 5F9DF689
P 1425 5375
F 0 "#PWR?" H 1425 5125 50  0001 C CNN
F 1 "GND" H 1430 5202 50  0000 C CNN
F 2 "" H 1425 5375 50  0001 C CNN
F 3 "" H 1425 5375 50  0001 C CNN
	1    1425 5375
	1    0    0    -1  
$EndComp
Wire Wire Line
	1425 5375 1575 5375
Wire Wire Line
	1425 5375 1275 5375
Connection ~ 1425 5375
$Comp
L Device:C_Small C?
U 1 1 5F9DF6CC
P 2450 5000
F 0 "C?" H 2542 5046 50  0000 L CNN
F 1 "100nF" H 2542 4955 50  0000 L CNN
F 2 "" H 2450 5000 50  0001 C CNN
F 3 "~" H 2450 5000 50  0001 C CNN
	1    2450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4900 2450 4850
Wire Wire Line
	2450 4850 2350 4850
$Comp
L power:GND #PWR?
U 1 1 5F9DF6D4
P 2450 5100
F 0 "#PWR?" H 2450 4850 50  0001 C CNN
F 1 "GND" H 2455 4927 50  0000 C CNN
F 2 "" H 2450 5100 50  0001 C CNN
F 3 "" H 2450 5100 50  0001 C CNN
	1    2450 5100
	1    0    0    -1  
$EndComp
Text Notes 900  5025 0    50   ~ 0
1MHz/100k
$Comp
L Connector:TestPoint TP?
U 1 1 5F9DF703
P 4725 4200
F 0 "TP?" H 4667 4318 50  0000 R CNN
F 1 "SVOUT" H 4667 4227 50  0000 R CNN
F 2 "" H 4925 4200 50  0001 C CNN
F 3 "~" H 4925 4200 50  0001 C CNN
	1    4725 4200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2875 4450 2500 4450
Connection ~ 2500 4450
Text GLabel 4775 4450 2    50   UnSpc ~ 0
SVOUT
$Comp
L Device:CP_Small C?
U 1 1 5F83854B
P 7875 2075
F 0 "C?" H 7963 2121 50  0000 L CNN
F 1 "10mF" H 7963 2030 50  0000 L CNN
F 2 "" H 7875 2075 50  0001 C CNN
F 3 "~" H 7875 2075 50  0001 C CNN
	1    7875 2075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F838BB1
P 7475 2175
F 0 "#PWR?" H 7475 1925 50  0001 C CNN
F 1 "GND" H 7480 2002 50  0000 C CNN
F 2 "" H 7475 2175 50  0001 C CNN
F 3 "" H 7475 2175 50  0001 C CNN
	1    7475 2175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F83929B
P 7875 2175
F 0 "#PWR?" H 7875 1925 50  0001 C CNN
F 1 "GND" H 7880 2002 50  0000 C CNN
F 2 "" H 7875 2175 50  0001 C CNN
F 3 "" H 7875 2175 50  0001 C CNN
	1    7875 2175
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F84A07A
P 8300 1975
F 0 "R?" V 8093 1975 50  0000 C CNN
F 1 "1K" V 8184 1975 50  0000 C CNN
F 2 "" V 8230 1975 50  0001 C CNN
F 3 "~" H 8300 1975 50  0001 C CNN
	1    8300 1975
	0    1    1    0   
$EndComp
Wire Wire Line
	7875 1975 8075 1975
Connection ~ 7875 1975
Wire Wire Line
	8450 1975 8625 1975
$Comp
L Device:CP_Small C?
U 1 1 5F85492C
P 8625 2075
F 0 "C?" H 8713 2121 50  0000 L CNN
F 1 "100µF" H 8713 2030 50  0000 L CNN
F 2 "" H 8625 2075 50  0001 C CNN
F 3 "~" H 8625 2075 50  0001 C CNN
	1    8625 2075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F858580
P 8625 2175
F 0 "#PWR?" H 8625 1925 50  0001 C CNN
F 1 "GND" H 8630 2002 50  0000 C CNN
F 2 "" H 8625 2175 50  0001 C CNN
F 3 "" H 8625 2175 50  0001 C CNN
	1    8625 2175
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5F85D075
P 8950 1350
F 0 "Q?" V 9278 1350 50  0000 C CNN
F 1 "Q_NPN_BCE" V 9187 1350 50  0000 C CNN
F 2 "" H 9150 1450 50  0001 C CNN
F 3 "~" H 8950 1350 50  0001 C CNN
	1    8950 1350
	0    -1   -1   0   
$EndComp
Connection ~ 8075 1975
Wire Wire Line
	8075 1975 8150 1975
Wire Wire Line
	9150 1250 9375 1250
Wire Wire Line
	9375 1250 9375 1175
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5F86D748
P 8625 1775
F 0 "Q?" V 8953 1775 50  0000 C CNN
F 1 "Q_NPN_BCE" V 8862 1775 50  0000 C CNN
F 2 "" H 8825 1875 50  0001 C CNN
F 3 "~" H 8625 1775 50  0001 C CNN
	1    8625 1775
	0    -1   -1   0   
$EndComp
Connection ~ 8625 1975
Wire Wire Line
	8825 1675 8950 1675
Wire Wire Line
	8950 1675 8950 1550
Wire Wire Line
	8075 1250 8300 1250
Wire Wire Line
	8075 1250 8075 1975
Wire Wire Line
	8425 1675 8300 1675
Wire Wire Line
	8300 1675 8300 1250
Connection ~ 8300 1250
Wire Wire Line
	8300 1250 8750 1250
$Comp
L Device:C_Small C?
U 1 1 6022793E
P 3600 4600
F 0 "C?" H 3692 4646 50  0000 L CNN
F 1 "1µF" H 3692 4555 50  0000 L CNN
F 2 "" H 3600 4600 50  0001 C CNN
F 3 "~" H 3600 4600 50  0001 C CNN
	1    3600 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4500 3600 4450
$Comp
L Device:C_Small C?
U 1 1 6022A54A
P 3600 4300
F 0 "C?" H 3692 4346 50  0000 L CNN
F 1 "1µF" H 3692 4255 50  0000 L CNN
F 2 "" H 3600 4300 50  0001 C CNN
F 3 "~" H 3600 4300 50  0001 C CNN
	1    3600 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4400 3600 4450
Connection ~ 3600 4450
$Comp
L Device:C_Small C?
U 1 1 6023066A
P 3950 4600
F 0 "C?" H 4042 4646 50  0000 L CNN
F 1 "1µF" H 4042 4555 50  0000 L CNN
F 2 "" H 3950 4600 50  0001 C CNN
F 3 "~" H 3950 4600 50  0001 C CNN
	1    3950 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60230EDD
P 3950 4300
F 0 "C?" H 4042 4346 50  0000 L CNN
F 1 "1µF" H 4042 4255 50  0000 L CNN
F 2 "" H 3950 4300 50  0001 C CNN
F 3 "~" H 3950 4300 50  0001 C CNN
	1    3950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4400 3950 4450
Wire Wire Line
	3950 4450 3600 4450
Connection ~ 3950 4450
Wire Wire Line
	3950 4450 3950 4500
Wire Wire Line
	3600 4700 3600 4750
Wire Wire Line
	3950 4750 3950 4700
Wire Wire Line
	3950 4200 3950 4150
Wire Wire Line
	3950 4150 3775 4150
Wire Wire Line
	3600 4150 3600 4200
$Comp
L power:GND #PWR?
U 1 1 60239D12
P 3175 4750
F 0 "#PWR?" H 3175 4500 50  0001 C CNN
F 1 "GND" H 3180 4577 50  0000 C CNN
F 2 "" H 3175 4750 50  0001 C CNN
F 3 "" H 3175 4750 50  0001 C CNN
	1    3175 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6023A654
P 3775 4150
F 0 "#PWR?" H 3775 3900 50  0001 C CNN
F 1 "GND" H 3780 3977 50  0000 C CNN
F 2 "" H 3775 4150 50  0001 C CNN
F 3 "" H 3775 4150 50  0001 C CNN
	1    3775 4150
	-1   0    0    1   
$EndComp
Connection ~ 3775 4150
Wire Wire Line
	3775 4150 3600 4150
$Comp
L Device:C_Small C?
U 1 1 60245543
P 3175 4300
F 0 "C?" H 3267 4346 50  0000 L CNN
F 1 "100nF" H 3267 4255 50  0000 L CNN
F 2 "" H 3175 4300 50  0001 C CNN
F 3 "~" H 3175 4300 50  0001 C CNN
	1    3175 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 602496E5
P 3175 4600
F 0 "C?" H 3267 4646 50  0000 L CNN
F 1 "100nF" H 3267 4555 50  0000 L CNN
F 2 "" H 3175 4600 50  0001 C CNN
F 3 "~" H 3175 4600 50  0001 C CNN
	1    3175 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 4700 3175 4750
Wire Wire Line
	3175 4750 3600 4750
Wire Wire Line
	3075 4450 3175 4450
Wire Wire Line
	3175 4400 3175 4450
Connection ~ 3175 4450
Wire Wire Line
	3175 4450 3600 4450
Wire Wire Line
	3175 4450 3175 4500
Wire Wire Line
	3175 4200 3175 4150
Wire Wire Line
	3175 4150 3600 4150
Connection ~ 3600 4150
$Comp
L Device:CP_Small C?
U 1 1 60257218
P 4300 4625
F 0 "C?" H 4100 4675 50  0000 L CNN
F 1 "47µF" H 4000 4600 50  0000 L CNN
F 2 "" H 4300 4625 50  0001 C CNN
F 3 "~" H 4300 4625 50  0001 C CNN
	1    4300 4625
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3950 4150 4300 4150
Wire Wire Line
	4300 4150 4300 4200
Connection ~ 3950 4150
Wire Wire Line
	4300 4400 4300 4450
Wire Wire Line
	4300 4450 3950 4450
Wire Wire Line
	4300 4450 4300 4525
Connection ~ 4300 4450
Wire Wire Line
	4300 4725 4300 4750
Wire Wire Line
	4300 4750 3950 4750
$Comp
L Device:C_Small C?
U 1 1 6026A13E
P 1175 4400
F 0 "C?" H 1267 4446 50  0000 L CNN
F 1 "100nF" H 1267 4355 50  0000 L CNN
F 2 "" H 1175 4400 50  0001 C CNN
F 3 "~" H 1175 4400 50  0001 C CNN
	1    1175 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6026AE06
P 850 4400
F 0 "C?" H 942 4446 50  0000 L CNN
F 1 "1µF" H 942 4355 50  0000 L CNN
F 2 "" H 850 4400 50  0001 C CNN
F 3 "~" H 850 4400 50  0001 C CNN
	1    850  4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1175 4500 1175 4550
Wire Wire Line
	1175 4550 850  4550
Wire Wire Line
	850  4550 850  4500
Wire Wire Line
	1550 4250 1175 4250
Wire Wire Line
	1175 4250 1175 4300
Connection ~ 1550 4250
Wire Wire Line
	850  4300 850  4250
Wire Wire Line
	850  4250 1175 4250
Connection ~ 1175 4250
$Comp
L Device:CP_Small C?
U 1 1 602750B2
P 1175 4100
F 0 "C?" H 975 4150 50  0000 L CNN
F 1 "47µF" H 900 4075 50  0000 L CNN
F 2 "" H 1175 4100 50  0001 C CNN
F 3 "~" H 1175 4100 50  0001 C CNN
	1    1175 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1175 4200 1175 4250
$Comp
L Device:CP_Small C?
U 1 1 60279D99
P 850 4100
F 0 "C?" H 650 4150 50  0000 L CNN
F 1 "47µF" H 575 4050 50  0000 L CNN
F 2 "" H 850 4100 50  0001 C CNN
F 3 "~" H 850 4100 50  0001 C CNN
	1    850  4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	850  4000 850  3950
Wire Wire Line
	850  3950 1175 3950
Wire Wire Line
	1175 3950 1175 4000
Wire Wire Line
	850  4200 850  4250
Connection ~ 850  4250
$Comp
L power:VDD #PWR?
U 1 1 6028152E
P 625 4175
AR Path="/5F3D442D/6028152E" Ref="#PWR?"  Part="1" 
AR Path="/6028152E" Ref="#PWR?"  Part="1" 
AR Path="/5F79B199/6028152E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 625 4025 50  0001 C CNN
F 1 "VDD" H 642 4348 50  0000 C CNN
F 2 "" H 625 4175 50  0001 C CNN
F 3 "" H 625 4175 50  0001 C CNN
	1    625  4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	625  4175 625  4250
Wire Wire Line
	625  4250 650  4250
Wire Wire Line
	4775 4450 4725 4450
Wire Wire Line
	4725 4200 4725 4450
Connection ~ 4725 4450
Wire Wire Line
	4725 4450 4650 4450
$Comp
L Device:Net-Tie_2 NT?
U 1 1 602C24AD
P 750 4250
F 0 "NT?" H 750 4300 50  0000 C CNN
F 1 "Net-Tie_2" H 750 4340 50  0001 C CNN
F 2 "" H 750 4250 50  0001 C CNN
F 3 "~" H 750 4250 50  0001 C CNN
	1    750  4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5025 2900 4650
Wire Wire Line
	2350 4650 2900 4650
Wire Wire Line
	3075 5075 3075 5025
Connection ~ 3075 5025
Wire Wire Line
	3075 5025 2900 5025
$Comp
L power:GND #PWR?
U 1 1 602D2518
P 3075 5375
F 0 "#PWR?" H 3075 5125 50  0001 C CNN
F 1 "GND" H 3080 5202 50  0000 C CNN
F 2 "" H 3075 5375 50  0001 C CNN
F 3 "" H 3075 5375 50  0001 C CNN
	1    3075 5375
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 602D497B
P 3075 5225
F 0 "R?" H 3145 5271 50  0000 L CNN
F 1 "10k" H 3145 5180 50  0000 L CNN
F 2 "" V 3005 5225 50  0001 C CNN
F 3 "~" H 3075 5225 50  0001 C CNN
	1    3075 5225
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 602D7099
P 3350 5025
F 0 "R?" V 3250 5025 50  0000 C CNN
F 1 "100k" V 3350 5025 50  0000 C CNN
F 2 "" V 3280 5025 50  0001 C CNN
F 3 "~" H 3350 5025 50  0001 C CNN
	1    3350 5025
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 5025 3075 5025
$Comp
L Device:R R?
U 1 1 602D8260
P 3650 5025
F 0 "R?" V 3550 5025 50  0000 C CNN
F 1 "100k" V 3650 5025 50  0000 C CNN
F 2 "" V 3580 5025 50  0001 C CNN
F 3 "~" H 3650 5025 50  0001 C CNN
	1    3650 5025
	0    1    1    0   
$EndComp
Connection ~ 3175 4750
Wire Wire Line
	3950 4750 3600 4750
Connection ~ 3950 4750
Connection ~ 3600 4750
$Comp
L Device:R R?
U 1 1 602E93B2
P 3975 4925
F 0 "R?" V 3875 4925 50  0000 C CNN
F 1 "100k" V 3975 4925 50  0000 C CNN
F 2 "" V 3905 4925 50  0001 C CNN
F 3 "~" H 3975 4925 50  0001 C CNN
	1    3975 4925
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 602E9863
P 3975 5125
F 0 "R?" V 3875 5125 50  0000 C CNN
F 1 "100k" V 3975 5125 50  0000 C CNN
F 2 "" V 3905 5125 50  0001 C CNN
F 3 "~" H 3975 5125 50  0001 C CNN
	1    3975 5125
	0    1    1    0   
$EndComp
Wire Wire Line
	3825 5125 3825 5025
Wire Wire Line
	3800 5025 3825 5025
Connection ~ 3825 5025
Wire Wire Line
	3825 5025 3825 4925
Wire Wire Line
	4125 4925 4125 5025
$Comp
L Device:R R?
U 1 1 6030CC7C
P 4275 5025
F 0 "R?" V 4175 5025 50  0000 C CNN
F 1 "10k" V 4275 5025 50  0000 C CNN
F 2 "" V 4205 5025 50  0001 C CNN
F 3 "~" H 4275 5025 50  0001 C CNN
	1    4275 5025
	0    1    1    0   
$EndComp
Connection ~ 4125 5025
Wire Wire Line
	4125 5025 4125 5125
Wire Wire Line
	4725 4450 4725 5025
$Comp
L Device:CP_Small C?
U 1 1 60258881
P 4300 4300
F 0 "C?" H 4125 4250 50  0000 L CNN
F 1 "47µF" H 4025 4325 50  0000 L CNN
F 2 "" H 4300 4300 50  0001 C CNN
F 3 "~" H 4300 4300 50  0001 C CNN
	1    4300 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:Net-Tie_2 NT?
U 1 1 603EB35F
P 4550 4450
F 0 "NT?" H 4550 4500 50  0000 C CNN
F 1 "Net-Tie_2" H 4550 4540 50  0001 C CNN
F 2 "" H 4550 4450 50  0001 C CNN
F 3 "~" H 4550 4450 50  0001 C CNN
	1    4550 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4450 4300 4450
Wire Notes Line width 10
	4875 1475 4875 3725
Wire Notes Line width 10
	525  1475 525  3725
Wire Notes Line width 10
	525  3725 4875 3725
Wire Wire Line
	4275 2450 4350 2450
$Comp
L Device:Net-Tie_2 NT?
U 1 1 603EA560
P 4175 2450
F 0 "NT?" H 4175 2500 50  0000 C CNN
F 1 "Net-Tie_2" H 4175 2540 50  0001 C CNN
F 2 "" H 4175 2450 50  0001 C CNN
F 3 "~" H 4175 2450 50  0001 C CNN
	1    4175 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2225 4350 2450
Wire Wire Line
	4325 2225 4350 2225
Wire Wire Line
	4325 2150 4325 2225
Connection ~ 4350 2450
Wire Wire Line
	4625 2450 4350 2450
Wire Wire Line
	4625 2275 4625 2450
Wire Wire Line
	2400 3325 2400 3250
Connection ~ 2400 3250
Wire Wire Line
	2400 3250 2400 3100
$Comp
L Device:R R?
U 1 1 603CC261
P 2550 3250
F 0 "R?" V 2450 3250 50  0000 C CNN
F 1 "1k" V 2550 3250 50  0000 C CNN
F 2 "" V 2480 3250 50  0001 C CNN
F 3 "~" H 2550 3250 50  0001 C CNN
	1    2550 3250
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 603CBA14
P 2850 3250
F 0 "R?" V 2750 3250 50  0000 C CNN
F 1 "1k" V 2850 3250 50  0000 C CNN
F 2 "" V 2780 3250 50  0001 C CNN
F 3 "~" H 2850 3250 50  0001 C CNN
	1    2850 3250
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 603CB504
P 3150 3250
F 0 "R?" V 3050 3250 50  0000 C CNN
F 1 "10k" V 3150 3250 50  0000 C CNN
F 2 "" V 3080 3250 50  0001 C CNN
F 3 "~" H 3150 3250 50  0001 C CNN
	1    3150 3250
	0    -1   1    0   
$EndComp
Wire Wire Line
	3625 3075 2925 3075
Connection ~ 3625 3075
Wire Wire Line
	3625 3250 3600 3250
Wire Wire Line
	3625 3075 3625 3250
Wire Wire Line
	2925 2650 2325 2650
Wire Wire Line
	2925 3075 2925 2650
Wire Wire Line
	3675 3075 3625 3075
$Comp
L Device:R R?
U 1 1 603BD2F6
P 3450 3250
F 0 "R?" V 3350 3250 50  0000 C CNN
F 1 "10k" V 3450 3250 50  0000 C CNN
F 2 "" V 3380 3250 50  0001 C CNN
F 3 "~" H 3450 3250 50  0001 C CNN
	1    3450 3250
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 603BCE43
P 3825 3075
F 0 "R?" V 3725 3075 50  0000 C CNN
F 1 "10k" V 3825 3075 50  0000 C CNN
F 2 "" V 3755 3075 50  0001 C CNN
F 3 "~" H 3825 3075 50  0001 C CNN
	1    3825 3075
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 3075 4350 3050
Wire Wire Line
	4275 3075 4350 3075
$Comp
L Device:R R?
U 1 1 603B6794
P 4125 3075
F 0 "R?" V 4025 3075 50  0000 C CNN
F 1 "100k" V 4125 3075 50  0000 C CNN
F 2 "" V 4055 3075 50  0001 C CNN
F 3 "~" H 4125 3075 50  0001 C CNN
	1    4125 3075
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 603B62D9
P 4350 2900
F 0 "R?" H 4420 2946 50  0000 L CNN
F 1 "100k" H 4420 2855 50  0000 L CNN
F 2 "" V 4280 2900 50  0001 C CNN
F 3 "~" H 4350 2900 50  0001 C CNN
	1    4350 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 603B5D10
P 4350 2600
F 0 "R?" H 4420 2646 50  0000 L CNN
F 1 "100k" H 4420 2555 50  0000 L CNN
F 2 "" V 4280 2600 50  0001 C CNN
F 3 "~" H 4350 2600 50  0001 C CNN
	1    4350 2600
	1    0    0    -1  
$EndComp
Connection ~ 3150 2150
$Comp
L power:GND #PWR?
U 1 1 603B3EB2
P 3150 2150
F 0 "#PWR?" H 3150 1900 50  0001 C CNN
F 1 "GND" H 3155 1977 50  0000 C CNN
F 2 "" H 3150 2150 50  0001 C CNN
F 3 "" H 3150 2150 50  0001 C CNN
	1    3150 2150
	-1   0    0    1   
$EndComp
Connection ~ 3150 2750
$Comp
L power:GND #PWR?
U 1 1 603B2C17
P 3150 2750
F 0 "#PWR?" H 3150 2500 50  0001 C CNN
F 1 "GND" H 3155 2577 50  0000 C CNN
F 2 "" H 3150 2750 50  0001 C CNN
F 3 "" H 3150 2750 50  0001 C CNN
	1    3150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3575 2150 3925 2150
Connection ~ 3575 2150
Wire Wire Line
	3575 2200 3575 2150
Wire Wire Line
	3925 2150 3925 2200
Wire Wire Line
	3150 2150 3575 2150
Wire Wire Line
	3150 2200 3150 2150
Wire Wire Line
	3575 2750 3150 2750
Connection ~ 3575 2750
Wire Wire Line
	3575 2700 3575 2750
Wire Wire Line
	3150 2750 3150 2700
Wire Wire Line
	3925 2750 3575 2750
Wire Wire Line
	3925 2725 3925 2750
Wire Wire Line
	3925 2450 3925 2525
Wire Wire Line
	3925 2450 4075 2450
Connection ~ 3925 2450
Wire Wire Line
	3925 2400 3925 2450
Wire Wire Line
	3575 2450 3925 2450
$Comp
L Device:CP_Small C?
U 1 1 6038D002
P 3925 2300
F 0 "C?" H 3750 2250 50  0000 L CNN
F 1 "47µF" H 3650 2325 50  0000 L CNN
F 2 "" H 3925 2300 50  0001 C CNN
F 3 "~" H 3925 2300 50  0001 C CNN
	1    3925 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 6038CFFB
P 3925 2625
F 0 "C?" H 3725 2675 50  0000 L CNN
F 1 "47µF" H 3625 2600 50  0000 L CNN
F 2 "" H 3925 2625 50  0001 C CNN
F 3 "~" H 3925 2625 50  0001 C CNN
	1    3925 2625
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3150 2450 3150 2500
Wire Wire Line
	3150 2450 3575 2450
Connection ~ 3150 2450
Wire Wire Line
	3150 2400 3150 2450
Wire Wire Line
	3050 2450 3150 2450
$Comp
L Device:C_Small C?
U 1 1 6035736D
P 3150 2600
F 0 "C?" H 3242 2646 50  0000 L CNN
F 1 "100nF" H 3242 2555 50  0000 L CNN
F 2 "" H 3150 2600 50  0001 C CNN
F 3 "~" H 3150 2600 50  0001 C CNN
	1    3150 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60357367
P 3150 2300
F 0 "C?" H 3242 2346 50  0000 L CNN
F 1 "100nF" H 3242 2255 50  0000 L CNN
F 2 "" H 3150 2300 50  0001 C CNN
F 3 "~" H 3150 2300 50  0001 C CNN
	1    3150 2300
	1    0    0    -1  
$EndComp
Connection ~ 3575 2450
Wire Wire Line
	3575 2400 3575 2450
$Comp
L Device:C_Small C?
U 1 1 6035735E
P 3575 2300
F 0 "C?" H 3667 2346 50  0000 L CNN
F 1 "1µF" H 3667 2255 50  0000 L CNN
F 2 "" H 3575 2300 50  0001 C CNN
F 3 "~" H 3575 2300 50  0001 C CNN
	1    3575 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3575 2500 3575 2450
$Comp
L Device:C_Small C?
U 1 1 60357357
P 3575 2600
F 0 "C?" H 3667 2646 50  0000 L CNN
F 1 "1µF" H 3667 2555 50  0000 L CNN
F 2 "" H 3575 2600 50  0001 C CNN
F 3 "~" H 3575 2600 50  0001 C CNN
	1    3575 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:Net-Tie_2 NT?
U 1 1 602C0613
P 725 2250
F 0 "NT?" H 725 2300 50  0000 C CNN
F 1 "Net-Tie_2" H 725 2340 50  0001 C CNN
F 2 "" H 725 2250 50  0001 C CNN
F 3 "~" H 725 2250 50  0001 C CNN
	1    725  2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  2250 625  2250
Wire Wire Line
	600  2175 600  2250
$Comp
L power:VDD #PWR?
U 1 1 602BB27B
P 600 2175
AR Path="/5F3D442D/602BB27B" Ref="#PWR?"  Part="1" 
AR Path="/602BB27B" Ref="#PWR?"  Part="1" 
AR Path="/5F79B199/602BB27B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 600 2025 50  0001 C CNN
F 1 "VDD" H 617 2348 50  0000 C CNN
F 2 "" H 600 2175 50  0001 C CNN
F 3 "" H 600 2175 50  0001 C CNN
	1    600  2175
	1    0    0    -1  
$EndComp
Connection ~ 825  2250
Wire Wire Line
	825  2200 825  2250
Wire Wire Line
	1150 1950 1150 2000
Wire Wire Line
	825  1950 1150 1950
Wire Wire Line
	825  2000 825  1950
$Comp
L Device:CP_Small C?
U 1 1 602BB270
P 825 2100
F 0 "C?" H 625 2150 50  0000 L CNN
F 1 "47µF" H 550 2050 50  0000 L CNN
F 2 "" H 825 2100 50  0001 C CNN
F 3 "~" H 825 2100 50  0001 C CNN
	1    825  2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 2200 1150 2250
$Comp
L Device:CP_Small C?
U 1 1 602BB269
P 1150 2100
F 0 "C?" H 950 2150 50  0000 L CNN
F 1 "47µF" H 875 2075 50  0000 L CNN
F 2 "" H 1150 2100 50  0001 C CNN
F 3 "~" H 1150 2100 50  0001 C CNN
	1    1150 2100
	-1   0    0    1   
$EndComp
Connection ~ 1150 2250
Wire Wire Line
	825  2250 1150 2250
Wire Wire Line
	825  2300 825  2250
Wire Wire Line
	1150 2250 1150 2300
Wire Wire Line
	1525 2250 1150 2250
Wire Wire Line
	825  2550 825  2500
Wire Wire Line
	1150 2550 825  2550
Wire Wire Line
	1150 2500 1150 2550
$Comp
L Device:C_Small C?
U 1 1 602BB25B
P 825 2400
F 0 "C?" H 917 2446 50  0000 L CNN
F 1 "1µF" H 917 2355 50  0000 L CNN
F 2 "" H 825 2400 50  0001 C CNN
F 3 "~" H 825 2400 50  0001 C CNN
	1    825  2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 602BB255
P 1150 2400
F 0 "C?" H 1242 2446 50  0000 L CNN
F 1 "100nF" H 1242 2355 50  0000 L CNN
F 2 "" H 1150 2400 50  0001 C CNN
F 3 "~" H 1150 2400 50  0001 C CNN
	1    1150 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5F768C6F
P 4325 2150
F 0 "TP?" H 4267 2268 50  0000 R CNN
F 1 "12V" H 4267 2177 50  0000 R CNN
F 2 "" H 4525 2150 50  0001 C CNN
F 3 "~" H 4525 2150 50  0001 C CNN
	1    4325 2150
	-1   0    0    -1  
$EndComp
Text Notes 850  3025 0    50   ~ 0
1MHz/100k
$Comp
L power:GND #PWR?
U 1 1 5F7606EF
P 2400 3325
F 0 "#PWR?" H 2400 3075 50  0001 C CNN
F 1 "GND" H 2405 3152 50  0000 C CNN
F 2 "" H 2400 3325 50  0001 C CNN
F 3 "" H 2400 3325 50  0001 C CNN
	1    2400 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2850 2325 2850
Wire Wire Line
	2400 2900 2400 2850
$Comp
L Device:C_Small C?
U 1 1 5F75FA92
P 2400 3000
F 0 "C?" H 2492 3046 50  0000 L CNN
F 1 "100nF" H 2492 2955 50  0000 L CNN
F 2 "" H 2400 3000 50  0001 C CNN
F 3 "~" H 2400 3000 50  0001 C CNN
	1    2400 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5F75B61B
P 4625 2275
F 0 "#PWR?" H 4625 2125 50  0001 C CNN
F 1 "+12V" H 4640 2448 50  0000 C CNN
F 2 "" H 4625 2275 50  0001 C CNN
F 3 "" H 4625 2275 50  0001 C CNN
	1    4625 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2450 2850 2450
Connection ~ 1375 3375
Wire Wire Line
	1375 3375 1225 3375
Wire Wire Line
	1375 3375 1525 3375
$Comp
L power:GND #PWR?
U 1 1 5F752932
P 1375 3375
F 0 "#PWR?" H 1375 3125 50  0001 C CNN
F 1 "GND" H 1380 3202 50  0000 C CNN
F 2 "" H 1375 3375 50  0001 C CNN
F 3 "" H 1375 3375 50  0001 C CNN
	1    1375 3375
	1    0    0    -1  
$EndComp
Connection ~ 1375 3150
Wire Wire Line
	1225 3150 1225 3175
Wire Wire Line
	1375 3150 1225 3150
Wire Wire Line
	1375 3150 1375 3125
Wire Wire Line
	1525 3150 1375 3150
Wire Wire Line
	1525 3175 1525 3150
$Comp
L Device:R_Small R?
U 1 1 5F751ACA
P 1525 3275
F 0 "R?" H 1584 3321 50  0000 L CNN
F 1 "100k" H 1584 3230 50  0000 L CNN
F 2 "" H 1525 3275 50  0001 C CNN
F 3 "~" H 1525 3275 50  0001 C CNN
	1    1525 3275
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F75156A
P 1225 3275
F 0 "R?" H 1284 3321 50  0000 L CNN
F 1 "100k" H 1284 3230 50  0000 L CNN
F 2 "" H 1225 3275 50  0001 C CNN
F 3 "~" H 1225 3275 50  0001 C CNN
	1    1225 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	1375 2850 1375 2925
Wire Wire Line
	1525 2850 1375 2850
$Comp
L Device:R_Small R?
U 1 1 5F750889
P 1375 3025
F 0 "R?" H 1434 3071 50  0000 L CNN
F 1 "100k" H 1434 2980 50  0000 L CNN
F 2 "" H 1375 3025 50  0001 C CNN
F 3 "~" H 1375 3025 50  0001 C CNN
	1    1375 3025
	1    0    0    -1  
$EndComp
Connection ~ 2450 2450
$Comp
L Device:L_Small L?
U 1 1 5F760236
P 2950 2450
F 0 "L?" V 3135 2450 50  0000 C CNN
F 1 "10µH" V 3044 2450 50  0000 C CNN
F 2 "" H 2950 2450 50  0001 C CNN
F 3 "~" H 2950 2450 50  0001 C CNN
	1    2950 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2325 2450 2450 2450
Wire Wire Line
	2325 2250 2450 2250
$Comp
L Device:C_Small C?
U 1 1 5F75B474
P 2450 2350
F 0 "C?" H 2542 2396 50  0000 L CNN
F 1 "100nF" H 2542 2305 50  0000 L CNN
F 2 "" H 2450 2350 50  0001 C CNN
F 3 "~" H 2450 2350 50  0001 C CNN
	1    2450 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F75A97A
P 1925 3050
F 0 "#PWR?" H 1925 2800 50  0001 C CNN
F 1 "GND" H 1930 2877 50  0000 C CNN
F 2 "" H 1925 3050 50  0001 C CNN
F 3 "" H 1925 3050 50  0001 C CNN
	1    1925 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1525 2250 1525 2450
$Comp
L symbols:AP64352 U?
U 1 1 5F759666
P 1925 2550
F 0 "U?" H 1925 3115 50  0000 C CNN
F 1 "AP64352" H 1925 3024 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.41x3.3mm_ThermalVias" H 3525 3450 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP64352.pdf" H 3525 3450 50  0001 C CNN
F 4 "AP64352" H 1925 2550 50  0001 C CNN "MPN"
	1    1925 2550
	1    0    0    -1  
$EndComp
Wire Notes Line width 10
	525  3775 525  5650
Wire Notes Line width 10
	525  5650 5100 5650
Wire Notes Line width 10
	5100 5650 5100 3775
Wire Notes Line width 10
	5100 3775 525  3775
Connection ~ 1525 2250
Wire Wire Line
	4725 5025 4425 5025
$EndSCHEMATC
