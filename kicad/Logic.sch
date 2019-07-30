EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 29 0
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
F 4 "STM32F373C8Tx" H 5400 4400 50  0001 C CNN "MPN"
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
P 5500 6000
F 0 "#PWR037" H 5500 5750 50  0001 C CNN
F 1 "GNDREF" H 5505 5827 50  0001 C CNN
F 2 "" H 5500 6000 50  0001 C CNN
F 3 "" H 5500 6000 50  0001 C CNN
	1    5500 6000
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
L Device:Rotary_Encoder_Switch SW1
U 1 1 5CA53AEC
P 1250 7450
F 0 "SW1" H 1250 7817 50  0000 C CNN
F 1 "ENC0 (Voltage)" H 1250 7726 50  0000 C CNN
F 2 "footprints:PEC12R-2xxxf-Sxxxx" H 1100 7610 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/54/EC12R-777795.pdf" H 1250 7710 50  0001 C CNN
F 4 "PEC12R-2220F-S0024" H 1250 7450 50  0001 C CNN "MPN"
	1    1250 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR040
U 1 1 5CA53D08
P 950 7450
F 0 "#PWR040" H 950 7200 50  0001 C CNN
F 1 "GNDREF" H 955 7322 50  0001 R CNN
F 2 "" H 950 7450 50  0001 C CNN
F 3 "" H 950 7450 50  0001 C CNN
	1    950  7450
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR041
U 1 1 5CA5463C
P 2900 7450
F 0 "#PWR041" H 2900 7200 50  0001 C CNN
F 1 "GNDREF" V 2905 7322 50  0001 R CNN
F 2 "" H 2900 7450 50  0001 C CNN
F 3 "" H 2900 7450 50  0001 C CNN
	1    2900 7450
	0    1    1    0   
$EndComp
Text Label 950  7350 2    50   ~ 0
ENC0_A
Text Label 950  7550 2    50   ~ 0
ENC0_B
Text Label 2900 7350 2    50   ~ 0
ENC1_A
Text Label 2900 7550 2    50   ~ 0
ENC1_B
Text Label 1550 7350 0    50   ~ 0
ENC0_SW
$Comp
L power:GNDREF #PWR042
U 1 1 5CA562A1
P 1550 7550
F 0 "#PWR042" H 1550 7300 50  0001 C CNN
F 1 "GNDREF" H 1555 7377 50  0001 C CNN
F 2 "" H 1550 7550 50  0001 C CNN
F 3 "" H 1550 7550 50  0001 C CNN
	1    1550 7550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR043
U 1 1 5CA562DC
P 3500 7550
F 0 "#PWR043" H 3500 7300 50  0001 C CNN
F 1 "GNDREF" H 3505 7377 50  0001 C CNN
F 2 "" H 3500 7550 50  0001 C CNN
F 3 "" H 3500 7550 50  0001 C CNN
	1    3500 7550
	1    0    0    -1  
$EndComp
Text Label 3500 7350 0    50   ~ 0
ENC1_SW
Text HLabel 4700 5400 0    50   Input ~ 0
CLIM
Text HLabel 4700 5100 0    50   Input ~ 0
Vread
Text HLabel 4700 5200 0    50   Input ~ 0
Iread
Text HLabel 6100 3500 2    50   Output ~ 0
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
$Comp
L Switch:SW_DIP_x04 SW3
U 1 1 5CAA887C
P 4900 7450
F 0 "SW3" H 4900 7917 50  0000 C CNN
F 1 "SW_DIP_x04" H 4900 7826 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx04_Piano_10.8x11.72mm_W7.62mm_P2.54mm" H 4900 7450 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/307/omron_03202018_A6FR_datasheet-1314011.pdf" H 4900 7450 50  0001 C CNN
F 4 "A6FR-4104" H 4900 7450 50  0001 C CNN "MPN"
	1    4900 7450
	1    0    0    -1  
$EndComp
Text Label 4700 3300 2    50   ~ 0
BOOT0
Text Label 5200 7250 0    50   ~ 0
BOOT0
Text Label 6100 3100 0    50   ~ 0
ENC0_A
Text Label 6100 3200 0    50   ~ 0
ENC0_B
Text Label 6100 3300 0    50   ~ 0
ENC1_A
Text Label 6100 3400 0    50   ~ 0
ENC1_B
Text Label 6100 4500 0    50   ~ 0
ENC0_SW
Text Label 6100 4400 0    50   ~ 0
ENC1_SW
Wire Wire Line
	5550 7250 5200 7250
NoConn ~ 5200 7350
NoConn ~ 5200 7450
NoConn ~ 6100 5800
NoConn ~ 6500 1200
$Comp
L power:+3V3 #PWR039
U 1 1 5CE85B78
P 5550 6950
F 0 "#PWR039" H 5550 6800 50  0001 C CNN
F 1 "+3V3" H 5565 7123 50  0000 C CNN
F 2 "" H 5550 6950 50  0001 C CNN
F 3 "" H 5550 6950 50  0001 C CNN
	1    5550 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR044
U 1 1 5CE86A36
P 4600 7700
F 0 "#PWR044" H 4600 7450 50  0001 C CNN
F 1 "GNDREF" H 4605 7527 50  0001 C CNN
F 2 "" H 4600 7700 50  0001 C CNN
F 3 "" H 4600 7700 50  0001 C CNN
	1    4600 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5700 6100 5700
Wire Wire Line
	6100 5600 8300 5600
Wire Wire Line
	8300 5500 6100 5500
Wire Wire Line
	6100 5400 8300 5400
Wire Wire Line
	8300 5300 6100 5300
Wire Wire Line
	6100 5200 8300 5200
Wire Wire Line
	8300 5100 6100 5100
Wire Wire Line
	6100 5000 8300 5000
Wire Wire Line
	8300 4900 6100 4900
Wire Wire Line
	6100 4800 8300 4800
Wire Wire Line
	8300 4700 6100 4700
$Comp
L Device:R R31
U 1 1 5CEF91FC
P 7800 5950
F 0 "R31" V 7850 6200 50  0000 C CNN
F 1 "1k" V 7850 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7730 5950 50  0001 C CNN
F 3 "~" H 7800 5950 50  0001 C CNN
F 4 "RT0805FRE071KL" H 7800 5950 50  0001 C CNN "MPN"
	1    7800 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR036
U 1 1 5CEFB24B
P 7450 5800
F 0 "#PWR036" H 7450 5650 50  0001 C CNN
F 1 "+3V3" V 7465 5928 50  0000 L CNN
F 2 "" H 7450 5800 50  0001 C CNN
F 3 "" H 7450 5800 50  0001 C CNN
	1    7450 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 6000 5600 6000
Connection ~ 5500 6000
Wire Wire Line
	5500 6000 5400 6000
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
L symbols:+3V3A #PWR022
U 1 1 5CF6F3CF
P 850 750
F 0 "#PWR022" H 1050 775 50  0001 C CNN
F 1 "+3V3A" H 832 923 50  0000 C CNN
F 2 "" H 850 750 50  0001 C CNN
F 3 "" H 850 750 50  0001 C CNN
	1    850  750 
	-1   0    0    -1  
$EndComp
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
L power:GNDREF #PWR024
U 1 1 5CF6F3EF
P 850 950
F 0 "#PWR024" H 850 700 50  0001 C CNN
F 1 "GNDREF" H 855 777 50  0001 C CNN
F 2 "" H 850 950 50  0001 C CNN
F 3 "" H 850 950 50  0001 C CNN
	1    850  950 
	-1   0    0    -1  
$EndComp
$Comp
L symbols:+3V3A #PWR025
U 1 1 5CFE4684
P 850 1300
F 0 "#PWR025" H 1050 1325 50  0001 C CNN
F 1 "+3V3A" H 832 1473 50  0000 C CNN
F 2 "" H 850 1300 50  0001 C CNN
F 3 "" H 850 1300 50  0001 C CNN
	1    850  1300
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 5CFE468A
P 1650 1400
F 0 "C18" H 1742 1446 50  0000 L CNN
F 1 "1µF" H 1742 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 1400 50  0001 C CNN
F 3 "~" H 1650 1400 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 1650 1400 50  0001 C CNN "MPN"
	1    1650 1400
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5CFE4690
P 1250 1400
F 0 "C17" H 1342 1446 50  0000 L CNN
F 1 "100nF" H 1342 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1250 1400 50  0001 C CNN
F 3 "~" H 1250 1400 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1250 1400 50  0001 C CNN "MPN"
	1    1250 1400
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5CFE4698
P 850 1400
F 0 "C16" H 942 1446 50  0000 L CNN
F 1 "10nF" H 942 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 1400 50  0001 C CNN
F 3 "~" H 850 1400 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 850 1400 50  0001 C CNN "MPN"
	1    850  1400
	1    0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR026
U 1 1 5CFE46A3
P 850 1500
F 0 "#PWR026" H 850 1250 50  0001 C CNN
F 1 "GNDREF" H 855 1327 50  0001 C CNN
F 2 "" H 850 1500 50  0001 C CNN
F 3 "" H 850 1500 50  0001 C CNN
	1    850  1500
	-1   0    0    -1  
$EndComp
$Comp
L symbols:+3V3A #PWR028
U 1 1 5CFE812D
P 850 1850
F 0 "#PWR028" H 1050 1875 50  0001 C CNN
F 1 "+3V3A" H 832 2023 50  0000 C CNN
F 2 "" H 850 1850 50  0001 C CNN
F 3 "" H 850 1850 50  0001 C CNN
	1    850  1850
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C21
U 1 1 5CFE8133
P 1650 1950
F 0 "C21" H 1742 1996 50  0000 L CNN
F 1 "1µF" H 1742 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 1950 50  0001 C CNN
F 3 "~" H 1650 1950 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 1650 1950 50  0001 C CNN "MPN"
	1    1650 1950
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C20
U 1 1 5CFE8139
P 1250 1950
F 0 "C20" H 1342 1996 50  0000 L CNN
F 1 "100nF" H 1342 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1250 1950 50  0001 C CNN
F 3 "~" H 1250 1950 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1250 1950 50  0001 C CNN "MPN"
	1    1250 1950
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C19
U 1 1 5CFE8141
P 850 1950
F 0 "C19" H 942 1996 50  0000 L CNN
F 1 "10nF" H 942 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 1950 50  0001 C CNN
F 3 "~" H 850 1950 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 850 1950 50  0001 C CNN "MPN"
	1    850  1950
	1    0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR029
U 1 1 5CFE814C
P 850 2050
F 0 "#PWR029" H 850 1800 50  0001 C CNN
F 1 "GNDREF" H 855 1877 50  0001 C CNN
F 2 "" H 850 2050 50  0001 C CNN
F 3 "" H 850 2050 50  0001 C CNN
	1    850  2050
	-1   0    0    -1  
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
Connection ~ 850  2050
Connection ~ 850  1850
Wire Wire Line
	850  1850 1250 1850
Wire Wire Line
	850  2050 1250 2050
Connection ~ 1250 2050
Wire Wire Line
	1250 2050 1650 2050
Connection ~ 1250 1850
Wire Wire Line
	1250 1850 1650 1850
Connection ~ 1650 1850
Wire Wire Line
	1650 1850 1950 1850
Connection ~ 1650 1300
Wire Wire Line
	1650 1300 1950 1300
Wire Wire Line
	850  1300 1250 1300
Wire Wire Line
	850  1500 1250 1500
Connection ~ 1250 1500
Wire Wire Line
	1250 1500 1650 1500
Connection ~ 1250 1300
Wire Wire Line
	1250 1300 1650 1300
Connection ~ 850  1500
Connection ~ 850  1300
Connection ~ 1650 750 
Wire Wire Line
	1650 750  1950 750 
Wire Wire Line
	850  750  1250 750 
Wire Wire Line
	850  950  1250 950 
Connection ~ 1250 950 
Wire Wire Line
	1250 950  1650 950 
Connection ~ 1250 750 
Wire Wire Line
	1250 750  1650 750 
Connection ~ 850  950 
Connection ~ 850  750 
Text Label 1700 1300 0    50   ~ 0
VDDSD
Text Label 1700 1850 0    50   ~ 0
VREFSD
$Comp
L power:+3V3 #PWR030
U 1 1 5D073ED8
P 850 2450
F 0 "#PWR030" H 850 2300 50  0001 C CNN
F 1 "+3V3" H 865 2623 50  0000 C CNN
F 2 "" H 850 2450 50  0001 C CNN
F 3 "" H 850 2450 50  0001 C CNN
	1    850  2450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR031
U 1 1 5D073EDE
P 850 2650
F 0 "#PWR031" H 850 2400 50  0001 C CNN
F 1 "GNDREF" H 855 2477 50  0001 C CNN
F 2 "" H 850 2650 50  0001 C CNN
F 3 "" H 850 2650 50  0001 C CNN
	1    850  2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C22
U 1 1 5D073EE4
P 850 2550
F 0 "C22" H 942 2596 50  0000 L CNN
F 1 "4.7µF" H 942 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 2550 50  0001 C CNN
F 3 "~" H 850 2550 50  0001 C CNN
F 4 "GRM21BR71C475KE51L" H 850 2550 50  0001 C CNN "MPN"
	1    850  2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C23
U 1 1 5D073EEA
P 1250 2550
F 0 "C23" H 1342 2596 50  0000 L CNN
F 1 "100nF" H 1342 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1250 2550 50  0001 C CNN
F 3 "~" H 1250 2550 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1250 2550 50  0001 C CNN "MPN"
	1    1250 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C24
U 1 1 5D073EF0
P 1650 2550
F 0 "C24" H 1742 2596 50  0000 L CNN
F 1 "100nF" H 1742 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 2550 50  0001 C CNN
F 3 "~" H 1650 2550 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1650 2550 50  0001 C CNN "MPN"
	1    1650 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C25
U 1 1 5D073EF6
P 2050 2550
F 0 "C25" H 2142 2596 50  0000 L CNN
F 1 "100nF" H 2142 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2050 2550 50  0001 C CNN
F 3 "~" H 2050 2550 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 2050 2550 50  0001 C CNN "MPN"
	1    2050 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2450 1250 2450
Connection ~ 850  2450
Connection ~ 1250 2450
Wire Wire Line
	1250 2450 1650 2450
Connection ~ 1650 2450
Wire Wire Line
	1650 2450 2050 2450
Wire Wire Line
	850  2650 1250 2650
Connection ~ 850  2650
Connection ~ 1250 2650
Wire Wire Line
	1250 2650 1650 2650
Connection ~ 1650 2650
Wire Wire Line
	1650 2650 2050 2650
$Comp
L Device:C_Small C26
U 1 1 5D073F08
P 2450 2550
F 0 "C26" H 2542 2596 50  0000 L CNN
F 1 "10nF" H 2542 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2450 2550 50  0001 C CNN
F 3 "~" H 2450 2550 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 2450 2550 50  0001 C CNN "MPN"
	1    2450 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2450 2450 2450
Connection ~ 2050 2450
Wire Wire Line
	2450 2650 2050 2650
Connection ~ 2050 2650
Wire Wire Line
	2450 2450 2750 2450
Connection ~ 2450 2450
Text Label 2550 2450 0    50   ~ 0
VDD1
$Comp
L Device:Rotary_Encoder_Switch SW2
U 1 1 5CA53BBE
P 3200 7450
F 0 "SW2" H 3200 7817 50  0000 C CNN
F 1 "ENC1 (Current)" H 3200 7726 50  0000 C CNN
F 2 "footprints:PEC12R-2xxxf-Sxxxx" H 3050 7610 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/54/EC12R-777795.pdf" H 3200 7710 50  0001 C CNN
F 4 "PEC12R-2220F-S0024" H 3200 7450 50  0001 C CNN "MPN"
	1    3200 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5900 8250 6100
Wire Wire Line
	8250 6100 8350 6100
$Comp
L power:GNDREF #PWR038
U 1 1 5CF139AB
P 8350 6100
F 0 "#PWR038" H 8350 5850 50  0001 C CNN
F 1 "GNDREF" H 8355 5927 50  0001 C CNN
F 2 "" H 8350 6100 50  0001 C CNN
F 3 "" H 8350 6100 50  0001 C CNN
	1    8350 6100
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
$Comp
L power:+3.3V #PWR035
U 1 1 5CF19FC3
P 7950 4450
F 0 "#PWR035" H 7950 4300 50  0001 C CNN
F 1 "+3.3V" H 7965 4623 50  0000 C CNN
F 2 "" H 7950 4450 50  0001 C CNN
F 3 "" H 7950 4450 50  0001 C CNN
	1    7950 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4500 7950 4500
Wire Wire Line
	7950 4500 7950 4450
$Comp
L Device:R R34
U 1 1 5CF8AC53
P 5550 7100
F 0 "R34" H 5620 7146 50  0000 L CNN
F 1 "10k" H 5620 7055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5480 7100 50  0001 C CNN
F 3 "~" H 5550 7100 50  0001 C CNN
F 4 "APC0805B10K0N" H 5550 7100 50  0001 C CNN "MPN"
	1    5550 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R30
U 1 1 5CF9B0E6
P 7800 5800
F 0 "R30" V 7850 6050 50  0000 C CNN
F 1 "1k" V 7850 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7730 5800 50  0001 C CNN
F 3 "~" H 7800 5800 50  0001 C CNN
F 4 "RT0805FRE071KL" H 7800 5800 50  0001 C CNN "MPN"
	1    7800 5800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R32
U 1 1 5CF9D1EA
P 7800 6100
F 0 "R32" V 7850 6350 50  0000 C CNN
F 1 "1k" V 7850 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7730 6100 50  0001 C CNN
F 3 "~" H 7800 6100 50  0001 C CNN
F 4 "RT0805FRE071KL" H 7800 6100 50  0001 C CNN "MPN"
	1    7800 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R33
U 1 1 5CF9F638
P 7800 6250
F 0 "R33" V 7850 6500 50  0000 C CNN
F 1 "1k" V 7850 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7730 6250 50  0001 C CNN
F 3 "~" H 7800 6250 50  0001 C CNN
F 4 "RT0805FRE071KL" H 7800 6250 50  0001 C CNN "MPN"
	1    7800 6250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 6250 7950 6100
Connection ~ 7950 5950
Wire Wire Line
	7950 5950 7950 5800
Connection ~ 7950 6100
Wire Wire Line
	7950 6100 7950 5950
Wire Wire Line
	7650 5800 7650 5950
Connection ~ 7650 5950
Wire Wire Line
	7650 5950 7650 6100
Connection ~ 7650 6100
Wire Wire Line
	7650 6100 7650 6250
Wire Wire Line
	7950 5800 8300 5800
Connection ~ 7950 5800
Wire Wire Line
	7650 5800 7450 5800
Connection ~ 7650 5800
Wire Wire Line
	4600 7450 4600 7550
Connection ~ 4600 7550
Wire Wire Line
	4600 7550 4600 7700
Connection ~ 4600 7350
Wire Wire Line
	4600 7350 4600 7250
Connection ~ 4600 7450
Wire Wire Line
	4600 7450 4600 7350
Text Label 4700 3100 2    50   ~ 0
NRST
Text Label 5200 7550 0    50   ~ 0
NRST
$Comp
L Connector_Generic:Conn_01x16 J2
U 1 1 5CE4A076
P 8500 5100
F 0 "J2" H 8580 5142 50  0000 L CNN
F 1 "Display" H 8580 5051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 8500 5100 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/276/0022284150_PCB_HEADERS-159054.pdf" H 8500 5100 50  0001 C CNN
F 4 "M20-9991646" H 8500 5100 50  0001 C CNN "MPN"
	1    8500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4200 8300 4400
NoConn ~ 8300 4600
Wire Wire Line
	8300 5900 8250 5900
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
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 10300 1000 50  0001 L CNN
F 4 "MMBT3904" H 10300 1000 50  0001 C CNN "MPN"
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
$Comp
L Device:R R36
U 1 1 5D0E9595
P 10650 1550
F 0 "R36" V 10550 1550 50  0000 L CNN
F 1 "1k" V 10750 1500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10580 1550 50  0001 C CNN
F 3 "~" H 10650 1550 50  0001 C CNN
F 4 "RT0805FRE071KL" H 10650 1550 50  0001 C CNN "MPN"
	1    10650 1550
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0103
U 1 1 5D0E959B
P 10800 1550
F 0 "#PWR0103" H 10800 1300 50  0001 C CNN
F 1 "GNDREF" V 10805 1422 50  0001 R CNN
F 2 "" H 10800 1550 50  0001 C CNN
F 3 "" H 10800 1550 50  0001 C CNN
	1    10800 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 5D0E95A1
P 9800 1550
F 0 "#PWR0104" H 9800 1400 50  0001 C CNN
F 1 "+3V3" V 9815 1678 50  0000 L CNN
F 2 "" H 9800 1550 50  0001 C CNN
F 3 "" H 9800 1550 50  0001 C CNN
	1    9800 1550
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q4
U 1 1 5D0E95A7
P 10300 1650
F 0 "Q4" V 10600 1600 50  0000 C CNN
F 1 "MMBT3904" V 10500 1550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10500 1575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 10300 1650 50  0001 L CNN
F 4 "MMBT3904" H 10300 1650 50  0001 C CNN "MPN"
	1    10300 1650
	0    -1   -1   0   
$EndComp
Text Label 10300 1850 0    50   ~ 0
CODE_B0
$Comp
L Device:LED D2
U 1 1 5D0E95AE
P 9950 1550
F 0 "D2" H 9943 1295 50  0000 C CNN
F 1 "APTD3216LVBC/D" H 9943 1386 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9950 1550 50  0001 C CNN
F 3 "~" H 9950 1550 50  0001 C CNN
F 4 "APTD3216LVBC/D" H 9950 1550 50  0001 C CNN "MPN"
	1    9950 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R37
U 1 1 5D0EB677
P 10650 2150
F 0 "R37" V 10550 2150 50  0000 L CNN
F 1 "1k" V 10750 2100 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10580 2150 50  0001 C CNN
F 3 "~" H 10650 2150 50  0001 C CNN
F 4 "RT0805FRE071KL" H 10650 2150 50  0001 C CNN "MPN"
	1    10650 2150
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0105
U 1 1 5D0EB681
P 10800 2150
F 0 "#PWR0105" H 10800 1900 50  0001 C CNN
F 1 "GNDREF" V 10805 2022 50  0001 R CNN
F 2 "" H 10800 2150 50  0001 C CNN
F 3 "" H 10800 2150 50  0001 C CNN
	1    10800 2150
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0106
U 1 1 5D0EB68B
P 9800 2150
F 0 "#PWR0106" H 9800 2000 50  0001 C CNN
F 1 "+3V3" V 9815 2278 50  0000 L CNN
F 2 "" H 9800 2150 50  0001 C CNN
F 3 "" H 9800 2150 50  0001 C CNN
	1    9800 2150
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q5
U 1 1 5D0EB695
P 10300 2250
F 0 "Q5" V 10600 2200 50  0000 C CNN
F 1 "MMBT3904" V 10500 2150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10500 2175 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 10300 2250 50  0001 L CNN
F 4 "MMBT3904" H 10300 2250 50  0001 C CNN "MPN"
	1    10300 2250
	0    -1   -1   0   
$EndComp
Text Label 10300 2450 0    50   ~ 0
CODE_B1
$Comp
L Device:LED D3
U 1 1 5D0EB6A0
P 9950 2150
F 0 "D3" H 9943 1895 50  0000 C CNN
F 1 "APTD3216LVBC/D" H 9943 1986 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9950 2150 50  0001 C CNN
F 3 "~" H 9950 2150 50  0001 C CNN
F 4 "APTD3216LVBC/D" H 9950 2150 50  0001 C CNN "MPN"
	1    9950 2150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R38
U 1 1 5D108E55
P 10650 2800
F 0 "R38" V 10550 2800 50  0000 L CNN
F 1 "1k" V 10750 2750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10580 2800 50  0001 C CNN
F 3 "~" H 10650 2800 50  0001 C CNN
F 4 "RT0805FRE071KL" H 10650 2800 50  0001 C CNN "MPN"
	1    10650 2800
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0107
U 1 1 5D108E5B
P 10800 2800
F 0 "#PWR0107" H 10800 2550 50  0001 C CNN
F 1 "GNDREF" V 10805 2672 50  0001 R CNN
F 2 "" H 10800 2800 50  0001 C CNN
F 3 "" H 10800 2800 50  0001 C CNN
	1    10800 2800
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0108
U 1 1 5D108E61
P 9800 2800
F 0 "#PWR0108" H 9800 2650 50  0001 C CNN
F 1 "+3V3" V 9815 2928 50  0000 L CNN
F 2 "" H 9800 2800 50  0001 C CNN
F 3 "" H 9800 2800 50  0001 C CNN
	1    9800 2800
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q6
U 1 1 5D108E67
P 10300 2900
F 0 "Q6" V 10600 2850 50  0000 C CNN
F 1 "MMBT3904" V 10500 2800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10500 2825 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 10300 2900 50  0001 L CNN
F 4 "MMBT3904" H 10300 2900 50  0001 C CNN "MPN"
	1    10300 2900
	0    -1   -1   0   
$EndComp
Text Label 10300 3100 0    50   ~ 0
CODE_B2
$Comp
L Device:LED D4
U 1 1 5D108E6E
P 9950 2800
F 0 "D4" H 9943 2545 50  0000 C CNN
F 1 "APTD3216LVBC/D" H 9943 2636 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9950 2800 50  0001 C CNN
F 3 "~" H 9950 2800 50  0001 C CNN
F 4 "APTD3216LVBC/D" H 9950 2800 50  0001 C CNN "MPN"
	1    9950 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R39
U 1 1 5D108E75
P 10650 3400
F 0 "R39" V 10550 3400 50  0000 L CNN
F 1 "1k" V 10750 3350 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10580 3400 50  0001 C CNN
F 3 "~" H 10650 3400 50  0001 C CNN
F 4 "RT0805FRE071KL" H 10650 3400 50  0001 C CNN "MPN"
	1    10650 3400
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0109
U 1 1 5D108E7B
P 10800 3400
F 0 "#PWR0109" H 10800 3150 50  0001 C CNN
F 1 "GNDREF" V 10805 3272 50  0001 R CNN
F 2 "" H 10800 3400 50  0001 C CNN
F 3 "" H 10800 3400 50  0001 C CNN
	1    10800 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0110
U 1 1 5D108E81
P 9800 3400
F 0 "#PWR0110" H 9800 3250 50  0001 C CNN
F 1 "+3V3" V 9815 3528 50  0000 L CNN
F 2 "" H 9800 3400 50  0001 C CNN
F 3 "" H 9800 3400 50  0001 C CNN
	1    9800 3400
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q7
U 1 1 5D108E87
P 10300 3500
F 0 "Q7" V 10600 3450 50  0000 C CNN
F 1 "MMBT3904" V 10500 3400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10500 3425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 10300 3500 50  0001 L CNN
F 4 "MMBT3904" H 10300 3500 50  0001 C CNN "MPN"
	1    10300 3500
	0    -1   -1   0   
$EndComp
Text Label 10300 3700 0    50   ~ 0
CODE_B3
$Comp
L Device:LED D5
U 1 1 5D108E8E
P 9950 3400
F 0 "D5" H 9943 3145 50  0000 C CNN
F 1 "APTD3216LVBC/D" H 9943 3236 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9950 3400 50  0001 C CNN
F 3 "~" H 9950 3400 50  0001 C CNN
F 4 "APTD3216LVBC/D" H 9950 3400 50  0001 C CNN "MPN"
	1    9950 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R40
U 1 1 5D120581
P 10650 4000
F 0 "R40" V 10550 4000 50  0000 L CNN
F 1 "1k" V 10750 3950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10580 4000 50  0001 C CNN
F 3 "~" H 10650 4000 50  0001 C CNN
F 4 "RT0805FRE071KL" H 10650 4000 50  0001 C CNN "MPN"
	1    10650 4000
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0111
U 1 1 5D120587
P 10800 4000
F 0 "#PWR0111" H 10800 3750 50  0001 C CNN
F 1 "GNDREF" V 10805 3872 50  0001 R CNN
F 2 "" H 10800 4000 50  0001 C CNN
F 3 "" H 10800 4000 50  0001 C CNN
	1    10800 4000
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0112
U 1 1 5D12058D
P 9800 4000
F 0 "#PWR0112" H 9800 3850 50  0001 C CNN
F 1 "+3V3" V 9815 4128 50  0000 L CNN
F 2 "" H 9800 4000 50  0001 C CNN
F 3 "" H 9800 4000 50  0001 C CNN
	1    9800 4000
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q8
U 1 1 5D120593
P 10300 4100
F 0 "Q8" V 10600 4050 50  0000 C CNN
F 1 "MMBT3904" V 10500 4000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10500 4025 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 10300 4100 50  0001 L CNN
F 4 "MMBT3904" H 10300 4100 50  0001 C CNN "MPN"
	1    10300 4100
	0    -1   -1   0   
$EndComp
Text Label 10300 4300 0    50   ~ 0
CODE_B4
$Comp
L Device:LED D6
U 1 1 5D12059A
P 9950 4000
F 0 "D6" H 9943 3745 50  0000 C CNN
F 1 "APTD3216LVBC/D" H 9943 3836 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9950 4000 50  0001 C CNN
F 3 "~" H 9950 4000 50  0001 C CNN
F 4 "APTD3216LVBC/D" H 9950 4000 50  0001 C CNN "MPN"
	1    9950 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R41
U 1 1 5D1205A1
P 10650 4600
F 0 "R41" V 10550 4600 50  0000 L CNN
F 1 "1k" V 10750 4550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10580 4600 50  0001 C CNN
F 3 "~" H 10650 4600 50  0001 C CNN
F 4 "RT0805FRE071KL" H 10650 4600 50  0001 C CNN "MPN"
	1    10650 4600
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0113
U 1 1 5D1205A7
P 10800 4600
F 0 "#PWR0113" H 10800 4350 50  0001 C CNN
F 1 "GNDREF" V 10805 4472 50  0001 R CNN
F 2 "" H 10800 4600 50  0001 C CNN
F 3 "" H 10800 4600 50  0001 C CNN
	1    10800 4600
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0114
U 1 1 5D1205AD
P 9800 4600
F 0 "#PWR0114" H 9800 4450 50  0001 C CNN
F 1 "+3V3" V 9815 4728 50  0000 L CNN
F 2 "" H 9800 4600 50  0001 C CNN
F 3 "" H 9800 4600 50  0001 C CNN
	1    9800 4600
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q9
U 1 1 5D1205B3
P 10300 4700
F 0 "Q9" V 10600 4650 50  0000 C CNN
F 1 "MMBT3904" V 10500 4600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10500 4625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 10300 4700 50  0001 L CNN
F 4 "MMBT3904" H 10300 4700 50  0001 C CNN "MPN"
	1    10300 4700
	0    -1   -1   0   
$EndComp
Text Label 10300 4900 0    50   ~ 0
CODE_B5
$Comp
L Device:LED D7
U 1 1 5D1205BA
P 9950 4600
F 0 "D7" H 9943 4345 50  0000 C CNN
F 1 "APTD3216LVBC/D" H 9943 4436 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9950 4600 50  0001 C CNN
F 3 "~" H 9950 4600 50  0001 C CNN
F 4 "APTD3216LVBC/D" H 9950 4600 50  0001 C CNN "MPN"
	1    9950 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R42
U 1 1 5D1205C1
P 10650 5250
F 0 "R42" V 10550 5250 50  0000 L CNN
F 1 "1k" V 10750 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10580 5250 50  0001 C CNN
F 3 "~" H 10650 5250 50  0001 C CNN
F 4 "RT0805FRE071KL" H 10650 5250 50  0001 C CNN "MPN"
	1    10650 5250
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0115
U 1 1 5D1205C7
P 10800 5250
F 0 "#PWR0115" H 10800 5000 50  0001 C CNN
F 1 "GNDREF" V 10805 5122 50  0001 R CNN
F 2 "" H 10800 5250 50  0001 C CNN
F 3 "" H 10800 5250 50  0001 C CNN
	1    10800 5250
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0116
U 1 1 5D1205CD
P 9800 5250
F 0 "#PWR0116" H 9800 5100 50  0001 C CNN
F 1 "+3V3" V 9815 5378 50  0000 L CNN
F 2 "" H 9800 5250 50  0001 C CNN
F 3 "" H 9800 5250 50  0001 C CNN
	1    9800 5250
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q10
U 1 1 5D1205D3
P 10300 5350
F 0 "Q10" V 10600 5300 50  0000 C CNN
F 1 "MMBT3904" V 10500 5250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10500 5275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 10300 5350 50  0001 L CNN
F 4 "MMBT3904" H 10300 5350 50  0001 C CNN "MPN"
	1    10300 5350
	0    -1   -1   0   
$EndComp
Text Label 10300 5550 0    50   ~ 0
CODE_B6
$Comp
L Device:LED D8
U 1 1 5D1205DA
P 9950 5250
F 0 "D8" H 9943 4995 50  0000 C CNN
F 1 "APTD3216LVBC/D" H 9943 5086 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9950 5250 50  0001 C CNN
F 3 "~" H 9950 5250 50  0001 C CNN
F 4 "APTD3216LVBC/D" H 9950 5250 50  0001 C CNN "MPN"
	1    9950 5250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R43
U 1 1 5D1205E1
P 10650 5850
F 0 "R43" V 10550 5850 50  0000 L CNN
F 1 "1k" V 10750 5800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10580 5850 50  0001 C CNN
F 3 "~" H 10650 5850 50  0001 C CNN
F 4 "RT0805FRE071KL" H 10650 5850 50  0001 C CNN "MPN"
	1    10650 5850
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0117
U 1 1 5D1205E7
P 10800 5850
F 0 "#PWR0117" H 10800 5600 50  0001 C CNN
F 1 "GNDREF" V 10805 5722 50  0001 R CNN
F 2 "" H 10800 5850 50  0001 C CNN
F 3 "" H 10800 5850 50  0001 C CNN
	1    10800 5850
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0118
U 1 1 5D1205ED
P 9800 5850
F 0 "#PWR0118" H 9800 5700 50  0001 C CNN
F 1 "+3V3" V 9815 5978 50  0000 L CNN
F 2 "" H 9800 5850 50  0001 C CNN
F 3 "" H 9800 5850 50  0001 C CNN
	1    9800 5850
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q11
U 1 1 5D1205F3
P 10300 5950
F 0 "Q11" V 10600 5900 50  0000 C CNN
F 1 "MMBT3904" V 10500 5850 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10500 5875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 10300 5950 50  0001 L CNN
F 4 "MMBT3904" H 10300 5950 50  0001 C CNN "MPN"
	1    10300 5950
	0    -1   -1   0   
$EndComp
Text Label 10300 6150 0    50   ~ 0
CODE_B7
$Comp
L Device:LED D9
U 1 1 5D1205FA
P 9950 5850
F 0 "D9" H 9943 5595 50  0000 C CNN
F 1 "APTD3216LVBC/D" H 9943 5686 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9950 5850 50  0001 C CNN
F 3 "~" H 9950 5850 50  0001 C CNN
F 4 "APTD3216LVBC/D" H 9950 5850 50  0001 C CNN "MPN"
	1    9950 5850
	-1   0    0    1   
$EndComp
Text Label 6100 4300 0    50   ~ 0
OUTPUT_ON
Text Label 6100 3600 0    50   ~ 0
CODE_B0
Text Label 4700 4900 2    50   ~ 0
CODE_B2
Text Label 6100 3800 0    50   ~ 0
CODE_B3
Text Label 6100 3900 0    50   ~ 0
CODE_B4
Text Label 6100 4000 0    50   ~ 0
CODE_B5
NoConn ~ 4700 5800
NoConn ~ 4700 5700
NoConn ~ 4700 5600
Text Label 4700 4800 2    50   ~ 0
CODE_B1
$EndSCHEMATC
