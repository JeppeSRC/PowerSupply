EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "Power Supply"
Date ""
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	850  700  1300 700 
Wire Wire Line
	1300 1200 850  1200
$Comp
L power:VDD #PWR02
U 1 1 5CA02FAB
P 1300 700
F 0 "#PWR02" H 1300 550 50  0001 C CNN
F 1 "VDD" H 1317 873 50  0000 C CNN
F 2 "" H 1300 700 50  0001 C CNN
F 3 "" H 1300 700 50  0001 C CNN
	1    1300 700 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR03
U 1 1 5CA02FED
P 1300 1200
F 0 "#PWR03" H 1300 950 50  0001 C CNN
F 1 "GNDREF" H 1305 1027 50  0001 C CNN
F 2 "" H 1300 1200 50  0001 C CNN
F 3 "" H 1300 1200 50  0001 C CNN
	1    1300 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5CA14E49
P 850 950
F 0 "C1" H 942 996 50  0000 L CNN
F 1 "1µF" H 942 905 50  0000 L CNN
F 2 "" H 850 950 50  0001 C CNN
F 3 "~" H 850 950 50  0001 C CNN
	1    850  950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  700  850  850 
Wire Wire Line
	850  1050 850  1200
$Comp
L Amplifier_Operational:OPA4196 U1
U 5 1 5CA23A34
P 1250 950
F 0 "U1" H 1578 996 50  0000 L CNN
F 1 "OPA4196" H 1578 905 50  0000 L CNN
F 2 "" H 1250 950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 1350 1250 50  0001 C CNN
	5    1250 950 
	1    0    0    -1  
$EndComp
Connection ~ 1300 1200
Connection ~ 1300 700 
$Sheet
S 3550 2600 500  450 
U 5CA3E8E1
F0 "CurrentSense" 50
F1 "CurrentSense.sch" 50
F2 "Vin" I L 3550 2700 50 
F3 "Vout" O R 4050 2700 50 
F4 "Iread" O R 4050 2850 50 
$EndSheet
$Comp
L power:VDD #PWR08
U 1 1 5CA4A3E2
P 3400 2700
F 0 "#PWR08" H 3400 2550 50  0001 C CNN
F 1 "VDD" H 3417 2873 50  0000 C CNN
F 2 "" H 3400 2700 50  0001 C CNN
F 3 "" H 3400 2700 50  0001 C CNN
	1    3400 2700
	1    0    0    -1  
$EndComp
$Sheet
S 4900 2650 500  450 
U 5CA4A3FE
F0 "PassElement" 50
F1 "PassElement.sch" 50
F2 "Vin" I L 4900 2750 50 
F3 "Vout" O R 5400 2750 50 
F4 "VReg_set" I R 5400 2850 50 
$EndSheet
$Sheet
S 6100 2650 600  600 
U 5CA4C891
F0 "Regulation" 50
F1 "Regulation.sch" 50
F2 "Vout" I L 6100 2750 50 
F3 "Iset" I L 6100 3050 50 
F4 "Vset" I L 6100 3150 50 
F5 "Vread" O R 6700 2750 50 
F6 "CLIM" O R 6700 2850 50 
F7 "Iread" I L 6100 2950 50 
F8 "Vreg" O L 6100 2850 50 
$EndSheet
Wire Wire Line
	3400 2700 3550 2700
Wire Wire Line
	4050 2900 4800 2900
Wire Wire Line
	4050 2750 4900 2750
Wire Wire Line
	6100 2750 5400 2750
Wire Wire Line
	4800 3250 5800 3250
Wire Wire Line
	4800 2900 4800 3250
$Comp
L Regulator_Linear:LD1086 U2
U 1 1 5CA128DD
P 1650 2200
F 0 "U2" H 1650 2465 50  0000 C CNN
F 1 "LD1086D2T33" H 1650 2374 50  0000 C CNN
F 2 "" H 1650 2200 50  0001 C CNN
F 3 "" V 1650 2200 50  0001 C CNN
	1    1650 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2200 1050 2200
Wire Wire Line
	2000 2200 2100 2200
$Comp
L power:GNDREF #PWR04
U 1 1 5CA143C1
P 1650 2400
F 0 "#PWR04" H 1650 2150 50  0001 C CNN
F 1 "GNDREF" H 1655 2227 50  0001 C CNN
F 2 "" H 1650 2400 50  0001 C CNN
F 3 "" H 1650 2400 50  0001 C CNN
	1    1650 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5CA14481
P 1050 2300
F 0 "C2" H 1142 2346 50  0000 L CNN
F 1 "10µF" H 1142 2255 50  0000 L CNN
F 2 "" H 1050 2300 50  0001 C CNN
F 3 "~" H 1050 2300 50  0001 C CNN
	1    1050 2300
	1    0    0    -1  
$EndComp
Connection ~ 1050 2200
Wire Wire Line
	1050 2200 900  2200
Wire Wire Line
	1650 2400 1050 2400
Connection ~ 1650 2400
$Comp
L Device:C_Small C5
U 1 1 5CA1490D
P 2100 2300
F 0 "C5" H 2192 2346 50  0000 L CNN
F 1 "10µF" H 2192 2255 50  0000 L CNN
F 2 "" H 2100 2300 50  0001 C CNN
F 3 "~" H 2100 2300 50  0001 C CNN
	1    2100 2300
	1    0    0    -1  
$EndComp
Connection ~ 2100 2200
$Comp
L Device:C_Small C7
U 1 1 5CA149B6
P 2500 2300
F 0 "C7" H 2592 2346 50  0000 L CNN
F 1 "100nF" H 2592 2255 50  0000 L CNN
F 2 "" H 2500 2300 50  0001 C CNN
F 3 "~" H 2500 2300 50  0001 C CNN
	1    2500 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2200 2500 2200
Wire Wire Line
	2500 2200 2750 2200
Connection ~ 2500 2200
Wire Wire Line
	2500 2400 2100 2400
Connection ~ 2100 2400
Wire Wire Line
	2100 2400 1650 2400
$Comp
L power:VDD #PWR01
U 1 1 5CA18B8F
P 900 2200
F 0 "#PWR01" H 900 2050 50  0001 C CNN
F 1 "VDD" H 917 2373 50  0000 C CNN
F 2 "" H 900 2200 50  0001 C CNN
F 3 "" H 900 2200 50  0001 C CNN
	1    900  2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2850 5400 2850
Wire Wire Line
	5800 3250 5800 2950
Wire Wire Line
	5800 2950 6100 2950
$Sheet
S 6100 3550 650  500 
U 5CA214F9
F0 "Logic" 50
F1 "Logic.sch" 50
F2 "CLIM" I R 6750 3650 50 
F3 "Vread" I R 6750 3750 50 
F4 "Iread" I L 6100 3850 50 
F5 "Iset" O L 6100 3650 50 
F6 "Vset" O L 6100 3750 50 
$EndSheet
Wire Wire Line
	2000 750  2450 750 
Wire Wire Line
	2450 1250 2000 1250
$Comp
L power:VDD #PWR06
U 1 1 5CA2E77F
P 2450 750
F 0 "#PWR06" H 2450 600 50  0001 C CNN
F 1 "VDD" H 2467 923 50  0000 C CNN
F 2 "" H 2450 750 50  0001 C CNN
F 3 "" H 2450 750 50  0001 C CNN
	1    2450 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR07
U 1 1 5CA2E785
P 2450 1250
F 0 "#PWR07" H 2450 1000 50  0001 C CNN
F 1 "GNDREF" H 2455 1077 50  0001 C CNN
F 2 "" H 2450 1250 50  0001 C CNN
F 3 "" H 2450 1250 50  0001 C CNN
	1    2450 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5CA2E78B
P 2000 1000
F 0 "C4" H 2092 1046 50  0000 L CNN
F 1 "1µF" H 2092 955 50  0000 L CNN
F 2 "" H 2000 1000 50  0001 C CNN
F 3 "~" H 2000 1000 50  0001 C CNN
	1    2000 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 750  2000 900 
Wire Wire Line
	2000 1100 2000 1250
$Comp
L Amplifier_Operational:OPA4196 U3
U 5 1 5CA2E794
P 2400 1000
F 0 "U3" H 2728 1046 50  0000 L CNN
F 1 "OPA4196" H 2728 955 50  0000 L CNN
F 2 "" H 2400 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 2500 1300 50  0001 C CNN
	5    2400 1000
	1    0    0    -1  
$EndComp
Connection ~ 2450 1250
Connection ~ 2450 750 
Wire Wire Line
	6700 2850 6900 2850
Wire Wire Line
	6900 2850 6900 3650
Wire Wire Line
	6900 3650 6750 3650
Wire Wire Line
	6750 3750 7000 3750
Wire Wire Line
	7000 3750 7000 2750
Wire Wire Line
	7000 2750 6700 2750
Wire Wire Line
	5800 3250 5800 3850
Wire Wire Line
	5800 3850 6100 3850
Connection ~ 5800 3250
Wire Wire Line
	6100 3650 6000 3650
Wire Wire Line
	6000 3650 6000 3150
Wire Wire Line
	6000 3150 6100 3150
Wire Wire Line
	6100 3750 5900 3750
Wire Wire Line
	5900 3750 5900 3050
Wire Wire Line
	5900 3050 6100 3050
$Comp
L power:+3V3 #PWR?
U 1 1 5CA63B89
P 2750 2200
F 0 "#PWR?" H 2750 2050 50  0001 C CNN
F 1 "+3V3" H 2765 2373 50  0000 C CNN
F 2 "" H 2750 2200 50  0001 C CNN
F 3 "" H 2750 2200 50  0001 C CNN
	1    2750 2200
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LD1086 U?
U 1 1 5CA66683
P 1650 2850
F 0 "U?" H 1650 3115 50  0000 C CNN
F 1 "LD1086D2T33" H 1650 3024 50  0000 C CNN
F 2 "" H 1650 2850 50  0001 C CNN
F 3 "" V 1650 2850 50  0001 C CNN
	1    1650 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2850 1050 2850
Wire Wire Line
	2000 2850 2100 2850
$Comp
L power:GNDREF #PWR?
U 1 1 5CA6668C
P 1650 3050
F 0 "#PWR?" H 1650 2800 50  0001 C CNN
F 1 "GNDREF" H 1655 2877 50  0001 C CNN
F 2 "" H 1650 3050 50  0001 C CNN
F 3 "" H 1650 3050 50  0001 C CNN
	1    1650 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CA66692
P 1050 2950
F 0 "C?" H 1142 2996 50  0000 L CNN
F 1 "10µF" H 1142 2905 50  0000 L CNN
F 2 "" H 1050 2950 50  0001 C CNN
F 3 "~" H 1050 2950 50  0001 C CNN
	1    1050 2950
	1    0    0    -1  
$EndComp
Connection ~ 1050 2850
Wire Wire Line
	1050 2850 900  2850
Wire Wire Line
	1650 3050 1050 3050
Connection ~ 1650 3050
$Comp
L Device:C_Small C?
U 1 1 5CA6669D
P 2100 2950
F 0 "C?" H 2192 2996 50  0000 L CNN
F 1 "10µF" H 2192 2905 50  0000 L CNN
F 2 "" H 2100 2950 50  0001 C CNN
F 3 "~" H 2100 2950 50  0001 C CNN
	1    2100 2950
	1    0    0    -1  
$EndComp
Connection ~ 2100 2850
$Comp
L Device:C_Small C?
U 1 1 5CA666A5
P 2500 2950
F 0 "C?" H 2592 2996 50  0000 L CNN
F 1 "100nF" H 2592 2905 50  0000 L CNN
F 2 "" H 2500 2950 50  0001 C CNN
F 3 "~" H 2500 2950 50  0001 C CNN
	1    2500 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2850 2500 2850
Wire Wire Line
	2500 2850 2750 2850
Connection ~ 2500 2850
Wire Wire Line
	2500 3050 2100 3050
Connection ~ 2100 3050
Wire Wire Line
	2100 3050 1650 3050
$Comp
L power:VDD #PWR?
U 1 1 5CA666B2
P 900 2850
F 0 "#PWR?" H 900 2700 50  0001 C CNN
F 1 "VDD" H 917 3023 50  0000 C CNN
F 2 "" H 900 2850 50  0001 C CNN
F 3 "" H 900 2850 50  0001 C CNN
	1    900  2850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3A #PWR?
U 1 1 5CA66941
P 2750 2850
F 0 "#PWR?" H 2950 2875 50  0001 C CNN
F 1 "+3V3A" H 2732 3023 50  0000 C CNN
F 2 "" H 2750 2850 50  0001 C CNN
F 3 "" H 2750 2850 50  0001 C CNN
	1    2750 2850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
