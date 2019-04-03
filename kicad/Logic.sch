EESchema Schematic File Version 4
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
Text GLabel 6100 700  1    50   Input ~ 0
3V3
$Comp
L Device:C_Small C?
U 1 1 5CA4E47B
P 5600 2350
F 0 "C?" V 5829 2350 50  0000 C CNN
F 1 "100nF" V 5738 2350 50  0000 C CNN
F 2 "" H 5600 2350 50  0001 C CNN
F 3 "~" H 5600 2350 50  0001 C CNN
	1    5600 2350
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CA4E58C
P 5750 2350
F 0 "#PWR?" H 5750 2100 50  0001 C CNN
F 1 "GNDREF" H 5755 2177 50  0001 C CNN
F 2 "" H 5750 2350 50  0001 C CNN
F 3 "" H 5750 2350 50  0001 C CNN
	1    5750 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CA4E707
P 5900 2350
F 0 "C?" V 5671 2350 50  0000 C CNN
F 1 "100nF" V 5762 2350 50  0000 C CNN
F 2 "" H 5900 2350 50  0001 C CNN
F 3 "~" H 5900 2350 50  0001 C CNN
	1    5900 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 2350 6000 2500
Wire Wire Line
	6000 2500 5600 2500
$Comp
L Device:C_Small C?
U 1 1 5CA4E7BF
P 5800 2800
F 0 "C?" V 5571 2800 50  0000 C CNN
F 1 "100nF" V 5662 2800 50  0000 C CNN
F 2 "" H 5800 2800 50  0001 C CNN
F 3 "~" H 5800 2800 50  0001 C CNN
	1    5800 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 2800 5700 2900
$Comp
L power:GNDREF #PWR?
U 1 1 5CA4E8C0
P 5900 2800
F 0 "#PWR?" H 5900 2550 50  0001 C CNN
F 1 "GNDREF" H 5905 2627 50  0001 C CNN
F 2 "" H 5900 2800 50  0001 C CNN
F 3 "" H 5900 2800 50  0001 C CNN
	1    5900 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CA4EF8C
P 5300 2350
F 0 "C?" V 5071 2350 50  0000 C CNN
F 1 "100nF" V 5162 2350 50  0000 C CNN
F 2 "" H 5300 2350 50  0001 C CNN
F 3 "~" H 5300 2350 50  0001 C CNN
	1    5300 2350
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CA4F150
P 5200 2350
F 0 "#PWR?" H 5200 2100 50  0001 C CNN
F 1 "GNDREF" H 5205 2177 50  0001 C CNN
F 2 "" H 5200 2350 50  0001 C CNN
F 3 "" H 5200 2350 50  0001 C CNN
	1    5200 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2850 5300 2900
Wire Wire Line
	5600 2500 5600 2900
Wire Wire Line
	5400 2850 5300 2850
Wire Wire Line
	5500 2850 5500 2900
Wire Wire Line
	5500 2350 5500 2850
Connection ~ 5500 2850
Wire Wire Line
	5500 2850 5400 2850
Wire Wire Line
	5400 2350 5400 2900
Wire Wire Line
	5600 6000 5500 6000
Connection ~ 5500 6000
Wire Wire Line
	5500 6000 5400 6000
Wire Wire Line
	5700 2350 5750 2350
Connection ~ 5750 2350
Wire Wire Line
	5750 2350 5800 2350
Text GLabel 5750 2050 1    50   Input ~ 0
3V3
Wire Wire Line
	6050 2050 6050 2350
Wire Wire Line
	6050 2350 6000 2350
Connection ~ 6000 2350
Wire Wire Line
	5450 2050 5450 2350
Wire Wire Line
	5450 2350 5500 2350
Wire Wire Line
	5450 2050 6050 2050
Connection ~ 5500 2350
Wire Wire Line
	5450 2350 5400 2350
Connection ~ 5450 2350
Connection ~ 5400 2350
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
P 2600 7450
F 0 "SW?" H 2600 7817 50  0000 C CNN
F 1 "ENC1 (Current)" H 2600 7726 50  0000 C CNN
F 2 "" H 2450 7610 50  0001 C CNN
F 3 "~" H 2600 7710 50  0001 C CNN
	1    2600 7450
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
P 2300 7450
F 0 "#PWR?" H 2300 7200 50  0001 C CNN
F 1 "GNDREF" V 2305 7322 50  0001 R CNN
F 2 "" H 2300 7450 50  0001 C CNN
F 3 "" H 2300 7450 50  0001 C CNN
	1    2300 7450
	0    1    1    0   
$EndComp
Text Label 950  7350 2    50   ~ 0
ENC0_A
Text Label 950  7550 2    50   ~ 0
ENC0_B
Text Label 2300 7350 2    50   ~ 0
ENC1_A
Text Label 2300 7550 2    50   ~ 0
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
P 2900 7550
F 0 "#PWR?" H 2900 7300 50  0001 C CNN
F 1 "GNDREF" H 2905 7377 50  0001 C CNN
F 2 "" H 2900 7550 50  0001 C CNN
F 3 "" H 2900 7550 50  0001 C CNN
	1    2900 7550
	1    0    0    -1  
$EndComp
Text Label 2900 7350 0    50   ~ 0
ENC1_SW
Text HLabel 1100 1100 0    50   Input ~ 0
CLIM
Text HLabel 1100 1200 0    50   Input ~ 0
Vread
Text HLabel 1100 1300 0    50   Input ~ 0
Iread
Text HLabel 1100 1450 0    50   Output ~ 0
Iset
Text HLabel 1100 1550 0    50   Output ~ 0
Vset
$EndSCHEMATC
