EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L Connector:USB_A J1
U 1 1 5CA28159
P 6200 1400
F 0 "J1" H 6255 1867 50  0000 C CNN
F 1 "USB_A" H 6255 1776 50  0000 C CNN
F 2 "footprints:USBA" H 6350 1350 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/643/bel_SS-52100-001-1216592.pdf" H 6350 1350 50  0001 C CNN
F 4 "SS-52100-001" H 6200 1400 50  0001 C CNN "MPN"
	1    6200 1400
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F3:STM32F373C8Tx U10
U 1 1 5CA4B77E
P 5400 4400
F 0 "U10" H 5400 4550 50  0000 C CNN
F 1 "STM32F373C8Tx" H 5400 4400 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 4800 2900 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00046749.pdf" H 5400 4400 50  0001 C CNN
F 4 "STM32F373C8T6" H 5400 4400 50  0001 C CNN "MPN"
	1    5400 4400
	1    0    0    -1  
$EndComp
Text Label 6500 1400 0    50   ~ 0
USB_D+
Text Label 6500 1500 0    50   ~ 0
USB_D-
$Comp
L power:GNDREF #PWR027
U 1 1 5CA4BBDE
P 6200 1800
F 0 "#PWR027" H 6200 1550 50  0001 C CNN
F 1 "GNDREF" H 6205 1627 50  0001 C CNN
F 2 "" H 6200 1800 50  0001 C CNN
F 3 "" H 6200 1800 50  0001 C CNN
	1    6200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1800 6200 1800
Connection ~ 6200 1800
Text Label 6100 4200 0    50   ~ 0
USB_D+
Text Label 6100 4100 0    50   ~ 0
USB_D-
$Comp
L power:GNDREF #PWR037
U 1 1 5CA4D23A
P 5400 6000
F 0 "#PWR037" H 5400 5750 50  0001 C CNN
F 1 "GNDREF" H 5405 5827 50  0001 C CNN
F 2 "" H 5400 6000 50  0001 C CNN
F 3 "" H 5400 6000 50  0001 C CNN
	1    5400 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1400 6950 1400
$Comp
L Device:R R29
U 1 1 5CA4D431
P 6950 1250
F 0 "R29" H 7020 1296 50  0000 L CNN
F 1 "1k" H 7020 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6880 1250 50  0001 C CNN
F 3 "~" H 6950 1250 50  0001 C CNN
F 4 "RT0805FRE071KL" H 6950 1250 50  0001 C CNN "MPN"
	1    6950 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR041
U 1 1 5CA5463C
P 1350 5250
F 0 "#PWR041" H 1350 5000 50  0001 C CNN
F 1 "GNDREF" V 1355 5122 50  0001 R CNN
F 2 "" H 1350 5250 50  0001 C CNN
F 3 "" H 1350 5250 50  0001 C CNN
	1    1350 5250
	0    1    1    0   
$EndComp
Text Label 1200 4650 0    50   ~ 0
ENC1_A
Text Label 1200 5800 0    50   ~ 0
ENC1_B
Text Label 2300 6900 0    50   ~ 0
ENC0_SW
$Comp
L power:GNDREF #PWR043
U 1 1 5CA562DC
P 1950 5350
F 0 "#PWR043" H 1950 5100 50  0001 C CNN
F 1 "GNDREF" H 1955 5177 50  0001 C CNN
F 2 "" H 1950 5350 50  0001 C CNN
F 3 "" H 1950 5350 50  0001 C CNN
	1    1950 5350
	1    0    0    -1  
$EndComp
Text Label 2300 5150 0    50   ~ 0
ENC1_SW
Text HLabel 6100 3500 2    50   Input ~ 0
CLIM
Text HLabel 4700 5100 0    50   Input ~ 0
Vread
Text HLabel 4700 5200 0    50   Input ~ 0
Iread
Text HLabel 6100 3600 2    50   Output ~ 0
Iset
Text HLabel 6100 3700 2    50   Output ~ 0
Vset
$Comp
L power:+3V3 #PWR023
U 1 1 5CA645F8
P 6950 800
F 0 "#PWR023" H 6950 650 50  0001 C CNN
F 1 "+3V3" H 6965 973 50  0000 C CNN
F 2 "" H 6950 800 50  0001 C CNN
F 3 "" H 6950 800 50  0001 C CNN
	1    6950 800 
	1    0    0    -1  
$EndComp
Text Label 4700 3300 2    50   ~ 0
BOOT0
Text Label 6100 3100 0    50   ~ 0
ENC0_A
Text Label 6100 3200 0    50   ~ 0
ENC0_B
Text Label 6100 5300 0    50   ~ 0
ENC1_A
Text Label 6100 5400 0    50   ~ 0
ENC1_B
Text Label 6100 3300 0    50   ~ 0
ENC0_SW
Text Label 6100 3400 0    50   ~ 0
ENC1_SW
NoConn ~ 6500 1200
$Comp
L Device:R R31
U 1 1 5CEF91FC
P 7800 5450
F 0 "R31" V 7850 5700 50  0000 C CNN
F 1 "1k" V 7850 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7730 5450 50  0001 C CNN
F 3 "~" H 7800 5450 50  0001 C CNN
F 4 "RT0805FRE071KL" H 7800 5450 50  0001 C CNN "MPN"
	1    7800 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR036
U 1 1 5CEFB24B
P 7450 5300
F 0 "#PWR036" H 7450 5150 50  0001 C CNN
F 1 "+3V3" V 7465 5428 50  0000 L CNN
F 2 "" H 7450 5300 50  0001 C CNN
F 3 "" H 7450 5300 50  0001 C CNN
	1    7450 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R27
U 1 1 5CF6106F
P 6800 950
F 0 "R27" H 6870 996 50  0000 L CNN
F 1 "1k" H 6870 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6730 950 50  0001 C CNN
F 3 "~" H 6800 950 50  0001 C CNN
F 4 "RT0805FRE071KL" H 6800 950 50  0001 C CNN "MPN"
	1    6800 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 5CF62A7F
P 7100 950
F 0 "R28" H 7170 996 50  0000 L CNN
F 1 "1k" H 7170 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 950 50  0001 C CNN
F 3 "~" H 7100 950 50  0001 C CNN
F 4 "RT0805FRE071KL" H 7100 950 50  0001 C CNN "MPN"
	1    7100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1100 6950 1100
Connection ~ 6950 1100
Wire Wire Line
	6950 1100 6800 1100
Wire Wire Line
	6800 800  6950 800 
Connection ~ 6950 800 
Wire Wire Line
	6950 800  7100 800 
$Comp
L Device:C_Small C15
U 1 1 5CF6F3D5
P 1650 850
F 0 "C15" H 1742 896 50  0000 L CNN
F 1 "1µF" H 1742 805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 850 50  0001 C CNN
F 3 "~" H 1650 850 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 1650 850 50  0001 C CNN "MPN"
	1    1650 850 
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5CF6F3DC
P 1250 850
F 0 "C14" H 1342 896 50  0000 L CNN
F 1 "100nF" H 1342 805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1250 850 50  0001 C CNN
F 3 "~" H 1250 850 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1250 850 50  0001 C CNN "MPN"
	1    1250 850 
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C13
U 1 1 5CF6F3E4
P 850 850
F 0 "C13" H 942 896 50  0000 L CNN
F 1 "10nF" H 942 805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 850 50  0001 C CNN
F 3 "~" H 850 850 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 850 850 50  0001 C CNN "MPN"
	1    850  850 
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C18
U 1 1 5CFE468A
P 1650 1500
F 0 "C18" H 1742 1546 50  0000 L CNN
F 1 "1µF" H 1742 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 1500 50  0001 C CNN
F 3 "~" H 1650 1500 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 1650 1500 50  0001 C CNN "MPN"
	1    1650 1500
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5CFE4690
P 1250 1500
F 0 "C17" H 1342 1546 50  0000 L CNN
F 1 "100nF" H 1342 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1250 1500 50  0001 C CNN
F 3 "~" H 1250 1500 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1250 1500 50  0001 C CNN "MPN"
	1    1250 1500
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5CFE4698
P 850 1500
F 0 "C16" H 942 1546 50  0000 L CNN
F 1 "10nF" H 942 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 1500 50  0001 C CNN
F 3 "~" H 850 1500 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 850 1500 50  0001 C CNN "MPN"
	1    850  1500
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C21
U 1 1 5CFE8133
P 1650 2150
F 0 "C21" H 1742 2196 50  0000 L CNN
F 1 "1µF" H 1742 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 2150 50  0001 C CNN
F 3 "~" H 1650 2150 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 1650 2150 50  0001 C CNN "MPN"
	1    1650 2150
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C20
U 1 1 5CFE8139
P 1250 2150
F 0 "C20" H 1342 2196 50  0000 L CNN
F 1 "100nF" H 1342 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1250 2150 50  0001 C CNN
F 3 "~" H 1250 2150 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1250 2150 50  0001 C CNN "MPN"
	1    1250 2150
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C19
U 1 1 5CFE8141
P 850 2150
F 0 "C19" H 942 2196 50  0000 L CNN
F 1 "10nF" H 942 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 2150 50  0001 C CNN
F 3 "~" H 850 2150 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 850 2150 50  0001 C CNN "MPN"
	1    850  2150
	1    0    0    1   
$EndComp
Text Label 1750 750  0    50   ~ 0
VDDA
Text Label 5600 2900 1    50   ~ 0
VDDA
Text Label 5700 2900 1    50   ~ 0
VDDSD
Text Label 5500 2900 1    50   ~ 0
VDD1
Text Label 4700 3500 2    50   ~ 0
VREFSD
Wire Wire Line
	850  2050 1250 2050
Wire Wire Line
	850  2250 1250 2250
Connection ~ 1250 2250
Wire Wire Line
	1250 2250 1650 2250
Connection ~ 1250 2050
Wire Wire Line
	1250 2050 1650 2050
Connection ~ 1650 2050
Wire Wire Line
	1650 2050 1950 2050
Connection ~ 1650 1400
Wire Wire Line
	1650 1400 1950 1400
Wire Wire Line
	850  1400 1250 1400
Wire Wire Line
	850  1600 1250 1600
Connection ~ 1250 1600
Wire Wire Line
	1250 1600 1650 1600
Connection ~ 1250 1400
Wire Wire Line
	1250 1400 1650 1400
Connection ~ 1650 750 
Wire Wire Line
	1650 750  1950 750 
Wire Wire Line
	850  750  1250 750 
Wire Wire Line
	1250 950  1650 950 
Connection ~ 1250 750 
Wire Wire Line
	1250 750  1650 750 
Text Label 1700 1400 0    50   ~ 0
VDDSD
Text Label 1700 2050 0    50   ~ 0
VREFSD
$Comp
L power:+3V3 #PWR030
U 1 1 5D073ED8
P 850 2700
F 0 "#PWR030" H 850 2550 50  0001 C CNN
F 1 "+3V3" H 865 2873 50  0000 C CNN
F 2 "" H 850 2700 50  0001 C CNN
F 3 "" H 850 2700 50  0001 C CNN
	1    850  2700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR031
U 1 1 5D073EDE
P 850 2900
F 0 "#PWR031" H 850 2650 50  0001 C CNN
F 1 "GNDREF" H 855 2727 50  0001 C CNN
F 2 "" H 850 2900 50  0001 C CNN
F 3 "" H 850 2900 50  0001 C CNN
	1    850  2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C22
U 1 1 5D073EE4
P 850 2800
F 0 "C22" H 942 2846 50  0000 L CNN
F 1 "4.7µF" H 942 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 2800 50  0001 C CNN
F 3 "~" H 850 2800 50  0001 C CNN
F 4 "GRM21BR71C475KE51L" H 850 2800 50  0001 C CNN "MPN"
	1    850  2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C23
U 1 1 5D073EEA
P 1250 2800
F 0 "C23" H 1342 2846 50  0000 L CNN
F 1 "100nF" H 1342 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1250 2800 50  0001 C CNN
F 3 "~" H 1250 2800 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1250 2800 50  0001 C CNN "MPN"
	1    1250 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C24
U 1 1 5D073EF0
P 1650 2800
F 0 "C24" H 1742 2846 50  0000 L CNN
F 1 "100nF" H 1742 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 2800 50  0001 C CNN
F 3 "~" H 1650 2800 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1650 2800 50  0001 C CNN "MPN"
	1    1650 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C25
U 1 1 5D073EF6
P 2050 2800
F 0 "C25" H 2142 2846 50  0000 L CNN
F 1 "100nF" H 2142 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2050 2800 50  0001 C CNN
F 3 "~" H 2050 2800 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 2050 2800 50  0001 C CNN "MPN"
	1    2050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2700 1250 2700
Connection ~ 850  2700
Connection ~ 1250 2700
Wire Wire Line
	1250 2700 1650 2700
Connection ~ 1650 2700
Wire Wire Line
	1650 2700 2050 2700
Wire Wire Line
	850  2900 1250 2900
Connection ~ 850  2900
Connection ~ 1250 2900
Wire Wire Line
	1250 2900 1650 2900
Connection ~ 1650 2900
Wire Wire Line
	1650 2900 2050 2900
$Comp
L Device:C_Small C26
U 1 1 5D073F08
P 2450 2800
F 0 "C26" H 2542 2846 50  0000 L CNN
F 1 "10nF" H 2542 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2450 2800 50  0001 C CNN
F 3 "~" H 2450 2800 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 2450 2800 50  0001 C CNN "MPN"
	1    2450 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2700 2450 2700
Connection ~ 2050 2700
Wire Wire Line
	2450 2900 2050 2900
Connection ~ 2050 2900
Wire Wire Line
	2450 2700 2750 2700
Connection ~ 2450 2700
Text Label 2550 2700 0    50   ~ 0
VDD1
$Comp
L Device:Rotary_Encoder_Switch SW2
U 1 1 5CA53BBE
P 1650 5250
F 0 "SW2" H 1650 5617 50  0000 C CNN
F 1 "ENC1 (Current)" H 1650 5526 50  0000 C CNN
F 2 "footprints:PEC12R-2xxxf-Sxxxx" H 1500 5410 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/54/EC12R-777795.pdf" H 1650 5510 50  0001 C CNN
F 4 "PEC12R-2220F-S0024" H 1650 5250 50  0001 C CNN "MPN"
	1    1650 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5400 8250 5600
Wire Wire Line
	8250 5600 8350 5600
$Comp
L power:GNDREF #PWR038
U 1 1 5CF139AB
P 8350 5600
F 0 "#PWR038" H 8350 5350 50  0001 C CNN
F 1 "GNDREF" H 8355 5427 50  0001 C CNN
F 2 "" H 8350 5600 50  0001 C CNN
F 3 "" H 8350 5600 50  0001 C CNN
	1    8350 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4200 8500 4200
$Comp
L power:GNDREF #PWR034
U 1 1 5CF18C67
P 8500 4200
F 0 "#PWR034" H 8500 3950 50  0001 C CNN
F 1 "GNDREF" H 8505 4027 50  0001 C CNN
F 2 "" H 8500 4200 50  0001 C CNN
F 3 "" H 8500 4200 50  0001 C CNN
	1    8500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4500 8150 4500
Wire Wire Line
	7950 4500 7950 4450
$Comp
L Device:R R30
U 1 1 5CF9B0E6
P 7800 5300
F 0 "R30" V 7850 5550 50  0000 C CNN
F 1 "1k" V 7850 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7730 5300 50  0001 C CNN
F 3 "~" H 7800 5300 50  0001 C CNN
F 4 "RT0805FRE071KL" H 7800 5300 50  0001 C CNN "MPN"
	1    7800 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R32
U 1 1 5CF9D1EA
P 7800 5600
F 0 "R32" V 7850 5850 50  0000 C CNN
F 1 "1k" V 7850 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7730 5600 50  0001 C CNN
F 3 "~" H 7800 5600 50  0001 C CNN
F 4 "RT0805FRE071KL" H 7800 5600 50  0001 C CNN "MPN"
	1    7800 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R33
U 1 1 5CF9F638
P 7800 5750
F 0 "R33" V 7850 6000 50  0000 C CNN
F 1 "1k" V 7850 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7730 5750 50  0001 C CNN
F 3 "~" H 7800 5750 50  0001 C CNN
F 4 "RT0805FRE071KL" H 7800 5750 50  0001 C CNN "MPN"
	1    7800 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 5750 7950 5600
Connection ~ 7950 5450
Wire Wire Line
	7950 5450 7950 5300
Connection ~ 7950 5600
Wire Wire Line
	7950 5600 7950 5450
Wire Wire Line
	7650 5300 7650 5450
Connection ~ 7650 5450
Wire Wire Line
	7650 5450 7650 5600
Connection ~ 7650 5600
Wire Wire Line
	7650 5600 7650 5750
Wire Wire Line
	7950 5300 8300 5300
Connection ~ 7950 5300
Wire Wire Line
	7650 5300 7450 5300
Connection ~ 7650 5300
Text Label 4700 3100 2    50   ~ 0
NRST
Text Label 5850 7450 0    50   ~ 0
NRST
$Comp
L Connector_Generic:Conn_01x11 J2
U 1 1 5CE4A076
P 8500 4900
F 0 "J2" H 8580 4942 50  0000 L CNN
F 1 "Display" H 8580 4851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x11_P2.54mm_Vertical" H 8500 4900 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/276/0022284150_PCB_HEADERS-159054.pdf" H 8500 4900 50  0001 C CNN
F 4 "M20-9991646" H 8500 4900 50  0001 C CNN "MPN"
	1    8500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4200 8300 4400
Wire Wire Line
	8300 5400 8250 5400
Wire Wire Line
	5300 2900 5400 2900
Connection ~ 5400 2900
Wire Wire Line
	5400 2900 5500 2900
$Comp
L Device:R R35
U 1 1 5D0D1743
P 10650 900
F 0 "R35" V 10550 900 50  0000 L CNN
F 1 "1k" V 10750 850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10580 900 50  0001 C CNN
F 3 "~" H 10650 900 50  0001 C CNN
F 4 "RT0805FRE071KL" H 10650 900 50  0001 C CNN "MPN"
	1    10650 900 
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0101
U 1 1 5D0D343F
P 10800 900
F 0 "#PWR0101" H 10800 650 50  0001 C CNN
F 1 "GNDREF" V 10805 772 50  0001 R CNN
F 2 "" H 10800 900 50  0001 C CNN
F 3 "" H 10800 900 50  0001 C CNN
	1    10800 900 
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0102
U 1 1 5D0D53D9
P 9800 900
F 0 "#PWR0102" H 9800 750 50  0001 C CNN
F 1 "+3V3" V 9815 1028 50  0000 L CNN
F 2 "" H 9800 900 50  0001 C CNN
F 3 "" H 9800 900 50  0001 C CNN
	1    9800 900 
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q3
U 1 1 5D0D6C51
P 10300 1000
F 0 "Q3" V 10600 950 50  0000 C CNN
F 1 "MMBT3904" V 10500 900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10500 925 50  0001 L CIN
F 3 "https://www.mouser.se/datasheet/2/916/MMBT3904-1599187.pdf" H 10300 1000 50  0001 L CNN
F 4 "MMBT3904,215" H 10300 1000 50  0001 C CNN "MPN"
	1    10300 1000
	0    -1   -1   0   
$EndComp
Text Label 10300 1200 0    50   ~ 0
OUTPUT_ON
$Comp
L Device:LED D1
U 1 1 5D0C6719
P 9950 900
F 0 "D1" H 9943 645 50  0000 C CNN
F 1 "APTD3216LZGCK" H 9943 736 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9950 900 50  0001 C CNN
F 3 "~" H 9950 900 50  0001 C CNN
F 4 "APTD3216LZGCK" H 9950 900 50  0001 C CNN "MPN"
	1    9950 900 
	-1   0    0    1   
$EndComp
Text Label 6100 5500 0    50   ~ 0
OUTPUT_ON
Wire Wire Line
	4700 3300 4150 3300
$Comp
L Device:R R34
U 1 1 5D40F4CA
P 4150 3450
F 0 "R34" H 4220 3496 50  0000 L CNN
F 1 "10k" H 4220 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4080 3450 50  0001 C CNN
F 3 "~" H 4150 3450 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 4150 3450 50  0001 C CNN "MPN"
	1    4150 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR025
U 1 1 5D412A45
P 4150 3600
F 0 "#PWR025" H 4150 3350 50  0001 C CNN
F 1 "GNDREF" H 4155 3427 50  0001 C CNN
F 2 "" H 4150 3600 50  0001 C CNN
F 3 "" H 4150 3600 50  0001 C CNN
	1    4150 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5D42C138
P 4000 4650
F 0 "Y1" V 3950 4400 50  0000 L CNN
F 1 "Crystal" V 4050 4250 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 4000 4650 50  0001 C CNN
F 3 "~" H 4000 4650 50  0001 C CNN
F 4 "LFXTAL033206" H 4000 4650 50  0001 C CNN "MPN"
	1    4000 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 4600 4300 4600
Wire Wire Line
	4300 4600 4300 4500
Wire Wire Line
	4300 4500 4000 4500
Wire Wire Line
	4000 4800 4300 4800
Wire Wire Line
	4300 4800 4300 4700
Wire Wire Line
	4300 4700 4700 4700
$Comp
L Device:C_Small C7
U 1 1 5D432D88
P 4000 4400
F 0 "C7" H 4092 4446 50  0000 L CNN
F 1 "10pF" H 4092 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4000 4400 50  0001 C CNN
F 3 "~" H 4000 4400 50  0001 C CNN
F 4 "C0805C100J5GAC" H 4000 4400 50  0001 C CNN "MPN"
	1    4000 4400
	1    0    0    -1  
$EndComp
Connection ~ 4000 4500
$Comp
L Device:C_Small C27
U 1 1 5D433CF5
P 4000 4900
F 0 "C27" H 4092 4946 50  0000 L CNN
F 1 "10pF" H 4092 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4000 4900 50  0001 C CNN
F 3 "~" H 4000 4900 50  0001 C CNN
F 4 "C0805C100J5GAC" H 4000 4900 50  0001 C CNN "MPN"
	1    4000 4900
	1    0    0    -1  
$EndComp
Connection ~ 4000 4800
$Comp
L power:GNDREF #PWR045
U 1 1 5D438FB4
P 4000 5000
F 0 "#PWR045" H 4000 4750 50  0001 C CNN
F 1 "GNDREF" H 4005 4827 50  0001 C CNN
F 2 "" H 4000 5000 50  0001 C CNN
F 3 "" H 4000 5000 50  0001 C CNN
	1    4000 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR028
U 1 1 5D43DCEC
P 4000 4300
F 0 "#PWR028" H 4000 4050 50  0001 C CNN
F 1 "GNDREF" H 4005 4127 50  0001 C CNN
F 2 "" H 4000 4300 50  0001 C CNN
F 3 "" H 4000 4300 50  0001 C CNN
	1    4000 4300
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5D44BB54
P 5350 7450
F 0 "SW4" H 5350 7735 50  0000 C CNN
F 1 "RST" H 5350 7644 50  0000 C CNN
F 2 "footprints:LL3301NF065QG" H 5350 7650 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/140/P090002-267756.pdf" H 5350 7650 50  0001 C CNN
F 4 "LL3301NF065QG" H 5350 7450 50  0001 C CNN "MPN"
	1    5350 7450
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR050
U 1 1 5D45412B
P 5150 7450
F 0 "#PWR050" H 5150 7200 50  0001 C CNN
F 1 "GNDREF" H 5155 7277 50  0001 C CNN
F 2 "" H 5150 7450 50  0001 C CNN
F 3 "" H 5150 7450 50  0001 C CNN
	1    5150 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R48
U 1 1 5D46C2B8
P 5700 7450
F 0 "R48" V 5493 7450 50  0000 C CNN
F 1 "1k" V 5584 7450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5630 7450 50  0001 C CNN
F 3 "~" H 5700 7450 50  0001 C CNN
F 4 "RT0805FRE071KL" H 5700 7450 50  0001 C CNN "MPN"
	1    5700 7450
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 7450 6050 7450
$Comp
L Device:C_Small C33
U 1 1 5D474AF4
P 6050 7550
F 0 "C33" H 6142 7596 50  0000 L CNN
F 1 "10nF" H 6142 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6050 7550 50  0001 C CNN
F 3 "~" H 6050 7550 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 6050 7550 50  0001 C CNN "MPN"
	1    6050 7550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR052
U 1 1 5D47E0AB
P 6050 7650
F 0 "#PWR052" H 6050 7400 50  0001 C CNN
F 1 "GNDREF" H 6055 7477 50  0001 C CNN
F 2 "" H 6050 7650 50  0001 C CNN
F 3 "" H 6050 7650 50  0001 C CNN
	1    6050 7650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR022
U 1 1 5D51BAC9
P 850 2050
F 0 "#PWR022" H 850 1900 50  0001 C CNN
F 1 "+3V3" H 865 2223 50  0000 C CNN
F 2 "" H 850 2050 50  0001 C CNN
F 3 "" H 850 2050 50  0001 C CNN
	1    850  2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR013
U 1 1 5D51DFA1
P 850 1400
F 0 "#PWR013" H 850 1250 50  0001 C CNN
F 1 "+3V3" H 865 1573 50  0000 C CNN
F 2 "" H 850 1400 50  0001 C CNN
F 3 "" H 850 1400 50  0001 C CNN
	1    850  1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR011
U 1 1 5D520217
P 850 750
F 0 "#PWR011" H 850 600 50  0001 C CNN
F 1 "+3V3" H 865 923 50  0000 C CNN
F 2 "" H 850 750 50  0001 C CNN
F 3 "" H 850 750 50  0001 C CNN
	1    850  750 
	1    0    0    -1  
$EndComp
Text Label 6100 3900 0    50   ~ 0
USART_TX
Text Label 6100 4000 0    50   ~ 0
USART_RX
$Comp
L Connector_Generic:Conn_01x05 J3
U 1 1 5D529B99
P 8500 3800
F 0 "J3" H 8580 3792 50  0000 L CNN
F 1 "USART" H 8580 3701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 8500 3800 50  0001 C CNN
F 3 "~" H 8500 3800 50  0001 C CNN
	1    8500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4200 8300 4000
Connection ~ 8300 4200
Text Label 8300 3800 2    50   ~ 0
USART_TX
Text Label 8300 3600 2    50   ~ 0
USART_RX
$Comp
L power:+3.3V #PWR032
U 1 1 5D53D1A2
P 7950 4450
F 0 "#PWR032" H 7950 4300 50  0001 C CNN
F 1 "+3.3V" H 7965 4623 50  0000 C CNN
F 2 "" H 7950 4450 50  0001 C CNN
F 3 "" H 7950 4450 50  0001 C CNN
	1    7950 4450
	1    0    0    -1  
$EndComp
Text Label 6100 4300 0    50   ~ 0
Display_RS
Text Label 4700 4900 2    50   ~ 0
Display_E
Text Label 6100 4400 0    50   ~ 0
Display_D4
Text Label 6100 4500 0    50   ~ 0
Display_D5
Text Label 6100 5000 0    50   ~ 0
Display_D6
Text Label 6100 5100 0    50   ~ 0
Display_D7
Text Label 8300 4600 2    50   ~ 0
Display_RS
Text Label 8300 5000 2    50   ~ 0
Display_D5
Text Label 8300 4900 2    50   ~ 0
Display_D4
Text Label 8300 5100 2    50   ~ 0
Display_D6
Text Label 8300 5200 2    50   ~ 0
Display_D7
$Comp
L Device:C_Small C6
U 1 1 5D556ADD
P 7400 800
F 0 "C6" V 7171 800 50  0000 C CNN
F 1 "10nF" V 7262 800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7400 800 50  0001 C CNN
F 3 "~" H 7400 800 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 7400 800 50  0001 C CNN "MPN"
	1    7400 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 800  7100 800 
Connection ~ 7100 800 
$Comp
L power:GNDREF #PWR012
U 1 1 5D55B52F
P 7500 800
F 0 "#PWR012" H 7500 550 50  0001 C CNN
F 1 "GNDREF" V 7505 672 50  0001 R CNN
F 2 "" H 7500 800 50  0001 C CNN
F 3 "" H 7500 800 50  0001 C CNN
	1    7500 800 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 6900 2300 6900
$Comp
L Device:C_Small C31
U 1 1 5D568354
P 2300 7000
F 0 "C31" H 2392 7046 50  0000 L CNN
F 1 "10nF" H 2392 6955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2300 7000 50  0001 C CNN
F 3 "~" H 2300 7000 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 2300 7000 50  0001 C CNN "MPN"
	1    2300 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R42
U 1 1 5D57147D
P 2100 5150
F 0 "R42" V 1893 5150 50  0000 C CNN
F 1 "1k" V 1984 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 5150 50  0001 C CNN
F 3 "~" H 2100 5150 50  0001 C CNN
F 4 "RT0805FRE071KL" H 2100 5150 50  0001 C CNN "MPN"
	1    2100 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 5150 2300 5150
$Comp
L Device:C_Small C28
U 1 1 5D571484
P 2300 5250
F 0 "C28" H 2392 5296 50  0000 L CNN
F 1 "10nF" H 2392 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2300 5250 50  0001 C CNN
F 3 "~" H 2300 5250 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 2300 5250 50  0001 C CNN "MPN"
	1    2300 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5350 1950 5350
$Comp
L Device:R R41
U 1 1 5D5A0C6E
P 950 5150
F 0 "R41" V 743 5150 50  0000 C CNN
F 1 "10k" V 834 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 880 5150 50  0001 C CNN
F 3 "~" H 950 5150 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 950 5150 50  0001 C CNN "MPN"
	1    950  5150
	0    1    1    0   
$EndComp
$Comp
L Device:R R40
U 1 1 5D5A0C74
P 1200 4850
F 0 "R40" H 1130 4804 50  0000 R CNN
F 1 "10k" H 1130 4895 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1130 4850 50  0001 C CNN
F 3 "~" H 1200 4850 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 1200 4850 50  0001 C CNN "MPN"
	1    1200 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R49
U 1 1 5D5A0C7A
P 1200 5600
F 0 "R49" H 1270 5646 50  0000 L CNN
F 1 "10k" H 1270 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1130 5600 50  0001 C CNN
F 3 "~" H 1200 5600 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 1200 5600 50  0001 C CNN "MPN"
	1    1200 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R43
U 1 1 5D5A0C80
P 950 5350
F 0 "R43" V 750 5350 50  0000 C CNN
F 1 "10k" V 850 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 880 5350 50  0001 C CNN
F 3 "~" H 950 5350 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 950 5350 50  0001 C CNN "MPN"
	1    950  5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 5450 1200 5350
Wire Wire Line
	1200 5350 1100 5350
Wire Wire Line
	1200 5350 1350 5350
Connection ~ 1200 5350
Wire Wire Line
	1100 5150 1200 5150
Wire Wire Line
	1200 5150 1200 5000
Connection ~ 1200 5150
Wire Wire Line
	1200 5150 1350 5150
Wire Wire Line
	800  5350 800  5250
$Comp
L power:GNDREF #PWR033
U 1 1 5D5A0C8F
P 950 4650
F 0 "#PWR033" H 950 4400 50  0001 C CNN
F 1 "GNDREF" V 955 4522 50  0001 R CNN
F 2 "" H 950 4650 50  0001 C CNN
F 3 "" H 950 4650 50  0001 C CNN
	1    950  4650
	0    1    1    0   
$EndComp
Connection ~ 800  5250
Wire Wire Line
	800  5250 800  5150
$Comp
L Device:C_Small C29
U 1 1 5D5A0C97
P 1050 5800
F 0 "C29" V 1150 5800 50  0000 C CNN
F 1 "10nF" V 1250 5800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1050 5800 50  0001 C CNN
F 3 "~" H 1050 5800 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 1050 5800 50  0001 C CNN "MPN"
	1    1050 5800
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5D5A0C9D
P 1050 4650
F 0 "C8" V 821 4650 50  0000 C CNN
F 1 "10nF" V 912 4650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1050 4650 50  0001 C CNN
F 3 "~" H 1050 4650 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 1050 4650 50  0001 C CNN "MPN"
	1    1050 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 4650 1200 4650
Wire Wire Line
	1200 4650 1200 4700
Wire Wire Line
	1200 5750 1200 5800
Wire Wire Line
	1200 5800 1150 5800
Connection ~ 1950 5350
Wire Wire Line
	1200 7550 1150 7550
Wire Wire Line
	1200 7500 1200 7550
Wire Wire Line
	1200 6400 1200 6450
Wire Wire Line
	1150 6400 1200 6400
$Comp
L Device:C_Small C30
U 1 1 5D58E687
P 1050 6400
F 0 "C30" V 821 6400 50  0000 C CNN
F 1 "10nF" V 912 6400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1050 6400 50  0001 C CNN
F 3 "~" H 1050 6400 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 1050 6400 50  0001 C CNN "MPN"
	1    1050 6400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C32
U 1 1 5D58CAB5
P 1050 7550
F 0 "C32" V 1150 7550 50  0000 C CNN
F 1 "10nF" V 1250 7550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1050 7550 50  0001 C CNN
F 3 "~" H 1050 7550 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 1050 7550 50  0001 C CNN "MPN"
	1    1050 7550
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 6900 1350 6900
Connection ~ 1200 6900
Wire Wire Line
	1200 6900 1200 6750
Wire Wire Line
	1100 6900 1200 6900
Connection ~ 1200 7100
Wire Wire Line
	1200 7100 1350 7100
Wire Wire Line
	1200 7100 1100 7100
Wire Wire Line
	1200 7200 1200 7100
$Comp
L Device:R R47
U 1 1 5D578211
P 950 7100
F 0 "R47" V 750 7100 50  0000 C CNN
F 1 "10k" V 850 7100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 880 7100 50  0001 C CNN
F 3 "~" H 950 7100 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 950 7100 50  0001 C CNN "MPN"
	1    950  7100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R50
U 1 1 5D57763E
P 1200 7350
F 0 "R50" H 1270 7396 50  0000 L CNN
F 1 "10k" H 1270 7305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1130 7350 50  0001 C CNN
F 3 "~" H 1200 7350 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 1200 7350 50  0001 C CNN "MPN"
	1    1200 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R44
U 1 1 5D5766CB
P 1200 6600
F 0 "R44" H 1130 6554 50  0000 R CNN
F 1 "10k" H 1130 6645 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1130 6600 50  0001 C CNN
F 3 "~" H 1200 6600 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 1200 6600 50  0001 C CNN "MPN"
	1    1200 6600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R45
U 1 1 5D574FAE
P 950 6900
F 0 "R45" V 743 6900 50  0000 C CNN
F 1 "10k" V 834 6900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 880 6900 50  0001 C CNN
F 3 "~" H 950 6900 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 950 6900 50  0001 C CNN "MPN"
	1    950  6900
	0    1    1    0   
$EndComp
Connection ~ 1950 7100
Wire Wire Line
	2300 7100 1950 7100
$Comp
L Device:R R46
U 1 1 5D56834D
P 2100 6900
F 0 "R46" V 1893 6900 50  0000 C CNN
F 1 "1k" V 1984 6900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 6900 50  0001 C CNN
F 3 "~" H 2100 6900 50  0001 C CNN
F 4 "RT0805FRE071KL" H 2100 6900 50  0001 C CNN "MPN"
	1    2100 6900
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR042
U 1 1 5CA562A1
P 1950 7100
F 0 "#PWR042" H 1950 6850 50  0001 C CNN
F 1 "GNDREF" H 1955 6927 50  0001 C CNN
F 2 "" H 1950 7100 50  0001 C CNN
F 3 "" H 1950 7100 50  0001 C CNN
	1    1950 7100
	1    0    0    -1  
$EndComp
Text Label 1200 7550 0    50   ~ 0
ENC0_B
Text Label 1200 6400 0    50   ~ 0
ENC0_A
$Comp
L power:GNDREF #PWR040
U 1 1 5CA53D08
P 1350 7000
F 0 "#PWR040" H 1350 6750 50  0001 C CNN
F 1 "GNDREF" H 1355 6872 50  0001 R CNN
F 2 "" H 1350 7000 50  0001 C CNN
F 3 "" H 1350 7000 50  0001 C CNN
	1    1350 7000
	0    1    1    0   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 5CA53AEC
P 1650 7000
F 0 "SW1" H 1650 7367 50  0000 C CNN
F 1 "ENC0 (Voltage)" H 1650 7276 50  0000 C CNN
F 2 "footprints:PEC12R-2xxxf-Sxxxx" H 1500 7160 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/54/EC12R-777795.pdf" H 1650 7260 50  0001 C CNN
F 4 "PEC12R-2220F-S0024" H 1650 7000 50  0001 C CNN "MPN"
	1    1650 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  6900 800  7000
$Comp
L power:GNDREF #PWR051
U 1 1 5D5C895B
P 950 7550
F 0 "#PWR051" H 950 7300 50  0001 C CNN
F 1 "GNDREF" V 955 7422 50  0001 R CNN
F 2 "" H 950 7550 50  0001 C CNN
F 3 "" H 950 7550 50  0001 C CNN
	1    950  7550
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR048
U 1 1 5D5CABFC
P 950 6400
F 0 "#PWR048" H 950 6150 50  0001 C CNN
F 1 "GNDREF" V 955 6272 50  0001 R CNN
F 2 "" H 950 6400 50  0001 C CNN
F 3 "" H 950 6400 50  0001 C CNN
	1    950  6400
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR049
U 1 1 5D5CBB44
P 800 7000
F 0 "#PWR049" H 800 6850 50  0001 C CNN
F 1 "+3V3" V 815 7128 50  0000 L CNN
F 2 "" H 800 7000 50  0001 C CNN
F 3 "" H 800 7000 50  0001 C CNN
	1    800  7000
	0    -1   -1   0   
$EndComp
Connection ~ 800  7000
Wire Wire Line
	800  7000 800  7100
$Comp
L power:+3V3 #PWR046
U 1 1 5D5DA0C6
P 800 5250
F 0 "#PWR046" H 800 5100 50  0001 C CNN
F 1 "+3V3" V 815 5378 50  0000 L CNN
F 2 "" H 800 5250 50  0001 C CNN
F 3 "" H 800 5250 50  0001 C CNN
	1    800  5250
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR047
U 1 1 5D5DBDDF
P 950 5800
F 0 "#PWR047" H 950 5550 50  0001 C CNN
F 1 "GNDREF" V 955 5672 50  0001 R CNN
F 2 "" H 950 5800 50  0001 C CNN
F 3 "" H 950 5800 50  0001 C CNN
	1    950  5800
	0    1    1    0   
$EndComp
Text Label 8300 4800 2    50   ~ 0
Display_E
Text Label 4700 4800 2    50   ~ 0
Display_RW
Text Label 8300 4700 2    50   ~ 0
Display_RW
NoConn ~ 4700 5800
Text Label 8300 3700 2    50   ~ 0
BOOT0
Wire Wire Line
	8150 4500 8150 3900
Wire Wire Line
	8150 3900 8300 3900
Connection ~ 8150 4500
Wire Wire Line
	8150 4500 7950 4500
NoConn ~ 6100 3800
NoConn ~ 4700 5600
NoConn ~ 4700 5700
$Comp
L Device:R R36
U 1 1 5D97B048
P 10650 1650
F 0 "R36" V 10550 1650 50  0000 L CNN
F 1 "1k" V 10750 1600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10580 1650 50  0001 C CNN
F 3 "~" H 10650 1650 50  0001 C CNN
F 4 "RT0805FRE071KL" H 10650 1650 50  0001 C CNN "MPN"
	1    10650 1650
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0103
U 1 1 5D97B04E
P 10800 1650
F 0 "#PWR0103" H 10800 1400 50  0001 C CNN
F 1 "GNDREF" V 10805 1522 50  0001 R CNN
F 2 "" H 10800 1650 50  0001 C CNN
F 3 "" H 10800 1650 50  0001 C CNN
	1    10800 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 5D97B054
P 9800 1650
F 0 "#PWR0104" H 9800 1500 50  0001 C CNN
F 1 "+3V3" V 9815 1778 50  0000 L CNN
F 2 "" H 9800 1650 50  0001 C CNN
F 3 "" H 9800 1650 50  0001 C CNN
	1    9800 1650
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q4
U 1 1 5D97B05B
P 10300 1750
F 0 "Q4" V 10600 1700 50  0000 C CNN
F 1 "MMBT3904" V 10500 1650 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10500 1675 50  0001 L CIN
F 3 "https://www.mouser.se/datasheet/2/916/MMBT3904-1599187.pdf" H 10300 1750 50  0001 L CNN
F 4 "MMBT3904,215" H 10300 1750 50  0001 C CNN "MPN"
	1    10300 1750
	0    -1   -1   0   
$EndComp
Text Label 10300 1950 0    50   ~ 0
C_LIMIT
$Comp
L Device:LED D2
U 1 1 5D97B063
P 9950 1650
F 0 "D2" H 9943 1395 50  0000 C CNN
F 1 "APTD3216LVBCD" H 9943 1486 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9950 1650 50  0001 C CNN
F 3 "~" H 9950 1650 50  0001 C CNN
F 4 "APTD3216LVBCD" H 9950 1650 50  0001 C CNN "MPN"
	1    9950 1650
	-1   0    0    1   
$EndComp
Text Label 6100 5600 0    50   ~ 0
C_LIMIT
NoConn ~ 4700 5400
NoConn ~ 6100 4700
NoConn ~ 6100 4800
NoConn ~ 6100 4900
NoConn ~ 6100 5200
NoConn ~ 6100 5700
NoConn ~ 6100 5800
Wire Wire Line
	5500 6000 5600 6000
$Comp
L power:GNDA #PWR0106
U 1 1 5D7D9553
P 5600 6000
F 0 "#PWR0106" H 5600 5750 50  0001 C CNN
F 1 "GNDA" H 5605 5827 50  0000 C CNN
F 2 "" H 5600 6000 50  0001 C CNN
F 3 "" H 5600 6000 50  0001 C CNN
	1    5600 6000
	1    0    0    -1  
$EndComp
Connection ~ 5600 6000
$Comp
L power:GNDA #PWR0112
U 1 1 5D7F75EC
P 850 2250
F 0 "#PWR0112" H 850 2000 50  0001 C CNN
F 1 "GNDA" H 855 2077 50  0000 C CNN
F 2 "" H 850 2250 50  0001 C CNN
F 3 "" H 850 2250 50  0001 C CNN
	1    850  2250
	1    0    0    -1  
$EndComp
Connection ~ 850  2250
$Comp
L power:GNDA #PWR0113
U 1 1 5D7F8958
P 850 1600
F 0 "#PWR0113" H 850 1350 50  0001 C CNN
F 1 "GNDA" H 855 1427 50  0000 C CNN
F 2 "" H 850 1600 50  0001 C CNN
F 3 "" H 850 1600 50  0001 C CNN
	1    850  1600
	1    0    0    -1  
$EndComp
Connection ~ 850  1600
$Comp
L power:GNDA #PWR0114
U 1 1 5D7FA2C6
P 850 950
F 0 "#PWR0114" H 850 700 50  0001 C CNN
F 1 "GNDA" H 855 777 50  0000 C CNN
F 2 "" H 850 950 50  0001 C CNN
F 3 "" H 850 950 50  0001 C CNN
	1    850  950 
	1    0    0    -1  
$EndComp
Connection ~ 850  2050
Connection ~ 850  1400
Wire Wire Line
	1250 950  850  950 
Connection ~ 1250 950 
Connection ~ 850  950 
Text Notes 3450 4150 0    50   ~ 0
Crystal Load Capacitance = 15pF\nPCB, MCU ~10pF
$EndSCHEMATC
