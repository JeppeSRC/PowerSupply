EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L symbols:FQA36P15 U?
U 1 1 5CA4A671
P 5350 1900
AR Path="/5CA4A671" Ref="U?"  Part="1" 
AR Path="/5CA4A3FE/5CA4A671" Ref="U5"  Part="1" 
F 0 "Q" V 5593 1900 50  0000 C CNN
F 1 "FQA36P15" V 5502 1900 50  0000 C CNN
F 2 "" H 5300 1900 50  0001 C CNN
F 3 "" H 5300 1900 50  0001 C CNN
	1    5350 1900
	0    1    -1   0   
$EndComp
Text Label 5350 2150 0    50   ~ 0
VReg
$Comp
L symbols:FQA36P15 U?
U 1 1 5CA4A679
P 5350 2500
AR Path="/5CA4A679" Ref="U?"  Part="1" 
AR Path="/5CA4A3FE/5CA4A679" Ref="U6"  Part="1" 
F 0 "Q" V 5593 2500 50  0000 C CNN
F 1 "FQA36P15" V 5502 2500 50  0000 C CNN
F 2 "" H 5300 2500 50  0001 C CNN
F 3 "" H 5300 2500 50  0001 C CNN
	1    5350 2500
	0    1    -1   0   
$EndComp
Text Label 5350 2750 0    50   ~ 0
VReg
$Comp
L symbols:FQA36P15 U?
U 1 1 5CA4A681
P 5350 3100
AR Path="/5CA4A681" Ref="U?"  Part="1" 
AR Path="/5CA4A3FE/5CA4A681" Ref="U7"  Part="1" 
F 0 "Q" V 5593 3100 50  0000 C CNN
F 1 "FQA36P15" V 5502 3100 50  0000 C CNN
F 2 "" H 5300 3100 50  0001 C CNN
F 3 "" H 5300 3100 50  0001 C CNN
	1    5350 3100
	0    1    -1   0   
$EndComp
Text Label 5350 3350 0    50   ~ 0
VReg
$Comp
L symbols:FQA36P15 U?
U 1 1 5CA4A689
P 5350 3700
AR Path="/5CA4A689" Ref="U?"  Part="1" 
AR Path="/5CA4A3FE/5CA4A689" Ref="U8"  Part="1" 
F 0 "Q" V 5593 3700 50  0000 C CNN
F 1 "FQA36P15" V 5502 3700 50  0000 C CNN
F 2 "" H 5300 3700 50  0001 C CNN
F 3 "" H 5300 3700 50  0001 C CNN
	1    5350 3700
	0    1    -1   0   
$EndComp
Text Label 5350 3950 0    50   ~ 0
VReg
$Comp
L symbols:FQA36P15 U?
U 1 1 5CA4A691
P 5350 4300
AR Path="/5CA4A691" Ref="U?"  Part="1" 
AR Path="/5CA4A3FE/5CA4A691" Ref="U9"  Part="1" 
F 0 "Q" V 5593 4300 50  0000 C CNN
F 1 "FQA36P15" V 5502 4300 50  0000 C CNN
F 2 "" H 5300 4300 50  0001 C CNN
F 3 "" H 5300 4300 50  0001 C CNN
	1    5350 4300
	0    1    -1   0   
$EndComp
Text Label 5350 4550 0    50   ~ 0
VReg
Wire Wire Line
	5050 1900 5150 1900
Wire Wire Line
	5150 2500 5050 2500
Connection ~ 5050 2500
Wire Wire Line
	5050 2500 5050 1900
Wire Wire Line
	5050 3100 5150 3100
Wire Wire Line
	5050 3100 5050 3700
Wire Wire Line
	5050 3700 5150 3700
Connection ~ 5050 3100
Wire Wire Line
	5050 3700 5050 4300
Wire Wire Line
	5050 4300 5150 4300
Connection ~ 5050 3700
Wire Wire Line
	5550 1900 5700 1900
Wire Wire Line
	5700 1900 5700 2500
Wire Wire Line
	5700 4300 5550 4300
Wire Wire Line
	5550 3700 5700 3700
Connection ~ 5700 3700
Wire Wire Line
	5700 3700 5700 4300
Wire Wire Line
	5550 3100 5700 3100
Connection ~ 5700 3100
Wire Wire Line
	5700 3100 5700 3700
Wire Wire Line
	5550 2500 5700 2500
Connection ~ 5700 2500
Wire Wire Line
	5700 2500 5700 3100
Wire Wire Line
	5050 2500 5050 3100
Text HLabel 4550 3100 0    50   Input ~ 0
Vin
Wire Wire Line
	4550 3100 4700 3100
Wire Wire Line
	5700 3100 6150 3100
Text HLabel 6150 3100 2    50   Output ~ 0
Vout
Text HLabel 5350 4550 3    50   Input ~ 0
VReg_set
$Comp
L Device:C_Small C10
U 1 1 5CA4B52D
P 4700 3200
F 0 "C" H 4792 3246 50  0000 L CNN
F 1 "10µF" H 4792 3155 50  0000 L CNN
F 2 "" H 4700 3200 50  0001 C CNN
F 3 "~" H 4700 3200 50  0001 C CNN
	1    4700 3200
	1    0    0    -1  
$EndComp
Connection ~ 4700 3100
Wire Wire Line
	4700 3100 5050 3100
$Comp
L power:GNDREF #PWR014
U 1 1 5CA4B6B6
P 4700 3300
F 0 "#PWR" H 4700 3050 50  0001 C CNN
F 1 "GNDREF" H 4705 3127 50  0001 C CNN
F 2 "" H 4700 3300 50  0001 C CNN
F 3 "" H 4700 3300 50  0001 C CNN
	1    4700 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5CA4BA1E
P 5900 3200
F 0 "C" H 5992 3246 50  0000 L CNN
F 1 "10µF" H 5992 3155 50  0000 L CNN
F 2 "" H 5900 3200 50  0001 C CNN
F 3 "~" H 5900 3200 50  0001 C CNN
	1    5900 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR015
U 1 1 5CA4BA25
P 5900 3300
F 0 "#PWR" H 5900 3050 50  0001 C CNN
F 1 "GNDREF" H 5905 3127 50  0001 C CNN
F 2 "" H 5900 3300 50  0001 C CNN
F 3 "" H 5900 3300 50  0001 C CNN
	1    5900 3300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
