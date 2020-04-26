EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6275 3375 6425 3375
Wire Wire Line
	5775 3375 5875 3375
$Comp
L symbols:FQP17P10 U?
U 1 1 5EE616A3
P 6075 3375
AR Path="/5EE616A3" Ref="U?"  Part="1" 
AR Path="/5CA4A3FE/5EE616A3" Ref="U?"  Part="1" 
AR Path="/5EE5D0E4/5EE616A3" Ref="U?"  Part="1" 
AR Path="/5EF07313/5EE616A3" Ref="U?"  Part="1" 
AR Path="/5EF37B1F/5EE616A3" Ref="U?"  Part="1" 
AR Path="/5EF4F686/5EE616A3" Ref="U?"  Part="1" 
F 0 "U?" V 6318 3375 50  0000 C CNN
F 1 "FQP17P10" V 6227 3375 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6025 3375 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/308/FQP17P10-1296917.pdf" H 6025 3375 50  0001 C CNN
F 4 "FQP17P10" H 6075 3375 50  0001 C CNN "MPN"
	1    6075 3375
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EE632D6
P 6075 3775
AR Path="/5CA4A3FE/5EE632D6" Ref="R?"  Part="1" 
AR Path="/5EE632D6" Ref="R?"  Part="1" 
AR Path="/5EE5D0E4/5EE632D6" Ref="R?"  Part="1" 
AR Path="/5EF07313/5EE632D6" Ref="R?"  Part="1" 
AR Path="/5EF37B1F/5EE632D6" Ref="R?"  Part="1" 
AR Path="/5EF4F686/5EE632D6" Ref="R?"  Part="1" 
F 0 "R?" H 6145 3821 50  0000 L CNN
F 1 "100R" H 6145 3730 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6005 3775 50  0001 C CNN
F 3 "~" H 6075 3775 50  0001 C CNN
F 4 "RT0805FRE07100RL" H 6075 3775 50  0001 C CNN "MPN"
	1    6075 3775
	-1   0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS?
U 1 1 5EE65F01
P 6050 2950
AR Path="/5CA4A3FE/5EE65F01" Ref="HS?"  Part="1" 
AR Path="/5EE65F01" Ref="HS?"  Part="1" 
AR Path="/5EE5D0E4/5EE65F01" Ref="HS?"  Part="1" 
AR Path="/5EF07313/5EE65F01" Ref="HS?"  Part="1" 
AR Path="/5EF37B1F/5EE65F01" Ref="HS?"  Part="1" 
AR Path="/5EF4F686/5EE65F01" Ref="HS?"  Part="1" 
F 0 "HS?" H 6191 3071 50  0000 L CNN
F 1 "RA-T2X-xxE" H 6191 2980 50  0000 L CNN
F 2 "footprints:RA-T2X-xxE" H 6062 2950 50  0001 C CNN
F 3 "~" H 6062 2950 50  0001 C CNN
F 4 "RA-T2X-25E" H 6050 2950 50  0001 C CNN "MPN"
	1    6050 2950
	1    0    0    -1  
$EndComp
Text HLabel 6075 3925 3    50   UnSpc ~ 0
Gate
Text HLabel 6425 3375 2    50   UnSpc ~ 0
Source
Text HLabel 5775 3375 0    50   UnSpc ~ 0
Drain
$EndSCHEMATC
