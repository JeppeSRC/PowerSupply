EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L power:VDD #PWR01
U 1 1 5CA02FAB
P 1300 700
F 0 "#PWR01" H 1300 550 50  0001 C CNN
F 1 "VDD" H 1317 873 50  0000 C CNN
F 2 "" H 1300 700 50  0001 C CNN
F 3 "" H 1300 700 50  0001 C CNN
	1    1300 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3050 850  3050
Wire Wire Line
	1750 3050 1900 3050
$Comp
L power:GNDREF #PWR09
U 1 1 5CA143C1
P 1450 3250
F 0 "#PWR09" H 1450 3000 50  0001 C CNN
F 1 "GNDREF" H 1455 3077 50  0001 C CNN
F 2 "" H 1450 3250 50  0001 C CNN
F 3 "" H 1450 3250 50  0001 C CNN
	1    1450 3250
	1    0    0    -1  
$EndComp
Connection ~ 850  3050
Wire Wire Line
	850  3050 700  3050
Connection ~ 1450 3250
Connection ~ 1900 3050
Wire Wire Line
	1900 3050 2300 3050
Wire Wire Line
	2300 3050 2550 3050
Connection ~ 2300 3050
Wire Wire Line
	2300 3250 1900 3250
Connection ~ 1900 3250
Wire Wire Line
	1900 3250 1450 3250
$Comp
L power:VDD #PWR07
U 1 1 5CA18B8F
P 700 3050
F 0 "#PWR07" H 700 2900 50  0001 C CNN
F 1 "VDD" H 717 3223 50  0000 C CNN
F 2 "" H 700 3050 50  0001 C CNN
F 3 "" H 700 3050 50  0001 C CNN
	1    700  3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR08
U 1 1 5CA63B89
P 2550 3050
F 0 "#PWR08" H 2550 2900 50  0001 C CNN
F 1 "+3V3" H 2565 3223 50  0000 C CNN
F 2 "" H 2550 3050 50  0001 C CNN
F 3 "" H 2550 3050 50  0001 C CNN
	1    2550 3050
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR05
U 1 1 5CF4163C
P 1450 2050
F 0 "#PWR05" H 1450 1900 50  0001 C CNN
F 1 "VDD" V 1450 2200 50  0000 L CNN
F 2 "" H 1450 2050 50  0001 C CNN
F 3 "" H 1450 2050 50  0001 C CNN
	1    1450 2050
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR06
U 1 1 5CF439A5
P 1600 2250
F 0 "#PWR06" H 1600 2000 50  0001 C CNN
F 1 "GNDREF" V 1605 2122 50  0001 R CNN
F 2 "" H 1600 2250 50  0001 C CNN
F 3 "" H 1600 2250 50  0001 C CNN
	1    1600 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	650  1200 1300 1200
Connection ~ 1300 700 
Wire Wire Line
	650  700  1300 700 
Wire Wire Line
	650  1050 650  1200
Wire Wire Line
	650  700  650  850 
Connection ~ 2800 750 
Wire Wire Line
	2150 750  2800 750 
Wire Wire Line
	2150 1250 2800 1250
$Comp
L power:VDD #PWR02
U 1 1 5CA2E77F
P 2800 750
F 0 "#PWR02" H 2800 600 50  0001 C CNN
F 1 "VDD" H 2817 923 50  0000 C CNN
F 2 "" H 2800 750 50  0001 C CNN
F 3 "" H 2800 750 50  0001 C CNN
	1    2800 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3250 850  3250
Wire Wire Line
	2150 750  2150 900 
Wire Wire Line
	2150 1250 2150 1100
$Comp
L Device:C_Small C2
U 1 1 5CA2E78B
P 2150 1000
F 0 "C2" H 2242 1046 50  0000 L CNN
F 1 "100nF" H 2242 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2150 1000 50  0001 C CNN
F 3 "~" H 2150 1000 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 2150 1000 50  0001 C CNN "MPN"
	1    2150 1000
	1    0    0    -1  
$EndComp
$Comp
L symbols:OPA4196 U2
U 1 1 5CA2E794
P 2750 1000
F 0 "U2" H 3050 1050 50  0000 L CNN
F 1 "OPA4196" H 3050 950 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2750 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 2850 1300 50  0001 C CNN
F 4 "OPA4196IDR" H 2750 1000 50  0001 C CNN "MPN"
	1    2750 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5CA14E49
P 650 950
F 0 "C1" H 742 996 50  0000 L CNN
F 1 "100nF" H 742 905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 650 950 50  0001 C CNN
F 3 "~" H 650 950 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 650 950 50  0001 C CNN "MPN"
	1    650  950 
	1    0    0    -1  
$EndComp
$Comp
L symbols:OPA4196 U1
U 1 1 5CA23A34
P 1250 950
F 0 "U1" H 1550 1000 50  0000 L CNN
F 1 "OPA4196" H 1550 900 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1250 950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 1350 1250 50  0001 C CNN
F 4 "OPA4196IDR" H 1250 950 50  0001 C CNN "MPN"
	1    1250 950 
	1    0    0    -1  
$EndComp
$Comp
L symbols:LD1086 U3
U 1 1 5CA128DD
P 1450 3050
F 0 "U3" H 1450 3315 50  0000 C CNN
F 1 "LD1086D2T33" H 1450 3224 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 1450 3050 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/389/ld1086-974047.pdf" V 1450 3050 50  0001 C CNN
F 4 "LD1086D2T33TR" H 1450 3050 50  0001 C CNN "MPN"
	1    1450 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5CA14481
P 850 3150
F 0 "C3" H 942 3196 50  0000 L CNN
F 1 "10µF HV" H 942 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 3150 50  0001 C CNN
F 3 "~" H 850 3150 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 850 3150 50  0001 C CNN "MPN"
	1    850  3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5CA1490D
P 1900 3150
F 0 "C4" H 1992 3196 50  0000 L CNN
F 1 "10µF" H 1992 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1900 3150 50  0001 C CNN
F 3 "~" H 1900 3150 50  0001 C CNN
F 4 "EMK212BJ106KG-T" H 1900 3150 50  0001 C CNN "MPN"
	1    1900 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5CA149B6
P 2300 3150
F 0 "C5" H 2392 3196 50  0000 L CNN
F 1 "100nF" H 2392 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2300 3150 50  0001 C CNN
F 3 "~" H 2300 3150 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 2300 3150 50  0001 C CNN "MPN"
	1    2300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J4
U 1 1 5D6A578C
P 900 2150
F 0 "J4" H 818 2467 50  0000 C CNN
F 1 "Terminal" H 818 2376 50  0000 C CNN
F 2 "footprints:20020316-GXXXXXXLF" H 900 2150 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/18/20020316-941859.pdf" H 900 2150 50  0001 C CNN
F 4 "20020316-G031B01LF" H 900 2150 50  0001 C CNN "MPN"
	1    900  2150
	-1   0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5CF42203
P 1300 2250
F 0 "#FLG02" H 1300 2325 50  0001 C CNN
F 1 "PWR_FLAG" V 1300 2377 50  0000 L CNN
F 2 "" H 1300 2250 50  0001 C CNN
F 3 "~" H 1300 2250 50  0001 C CNN
	1    1300 2250
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5CF3F139
P 1300 2050
F 0 "#FLG01" H 1300 2125 50  0001 C CNN
F 1 "PWR_FLAG" V 1300 2177 50  0000 L CNN
F 2 "" H 1300 2050 50  0001 C CNN
F 3 "~" H 1300 2050 50  0001 C CNN
	1    1300 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2050 1300 2050
Connection ~ 1300 2050
Wire Wire Line
	1300 2050 1100 2050
Connection ~ 1300 2250
Wire Wire Line
	1300 2250 1100 2250
Text Label 1100 2150 0    50   ~ 0
Vout
$Comp
L power:GNDA #PWR0105
U 1 1 5D7DB5ED
P 1450 2450
F 0 "#PWR0105" H 1450 2200 50  0001 C CNN
F 1 "GNDA" H 1455 2277 50  0000 C CNN
F 2 "" H 1450 2450 50  0001 C CNN
F 3 "" H 1450 2450 50  0001 C CNN
	1    1450 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0107
U 1 1 5D80A7D5
P 2800 1250
F 0 "#PWR0107" H 2800 1000 50  0001 C CNN
F 1 "GNDA" H 2805 1077 50  0000 C CNN
F 2 "" H 2800 1250 50  0001 C CNN
F 3 "" H 2800 1250 50  0001 C CNN
	1    2800 1250
	1    0    0    -1  
$EndComp
Connection ~ 2800 1250
$Comp
L power:GNDA #PWR0108
U 1 1 5D80B3C5
P 1300 1200
F 0 "#PWR0108" H 1300 950 50  0001 C CNN
F 1 "GNDA" H 1305 1027 50  0000 C CNN
F 2 "" H 1300 1200 50  0001 C CNN
F 3 "" H 1300 1200 50  0001 C CNN
	1    1300 1200
	1    0    0    -1  
$EndComp
Connection ~ 1300 1200
Wire Wire Line
	1300 2250 1450 2250
$Comp
L Device:Net-Tie_2 NT1
U 1 1 5D81144B
P 1450 2350
F 0 "NT1" V 1404 2394 50  0000 L CNN
F 1 "Net-Tie_2" V 1495 2394 50  0000 L CNN
F 2 "NetTie:NetTie-2_SMD_Pad2.0mm" H 1450 2350 50  0001 C CNN
F 3 "~" H 1450 2350 50  0001 C CNN
	1    1450 2350
	0    1    1    0   
$EndComp
Connection ~ 1450 2250
Wire Wire Line
	1450 2250 1600 2250
$Comp
L symbols:OPA4196 U2
U 5 1 5DB4A324
P 4900 1000
F 0 "U2" H 5000 1250 50  0000 L CNN
F 1 "OPA4196" H 5000 1150 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4900 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 5000 1300 50  0001 C CNN
F 4 "OPA4196IDR" H 4900 1000 50  0001 C CNN "MPN"
	5    4900 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1000 5300 1300
Wire Wire Line
	5300 1300 4700 1300
Wire Wire Line
	4700 1300 4700 1100
$Comp
L power:GNDA #PWR0116
U 1 1 5DB4A32D
P 4700 900
F 0 "#PWR0116" H 4700 650 50  0001 C CNN
F 1 "GNDA" H 4705 727 50  0000 C CNN
F 2 "" H 4700 900 50  0001 C CNN
F 3 "" H 4700 900 50  0001 C CNN
	1    4700 900 
	0    1    1    0   
$EndComp
$Comp
L symbols:OPA4196 U?
U 4 1 5E9434AD
P 6050 1000
F 0 "U?" H 6150 1250 50  0000 L CNN
F 1 "OPA4196" H 6150 1150 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6050 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 6150 1300 50  0001 C CNN
F 4 "OPA4196IDR" H 6050 1000 50  0001 C CNN "MPN"
	4    6050 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1000 6450 1300
Wire Wire Line
	6450 1300 5850 1300
Wire Wire Line
	5850 1300 5850 1100
$Comp
L power:GNDA #PWR?
U 1 1 5E9434B6
P 5850 900
F 0 "#PWR?" H 5850 650 50  0001 C CNN
F 1 "GNDA" H 5855 727 50  0000 C CNN
F 2 "" H 5850 900 50  0001 C CNN
F 3 "" H 5850 900 50  0001 C CNN
	1    5850 900 
	0    1    1    0   
$EndComp
$Comp
L symbols:LM317 U?
U 1 1 5E9D17E9
P 1425 4100
F 0 "U?" H 1425 4365 50  0000 C CNN
F 1 "LM317" H 1425 4274 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1425 4600 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/LM317M-D-1810713.pdf" H 1425 4100 50  0001 C CNN
	1    1425 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1125 4100 850  4100
Connection ~ 850  4100
Wire Wire Line
	850  4100 700  4100
$Comp
L power:VDD #PWR?
U 1 1 5E9D474A
P 700 4100
F 0 "#PWR?" H 700 3950 50  0001 C CNN
F 1 "VDD" H 717 4273 50  0000 C CNN
F 2 "" H 700 4100 50  0001 C CNN
F 3 "" H 700 4100 50  0001 C CNN
	1    700  4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E9D4752
P 850 4200
F 0 "C?" H 942 4246 50  0000 L CNN
F 1 "100nF" H 942 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 4200 50  0001 C CNN
F 3 "~" H 850 4200 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 850 4200 50  0001 C CNN "MPN"
	1    850  4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E9D784C
P 1625 4625
F 0 "R?" V 1525 4625 50  0000 C CNN
F 1 "1K" V 1625 4625 50  0000 C CNN
F 2 "" V 1555 4625 50  0001 C CNN
F 3 "~" H 1625 4625 50  0001 C CNN
	1    1625 4625
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E9D9232
P 1425 4850
F 0 "R?" H 1495 4896 50  0000 L CNN
F 1 "10K" H 1495 4805 50  0000 L CNN
F 2 "" V 1355 4850 50  0001 C CNN
F 3 "~" H 1425 4850 50  0001 C CNN
	1    1425 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E9DE39F
P 1425 5000
F 0 "#PWR?" H 1425 4750 50  0001 C CNN
F 1 "GNDREF" H 1430 4827 50  0001 C CNN
F 2 "" H 1425 5000 50  0001 C CNN
F 3 "" H 1425 5000 50  0001 C CNN
	1    1425 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  5000 850  4300
Connection ~ 1425 5000
$Comp
L Device:C_Small C?
U 1 1 5E9E1C09
P 1025 4850
F 0 "C?" H 1117 4896 50  0000 L CNN
F 1 "100nF" H 1117 4805 50  0000 L CNN
F 2 "" H 1025 4850 50  0001 C CNN
F 3 "~" H 1025 4850 50  0001 C CNN
	1    1025 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  5000 1025 5000
Wire Wire Line
	1025 5000 1025 4950
Connection ~ 1025 5000
Wire Wire Line
	1025 5000 1425 5000
$Comp
L Device:R R?
U 1 1 5E9F9B92
P 1925 4625
F 0 "R?" V 1825 4625 50  0000 C CNN
F 1 "100R" V 1925 4625 50  0000 C CNN
F 2 "" V 1855 4625 50  0001 C CNN
F 3 "~" H 1925 4625 50  0001 C CNN
	1    1925 4625
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E9FA994
P 2150 4275
F 0 "R?" H 2220 4321 50  0000 L CNN
F 1 "100R" H 2220 4230 50  0000 L CNN
F 2 "" V 2080 4275 50  0001 C CNN
F 3 "~" H 2150 4275 50  0001 C CNN
	1    2150 4275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E9FB1B5
P 2475 4275
F 0 "R?" H 2545 4321 50  0000 L CNN
F 1 "100R" H 2545 4230 50  0000 L CNN
F 2 "" V 2405 4275 50  0001 C CNN
F 3 "~" H 2475 4275 50  0001 C CNN
	1    2475 4275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2475 4100 2475 4125
Wire Wire Line
	1725 4100 1825 4100
Wire Wire Line
	2150 4125 2150 4100
Connection ~ 2150 4100
Wire Wire Line
	2150 4100 2475 4100
Wire Wire Line
	2075 4625 2150 4625
Wire Wire Line
	2475 4625 2475 4425
Wire Wire Line
	2150 4425 2150 4625
Connection ~ 2150 4625
Wire Wire Line
	2150 4625 2475 4625
$Comp
L Device:CP_Small C?
U 1 1 5EA067EC
P 2850 4300
F 0 "C?" H 2938 4346 50  0000 L CNN
F 1 "25µF" H 2938 4255 50  0000 L CNN
F 2 "" H 2850 4300 50  0001 C CNN
F 3 "~" H 2850 4300 50  0001 C CNN
	1    2850 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4200 2850 4100
Wire Wire Line
	2850 4100 2475 4100
Connection ~ 2475 4100
$Comp
L Device:D D?
U 1 1 5EA14780
P 1425 3700
F 0 "D?" H 1425 3916 50  0000 C CNN
F 1 "SS16HE" H 1425 3825 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1425 3700 50  0001 C CNN
F 3 "~" H 1425 3700 50  0001 C CNN
	1    1425 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 3700 850  3700
Wire Wire Line
	850  3700 850  4100
Wire Wire Line
	1575 3700 1825 3700
Wire Wire Line
	1825 3700 1825 4100
Connection ~ 1825 4100
Wire Wire Line
	1825 4100 1975 4100
$Comp
L Device:D D?
U 1 1 5EA242DB
P 1800 4400
F 0 "D?" H 1800 4184 50  0000 C CNN
F 1 "SS16HE" H 1800 4275 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1800 4400 50  0001 C CNN
F 3 "~" H 1800 4400 50  0001 C CNN
	1    1800 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1425 4700 1425 4625
Connection ~ 1425 4625
Wire Wire Line
	1025 4625 1425 4625
Wire Wire Line
	1025 4625 1025 4750
Wire Wire Line
	1475 4625 1425 4625
Wire Wire Line
	1650 4400 1425 4400
Wire Wire Line
	1425 4300 1425 4400
Connection ~ 1425 4400
Wire Wire Line
	1425 4400 1425 4625
Wire Wire Line
	1950 4400 1975 4400
Wire Wire Line
	1975 4400 1975 4100
Connection ~ 1975 4100
Wire Wire Line
	1975 4100 2150 4100
Wire Wire Line
	2850 4400 2850 5000
Wire Wire Line
	2850 5000 1425 5000
$Comp
L power:+12V #PWR?
U 1 1 5EA46CF2
P 2850 4100
F 0 "#PWR?" H 2850 3950 50  0001 C CNN
F 1 "+12V" H 2865 4273 50  0000 C CNN
F 2 "" H 2850 4100 50  0001 C CNN
F 3 "" H 2850 4100 50  0001 C CNN
	1    2850 4100
	1    0    0    -1  
$EndComp
Connection ~ 2850 4100
$Comp
L Device:R R?
U 1 1 5EA89260
P -1650 2200
AR Path="/5EA89260" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA89260" Ref="R?"  Part="1" 
F 0 "R?" V -1700 2000 50  0000 C CNN
F 1 "1R" V -1700 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V -1720 2200 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/219/MF-MFS-RK-18760.pdf" H -1650 2200 50  0001 C CNN
F 4 "MF1/4DC1R00F" H -1650 2200 50  0001 C CNN "MPN"
	1    -1650 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	-1500 2200 -1350 2200
Wire Wire Line
	-1800 2200 -1950 2200
$Comp
L Device:R R?
U 1 1 5EA89269
P -1650 2300
AR Path="/5EA89269" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA89269" Ref="R?"  Part="1" 
F 0 "R?" V -1700 2100 50  0000 C CNN
F 1 "1R" V -1700 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V -1720 2300 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/219/MF-MFS-RK-18760.pdf" H -1650 2300 50  0001 C CNN
F 4 "MF1/4DC1R00F" H -1650 2300 50  0001 C CNN "MPN"
	1    -1650 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	-1500 2300 -1350 2300
Wire Wire Line
	-1800 2300 -1950 2300
$Comp
L Device:R R?
U 1 1 5EA89272
P -1650 2400
AR Path="/5EA89272" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA89272" Ref="R?"  Part="1" 
F 0 "R?" V -1700 2200 50  0000 C CNN
F 1 "1R" V -1700 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V -1720 2400 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/219/MF-MFS-RK-18760.pdf" H -1650 2400 50  0001 C CNN
F 4 "MF1/4DC1R00F" H -1650 2400 50  0001 C CNN "MPN"
	1    -1650 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	-1500 2400 -1350 2400
Wire Wire Line
	-1800 2400 -1950 2400
$Comp
L Device:R R?
U 1 1 5EA8927B
P -1650 2500
AR Path="/5EA8927B" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA8927B" Ref="R?"  Part="1" 
F 0 "R?" V -1700 2300 50  0000 C CNN
F 1 "1R" V -1700 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V -1720 2500 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/219/MF-MFS-RK-18760.pdf" H -1650 2500 50  0001 C CNN
F 4 "MF1/4DC1R00F" H -1650 2500 50  0001 C CNN "MPN"
	1    -1650 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	-1500 2500 -1350 2500
Wire Wire Line
	-1800 2500 -1950 2500
$Comp
L Device:R R?
U 1 1 5EA89284
P -1650 2600
AR Path="/5EA89284" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA89284" Ref="R?"  Part="1" 
F 0 "R?" V -1700 2400 50  0000 C CNN
F 1 "1R" V -1700 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V -1720 2600 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/219/MF-MFS-RK-18760.pdf" H -1650 2600 50  0001 C CNN
F 4 "MF1/4DC1R00F" H -1650 2600 50  0001 C CNN "MPN"
	1    -1650 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	-1500 2600 -1350 2600
Wire Wire Line
	-1800 2600 -1950 2600
$Comp
L Device:R R?
U 1 1 5EA8928D
P -1650 2700
AR Path="/5EA8928D" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA8928D" Ref="R?"  Part="1" 
F 0 "R?" V -1700 2500 50  0000 C CNN
F 1 "1R" V -1700 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V -1720 2700 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/219/MF-MFS-RK-18760.pdf" H -1650 2700 50  0001 C CNN
F 4 "MF1/4DC1R00F" H -1650 2700 50  0001 C CNN "MPN"
	1    -1650 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	-1500 2700 -1350 2700
Wire Wire Line
	-1800 2700 -1950 2700
$Comp
L Device:R R?
U 1 1 5EA89296
P -1650 2800
AR Path="/5EA89296" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA89296" Ref="R?"  Part="1" 
F 0 "R?" V -1700 2600 50  0000 C CNN
F 1 "1R" V -1700 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V -1720 2800 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/219/MF-MFS-RK-18760.pdf" H -1650 2800 50  0001 C CNN
F 4 "MF1/4DC1R00F" H -1650 2800 50  0001 C CNN "MPN"
	1    -1650 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	-1500 2800 -1350 2800
Wire Wire Line
	-1800 2800 -1950 2800
$Comp
L Device:R R?
U 1 1 5EA8929F
P -1650 2900
AR Path="/5EA8929F" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA8929F" Ref="R?"  Part="1" 
F 0 "R?" V -1700 2700 50  0000 C CNN
F 1 "1R" V -1700 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V -1720 2900 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/219/MF-MFS-RK-18760.pdf" H -1650 2900 50  0001 C CNN
F 4 "MF1/4DC1R00F" H -1650 2900 50  0001 C CNN "MPN"
	1    -1650 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	-1500 2900 -1350 2900
Wire Wire Line
	-1800 2900 -1950 2900
$Comp
L Device:R R?
U 1 1 5EA892A8
P -1650 3000
AR Path="/5EA892A8" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892A8" Ref="R?"  Part="1" 
F 0 "R?" V -1700 2800 50  0000 C CNN
F 1 "1R" V -1700 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V -1720 3000 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/219/MF-MFS-RK-18760.pdf" H -1650 3000 50  0001 C CNN
F 4 "MF1/4DC1R00F" H -1650 3000 50  0001 C CNN "MPN"
	1    -1650 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	-1500 3000 -1350 3000
Wire Wire Line
	-1800 3000 -1950 3000
$Comp
L Device:R R?
U 1 1 5EA892B1
P -1650 3100
AR Path="/5EA892B1" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892B1" Ref="R?"  Part="1" 
F 0 "R?" V -1700 2900 50  0000 C CNN
F 1 "1R" V -1700 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V -1720 3100 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/219/MF-MFS-RK-18760.pdf" H -1650 3100 50  0001 C CNN
F 4 "MF1/4DC1R00F" H -1650 3100 50  0001 C CNN "MPN"
	1    -1650 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	-1500 3100 -1350 3100
Wire Wire Line
	-1800 3100 -1950 3100
Wire Wire Line
	-1350 2200 -1350 2300
Connection ~ -1350 2300
Wire Wire Line
	-1350 2300 -1350 2400
Connection ~ -1350 2400
Wire Wire Line
	-1350 2400 -1350 2500
Connection ~ -1350 2500
Wire Wire Line
	-1350 2500 -1350 2600
Connection ~ -1350 2600
Wire Wire Line
	-1350 2600 -1350 2700
Connection ~ -1350 2700
Wire Wire Line
	-1350 2700 -1350 2800
Connection ~ -1350 2800
Wire Wire Line
	-1350 2800 -1350 2900
Connection ~ -1350 2900
Wire Wire Line
	-1350 2900 -1350 3000
Connection ~ -1350 3000
Wire Wire Line
	-1350 3000 -1350 3100
Wire Wire Line
	-1950 2200 -1950 2300
Connection ~ -1950 2300
Wire Wire Line
	-1950 2300 -1950 2400
Connection ~ -1950 2400
Wire Wire Line
	-1950 2400 -1950 2500
Connection ~ -1950 2500
Wire Wire Line
	-1950 2500 -1950 2600
Connection ~ -1950 2600
Wire Wire Line
	-1950 2600 -1950 2700
Connection ~ -1950 2700
Wire Wire Line
	-1950 2700 -1950 2800
Connection ~ -1950 2800
Wire Wire Line
	-1950 2800 -1950 2900
Connection ~ -1950 2900
Wire Wire Line
	-1950 2900 -1950 3000
Connection ~ -1950 3000
Wire Wire Line
	-1950 3000 -1950 3100
Connection ~ -1950 3100
$Comp
L Device:R R?
U 1 1 5EA892DD
P -1950 3950
AR Path="/5EA892DD" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892DD" Ref="R?"  Part="1" 
F 0 "R?" H -1880 3996 50  0000 L CNN
F 1 "10k" H -1880 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -2020 3950 50  0001 C CNN
F 3 "~" H -1950 3950 50  0001 C CNN
F 4 "APC0805B10K0N" H -1950 3950 50  0001 C CNN "MPN"
	1    -1950 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA892E4
P -1350 3950
AR Path="/5EA892E4" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892E4" Ref="R?"  Part="1" 
F 0 "R?" H -1550 4000 50  0000 L CNN
F 1 "10k" H -1550 3900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -1420 3950 50  0001 C CNN
F 3 "~" H -1350 3950 50  0001 C CNN
F 4 "APC0805B10K0N" H -1350 3950 50  0001 C CNN "MPN"
	1    -1350 3950
	1    0    0    -1  
$EndComp
Connection ~ -1350 3100
$Comp
L Device:R R?
U 1 1 5EA892EC
P -2250 4100
AR Path="/5EA892EC" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892EC" Ref="R?"  Part="1" 
F 0 "R?" V -2457 4100 50  0000 C CNN
F 1 "82k5" V -2366 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -2320 4100 50  0001 C CNN
F 3 "~" H -2250 4100 50  0001 C CNN
F 4 "PCF0805R-82K5BT1" H -2250 4100 50  0001 C CNN "MPN"
	1    -2250 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	-1950 4100 -1750 4100
Wire Wire Line
	-1750 4100 -1750 4250
Wire Wire Line
	-1350 4100 -1550 4100
Wire Wire Line
	-1550 4100 -1550 4250
$Comp
L Device:R R?
U 1 1 5EA892F7
P -1350 4550
AR Path="/5EA892F7" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892F7" Ref="R?"  Part="1" 
F 0 "R?" H -1280 4596 50  0000 L CNN
F 1 "82k5" H -1280 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -1420 4550 50  0001 C CNN
F 3 "~" H -1350 4550 50  0001 C CNN
F 4 "PCF0805R-82K5BT1" H -1350 4550 50  0001 C CNN "MPN"
	1    -1350 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1350 4850 -1500 4850
$Comp
L Device:R R?
U 1 1 5EA892FF
P -1500 5100
AR Path="/5EA892FF" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892FF" Ref="R?"  Part="1" 
F 0 "R?" H -1430 5146 50  0000 L CNN
F 1 "1k" H -1430 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -1570 5100 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H -1500 5100 50  0001 C CNN
F 4 "RT0805FRE071KL" H -1500 5100 50  0001 C CNN "MPN"
	1    -1500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1500 4850 -1500 4950
Connection ~ -1500 4850
Wire Wire Line
	-1500 4850 -1650 4850
$Comp
L Device:C_Small C?
U 1 1 5EA89309
P -1500 5600
AR Path="/5EA89309" Ref="C?"  Part="1" 
AR Path="/5CA3E8E1/5EA89309" Ref="C?"  Part="1" 
F 0 "C?" H -1400 5650 50  0000 L CNN
F 1 "1µF" H -1400 5550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H -1500 5600 50  0001 C CNN
F 3 "~" H -1500 5600 50  0001 C CNN
F 4 "TMK212B7105KG-T" H -1500 5600 50  0001 C CNN "MPN"
	1    -1500 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1500 5250 -1500 5400
$Comp
L symbols:OPA4196 U?
U 2 1 5EA89311
P -1650 4450
AR Path="/5EA89311" Ref="U?"  Part="2" 
AR Path="/5CA3E8E1/5EA89311" Ref="U?"  Part="3" 
F 0 "U?" V -1550 4800 50  0000 R CNN
F 1 "OPA4196" V -1450 4900 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H -1650 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H -1550 4750 50  0001 C CNN
F 4 "OPA4196IDR" H -1650 4450 50  0001 C CNN "MPN"
	2    -1650 4450
	0    -1   1    0   
$EndComp
Wire Wire Line
	-1950 3100 -2350 3100
Text HLabel -3050 3100 0    50   Input ~ 0
Vin
Text HLabel -600 3100 2    50   Output ~ 0
Vout
Wire Wire Line
	-1500 5400 -1700 5400
Wire Wire Line
	-1700 5400 -1700 5500
Connection ~ -1500 5400
Wire Wire Line
	-1500 5400 -1500 5500
Text HLabel -1700 5500 3    50   Output ~ 0
Iread
Wire Wire Line
	-1350 3100 -600 3100
Wire Wire Line
	-1950 3100 -1950 3800
Wire Wire Line
	-1550 4250 -1350 4250
Wire Wire Line
	-1350 4250 -1350 4400
Wire Wire Line
	-1350 4700 -1350 4850
Wire Wire Line
	-2450 4100 -2400 4100
Wire Wire Line
	-1950 4100 -2100 4100
Connection ~ -1950 4100
Connection ~ -1550 4250
Text Notes -1950 1950 0    39   ~ 0
Shunt resistors are at least 1/4W 1%
Text Notes -2700 4450 0    39   ~ 0
82.5 / 10 = gain of 8.25
Text Notes -1950 2100 0    39   ~ 0
4A * 0.1R = 0.4V\n
$Comp
L Connector:TestPoint TP?
U 1 1 5EA8932B
P -1250 5400
AR Path="/5CA3E8E1/5EA8932B" Ref="TP?"  Part="1" 
AR Path="/5EA8932B" Ref="TP?"  Part="1" 
F 0 "TP?" H -1192 5518 50  0000 L CNN
F 1 "Iread" H -1192 5427 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H -1050 5400 50  0001 C CNN
F 3 "~" H -1050 5400 50  0001 C CNN
	1    -1250 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1250 5400 -1500 5400
$Comp
L power:GNDA #PWR?
U 1 1 5EA89332
P -2450 4200
AR Path="/5CA3E8E1/5EA89332" Ref="#PWR?"  Part="1" 
AR Path="/5EA89332" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -2450 3950 50  0001 C CNN
F 1 "GNDA" H -2445 4027 50  0000 C CNN
F 2 "" H -2450 4200 50  0001 C CNN
F 3 "" H -2450 4200 50  0001 C CNN
	1    -2450 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5EA89338
P -1500 5700
AR Path="/5CA3E8E1/5EA89338" Ref="#PWR?"  Part="1" 
AR Path="/5EA89338" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -1500 5450 50  0001 C CNN
F 1 "GNDA" H -1495 5527 50  0000 C CNN
F 2 "" H -1500 5700 50  0001 C CNN
F 3 "" H -1500 5700 50  0001 C CNN
	1    -1500 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2450 4100 -2450 4200
$Comp
L Device:CP_Small C?
U 1 1 5EA8933F
P -2350 3200
AR Path="/5CA3E8E1/5EA8933F" Ref="C?"  Part="1" 
AR Path="/5EA8933F" Ref="C?"  Part="1" 
F 0 "C?" H -2262 3246 50  0000 L CNN
F 1 "100µF" H -2262 3155 50  0000 L CNN
F 2 "" H -2350 3200 50  0001 C CNN
F 3 "~" H -2350 3200 50  0001 C CNN
	1    -2350 3200
	1    0    0    -1  
$EndComp
Connection ~ -2350 3100
Wire Wire Line
	-2350 3100 -2800 3100
$Comp
L Device:CP_Small C?
U 1 1 5EA89347
P -2800 3200
AR Path="/5CA3E8E1/5EA89347" Ref="C?"  Part="1" 
AR Path="/5EA89347" Ref="C?"  Part="1" 
F 0 "C?" H -2712 3246 50  0000 L CNN
F 1 "100µF" H -2712 3155 50  0000 L CNN
F 2 "" H -2800 3200 50  0001 C CNN
F 3 "~" H -2800 3200 50  0001 C CNN
	1    -2800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2350 3300 -2600 3300
$Comp
L power:GNDA #PWR?
U 1 1 5EA8934E
P -2600 3300
AR Path="/5CA3E8E1/5EA8934E" Ref="#PWR?"  Part="1" 
AR Path="/5EA8934E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -2600 3050 50  0001 C CNN
F 1 "GNDA" H -2595 3127 50  0000 C CNN
F 2 "" H -2600 3300 50  0001 C CNN
F 3 "" H -2600 3300 50  0001 C CNN
	1    -2600 3300
	1    0    0    -1  
$EndComp
Connection ~ -2600 3300
Wire Wire Line
	-2600 3300 -2800 3300
Connection ~ -2800 3100
Wire Wire Line
	-2800 3100 -3050 3100
Wire Wire Line
	-1350 3100 -1350 3800
$Comp
L symbols:FQP17P10 U?
U 1 1 5EAA86F0
P -8725 5525
AR Path="/5EAA86F0" Ref="U?"  Part="1" 
AR Path="/5CA4A3FE/5EAA86F0" Ref="U?"  Part="1" 
F 0 "U?" V -8482 5525 50  0000 C CNN
F 1 "FQP17P10" V -8573 5525 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H -8775 5525 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/FQP17P10-1296917.pdf" H -8775 5525 50  0001 C CNN
F 4 "FQP17P10" H -8725 5525 50  0001 C CNN "MPN"
	1    -8725 5525
	0    1    -1   0   
$EndComp
$Comp
L symbols:FQP17P10 U?
U 1 1 5EAA86F7
P -8725 6125
AR Path="/5EAA86F7" Ref="U?"  Part="1" 
AR Path="/5CA4A3FE/5EAA86F7" Ref="U?"  Part="1" 
F 0 "U?" V -8482 6125 50  0000 C CNN
F 1 "FQP17P10" V -8573 6125 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H -8775 6125 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/FQP17P10-1296917.pdf" H -8775 6125 50  0001 C CNN
F 4 "FQP17P10" H -8725 6125 50  0001 C CNN "MPN"
	1    -8725 6125
	0    1    -1   0   
$EndComp
$Comp
L symbols:FQP17P10 U?
U 1 1 5EAA86FE
P -8725 6725
AR Path="/5EAA86FE" Ref="U?"  Part="1" 
AR Path="/5CA4A3FE/5EAA86FE" Ref="U?"  Part="1" 
F 0 "U?" V -8482 6725 50  0000 C CNN
F 1 "FQP17P10" V -8573 6725 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H -8775 6725 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/FQP17P10-1296917.pdf" H -8775 6725 50  0001 C CNN
F 4 "FQP17P10" H -8725 6725 50  0001 C CNN "MPN"
	1    -8725 6725
	0    1    -1   0   
$EndComp
Wire Wire Line
	-8925 5525 -9025 5525
Wire Wire Line
	-9025 6125 -8925 6125
Wire Wire Line
	-9025 6125 -9025 6725
Wire Wire Line
	-9025 6725 -8925 6725
Connection ~ -9025 6125
Wire Wire Line
	-8525 6725 -8375 6725
Wire Wire Line
	-8525 6125 -8375 6125
Connection ~ -8375 6125
Wire Wire Line
	-8375 6125 -8375 6725
Wire Wire Line
	-8525 5525 -8375 5525
Wire Wire Line
	-8375 5525 -8375 6125
Wire Wire Line
	-9025 5525 -9025 6125
Text HLabel -9675 6125 0    50   Input ~ 0
Vin
Wire Wire Line
	-8375 6125 -8175 6125
Text HLabel -6875 6125 2    50   Output ~ 0
Vout
Text HLabel -8725 7475 3    50   Input ~ 0
VReg_set
$Comp
L Device:C_Small C?
U 1 1 5EAA8715
P -9475 6225
AR Path="/5CA4A3FE/5EAA8715" Ref="C?"  Part="1" 
AR Path="/5EAA8715" Ref="C?"  Part="1" 
F 0 "C?" H -9383 6271 50  0000 L CNN
F 1 "10µF HV" H -9383 6180 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H -9475 6225 50  0001 C CNN
F 3 "~" H -9475 6225 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H -9475 6225 50  0001 C CNN "MPN"
	1    -9475 6225
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EAA871C
P -8175 6225
AR Path="/5CA4A3FE/5EAA871C" Ref="C?"  Part="1" 
AR Path="/5EAA871C" Ref="C?"  Part="1" 
F 0 "C?" H -8083 6271 50  0000 L CNN
F 1 "10µF HV" H -8083 6180 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H -8175 6225 50  0001 C CNN
F 3 "~" H -8175 6225 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H -8175 6225 50  0001 C CNN "MPN"
	1    -8175 6225
	1    0    0    -1  
$EndComp
Connection ~ -8175 6125
Wire Wire Line
	-9475 6125 -9025 6125
$Comp
L Mechanical:Heatsink HS?
U 1 1 5EAA8725
P -7325 4975
AR Path="/5CA4A3FE/5EAA8725" Ref="HS?"  Part="1" 
AR Path="/5EAA8725" Ref="HS?"  Part="1" 
F 0 "HS?" H -7184 5096 50  0000 L CNN
F 1 "RA-T2X-xxE" H -7184 5005 50  0000 L CNN
F 2 "footprints:RA-T2X-xxE" H -7313 4975 50  0001 C CNN
F 3 "~" H -7313 4975 50  0001 C CNN
F 4 "RA-T2X-25E" H -7325 4975 50  0001 C CNN "MPN"
	1    -7325 4975
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS?
U 1 1 5EAA872C
P -6525 4975
AR Path="/5CA4A3FE/5EAA872C" Ref="HS?"  Part="1" 
AR Path="/5EAA872C" Ref="HS?"  Part="1" 
F 0 "HS?" H -6384 5096 50  0000 L CNN
F 1 "RA-T2X-xxE" H -6384 5005 50  0000 L CNN
F 2 "footprints:RA-T2X-xxE" H -6513 4975 50  0001 C CNN
F 3 "~" H -6513 4975 50  0001 C CNN
F 4 "RA-T2X-25E" H -6525 4975 50  0001 C CNN "MPN"
	1    -6525 4975
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS?
U 1 1 5EAA8733
P -5725 4975
AR Path="/5CA4A3FE/5EAA8733" Ref="HS?"  Part="1" 
AR Path="/5EAA8733" Ref="HS?"  Part="1" 
F 0 "HS?" H -5584 5096 50  0000 L CNN
F 1 "RA-T2X-xxE" H -5584 5005 50  0000 L CNN
F 2 "footprints:RA-T2X-xxE" H -5713 4975 50  0001 C CNN
F 3 "~" H -5713 4975 50  0001 C CNN
F 4 "RA-T2X-25E" H -5725 4975 50  0001 C CNN "MPN"
	1    -5725 4975
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS?
U 1 1 5EAA873A
P -4925 4975
AR Path="/5CA4A3FE/5EAA873A" Ref="HS?"  Part="1" 
AR Path="/5EAA873A" Ref="HS?"  Part="1" 
F 0 "HS?" H -4784 5096 50  0000 L CNN
F 1 "RA-T2X-xxE" H -4784 5005 50  0000 L CNN
F 2 "footprints:RA-T2X-xxE" H -4913 4975 50  0001 C CNN
F 3 "~" H -4913 4975 50  0001 C CNN
F 4 "RA-T2X-25E" H -4925 4975 50  0001 C CNN "MPN"
	1    -4925 4975
	1    0    0    -1  
$EndComp
Connection ~ -8375 5525
Wire Wire Line
	-8375 4925 -8375 5525
Wire Wire Line
	-8525 4925 -8375 4925
Connection ~ -9025 5525
Wire Wire Line
	-9025 5525 -9025 4925
Wire Wire Line
	-9025 4925 -8925 4925
$Comp
L symbols:FQP17P10 U?
U 1 1 5EAA8747
P -8725 4925
AR Path="/5EAA8747" Ref="U?"  Part="1" 
AR Path="/5CA4A3FE/5EAA8747" Ref="U?"  Part="1" 
F 0 "U?" V -8482 4925 50  0000 C CNN
F 1 "FQP17P10" V -8573 4925 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H -8775 4925 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/FQP17P10-1296917.pdf" H -8775 4925 50  0001 C CNN
F 4 "FQP17P10" H -8725 4925 50  0001 C CNN "MPN"
	1    -8725 4925
	0    1    -1   0   
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5EAA874D
P -8175 6325
AR Path="/5CA4A3FE/5EAA874D" Ref="#PWR?"  Part="1" 
AR Path="/5EAA874D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -8175 6075 50  0001 C CNN
F 1 "GNDA" H -8170 6152 50  0000 C CNN
F 2 "" H -8175 6325 50  0001 C CNN
F 3 "" H -8175 6325 50  0001 C CNN
	1    -8175 6325
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5EAA8753
P -9475 6325
AR Path="/5CA4A3FE/5EAA8753" Ref="#PWR?"  Part="1" 
AR Path="/5EAA8753" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -9475 6075 50  0001 C CNN
F 1 "GNDA" H -9470 6152 50  0000 C CNN
F 2 "" H -9475 6325 50  0001 C CNN
F 3 "" H -9475 6325 50  0001 C CNN
	1    -9475 6325
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EAA875A
P -8725 7125
AR Path="/5CA4A3FE/5EAA875A" Ref="R?"  Part="1" 
AR Path="/5EAA875A" Ref="R?"  Part="1" 
F 0 "R?" H -8795 7079 50  0000 R CNN
F 1 "100R" H -8795 7170 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -8795 7125 50  0001 C CNN
F 3 "~" H -8725 7125 50  0001 C CNN
F 4 "RT0805FRE07100RL" H -8725 7125 50  0001 C CNN "MPN"
	1    -8725 7125
	-1   0    0    1   
$EndComp
Wire Wire Line
	-8725 7275 -8725 7475
$Comp
L Device:R R?
U 1 1 5EAA8762
P -8175 5775
AR Path="/5CA4A3FE/5EAA8762" Ref="R?"  Part="1" 
AR Path="/5EAA8762" Ref="R?"  Part="1" 
F 0 "R?" V -8375 5775 50  0000 C CNN
F 1 "100R" V -8275 5775 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -8245 5775 50  0001 C CNN
F 3 "~" H -8175 5775 50  0001 C CNN
F 4 "RT0805FRE07100RL" H -8175 5775 50  0001 C CNN "MPN"
	1    -8175 5775
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EAA8769
P -8175 5175
AR Path="/5CA4A3FE/5EAA8769" Ref="R?"  Part="1" 
AR Path="/5EAA8769" Ref="R?"  Part="1" 
F 0 "R?" V -8382 5175 50  0000 C CNN
F 1 "100R" V -8291 5175 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -8245 5175 50  0001 C CNN
F 3 "~" H -8175 5175 50  0001 C CNN
F 4 "RT0805FRE07100RL" H -8175 5175 50  0001 C CNN "MPN"
	1    -8175 5175
	0    1    1    0   
$EndComp
Wire Wire Line
	-8325 5175 -8725 5175
Wire Wire Line
	-8325 5775 -8725 5775
Connection ~ -8725 7275
$Comp
L Device:R R?
U 1 1 5EAA8773
P -9125 7125
AR Path="/5CA4A3FE/5EAA8773" Ref="R?"  Part="1" 
AR Path="/5EAA8773" Ref="R?"  Part="1" 
F 0 "R?" H -9055 7171 50  0000 L CNN
F 1 "100R" H -9055 7080 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -9195 7125 50  0001 C CNN
F 3 "~" H -9125 7125 50  0001 C CNN
F 4 "RT0805FRE07100RL" H -9125 7125 50  0001 C CNN "MPN"
	1    -9125 7125
	1    0    0    -1  
$EndComp
Wire Wire Line
	-9125 7275 -8725 7275
Wire Wire Line
	-9125 6975 -9125 6375
Wire Wire Line
	-9125 6375 -8725 6375
Wire Wire Line
	-8025 5775 -8025 5475
Text HLabel -7925 5475 2    50   Input ~ 0
VReg_set
Wire Wire Line
	-7925 5475 -8025 5475
Connection ~ -8025 5475
Wire Wire Line
	-8025 5475 -8025 5175
$Comp
L Device:CP_Small C?
U 1 1 5EAA8781
P -7625 6225
AR Path="/5CA4A3FE/5EAA8781" Ref="C?"  Part="1" 
AR Path="/5EAA8781" Ref="C?"  Part="1" 
F 0 "C?" H -7537 6271 50  0000 L CNN
F 1 "100µF" H -7537 6180 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H -7625 6225 50  0001 C CNN
F 3 "~" H -7625 6225 50  0001 C CNN
	1    -7625 6225
	1    0    0    -1  
$EndComp
Wire Wire Line
	-7625 6325 -7125 6325
$Comp
L Device:CP_Small C?
U 1 1 5EAA8788
P -7125 6225
AR Path="/5CA4A3FE/5EAA8788" Ref="C?"  Part="1" 
AR Path="/5EAA8788" Ref="C?"  Part="1" 
F 0 "C?" H -7037 6271 50  0000 L CNN
F 1 "100µF" H -7037 6180 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H -7125 6225 50  0001 C CNN
F 3 "~" H -7125 6225 50  0001 C CNN
	1    -7125 6225
	1    0    0    -1  
$EndComp
Wire Wire Line
	-8175 6125 -7625 6125
Connection ~ -7625 6125
Wire Wire Line
	-7625 6125 -7125 6125
Wire Wire Line
	-7625 6325 -8175 6325
Connection ~ -7625 6325
Connection ~ -8175 6325
Wire Wire Line
	-7125 6125 -6875 6125
Connection ~ -7125 6125
$Comp
L Device:C_Small C?
U 1 1 5EAA8797
P -8175 6025
AR Path="/5CA4A3FE/5EAA8797" Ref="C?"  Part="1" 
AR Path="/5EAA8797" Ref="C?"  Part="1" 
F 0 "C?" H -8083 6071 50  0000 L CNN
F 1 "10µF HV" H -8083 5980 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H -8175 6025 50  0001 C CNN
F 3 "~" H -8175 6025 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H -8175 6025 50  0001 C CNN "MPN"
	1    -8175 6025
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EAA879E
P -7625 6025
AR Path="/5CA4A3FE/5EAA879E" Ref="C?"  Part="1" 
AR Path="/5EAA879E" Ref="C?"  Part="1" 
F 0 "C?" H -7533 6071 50  0000 L CNN
F 1 "10µF HV" H -7533 5980 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H -7625 6025 50  0001 C CNN
F 3 "~" H -7625 6025 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H -7625 6025 50  0001 C CNN "MPN"
	1    -7625 6025
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5EAA87A4
P -7625 5925
AR Path="/5CA4A3FE/5EAA87A4" Ref="#PWR?"  Part="1" 
AR Path="/5EAA87A4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -7625 5675 50  0001 C CNN
F 1 "GNDA" H -7620 5752 50  0000 C CNN
F 2 "" H -7625 5925 50  0001 C CNN
F 3 "" H -7625 5925 50  0001 C CNN
	1    -7625 5925
	-1   0    0    1   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5EAA87AA
P -7125 6025
AR Path="/5CA4A3FE/5EAA87AA" Ref="C?"  Part="1" 
AR Path="/5EAA87AA" Ref="C?"  Part="1" 
F 0 "C?" H -7037 6071 50  0000 L CNN
F 1 "470µF" H -7037 5980 50  0000 L CNN
F 2 "" H -7125 6025 50  0001 C CNN
F 3 "~" H -7125 6025 50  0001 C CNN
	1    -7125 6025
	1    0    0    1   
$EndComp
Wire Wire Line
	-8175 5925 -7625 5925
Connection ~ -7625 5925
Wire Wire Line
	-7625 5925 -7125 5925
Wire Wire Line
	-9475 6125 -9675 6125
Connection ~ -9475 6125
Text HLabel -6275 8950 0    50   Input ~ 0
Vout
Text HLabel -5425 10950 0    50   Input ~ 0
Iset
Text HLabel -4925 10100 0    50   Input ~ 0
Vset
Wire Wire Line
	-3625 9050 -3425 9050
Wire Wire Line
	-3425 9050 -3425 9100
Wire Wire Line
	-3475 8400 -3475 7950
Wire Wire Line
	-3475 7950 -4075 7950
Wire Wire Line
	-4075 7950 -4075 8300
Connection ~ -4175 9050
Wire Wire Line
	-4175 9050 -3925 9050
Wire Wire Line
	-3475 8400 -3325 8400
Text HLabel -3175 8400 2    50   Output ~ 0
Vread
Text HLabel -5425 10750 0    50   Input ~ 0
Iread
Wire Wire Line
	-5425 10750 -5325 10750
Text HLabel -2775 10000 2    50   Output ~ 0
Vreg
Wire Wire Line
	-5675 9050 -5675 9350
Wire Wire Line
	-5675 9350 -6275 9350
Wire Wire Line
	-6275 9350 -6275 9150
Wire Wire Line
	-4175 8500 -4075 8500
Wire Wire Line
	-5425 10950 -5375 10950
Wire Wire Line
	-4175 9900 -4025 9900
Text Notes -5175 9250 0    39   ~ 0
(9.88 / 59.88) * 20 = 3.3\n
Connection ~ -5675 9050
Wire Wire Line
	-3325 8400 -3325 8300
Connection ~ -3325 8400
Wire Wire Line
	-3325 8400 -3175 8400
Wire Wire Line
	-5375 11100 -5375 10950
Connection ~ -5375 10950
Wire Wire Line
	-5375 10950 -5325 10950
$Comp
L Device:R R?
U 1 1 5EABE711
P -3775 9050
AR Path="/5CA4C891/5EABE711" Ref="R?"  Part="1" 
AR Path="/5EABE711" Ref="R?"  Part="1" 
F 0 "R?" V -3875 9100 50  0000 R CNN
F 1 "9k88" V -3675 9100 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -3845 9050 50  0001 C CNN
F 3 "~" H -3775 9050 50  0001 C CNN
F 4 "TNPW08059K88BEEN" H -3775 9050 50  0001 C CNN "MPN"
	1    -3775 9050
	0    1    1    0   
$EndComp
$Comp
L symbols:OPA4196 U?
U 4 1 5EABE718
P -3875 8400
AR Path="/5CA4C891/5EABE718" Ref="U?"  Part="4" 
AR Path="/5EABE718" Ref="U?"  Part="4" 
F 0 "U?" H -3750 8035 50  0000 C CNN
F 1 "OPA4196" H -3750 8126 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H -3875 8400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H -3775 8700 50  0001 C CNN
F 4 "OPA4196IDR" H -3875 8400 50  0001 C CNN "MPN"
	4    -3875 8400
	1    0    0    1   
$EndComp
$Comp
L symbols:OPA4196 U?
U 2 1 5EABE71F
P -3825 10000
AR Path="/5CA4C891/5EABE71F" Ref="U?"  Part="2" 
AR Path="/5EABE71F" Ref="U?"  Part="2" 
F 0 "U?" H -3700 10365 50  0000 C CNN
F 1 "OPA4196" H -3700 10274 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H -3825 10000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H -3725 10300 50  0001 C CNN
F 4 "OPA4196IDR" H -3825 10000 50  0001 C CNN "MPN"
	2    -3825 10000
	1    0    0    -1  
$EndComp
$Comp
L symbols:OPA4196 U?
U 3 1 5EABE726
P -5125 10850
AR Path="/5CA4C891/5EABE726" Ref="U?"  Part="3" 
AR Path="/5EABE726" Ref="U?"  Part="3" 
F 0 "U?" H -5000 11215 50  0000 C CNN
F 1 "OPA4196" H -5000 11124 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H -5125 10850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H -5025 11150 50  0001 C CNN
F 4 "OPA4196IDR" H -5125 10850 50  0001 C CNN "MPN"
	3    -5125 10850
	1    0    0    -1  
$EndComp
$Comp
L symbols:OPA4196 U?
U 5 1 5EABE72D
P -6075 9050
AR Path="/5CA4C891/5EABE72D" Ref="U?"  Part="5" 
AR Path="/5EABE72D" Ref="U?"  Part="5" 
F 0 "U?" H -5950 9415 50  0000 C CNN
F 1 "OPA4196" H -5950 9324 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H -6075 9050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H -5975 9350 50  0001 C CNN
F 4 "OPA4196IDR" H -6075 9050 50  0001 C CNN "MPN"
	5    -6075 9050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EABE734
P -3175 10000
AR Path="/5CA4C891/5EABE734" Ref="R?"  Part="1" 
AR Path="/5EABE734" Ref="R?"  Part="1" 
F 0 "R?" V -3382 10000 50  0000 C CNN
F 1 "1k" V -3291 10000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -3245 10000 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H -3175 10000 50  0001 C CNN
F 4 "RT0805FRE071KL" H -3175 10000 50  0001 C CNN "MPN"
	1    -3175 10000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EABE73B
P -5525 9050
AR Path="/5CA4C891/5EABE73B" Ref="R?"  Part="1" 
AR Path="/5EABE73B" Ref="R?"  Part="1" 
F 0 "R?" V -5732 9050 50  0000 C CNN
F 1 "10k" V -5641 9050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -5595 9050 50  0001 C CNN
F 3 "~" H -5525 9050 50  0001 C CNN
F 4 "APC0805B10K0N" H -5525 9050 50  0001 C CNN "MPN"
	1    -5525 9050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EABE742
P -4925 9050
AR Path="/5CA4C891/5EABE742" Ref="R?"  Part="1" 
AR Path="/5EABE742" Ref="R?"  Part="1" 
F 0 "R?" V -5132 9050 50  0000 C CNN
F 1 "10k" V -5041 9050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -4995 9050 50  0001 C CNN
F 3 "~" H -4925 9050 50  0001 C CNN
F 4 "APC0805B10K0N" H -4925 9050 50  0001 C CNN "MPN"
	1    -4925 9050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EABE749
P -4625 9050
AR Path="/5CA4C891/5EABE749" Ref="R?"  Part="1" 
AR Path="/5EABE749" Ref="R?"  Part="1" 
F 0 "R?" V -4832 9050 50  0000 C CNN
F 1 "10k" V -4741 9050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -4695 9050 50  0001 C CNN
F 3 "~" H -4625 9050 50  0001 C CNN
F 4 "APC0805B10K0N" H -4625 9050 50  0001 C CNN "MPN"
	1    -4625 9050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EABE750
P -4325 9050
AR Path="/5CA4C891/5EABE750" Ref="R?"  Part="1" 
AR Path="/5EABE750" Ref="R?"  Part="1" 
F 0 "R?" V -4532 9050 50  0000 C CNN
F 1 "10k" V -4441 9050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -4395 9050 50  0001 C CNN
F 3 "~" H -4325 9050 50  0001 C CNN
F 4 "APC0805B10K0N" H -4325 9050 50  0001 C CNN "MPN"
	1    -4325 9050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EABE757
P -5225 9050
AR Path="/5CA4C891/5EABE757" Ref="R?"  Part="1" 
AR Path="/5EABE757" Ref="R?"  Part="1" 
F 0 "R?" V -5432 9050 50  0000 C CNN
F 1 "10k" V -5341 9050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -5295 9050 50  0001 C CNN
F 3 "~" H -5225 9050 50  0001 C CNN
F 4 "APC0805B10K0N" H -5225 9050 50  0001 C CNN "MPN"
	1    -5225 9050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE75D
P -3325 8300
AR Path="/5CA4C891/5EABE75D" Ref="TP?"  Part="1" 
AR Path="/5EABE75D" Ref="TP?"  Part="1" 
F 0 "TP?" H -3267 8418 50  0000 L CNN
F 1 "Vread" H -3267 8327 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H -3125 8300 50  0001 C CNN
F 3 "~" H -3125 8300 50  0001 C CNN
	1    -3325 8300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE763
P -2900 9925
AR Path="/5CA4C891/5EABE763" Ref="TP?"  Part="1" 
AR Path="/5EABE763" Ref="TP?"  Part="1" 
F 0 "TP?" H -2842 10043 50  0000 L CNN
F 1 "Vreg" H -2842 9952 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H -2700 9925 50  0001 C CNN
F 3 "~" H -2700 9925 50  0001 C CNN
	1    -2900 9925
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE769
P -4275 9950
AR Path="/5CA4C891/5EABE769" Ref="TP?"  Part="1" 
AR Path="/5EABE769" Ref="TP?"  Part="1" 
F 0 "TP?" H -4333 9976 50  0000 R CNN
F 1 "Vset" H -4333 10067 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H -4075 9950 50  0001 C CNN
F 3 "~" H -4075 9950 50  0001 C CNN
	1    -4275 9950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE76F
P -5375 11100
AR Path="/5CA4C891/5EABE76F" Ref="TP?"  Part="1" 
AR Path="/5EABE76F" Ref="TP?"  Part="1" 
F 0 "TP?" H -5433 11126 50  0000 R CNN
F 1 "Iset" H -5433 11217 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H -5175 11100 50  0001 C CNN
F 3 "~" H -5175 11100 50  0001 C CNN
	1    -5375 11100
	-1   0    0    1   
$EndComp
Wire Wire Line
	-4175 9050 -4175 9900
$Comp
L power:GNDA #PWR?
U 1 1 5EABE776
P -3425 9100
AR Path="/5CA4C891/5EABE776" Ref="#PWR?"  Part="1" 
AR Path="/5EABE776" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -3425 8850 50  0001 C CNN
F 1 "GNDA" H -3420 8927 50  0000 C CNN
F 2 "" H -3425 9100 50  0001 C CNN
F 3 "" H -3425 9100 50  0001 C CNN
	1    -3425 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4175 8500 -4175 9050
Wire Wire Line
	-3425 10000 -3325 10000
Wire Wire Line
	-4275 10100 -4025 10100
Wire Wire Line
	-4500 10100 -4275 10100
Connection ~ -4275 10100
$Comp
L Device:R R?
U 1 1 5EABE781
P -4650 10100
AR Path="/5CA4C891/5EABE781" Ref="R?"  Part="1" 
AR Path="/5EABE781" Ref="R?"  Part="1" 
F 0 "R?" V -4857 10100 50  0000 C CNN
F 1 "10K" V -4766 10100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V -4720 10100 50  0001 C CNN
F 3 "CRCW080510K0FKEAC" H -4650 10100 50  0001 C CNN
	1    -4650 10100
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5EABE787
P -4375 10450
AR Path="/5CA4C891/5EABE787" Ref="Q?"  Part="1" 
AR Path="/5EABE787" Ref="Q?"  Part="1" 
F 0 "Q?" H -4169 10496 50  0000 L CNN
F 1 "Q_NMOS_GSD" H -4169 10405 50  0000 L CNN
F 2 "" H -4175 10550 50  0001 C CNN
F 3 "~" H -4375 10450 50  0001 C CNN
	1    -4375 10450
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4275 10250 -4275 10100
Wire Wire Line
	-4275 9950 -4275 10100
$Comp
L Device:R R?
U 1 1 5EABE78F
P -4625 10650
AR Path="/5CA4C891/5EABE78F" Ref="R?"  Part="1" 
AR Path="/5EABE78F" Ref="R?"  Part="1" 
F 0 "R?" H -4555 10696 50  0000 L CNN
F 1 "100R" H -4555 10605 50  0000 L CNN
F 2 "" V -4695 10650 50  0001 C CNN
F 3 "~" H -4625 10650 50  0001 C CNN
	1    -4625 10650
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4575 10450 -4625 10450
Wire Wire Line
	-4625 10450 -4625 10500
Wire Wire Line
	-4625 10800 -4625 10850
Wire Wire Line
	-4625 10850 -4725 10850
Wire Wire Line
	-4275 10650 -4275 10800
$Comp
L power:GNDA #PWR?
U 1 1 5EABE79A
P -4275 10800
AR Path="/5CA4C891/5EABE79A" Ref="#PWR?"  Part="1" 
AR Path="/5EABE79A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -4275 10550 50  0001 C CNN
F 1 "GNDA" H -4270 10627 50  0000 C CNN
F 2 "" H -4275 10800 50  0001 C CNN
F 3 "" H -4275 10800 50  0001 C CNN
	1    -4275 10800
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2775 10000 -2900 10000
Wire Wire Line
	-2900 9925 -2900 10000
Connection ~ -2900 10000
Wire Wire Line
	-2900 10000 -3025 10000
Wire Wire Line
	-4925 10100 -4800 10100
$Comp
L Connector:USB_A J?
U 1 1 5EB445F8
P 19775 4075
F 0 "J?" H 19830 4542 50  0000 C CNN
F 1 "USB_A" H 19830 4451 50  0000 C CNN
F 2 "footprints:USBA" H 19925 4025 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/643/bel_SS-52100-001-1216592.pdf" H 19925 4025 50  0001 C CNN
F 4 "SS-52100-001" H 19775 4075 50  0001 C CNN "MPN"
	1    19775 4075
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F3:STM32F373C8Tx U?
U 1 1 5EB445FF
P 18975 7075
F 0 "U?" H 18975 7225 50  0000 C CNN
F 1 "STM32F373C8Tx" H 18975 7075 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 18375 5575 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00046749.pdf" H 18975 7075 50  0001 C CNN
F 4 "STM32F373C8T6" H 18975 7075 50  0001 C CNN "MPN"
	1    18975 7075
	1    0    0    -1  
$EndComp
Text Label 20075 4075 0    50   ~ 0
USB_D+
Text Label 20075 4175 0    50   ~ 0
USB_D-
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44607
P 19775 4475
F 0 "#PWR?" H 19775 4225 50  0001 C CNN
F 1 "GNDREF" H 19780 4302 50  0001 C CNN
F 2 "" H 19775 4475 50  0001 C CNN
F 3 "" H 19775 4475 50  0001 C CNN
	1    19775 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	19675 4475 19775 4475
Connection ~ 19775 4475
Text Label 19675 6875 0    50   ~ 0
USB_D+
Text Label 19675 6775 0    50   ~ 0
USB_D-
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44611
P 18975 8675
F 0 "#PWR?" H 18975 8425 50  0001 C CNN
F 1 "GNDREF" H 18980 8502 50  0001 C CNN
F 2 "" H 18975 8675 50  0001 C CNN
F 3 "" H 18975 8675 50  0001 C CNN
	1    18975 8675
	1    0    0    -1  
$EndComp
Wire Wire Line
	20075 4075 20525 4075
$Comp
L Device:R R?
U 1 1 5EB44619
P 20525 3925
F 0 "R?" H 20595 3971 50  0000 L CNN
F 1 "1k" H 20595 3880 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 20455 3925 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 20525 3925 50  0001 C CNN
F 4 "RT0805FRE071KL" H 20525 3925 50  0001 C CNN "MPN"
	1    20525 3925
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB4461F
P 14925 7925
F 0 "#PWR?" H 14925 7675 50  0001 C CNN
F 1 "GNDREF" V 14930 7797 50  0001 R CNN
F 2 "" H 14925 7925 50  0001 C CNN
F 3 "" H 14925 7925 50  0001 C CNN
	1    14925 7925
	0    1    1    0   
$EndComp
Text Label 14775 7325 0    50   ~ 0
ENC1_A
Text Label 14775 8475 0    50   ~ 0
ENC1_B
Text Label 15875 9575 0    50   ~ 0
ENC0_SW
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44628
P 15525 8025
F 0 "#PWR?" H 15525 7775 50  0001 C CNN
F 1 "GNDREF" H 15530 7852 50  0001 C CNN
F 2 "" H 15525 8025 50  0001 C CNN
F 3 "" H 15525 8025 50  0001 C CNN
	1    15525 8025
	1    0    0    -1  
$EndComp
Text Label 15875 7825 0    50   ~ 0
ENC1_SW
Text HLabel 19675 6175 2    50   Input ~ 0
CLIM
Text HLabel 18275 7775 0    50   Input ~ 0
Vread
Text HLabel 16925 7850 0    50   Input ~ 0
Iread
Text HLabel 19675 6275 2    50   Output ~ 0
Iset
Text HLabel 19675 6375 2    50   Output ~ 0
Vset
$Comp
L power:+3V3 #PWR?
U 1 1 5EB44634
P 20525 3475
F 0 "#PWR?" H 20525 3325 50  0001 C CNN
F 1 "+3V3" H 20540 3648 50  0000 C CNN
F 2 "" H 20525 3475 50  0001 C CNN
F 3 "" H 20525 3475 50  0001 C CNN
	1    20525 3475
	1    0    0    -1  
$EndComp
Text Label 18275 5975 2    50   ~ 0
BOOT0
Text Label 19675 5775 0    50   ~ 0
ENC0_A
Text Label 19675 5875 0    50   ~ 0
ENC0_B
Text Label 19675 7975 0    50   ~ 0
ENC1_A
Text Label 19675 8075 0    50   ~ 0
ENC1_B
Text Label 19675 5975 0    50   ~ 0
ENC0_SW
Text Label 19675 6075 0    50   ~ 0
ENC1_SW
NoConn ~ 20075 3875
$Comp
L Device:R R?
U 1 1 5EB44643
P 21375 8125
F 0 "R?" V 21425 8375 50  0000 C CNN
F 1 "1k" V 21425 7925 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 21305 8125 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 21375 8125 50  0001 C CNN
F 4 "RT0805FRE071KL" H 21375 8125 50  0001 C CNN "MPN"
	1    21375 8125
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5EB44649
P 21025 7975
F 0 "#PWR?" H 21025 7825 50  0001 C CNN
F 1 "+3V3" V 21040 8103 50  0000 L CNN
F 2 "" H 21025 7975 50  0001 C CNN
F 3 "" H 21025 7975 50  0001 C CNN
	1    21025 7975
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44650
P 20375 3625
F 0 "R?" H 20445 3671 50  0000 L CNN
F 1 "1k" H 20445 3580 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 20305 3625 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 20375 3625 50  0001 C CNN
F 4 "RT0805FRE071KL" H 20375 3625 50  0001 C CNN "MPN"
	1    20375 3625
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44657
P 20675 3625
F 0 "R?" H 20745 3671 50  0000 L CNN
F 1 "1k" H 20745 3580 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 20605 3625 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 20675 3625 50  0001 C CNN
F 4 "RT0805FRE071KL" H 20675 3625 50  0001 C CNN "MPN"
	1    20675 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	20675 3775 20525 3775
Connection ~ 20525 3775
Wire Wire Line
	20525 3775 20375 3775
Wire Wire Line
	20375 3475 20525 3475
Connection ~ 20525 3475
Wire Wire Line
	20525 3475 20675 3475
$Comp
L Device:C_Small C?
U 1 1 5EB44664
P 15225 3525
F 0 "C?" H 15317 3571 50  0000 L CNN
F 1 "1µF" H 15317 3480 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 15225 3525 50  0001 C CNN
F 3 "~" H 15225 3525 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 15225 3525 50  0001 C CNN "MPN"
	1    15225 3525
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB4466B
P 14825 3525
F 0 "C?" H 14917 3571 50  0000 L CNN
F 1 "100nF" H 14917 3480 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14825 3525 50  0001 C CNN
F 3 "~" H 14825 3525 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 14825 3525 50  0001 C CNN "MPN"
	1    14825 3525
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB44672
P 14425 3525
F 0 "C?" H 14517 3571 50  0000 L CNN
F 1 "10nF" H 14517 3480 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14425 3525 50  0001 C CNN
F 3 "~" H 14425 3525 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 14425 3525 50  0001 C CNN "MPN"
	1    14425 3525
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB44679
P 15225 4175
F 0 "C?" H 15317 4221 50  0000 L CNN
F 1 "1µF" H 15317 4130 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 15225 4175 50  0001 C CNN
F 3 "~" H 15225 4175 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 15225 4175 50  0001 C CNN "MPN"
	1    15225 4175
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB44680
P 14825 4175
F 0 "C?" H 14917 4221 50  0000 L CNN
F 1 "100nF" H 14917 4130 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14825 4175 50  0001 C CNN
F 3 "~" H 14825 4175 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 14825 4175 50  0001 C CNN "MPN"
	1    14825 4175
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB44687
P 14425 4175
F 0 "C?" H 14517 4221 50  0000 L CNN
F 1 "10nF" H 14517 4130 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14425 4175 50  0001 C CNN
F 3 "~" H 14425 4175 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 14425 4175 50  0001 C CNN "MPN"
	1    14425 4175
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB4468E
P 15225 4825
F 0 "C?" H 15317 4871 50  0000 L CNN
F 1 "1µF" H 15317 4780 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 15225 4825 50  0001 C CNN
F 3 "~" H 15225 4825 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 15225 4825 50  0001 C CNN "MPN"
	1    15225 4825
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB44695
P 14825 4825
F 0 "C?" H 14917 4871 50  0000 L CNN
F 1 "100nF" H 14917 4780 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14825 4825 50  0001 C CNN
F 3 "~" H 14825 4825 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 14825 4825 50  0001 C CNN "MPN"
	1    14825 4825
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB4469C
P 14425 4825
F 0 "C?" H 14517 4871 50  0000 L CNN
F 1 "10nF" H 14517 4780 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14425 4825 50  0001 C CNN
F 3 "~" H 14425 4825 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 14425 4825 50  0001 C CNN "MPN"
	1    14425 4825
	1    0    0    1   
$EndComp
Text Label 15725 3425 0    50   ~ 0
VDDA
Text Label 19175 5575 1    50   ~ 0
VDDA
Text Label 19275 5575 1    50   ~ 0
VDDSD
Text Label 19075 5575 1    50   ~ 0
VDD1
Text Label 18275 6175 2    50   ~ 0
VREFSD
Wire Wire Line
	14425 4725 14825 4725
Wire Wire Line
	14425 4925 14825 4925
Connection ~ 14825 4925
Wire Wire Line
	14825 4925 15225 4925
Connection ~ 14825 4725
Wire Wire Line
	14825 4725 15225 4725
Connection ~ 15225 4725
Wire Wire Line
	15225 4725 15525 4725
Connection ~ 15225 4075
Wire Wire Line
	15225 4075 15525 4075
Wire Wire Line
	14425 4075 14825 4075
Wire Wire Line
	14425 4275 14825 4275
Connection ~ 14825 4275
Wire Wire Line
	14825 4275 15225 4275
Connection ~ 14825 4075
Wire Wire Line
	14825 4075 15225 4075
Connection ~ 15225 3425
Wire Wire Line
	15225 3425 15525 3425
Wire Wire Line
	14425 3425 14825 3425
Wire Wire Line
	14825 3625 15225 3625
Connection ~ 14825 3425
Wire Wire Line
	14825 3425 15225 3425
Text Label 15725 4075 0    50   ~ 0
VDDSD
Text Label 15725 4725 0    50   ~ 0
VREFSD
$Comp
L power:+3V3 #PWR?
U 1 1 5EB446BF
P 14425 5375
F 0 "#PWR?" H 14425 5225 50  0001 C CNN
F 1 "+3V3" H 14440 5548 50  0000 C CNN
F 2 "" H 14425 5375 50  0001 C CNN
F 3 "" H 14425 5375 50  0001 C CNN
	1    14425 5375
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB446C5
P 14425 5575
F 0 "#PWR?" H 14425 5325 50  0001 C CNN
F 1 "GNDREF" H 14430 5402 50  0001 C CNN
F 2 "" H 14425 5575 50  0001 C CNN
F 3 "" H 14425 5575 50  0001 C CNN
	1    14425 5575
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB446CC
P 14425 5475
F 0 "C?" H 14517 5521 50  0000 L CNN
F 1 "4.7µF" H 14517 5430 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14425 5475 50  0001 C CNN
F 3 "~" H 14425 5475 50  0001 C CNN
F 4 "GRM21BR71C475KE51L" H 14425 5475 50  0001 C CNN "MPN"
	1    14425 5475
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB446D3
P 14825 5475
F 0 "C?" H 14917 5521 50  0000 L CNN
F 1 "100nF" H 14917 5430 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14825 5475 50  0001 C CNN
F 3 "~" H 14825 5475 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 14825 5475 50  0001 C CNN "MPN"
	1    14825 5475
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB446DA
P 15225 5475
F 0 "C?" H 15317 5521 50  0000 L CNN
F 1 "100nF" H 15317 5430 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 15225 5475 50  0001 C CNN
F 3 "~" H 15225 5475 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 15225 5475 50  0001 C CNN "MPN"
	1    15225 5475
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB446E1
P 15625 5475
F 0 "C?" H 15717 5521 50  0000 L CNN
F 1 "100nF" H 15717 5430 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 15625 5475 50  0001 C CNN
F 3 "~" H 15625 5475 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 15625 5475 50  0001 C CNN "MPN"
	1    15625 5475
	1    0    0    -1  
$EndComp
Wire Wire Line
	14425 5375 14825 5375
Connection ~ 14425 5375
Connection ~ 14825 5375
Wire Wire Line
	14825 5375 15225 5375
Connection ~ 15225 5375
Wire Wire Line
	15225 5375 15625 5375
Wire Wire Line
	14425 5575 14825 5575
Connection ~ 14425 5575
Connection ~ 14825 5575
Wire Wire Line
	14825 5575 15225 5575
Connection ~ 15225 5575
Wire Wire Line
	15225 5575 15625 5575
$Comp
L Device:C_Small C?
U 1 1 5EB446F4
P 16025 5475
F 0 "C?" H 16117 5521 50  0000 L CNN
F 1 "10nF" H 16117 5430 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 16025 5475 50  0001 C CNN
F 3 "~" H 16025 5475 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 16025 5475 50  0001 C CNN "MPN"
	1    16025 5475
	1    0    0    -1  
$EndComp
Wire Wire Line
	15625 5375 16025 5375
Connection ~ 15625 5375
Wire Wire Line
	16025 5575 15625 5575
Connection ~ 15625 5575
Wire Wire Line
	16025 5375 16325 5375
Connection ~ 16025 5375
Text Label 16525 5375 0    50   ~ 0
VDD1
$Comp
L Device:Rotary_Encoder_Switch SW?
U 1 1 5EB44702
P 15225 7925
F 0 "SW?" H 15225 8292 50  0000 C CNN
F 1 "ENC1 (Current)" H 15225 8201 50  0000 C CNN
F 2 "footprints:PEC12R-2xxxf-Sxxxx" H 15075 8085 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/54/EC12R-777795.pdf" H 15225 8185 50  0001 C CNN
F 4 "PEC12R-2220F-S0024" H 15225 7925 50  0001 C CNN "MPN"
	1    15225 7925
	1    0    0    -1  
$EndComp
Wire Wire Line
	21825 8075 21825 8275
Wire Wire Line
	21825 8275 21925 8275
$Comp
L power:GNDREF #PWR?
U 1 1 5EB4470A
P 21925 8275
F 0 "#PWR?" H 21925 8025 50  0001 C CNN
F 1 "GNDREF" H 21930 8102 50  0001 C CNN
F 2 "" H 21925 8275 50  0001 C CNN
F 3 "" H 21925 8275 50  0001 C CNN
	1    21925 8275
	1    0    0    -1  
$EndComp
Wire Wire Line
	21875 6875 22075 6875
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44711
P 22075 6875
F 0 "#PWR?" H 22075 6625 50  0001 C CNN
F 1 "GNDREF" H 22080 6702 50  0001 C CNN
F 2 "" H 22075 6875 50  0001 C CNN
F 3 "" H 22075 6875 50  0001 C CNN
	1    22075 6875
	1    0    0    -1  
$EndComp
Wire Wire Line
	21875 7175 21725 7175
Wire Wire Line
	21525 7175 21525 7125
$Comp
L Device:R R?
U 1 1 5EB4471A
P 21375 7975
F 0 "R?" V 21425 8225 50  0000 C CNN
F 1 "1k" V 21425 7775 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 21305 7975 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 21375 7975 50  0001 C CNN
F 4 "RT0805FRE071KL" H 21375 7975 50  0001 C CNN "MPN"
	1    21375 7975
	0    -1   -1   0   
$EndComp
Wire Wire Line
	21525 8125 21525 7975
Wire Wire Line
	21225 7975 21225 8125
Wire Wire Line
	21525 7975 21875 7975
Connection ~ 21525 7975
Wire Wire Line
	21225 7975 21025 7975
Connection ~ 21225 7975
Text Label 18275 5775 2    50   ~ 0
NRST
Text Label 19425 10125 0    50   ~ 0
NRST
$Comp
L Connector_Generic:Conn_01x11 J?
U 1 1 5EB44729
P 22075 7575
F 0 "J?" H 22155 7617 50  0000 L CNN
F 1 "Display" H 22155 7526 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x11_P2.54mm_Vertical" H 22075 7575 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/276/0022284150_PCB_HEADERS-159054.pdf" H 22075 7575 50  0001 C CNN
F 4 "M20-9991646" H 22075 7575 50  0001 C CNN "MPN"
	1    22075 7575
	1    0    0    -1  
$EndComp
Wire Wire Line
	21875 6875 21875 7075
Wire Wire Line
	21875 8075 21825 8075
Wire Wire Line
	18875 5575 18975 5575
Connection ~ 18975 5575
Wire Wire Line
	18975 5575 19075 5575
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44734
P 24025 3825
F 0 "#PWR?" H 24025 3575 50  0001 C CNN
F 1 "GNDREF" V 24030 3697 50  0001 R CNN
F 2 "" H 24025 3825 50  0001 C CNN
F 3 "" H 24025 3825 50  0001 C CNN
	1    24025 3825
	0    -1   -1   0   
$EndComp
Text Label 24175 4175 0    50   ~ 0
OUTPUT_ON
$Comp
L Device:LED D?
U 1 1 5EB4473C
P 23275 3825
F 0 "D?" H 23268 3570 50  0000 C CNN
F 1 "GREEN" H 23268 3661 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 23275 3825 50  0001 C CNN
F 3 "~" H 23275 3825 50  0001 C CNN
F 4 "APTD3216LZGCK" H 23275 3825 50  0001 C CNN "MPN"
	1    23275 3825
	-1   0    0    1   
$EndComp
Text Label 19675 8175 0    50   ~ 0
OUTPUT_ON
Wire Wire Line
	18275 5975 17725 5975
$Comp
L Device:R R?
U 1 1 5EB44745
P 17725 6125
F 0 "R?" H 17795 6171 50  0000 L CNN
F 1 "10k" H 17795 6080 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 17655 6125 50  0001 C CNN
F 3 "~" H 17725 6125 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 17725 6125 50  0001 C CNN "MPN"
	1    17725 6125
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB4474B
P 17725 6275
F 0 "#PWR?" H 17725 6025 50  0001 C CNN
F 1 "GNDREF" H 17730 6102 50  0001 C CNN
F 2 "" H 17725 6275 50  0001 C CNN
F 3 "" H 17725 6275 50  0001 C CNN
	1    17725 6275
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5EB44752
P 17575 7325
F 0 "Y?" V 17525 7075 50  0000 L CNN
F 1 "Crystal" V 17625 6925 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 17575 7325 50  0001 C CNN
F 3 "~" H 17575 7325 50  0001 C CNN
F 4 "LFXTAL033206" H 17575 7325 50  0001 C CNN "MPN"
	1    17575 7325
	0    1    1    0   
$EndComp
Wire Wire Line
	18275 7275 17875 7275
Wire Wire Line
	17875 7275 17875 7175
Wire Wire Line
	17875 7175 17575 7175
Wire Wire Line
	17575 7475 17875 7475
Wire Wire Line
	17875 7475 17875 7375
Wire Wire Line
	17875 7375 18275 7375
$Comp
L Device:C_Small C?
U 1 1 5EB4475F
P 17575 7075
F 0 "C?" H 17667 7121 50  0000 L CNN
F 1 "10pF" H 17667 7030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 17575 7075 50  0001 C CNN
F 3 "~" H 17575 7075 50  0001 C CNN
F 4 "C0805C100J5GAC" H 17575 7075 50  0001 C CNN "MPN"
	1    17575 7075
	1    0    0    -1  
$EndComp
Connection ~ 17575 7175
$Comp
L Device:C_Small C?
U 1 1 5EB44767
P 17575 7575
F 0 "C?" H 17667 7621 50  0000 L CNN
F 1 "10pF" H 17667 7530 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 17575 7575 50  0001 C CNN
F 3 "~" H 17575 7575 50  0001 C CNN
F 4 "C0805C100J5GAC" H 17575 7575 50  0001 C CNN "MPN"
	1    17575 7575
	1    0    0    -1  
$EndComp
Connection ~ 17575 7475
$Comp
L power:GNDREF #PWR?
U 1 1 5EB4476E
P 17575 7675
F 0 "#PWR?" H 17575 7425 50  0001 C CNN
F 1 "GNDREF" H 17580 7502 50  0001 C CNN
F 2 "" H 17575 7675 50  0001 C CNN
F 3 "" H 17575 7675 50  0001 C CNN
	1    17575 7675
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44774
P 17575 6975
F 0 "#PWR?" H 17575 6725 50  0001 C CNN
F 1 "GNDREF" H 17580 6802 50  0001 C CNN
F 2 "" H 17575 6975 50  0001 C CNN
F 3 "" H 17575 6975 50  0001 C CNN
	1    17575 6975
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5EB4477B
P 18925 10125
F 0 "SW?" H 18925 10410 50  0000 C CNN
F 1 "RST" H 18925 10319 50  0000 C CNN
F 2 "footprints:LL3301NF065QG" H 18925 10325 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/140/P090002-267756.pdf" H 18925 10325 50  0001 C CNN
F 4 "LL3301NF065QG" H 18925 10125 50  0001 C CNN "MPN"
	1    18925 10125
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44781
P 18725 10125
F 0 "#PWR?" H 18725 9875 50  0001 C CNN
F 1 "GNDREF" H 18730 9952 50  0001 C CNN
F 2 "" H 18725 10125 50  0001 C CNN
F 3 "" H 18725 10125 50  0001 C CNN
	1    18725 10125
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44788
P 19275 10125
F 0 "R?" V 19068 10125 50  0000 C CNN
F 1 "1k" V 19159 10125 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 19205 10125 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 19275 10125 50  0001 C CNN
F 4 "RT0805FRE071KL" H 19275 10125 50  0001 C CNN "MPN"
	1    19275 10125
	0    1    1    0   
$EndComp
Wire Wire Line
	19425 10125 19625 10125
$Comp
L Device:C_Small C?
U 1 1 5EB44790
P 19625 10225
F 0 "C?" H 19717 10271 50  0000 L CNN
F 1 "10nF" H 19717 10180 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 19625 10225 50  0001 C CNN
F 3 "~" H 19625 10225 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 19625 10225 50  0001 C CNN "MPN"
	1    19625 10225
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44796
P 19625 10325
F 0 "#PWR?" H 19625 10075 50  0001 C CNN
F 1 "GNDREF" H 19630 10152 50  0001 C CNN
F 2 "" H 19625 10325 50  0001 C CNN
F 3 "" H 19625 10325 50  0001 C CNN
	1    19625 10325
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5EB4479C
P 14425 4725
F 0 "#PWR?" H 14425 4575 50  0001 C CNN
F 1 "+3V3" H 14440 4898 50  0000 C CNN
F 2 "" H 14425 4725 50  0001 C CNN
F 3 "" H 14425 4725 50  0001 C CNN
	1    14425 4725
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5EB447A2
P 14425 4075
F 0 "#PWR?" H 14425 3925 50  0001 C CNN
F 1 "+3V3" H 14440 4248 50  0000 C CNN
F 2 "" H 14425 4075 50  0001 C CNN
F 3 "" H 14425 4075 50  0001 C CNN
	1    14425 4075
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5EB447A8
P 14425 3425
F 0 "#PWR?" H 14425 3275 50  0001 C CNN
F 1 "+3V3" H 14440 3598 50  0000 C CNN
F 2 "" H 14425 3425 50  0001 C CNN
F 3 "" H 14425 3425 50  0001 C CNN
	1    14425 3425
	1    0    0    -1  
$EndComp
Text Label 19675 6575 0    50   ~ 0
USART_TX
Text Label 19675 6675 0    50   ~ 0
USART_RX
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 5EB447B0
P 22075 6475
F 0 "J?" H 22155 6467 50  0000 L CNN
F 1 "USART" H 22155 6376 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 22075 6475 50  0001 C CNN
F 3 "~" H 22075 6475 50  0001 C CNN
	1    22075 6475
	1    0    0    -1  
$EndComp
Wire Wire Line
	21875 6875 21875 6675
Connection ~ 21875 6875
Text Label 21875 6475 2    50   ~ 0
USART_TX
Text Label 21875 6275 2    50   ~ 0
USART_RX
$Comp
L power:+3.3V #PWR?
U 1 1 5EB447BA
P 21525 7125
F 0 "#PWR?" H 21525 6975 50  0001 C CNN
F 1 "+3.3V" H 21540 7298 50  0000 C CNN
F 2 "" H 21525 7125 50  0001 C CNN
F 3 "" H 21525 7125 50  0001 C CNN
	1    21525 7125
	1    0    0    -1  
$EndComp
Text Label 19675 6975 0    50   ~ 0
Display_RS
Text Label 18275 7575 2    50   ~ 0
Display_E
Text Label 19675 7075 0    50   ~ 0
Display_D4
Text Label 19675 7175 0    50   ~ 0
Display_D5
Text Label 19675 7675 0    50   ~ 0
Display_D6
Text Label 19675 7775 0    50   ~ 0
Display_D7
Text Label 21875 7275 2    50   ~ 0
Display_RS
Text Label 21875 7675 2    50   ~ 0
Display_D5
Text Label 21875 7575 2    50   ~ 0
Display_D4
Text Label 21875 7775 2    50   ~ 0
Display_D6
Text Label 21875 7875 2    50   ~ 0
Display_D7
$Comp
L Device:C_Small C?
U 1 1 5EB447CC
P 20975 3475
F 0 "C?" V 20746 3475 50  0000 C CNN
F 1 "10nF" V 20837 3475 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 20975 3475 50  0001 C CNN
F 3 "~" H 20975 3475 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 20975 3475 50  0001 C CNN "MPN"
	1    20975 3475
	0    1    1    0   
$EndComp
Wire Wire Line
	20875 3475 20675 3475
Connection ~ 20675 3475
$Comp
L power:GNDREF #PWR?
U 1 1 5EB447D4
P 21075 3475
F 0 "#PWR?" H 21075 3225 50  0001 C CNN
F 1 "GNDREF" V 21080 3347 50  0001 R CNN
F 2 "" H 21075 3475 50  0001 C CNN
F 3 "" H 21075 3475 50  0001 C CNN
	1    21075 3475
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15825 9575 15875 9575
$Comp
L Device:C_Small C?
U 1 1 5EB447DC
P 15875 9675
F 0 "C?" H 15967 9721 50  0000 L CNN
F 1 "10nF" H 15967 9630 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 15875 9675 50  0001 C CNN
F 3 "~" H 15875 9675 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 15875 9675 50  0001 C CNN "MPN"
	1    15875 9675
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB447E3
P 15675 7825
F 0 "R?" V 15468 7825 50  0000 C CNN
F 1 "1k" V 15559 7825 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 15605 7825 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 15675 7825 50  0001 C CNN
F 4 "RT0805FRE071KL" H 15675 7825 50  0001 C CNN "MPN"
	1    15675 7825
	0    1    1    0   
$EndComp
Wire Wire Line
	15825 7825 15875 7825
$Comp
L Device:C_Small C?
U 1 1 5EB447EB
P 15875 7925
F 0 "C?" H 15967 7971 50  0000 L CNN
F 1 "10nF" H 15967 7880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 15875 7925 50  0001 C CNN
F 3 "~" H 15875 7925 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 15875 7925 50  0001 C CNN "MPN"
	1    15875 7925
	1    0    0    -1  
$EndComp
Wire Wire Line
	15875 8025 15525 8025
$Comp
L Device:R R?
U 1 1 5EB447F3
P 14525 7825
F 0 "R?" V 14318 7825 50  0000 C CNN
F 1 "10k" V 14409 7825 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14455 7825 50  0001 C CNN
F 3 "~" H 14525 7825 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 14525 7825 50  0001 C CNN "MPN"
	1    14525 7825
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB447FA
P 14775 7525
F 0 "R?" H 14705 7479 50  0000 R CNN
F 1 "10k" H 14705 7570 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14705 7525 50  0001 C CNN
F 3 "~" H 14775 7525 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 14775 7525 50  0001 C CNN "MPN"
	1    14775 7525
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44801
P 14775 8275
F 0 "R?" H 14845 8321 50  0000 L CNN
F 1 "10k" H 14845 8230 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14705 8275 50  0001 C CNN
F 3 "~" H 14775 8275 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 14775 8275 50  0001 C CNN "MPN"
	1    14775 8275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44808
P 14525 8025
F 0 "R?" V 14325 8025 50  0000 C CNN
F 1 "10k" V 14425 8025 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14455 8025 50  0001 C CNN
F 3 "~" H 14525 8025 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 14525 8025 50  0001 C CNN "MPN"
	1    14525 8025
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14775 8125 14775 8025
Wire Wire Line
	14775 8025 14675 8025
Wire Wire Line
	14775 8025 14925 8025
Connection ~ 14775 8025
Wire Wire Line
	14675 7825 14775 7825
Wire Wire Line
	14775 7825 14775 7675
Connection ~ 14775 7825
Wire Wire Line
	14775 7825 14925 7825
Wire Wire Line
	14375 8025 14375 7925
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44817
P 14525 7325
F 0 "#PWR?" H 14525 7075 50  0001 C CNN
F 1 "GNDREF" V 14530 7197 50  0001 R CNN
F 2 "" H 14525 7325 50  0001 C CNN
F 3 "" H 14525 7325 50  0001 C CNN
	1    14525 7325
	0    1    1    0   
$EndComp
Connection ~ 14375 7925
Wire Wire Line
	14375 7925 14375 7825
$Comp
L Device:C_Small C?
U 1 1 5EB44820
P 14625 8475
F 0 "C?" V 14725 8475 50  0000 C CNN
F 1 "10nF" V 14825 8475 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14625 8475 50  0001 C CNN
F 3 "~" H 14625 8475 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 14625 8475 50  0001 C CNN "MPN"
	1    14625 8475
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB44827
P 14625 7325
F 0 "C?" V 14396 7325 50  0000 C CNN
F 1 "10nF" V 14487 7325 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14625 7325 50  0001 C CNN
F 3 "~" H 14625 7325 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 14625 7325 50  0001 C CNN "MPN"
	1    14625 7325
	0    1    1    0   
$EndComp
Wire Wire Line
	14725 7325 14775 7325
Wire Wire Line
	14775 7325 14775 7375
Wire Wire Line
	14775 8425 14775 8475
Wire Wire Line
	14775 8475 14725 8475
Connection ~ 15525 8025
Wire Wire Line
	14775 10225 14725 10225
Wire Wire Line
	14775 10175 14775 10225
Wire Wire Line
	14775 9075 14775 9125
Wire Wire Line
	14725 9075 14775 9075
$Comp
L Device:C_Small C?
U 1 1 5EB44837
P 14625 9075
F 0 "C?" V 14396 9075 50  0000 C CNN
F 1 "10nF" V 14487 9075 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14625 9075 50  0001 C CNN
F 3 "~" H 14625 9075 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 14625 9075 50  0001 C CNN "MPN"
	1    14625 9075
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB4483E
P 14625 10225
F 0 "C?" V 14725 10225 50  0000 C CNN
F 1 "10nF" V 14825 10225 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14625 10225 50  0001 C CNN
F 3 "~" H 14625 10225 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 14625 10225 50  0001 C CNN "MPN"
	1    14625 10225
	0    1    1    0   
$EndComp
Wire Wire Line
	14775 9575 14925 9575
Connection ~ 14775 9575
Wire Wire Line
	14775 9575 14775 9425
Wire Wire Line
	14675 9575 14775 9575
Connection ~ 14775 9775
Wire Wire Line
	14775 9775 14925 9775
Wire Wire Line
	14775 9775 14675 9775
Wire Wire Line
	14775 9875 14775 9775
$Comp
L Device:R R?
U 1 1 5EB4484D
P 14525 9775
F 0 "R?" V 14325 9775 50  0000 C CNN
F 1 "10k" V 14425 9775 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14455 9775 50  0001 C CNN
F 3 "~" H 14525 9775 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 14525 9775 50  0001 C CNN "MPN"
	1    14525 9775
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44854
P 14775 10025
F 0 "R?" H 14845 10071 50  0000 L CNN
F 1 "10k" H 14845 9980 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14705 10025 50  0001 C CNN
F 3 "~" H 14775 10025 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 14775 10025 50  0001 C CNN "MPN"
	1    14775 10025
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB4485B
P 14775 9275
F 0 "R?" H 14705 9229 50  0000 R CNN
F 1 "10k" H 14705 9320 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14705 9275 50  0001 C CNN
F 3 "~" H 14775 9275 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 14775 9275 50  0001 C CNN "MPN"
	1    14775 9275
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44862
P 14525 9575
F 0 "R?" V 14318 9575 50  0000 C CNN
F 1 "10k" V 14409 9575 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14455 9575 50  0001 C CNN
F 3 "~" H 14525 9575 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 14525 9575 50  0001 C CNN "MPN"
	1    14525 9575
	0    1    1    0   
$EndComp
Connection ~ 15525 9775
Wire Wire Line
	15875 9775 15525 9775
$Comp
L Device:R R?
U 1 1 5EB4486B
P 15675 9575
F 0 "R?" V 15468 9575 50  0000 C CNN
F 1 "1k" V 15559 9575 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 15605 9575 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 15675 9575 50  0001 C CNN
F 4 "RT0805FRE071KL" H 15675 9575 50  0001 C CNN "MPN"
	1    15675 9575
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44871
P 15525 9775
F 0 "#PWR?" H 15525 9525 50  0001 C CNN
F 1 "GNDREF" H 15530 9602 50  0001 C CNN
F 2 "" H 15525 9775 50  0001 C CNN
F 3 "" H 15525 9775 50  0001 C CNN
	1    15525 9775
	1    0    0    -1  
$EndComp
Text Label 14775 10225 0    50   ~ 0
ENC0_B
Text Label 14775 9075 0    50   ~ 0
ENC0_A
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44879
P 14925 9675
F 0 "#PWR?" H 14925 9425 50  0001 C CNN
F 1 "GNDREF" H 14930 9547 50  0001 R CNN
F 2 "" H 14925 9675 50  0001 C CNN
F 3 "" H 14925 9675 50  0001 C CNN
	1    14925 9675
	0    1    1    0   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW?
U 1 1 5EB44880
P 15225 9675
F 0 "SW?" H 15225 10042 50  0000 C CNN
F 1 "ENC0 (Voltage)" H 15225 9951 50  0000 C CNN
F 2 "footprints:PEC12R-2xxxf-Sxxxx" H 15075 9835 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/54/EC12R-777795.pdf" H 15225 9935 50  0001 C CNN
F 4 "PEC12R-2220F-S0024" H 15225 9675 50  0001 C CNN "MPN"
	1    15225 9675
	1    0    0    -1  
$EndComp
Wire Wire Line
	14375 9575 14375 9675
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44887
P 14525 10225
F 0 "#PWR?" H 14525 9975 50  0001 C CNN
F 1 "GNDREF" V 14530 10097 50  0001 R CNN
F 2 "" H 14525 10225 50  0001 C CNN
F 3 "" H 14525 10225 50  0001 C CNN
	1    14525 10225
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB4488D
P 14525 9075
F 0 "#PWR?" H 14525 8825 50  0001 C CNN
F 1 "GNDREF" V 14530 8947 50  0001 R CNN
F 2 "" H 14525 9075 50  0001 C CNN
F 3 "" H 14525 9075 50  0001 C CNN
	1    14525 9075
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5EB44893
P 14375 9675
F 0 "#PWR?" H 14375 9525 50  0001 C CNN
F 1 "+3V3" V 14390 9803 50  0000 L CNN
F 2 "" H 14375 9675 50  0001 C CNN
F 3 "" H 14375 9675 50  0001 C CNN
	1    14375 9675
	0    -1   -1   0   
$EndComp
Connection ~ 14375 9675
Wire Wire Line
	14375 9675 14375 9775
$Comp
L power:+3V3 #PWR?
U 1 1 5EB4489B
P 14375 7925
F 0 "#PWR?" H 14375 7775 50  0001 C CNN
F 1 "+3V3" V 14390 8053 50  0000 L CNN
F 2 "" H 14375 7925 50  0001 C CNN
F 3 "" H 14375 7925 50  0001 C CNN
	1    14375 7925
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB448A1
P 14525 8475
F 0 "#PWR?" H 14525 8225 50  0001 C CNN
F 1 "GNDREF" V 14530 8347 50  0001 R CNN
F 2 "" H 14525 8475 50  0001 C CNN
F 3 "" H 14525 8475 50  0001 C CNN
	1    14525 8475
	0    1    1    0   
$EndComp
Text Label 21875 7475 2    50   ~ 0
Display_E
Text Label 18275 7475 2    50   ~ 0
Display_RW
Text Label 21875 7375 2    50   ~ 0
Display_RW
NoConn ~ 18275 8475
Text Label 21875 6375 2    50   ~ 0
BOOT0
Wire Wire Line
	21725 7175 21725 6575
Wire Wire Line
	21725 6575 21875 6575
Connection ~ 21725 7175
Wire Wire Line
	21725 7175 21525 7175
NoConn ~ 19675 6475
NoConn ~ 18275 8275
NoConn ~ 18275 8375
Text Label 24175 5125 0    50   ~ 0
C_LIMIT
$Comp
L Device:LED D?
U 1 1 5EB448B5
P 23275 4775
F 0 "D?" H 23268 4520 50  0000 C CNN
F 1 "BLUE" H 23268 4611 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 23275 4775 50  0001 C CNN
F 3 "~" H 23275 4775 50  0001 C CNN
F 4 "APTD3216LVBCD" H 23275 4775 50  0001 C CNN "MPN"
	1    23275 4775
	-1   0    0    1   
$EndComp
Text Label 19675 8275 0    50   ~ 0
C_LIMIT
NoConn ~ 18275 8075
NoConn ~ 19675 7575
NoConn ~ 19675 7875
NoConn ~ 19675 8475
Wire Wire Line
	19075 8675 19175 8675
$Comp
L power:GNDA #PWR?
U 1 1 5EB448C1
P 19175 8675
F 0 "#PWR?" H 19175 8425 50  0001 C CNN
F 1 "GNDA" H 19180 8502 50  0000 C CNN
F 2 "" H 19175 8675 50  0001 C CNN
F 3 "" H 19175 8675 50  0001 C CNN
	1    19175 8675
	1    0    0    -1  
$EndComp
Connection ~ 19175 8675
$Comp
L power:GNDA #PWR?
U 1 1 5EB448C8
P 14425 4925
F 0 "#PWR?" H 14425 4675 50  0001 C CNN
F 1 "GNDA" H 14430 4752 50  0000 C CNN
F 2 "" H 14425 4925 50  0001 C CNN
F 3 "" H 14425 4925 50  0001 C CNN
	1    14425 4925
	1    0    0    -1  
$EndComp
Connection ~ 14425 4925
$Comp
L power:GNDA #PWR?
U 1 1 5EB448CF
P 14425 4275
F 0 "#PWR?" H 14425 4025 50  0001 C CNN
F 1 "GNDA" H 14430 4102 50  0000 C CNN
F 2 "" H 14425 4275 50  0001 C CNN
F 3 "" H 14425 4275 50  0001 C CNN
	1    14425 4275
	1    0    0    -1  
$EndComp
Connection ~ 14425 4275
$Comp
L power:GNDA #PWR?
U 1 1 5EB448D6
P 14425 3625
F 0 "#PWR?" H 14425 3375 50  0001 C CNN
F 1 "GNDA" H 14430 3452 50  0000 C CNN
F 2 "" H 14425 3625 50  0001 C CNN
F 3 "" H 14425 3625 50  0001 C CNN
	1    14425 3625
	1    0    0    -1  
$EndComp
Connection ~ 14425 4725
Connection ~ 14425 4075
Wire Wire Line
	14825 3625 14425 3625
Connection ~ 14825 3625
Connection ~ 14425 3625
Text Notes 17025 6825 0    50   ~ 0
Crystal Load Capacitance = 15pF\nPCB, MCU ~10pF
$Comp
L power:VDD #PWR?
U 1 1 5EB448E2
P 22625 3825
F 0 "#PWR?" H 22625 3675 50  0001 C CNN
F 1 "VDD" H 22642 3998 50  0000 C CNN
F 2 "" H 22625 3825 50  0001 C CNN
F 3 "" H 22625 3825 50  0001 C CNN
	1    22625 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	22625 3825 22825 3825
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5EB448EA
P 23825 3925
F 0 "Q?" V 24168 3925 50  0000 C CNN
F 1 "2N7002NXAK" V 24077 3925 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 24025 4025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/2N7002NXAK.pdf" H 23825 3925 50  0001 C CNN
F 4 "2N7002NXAK" V 23825 3925 50  0001 C CNN "MPN"
	1    23825 3925
	0    -1   -1   0   
$EndComp
Wire Wire Line
	23625 3825 23425 3825
$Comp
L power:GNDREF #PWR?
U 1 1 5EB448F1
P 24025 4775
F 0 "#PWR?" H 24025 4525 50  0001 C CNN
F 1 "GNDREF" V 24030 4647 50  0001 R CNN
F 2 "" H 24025 4775 50  0001 C CNN
F 3 "" H 24025 4775 50  0001 C CNN
	1    24025 4775
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5EB448F7
P 22625 4775
F 0 "#PWR?" H 22625 4625 50  0001 C CNN
F 1 "VDD" H 22642 4948 50  0000 C CNN
F 2 "" H 22625 4775 50  0001 C CNN
F 3 "" H 22625 4775 50  0001 C CNN
	1    22625 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	22625 4775 22825 4775
Wire Wire Line
	23625 4775 23425 4775
$Comp
L Device:R R?
U 1 1 5EB448FF
P 22975 4775
F 0 "R?" V 22768 4775 50  0000 C CNN
F 1 "5k" V 22859 4775 50  0000 C CNN
F 2 "" V 22905 4775 50  0001 C CNN
F 3 "~" H 22975 4775 50  0001 C CNN
	1    22975 4775
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44905
P 22975 3825
F 0 "R?" V 22768 3825 50  0000 C CNN
F 1 "5k" V 22859 3825 50  0000 C CNN
F 2 "" V 22905 3825 50  0001 C CNN
F 3 "~" H 22975 3825 50  0001 C CNN
	1    22975 3825
	0    1    1    0   
$EndComp
Text Notes 22725 4275 0    50   ~ 0
20V / 4mA = 5000Ω
Text HLabel 19675 7475 2    50   Input ~ 0
Vread
$Comp
L Switch:SW_Push SW?
U 1 1 5EB4490E
P 17175 10125
F 0 "SW?" H 17175 10410 50  0000 C CNN
F 1 "BOOT" H 17175 10319 50  0000 C CNN
F 2 "footprints:LL3301NF065QG" H 17175 10325 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/140/P090002-267756.pdf" H 17175 10325 50  0001 C CNN
F 4 "LL3301NF065QG" H 17175 10125 50  0001 C CNN "MPN"
	1    17175 10125
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44915
P 17525 10125
F 0 "R?" V 17318 10125 50  0000 C CNN
F 1 "1k" V 17409 10125 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 17455 10125 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 17525 10125 50  0001 C CNN
F 4 "RT0805FRE071KL" H 17525 10125 50  0001 C CNN "MPN"
	1    17525 10125
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB4491C
P 17925 10225
F 0 "C?" H 18017 10271 50  0000 L CNN
F 1 "10nF" H 18017 10180 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 17925 10225 50  0001 C CNN
F 3 "~" H 17925 10225 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 17925 10225 50  0001 C CNN "MPN"
	1    17925 10225
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44922
P 17925 10325
F 0 "#PWR?" H 17925 10075 50  0001 C CNN
F 1 "GNDREF" H 17930 10152 50  0001 C CNN
F 2 "" H 17925 10325 50  0001 C CNN
F 3 "" H 17925 10325 50  0001 C CNN
	1    17925 10325
	1    0    0    -1  
$EndComp
Text Label 17925 10125 2    50   ~ 0
BOOT0
Wire Wire Line
	17925 10125 17675 10125
$Comp
L power:+3V3 #PWR?
U 1 1 5EB4492A
P 16875 10075
F 0 "#PWR?" H 16875 9925 50  0001 C CNN
F 1 "+3V3" H 16890 10248 50  0000 C CNN
F 2 "" H 16875 10075 50  0001 C CNN
F 3 "" H 16875 10075 50  0001 C CNN
	1    16875 10075
	1    0    0    -1  
$EndComp
Wire Wire Line
	16875 10075 16875 10125
Wire Wire Line
	16875 10125 16975 10125
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5EB44933
P 23825 4875
F 0 "Q?" V 24168 4875 50  0000 C CNN
F 1 "2N7002NXAK" V 24077 4875 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 24025 4975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/2N7002NXAK.pdf" H 23825 4875 50  0001 C CNN
F 4 "2N7002NXAK" V 23825 4875 50  0001 C CNN "MPN"
	1    23825 4875
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5EB4493A
P 23825 5675
F 0 "Q?" V 24168 5675 50  0000 C CNN
F 1 "2N7002NXAK" V 24077 5675 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 24025 5775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/2N7002NXAK.pdf" H 23825 5675 50  0001 C CNN
F 4 "2N7002NXAK" V 23825 5675 50  0001 C CNN "MPN"
	1    23825 5675
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44940
P 24025 4175
F 0 "R?" V 23818 4175 50  0000 C CNN
F 1 "10K" V 23909 4175 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 23955 4175 50  0001 C CNN
F 3 "~" H 24025 4175 50  0001 C CNN
	1    24025 4175
	0    1    1    0   
$EndComp
Wire Wire Line
	23825 4125 23825 4175
Wire Wire Line
	23825 4175 23875 4175
$Comp
L Device:R R?
U 1 1 5EB44948
P 24025 5125
F 0 "R?" V 23818 5125 50  0000 C CNN
F 1 "10K" V 23909 5125 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 23955 5125 50  0001 C CNN
F 3 "~" H 24025 5125 50  0001 C CNN
	1    24025 5125
	0    1    1    0   
$EndComp
Wire Wire Line
	23825 5075 23825 5125
Wire Wire Line
	23825 5125 23875 5125
$Comp
L Device:R R?
U 1 1 5EB44950
P 24025 5925
F 0 "R?" V 23818 5925 50  0000 C CNN
F 1 "1K" V 23909 5925 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 23955 5925 50  0001 C CNN
F 3 "~" H 24025 5925 50  0001 C CNN
	1    24025 5925
	0    1    1    0   
$EndComp
Wire Wire Line
	23825 5875 23825 5925
Wire Wire Line
	23825 5925 23875 5925
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44958
P 24025 5575
F 0 "#PWR?" H 24025 5325 50  0001 C CNN
F 1 "GNDREF" V 24030 5447 50  0001 R CNN
F 2 "" H 24025 5575 50  0001 C CNN
F 3 "" H 24025 5575 50  0001 C CNN
	1    24025 5575
	0    -1   -1   0   
$EndComp
Text Label 24175 5925 0    50   ~ 0
CAP_DISCHARGE
Text Label 19675 8375 0    50   ~ 0
CAP_DISCHARGE
$Comp
L Device:R R?
U 1 1 5EB44960
P 23425 5575
F 0 "R?" V 23218 5575 50  0000 C CNN
F 1 "100R" V 23309 5575 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 23355 5575 50  0001 C CNN
F 3 "~" H 23425 5575 50  0001 C CNN
	1    23425 5575
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44966
P 23125 5575
F 0 "R?" V 22918 5575 50  0000 C CNN
F 1 "100R" V 23009 5575 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 23055 5575 50  0001 C CNN
F 3 "~" H 23125 5575 50  0001 C CNN
	1    23125 5575
	0    1    1    0   
$EndComp
Wire Wire Line
	23575 5575 23625 5575
Wire Wire Line
	22975 5575 22625 5575
Wire Wire Line
	22625 5575 22625 5525
Text HLabel 22625 5525 1    50   Input ~ 0
Vout
$Comp
L symbols:OPA4196 U?
U 2 1 5EB44970
P 17125 7950
F 0 "U?" H 17225 8315 50  0000 C CNN
F 1 "OPA4196" H 17225 8224 50  0000 C CNN
F 2 "" H 17225 7950 50  0001 C CNN
F 3 "" H 17225 7950 50  0001 C CNN
	2    17125 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	17525 7950 17825 7950
Wire Wire Line
	17825 7950 17825 7875
Wire Wire Line
	17825 7875 18275 7875
Wire Wire Line
	16925 8050 16925 8175
Wire Wire Line
	16925 8175 17525 8175
Wire Wire Line
	17525 8175 17525 7950
Connection ~ 17525 7950
Text Label 17575 7950 0    50   ~ 0
_Iread
Text Label 19675 7375 0    50   ~ 0
_Iread
$Comp
L Device:Net-Tie_2 NT?
U 1 1 5EB4497F
P 15625 3425
F 0 "NT?" H 15625 3514 50  0000 C CNN
F 1 "Net-Tie_2" H 15625 3515 50  0001 C CNN
F 2 "" H 15625 3425 50  0001 C CNN
F 3 "~" H 15625 3425 50  0001 C CNN
	1    15625 3425
	1    0    0    -1  
$EndComp
$Comp
L Device:Net-Tie_2 NT?
U 1 1 5EB44985
P 15625 4075
F 0 "NT?" H 15625 4164 50  0000 C CNN
F 1 "Net-Tie_2" H 15625 4165 50  0001 C CNN
F 2 "" H 15625 4075 50  0001 C CNN
F 3 "~" H 15625 4075 50  0001 C CNN
	1    15625 4075
	1    0    0    -1  
$EndComp
$Comp
L Device:Net-Tie_2 NT?
U 1 1 5EB4498B
P 15625 4725
F 0 "NT?" H 15625 4814 50  0000 C CNN
F 1 "Net-Tie_2" H 15625 4815 50  0001 C CNN
F 2 "" H 15625 4725 50  0001 C CNN
F 3 "~" H 15625 4725 50  0001 C CNN
	1    15625 4725
	1    0    0    -1  
$EndComp
$Comp
L Device:Net-Tie_2 NT?
U 1 1 5EB44991
P 16425 5375
F 0 "NT?" H 16425 5464 50  0000 C CNN
F 1 "Net-Tie_2" H 16425 5465 50  0001 C CNN
F 2 "" H 16425 5375 50  0001 C CNN
F 3 "~" H 16425 5375 50  0001 C CNN
	1    16425 5375
	1    0    0    -1  
$EndComp
$EndSCHEMATC
