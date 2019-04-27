EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 26 0
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
P 5350 1000
F 0 "J1" H 5405 1467 50  0000 C CNN
F 1 "USB_A" H 5405 1376 50  0000 C CNN
F 2 "" H 5500 950 50  0001 C CNN
F 3 " ~" H 5500 950 50  0001 C CNN
	1    5350 1000
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F3:STM32F373C8Tx U?
U 1 1 5CA4B77E
P 5400 4400
F 0 "U?" H 5400 4550 50  0000 C CNN
F 1 "STM32F373C8Tx" H 5400 4400 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 4800 2900 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00046749.pdf" H 5400 4400 50  0001 C CNN
	1    5400 4400
	1    0    0    -1  
$EndComp
Text Label 5650 1000 0    50   ~ 0
USB_D+
Text Label 5650 1100 0    50   ~ 0
USB_D-
$Comp
L power:GNDREF #PWR?
U 1 1 5CA4BBDE
P 5350 1400
F 0 "#PWR?" H 5350 1150 50  0001 C CNN
F 1 "GNDREF" H 5355 1227 50  0001 C CNN
F 2 "" H 5350 1400 50  0001 C CNN
F 3 "" H 5350 1400 50  0001 C CNN
	1    5350 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1400 5350 1400
Connection ~ 5350 1400
Text Label 6100 4200 0    50   ~ 0
USB_D+
Text Label 6100 4100 0    50   ~ 0
USB_D-
$Comp
L power:GNDREF #PWR?
U 1 1 5CA4D23A
P 5500 6000
F 0 "#PWR?" H 5500 5750 50  0001 C CNN
F 1 "GNDREF" H 5505 5827 50  0001 C CNN
F 2 "" H 5500 6000 50  0001 C CNN
F 3 "" H 5500 6000 50  0001 C CNN
	1    5500 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1000 6100 1000
$Comp
L Device:R R?
U 1 1 5CA4D431
P 6100 850
F 0 "R?" H 6170 896 50  0000 L CNN
F 1 "1k5" H 6170 805 50  0000 L CNN
F 2 "" V 6030 850 50  0001 C CNN
F 3 "~" H 6100 850 50  0001 C CNN
	1    6100 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6000 5500 6000
Connection ~ 5500 6000
Wire Wire Line
	5500 6000 5400 6000
$Comp
L Device:Rotary_Encoder_Switch SW?
U 1 1 5CA53AEC
P 1250 7450
F 0 "SW?" H 1250 7817 50  0000 C CNN
F 1 "ENC0 (Voltage)" H 1250 7726 50  0000 C CNN
F 2 "" H 1100 7610 50  0001 C CNN
F 3 "~" H 1250 7710 50  0001 C CNN
	1    1250 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW?
U 1 1 5CA53BBE
P 3200 7450
F 0 "SW?" H 3200 7817 50  0000 C CNN
F 1 "ENC1 (Current)" H 3200 7726 50  0000 C CNN
F 2 "" H 3050 7610 50  0001 C CNN
F 3 "~" H 3200 7710 50  0001 C CNN
	1    3200 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CA53D08
P 950 7450
F 0 "#PWR?" H 950 7200 50  0001 C CNN
F 1 "GNDREF" H 955 7322 50  0001 R CNN
F 2 "" H 950 7450 50  0001 C CNN
F 3 "" H 950 7450 50  0001 C CNN
	1    950  7450
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CA5463C
P 2900 7450
F 0 "#PWR?" H 2900 7200 50  0001 C CNN
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
L power:GNDREF #PWR?
U 1 1 5CA562A1
P 1550 7550
F 0 "#PWR?" H 1550 7300 50  0001 C CNN
F 1 "GNDREF" H 1555 7377 50  0001 C CNN
F 2 "" H 1550 7550 50  0001 C CNN
F 3 "" H 1550 7550 50  0001 C CNN
	1    1550 7550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CA562DC
P 3500 7550
F 0 "#PWR?" H 3500 7300 50  0001 C CNN
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
Text HLabel 6100 3700 2    50   Output ~ 0
Iset
Text HLabel 6100 3500 2    50   Output ~ 0
Vset
$Comp
L power:+3V3 #PWR?
U 1 1 5CA64031
P 700 750
F 0 "#PWR?" H 700 600 50  0001 C CNN
F 1 "+3V3" H 715 923 50  0000 C CNN
F 2 "" H 700 750 50  0001 C CNN
F 3 "" H 700 750 50  0001 C CNN
	1    700  750 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CA6406B
P 700 950
F 0 "#PWR?" H 700 700 50  0001 C CNN
F 1 "GNDREF" H 705 777 50  0001 C CNN
F 2 "" H 700 950 50  0001 C CNN
F 3 "" H 700 950 50  0001 C CNN
	1    700  950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CA640A5
P 700 850
F 0 "C?" H 792 896 50  0000 L CNN
F 1 "4.7µF" H 792 805 50  0000 L CNN
F 2 "" H 700 850 50  0001 C CNN
F 3 "~" H 700 850 50  0001 C CNN
	1    700  850 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5CA645F8
P 6100 700
F 0 "#PWR?" H 6100 550 50  0001 C CNN
F 1 "+3V3" H 6115 873 50  0000 C CNN
F 2 "" H 6100 700 50  0001 C CNN
F 3 "" H 6100 700 50  0001 C CNN
	1    6100 700 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CA64B09
P 1100 850
F 0 "C?" H 1192 896 50  0000 L CNN
F 1 "100nF" H 1192 805 50  0000 L CNN
F 2 "" H 1100 850 50  0001 C CNN
F 3 "~" H 1100 850 50  0001 C CNN
	1    1100 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CA64B9D
P 1500 850
F 0 "C?" H 1592 896 50  0000 L CNN
F 1 "100nF" H 1592 805 50  0000 L CNN
F 2 "" H 1500 850 50  0001 C CNN
F 3 "~" H 1500 850 50  0001 C CNN
	1    1500 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CA64BC9
P 1900 850
F 0 "C?" H 1992 896 50  0000 L CNN
F 1 "100nF" H 1992 805 50  0000 L CNN
F 2 "" H 1900 850 50  0001 C CNN
F 3 "~" H 1900 850 50  0001 C CNN
	1    1900 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  750  1100 750 
Connection ~ 700  750 
Connection ~ 1100 750 
Wire Wire Line
	1100 750  1500 750 
Connection ~ 1500 750 
Wire Wire Line
	1500 750  1900 750 
Wire Wire Line
	700  950  1100 950 
Connection ~ 700  950 
Connection ~ 1100 950 
Wire Wire Line
	1100 950  1500 950 
Connection ~ 1500 950 
Wire Wire Line
	1500 950  1900 950 
Wire Wire Line
	5300 2900 5400 2900
Connection ~ 5400 2900
Wire Wire Line
	5400 2900 5500 2900
$Comp
L power:+3V3 #PWR?
U 1 1 5CA65E4B
P 5300 2900
F 0 "#PWR?" H 5300 2750 50  0001 C CNN
F 1 "+3V3" H 5315 3073 50  0000 C CNN
F 2 "" H 5300 2900 50  0001 C CNN
F 3 "" H 5300 2900 50  0001 C CNN
	1    5300 2900
	1    0    0    -1  
$EndComp
Connection ~ 5300 2900
$Comp
L power:+3V3A #PWR?
U 1 1 5CA66E83
P 700 1350
F 0 "#PWR?" H 900 1375 50  0001 C CNN
F 1 "+3V3A" H 682 1523 50  0000 C CNN
F 2 "" H 700 1350 50  0001 C CNN
F 3 "" H 700 1350 50  0001 C CNN
	1    700  1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CA66EC5
P 700 1450
F 0 "C?" H 792 1496 50  0000 L CNN
F 1 "1µF" H 792 1405 50  0000 L CNN
F 2 "" H 700 1450 50  0001 C CNN
F 3 "~" H 700 1450 50  0001 C CNN
	1    700  1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CA6715D
P 1500 1450
F 0 "C?" H 1592 1496 50  0000 L CNN
F 1 "10nF" H 1592 1405 50  0000 L CNN
F 2 "" H 1500 1450 50  0001 C CNN
F 3 "~" H 1500 1450 50  0001 C CNN
	1    1500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1350 1100 1350
Connection ~ 700  1350
Wire Wire Line
	700  1550 1100 1550
$Comp
L Device:C_Small C?
U 1 1 5CA67559
P 1100 1450
F 0 "C?" H 1192 1496 50  0000 L CNN
F 1 "100n" H 1192 1405 50  0000 L CNN
F 2 "" H 1100 1450 50  0001 C CNN
F 3 "~" H 1100 1450 50  0001 C CNN
	1    1100 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1350 1500 1350
Connection ~ 1100 1350
Wire Wire Line
	1500 1550 1100 1550
Connection ~ 1100 1550
$Comp
L power:GNDREF #PWR?
U 1 1 5CA67DD7
P 700 1550
F 0 "#PWR?" H 700 1300 50  0001 C CNN
F 1 "GNDREF" H 705 1377 50  0001 C CNN
F 2 "" H 700 1550 50  0001 C CNN
F 3 "" H 700 1550 50  0001 C CNN
	1    700  1550
	1    0    0    -1  
$EndComp
Connection ~ 700  1550
$Comp
L Device:C_Small C?
U 1 1 5CA685B9
P 2300 850
F 0 "C?" H 2392 896 50  0000 L CNN
F 1 "10nF" H 2392 805 50  0000 L CNN
F 2 "" H 2300 850 50  0001 C CNN
F 3 "~" H 2300 850 50  0001 C CNN
	1    2300 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 750  2300 750 
Connection ~ 1900 750 
Wire Wire Line
	2300 950  1900 950 
Connection ~ 1900 950 
Wire Wire Line
	5600 2900 5700 2900
$Comp
L power:+3V3A #PWR?
U 1 1 5CA69707
P 5700 2900
F 0 "#PWR?" H 5900 2925 50  0001 C CNN
F 1 "+3V3A" H 5682 3073 50  0000 C CNN
F 2 "" H 5700 2900 50  0001 C CNN
F 3 "" H 5700 2900 50  0001 C CNN
	1    5700 2900
	1    0    0    -1  
$EndComp
Connection ~ 5700 2900
$Comp
L Switch:SW_DIP_x04 SW?
U 1 1 5CAA887C
P 1200 2350
F 0 "SW?" H 1200 2817 50  0000 C CNN
F 1 "SW_DIP_x04" H 1200 2726 50  0000 C CNN
F 2 "" H 1200 2350 50  0001 C CNN
F 3 "" H 1200 2350 50  0001 C CNN
	1    1200 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5CAA899E
P 750 2100
F 0 "#PWR?" H 750 1950 50  0001 C CNN
F 1 "+3V3" H 765 2273 50  0000 C CNN
F 2 "" H 750 2100 50  0001 C CNN
F 3 "" H 750 2100 50  0001 C CNN
	1    750  2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  2100 750  2150
Wire Wire Line
	750  2150 900  2150
Text Label 4700 3300 2    50   ~ 0
BOOT0
Text Label 1500 2150 0    50   ~ 0
BOOT0
$Comp
L Device:R R?
U 1 1 5CAA99AF
P 4150 3450
F 0 "R?" H 4220 3496 50  0000 L CNN
F 1 "50k" H 4220 3405 50  0000 L CNN
F 2 "" V 4080 3450 50  0001 C CNN
F 3 "~" H 4150 3450 50  0001 C CNN
	1    4150 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3300 4700 3300
$Comp
L power:GNDREF #PWR?
U 1 1 5CAAA278
P 4150 3600
F 0 "#PWR?" H 4150 3350 50  0001 C CNN
F 1 "GNDREF" H 4155 3427 50  0000 C CNN
F 2 "" H 4150 3600 50  0001 C CNN
F 3 "" H 4150 3600 50  0001 C CNN
	1    4150 3600
	1    0    0    -1  
$EndComp
Text Label 6100 3100 0    50   ~ 0
ENC0_A
Text Label 6100 3200 0    50   ~ 0
ENC0_B
Text Label 6100 3300 0    50   ~ 0
ENC1_A
Text Label 6100 3400 0    50   ~ 0
ENC1_B
Text Label 6100 3600 0    50   ~ 0
ENC0_SW
Text Label 6100 3800 0    50   ~ 0
ENC1_SW
$EndSCHEMATC
