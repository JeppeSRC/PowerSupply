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
L MCU_ST_STM32F3:STM32F373C8Tx U11
U 1 1 5CA4B77E
P 5400 4400
F 0 "U11" H 5400 4550 50  0000 C CNN
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
L power:GNDREF #PWR028
U 1 1 5CA4BBDE
P 6200 1800
F 0 "#PWR028" H 6200 1550 50  0001 C CNN
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
L power:GNDREF #PWR038
U 1 1 5CA4D23A
P 5500 6000
F 0 "#PWR038" H 5500 5750 50  0001 C CNN
F 1 "GNDREF" H 5505 5827 50  0001 C CNN
F 2 "" H 5500 6000 50  0001 C CNN
F 3 "" H 5500 6000 50  0001 C CNN
	1    5500 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1400 6950 1400
$Comp
L Device:R R22
U 1 1 5CA4D431
P 6950 1250
F 0 "R22" H 7020 1296 50  0000 L CNN
F 1 "1k" H 7020 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6880 1250 50  0001 C CNN
F 3 "~" H 6950 1250 50  0001 C CNN
	1    6950 1250
	1    0    0    -1  
$EndComp
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
L power:GNDREF #PWR039
U 1 1 5CA53D08
P 950 7450
F 0 "#PWR039" H 950 7200 50  0001 C CNN
F 1 "GNDREF" H 955 7322 50  0001 R CNN
F 2 "" H 950 7450 50  0001 C CNN
F 3 "" H 950 7450 50  0001 C CNN
	1    950  7450
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR040
U 1 1 5CA5463C
P 2900 7450
F 0 "#PWR040" H 2900 7200 50  0001 C CNN
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
L power:GNDREF #PWR041
U 1 1 5CA562A1
P 1550 7550
F 0 "#PWR041" H 1550 7300 50  0001 C CNN
F 1 "GNDREF" H 1555 7377 50  0001 C CNN
F 2 "" H 1550 7550 50  0001 C CNN
F 3 "" H 1550 7550 50  0001 C CNN
	1    1550 7550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR042
U 1 1 5CA562DC
P 3500 7550
F 0 "#PWR042" H 3500 7300 50  0001 C CNN
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
L Switch:SW_DIP_x04 SW1
U 1 1 5CAA887C
P 4900 7450
F 0 "SW1" H 4900 7917 50  0000 C CNN
F 1 "SW_DIP_x04" H 4900 7826 50  0000 C CNN
F 2 "" H 4900 7450 50  0001 C CNN
F 3 "" H 4900 7450 50  0001 C CNN
	1    4900 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 7250 4600 7250
Text Label 4700 3300 2    50   ~ 0
BOOT0
Text Label 5200 7250 0    50   ~ 0
BOOT0
$Comp
L Device:R R34
U 1 1 5CAA99AF
P 5550 7100
F 0 "R34" H 5620 7146 50  0000 L CNN
F 1 "50k" H 5620 7055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5480 7100 50  0001 C CNN
F 3 "~" H 5550 7100 50  0001 C CNN
	1    5550 7100
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
	5550 7250 5200 7250
NoConn ~ 5200 7350
NoConn ~ 5200 7450
NoConn ~ 5200 7550
NoConn ~ 4600 7550
NoConn ~ 4600 7450
NoConn ~ 4600 7350
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
NoConn ~ 6500 1200
$Comp
L power:+3V3 #PWR030
U 1 1 5CE85B78
P 5550 6950
F 0 "#PWR030" H 5550 6800 50  0001 C CNN
F 1 "+3V3" H 5565 7123 50  0000 C CNN
F 2 "" H 5550 6950 50  0001 C CNN
F 3 "" H 5550 6950 50  0001 C CNN
	1    5550 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR031
U 1 1 5CE86A36
P 4450 7250
F 0 "#PWR031" H 4450 7000 50  0001 C CNN
F 1 "GNDREF" H 4455 7077 50  0001 C CNN
F 2 "" H 4450 7250 50  0001 C CNN
F 3 "" H 4450 7250 50  0001 C CNN
	1    4450 7250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 5CE8EC33
P 9350 700
F 0 "#PWR024" H 9350 550 50  0001 C CNN
F 1 "+5V" H 9365 873 50  0000 C CNN
F 2 "" H 9350 700 50  0001 C CNN
F 3 "" H 9350 700 50  0001 C CNN
	1    9350 700 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 5CE94D02
P 9350 850
F 0 "R28" H 9420 896 50  0000 L CNN
F 1 "50k" H 9420 805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9280 850 50  0001 C CNN
F 3 "~" H 9350 850 50  0001 C CNN
	1    9350 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R29
U 1 1 5CE96E4F
P 9650 850
F 0 "R29" H 9720 896 50  0000 L CNN
F 1 "50k" H 9720 805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9580 850 50  0001 C CNN
F 3 "~" H 9650 850 50  0001 C CNN
	1    9650 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R30
U 1 1 5CE9749F
P 9950 850
F 0 "R30" H 10020 896 50  0000 L CNN
F 1 "50k" H 10020 805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9880 850 50  0001 C CNN
F 3 "~" H 9950 850 50  0001 C CNN
	1    9950 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R27
U 1 1 5CE97B22
P 9050 850
F 0 "R27" H 9120 896 50  0000 L CNN
F 1 "50k" H 9120 805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8980 850 50  0001 C CNN
F 3 "~" H 9050 850 50  0001 C CNN
	1    9050 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 5CE9823E
P 8750 850
F 0 "R26" H 8820 896 50  0000 L CNN
F 1 "50k" H 8820 805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8680 850 50  0001 C CNN
F 3 "~" H 8750 850 50  0001 C CNN
	1    8750 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 5CE9886D
P 8450 850
F 0 "R25" H 8520 896 50  0000 L CNN
F 1 "50k" H 8520 805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8380 850 50  0001 C CNN
F 3 "~" H 8450 850 50  0001 C CNN
	1    8450 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 5CE98F24
P 10250 850
F 0 "R31" H 10320 896 50  0000 L CNN
F 1 "50k" H 10320 805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10180 850 50  0001 C CNN
F 3 "~" H 10250 850 50  0001 C CNN
	1    10250 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 5CE99599
P 10550 850
F 0 "R32" H 10620 896 50  0000 L CNN
F 1 "50k" H 10620 805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 850 50  0001 C CNN
F 3 "~" H 10550 850 50  0001 C CNN
	1    10550 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 5CE99D4F
P 8150 850
F 0 "R24" H 8220 896 50  0000 L CNN
F 1 "50k" H 8220 805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8080 850 50  0001 C CNN
F 3 "~" H 8150 850 50  0001 C CNN
	1    8150 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R33
U 1 1 5CE9A483
P 10850 850
F 0 "R33" H 10920 896 50  0000 L CNN
F 1 "50k" H 10920 805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10780 850 50  0001 C CNN
F 3 "~" H 10850 850 50  0001 C CNN
	1    10850 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 5CE9AABA
P 7900 850
F 0 "R23" H 7970 896 50  0000 L CNN
F 1 "50k" H 7970 805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7830 850 50  0001 C CNN
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
L Connector_Generic:Conn_01x15 J2
U 1 1 5CE4A076
P 8450 5100
F 0 "J2" H 8530 5142 50  0000 L CNN
F 1 "Display" H 8530 5051 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x15_P1.27mm_Vertical" H 8450 5100 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/291/NHD-0212WH-ATMI-JT-35118.pdf" H 8450 5100 50  0001 C CNN
F 4 "NHD-0212WH-ATMI-JT" H 8450 5100 50  0001 C CNN "MPN"
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
L Device:R_POT_TRIM RV1
U 1 1 5CEC56EF
P 7850 4300
F 0 "RV1" H 7780 4254 50  0000 R CNN
F 1 "10k" H 7780 4345 50  0000 R CNN
F 2 "footprints:Potentiometer_Bourns_3386G_Vertical" H 7850 4300 50  0001 C CNN
F 3 "~" H 7850 4300 50  0001 C CNN
	1    7850 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7500 4600 8250 4600
$Comp
L power:+5V #PWR036
U 1 1 5CED261C
P 7850 4500
F 0 "#PWR036" H 7850 4350 50  0001 C CNN
F 1 "+5V" V 7865 4628 50  0000 L CNN
F 2 "" H 7850 4500 50  0001 C CNN
F 3 "" H 7850 4500 50  0001 C CNN
	1    7850 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR035
U 1 1 5CED5ADA
P 8250 4150
F 0 "#PWR035" H 8250 3900 50  0001 C CNN
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
L Device:R R35
U 1 1 5CEF91FC
P 8100 5800
F 0 "R35" V 7900 5800 50  0000 C CNN
F 1 "220R" V 8000 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8030 5800 50  0001 C CNN
F 3 "~" H 8100 5800 50  0001 C CNN
	1    8100 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR037
U 1 1 5CEFB24B
P 7950 5800
F 0 "#PWR037" H 7950 5650 50  0001 C CNN
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
Wire Wire Line
	5500 6000 5600 6000
Connection ~ 5500 6000
Wire Wire Line
	5500 6000 5400 6000
$Comp
L Device:R R?
U 1 1 5CF6106F
P 6800 950
F 0 "R?" H 6870 996 50  0000 L CNN
F 1 "1k" H 6870 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6730 950 50  0001 C CNN
F 3 "~" H 6800 950 50  0001 C CNN
	1    6800 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CF62A7F
P 7100 950
F 0 "R?" H 7170 996 50  0000 L CNN
F 1 "1k" H 7170 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 950 50  0001 C CNN
F 3 "~" H 7100 950 50  0001 C CNN
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
Wire Wire Line
	5400 2900 5300 2900
$Comp
L symbols:+3V3A #PWR?
U 1 1 5CF6F3CF
P 850 750
F 0 "#PWR?" H 1050 775 50  0001 C CNN
F 1 "+3V3A" H 832 923 50  0000 C CNN
F 2 "" H 850 750 50  0001 C CNN
F 3 "" H 850 750 50  0001 C CNN
	1    850  750 
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CF6F3D5
P 1650 850
F 0 "C?" H 1742 896 50  0000 L CNN
F 1 "1µF" H 1742 805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 850 50  0001 C CNN
F 3 "~" H 1650 850 50  0001 C CNN
	1    1650 850 
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CF6F3DC
P 1250 850
F 0 "C?" H 1342 896 50  0000 L CNN
F 1 "100n" H 1342 805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1250 850 50  0001 C CNN
F 3 "~" H 1250 850 50  0001 C CNN
	1    1250 850 
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CF6F3E4
P 850 850
F 0 "C?" H 942 896 50  0000 L CNN
F 1 "10nF" H 942 805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 850 50  0001 C CNN
F 3 "~" H 850 850 50  0001 C CNN
	1    850  850 
	1    0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CF6F3EF
P 850 950
F 0 "#PWR?" H 850 700 50  0001 C CNN
F 1 "GNDREF" H 855 777 50  0001 C CNN
F 2 "" H 850 950 50  0001 C CNN
F 3 "" H 850 950 50  0001 C CNN
	1    850  950 
	-1   0    0    -1  
$EndComp
$Comp
L symbols:+3V3A #PWR?
U 1 1 5CFE4684
P 850 1300
F 0 "#PWR?" H 1050 1325 50  0001 C CNN
F 1 "+3V3A" H 832 1473 50  0000 C CNN
F 2 "" H 850 1300 50  0001 C CNN
F 3 "" H 850 1300 50  0001 C CNN
	1    850  1300
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CFE468A
P 1650 1400
F 0 "C?" H 1742 1446 50  0000 L CNN
F 1 "1µF" H 1742 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 1400 50  0001 C CNN
F 3 "~" H 1650 1400 50  0001 C CNN
	1    1650 1400
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CFE4690
P 1250 1400
F 0 "C?" H 1342 1446 50  0000 L CNN
F 1 "100n" H 1342 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1250 1400 50  0001 C CNN
F 3 "~" H 1250 1400 50  0001 C CNN
	1    1250 1400
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CFE4698
P 850 1400
F 0 "C?" H 942 1446 50  0000 L CNN
F 1 "10nF" H 942 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 1400 50  0001 C CNN
F 3 "~" H 850 1400 50  0001 C CNN
	1    850  1400
	1    0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CFE46A3
P 850 1500
F 0 "#PWR?" H 850 1250 50  0001 C CNN
F 1 "GNDREF" H 855 1327 50  0001 C CNN
F 2 "" H 850 1500 50  0001 C CNN
F 3 "" H 850 1500 50  0001 C CNN
	1    850  1500
	-1   0    0    -1  
$EndComp
$Comp
L symbols:+3V3A #PWR?
U 1 1 5CFE812D
P 850 1850
F 0 "#PWR?" H 1050 1875 50  0001 C CNN
F 1 "+3V3A" H 832 2023 50  0000 C CNN
F 2 "" H 850 1850 50  0001 C CNN
F 3 "" H 850 1850 50  0001 C CNN
	1    850  1850
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CFE8133
P 1650 1950
F 0 "C?" H 1742 1996 50  0000 L CNN
F 1 "1µF" H 1742 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 1950 50  0001 C CNN
F 3 "~" H 1650 1950 50  0001 C CNN
	1    1650 1950
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CFE8139
P 1250 1950
F 0 "C?" H 1342 1996 50  0000 L CNN
F 1 "100n" H 1342 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1250 1950 50  0001 C CNN
F 3 "~" H 1250 1950 50  0001 C CNN
	1    1250 1950
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CFE8141
P 850 1950
F 0 "C?" H 942 1996 50  0000 L CNN
F 1 "10nF" H 942 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 1950 50  0001 C CNN
F 3 "~" H 850 1950 50  0001 C CNN
	1    850  1950
	1    0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CFE814C
P 850 2050
F 0 "#PWR?" H 850 1800 50  0001 C CNN
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
Text Label 5400 2900 1    50   ~ 0
VDD2
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
L power:+3V3 #PWR025
U 1 1 5CA64031
P 850 3050
F 0 "#PWR025" H 850 2900 50  0001 C CNN
F 1 "+3V3" H 865 3223 50  0000 C CNN
F 2 "" H 850 3050 50  0001 C CNN
F 3 "" H 850 3050 50  0001 C CNN
	1    850  3050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR026
U 1 1 5CA6406B
P 850 3250
F 0 "#PWR026" H 850 3000 50  0001 C CNN
F 1 "GNDREF" H 855 3077 50  0001 C CNN
F 2 "" H 850 3250 50  0001 C CNN
F 3 "" H 850 3250 50  0001 C CNN
	1    850  3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5CA640A5
P 850 3150
F 0 "C16" H 942 3196 50  0000 L CNN
F 1 "4.7µF" H 942 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 3150 50  0001 C CNN
F 3 "~" H 850 3150 50  0001 C CNN
	1    850  3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5CA64B09
P 1250 3150
F 0 "C17" H 1342 3196 50  0000 L CNN
F 1 "100nF" H 1342 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1250 3150 50  0001 C CNN
F 3 "~" H 1250 3150 50  0001 C CNN
	1    1250 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 5CA64B9D
P 1650 3150
F 0 "C18" H 1742 3196 50  0000 L CNN
F 1 "100nF" H 1742 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 3150 50  0001 C CNN
F 3 "~" H 1650 3150 50  0001 C CNN
	1    1650 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C19
U 1 1 5CA64BC9
P 2050 3150
F 0 "C19" H 2142 3196 50  0000 L CNN
F 1 "100nF" H 2142 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2050 3150 50  0001 C CNN
F 3 "~" H 2050 3150 50  0001 C CNN
	1    2050 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  3050 1250 3050
Connection ~ 850  3050
Connection ~ 1250 3050
Wire Wire Line
	1250 3050 1650 3050
Connection ~ 1650 3050
Wire Wire Line
	1650 3050 2050 3050
Wire Wire Line
	850  3250 1250 3250
Connection ~ 850  3250
Connection ~ 1250 3250
Wire Wire Line
	1250 3250 1650 3250
Connection ~ 1650 3250
Wire Wire Line
	1650 3250 2050 3250
$Comp
L Device:C_Small C20
U 1 1 5CA685B9
P 2450 3150
F 0 "C20" H 2542 3196 50  0000 L CNN
F 1 "10nF" H 2542 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2450 3150 50  0001 C CNN
F 3 "~" H 2450 3150 50  0001 C CNN
	1    2450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3050 2450 3050
Connection ~ 2050 3050
Wire Wire Line
	2450 3250 2050 3250
Connection ~ 2050 3250
$Comp
L power:+3V3 #PWR?
U 1 1 5D073ED8
P 850 2450
F 0 "#PWR?" H 850 2300 50  0001 C CNN
F 1 "+3V3" H 865 2623 50  0000 C CNN
F 2 "" H 850 2450 50  0001 C CNN
F 3 "" H 850 2450 50  0001 C CNN
	1    850  2450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5D073EDE
P 850 2650
F 0 "#PWR?" H 850 2400 50  0001 C CNN
F 1 "GNDREF" H 855 2477 50  0001 C CNN
F 2 "" H 850 2650 50  0001 C CNN
F 3 "" H 850 2650 50  0001 C CNN
	1    850  2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D073EE4
P 850 2550
F 0 "C?" H 942 2596 50  0000 L CNN
F 1 "4.7µF" H 942 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 2550 50  0001 C CNN
F 3 "~" H 850 2550 50  0001 C CNN
	1    850  2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D073EEA
P 1250 2550
F 0 "C?" H 1342 2596 50  0000 L CNN
F 1 "100nF" H 1342 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1250 2550 50  0001 C CNN
F 3 "~" H 1250 2550 50  0001 C CNN
	1    1250 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D073EF0
P 1650 2550
F 0 "C?" H 1742 2596 50  0000 L CNN
F 1 "100nF" H 1742 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 2550 50  0001 C CNN
F 3 "~" H 1650 2550 50  0001 C CNN
	1    1650 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D073EF6
P 2050 2550
F 0 "C?" H 2142 2596 50  0000 L CNN
F 1 "100nF" H 2142 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2050 2550 50  0001 C CNN
F 3 "~" H 2050 2550 50  0001 C CNN
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
L Device:C_Small C?
U 1 1 5D073F08
P 2450 2550
F 0 "C?" H 2542 2596 50  0000 L CNN
F 1 "10nF" H 2542 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2450 2550 50  0001 C CNN
F 3 "~" H 2450 2550 50  0001 C CNN
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
Wire Wire Line
	2450 3050 2750 3050
Connection ~ 2450 3050
Text Label 2550 2450 0    50   ~ 0
VDD1
Text Label 2550 3050 0    50   ~ 0
VDD2
$EndSCHEMATC
