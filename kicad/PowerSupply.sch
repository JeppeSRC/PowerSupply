EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 5
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
P 1050 700
F 0 "#PWR?" H 1050 550 50  0001 C CNN
F 1 "VDD" H 1067 873 50  0000 C CNN
F 2 "" H 1050 700 50  0001 C CNN
F 3 "" H 1050 700 50  0001 C CNN
	1    1050 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3050 850  3050
Wire Wire Line
	1750 3050 1900 3050
$Comp
L power:GNDREF #PWR?
U 1 1 5CA143C1
P 1450 3250
F 0 "#PWR?" H 1450 3000 50  0001 C CNN
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
L power:VDD #PWR?
U 1 1 5CA18B8F
P 700 3050
F 0 "#PWR?" H 700 2900 50  0001 C CNN
F 1 "VDD" H 717 3223 50  0000 C CNN
F 2 "" H 700 3050 50  0001 C CNN
F 3 "" H 700 3050 50  0001 C CNN
	1    700  3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5CA63B89
P 2550 3050
F 0 "#PWR?" H 2550 2900 50  0001 C CNN
F 1 "+3V3" H 2565 3223 50  0000 C CNN
F 2 "" H 2550 3050 50  0001 C CNN
F 3 "" H 2550 3050 50  0001 C CNN
	1    2550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	550  1200 1050 1200
Connection ~ 1050 700 
Wire Wire Line
	550  700  1050 700 
Wire Wire Line
	550  1075 550  1200
Wire Wire Line
	550  700  550  875 
Connection ~ 2225 725 
Wire Wire Line
	1725 725  2225 725 
Wire Wire Line
	1725 1225 2225 1225
$Comp
L power:VDD #PWR?
U 1 1 5CA2E77F
P 2225 725
F 0 "#PWR?" H 2225 575 50  0001 C CNN
F 1 "VDD" H 2242 898 50  0000 C CNN
F 2 "" H 2225 725 50  0001 C CNN
F 3 "" H 2225 725 50  0001 C CNN
	1    2225 725 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3250 850  3250
Wire Wire Line
	1725 725  1725 875 
Wire Wire Line
	1725 1225 1725 1075
$Comp
L Device:C_Small C?
U 1 1 5CA2E78B
P 1725 975
F 0 "C?" H 1817 1021 50  0000 L CNN
F 1 "100nF" H 1817 930 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1725 975 50  0001 C CNN
F 3 "~" H 1725 975 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1725 975 50  0001 C CNN "MPN"
	1    1725 975 
	1    0    0    -1  
$EndComp
$Comp
L symbols:OPA4196 U?
U 1 1 5CA2E794
P 2175 975
F 0 "U?" H 2475 1025 50  0000 L CNN
F 1 "OPA4196" H 2475 925 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2175 975 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 2275 1275 50  0001 C CNN
F 4 "OPA4196IDR" H 2175 975 50  0001 C CNN "MPN"
	1    2175 975 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CA14E49
P 550 975
F 0 "C?" H 642 1021 50  0000 L CNN
F 1 "100nF" H 642 930 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 550 975 50  0001 C CNN
F 3 "~" H 550 975 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 550 975 50  0001 C CNN "MPN"
	1    550  975 
	1    0    0    -1  
$EndComp
$Comp
L symbols:OPA4196 U?
U 1 1 5CA23A34
P 1000 950
F 0 "U?" H 1300 1000 50  0000 L CNN
F 1 "OPA4196" H 1300 900 50  0000 L CNN
F 2 "" H 1000 950 50  0001 C CNN
F 3 "" H 1100 1250 50  0001 C CNN
F 4 "OPA4196IDR" H 1000 950 50  0001 C CNN "MPN"
	1    1000 950 
	1    0    0    -1  
$EndComp
$Comp
L symbols:LD1086 U?
U 1 1 5CA128DD
P 1450 3050
F 0 "U?" H 1450 3315 50  0000 C CNN
F 1 "LD1086D2T33" H 1450 3224 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 1450 3050 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/389/ld1086-974047.pdf" V 1450 3050 50  0001 C CNN
F 4 "LD1086D2T33TR" H 1450 3050 50  0001 C CNN "MPN"
	1    1450 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CA14481
P 850 3150
F 0 "C?" H 942 3196 50  0000 L CNN
F 1 "10µF" H 942 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 3150 50  0001 C CNN
F 3 "~" H 850 3150 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 850 3150 50  0001 C CNN "MPN"
	1    850  3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CA1490D
P 1900 3150
F 0 "C?" H 1992 3196 50  0000 L CNN
F 1 "10µF" H 1992 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1900 3150 50  0001 C CNN
F 3 "~" H 1900 3150 50  0001 C CNN
F 4 "EMK212BJ106KG-T" H 1900 3150 50  0001 C CNN "MPN"
	1    1900 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CA149B6
P 2300 3150
F 0 "C?" H 2392 3196 50  0000 L CNN
F 1 "100nF" H 2392 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2300 3150 50  0001 C CNN
F 3 "~" H 2300 3150 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 2300 3150 50  0001 C CNN "MPN"
	1    2300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5D80A7D5
P 2225 1225
F 0 "#PWR?" H 2225 975 50  0001 C CNN
F 1 "GNDA" H 2230 1052 50  0000 C CNN
F 2 "" H 2225 1225 50  0001 C CNN
F 3 "" H 2225 1225 50  0001 C CNN
	1    2225 1225
	1    0    0    -1  
$EndComp
Connection ~ 2225 1225
$Comp
L power:GNDA #PWR?
U 1 1 5D80B3C5
P 1050 1200
F 0 "#PWR?" H 1050 950 50  0001 C CNN
F 1 "GNDA" H 1055 1027 50  0000 C CNN
F 2 "" H 1050 1200 50  0001 C CNN
F 3 "" H 1050 1200 50  0001 C CNN
	1    1050 1200
	1    0    0    -1  
$EndComp
Connection ~ 1050 1200
$Comp
L symbols:OPA4196 U?
U 5 1 5DB4A324
P 3250 975
F 0 "U?" H 3350 1225 50  0000 L CNN
F 1 "OPA4196" H 3350 1125 50  0000 L CNN
F 2 "" H 3250 975 50  0001 C CNN
F 3 "" H 3350 1275 50  0001 C CNN
F 4 "OPA4196IDR" H 3250 975 50  0001 C CNN "MPN"
	5    3250 975 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 975  3650 1275
Wire Wire Line
	3650 1275 3050 1275
Wire Wire Line
	3050 1275 3050 1075
$Comp
L power:GNDA #PWR?
U 1 1 5DB4A32D
P 3050 875
F 0 "#PWR?" H 3050 625 50  0001 C CNN
F 1 "GNDA" H 3055 702 50  0000 C CNN
F 2 "" H 3050 875 50  0001 C CNN
F 3 "" H 3050 875 50  0001 C CNN
	1    3050 875 
	0    1    1    0   
$EndComp
$Comp
L symbols:OPA4196 U?
U 4 1 5E9434AD
P 4175 975
F 0 "U?" H 4275 1225 50  0000 L CNN
F 1 "OPA4196" H 4275 1125 50  0000 L CNN
F 2 "" H 4175 975 50  0001 C CNN
F 3 "" H 4275 1275 50  0001 C CNN
F 4 "OPA4196IDR" H 4175 975 50  0001 C CNN "MPN"
	4    4175 975 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4575 975  4575 1275
Wire Wire Line
	4575 1275 3975 1275
Wire Wire Line
	3975 1275 3975 1075
$Comp
L power:GNDA #PWR?
U 1 1 5E9434B6
P 3975 875
F 0 "#PWR?" H 3975 625 50  0001 C CNN
F 1 "GNDA" H 3980 702 50  0000 C CNN
F 2 "" H 3975 875 50  0001 C CNN
F 3 "" H 3975 875 50  0001 C CNN
	1    3975 875 
	0    1    1    0   
$EndComp
$Comp
L symbols:LM317 U?
U 1 1 5E9D17E9
P 1350 6825
F 0 "U?" H 1350 7090 50  0000 C CNN
F 1 "LM317" H 1350 6999 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1350 7325 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/LM317M-D-1810713.pdf" H 1350 6825 50  0001 C CNN
	1    1350 6825
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6825 775  6825
Connection ~ 775  6825
Wire Wire Line
	775  6825 625  6825
$Comp
L power:VDD #PWR?
U 1 1 5E9D474A
P 625 6825
F 0 "#PWR?" H 625 6675 50  0001 C CNN
F 1 "VDD" H 642 6998 50  0000 C CNN
F 2 "" H 625 6825 50  0001 C CNN
F 3 "" H 625 6825 50  0001 C CNN
	1    625  6825
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E9D4752
P 775 6925
F 0 "C?" H 867 6971 50  0000 L CNN
F 1 "100nF" H 867 6880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 775 6925 50  0001 C CNN
F 3 "~" H 775 6925 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 775 6925 50  0001 C CNN "MPN"
	1    775  6925
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E9D784C
P 1550 7350
F 0 "R?" V 1450 7350 50  0000 C CNN
F 1 "1K" V 1550 7350 50  0000 C CNN
F 2 "" V 1480 7350 50  0001 C CNN
F 3 "~" H 1550 7350 50  0001 C CNN
	1    1550 7350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E9D9232
P 1350 7575
F 0 "R?" H 1420 7621 50  0000 L CNN
F 1 "10K" H 1420 7530 50  0000 L CNN
F 2 "" V 1280 7575 50  0001 C CNN
F 3 "~" H 1350 7575 50  0001 C CNN
	1    1350 7575
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E9DE39F
P 1350 7725
F 0 "#PWR?" H 1350 7475 50  0001 C CNN
F 1 "GNDREF" H 1355 7552 50  0001 C CNN
F 2 "" H 1350 7725 50  0001 C CNN
F 3 "" H 1350 7725 50  0001 C CNN
	1    1350 7725
	1    0    0    -1  
$EndComp
Wire Wire Line
	775  7725 775  7025
Connection ~ 1350 7725
$Comp
L Device:C_Small C?
U 1 1 5E9E1C09
P 950 7575
F 0 "C?" H 1042 7621 50  0000 L CNN
F 1 "1µF" H 1042 7530 50  0000 L CNN
F 2 "" H 950 7575 50  0001 C CNN
F 3 "~" H 950 7575 50  0001 C CNN
	1    950  7575
	1    0    0    -1  
$EndComp
Wire Wire Line
	775  7725 950  7725
Wire Wire Line
	950  7725 950  7675
Connection ~ 950  7725
Wire Wire Line
	950  7725 1350 7725
$Comp
L Device:R R?
U 1 1 5E9F9B92
P 1850 7350
F 0 "R?" V 1750 7350 50  0000 C CNN
F 1 "100R" V 1850 7350 50  0000 C CNN
F 2 "" V 1780 7350 50  0001 C CNN
F 3 "~" H 1850 7350 50  0001 C CNN
	1    1850 7350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E9FA994
P 2075 7000
F 0 "R?" H 2145 7046 50  0000 L CNN
F 1 "100R" H 2145 6955 50  0000 L CNN
F 2 "" V 2005 7000 50  0001 C CNN
F 3 "~" H 2075 7000 50  0001 C CNN
	1    2075 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E9FB1B5
P 2400 7000
F 0 "R?" H 2470 7046 50  0000 L CNN
F 1 "100R" H 2470 6955 50  0000 L CNN
F 2 "" V 2330 7000 50  0001 C CNN
F 3 "~" H 2400 7000 50  0001 C CNN
	1    2400 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6825 2400 6850
Wire Wire Line
	1650 6825 1750 6825
Wire Wire Line
	2075 6850 2075 6825
Connection ~ 2075 6825
Wire Wire Line
	2075 6825 2400 6825
Wire Wire Line
	2000 7350 2075 7350
Wire Wire Line
	2400 7350 2400 7150
Wire Wire Line
	2075 7150 2075 7350
Connection ~ 2075 7350
Wire Wire Line
	2075 7350 2400 7350
$Comp
L Device:CP_Small C?
U 1 1 5EA067EC
P 2775 7025
F 0 "C?" H 2863 7071 50  0000 L CNN
F 1 "22µF" H 2863 6980 50  0000 L CNN
F 2 "" H 2775 7025 50  0001 C CNN
F 3 "~" H 2775 7025 50  0001 C CNN
	1    2775 7025
	1    0    0    -1  
$EndComp
Wire Wire Line
	2775 6925 2775 6825
Wire Wire Line
	2775 6825 2400 6825
Connection ~ 2400 6825
$Comp
L Device:D_Schottky D?
U 1 1 5EA14780
P 1350 6425
F 0 "D?" H 1350 6641 50  0000 C CNN
F 1 "SS16HE" H 1350 6550 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1350 6425 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/SS13HE-D-1814993.pdf" H 1350 6425 50  0001 C CNN
	1    1350 6425
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6425 775  6425
Wire Wire Line
	775  6425 775  6825
Wire Wire Line
	1500 6425 1750 6425
Wire Wire Line
	1750 6425 1750 6825
Connection ~ 1750 6825
Wire Wire Line
	1750 6825 1900 6825
$Comp
L Device:D_Schottky D?
U 1 1 5EA242DB
P 1725 7125
F 0 "D?" H 1725 6909 50  0000 C CNN
F 1 "SS16HE" H 1725 7000 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1725 7125 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/SS13HE-D-1814993.pdf" H 1725 7125 50  0001 C CNN
	1    1725 7125
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 7425 1350 7350
Connection ~ 1350 7350
Wire Wire Line
	950  7350 1350 7350
Wire Wire Line
	950  7350 950  7475
Wire Wire Line
	1400 7350 1350 7350
Wire Wire Line
	1575 7125 1350 7125
Wire Wire Line
	1350 7025 1350 7125
Connection ~ 1350 7125
Wire Wire Line
	1350 7125 1350 7350
Wire Wire Line
	1875 7125 1900 7125
Wire Wire Line
	1900 7125 1900 6825
Connection ~ 1900 6825
Wire Wire Line
	1900 6825 2075 6825
Wire Wire Line
	2775 7125 2775 7225
Wire Wire Line
	2775 7725 1350 7725
$Comp
L power:+12V #PWR?
U 1 1 5EA46CF2
P 2775 6825
F 0 "#PWR?" H 2775 6675 50  0001 C CNN
F 1 "+12V" H 2790 6998 50  0000 C CNN
F 2 "" H 2775 6825 50  0001 C CNN
F 3 "" H 2775 6825 50  0001 C CNN
	1    2775 6825
	1    0    0    -1  
$EndComp
Connection ~ 2775 6825
$Comp
L Device:R R?
U 1 1 5EA892B1
P 4525 2600
AR Path="/5EA892B1" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892B1" Ref="R?"  Part="1" 
F 0 "R?" V 4475 2400 50  0000 C CNN
F 1 "0R5" V 4475 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4455 2600 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/418/NG_CD_2176422_A-1591892.pdf" H 4525 2600 50  0001 C CNN
F 4 "TLRP3A30WR100FTE" H 4525 2600 50  0001 C CNN "MPN"
	1    4525 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA892DD
P 4225 3050
AR Path="/5EA892DD" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892DD" Ref="R?"  Part="1" 
F 0 "R?" H 4295 3096 50  0000 L CNN
F 1 "10k" H 4295 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4155 3050 50  0001 C CNN
F 3 "~" H 4225 3050 50  0001 C CNN
F 4 "APC0805B10K0N" H 4225 3050 50  0001 C CNN "MPN"
	1    4225 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA892E4
P 4850 3050
AR Path="/5EA892E4" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892E4" Ref="R?"  Part="1" 
F 0 "R?" H 4650 3100 50  0000 L CNN
F 1 "10k" H 4650 3000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4780 3050 50  0001 C CNN
F 3 "~" H 4850 3050 50  0001 C CNN
F 4 "APC0805B10K0N" H 4850 3050 50  0001 C CNN "MPN"
	1    4850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4225 3200 4425 3200
Wire Wire Line
	4425 3200 4425 3350
Wire Wire Line
	4850 3200 4625 3200
Wire Wire Line
	4625 3200 4625 3350
$Comp
L Device:R R?
U 1 1 5EA892FF
P 4675 4100
AR Path="/5EA892FF" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892FF" Ref="R?"  Part="1" 
F 0 "R?" H 4745 4146 50  0000 L CNN
F 1 "1k" H 4745 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4605 4100 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 4675 4100 50  0001 C CNN
F 4 "RT0805FRE071KL" H 4675 4100 50  0001 C CNN "MPN"
	1    4675 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EA89309
P 4675 4600
AR Path="/5EA89309" Ref="C?"  Part="1" 
AR Path="/5CA3E8E1/5EA89309" Ref="C?"  Part="1" 
F 0 "C?" H 4775 4650 50  0000 L CNN
F 1 "10nF" H 4775 4550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4675 4600 50  0001 C CNN
F 3 "~" H 4675 4600 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 4675 4600 50  0001 C CNN "MPN"
	1    4675 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4675 4250 4675 4400
$Comp
L symbols:OPA4196 U?
U 2 1 5EA89311
P 4525 3550
AR Path="/5EA89311" Ref="U?"  Part="2" 
AR Path="/5CA3E8E1/5EA89311" Ref="U?"  Part="3" 
F 0 "U?" V 4625 3900 50  0000 R CNN
F 1 "OPA4196" V 4725 4000 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4525 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 4625 3850 50  0001 C CNN
F 4 "OPA4196IDR" H 4525 3550 50  0001 C CNN "MPN"
	2    4525 3550
	0    -1   1    0   
$EndComp
Connection ~ 4675 4400
Wire Wire Line
	4675 4400 4675 4500
Wire Wire Line
	4625 3350 4825 3350
Wire Wire Line
	4825 3350 4825 3500
Wire Wire Line
	3725 3200 3775 3200
Wire Wire Line
	4225 3200 4075 3200
Connection ~ 4225 3200
Connection ~ 4625 3350
Text Notes 4100 2350 0    39   ~ 0
Shunt resistor is at least 2W 1%
Text Notes 3500 3725 0    39   ~ 0
165 / 20 = gain of 8.25\n\n0.4V * 8.25 = 3.3V
$Comp
L Connector:TestPoint TP?
U 1 1 5EA8932B
P 4925 4400
AR Path="/5CA3E8E1/5EA8932B" Ref="TP?"  Part="1" 
AR Path="/5EA8932B" Ref="TP?"  Part="1" 
F 0 "TP?" H 4983 4518 50  0000 L CNN
F 1 "Iread" H 4983 4427 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5125 4400 50  0001 C CNN
F 3 "~" H 5125 4400 50  0001 C CNN
	1    4925 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 4400 4675 4400
$Comp
L power:GNDA #PWR?
U 1 1 5EA89332
P 3725 3250
AR Path="/5CA3E8E1/5EA89332" Ref="#PWR?"  Part="1" 
AR Path="/5EA89332" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3725 3000 50  0001 C CNN
F 1 "GNDA" H 3730 3077 50  0000 C CNN
F 2 "" H 3725 3250 50  0001 C CNN
F 3 "" H 3725 3250 50  0001 C CNN
	1    3725 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5EA89338
P 4675 4700
AR Path="/5CA3E8E1/5EA89338" Ref="#PWR?"  Part="1" 
AR Path="/5EA89338" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4675 4450 50  0001 C CNN
F 1 "GNDA" H 4680 4527 50  0000 C CNN
F 2 "" H 4675 4700 50  0001 C CNN
F 3 "" H 4675 4700 50  0001 C CNN
	1    4675 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3725 3200 3725 3250
$Comp
L Device:CP_Small C?
U 1 1 5EA8933F
P 3825 2700
AR Path="/5CA3E8E1/5EA8933F" Ref="C?"  Part="1" 
AR Path="/5EA8933F" Ref="C?"  Part="1" 
F 0 "C?" H 3913 2746 50  0000 L CNN
F 1 "100µF" H 3913 2655 50  0000 L CNN
F 2 "" H 3825 2700 50  0001 C CNN
F 3 "~" H 3825 2700 50  0001 C CNN
	1    3825 2700
	1    0    0    -1  
$EndComp
Connection ~ 3825 2600
Wire Wire Line
	3825 2600 3375 2600
$Comp
L Device:CP_Small C?
U 1 1 5EA89347
P 3375 2700
AR Path="/5CA3E8E1/5EA89347" Ref="C?"  Part="1" 
AR Path="/5EA89347" Ref="C?"  Part="1" 
F 0 "C?" H 3463 2746 50  0000 L CNN
F 1 "100µF" H 3463 2655 50  0000 L CNN
F 2 "" H 3375 2700 50  0001 C CNN
F 3 "~" H 3375 2700 50  0001 C CNN
	1    3375 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3825 2800 3575 2800
$Comp
L power:GNDA #PWR?
U 1 1 5EA8934E
P 3575 2800
AR Path="/5CA3E8E1/5EA8934E" Ref="#PWR?"  Part="1" 
AR Path="/5EA8934E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3575 2550 50  0001 C CNN
F 1 "GNDA" H 3580 2627 50  0000 C CNN
F 2 "" H 3575 2800 50  0001 C CNN
F 3 "" H 3575 2800 50  0001 C CNN
	1    3575 2800
	1    0    0    -1  
$EndComp
Connection ~ 3575 2800
Wire Wire Line
	3575 2800 3375 2800
Connection ~ 3375 2600
$Comp
L Device:CP_Small C?
U 1 1 5EAA8715
P 5025 2700
AR Path="/5CA4A3FE/5EAA8715" Ref="C?"  Part="1" 
AR Path="/5EAA8715" Ref="C?"  Part="1" 
F 0 "C?" H 5117 2746 50  0000 L CNN
F 1 "22µF" H 5117 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5025 2700 50  0001 C CNN
F 3 "~" H 5025 2700 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 5025 2700 50  0001 C CNN "MPN"
	1    5025 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EAA871C
P 6575 2700
AR Path="/5CA4A3FE/5EAA871C" Ref="C?"  Part="1" 
AR Path="/5EAA871C" Ref="C?"  Part="1" 
F 0 "C?" H 6667 2746 50  0000 L CNN
F 1 "1µF" H 6667 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6575 2700 50  0001 C CNN
F 3 "~" H 6575 2700 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 6575 2700 50  0001 C CNN "MPN"
	1    6575 2700
	1    0    0    -1  
$EndComp
Connection ~ 6575 2600
$Comp
L power:GNDA #PWR?
U 1 1 5EAA874D
P 6575 2800
AR Path="/5CA4A3FE/5EAA874D" Ref="#PWR?"  Part="1" 
AR Path="/5EAA874D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6575 2550 50  0001 C CNN
F 1 "GNDA" H 6580 2627 50  0000 C CNN
F 2 "" H 6575 2800 50  0001 C CNN
F 3 "" H 6575 2800 50  0001 C CNN
	1    6575 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5EAA8753
P 5025 2800
AR Path="/5CA4A3FE/5EAA8753" Ref="#PWR?"  Part="1" 
AR Path="/5EAA8753" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5025 2550 50  0001 C CNN
F 1 "GNDA" H 5030 2627 50  0000 C CNN
F 2 "" H 5025 2800 50  0001 C CNN
F 3 "" H 5025 2800 50  0001 C CNN
	1    5025 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5EAA8781
P 7125 2700
AR Path="/5CA4A3FE/5EAA8781" Ref="C?"  Part="1" 
AR Path="/5EAA8781" Ref="C?"  Part="1" 
F 0 "C?" H 7213 2746 50  0000 L CNN
F 1 "100µF" H 7213 2655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7125 2700 50  0001 C CNN
F 3 "~" H 7125 2700 50  0001 C CNN
	1    7125 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7125 2800 7625 2800
$Comp
L Device:CP_Small C?
U 1 1 5EAA8788
P 7625 2700
AR Path="/5CA4A3FE/5EAA8788" Ref="C?"  Part="1" 
AR Path="/5EAA8788" Ref="C?"  Part="1" 
F 0 "C?" H 7713 2746 50  0000 L CNN
F 1 "100µF" H 7713 2655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7625 2700 50  0001 C CNN
F 3 "~" H 7625 2700 50  0001 C CNN
	1    7625 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6575 2600 7125 2600
Connection ~ 7125 2600
Wire Wire Line
	7125 2600 7625 2600
Wire Wire Line
	7125 2800 6575 2800
Connection ~ 7125 2800
Connection ~ 6575 2800
Wire Wire Line
	7625 2600 8125 2600
Connection ~ 7625 2600
$Comp
L Device:C_Small C?
U 1 1 5EAA8797
P 6575 2500
AR Path="/5CA4A3FE/5EAA8797" Ref="C?"  Part="1" 
AR Path="/5EAA8797" Ref="C?"  Part="1" 
F 0 "C?" H 6667 2546 50  0000 L CNN
F 1 "1µF" H 6667 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6575 2500 50  0001 C CNN
F 3 "~" H 6575 2500 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 6575 2500 50  0001 C CNN "MPN"
	1    6575 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EAA879E
P 7125 2500
AR Path="/5CA4A3FE/5EAA879E" Ref="C?"  Part="1" 
AR Path="/5EAA879E" Ref="C?"  Part="1" 
F 0 "C?" H 7217 2546 50  0000 L CNN
F 1 "1µF" H 7217 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7125 2500 50  0001 C CNN
F 3 "~" H 7125 2500 50  0001 C CNN
F 4 "GRM21BR6YA106KE43L" H 7125 2500 50  0001 C CNN "MPN"
	1    7125 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5EAA87A4
P 7125 2400
AR Path="/5CA4A3FE/5EAA87A4" Ref="#PWR?"  Part="1" 
AR Path="/5EAA87A4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7125 2150 50  0001 C CNN
F 1 "GNDA" H 7130 2227 50  0000 C CNN
F 2 "" H 7125 2400 50  0001 C CNN
F 3 "" H 7125 2400 50  0001 C CNN
	1    7125 2400
	-1   0    0    1   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5EAA87AA
P 7625 2500
AR Path="/5CA4A3FE/5EAA87AA" Ref="C?"  Part="1" 
AR Path="/5EAA87AA" Ref="C?"  Part="1" 
F 0 "C?" H 7713 2546 50  0000 L CNN
F 1 "470µF" H 7713 2455 50  0000 L CNN
F 2 "" H 7625 2500 50  0001 C CNN
F 3 "~" H 7625 2500 50  0001 C CNN
	1    7625 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	6575 2400 7125 2400
Connection ~ 7125 2400
Wire Wire Line
	7125 2400 7625 2400
Wire Wire Line
	7325 5575 7525 5575
Wire Wire Line
	7525 5575 7525 5625
Wire Wire Line
	7475 4925 7475 4475
Wire Wire Line
	7475 4475 6875 4475
Wire Wire Line
	6875 4475 6875 4825
Connection ~ 6775 5575
Wire Wire Line
	6775 5575 7025 5575
Wire Wire Line
	7475 4925 7625 4925
Wire Wire Line
	6100 5575 6100 5875
Wire Wire Line
	6100 5875 5500 5875
Wire Wire Line
	5500 5875 5500 5675
Wire Wire Line
	6775 5025 6875 5025
Text Notes 5625 6100 0    39   ~ 0
(9.88 / 59.88) * 20 = 3.3\n
Wire Wire Line
	7625 4925 7625 4825
Connection ~ 7625 4925
Wire Wire Line
	7625 4925 7850 4925
Wire Wire Line
	5575 8075 5575 7925
Connection ~ 5575 7925
Wire Wire Line
	5575 7925 5625 7925
$Comp
L Device:R R?
U 1 1 5EABE711
P 7175 5575
AR Path="/5CA4C891/5EABE711" Ref="R?"  Part="1" 
AR Path="/5EABE711" Ref="R?"  Part="1" 
F 0 "R?" V 7075 5625 50  0000 R CNN
F 1 "9k88" V 7275 5625 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7105 5575 50  0001 C CNN
F 3 "~" H 7175 5575 50  0001 C CNN
F 4 "TNPW08059K88BEEN" H 7175 5575 50  0001 C CNN "MPN"
	1    7175 5575
	0    1    1    0   
$EndComp
$Comp
L symbols:OPA4196 U?
U 4 1 5EABE718
P 7075 4925
AR Path="/5CA4C891/5EABE718" Ref="U?"  Part="4" 
AR Path="/5EABE718" Ref="U?"  Part="4" 
F 0 "U?" H 7200 4560 50  0000 C CNN
F 1 "OPA4196" H 7200 4651 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7075 4925 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 7175 5225 50  0001 C CNN
F 4 "OPA4196IDR" H 7075 4925 50  0001 C CNN "MPN"
	4    7075 4925
	1    0    0    1   
$EndComp
$Comp
L symbols:OPA4196 U?
U 2 1 5EABE71F
P 6575 6525
AR Path="/5CA4C891/5EABE71F" Ref="U?"  Part="2" 
AR Path="/5EABE71F" Ref="U?"  Part="2" 
F 0 "U?" H 6700 6890 50  0000 C CNN
F 1 "OPA4196" H 6700 6799 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6575 6525 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 6675 6825 50  0001 C CNN
F 4 "OPA4196IDR" H 6575 6525 50  0001 C CNN "MPN"
	2    6575 6525
	-1   0    0    -1  
$EndComp
$Comp
L symbols:OPA4196 U?
U 3 1 5EABE726
P 5825 7825
AR Path="/5CA4C891/5EABE726" Ref="U?"  Part="3" 
AR Path="/5EABE726" Ref="U?"  Part="3" 
F 0 "U?" H 5950 8190 50  0000 C CNN
F 1 "OPA4196" H 5950 8099 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5825 7825 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 5925 8125 50  0001 C CNN
F 4 "OPA4196IDR" H 5825 7825 50  0001 C CNN "MPN"
	3    5825 7825
	1    0    0    -1  
$EndComp
$Comp
L symbols:OPA4196 U?
U 5 1 5EABE72D
P 5700 5575
AR Path="/5CA4C891/5EABE72D" Ref="U?"  Part="5" 
AR Path="/5EABE72D" Ref="U?"  Part="5" 
F 0 "U?" H 5825 5940 50  0000 C CNN
F 1 "OPA4196" H 5825 5849 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5700 5575 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4196.pdf" H 5800 5875 50  0001 C CNN
F 4 "OPA4196IDR" H 5700 5575 50  0001 C CNN "MPN"
	5    5700 5575
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE75D
P 7625 4825
AR Path="/5CA4C891/5EABE75D" Ref="TP?"  Part="1" 
AR Path="/5EABE75D" Ref="TP?"  Part="1" 
F 0 "TP?" H 7683 4943 50  0000 L CNN
F 1 "Vread" H 7683 4852 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7825 4825 50  0001 C CNN
F 3 "~" H 7825 4825 50  0001 C CNN
	1    7625 4825
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE763
P 5650 6450
AR Path="/5CA4C891/5EABE763" Ref="TP?"  Part="1" 
AR Path="/5EABE763" Ref="TP?"  Part="1" 
F 0 "TP?" H 5708 6568 50  0000 L CNN
F 1 "Vreg" H 5708 6477 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5850 6450 50  0001 C CNN
F 3 "~" H 5850 6450 50  0001 C CNN
	1    5650 6450
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE769
P 7275 6500
AR Path="/5CA4C891/5EABE769" Ref="TP?"  Part="1" 
AR Path="/5EABE769" Ref="TP?"  Part="1" 
F 0 "TP?" H 7217 6526 50  0000 R CNN
F 1 "Vset" H 7217 6617 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7475 6500 50  0001 C CNN
F 3 "~" H 7475 6500 50  0001 C CNN
	1    7275 6500
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5EABE76F
P 5575 8075
AR Path="/5CA4C891/5EABE76F" Ref="TP?"  Part="1" 
AR Path="/5EABE76F" Ref="TP?"  Part="1" 
F 0 "TP?" H 5517 8101 50  0000 R CNN
F 1 "Iset" H 5517 8192 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5775 8075 50  0001 C CNN
F 3 "~" H 5775 8075 50  0001 C CNN
	1    5575 8075
	-1   0    0    1   
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5EABE776
P 7525 5625
AR Path="/5CA4C891/5EABE776" Ref="#PWR?"  Part="1" 
AR Path="/5EABE776" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7525 5375 50  0001 C CNN
F 1 "GNDA" H 7530 5452 50  0000 C CNN
F 2 "" H 7525 5625 50  0001 C CNN
F 3 "" H 7525 5625 50  0001 C CNN
	1    7525 5625
	1    0    0    -1  
$EndComp
Wire Wire Line
	6775 5025 6775 5575
$Comp
L Device:R R?
U 1 1 5EABE781
P 7025 6625
AR Path="/5CA4C891/5EABE781" Ref="R?"  Part="1" 
AR Path="/5EABE781" Ref="R?"  Part="1" 
F 0 "R?" V 6818 6625 50  0000 C CNN
F 1 "10K" V 6909 6625 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6955 6625 50  0001 C CNN
F 3 "CRCW080510K0FKEAC" H 7025 6625 50  0001 C CNN
	1    7025 6625
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EABE78F
P 6300 7225
AR Path="/5CA4C891/5EABE78F" Ref="R?"  Part="1" 
AR Path="/5EABE78F" Ref="R?"  Part="1" 
F 0 "R?" H 6370 7271 50  0000 L CNN
F 1 "?" H 6370 7180 50  0000 L CNN
F 2 "" V 6230 7225 50  0001 C CNN
F 3 "~" H 6300 7225 50  0001 C CNN
	1    6300 7225
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 7225 7050 7375
$Comp
L power:GNDA #PWR?
U 1 1 5EABE79A
P 7050 7375
AR Path="/5CA4C891/5EABE79A" Ref="#PWR?"  Part="1" 
AR Path="/5EABE79A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 7125 50  0001 C CNN
F 1 "GNDA" H 7055 7202 50  0000 C CNN
F 2 "" H 7050 7375 50  0001 C CNN
F 3 "" H 7050 7375 50  0001 C CNN
	1    7050 7375
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 6450 5650 6525
Connection ~ 5650 6525
$Comp
L Connector:USB_A J?
U 1 1 5EB445F8
P 8875 1500
AR Path="/5CA214F9/5EB445F8" Ref="J?"  Part="1" 
AR Path="/5EB445F8" Ref="J?"  Part="1" 
F 0 "J?" H 8930 1967 50  0000 C CNN
F 1 "USB_A" H 8930 1876 50  0000 C CNN
F 2 "footprints:USBA" H 9025 1450 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/643/bel_SS-52100-001-1216592.pdf" H 9025 1450 50  0001 C CNN
F 4 "SS-52100-001" H 8875 1500 50  0001 C CNN "MPN"
	1    8875 1500
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F3:STM32F373C8Tx U?
U 1 1 5EB445FF
P 11575 4850
AR Path="/5CA214F9/5EB445FF" Ref="U?"  Part="1" 
AR Path="/5EB445FF" Ref="U?"  Part="1" 
F 0 "U?" H 11575 5000 50  0000 C CNN
F 1 "STM32F373C8Tx" H 11575 4850 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 10975 3350 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00046749.pdf" H 11575 4850 50  0001 C CNN
F 4 "STM32F373C8T6" H 11575 4850 50  0001 C CNN "MPN"
	1    11575 4850
	1    0    0    -1  
$EndComp
Text Label 9175 1500 0    50   ~ 0
USB_D+
Text Label 9175 1600 0    50   ~ 0
USB_D-
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44607
P 8875 1900
AR Path="/5CA214F9/5EB44607" Ref="#PWR?"  Part="1" 
AR Path="/5EB44607" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8875 1650 50  0001 C CNN
F 1 "GNDREF" H 8880 1727 50  0001 C CNN
F 2 "" H 8875 1900 50  0001 C CNN
F 3 "" H 8875 1900 50  0001 C CNN
	1    8875 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8775 1900 8875 1900
Connection ~ 8875 1900
Text Label 12275 4650 0    50   ~ 0
USB_D+
Text Label 12275 4550 0    50   ~ 0
USB_D-
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44611
P 11575 6450
AR Path="/5CA214F9/5EB44611" Ref="#PWR?"  Part="1" 
AR Path="/5EB44611" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 11575 6200 50  0001 C CNN
F 1 "GNDREF" H 11580 6277 50  0001 C CNN
F 2 "" H 11575 6450 50  0001 C CNN
F 3 "" H 11575 6450 50  0001 C CNN
	1    11575 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9175 1500 9625 1500
$Comp
L Device:R R?
U 1 1 5EB44619
P 9625 1350
AR Path="/5CA214F9/5EB44619" Ref="R?"  Part="1" 
AR Path="/5EB44619" Ref="R?"  Part="1" 
F 0 "R?" H 9695 1396 50  0000 L CNN
F 1 "1k" H 9695 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9555 1350 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 9625 1350 50  0001 C CNN
F 4 "RT0805FRE071KL" H 9625 1350 50  0001 C CNN "MPN"
	1    9625 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB4461F
P 14350 7325
AR Path="/5CA214F9/5EB4461F" Ref="#PWR?"  Part="1" 
AR Path="/5EB4461F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14350 7075 50  0001 C CNN
F 1 "GNDREF" V 14355 7197 50  0001 R CNN
F 2 "" H 14350 7325 50  0001 C CNN
F 3 "" H 14350 7325 50  0001 C CNN
	1    14350 7325
	0    1    1    0   
$EndComp
Text Label 14200 6725 0    50   ~ 0
ENC1_A
Text Label 14200 7875 0    50   ~ 0
ENC1_B
Text Label 15300 8975 0    50   ~ 0
ENC0_SW
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44628
P 14950 7425
AR Path="/5CA214F9/5EB44628" Ref="#PWR?"  Part="1" 
AR Path="/5EB44628" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14950 7175 50  0001 C CNN
F 1 "GNDREF" H 14955 7252 50  0001 C CNN
F 2 "" H 14950 7425 50  0001 C CNN
F 3 "" H 14950 7425 50  0001 C CNN
	1    14950 7425
	1    0    0    -1  
$EndComp
Text Label 15300 7225 0    50   ~ 0
ENC1_SW
$Comp
L power:+3V3 #PWR?
U 1 1 5EB44634
P 9625 900
AR Path="/5CA214F9/5EB44634" Ref="#PWR?"  Part="1" 
AR Path="/5EB44634" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9625 750 50  0001 C CNN
F 1 "+3V3" H 9640 1073 50  0000 C CNN
F 2 "" H 9625 900 50  0001 C CNN
F 3 "" H 9625 900 50  0001 C CNN
	1    9625 900 
	1    0    0    -1  
$EndComp
Text Label 12275 3550 0    50   ~ 0
ENC0_A
Text Label 12275 3650 0    50   ~ 0
ENC0_B
Text Label 12275 5750 0    50   ~ 0
ENC1_A
Text Label 12275 5850 0    50   ~ 0
ENC1_B
Text Label 12275 3750 0    50   ~ 0
ENC0_SW
Text Label 12275 3850 0    50   ~ 0
ENC1_SW
NoConn ~ 9175 1300
$Comp
L Device:R R?
U 1 1 5EB44643
P 14850 5950
AR Path="/5CA214F9/5EB44643" Ref="R?"  Part="1" 
AR Path="/5EB44643" Ref="R?"  Part="1" 
F 0 "R?" V 14900 6200 50  0000 C CNN
F 1 "1k" V 14900 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14780 5950 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 14850 5950 50  0001 C CNN
F 4 "RT0805FRE071KL" H 14850 5950 50  0001 C CNN "MPN"
	1    14850 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5EB44649
P 14500 5800
AR Path="/5CA214F9/5EB44649" Ref="#PWR?"  Part="1" 
AR Path="/5EB44649" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14500 5650 50  0001 C CNN
F 1 "+3V3" V 14515 5928 50  0000 L CNN
F 2 "" H 14500 5800 50  0001 C CNN
F 3 "" H 14500 5800 50  0001 C CNN
	1    14500 5800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44650
P 9475 1050
AR Path="/5CA214F9/5EB44650" Ref="R?"  Part="1" 
AR Path="/5EB44650" Ref="R?"  Part="1" 
F 0 "R?" H 9545 1096 50  0000 L CNN
F 1 "1k" H 9545 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9405 1050 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 9475 1050 50  0001 C CNN
F 4 "RT0805FRE071KL" H 9475 1050 50  0001 C CNN "MPN"
	1    9475 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44657
P 9775 1050
AR Path="/5CA214F9/5EB44657" Ref="R?"  Part="1" 
AR Path="/5EB44657" Ref="R?"  Part="1" 
F 0 "R?" H 9845 1096 50  0000 L CNN
F 1 "1k" H 9845 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9705 1050 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 9775 1050 50  0001 C CNN
F 4 "RT0805FRE071KL" H 9775 1050 50  0001 C CNN "MPN"
	1    9775 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9775 1200 9625 1200
Connection ~ 9625 1200
Wire Wire Line
	9625 1200 9475 1200
Wire Wire Line
	9475 900  9625 900 
Connection ~ 9625 900 
Wire Wire Line
	9625 900  9775 900 
$Comp
L Device:C_Small C?
U 1 1 5EB44664
P 1475 3750
AR Path="/5CA214F9/5EB44664" Ref="C?"  Part="1" 
AR Path="/5EB44664" Ref="C?"  Part="1" 
F 0 "C?" H 1567 3796 50  0000 L CNN
F 1 "1µF" H 1567 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1475 3750 50  0001 C CNN
F 3 "~" H 1475 3750 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 1475 3750 50  0001 C CNN "MPN"
	1    1475 3750
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB4466B
P 1075 3750
AR Path="/5CA214F9/5EB4466B" Ref="C?"  Part="1" 
AR Path="/5EB4466B" Ref="C?"  Part="1" 
F 0 "C?" H 1167 3796 50  0000 L CNN
F 1 "100nF" H 1167 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1075 3750 50  0001 C CNN
F 3 "~" H 1075 3750 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1075 3750 50  0001 C CNN "MPN"
	1    1075 3750
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB44672
P 675 3750
AR Path="/5CA214F9/5EB44672" Ref="C?"  Part="1" 
AR Path="/5EB44672" Ref="C?"  Part="1" 
F 0 "C?" H 767 3796 50  0000 L CNN
F 1 "10nF" H 767 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 675 3750 50  0001 C CNN
F 3 "~" H 675 3750 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 675 3750 50  0001 C CNN "MPN"
	1    675  3750
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB44679
P 1475 4400
AR Path="/5CA214F9/5EB44679" Ref="C?"  Part="1" 
AR Path="/5EB44679" Ref="C?"  Part="1" 
F 0 "C?" H 1567 4446 50  0000 L CNN
F 1 "1µF" H 1567 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1475 4400 50  0001 C CNN
F 3 "~" H 1475 4400 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 1475 4400 50  0001 C CNN "MPN"
	1    1475 4400
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB44680
P 1075 4400
AR Path="/5CA214F9/5EB44680" Ref="C?"  Part="1" 
AR Path="/5EB44680" Ref="C?"  Part="1" 
F 0 "C?" H 1167 4446 50  0000 L CNN
F 1 "100nF" H 1167 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1075 4400 50  0001 C CNN
F 3 "~" H 1075 4400 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1075 4400 50  0001 C CNN "MPN"
	1    1075 4400
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB44687
P 675 4400
AR Path="/5CA214F9/5EB44687" Ref="C?"  Part="1" 
AR Path="/5EB44687" Ref="C?"  Part="1" 
F 0 "C?" H 767 4446 50  0000 L CNN
F 1 "10nF" H 767 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 675 4400 50  0001 C CNN
F 3 "~" H 675 4400 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 675 4400 50  0001 C CNN "MPN"
	1    675  4400
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB4468E
P 1475 5050
AR Path="/5CA214F9/5EB4468E" Ref="C?"  Part="1" 
AR Path="/5EB4468E" Ref="C?"  Part="1" 
F 0 "C?" H 1567 5096 50  0000 L CNN
F 1 "1µF" H 1567 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1475 5050 50  0001 C CNN
F 3 "~" H 1475 5050 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 1475 5050 50  0001 C CNN "MPN"
	1    1475 5050
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB44695
P 1075 5050
AR Path="/5CA214F9/5EB44695" Ref="C?"  Part="1" 
AR Path="/5EB44695" Ref="C?"  Part="1" 
F 0 "C?" H 1167 5096 50  0000 L CNN
F 1 "100nF" H 1167 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1075 5050 50  0001 C CNN
F 3 "~" H 1075 5050 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1075 5050 50  0001 C CNN "MPN"
	1    1075 5050
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB4469C
P 675 5050
AR Path="/5CA214F9/5EB4469C" Ref="C?"  Part="1" 
AR Path="/5EB4469C" Ref="C?"  Part="1" 
F 0 "C?" H 767 5096 50  0000 L CNN
F 1 "10nF" H 767 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 675 5050 50  0001 C CNN
F 3 "~" H 675 5050 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 675 5050 50  0001 C CNN "MPN"
	1    675  5050
	1    0    0    1   
$EndComp
Text Label 1975 3650 0    50   ~ 0
VDDA
Text Label 11775 3350 1    50   ~ 0
VDDA
Text Label 11875 3350 1    50   ~ 0
VDDSD
Text Label 11675 3350 1    50   ~ 0
VDD1
Text Label 10875 3950 2    50   ~ 0
VREFSD
Wire Wire Line
	675  4950 1075 4950
Wire Wire Line
	675  5150 1075 5150
Connection ~ 1075 5150
Wire Wire Line
	1075 5150 1475 5150
Connection ~ 1075 4950
Wire Wire Line
	1075 4950 1475 4950
Connection ~ 1475 4950
Wire Wire Line
	1475 4950 1775 4950
Connection ~ 1475 4300
Wire Wire Line
	1475 4300 1775 4300
Wire Wire Line
	675  4300 1075 4300
Wire Wire Line
	675  4500 1075 4500
Connection ~ 1075 4500
Wire Wire Line
	1075 4500 1475 4500
Connection ~ 1075 4300
Wire Wire Line
	1075 4300 1475 4300
Connection ~ 1475 3650
Wire Wire Line
	1475 3650 1775 3650
Wire Wire Line
	675  3650 1075 3650
Wire Wire Line
	1075 3850 1475 3850
Connection ~ 1075 3650
Wire Wire Line
	1075 3650 1475 3650
Text Label 1975 4300 0    50   ~ 0
VDDSD
Text Label 1975 4950 0    50   ~ 0
VREFSD
$Comp
L power:+3V3 #PWR?
U 1 1 5EB446BF
P 675 5600
AR Path="/5CA214F9/5EB446BF" Ref="#PWR?"  Part="1" 
AR Path="/5EB446BF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 675 5450 50  0001 C CNN
F 1 "+3V3" H 690 5773 50  0000 C CNN
F 2 "" H 675 5600 50  0001 C CNN
F 3 "" H 675 5600 50  0001 C CNN
	1    675  5600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB446C5
P 675 5800
AR Path="/5CA214F9/5EB446C5" Ref="#PWR?"  Part="1" 
AR Path="/5EB446C5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 675 5550 50  0001 C CNN
F 1 "GNDREF" H 680 5627 50  0001 C CNN
F 2 "" H 675 5800 50  0001 C CNN
F 3 "" H 675 5800 50  0001 C CNN
	1    675  5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB446CC
P 675 5700
AR Path="/5CA214F9/5EB446CC" Ref="C?"  Part="1" 
AR Path="/5EB446CC" Ref="C?"  Part="1" 
F 0 "C?" H 767 5746 50  0000 L CNN
F 1 "4.7µF" H 767 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 675 5700 50  0001 C CNN
F 3 "~" H 675 5700 50  0001 C CNN
F 4 "GRM21BR71C475KE51L" H 675 5700 50  0001 C CNN "MPN"
	1    675  5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB446D3
P 1075 5700
AR Path="/5CA214F9/5EB446D3" Ref="C?"  Part="1" 
AR Path="/5EB446D3" Ref="C?"  Part="1" 
F 0 "C?" H 1167 5746 50  0000 L CNN
F 1 "100nF" H 1167 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1075 5700 50  0001 C CNN
F 3 "~" H 1075 5700 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1075 5700 50  0001 C CNN "MPN"
	1    1075 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB446DA
P 1475 5700
AR Path="/5CA214F9/5EB446DA" Ref="C?"  Part="1" 
AR Path="/5EB446DA" Ref="C?"  Part="1" 
F 0 "C?" H 1567 5746 50  0000 L CNN
F 1 "100nF" H 1567 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1475 5700 50  0001 C CNN
F 3 "~" H 1475 5700 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1475 5700 50  0001 C CNN "MPN"
	1    1475 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB446E1
P 1875 5700
AR Path="/5CA214F9/5EB446E1" Ref="C?"  Part="1" 
AR Path="/5EB446E1" Ref="C?"  Part="1" 
F 0 "C?" H 1967 5746 50  0000 L CNN
F 1 "100nF" H 1967 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1875 5700 50  0001 C CNN
F 3 "~" H 1875 5700 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1875 5700 50  0001 C CNN "MPN"
	1    1875 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	675  5600 1075 5600
Connection ~ 675  5600
Connection ~ 1075 5600
Wire Wire Line
	1075 5600 1475 5600
Connection ~ 1475 5600
Wire Wire Line
	1475 5600 1875 5600
Wire Wire Line
	675  5800 1075 5800
Connection ~ 675  5800
Connection ~ 1075 5800
Wire Wire Line
	1075 5800 1475 5800
Connection ~ 1475 5800
Wire Wire Line
	1475 5800 1875 5800
$Comp
L Device:C_Small C?
U 1 1 5EB446F4
P 2275 5700
AR Path="/5CA214F9/5EB446F4" Ref="C?"  Part="1" 
AR Path="/5EB446F4" Ref="C?"  Part="1" 
F 0 "C?" H 2367 5746 50  0000 L CNN
F 1 "10nF" H 2367 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2275 5700 50  0001 C CNN
F 3 "~" H 2275 5700 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 2275 5700 50  0001 C CNN "MPN"
	1    2275 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 5600 2275 5600
Connection ~ 1875 5600
Wire Wire Line
	2275 5800 1875 5800
Connection ~ 1875 5800
Wire Wire Line
	2275 5600 2575 5600
Connection ~ 2275 5600
Text Label 2775 5600 0    50   ~ 0
VDD1
$Comp
L Device:Rotary_Encoder_Switch SW?
U 1 1 5EB44702
P 14650 7325
AR Path="/5CA214F9/5EB44702" Ref="SW?"  Part="1" 
AR Path="/5EB44702" Ref="SW?"  Part="1" 
F 0 "SW?" H 14650 7692 50  0000 C CNN
F 1 "ENC1 (Current)" H 14650 7601 50  0000 C CNN
F 2 "footprints:PEC12R-2xxxf-Sxxxx" H 14500 7485 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/54/EC12R-777795.pdf" H 14650 7585 50  0001 C CNN
F 4 "PEC12R-2220F-S0024" H 14650 7325 50  0001 C CNN "MPN"
	1    14650 7325
	1    0    0    -1  
$EndComp
Wire Wire Line
	15300 5900 15300 6100
Wire Wire Line
	15300 6100 15400 6100
$Comp
L power:GNDREF #PWR?
U 1 1 5EB4470A
P 15400 6100
AR Path="/5CA214F9/5EB4470A" Ref="#PWR?"  Part="1" 
AR Path="/5EB4470A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15400 5850 50  0001 C CNN
F 1 "GNDREF" H 15405 5927 50  0001 C CNN
F 2 "" H 15400 6100 50  0001 C CNN
F 3 "" H 15400 6100 50  0001 C CNN
	1    15400 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	15350 4700 15550 4700
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44711
P 15550 4700
AR Path="/5CA214F9/5EB44711" Ref="#PWR?"  Part="1" 
AR Path="/5EB44711" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15550 4450 50  0001 C CNN
F 1 "GNDREF" H 15555 4527 50  0001 C CNN
F 2 "" H 15550 4700 50  0001 C CNN
F 3 "" H 15550 4700 50  0001 C CNN
	1    15550 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	15350 5000 15200 5000
Wire Wire Line
	15000 5000 15000 4950
$Comp
L Device:R R?
U 1 1 5EB4471A
P 14850 5800
AR Path="/5CA214F9/5EB4471A" Ref="R?"  Part="1" 
AR Path="/5EB4471A" Ref="R?"  Part="1" 
F 0 "R?" V 14900 6050 50  0000 C CNN
F 1 "1k" V 14900 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14780 5800 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 14850 5800 50  0001 C CNN
F 4 "RT0805FRE071KL" H 14850 5800 50  0001 C CNN "MPN"
	1    14850 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15000 5950 15000 5800
Wire Wire Line
	14700 5800 14700 5950
Wire Wire Line
	15000 5800 15350 5800
Connection ~ 15000 5800
Wire Wire Line
	14700 5800 14500 5800
Connection ~ 14700 5800
Text Label 10150 3275 0    50   ~ 0
NRST
$Comp
L Connector_Generic:Conn_01x11 J?
U 1 1 5EB44729
P 15550 5400
AR Path="/5CA214F9/5EB44729" Ref="J?"  Part="1" 
AR Path="/5EB44729" Ref="J?"  Part="1" 
F 0 "J?" H 15630 5442 50  0000 L CNN
F 1 "Display" H 15630 5351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x11_P2.54mm_Vertical" H 15550 5400 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/276/0022284150_PCB_HEADERS-159054.pdf" H 15550 5400 50  0001 C CNN
F 4 "M20-9991646" H 15550 5400 50  0001 C CNN "MPN"
	1    15550 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	15350 4700 15350 4900
Wire Wire Line
	15350 5900 15300 5900
Wire Wire Line
	11475 3350 11575 3350
Connection ~ 11575 3350
Wire Wire Line
	11575 3350 11675 3350
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44734
P 15225 1050
AR Path="/5CA214F9/5EB44734" Ref="#PWR?"  Part="1" 
AR Path="/5EB44734" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15225 800 50  0001 C CNN
F 1 "GNDREF" V 15230 922 50  0001 R CNN
F 2 "" H 15225 1050 50  0001 C CNN
F 3 "" H 15225 1050 50  0001 C CNN
	1    15225 1050
	0    -1   -1   0   
$EndComp
Text Label 15375 1400 0    50   ~ 0
OUTPUT_ON
$Comp
L Device:LED D?
U 1 1 5EB4473C
P 14475 1050
AR Path="/5CA214F9/5EB4473C" Ref="D?"  Part="1" 
AR Path="/5EB4473C" Ref="D?"  Part="1" 
F 0 "D?" H 14468 795 50  0000 C CNN
F 1 "GREEN" H 14468 886 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14475 1050 50  0001 C CNN
F 3 "~" H 14475 1050 50  0001 C CNN
F 4 "APTD3216LZGCK" H 14475 1050 50  0001 C CNN "MPN"
	1    14475 1050
	-1   0    0    1   
$EndComp
Text Label 12275 5950 0    50   ~ 0
OUTPUT_ON
Wire Wire Line
	10875 3750 10325 3750
$Comp
L Device:R R?
U 1 1 5EB44745
P 10325 3900
AR Path="/5CA214F9/5EB44745" Ref="R?"  Part="1" 
AR Path="/5EB44745" Ref="R?"  Part="1" 
F 0 "R?" H 10395 3946 50  0000 L CNN
F 1 "10k" H 10395 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10255 3900 50  0001 C CNN
F 3 "~" H 10325 3900 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 10325 3900 50  0001 C CNN "MPN"
	1    10325 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB4474B
P 10125 4075
AR Path="/5CA214F9/5EB4474B" Ref="#PWR?"  Part="1" 
AR Path="/5EB4474B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10125 3825 50  0001 C CNN
F 1 "GNDREF" H 10130 3902 50  0001 C CNN
F 2 "" H 10125 4075 50  0001 C CNN
F 3 "" H 10125 4075 50  0001 C CNN
	1    10125 4075
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5EB44752
P 10175 5100
AR Path="/5CA214F9/5EB44752" Ref="Y?"  Part="1" 
AR Path="/5EB44752" Ref="Y?"  Part="1" 
F 0 "Y?" V 10125 4850 50  0000 L CNN
F 1 "Crystal" V 10225 4700 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 10175 5100 50  0001 C CNN
F 3 "~" H 10175 5100 50  0001 C CNN
F 4 "LFXTAL033206" H 10175 5100 50  0001 C CNN "MPN"
	1    10175 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	10875 5050 10475 5050
Wire Wire Line
	10475 5050 10475 4950
Wire Wire Line
	10475 4950 10175 4950
Wire Wire Line
	10175 5250 10475 5250
Wire Wire Line
	10475 5250 10475 5150
Wire Wire Line
	10475 5150 10875 5150
$Comp
L Device:C_Small C?
U 1 1 5EB4475F
P 10175 4850
AR Path="/5CA214F9/5EB4475F" Ref="C?"  Part="1" 
AR Path="/5EB4475F" Ref="C?"  Part="1" 
F 0 "C?" H 10267 4896 50  0000 L CNN
F 1 "10pF" H 10267 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10175 4850 50  0001 C CNN
F 3 "~" H 10175 4850 50  0001 C CNN
F 4 "C0805C100J5GAC" H 10175 4850 50  0001 C CNN "MPN"
	1    10175 4850
	1    0    0    -1  
$EndComp
Connection ~ 10175 4950
$Comp
L Device:C_Small C?
U 1 1 5EB44767
P 10175 5350
AR Path="/5CA214F9/5EB44767" Ref="C?"  Part="1" 
AR Path="/5EB44767" Ref="C?"  Part="1" 
F 0 "C?" H 10267 5396 50  0000 L CNN
F 1 "10pF" H 10267 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10175 5350 50  0001 C CNN
F 3 "~" H 10175 5350 50  0001 C CNN
F 4 "C0805C100J5GAC" H 10175 5350 50  0001 C CNN "MPN"
	1    10175 5350
	1    0    0    -1  
$EndComp
Connection ~ 10175 5250
$Comp
L power:GNDREF #PWR?
U 1 1 5EB4476E
P 10175 5450
AR Path="/5CA214F9/5EB4476E" Ref="#PWR?"  Part="1" 
AR Path="/5EB4476E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10175 5200 50  0001 C CNN
F 1 "GNDREF" H 10180 5277 50  0001 C CNN
F 2 "" H 10175 5450 50  0001 C CNN
F 3 "" H 10175 5450 50  0001 C CNN
	1    10175 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44774
P 10175 4750
AR Path="/5CA214F9/5EB44774" Ref="#PWR?"  Part="1" 
AR Path="/5EB44774" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10175 4500 50  0001 C CNN
F 1 "GNDREF" H 10180 4577 50  0001 C CNN
F 2 "" H 10175 4750 50  0001 C CNN
F 3 "" H 10175 4750 50  0001 C CNN
	1    10175 4750
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5EB4477B
P 9650 3275
AR Path="/5CA214F9/5EB4477B" Ref="SW?"  Part="1" 
AR Path="/5EB4477B" Ref="SW?"  Part="1" 
F 0 "SW?" H 9650 3560 50  0000 C CNN
F 1 "RST" H 9650 3469 50  0000 C CNN
F 2 "footprints:LL3301NF065QG" H 9650 3475 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/140/P090002-267756.pdf" H 9650 3475 50  0001 C CNN
F 4 "LL3301NF065QG" H 9650 3275 50  0001 C CNN "MPN"
	1    9650 3275
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44781
P 9450 3275
AR Path="/5CA214F9/5EB44781" Ref="#PWR?"  Part="1" 
AR Path="/5EB44781" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9450 3025 50  0001 C CNN
F 1 "GNDREF" H 9455 3102 50  0001 C CNN
F 2 "" H 9450 3275 50  0001 C CNN
F 3 "" H 9450 3275 50  0001 C CNN
	1    9450 3275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44788
P 10000 3275
AR Path="/5CA214F9/5EB44788" Ref="R?"  Part="1" 
AR Path="/5EB44788" Ref="R?"  Part="1" 
F 0 "R?" V 9793 3275 50  0000 C CNN
F 1 "1k" V 9884 3275 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9930 3275 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 10000 3275 50  0001 C CNN
F 4 "RT0805FRE071KL" H 10000 3275 50  0001 C CNN "MPN"
	1    10000 3275
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 3275 10350 3275
$Comp
L Device:C_Small C?
U 1 1 5EB44790
P 10350 3375
AR Path="/5CA214F9/5EB44790" Ref="C?"  Part="1" 
AR Path="/5EB44790" Ref="C?"  Part="1" 
F 0 "C?" H 10442 3421 50  0000 L CNN
F 1 "10nF" H 10442 3330 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10350 3375 50  0001 C CNN
F 3 "~" H 10350 3375 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 10350 3375 50  0001 C CNN "MPN"
	1    10350 3375
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44796
P 10350 3475
AR Path="/5CA214F9/5EB44796" Ref="#PWR?"  Part="1" 
AR Path="/5EB44796" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10350 3225 50  0001 C CNN
F 1 "GNDREF" H 10355 3302 50  0001 C CNN
F 2 "" H 10350 3475 50  0001 C CNN
F 3 "" H 10350 3475 50  0001 C CNN
	1    10350 3475
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5EB4479C
P 675 4950
AR Path="/5CA214F9/5EB4479C" Ref="#PWR?"  Part="1" 
AR Path="/5EB4479C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 675 4800 50  0001 C CNN
F 1 "+3V3" H 690 5123 50  0000 C CNN
F 2 "" H 675 4950 50  0001 C CNN
F 3 "" H 675 4950 50  0001 C CNN
	1    675  4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5EB447A2
P 675 4300
AR Path="/5CA214F9/5EB447A2" Ref="#PWR?"  Part="1" 
AR Path="/5EB447A2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 675 4150 50  0001 C CNN
F 1 "+3V3" H 690 4473 50  0000 C CNN
F 2 "" H 675 4300 50  0001 C CNN
F 3 "" H 675 4300 50  0001 C CNN
	1    675  4300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5EB447A8
P 675 3650
AR Path="/5CA214F9/5EB447A8" Ref="#PWR?"  Part="1" 
AR Path="/5EB447A8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 675 3500 50  0001 C CNN
F 1 "+3V3" H 690 3823 50  0000 C CNN
F 2 "" H 675 3650 50  0001 C CNN
F 3 "" H 675 3650 50  0001 C CNN
	1    675  3650
	1    0    0    -1  
$EndComp
Text Label 12275 4350 0    50   ~ 0
USART_TX
Text Label 12275 4450 0    50   ~ 0
USART_RX
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 5EB447B0
P 15550 4300
AR Path="/5CA214F9/5EB447B0" Ref="J?"  Part="1" 
AR Path="/5EB447B0" Ref="J?"  Part="1" 
F 0 "J?" H 15630 4292 50  0000 L CNN
F 1 "USART" H 15630 4201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 15550 4300 50  0001 C CNN
F 3 "~" H 15550 4300 50  0001 C CNN
	1    15550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	15350 4700 15350 4500
Connection ~ 15350 4700
Text Label 15350 4300 2    50   ~ 0
USART_TX
Text Label 15350 4100 2    50   ~ 0
USART_RX
$Comp
L power:+3.3V #PWR?
U 1 1 5EB447BA
P 15000 4950
AR Path="/5CA214F9/5EB447BA" Ref="#PWR?"  Part="1" 
AR Path="/5EB447BA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15000 4800 50  0001 C CNN
F 1 "+3.3V" H 15015 5123 50  0000 C CNN
F 2 "" H 15000 4950 50  0001 C CNN
F 3 "" H 15000 4950 50  0001 C CNN
	1    15000 4950
	1    0    0    -1  
$EndComp
Text Label 12275 4750 0    50   ~ 0
Display_RS
Text Label 10875 5350 2    50   ~ 0
Display_E
Text Label 12275 4850 0    50   ~ 0
Display_D4
Text Label 12275 4950 0    50   ~ 0
Display_D5
Text Label 12275 5450 0    50   ~ 0
Display_D6
Text Label 12275 5550 0    50   ~ 0
Display_D7
Text Label 15350 5100 2    50   ~ 0
Display_RS
Text Label 15350 5500 2    50   ~ 0
Display_D5
Text Label 15350 5400 2    50   ~ 0
Display_D4
Text Label 15350 5600 2    50   ~ 0
Display_D6
Text Label 15350 5700 2    50   ~ 0
Display_D7
$Comp
L Device:C_Small C?
U 1 1 5EB447CC
P 10075 900
AR Path="/5CA214F9/5EB447CC" Ref="C?"  Part="1" 
AR Path="/5EB447CC" Ref="C?"  Part="1" 
F 0 "C?" V 9846 900 50  0000 C CNN
F 1 "10nF" V 9937 900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10075 900 50  0001 C CNN
F 3 "~" H 10075 900 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 10075 900 50  0001 C CNN "MPN"
	1    10075 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	9975 900  9775 900 
Connection ~ 9775 900 
$Comp
L power:GNDREF #PWR?
U 1 1 5EB447D4
P 10175 900
AR Path="/5CA214F9/5EB447D4" Ref="#PWR?"  Part="1" 
AR Path="/5EB447D4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10175 650 50  0001 C CNN
F 1 "GNDREF" V 10180 772 50  0001 R CNN
F 2 "" H 10175 900 50  0001 C CNN
F 3 "" H 10175 900 50  0001 C CNN
	1    10175 900 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15250 8975 15300 8975
$Comp
L Device:C_Small C?
U 1 1 5EB447DC
P 15300 9075
AR Path="/5CA214F9/5EB447DC" Ref="C?"  Part="1" 
AR Path="/5EB447DC" Ref="C?"  Part="1" 
F 0 "C?" H 15392 9121 50  0000 L CNN
F 1 "10nF" H 15392 9030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 15300 9075 50  0001 C CNN
F 3 "~" H 15300 9075 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 15300 9075 50  0001 C CNN "MPN"
	1    15300 9075
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB447E3
P 15100 7225
AR Path="/5CA214F9/5EB447E3" Ref="R?"  Part="1" 
AR Path="/5EB447E3" Ref="R?"  Part="1" 
F 0 "R?" V 14893 7225 50  0000 C CNN
F 1 "1k" V 14984 7225 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 15030 7225 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 15100 7225 50  0001 C CNN
F 4 "RT0805FRE071KL" H 15100 7225 50  0001 C CNN "MPN"
	1    15100 7225
	0    1    1    0   
$EndComp
Wire Wire Line
	15250 7225 15300 7225
$Comp
L Device:C_Small C?
U 1 1 5EB447EB
P 15300 7325
AR Path="/5CA214F9/5EB447EB" Ref="C?"  Part="1" 
AR Path="/5EB447EB" Ref="C?"  Part="1" 
F 0 "C?" H 15392 7371 50  0000 L CNN
F 1 "10nF" H 15392 7280 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 15300 7325 50  0001 C CNN
F 3 "~" H 15300 7325 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 15300 7325 50  0001 C CNN "MPN"
	1    15300 7325
	1    0    0    -1  
$EndComp
Wire Wire Line
	15300 7425 14950 7425
$Comp
L Device:R R?
U 1 1 5EB447F3
P 13950 7225
AR Path="/5CA214F9/5EB447F3" Ref="R?"  Part="1" 
AR Path="/5EB447F3" Ref="R?"  Part="1" 
F 0 "R?" V 13743 7225 50  0000 C CNN
F 1 "10k" V 13834 7225 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13880 7225 50  0001 C CNN
F 3 "~" H 13950 7225 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 13950 7225 50  0001 C CNN "MPN"
	1    13950 7225
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB447FA
P 14200 6925
AR Path="/5CA214F9/5EB447FA" Ref="R?"  Part="1" 
AR Path="/5EB447FA" Ref="R?"  Part="1" 
F 0 "R?" H 14130 6879 50  0000 R CNN
F 1 "10k" H 14130 6970 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14130 6925 50  0001 C CNN
F 3 "~" H 14200 6925 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 14200 6925 50  0001 C CNN "MPN"
	1    14200 6925
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44801
P 14200 7675
AR Path="/5CA214F9/5EB44801" Ref="R?"  Part="1" 
AR Path="/5EB44801" Ref="R?"  Part="1" 
F 0 "R?" H 14270 7721 50  0000 L CNN
F 1 "10k" H 14270 7630 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14130 7675 50  0001 C CNN
F 3 "~" H 14200 7675 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 14200 7675 50  0001 C CNN "MPN"
	1    14200 7675
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44808
P 13950 7425
AR Path="/5CA214F9/5EB44808" Ref="R?"  Part="1" 
AR Path="/5EB44808" Ref="R?"  Part="1" 
F 0 "R?" V 13750 7425 50  0000 C CNN
F 1 "10k" V 13850 7425 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13880 7425 50  0001 C CNN
F 3 "~" H 13950 7425 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 13950 7425 50  0001 C CNN "MPN"
	1    13950 7425
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14200 7525 14200 7425
Wire Wire Line
	14200 7425 14100 7425
Wire Wire Line
	14200 7425 14350 7425
Connection ~ 14200 7425
Wire Wire Line
	14100 7225 14200 7225
Wire Wire Line
	14200 7225 14200 7075
Connection ~ 14200 7225
Wire Wire Line
	14200 7225 14350 7225
Wire Wire Line
	13800 7425 13800 7325
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44817
P 13950 6725
AR Path="/5CA214F9/5EB44817" Ref="#PWR?"  Part="1" 
AR Path="/5EB44817" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13950 6475 50  0001 C CNN
F 1 "GNDREF" V 13955 6597 50  0001 R CNN
F 2 "" H 13950 6725 50  0001 C CNN
F 3 "" H 13950 6725 50  0001 C CNN
	1    13950 6725
	0    1    1    0   
$EndComp
Connection ~ 13800 7325
Wire Wire Line
	13800 7325 13800 7225
$Comp
L Device:C_Small C?
U 1 1 5EB44820
P 14050 7875
AR Path="/5CA214F9/5EB44820" Ref="C?"  Part="1" 
AR Path="/5EB44820" Ref="C?"  Part="1" 
F 0 "C?" V 14150 7875 50  0000 C CNN
F 1 "10nF" V 14250 7875 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14050 7875 50  0001 C CNN
F 3 "~" H 14050 7875 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 14050 7875 50  0001 C CNN "MPN"
	1    14050 7875
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB44827
P 14050 6725
AR Path="/5CA214F9/5EB44827" Ref="C?"  Part="1" 
AR Path="/5EB44827" Ref="C?"  Part="1" 
F 0 "C?" V 13821 6725 50  0000 C CNN
F 1 "10nF" V 13912 6725 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14050 6725 50  0001 C CNN
F 3 "~" H 14050 6725 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 14050 6725 50  0001 C CNN "MPN"
	1    14050 6725
	0    1    1    0   
$EndComp
Wire Wire Line
	14150 6725 14200 6725
Wire Wire Line
	14200 6725 14200 6775
Wire Wire Line
	14200 7825 14200 7875
Wire Wire Line
	14200 7875 14150 7875
Connection ~ 14950 7425
Wire Wire Line
	14200 9625 14150 9625
Wire Wire Line
	14200 9575 14200 9625
Wire Wire Line
	14200 8475 14200 8525
Wire Wire Line
	14150 8475 14200 8475
$Comp
L Device:C_Small C?
U 1 1 5EB44837
P 14050 8475
AR Path="/5CA214F9/5EB44837" Ref="C?"  Part="1" 
AR Path="/5EB44837" Ref="C?"  Part="1" 
F 0 "C?" V 13821 8475 50  0000 C CNN
F 1 "10nF" V 13912 8475 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14050 8475 50  0001 C CNN
F 3 "~" H 14050 8475 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 14050 8475 50  0001 C CNN "MPN"
	1    14050 8475
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB4483E
P 14050 9625
AR Path="/5CA214F9/5EB4483E" Ref="C?"  Part="1" 
AR Path="/5EB4483E" Ref="C?"  Part="1" 
F 0 "C?" V 14150 9625 50  0000 C CNN
F 1 "10nF" V 14250 9625 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14050 9625 50  0001 C CNN
F 3 "~" H 14050 9625 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 14050 9625 50  0001 C CNN "MPN"
	1    14050 9625
	0    1    1    0   
$EndComp
Wire Wire Line
	14200 8975 14350 8975
Connection ~ 14200 8975
Wire Wire Line
	14200 8975 14200 8825
Wire Wire Line
	14100 8975 14200 8975
Connection ~ 14200 9175
Wire Wire Line
	14200 9175 14350 9175
Wire Wire Line
	14200 9175 14100 9175
Wire Wire Line
	14200 9275 14200 9175
$Comp
L Device:R R?
U 1 1 5EB4484D
P 13950 9175
AR Path="/5CA214F9/5EB4484D" Ref="R?"  Part="1" 
AR Path="/5EB4484D" Ref="R?"  Part="1" 
F 0 "R?" V 13750 9175 50  0000 C CNN
F 1 "10k" V 13850 9175 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13880 9175 50  0001 C CNN
F 3 "~" H 13950 9175 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 13950 9175 50  0001 C CNN "MPN"
	1    13950 9175
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44854
P 14200 9425
AR Path="/5CA214F9/5EB44854" Ref="R?"  Part="1" 
AR Path="/5EB44854" Ref="R?"  Part="1" 
F 0 "R?" H 14270 9471 50  0000 L CNN
F 1 "10k" H 14270 9380 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14130 9425 50  0001 C CNN
F 3 "~" H 14200 9425 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 14200 9425 50  0001 C CNN "MPN"
	1    14200 9425
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB4485B
P 14200 8675
AR Path="/5CA214F9/5EB4485B" Ref="R?"  Part="1" 
AR Path="/5EB4485B" Ref="R?"  Part="1" 
F 0 "R?" H 14130 8629 50  0000 R CNN
F 1 "10k" H 14130 8720 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14130 8675 50  0001 C CNN
F 3 "~" H 14200 8675 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 14200 8675 50  0001 C CNN "MPN"
	1    14200 8675
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44862
P 13950 8975
AR Path="/5CA214F9/5EB44862" Ref="R?"  Part="1" 
AR Path="/5EB44862" Ref="R?"  Part="1" 
F 0 "R?" V 13743 8975 50  0000 C CNN
F 1 "10k" V 13834 8975 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13880 8975 50  0001 C CNN
F 3 "~" H 13950 8975 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 13950 8975 50  0001 C CNN "MPN"
	1    13950 8975
	0    1    1    0   
$EndComp
Connection ~ 14950 9175
Wire Wire Line
	15300 9175 14950 9175
$Comp
L Device:R R?
U 1 1 5EB4486B
P 15100 8975
AR Path="/5CA214F9/5EB4486B" Ref="R?"  Part="1" 
AR Path="/5EB4486B" Ref="R?"  Part="1" 
F 0 "R?" V 14893 8975 50  0000 C CNN
F 1 "1k" V 14984 8975 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 15030 8975 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 15100 8975 50  0001 C CNN
F 4 "RT0805FRE071KL" H 15100 8975 50  0001 C CNN "MPN"
	1    15100 8975
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44871
P 14950 9175
AR Path="/5CA214F9/5EB44871" Ref="#PWR?"  Part="1" 
AR Path="/5EB44871" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14950 8925 50  0001 C CNN
F 1 "GNDREF" H 14955 9002 50  0001 C CNN
F 2 "" H 14950 9175 50  0001 C CNN
F 3 "" H 14950 9175 50  0001 C CNN
	1    14950 9175
	1    0    0    -1  
$EndComp
Text Label 14200 9625 0    50   ~ 0
ENC0_B
Text Label 14200 8475 0    50   ~ 0
ENC0_A
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44879
P 14350 9075
AR Path="/5CA214F9/5EB44879" Ref="#PWR?"  Part="1" 
AR Path="/5EB44879" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14350 8825 50  0001 C CNN
F 1 "GNDREF" H 14355 8947 50  0001 R CNN
F 2 "" H 14350 9075 50  0001 C CNN
F 3 "" H 14350 9075 50  0001 C CNN
	1    14350 9075
	0    1    1    0   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW?
U 1 1 5EB44880
P 14650 9075
AR Path="/5CA214F9/5EB44880" Ref="SW?"  Part="1" 
AR Path="/5EB44880" Ref="SW?"  Part="1" 
F 0 "SW?" H 14650 9442 50  0000 C CNN
F 1 "ENC0 (Voltage)" H 14650 9351 50  0000 C CNN
F 2 "footprints:PEC12R-2xxxf-Sxxxx" H 14500 9235 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/54/EC12R-777795.pdf" H 14650 9335 50  0001 C CNN
F 4 "PEC12R-2220F-S0024" H 14650 9075 50  0001 C CNN "MPN"
	1    14650 9075
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 8975 13800 9075
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44887
P 13950 9625
AR Path="/5CA214F9/5EB44887" Ref="#PWR?"  Part="1" 
AR Path="/5EB44887" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13950 9375 50  0001 C CNN
F 1 "GNDREF" V 13955 9497 50  0001 R CNN
F 2 "" H 13950 9625 50  0001 C CNN
F 3 "" H 13950 9625 50  0001 C CNN
	1    13950 9625
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB4488D
P 13950 8475
AR Path="/5CA214F9/5EB4488D" Ref="#PWR?"  Part="1" 
AR Path="/5EB4488D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13950 8225 50  0001 C CNN
F 1 "GNDREF" V 13955 8347 50  0001 R CNN
F 2 "" H 13950 8475 50  0001 C CNN
F 3 "" H 13950 8475 50  0001 C CNN
	1    13950 8475
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5EB44893
P 13800 9075
AR Path="/5CA214F9/5EB44893" Ref="#PWR?"  Part="1" 
AR Path="/5EB44893" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13800 8925 50  0001 C CNN
F 1 "+3V3" V 13815 9203 50  0000 L CNN
F 2 "" H 13800 9075 50  0001 C CNN
F 3 "" H 13800 9075 50  0001 C CNN
	1    13800 9075
	0    -1   -1   0   
$EndComp
Connection ~ 13800 9075
Wire Wire Line
	13800 9075 13800 9175
$Comp
L power:+3V3 #PWR?
U 1 1 5EB4489B
P 13800 7325
AR Path="/5CA214F9/5EB4489B" Ref="#PWR?"  Part="1" 
AR Path="/5EB4489B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13800 7175 50  0001 C CNN
F 1 "+3V3" V 13815 7453 50  0000 L CNN
F 2 "" H 13800 7325 50  0001 C CNN
F 3 "" H 13800 7325 50  0001 C CNN
	1    13800 7325
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5EB448A1
P 13950 7875
AR Path="/5CA214F9/5EB448A1" Ref="#PWR?"  Part="1" 
AR Path="/5EB448A1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13950 7625 50  0001 C CNN
F 1 "GNDREF" V 13955 7747 50  0001 R CNN
F 2 "" H 13950 7875 50  0001 C CNN
F 3 "" H 13950 7875 50  0001 C CNN
	1    13950 7875
	0    1    1    0   
$EndComp
Text Label 15350 5300 2    50   ~ 0
Display_E
Text Label 10875 5250 2    50   ~ 0
Display_RW
Text Label 15350 5200 2    50   ~ 0
Display_RW
NoConn ~ 10875 6250
Wire Wire Line
	15200 5000 15200 4400
Wire Wire Line
	15200 4400 15350 4400
Connection ~ 15200 5000
Wire Wire Line
	15200 5000 15000 5000
NoConn ~ 12275 4250
NoConn ~ 10875 6050
NoConn ~ 10875 6150
Text Label 15375 2350 0    50   ~ 0
C_LIMIT_ON
$Comp
L Device:LED D?
U 1 1 5EB448B5
P 14475 2000
AR Path="/5CA214F9/5EB448B5" Ref="D?"  Part="1" 
AR Path="/5EB448B5" Ref="D?"  Part="1" 
F 0 "D?" H 14468 1745 50  0000 C CNN
F 1 "BLUE" H 14468 1836 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 14475 2000 50  0001 C CNN
F 3 "~" H 14475 2000 50  0001 C CNN
F 4 "APTD3216LVBCD" H 14475 2000 50  0001 C CNN "MPN"
	1    14475 2000
	-1   0    0    1   
$EndComp
Text Label 12275 6050 0    50   ~ 0
C_LIMIT_ON
NoConn ~ 10875 5850
NoConn ~ 12275 5350
Wire Wire Line
	11675 6450 11775 6450
$Comp
L power:GNDA #PWR?
U 1 1 5EB448C1
P 11775 6450
AR Path="/5CA214F9/5EB448C1" Ref="#PWR?"  Part="1" 
AR Path="/5EB448C1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 11775 6200 50  0001 C CNN
F 1 "GNDA" H 11780 6277 50  0000 C CNN
F 2 "" H 11775 6450 50  0001 C CNN
F 3 "" H 11775 6450 50  0001 C CNN
	1    11775 6450
	1    0    0    -1  
$EndComp
Connection ~ 11775 6450
$Comp
L power:GNDA #PWR?
U 1 1 5EB448C8
P 675 5150
AR Path="/5CA214F9/5EB448C8" Ref="#PWR?"  Part="1" 
AR Path="/5EB448C8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 675 4900 50  0001 C CNN
F 1 "GNDA" H 680 4977 50  0000 C CNN
F 2 "" H 675 5150 50  0001 C CNN
F 3 "" H 675 5150 50  0001 C CNN
	1    675  5150
	1    0    0    -1  
$EndComp
Connection ~ 675  5150
$Comp
L power:GNDA #PWR?
U 1 1 5EB448CF
P 675 4500
AR Path="/5CA214F9/5EB448CF" Ref="#PWR?"  Part="1" 
AR Path="/5EB448CF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 675 4250 50  0001 C CNN
F 1 "GNDA" H 680 4327 50  0000 C CNN
F 2 "" H 675 4500 50  0001 C CNN
F 3 "" H 675 4500 50  0001 C CNN
	1    675  4500
	1    0    0    -1  
$EndComp
Connection ~ 675  4500
$Comp
L power:GNDA #PWR?
U 1 1 5EB448D6
P 675 3850
AR Path="/5CA214F9/5EB448D6" Ref="#PWR?"  Part="1" 
AR Path="/5EB448D6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 675 3600 50  0001 C CNN
F 1 "GNDA" H 680 3677 50  0000 C CNN
F 2 "" H 675 3850 50  0001 C CNN
F 3 "" H 675 3850 50  0001 C CNN
	1    675  3850
	1    0    0    -1  
$EndComp
Connection ~ 675  4950
Connection ~ 675  4300
Wire Wire Line
	1075 3850 675  3850
Connection ~ 1075 3850
Connection ~ 675  3850
Text Notes 9625 4600 0    50   ~ 0
Crystal Load Capacitance = 15pF\nPCB, MCU ~10pF
$Comp
L power:VDD #PWR?
U 1 1 5EB448E2
P 13825 1050
AR Path="/5CA214F9/5EB448E2" Ref="#PWR?"  Part="1" 
AR Path="/5EB448E2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13825 900 50  0001 C CNN
F 1 "VDD" H 13842 1223 50  0000 C CNN
F 2 "" H 13825 1050 50  0001 C CNN
F 3 "" H 13825 1050 50  0001 C CNN
	1    13825 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	13825 1050 14025 1050
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5EB448EA
P 15025 1150
AR Path="/5CA214F9/5EB448EA" Ref="Q?"  Part="1" 
AR Path="/5EB448EA" Ref="Q?"  Part="1" 
F 0 "Q?" V 15368 1150 50  0000 C CNN
F 1 "2N7002NXAK" V 15277 1150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 15225 1250 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/2N7002NXAK.pdf" H 15025 1150 50  0001 C CNN
F 4 "2N7002NXAK" V 15025 1150 50  0001 C CNN "MPN"
	1    15025 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14825 1050 14625 1050
$Comp
L power:GNDREF #PWR?
U 1 1 5EB448F1
P 15225 2000
AR Path="/5CA214F9/5EB448F1" Ref="#PWR?"  Part="1" 
AR Path="/5EB448F1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15225 1750 50  0001 C CNN
F 1 "GNDREF" V 15230 1872 50  0001 R CNN
F 2 "" H 15225 2000 50  0001 C CNN
F 3 "" H 15225 2000 50  0001 C CNN
	1    15225 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5EB448F7
P 13825 2000
AR Path="/5CA214F9/5EB448F7" Ref="#PWR?"  Part="1" 
AR Path="/5EB448F7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13825 1850 50  0001 C CNN
F 1 "VDD" H 13842 2173 50  0000 C CNN
F 2 "" H 13825 2000 50  0001 C CNN
F 3 "" H 13825 2000 50  0001 C CNN
	1    13825 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	13825 2000 14025 2000
Wire Wire Line
	14825 2000 14625 2000
$Comp
L Device:R R?
U 1 1 5EB448FF
P 14175 2000
AR Path="/5CA214F9/5EB448FF" Ref="R?"  Part="1" 
AR Path="/5EB448FF" Ref="R?"  Part="1" 
F 0 "R?" V 13968 2000 50  0000 C CNN
F 1 "5k" V 14059 2000 50  0000 C CNN
F 2 "" V 14105 2000 50  0001 C CNN
F 3 "~" H 14175 2000 50  0001 C CNN
	1    14175 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44905
P 14175 1050
AR Path="/5CA214F9/5EB44905" Ref="R?"  Part="1" 
AR Path="/5EB44905" Ref="R?"  Part="1" 
F 0 "R?" V 13968 1050 50  0000 C CNN
F 1 "5k" V 14059 1050 50  0000 C CNN
F 2 "" V 14105 1050 50  0001 C CNN
F 3 "~" H 14175 1050 50  0001 C CNN
	1    14175 1050
	0    1    1    0   
$EndComp
Text Notes 13925 1500 0    50   ~ 0
20V / 4mA = 5000Ω
$Comp
L Switch:SW_Push SW?
U 1 1 5EB4490E
P 9500 3750
AR Path="/5CA214F9/5EB4490E" Ref="SW?"  Part="1" 
AR Path="/5EB4490E" Ref="SW?"  Part="1" 
F 0 "SW?" H 9500 4035 50  0000 C CNN
F 1 "BOOT" H 9500 3944 50  0000 C CNN
F 2 "footprints:LL3301NF065QG" H 9500 3950 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/140/P090002-267756.pdf" H 9500 3950 50  0001 C CNN
F 4 "LL3301NF065QG" H 9500 3750 50  0001 C CNN "MPN"
	1    9500 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EB4491C
P 9950 3850
AR Path="/5CA214F9/5EB4491C" Ref="C?"  Part="1" 
AR Path="/5EB4491C" Ref="C?"  Part="1" 
F 0 "C?" H 10042 3896 50  0000 L CNN
F 1 "10nF" H 10042 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9950 3850 50  0001 C CNN
F 3 "~" H 9950 3850 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 9950 3850 50  0001 C CNN "MPN"
	1    9950 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 3750 9700 3750
$Comp
L power:+3V3 #PWR?
U 1 1 5EB4492A
P 9200 3700
AR Path="/5CA214F9/5EB4492A" Ref="#PWR?"  Part="1" 
AR Path="/5EB4492A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9200 3550 50  0001 C CNN
F 1 "+3V3" H 9215 3873 50  0000 C CNN
F 2 "" H 9200 3700 50  0001 C CNN
F 3 "" H 9200 3700 50  0001 C CNN
	1    9200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3700 9200 3750
Wire Wire Line
	9200 3750 9300 3750
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5EB44933
P 15025 2100
AR Path="/5CA214F9/5EB44933" Ref="Q?"  Part="1" 
AR Path="/5EB44933" Ref="Q?"  Part="1" 
F 0 "Q?" V 15368 2100 50  0000 C CNN
F 1 "2N7002NXAK" V 15277 2100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 15225 2200 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/2N7002NXAK.pdf" H 15025 2100 50  0001 C CNN
F 4 "2N7002NXAK" V 15025 2100 50  0001 C CNN "MPN"
	1    15025 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5EB4493A
P 15025 2900
AR Path="/5CA214F9/5EB4493A" Ref="Q?"  Part="1" 
AR Path="/5EB4493A" Ref="Q?"  Part="1" 
F 0 "Q?" V 15368 2900 50  0000 C CNN
F 1 "2N7002NXAK" V 15277 2900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 15225 3000 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/2N7002NXAK.pdf" H 15025 2900 50  0001 C CNN
F 4 "2N7002NXAK" V 15025 2900 50  0001 C CNN "MPN"
	1    15025 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44940
P 15225 1400
AR Path="/5CA214F9/5EB44940" Ref="R?"  Part="1" 
AR Path="/5EB44940" Ref="R?"  Part="1" 
F 0 "R?" V 15018 1400 50  0000 C CNN
F 1 "10K" V 15109 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 15155 1400 50  0001 C CNN
F 3 "~" H 15225 1400 50  0001 C CNN
	1    15225 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	15025 1350 15025 1400
Wire Wire Line
	15025 1400 15075 1400
$Comp
L Device:R R?
U 1 1 5EB44948
P 15225 2350
AR Path="/5CA214F9/5EB44948" Ref="R?"  Part="1" 
AR Path="/5EB44948" Ref="R?"  Part="1" 
F 0 "R?" V 15018 2350 50  0000 C CNN
F 1 "10K" V 15109 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 15155 2350 50  0001 C CNN
F 3 "~" H 15225 2350 50  0001 C CNN
	1    15225 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	15025 2300 15025 2350
Wire Wire Line
	15025 2350 15075 2350
$Comp
L Device:R R?
U 1 1 5EB44950
P 15225 3150
AR Path="/5CA214F9/5EB44950" Ref="R?"  Part="1" 
AR Path="/5EB44950" Ref="R?"  Part="1" 
F 0 "R?" V 15018 3150 50  0000 C CNN
F 1 "1K" V 15109 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 15155 3150 50  0001 C CNN
F 3 "~" H 15225 3150 50  0001 C CNN
	1    15225 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	15025 3100 15025 3150
Wire Wire Line
	15025 3150 15075 3150
$Comp
L power:GNDREF #PWR?
U 1 1 5EB44958
P 15225 2800
AR Path="/5CA214F9/5EB44958" Ref="#PWR?"  Part="1" 
AR Path="/5EB44958" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15225 2550 50  0001 C CNN
F 1 "GNDREF" V 15230 2672 50  0001 R CNN
F 2 "" H 15225 2800 50  0001 C CNN
F 3 "" H 15225 2800 50  0001 C CNN
	1    15225 2800
	0    -1   -1   0   
$EndComp
Text Label 15375 3150 0    50   ~ 0
CAP_DISCHARGE
Text Label 12275 6150 0    50   ~ 0
CAP_DISCHARGE
$Comp
L Device:R R?
U 1 1 5EB44960
P 14625 2800
AR Path="/5CA214F9/5EB44960" Ref="R?"  Part="1" 
AR Path="/5EB44960" Ref="R?"  Part="1" 
F 0 "R?" V 14418 2800 50  0000 C CNN
F 1 "100R" V 14509 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14555 2800 50  0001 C CNN
F 3 "~" H 14625 2800 50  0001 C CNN
	1    14625 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB44966
P 14325 2800
AR Path="/5CA214F9/5EB44966" Ref="R?"  Part="1" 
AR Path="/5EB44966" Ref="R?"  Part="1" 
F 0 "R?" V 14118 2800 50  0000 C CNN
F 1 "100R" V 14209 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14255 2800 50  0001 C CNN
F 3 "~" H 14325 2800 50  0001 C CNN
	1    14325 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	14775 2800 14825 2800
Wire Wire Line
	14175 2800 13825 2800
Wire Wire Line
	13825 2800 13825 2750
Text HLabel 13825 2750 1    50   Input ~ 0
Vout
$Comp
L symbols:OPA4196 U?
U 3 1 5EB44970
P 4175 4300
AR Path="/5CA214F9/5EB44970" Ref="U?"  Part="2" 
AR Path="/5EB44970" Ref="U?"  Part="3" 
F 0 "U?" H 4275 4665 50  0000 C CNN
F 1 "OPA4196" H 4275 4574 50  0000 C CNN
F 2 "" H 4275 4300 50  0001 C CNN
F 3 "" H 4275 4300 50  0001 C CNN
	3    4175 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3775 4300 3525 4300
Wire Wire Line
	4375 4075 3775 4075
Wire Wire Line
	3775 4075 3775 4300
Connection ~ 3775 4300
Text Label 10875 5650 2    50   ~ 0
Iread
Text Label 12275 5150 0    50   ~ 0
Iread
$Comp
L Device:Net-Tie_2 NT?
U 1 1 5EB4497F
P 1875 3650
AR Path="/5CA214F9/5EB4497F" Ref="NT?"  Part="1" 
AR Path="/5EB4497F" Ref="NT?"  Part="1" 
F 0 "NT?" H 1875 3739 50  0000 C CNN
F 1 "Net-Tie_2" H 1875 3740 50  0001 C CNN
F 2 "" H 1875 3650 50  0001 C CNN
F 3 "~" H 1875 3650 50  0001 C CNN
	1    1875 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:Net-Tie_2 NT?
U 1 1 5EB44985
P 1875 4300
AR Path="/5CA214F9/5EB44985" Ref="NT?"  Part="1" 
AR Path="/5EB44985" Ref="NT?"  Part="1" 
F 0 "NT?" H 1875 4389 50  0000 C CNN
F 1 "Net-Tie_2" H 1875 4390 50  0001 C CNN
F 2 "" H 1875 4300 50  0001 C CNN
F 3 "~" H 1875 4300 50  0001 C CNN
	1    1875 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:Net-Tie_2 NT?
U 1 1 5EB4498B
P 1875 4950
AR Path="/5CA214F9/5EB4498B" Ref="NT?"  Part="1" 
AR Path="/5EB4498B" Ref="NT?"  Part="1" 
F 0 "NT?" H 1875 5039 50  0000 C CNN
F 1 "Net-Tie_2" H 1875 5040 50  0001 C CNN
F 2 "" H 1875 4950 50  0001 C CNN
F 3 "~" H 1875 4950 50  0001 C CNN
	1    1875 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:Net-Tie_2 NT?
U 1 1 5EB44991
P 2675 5600
AR Path="/5CA214F9/5EB44991" Ref="NT?"  Part="1" 
AR Path="/5EB44991" Ref="NT?"  Part="1" 
F 0 "NT?" H 2675 5689 50  0000 C CNN
F 1 "Net-Tie_2" H 2675 5690 50  0001 C CNN
F 2 "" H 2675 5600 50  0001 C CNN
F 3 "~" H 2675 5600 50  0001 C CNN
	1    2675 5600
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5EBC7CA4
P 3125 2600
F 0 "#PWR?" H 3125 2450 50  0001 C CNN
F 1 "VDD" H 3142 2773 50  0000 C CNN
F 2 "" H 3125 2600 50  0001 C CNN
F 3 "" H 3125 2600 50  0001 C CNN
	1    3125 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 2600 3375 2600
Connection ~ 7475 4925
Wire Wire Line
	4375 4400 4675 4400
Wire Wire Line
	5500 5475 5500 5025
Wire Wire Line
	6400 2600 6575 2600
Wire Wire Line
	6775 5575 6775 6425
Wire Wire Line
	7275 6500 7275 6625
Wire Wire Line
	7275 6625 7175 6625
Wire Wire Line
	5400 6525 5400 4950
Wire Wire Line
	5400 4950 6150 4950
Wire Wire Line
	5400 6525 5650 6525
Wire Wire Line
	5300 7925 5575 7925
Text Label 5300 7925 0    50   ~ 0
Iset
Wire Wire Line
	7275 6625 7500 6625
Connection ~ 7275 6625
Text Label 7500 6625 2    50   ~ 0
Vset
Wire Wire Line
	4375 4075 4375 4200
Text Label 3525 4300 0    50   ~ 0
Iread
Wire Wire Line
	5625 6625 5625 7725
Connection ~ 675  3650
Text Label 7850 4925 2    50   ~ 0
Vread
Text Label 10875 5550 2    50   ~ 0
Vread
Text Label 12275 5250 0    50   ~ 0
Vread
Text Label 12275 4050 0    50   ~ 0
Iset
Text Label 12275 4150 0    50   ~ 0
Vset
Wire Wire Line
	10325 4050 10325 4075
Wire Wire Line
	10325 4075 10125 4075
Wire Wire Line
	10125 4075 9950 4075
Wire Wire Line
	9950 4075 9950 3950
Connection ~ 10125 4075
Wire Wire Line
	9950 3750 10325 3750
Connection ~ 9950 3750
Connection ~ 10325 3750
Wire Wire Line
	10350 3275 10725 3275
Wire Wire Line
	10725 3275 10725 3550
Wire Wire Line
	10725 3550 10875 3550
Connection ~ 10350 3275
NoConn ~ 12275 3950
Text Label 12275 6250 0    50   ~ 0
FAN_PWM
Text Label 12275 5650 0    50   ~ 0
FAN_RPM
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5FE5FEE1
P 12650 9050
F 0 "J?" H 12622 8932 50  0000 R CNN
F 1 "FAN" H 12622 9023 50  0000 R CNN
F 2 "" H 12650 9050 50  0001 C CNN
F 3 "~" H 12650 9050 50  0001 C CNN
	1    12650 9050
	-1   0    0    1   
$EndComp
Wire Wire Line
	12450 9150 12350 9150
Wire Wire Line
	12350 9150 12350 9425
$Comp
L power:GNDREF #PWR?
U 1 1 5FE5FEE9
P 12350 9700
F 0 "#PWR?" H 12350 9450 50  0001 C CNN
F 1 "GNDREF" H 12355 9527 50  0001 C CNN
F 2 "" H 12350 9700 50  0001 C CNN
F 3 "" H 12350 9700 50  0001 C CNN
	1    12350 9700
	1    0    0    -1  
$EndComp
Wire Wire Line
	11725 9050 11725 8950
$Comp
L power:+12V #PWR?
U 1 1 5FE5FEF0
P 11725 8725
F 0 "#PWR?" H 11725 8575 50  0001 C CNN
F 1 "+12V" H 11740 8898 50  0000 C CNN
F 2 "" H 11725 8725 50  0001 C CNN
F 3 "" H 11725 8725 50  0001 C CNN
	1    11725 8725
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FE5FEF6
P 11875 8950
F 0 "R?" V 11700 8950 50  0000 C CNN
F 1 "10K" V 11775 8950 50  0000 C CNN
F 2 "" V 11805 8950 50  0001 C CNN
F 3 "~" H 11875 8950 50  0001 C CNN
	1    11875 8950
	0    1    1    0   
$EndComp
Connection ~ 11725 8950
Wire Wire Line
	11725 8950 11725 8725
Wire Wire Line
	12450 9050 11725 9050
Wire Wire Line
	12025 8950 12025 9100
Connection ~ 12025 8950
Wire Wire Line
	12025 8950 12450 8950
$Comp
L Device:R R?
U 1 1 5FE5FF02
P 12025 9250
F 0 "R?" H 11950 9300 50  0000 R CNN
F 1 "10K" H 11950 9200 50  0000 R CNN
F 2 "" V 11955 9250 50  0001 C CNN
F 3 "~" H 12025 9250 50  0001 C CNN
	1    12025 9250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FE5FF08
P 12200 9425
F 0 "R?" V 12025 9425 50  0000 C CNN
F 1 "5K" V 12100 9425 50  0000 C CNN
F 2 "" V 12130 9425 50  0001 C CNN
F 3 "~" H 12200 9425 50  0001 C CNN
	1    12200 9425
	0    1    1    0   
$EndComp
Connection ~ 12350 9425
Wire Wire Line
	12350 9425 12350 9700
Wire Wire Line
	12050 9425 12025 9425
Wire Wire Line
	12025 9425 12025 9400
Wire Wire Line
	12025 9425 11600 9425
Connection ~ 12025 9425
Text Label 11600 9425 0    50   ~ 0
FAN_RPM
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5FE5FF16
P 12450 8425
AR Path="/5CA214F9/5FE5FF16" Ref="Q?"  Part="1" 
AR Path="/5FE5FF16" Ref="Q?"  Part="1" 
F 0 "Q?" H 12675 8325 50  0000 C CNN
F 1 "2N7002NXAK" H 12875 8425 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 12650 8525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/2N7002NXAK.pdf" H 12450 8425 50  0001 C CNN
F 4 "2N7002NXAK" V 12450 8425 50  0001 C CNN "MPN"
	1    12450 8425
	-1   0    0    1   
$EndComp
Wire Wire Line
	12350 8625 12350 8850
Wire Wire Line
	12350 8850 12450 8850
$Comp
L power:GNDREF #PWR?
U 1 1 5FE5FF1E
P 12350 8225
F 0 "#PWR?" H 12350 7975 50  0001 C CNN
F 1 "GNDREF" H 12355 8052 50  0001 C CNN
F 2 "" H 12350 8225 50  0001 C CNN
F 3 "" H 12350 8225 50  0001 C CNN
	1    12350 8225
	-1   0    0    1   
$EndComp
Wire Wire Line
	12650 8425 12925 8425
Text Label 12925 8425 2    50   ~ 0
FAN_PWM
$Comp
L Device:C_Small C?
U 1 1 5FE9AC48
P 3175 7025
F 0 "C?" H 3267 7071 50  0000 L CNN
F 1 "1µF" H 3267 6980 50  0000 L CNN
F 2 "" H 3175 7025 50  0001 C CNN
F 3 "~" H 3175 7025 50  0001 C CNN
	1    3175 7025
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 6925 3175 6825
Wire Wire Line
	3175 6825 2775 6825
Wire Wire Line
	3175 7125 3175 7225
Wire Wire Line
	3175 7225 2775 7225
Connection ~ 2775 7225
Wire Wire Line
	2775 7225 2775 7725
Wire Wire Line
	6775 6625 6825 6625
Wire Wire Line
	7050 6825 6825 6825
Wire Wire Line
	6825 6825 6825 6625
Connection ~ 6825 6625
Wire Wire Line
	6825 6625 6875 6625
Wire Wire Line
	6300 7025 6300 7075
Wire Wire Line
	6300 7025 6650 7025
$Comp
L Device:C_Small C?
U 1 1 5FFC0F1E
P 6650 7200
F 0 "C?" H 6742 7246 50  0000 L CNN
F 1 "?" H 6742 7155 50  0000 L CNN
F 2 "" H 6650 7200 50  0001 C CNN
F 3 "~" H 6650 7200 50  0001 C CNN
	1    6650 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 7100 6650 7025
Connection ~ 6650 7025
Wire Wire Line
	6650 7025 6750 7025
Wire Wire Line
	6650 7300 6650 7375
Wire Wire Line
	6650 7375 7050 7375
Connection ~ 7050 7375
$Comp
L Device:R R?
U 1 1 600595C9
P 6300 7525
AR Path="/5CA4C891/600595C9" Ref="R?"  Part="1" 
AR Path="/600595C9" Ref="R?"  Part="1" 
F 0 "R?" H 6370 7571 50  0000 L CNN
F 1 "?" H 6370 7480 50  0000 L CNN
F 2 "" V 6230 7525 50  0001 C CNN
F 3 "~" H 6300 7525 50  0001 C CNN
	1    6300 7525
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 7675 6300 7825
Wire Wire Line
	6300 7825 6225 7825
Wire Wire Line
	5650 6525 5950 6525
$Comp
L Device:R R?
U 1 1 5EA892EC
P 3925 3200
AR Path="/5EA892EC" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892EC" Ref="R?"  Part="1" 
F 0 "R?" V 3718 3200 50  0000 C CNN
F 1 "165K" V 3809 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3855 3200 50  0001 C CNN
F 3 "~" H 3925 3200 50  0001 C CNN
F 4 "PCF0805R-82K5BT1" H 3925 3200 50  0001 C CNN "MPN"
	1    3925 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA892F7
P 4825 3650
AR Path="/5EA892F7" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EA892F7" Ref="R?"  Part="1" 
F 0 "R?" H 4895 3696 50  0000 L CNN
F 1 "165K" H 4895 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4755 3650 50  0001 C CNN
F 3 "~" H 4825 3650 50  0001 C CNN
F 4 "PCF0805R-82K5BT1" H 4825 3650 50  0001 C CNN "MPN"
	1    4825 3650
	1    0    0    -1  
$EndComp
Text Label 8125 2600 2    50   ~ 0
Vout
$Comp
L Device:R R?
U 1 1 6026AE92
P 5950 6700
F 0 "R?" H 6020 6746 50  0000 L CNN
F 1 "10K" H 6020 6655 50  0000 L CNN
F 2 "" V 5880 6700 50  0001 C CNN
F 3 "~" H 5950 6700 50  0001 C CNN
	1    5950 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 6026B660
P 5950 6875
F 0 "#PWR?" H 5950 6625 50  0001 C CNN
F 1 "GNDA" H 5955 6702 50  0000 C CNN
F 2 "" H 5950 6875 50  0001 C CNN
F 3 "" H 5950 6875 50  0001 C CNN
	1    5950 6875
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6550 5950 6525
Connection ~ 5950 6525
Wire Wire Line
	5950 6525 6175 6525
$Comp
L Device:R R?
U 1 1 6028C1A6
P 6425 5425
F 0 "R?" V 6218 5425 50  0000 C CNN
F 1 "100K" V 6309 5425 50  0000 C CNN
F 2 "" V 6355 5425 50  0001 C CNN
F 3 "~" H 6425 5425 50  0001 C CNN
	1    6425 5425
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6028D9FC
P 6425 5725
F 0 "R?" V 6218 5725 50  0000 C CNN
F 1 "100K" V 6309 5725 50  0000 C CNN
F 2 "" V 6355 5725 50  0001 C CNN
F 3 "~" H 6425 5725 50  0001 C CNN
	1    6425 5725
	0    1    1    0   
$EndComp
Wire Wire Line
	6575 5425 6575 5575
Connection ~ 6575 5575
Wire Wire Line
	6575 5575 6575 5725
Wire Wire Line
	6275 5425 6275 5575
Wire Wire Line
	6100 5575 6275 5575
Connection ~ 6100 5575
Connection ~ 6275 5575
Wire Wire Line
	6275 5575 6275 5725
Wire Wire Line
	6775 5575 6575 5575
Wire Wire Line
	5625 6625 5275 6625
Wire Wire Line
	5275 6625 5275 4975
Wire Wire Line
	5275 4975 3775 4975
Wire Wire Line
	3775 4975 3775 4300
Text Notes 4275 2475 0    50   ~ 0
4 * 0.1Ω = 0.4V
Wire Wire Line
	4675 2600 4850 2600
Wire Wire Line
	3825 2600 4225 2600
$Comp
L Device:R R?
U 1 1 5EBC92B1
P 4225 2750
AR Path="/5EBC92B1" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EBC92B1" Ref="R?"  Part="1" 
F 0 "R?" H 4295 2796 50  0000 L CNN
F 1 "10k" H 4295 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4155 2750 50  0001 C CNN
F 3 "~" H 4225 2750 50  0001 C CNN
F 4 "APC0805B10K0N" H 4225 2750 50  0001 C CNN "MPN"
	1    4225 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EBC9910
P 4850 2750
AR Path="/5EBC9910" Ref="R?"  Part="1" 
AR Path="/5CA3E8E1/5EBC9910" Ref="R?"  Part="1" 
F 0 "R?" H 4650 2800 50  0000 L CNN
F 1 "10k" H 4650 2700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4780 2750 50  0001 C CNN
F 3 "~" H 4850 2750 50  0001 C CNN
F 4 "APC0805B10K0N" H 4850 2750 50  0001 C CNN "MPN"
	1    4850 2750
	1    0    0    -1  
$EndComp
Connection ~ 4850 2600
Wire Wire Line
	4850 2600 5025 2600
Connection ~ 4225 2600
Wire Wire Line
	4225 2600 4375 2600
Wire Wire Line
	4525 3950 4675 3950
Wire Wire Line
	4825 3950 4825 3800
Connection ~ 4675 3950
Wire Wire Line
	4675 3950 4825 3950
$Comp
L Device:D_Zener D?
U 1 1 5ECFF190
P 6375 6875
F 0 "D?" H 6375 6659 50  0000 C CNN
F 1 "10V-16V" H 6375 6750 50  0000 C CNN
F 2 "" H 6375 6875 50  0001 C CNN
F 3 "~" H 6375 6875 50  0001 C CNN
	1    6375 6875
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 7025 6650 6875
Wire Wire Line
	6650 6875 6525 6875
Wire Wire Line
	6225 6875 5950 6875
Wire Wire Line
	5950 6875 5950 6850
Connection ~ 5950 6875
Wire Wire Line
	1450 1950 1600 1950
Connection ~ 1450 1950
$Comp
L Device:Net-Tie_2 NT?
U 1 1 5D81144B
P 1450 2050
F 0 "NT?" V 1404 2094 50  0000 L CNN
F 1 "Net-Tie_2" V 1495 2094 50  0000 L CNN
F 2 "NetTie:NetTie-2_SMD_Pad2.0mm" H 1450 2050 50  0001 C CNN
F 3 "~" H 1450 2050 50  0001 C CNN
	1    1450 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 1950 1450 1950
$Comp
L power:GNDA #PWR?
U 1 1 5D7DB5ED
P 1450 2150
F 0 "#PWR?" H 1450 1900 50  0001 C CNN
F 1 "GNDA" H 1455 1977 50  0000 C CNN
F 2 "" H 1450 2150 50  0001 C CNN
F 3 "" H 1450 2150 50  0001 C CNN
	1    1450 2150
	1    0    0    -1  
$EndComp
Text Label 1100 1850 0    50   ~ 0
Vout
Wire Wire Line
	1300 1950 1100 1950
Connection ~ 1300 1950
Wire Wire Line
	1300 1750 1100 1750
Connection ~ 1300 1750
Wire Wire Line
	1450 1750 1300 1750
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5CF3F139
P 1300 1750
F 0 "#FLG?" H 1300 1825 50  0001 C CNN
F 1 "PWR_FLAG" V 1300 1877 50  0000 L CNN
F 2 "" H 1300 1750 50  0001 C CNN
F 3 "~" H 1300 1750 50  0001 C CNN
	1    1300 1750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5CF42203
P 1300 1950
F 0 "#FLG?" H 1300 2025 50  0001 C CNN
F 1 "PWR_FLAG" V 1300 2077 50  0000 L CNN
F 2 "" H 1300 1950 50  0001 C CNN
F 3 "~" H 1300 1950 50  0001 C CNN
	1    1300 1950
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5D6A578C
P 900 1850
F 0 "J?" H 818 2167 50  0000 C CNN
F 1 "Terminal" H 818 2076 50  0000 C CNN
F 2 "footprints:20020316-GXXXXXXLF" H 900 1850 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/18/20020316-941859.pdf" H 900 1850 50  0001 C CNN
F 4 "20020316-G031B01LF" H 900 1850 50  0001 C CNN "MPN"
	1    900  1850
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CF439A5
P 1600 1950
F 0 "#PWR?" H 1600 1700 50  0001 C CNN
F 1 "GNDREF" V 1605 1822 50  0001 R CNN
F 2 "" H 1600 1950 50  0001 C CNN
F 3 "" H 1600 1950 50  0001 C CNN
	1    1600 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5CF4163C
P 1450 1750
F 0 "#PWR?" H 1450 1600 50  0001 C CNN
F 1 "VDD" V 1450 1900 50  0000 L CNN
F 2 "" H 1450 1750 50  0001 C CNN
F 3 "" H 1450 1750 50  0001 C CNN
	1    1450 1750
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5EABE787
P 6950 7025
AR Path="/5CA4C891/5EABE787" Ref="Q?"  Part="1" 
AR Path="/5EABE787" Ref="Q?"  Part="1" 
F 0 "Q?" H 7156 7071 50  0000 L CNN
F 1 "2N7002NXAK" H 7156 6980 50  0000 L CNN
F 2 "" H 7150 7125 50  0001 C CNN
F 3 "~" H 6950 7025 50  0001 C CNN
	1    6950 7025
	1    0    0    -1  
$EndComp
Wire Wire Line
	1575 2675 1900 2675
Wire Wire Line
	1900 2675 1900 3050
Wire Wire Line
	1275 2675 850  2675
Wire Wire Line
	850  2675 850  3050
$Comp
L Device:D_Schottky D?
U 1 1 5EE05F84
P 1425 2675
F 0 "D?" H 1425 2891 50  0000 C CNN
F 1 "SS16HE" H 1425 2800 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 1425 2675 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/SS13HE-D-1814993.pdf" H 1425 2675 50  0001 C CNN
	1    1425 2675
	1    0    0    -1  
$EndComp
$Sheet
S 5450 2075 575  250 
U 5EE5D0E4
F0 "PassFet2" 50
F1 "passfet.sch" 50
F2 "Gate" U R 6025 2250 50 
F3 "Source" U R 6025 2150 50 
F4 "Drain" U L 5450 2150 50 
$EndSheet
$Sheet
S 5450 2525 575  250 
U 5EF07313
F0 "PassFet1" 50
F1 "passfet.sch" 50
F2 "Gate" U R 6025 2700 50 
F3 "Source" U R 6025 2600 50 
F4 "Drain" U L 5450 2600 50 
$EndSheet
Wire Wire Line
	5025 2600 5325 2600
Connection ~ 5025 2600
$Sheet
S 5450 1650 575  250 
U 5EF37B1F
F0 "PassFet3" 50
F1 "passfet.sch" 50
F2 "Gate" U R 6025 1825 50 
F3 "Source" U R 6025 1725 50 
F4 "Drain" U L 5450 1725 50 
$EndSheet
$Sheet
S 5450 1225 575  250 
U 5EF4F686
F0 "PassFet4" 50
F1 "passfet.sch" 50
F2 "Gate" U R 6025 1400 50 
F3 "Source" U R 6025 1300 50 
F4 "Drain" U L 5450 1300 50 
$EndSheet
Wire Wire Line
	5325 2600 5325 2150
Wire Wire Line
	5325 2150 5450 2150
Connection ~ 5325 2600
Wire Wire Line
	5325 2600 5450 2600
Wire Wire Line
	5325 2150 5325 1725
Wire Wire Line
	5325 1725 5450 1725
Connection ~ 5325 2150
Wire Wire Line
	5325 1725 5325 1300
Wire Wire Line
	5325 1300 5450 1300
Connection ~ 5325 1725
Wire Wire Line
	6025 2600 6400 2600
Connection ~ 6400 2600
Wire Wire Line
	6025 2150 6400 2150
Wire Wire Line
	6400 2150 6400 2600
Wire Wire Line
	6400 2150 6400 1725
Wire Wire Line
	6400 1725 6025 1725
Connection ~ 6400 2150
Wire Wire Line
	6025 1300 6400 1300
Wire Wire Line
	6400 1300 6400 1725
Connection ~ 6400 1725
Wire Wire Line
	6025 1400 6150 1400
Wire Wire Line
	6150 1400 6150 1825
Wire Wire Line
	6150 1825 6025 1825
Wire Wire Line
	6150 1825 6150 2250
Wire Wire Line
	6150 2250 6025 2250
Connection ~ 6150 1825
Wire Wire Line
	6150 2250 6150 2700
Wire Wire Line
	6150 2700 6025 2700
Connection ~ 6150 2250
Connection ~ 6150 2700
Wire Wire Line
	6150 2700 6150 4950
Wire Wire Line
	5500 5025 6400 5025
Wire Wire Line
	6400 2600 6400 5025
$EndSCHEMATC
