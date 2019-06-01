EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 29 0
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
$Sheet
S 3550 2650 500  450 
U 5CA3E8E1
F0 "CurrentSense" 50
F1 "CurrentSense.sch" 50
F2 "Vin" I L 3550 2750 50 
F3 "Vout" O R 4050 2750 50 
F4 "Iread" O R 4050 2900 50 
$EndSheet
$Comp
L power:VDD #PWR010
U 1 1 5CA4A3E2
P 3400 2750
F 0 "#PWR010" H 3400 2600 50  0001 C CNN
F 1 "VDD" H 3417 2923 50  0000 C CNN
F 2 "" H 3400 2750 50  0001 C CNN
F 3 "" H 3400 2750 50  0001 C CNN
	1    3400 2750
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
	4050 2900 4800 2900
Wire Wire Line
	4050 2750 4900 2750
Wire Wire Line
	6100 2750 5400 2750
Wire Wire Line
	4800 3250 5800 3250
Wire Wire Line
	4800 2900 4800 3250
Wire Wire Line
	1350 2200 1050 2200
Wire Wire Line
	1950 2200 2100 2200
$Comp
L power:GNDREF #PWR09
U 1 1 5CA143C1
P 1650 2400
F 0 "#PWR09" H 1650 2150 50  0001 C CNN
F 1 "GNDREF" H 1655 2227 50  0001 C CNN
F 2 "" H 1650 2400 50  0001 C CNN
F 3 "" H 1650 2400 50  0001 C CNN
	1    1650 2400
	1    0    0    -1  
$EndComp
Connection ~ 1050 2200
Wire Wire Line
	1050 2200 900  2200
Connection ~ 1650 2400
Connection ~ 2100 2200
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
L power:VDD #PWR07
U 1 1 5CA18B8F
P 900 2200
F 0 "#PWR07" H 900 2050 50  0001 C CNN
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
F5 "Iset" O L 6100 3750 50 
F6 "Vset" O L 6100 3650 50 
$EndSheet
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
L power:+3V3 #PWR08
U 1 1 5CA63B89
P 2750 2200
F 0 "#PWR08" H 2750 2050 50  0001 C CNN
F 1 "+3V3" H 2765 2373 50  0000 C CNN
F 2 "" H 2750 2200 50  0001 C CNN
F 3 "" H 2750 2200 50  0001 C CNN
	1    2750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2750 3550 2750
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5CF3F139
P 1050 1500
F 0 "#FLG01" H 1050 1575 50  0001 C CNN
F 1 "PWR_FLAG" V 1050 1627 50  0000 L CNN
F 2 "" H 1050 1500 50  0001 C CNN
F 3 "~" H 1050 1500 50  0001 C CNN
	1    1050 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR05
U 1 1 5CF4163C
P 1050 1500
F 0 "#PWR05" H 1050 1350 50  0001 C CNN
F 1 "VDD" V 1067 1628 50  0000 L CNN
F 2 "" H 1050 1500 50  0001 C CNN
F 3 "" H 1050 1500 50  0001 C CNN
	1    1050 1500
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5CF42203
P 1050 1600
F 0 "#FLG02" H 1050 1675 50  0001 C CNN
F 1 "PWR_FLAG" V 1050 1727 50  0000 L CNN
F 2 "" H 1050 1600 50  0001 C CNN
F 3 "~" H 1050 1600 50  0001 C CNN
	1    1050 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR06
U 1 1 5CF439A5
P 1050 1600
F 0 "#PWR06" H 1050 1350 50  0001 C CNN
F 1 "GNDREF" V 1055 1472 50  0000 R CNN
F 2 "" H 1050 1600 50  0001 C CNN
F 3 "" H 1050 1600 50  0001 C CNN
	1    1050 1600
	0    -1   -1   0   
$EndComp
Connection ~ 1300 1200
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
Connection ~ 2800 1250
Wire Wire Line
	2150 750  2800 750 
Wire Wire Line
	2150 1250 2800 1250
$Comp
L power:GNDREF #PWR04
U 1 1 5CA2E785
P 2800 1250
F 0 "#PWR04" H 2800 1000 50  0001 C CNN
F 1 "GNDREF" H 2805 1077 50  0001 C CNN
F 2 "" H 2800 1250 50  0001 C CNN
F 3 "" H 2800 1250 50  0001 C CNN
	1    2800 1250
	1    0    0    -1  
$EndComp
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
	1650 2400 1050 2400
Connection ~ 2500 2850
Wire Wire Line
	2500 2850 2750 2850
$Comp
L symbols:+3V3A #PWR012
U 1 1 5CE59A05
P 2750 2850
F 0 "#PWR012" H 2750 3100 50  0001 C CNN
F 1 "+3V3A" H 2750 3023 50  0000 C CNN
F 2 "" H 2750 2880 50  0001 C CNN
F 3 "" H 2750 2880 50  0001 C CNN
	1    2750 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR011
U 1 1 5CA666B2
P 900 2850
F 0 "#PWR011" H 900 2700 50  0001 C CNN
F 1 "VDD" H 917 3023 50  0000 C CNN
F 2 "" H 900 2850 50  0001 C CNN
F 3 "" H 900 2850 50  0001 C CNN
	1    900  2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3050 1650 3050
Connection ~ 2100 3050
Wire Wire Line
	2500 3050 2100 3050
Wire Wire Line
	2100 2850 2500 2850
Connection ~ 2100 2850
Connection ~ 1650 3050
Wire Wire Line
	1650 3050 1050 3050
Wire Wire Line
	1050 2850 900  2850
Connection ~ 1050 2850
$Comp
L power:GNDREF #PWR013
U 1 1 5CA6668C
P 1650 3050
F 0 "#PWR013" H 1650 2800 50  0001 C CNN
F 1 "GNDREF" H 1655 2877 50  0001 C CNN
F 2 "" H 1650 3050 50  0001 C CNN
F 3 "" H 1650 3050 50  0001 C CNN
	1    1650 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2850 2100 2850
Wire Wire Line
	1350 2850 1050 2850
Wire Wire Line
	2150 750  2150 900 
Wire Wire Line
	2150 1250 2150 1100
$Comp
L symbols:LD1086 U4
U 1 1 5CA66683
P 1650 2850
F 0 "U4" H 1650 3115 50  0000 C CNN
F 1 "LD1086D2T33" H 1650 3024 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 1650 2850 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/389/ld1086-974047.pdf" V 1650 2850 50  0001 C CNN
F 4 "LD1086D2T33" H 1650 2850 50  0001 C CNN "MPN"
	1    1650 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5CA6669D
P 2100 2950
F 0 "C7" H 2192 2996 50  0000 L CNN
F 1 "10µF" H 2192 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2100 2950 50  0001 C CNN
F 3 "~" H 2100 2950 50  0001 C CNN
F 4 "EMK212BJ106KG-T" H 2100 2950 50  0001 C CNN "MPN"
	1    2100 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5CA666A5
P 2500 2950
F 0 "C8" H 2592 2996 50  0000 L CNN
F 1 "100nF" H 2592 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2500 2950 50  0001 C CNN
F 3 "~" H 2500 2950 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 2500 2950 50  0001 C CNN "MPN"
	1    2500 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5CA2E78B
P 2150 1000
F 0 "C2" H 2242 1046 50  0000 L CNN
F 1 "100nF HV" H 2242 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2150 1000 50  0001 C CNN
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
F 4 "OPA4196" H 2750 1000 50  0001 C CNN "MPN"
	1    2750 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5CA14E49
P 650 950
F 0 "C1" H 742 996 50  0000 L CNN
F 1 "100nF HV" H 742 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 650 950 50  0001 C CNN
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
F 4 "OPA4196" H 1250 950 50  0001 C CNN "MPN"
	1    1250 950 
	1    0    0    -1  
$EndComp
$Comp
L symbols:LD1086 U3
U 1 1 5CA128DD
P 1650 2200
F 0 "U3" H 1650 2465 50  0000 C CNN
F 1 "LD1086D2T33" H 1650 2374 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 1650 2200 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/389/ld1086-974047.pdf" V 1650 2200 50  0001 C CNN
F 4 "LD1086D2T33" H 1650 2200 50  0001 C CNN "MPN"
	1    1650 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5CA14481
P 1050 2300
F 0 "C3" H 1142 2346 50  0000 L CNN
F 1 "10µF HV" H 1142 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1050 2300 50  0001 C CNN
F 3 "~" H 1050 2300 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 1050 2300 50  0001 C CNN "MPN"
	1    1050 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5CA1490D
P 2100 2300
F 0 "C4" H 2192 2346 50  0000 L CNN
F 1 "10µF" H 2192 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2100 2300 50  0001 C CNN
F 3 "~" H 2100 2300 50  0001 C CNN
F 4 "EMK212BJ106KG-T" H 2100 2300 50  0001 C CNN "MPN"
	1    2100 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5CA149B6
P 2500 2300
F 0 "C5" H 2592 2346 50  0000 L CNN
F 1 "100nF" H 2592 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2500 2300 50  0001 C CNN
F 3 "~" H 2500 2300 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 2500 2300 50  0001 C CNN "MPN"
	1    2500 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5CA66692
P 1050 2950
F 0 "C6" H 1142 2996 50  0000 L CNN
F 1 "10µF HV" H 1142 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1050 2950 50  0001 C CNN
F 3 "~" H 1050 2950 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 1050 2950 50  0001 C CNN "MPN"
	1    1050 2950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
