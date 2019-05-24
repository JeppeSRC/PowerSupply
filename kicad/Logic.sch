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
P 5350 1000
F 0 "J1" H 5405 1467 50  0000 C CNN
F 1 "USB_A" H 5405 1376 50  0000 C CNN
F 2 "" H 5500 950 50  0001 C CNN
F 3 " ~" H 5500 950 50  0001 C CNN
	1    5350 1000
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
	1    5400 4400
	1    0    0    -1  
$EndComp
Text Label 5650 1000 0    50   ~ 0
USB_D+
Text Label 5650 1100 0    50   ~ 0
USB_D-
$Comp
L power:GNDREF #PWR0120
U 1 1 5CA4BBDE
P 5350 1400
F 0 "#PWR0120" H 5350 1150 50  0001 C CNN
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
L power:GNDREF #PWR0121
U 1 1 5CA4D23A
P 5500 6000
F 0 "#PWR0121" H 5500 5750 50  0001 C CNN
F 1 "GNDREF" H 5505 5827 50  0001 C CNN
F 2 "" H 5500 6000 50  0001 C CNN
F 3 "" H 5500 6000 50  0001 C CNN
	1    5500 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1000 6100 1000
$Comp
L Device:R R22
U 1 1 5CA4D431
P 6100 850
F 0 "R22" H 6170 896 50  0000 L CNN
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
L Device:Rotary_Encoder_Switch SW2
U 1 1 5CA53AEC
P 1250 7450
F 0 "SW2" H 1250 7817 50  0000 C CNN
F 1 "ENC0 (Voltage)" H 1250 7726 50  0000 C CNN
F 2 "" H 1100 7610 50  0001 C CNN
F 3 "~" H 1250 7710 50  0001 C CNN
	1    1250 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW3
U 1 1 5CA53BBE
P 3200 7450
F 0 "SW3" H 3200 7817 50  0000 C CNN
F 1 "ENC1 (Current)" H 3200 7726 50  0000 C CNN
F 2 "" H 3050 7610 50  0001 C CNN
F 3 "~" H 3200 7710 50  0001 C CNN
	1    3200 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0122
U 1 1 5CA53D08
P 950 7450
F 0 "#PWR0122" H 950 7200 50  0001 C CNN
F 1 "GNDREF" H 955 7322 50  0001 R CNN
F 2 "" H 950 7450 50  0001 C CNN
F 3 "" H 950 7450 50  0001 C CNN
	1    950  7450
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0123
U 1 1 5CA5463C
P 2900 7450
F 0 "#PWR0123" H 2900 7200 50  0001 C CNN
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
L power:GNDREF #PWR0124
U 1 1 5CA562A1
P 1550 7550
F 0 "#PWR0124" H 1550 7300 50  0001 C CNN
F 1 "GNDREF" H 1555 7377 50  0001 C CNN
F 2 "" H 1550 7550 50  0001 C CNN
F 3 "" H 1550 7550 50  0001 C CNN
	1    1550 7550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0125
U 1 1 5CA562DC
P 3500 7550
F 0 "#PWR0125" H 3500 7300 50  0001 C CNN
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
L power:+3V3 #PWR0126
U 1 1 5CA64031
P 700 750
F 0 "#PWR0126" H 700 600 50  0001 C CNN
F 1 "+3V3" H 715 923 50  0000 C CNN
F 2 "" H 700 750 50  0001 C CNN
F 3 "" H 700 750 50  0001 C CNN
	1    700  750 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0127
U 1 1 5CA6406B
P 700 950
F 0 "#PWR0127" H 700 700 50  0001 C CNN
F 1 "GNDREF" H 705 777 50  0001 C CNN
F 2 "" H 700 950 50  0001 C CNN
F 3 "" H 700 950 50  0001 C CNN
	1    700  950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 5CA640A5
P 700 850
F 0 "C13" H 792 896 50  0000 L CNN
F 1 "4.7µF" H 792 805 50  0000 L CNN
F 2 "" H 700 850 50  0001 C CNN
F 3 "~" H 700 850 50  0001 C CNN
	1    700  850 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0128
U 1 1 5CA645F8
P 6100 700
F 0 "#PWR0128" H 6100 550 50  0001 C CNN
F 1 "+3V3" H 6115 873 50  0000 C CNN
F 2 "" H 6100 700 50  0001 C CNN
F 3 "" H 6100 700 50  0001 C CNN
	1    6100 700 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5CA64B09
P 1100 850
F 0 "C14" H 1192 896 50  0000 L CNN
F 1 "100nF" H 1192 805 50  0000 L CNN
F 2 "" H 1100 850 50  0001 C CNN
F 3 "~" H 1100 850 50  0001 C CNN
	1    1100 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 5CA64B9D
P 1500 850
F 0 "C15" H 1592 896 50  0000 L CNN
F 1 "100nF" H 1592 805 50  0000 L CNN
F 2 "" H 1500 850 50  0001 C CNN
F 3 "~" H 1500 850 50  0001 C CNN
	1    1500 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5CA64BC9
P 1900 850
F 0 "C16" H 1992 896 50  0000 L CNN
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
L power:+3V3 #PWR0129
U 1 1 5CA65E4B
P 5300 2900
F 0 "#PWR0129" H 5300 2750 50  0001 C CNN
F 1 "+3V3" H 5315 3073 50  0000 C CNN
F 2 "" H 5300 2900 50  0001 C CNN
F 3 "" H 5300 2900 50  0001 C CNN
	1    5300 2900
	1    0    0    -1  
$EndComp
Connection ~ 5300 2900
$Comp
L symbols:+3V3A #PWR0130
U 1 1 5CA66E83
P 700 1350
F 0 "#PWR0130" H 900 1375 50  0001 C CNN
F 1 "+3V3A" H 682 1523 50  0000 C CNN
F 2 "" H 700 1350 50  0001 C CNN
F 3 "" H 700 1350 50  0001 C CNN
	1    700  1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 5CA66EC5
P 700 1450
F 0 "C18" H 792 1496 50  0000 L CNN
F 1 "1µF" H 792 1405 50  0000 L CNN
F 2 "" H 700 1450 50  0001 C CNN
F 3 "~" H 700 1450 50  0001 C CNN
	1    700  1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C20
U 1 1 5CA6715D
P 1500 1450
F 0 "C20" H 1592 1496 50  0000 L CNN
F 1 "10nF" H 1592 1405 50  0000 L CNN
F 2 "" H 1500 1450 50  0001 C CNN
F 3 "~" H 1500 1450 50  0001 C CNN
	1    1500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1350 1100 1350
Wire Wire Line
	700  1550 1100 1550
$Comp
L Device:C_Small C19
U 1 1 5CA67559
P 1100 1450
F 0 "C19" H 1192 1496 50  0000 L CNN
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
L power:GNDREF #PWR0131
U 1 1 5CA67DD7
P 700 1550
F 0 "#PWR0131" H 700 1300 50  0001 C CNN
F 1 "GNDREF" H 705 1377 50  0001 C CNN
F 2 "" H 700 1550 50  0001 C CNN
F 3 "" H 700 1550 50  0001 C CNN
	1    700  1550
	1    0    0    -1  
$EndComp
Connection ~ 700  1550
$Comp
L Device:C_Small C17
U 1 1 5CA685B9
P 2300 850
F 0 "C17" H 2392 896 50  0000 L CNN
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
L symbols:+3V3A #PWR0132
U 1 1 5CA69707
P 5700 2900
F 0 "#PWR0132" H 5900 2925 50  0001 C CNN
F 1 "+3V3A" H 5682 3073 50  0000 C CNN
F 2 "" H 5700 2900 50  0001 C CNN
F 3 "" H 5700 2900 50  0001 C CNN
	1    5700 2900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x04 SW1
U 1 1 5CAA887C
P 1200 2350
F 0 "SW1" H 1200 2817 50  0000 C CNN
F 1 "SW_DIP_x04" H 1200 2726 50  0000 C CNN
F 2 "" H 1200 2350 50  0001 C CNN
F 3 "" H 1200 2350 50  0001 C CNN
	1    1200 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  2150 900  2150
Text Label 4700 3300 2    50   ~ 0
BOOT0
Text Label 1500 2150 0    50   ~ 0
BOOT0
$Comp
L Device:R R23
U 1 1 5CAA99AF
P 1850 2000
F 0 "R23" H 1920 2046 50  0000 L CNN
F 1 "50k" H 1920 1955 50  0000 L CNN
F 2 "" V 1780 2000 50  0001 C CNN
F 3 "~" H 1850 2000 50  0001 C CNN
	1    1850 2000
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
Wire Wire Line
	1850 2150 1500 2150
Connection ~ 5700 2900
$Comp
L symbols:+3V3A #PWR0135
U 1 1 5CE50374
P 4250 3500
F 0 "#PWR0135" H 4250 3750 50  0001 C CNN
F 1 "+3V3A" H 4250 3673 50  0000 C CNN
F 2 "" H 4250 3530 50  0001 C CNN
F 3 "" H 4250 3530 50  0001 C CNN
	1    4250 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3500 4700 3500
NoConn ~ 1500 2250
NoConn ~ 1500 2350
NoConn ~ 1500 2450
NoConn ~ 900  2450
NoConn ~ 900  2350
NoConn ~ 900  2250
NoConn ~ 4700 5600
NoConn ~ 4700 5700
NoConn ~ 4700 5800
NoConn ~ 6100 5800
NoConn ~ 6100 4500
NoConn ~ 6100 4400
NoConn ~ 6100 4300
NoConn ~ 6100 4000
NoConn ~ 6100 3900
NoConn ~ 4700 3100
NoConn ~ 4700 4600
NoConn ~ 4700 4700
NoConn ~ 4700 4800
NoConn ~ 4700 4900
NoConn ~ 5650 800 
$Comp
L power:+3V3 #PWR?
U 1 1 5CE85B78
P 1850 1850
F 0 "#PWR?" H 1850 1700 50  0001 C CNN
F 1 "+3V3" H 1865 2023 50  0000 C CNN
F 2 "" H 1850 1850 50  0001 C CNN
F 3 "" H 1850 1850 50  0001 C CNN
	1    1850 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CE86A36
P 750 2150
F 0 "#PWR?" H 750 1900 50  0001 C CNN
F 1 "GNDREF" H 755 1977 50  0001 C CNN
F 2 "" H 750 2150 50  0001 C CNN
F 3 "" H 750 2150 50  0001 C CNN
	1    750  2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5CE8EC33
P 9350 700
F 0 "#PWR?" H 9350 550 50  0001 C CNN
F 1 "+5V" H 9365 873 50  0000 C CNN
F 2 "" H 9350 700 50  0001 C CNN
F 3 "" H 9350 700 50  0001 C CNN
	1    9350 700 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CE94D02
P 9350 850
F 0 "R?" H 9420 896 50  0000 L CNN
F 1 "50k" H 9420 805 50  0000 L CNN
F 2 "" V 9280 850 50  0001 C CNN
F 3 "~" H 9350 850 50  0001 C CNN
	1    9350 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CE96E4F
P 9650 850
F 0 "R?" H 9720 896 50  0000 L CNN
F 1 "50k" H 9720 805 50  0000 L CNN
F 2 "" V 9580 850 50  0001 C CNN
F 3 "~" H 9650 850 50  0001 C CNN
	1    9650 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CE9749F
P 9950 850
F 0 "R?" H 10020 896 50  0000 L CNN
F 1 "50k" H 10020 805 50  0000 L CNN
F 2 "" V 9880 850 50  0001 C CNN
F 3 "~" H 9950 850 50  0001 C CNN
	1    9950 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CE97B22
P 9050 850
F 0 "R?" H 9120 896 50  0000 L CNN
F 1 "50k" H 9120 805 50  0000 L CNN
F 2 "" V 8980 850 50  0001 C CNN
F 3 "~" H 9050 850 50  0001 C CNN
	1    9050 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CE9823E
P 8750 850
F 0 "R?" H 8820 896 50  0000 L CNN
F 1 "50k" H 8820 805 50  0000 L CNN
F 2 "" V 8680 850 50  0001 C CNN
F 3 "~" H 8750 850 50  0001 C CNN
	1    8750 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CE9886D
P 8450 850
F 0 "R?" H 8520 896 50  0000 L CNN
F 1 "50k" H 8520 805 50  0000 L CNN
F 2 "" V 8380 850 50  0001 C CNN
F 3 "~" H 8450 850 50  0001 C CNN
	1    8450 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CE98F24
P 10250 850
F 0 "R?" H 10320 896 50  0000 L CNN
F 1 "50k" H 10320 805 50  0000 L CNN
F 2 "" V 10180 850 50  0001 C CNN
F 3 "~" H 10250 850 50  0001 C CNN
	1    10250 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CE99599
P 10550 850
F 0 "R?" H 10620 896 50  0000 L CNN
F 1 "50k" H 10620 805 50  0000 L CNN
F 2 "" V 10480 850 50  0001 C CNN
F 3 "~" H 10550 850 50  0001 C CNN
	1    10550 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CE99D4F
P 8150 850
F 0 "R?" H 8220 896 50  0000 L CNN
F 1 "50k" H 8220 805 50  0000 L CNN
F 2 "" V 8080 850 50  0001 C CNN
F 3 "~" H 8150 850 50  0001 C CNN
	1    8150 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CE9A483
P 10850 850
F 0 "R?" H 10920 896 50  0000 L CNN
F 1 "50k" H 10920 805 50  0000 L CNN
F 2 "" V 10780 850 50  0001 C CNN
F 3 "~" H 10850 850 50  0001 C CNN
	1    10850 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CE9AABA
P 7900 850
F 0 "R?" H 7970 896 50  0000 L CNN
F 1 "50k" H 7970 805 50  0000 L CNN
F 2 "" V 7830 850 50  0001 C CNN
F 3 "~" H 7900 850 50  0001 C CNN
	1    7900 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 700  8150 700 
Connection ~ 8150 700 
Wire Wire Line
	8150 700  8450 700 
Connection ~ 8450 700 
Wire Wire Line
	8450 700  8750 700 
Connection ~ 8750 700 
Wire Wire Line
	8750 700  9050 700 
Connection ~ 9050 700 
Wire Wire Line
	9050 700  9350 700 
Connection ~ 9350 700 
Wire Wire Line
	9350 700  9650 700 
Connection ~ 9650 700 
Wire Wire Line
	9650 700  9950 700 
Connection ~ 9950 700 
Wire Wire Line
	9950 700  10250 700 
Connection ~ 10250 700 
Wire Wire Line
	10250 700  10550 700 
Connection ~ 10550 700 
Wire Wire Line
	10550 700  10850 700 
Text Label 7900 1000 3    50   ~ 0
Display_RS
Text Label 8150 1000 3    50   ~ 0
Display_RW
Text Label 8450 1000 3    50   ~ 0
Display_E
Text Label 8750 1000 3    50   ~ 0
Display_DB0
Text Label 9050 1000 3    50   ~ 0
Display_DB1
Text Label 9350 1000 3    50   ~ 0
Display_DB2
Text Label 9650 1000 3    50   ~ 0
Display_DB3
Text Label 9950 1000 3    50   ~ 0
Display_DB4
Text Label 10250 1000 3    50   ~ 0
Display_DB5
Text Label 10550 1000 3    50   ~ 0
Display_DB6
Text Label 10850 1000 3    50   ~ 0
Display_DB7
$Comp
L Connector_Generic:Conn_01x15 J?
U 1 1 5CE4A076
P 8450 5100
F 0 "J?" H 8530 5142 50  0000 L CNN
F 1 "Display" H 8530 5051 50  0000 L CNN
F 2 "" H 8450 5100 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/291/NHD-0212WH-ATMI-JT-35118.pdf" H 8450 5100 50  0001 C CNN
	1    8450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5700 6100 5700
Wire Wire Line
	6100 5600 8250 5600
Wire Wire Line
	8250 5500 6100 5500
Wire Wire Line
	6100 5400 8250 5400
Wire Wire Line
	8250 5300 6100 5300
Wire Wire Line
	6100 5200 8250 5200
Wire Wire Line
	8250 5100 6100 5100
Wire Wire Line
	6100 5000 8250 5000
Wire Wire Line
	8250 4900 6100 4900
Wire Wire Line
	6100 4800 8250 4800
Wire Wire Line
	8250 4700 6100 4700
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5CEC56EF
P 7850 4300
F 0 "RV?" H 7780 4254 50  0000 R CNN
F 1 "10k" H 7780 4345 50  0000 R CNN
F 2 "" H 7850 4300 50  0001 C CNN
F 3 "~" H 7850 4300 50  0001 C CNN
	1    7850 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7500 4600 8250 4600
$Comp
L power:+5V #PWR?
U 1 1 5CED261C
P 7850 4500
F 0 "#PWR?" H 7850 4350 50  0001 C CNN
F 1 "+5V" V 7865 4628 50  0000 L CNN
F 2 "" H 7850 4500 50  0001 C CNN
F 3 "" H 7850 4500 50  0001 C CNN
	1    7850 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CED5ADA
P 8250 4150
F 0 "#PWR?" H 8250 3900 50  0001 C CNN
F 1 "GNDREF" H 8255 3977 50  0001 C CNN
F 2 "" H 8250 4150 50  0001 C CNN
F 3 "" H 8250 4150 50  0001 C CNN
	1    8250 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7850 4500 8250 4500
Wire Wire Line
	8250 4400 8250 4150
Wire Wire Line
	7850 4450 7850 4500
Connection ~ 7850 4500
Wire Wire Line
	7500 4600 7500 4300
Wire Wire Line
	7500 4300 7700 4300
Wire Wire Line
	7850 4150 8250 4150
Connection ~ 8250 4150
$Comp
L Device:R R?
U 1 1 5CEF91FC
P 8100 5800
F 0 "R?" V 7900 5800 50  0000 C CNN
F 1 "220R" V 8000 5800 50  0000 C CNN
F 2 "" V 8030 5800 50  0001 C CNN
F 3 "~" H 8100 5800 50  0001 C CNN
	1    8100 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5CEFB24B
P 7950 5800
F 0 "#PWR?" H 7950 5650 50  0001 C CNN
F 1 "+3V3" V 7965 5928 50  0000 L CNN
F 2 "" H 7950 5800 50  0001 C CNN
F 3 "" H 7950 5800 50  0001 C CNN
	1    7950 5800
	0    -1   -1   0   
$EndComp
Text Label 6950 4700 0    50   ~ 0
Display_RS
Text Label 6950 4800 0    50   ~ 0
Display_RW
Text Label 6950 4900 0    50   ~ 0
Display_E
Text Label 6950 5000 0    50   ~ 0
Display_DB0
Text Label 6950 5100 0    50   ~ 0
Display_DB1
Text Label 6950 5200 0    50   ~ 0
Display_DB2
Text Label 6950 5300 0    50   ~ 0
Display_DB3
Text Label 6950 5400 0    50   ~ 0
Display_DB4
Text Label 6950 5500 0    50   ~ 0
Display_DB5
Text Label 6950 5600 0    50   ~ 0
Display_DB6
Text Label 6950 5700 0    50   ~ 0
Display_DB7
$EndSCHEMATC
