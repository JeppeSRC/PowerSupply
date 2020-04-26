EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "MCU Connections"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_ST_STM32F3:STM32F373C8Tx U?
U 1 1 5F1AFC27
P 6625 2875
AR Path="/5CA214F9/5F1AFC27" Ref="U?"  Part="1" 
AR Path="/5F1AFC27" Ref="U?"  Part="1" 
AR Path="/5F1751CC/5F1AFC27" Ref="U?"  Part="1" 
F 0 "U?" H 6625 3025 50  0000 C CNN
F 1 "STM32F373C8Tx" H 6625 2875 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 6025 1375 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00046749.pdf" H 6625 2875 50  0001 C CNN
F 4 "STM32F373C8T6" H 6625 2875 50  0001 C CNN "MPN"
	1    6625 2875
	1    0    0    -1  
$EndComp
Text Label 7325 2675 0    50   ~ 0
USB_D+
Text Label 7325 2575 0    50   ~ 0
USB_D-
Text Label 7325 1575 0    50   ~ 0
ENC0_A
Text Label 7325 1675 0    50   ~ 0
ENC0_B
Text Label 7325 3775 0    50   ~ 0
ENC1_A
Text Label 7325 3875 0    50   ~ 0
ENC1_B
Text Label 7325 1775 0    50   ~ 0
ENC0_SW
Text Label 7325 1875 0    50   ~ 0
ENC1_SW
Text Label 6825 1375 1    50   ~ 0
VDDA
Text Label 6925 1375 1    50   ~ 0
VDDSD
Text Label 6725 1375 1    50   ~ 0
VDD1
Text Label 5925 1975 2    50   ~ 0
VREFSD
Text Label 5200 1300 0    50   ~ 0
NRST
Wire Wire Line
	6525 1375 6625 1375
Connection ~ 6625 1375
Wire Wire Line
	6625 1375 6725 1375
Text Label 7325 3975 0    50   ~ 0
OUTPUT_ON
Wire Wire Line
	5925 1775 5375 1775
$Comp
L Device:R R?
U 1 1 5F1AFC46
P 5375 1925
AR Path="/5CA214F9/5F1AFC46" Ref="R?"  Part="1" 
AR Path="/5F1AFC46" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F1AFC46" Ref="R?"  Part="1" 
F 0 "R?" H 5445 1971 50  0000 L CNN
F 1 "10k" H 5445 1880 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5305 1925 50  0001 C CNN
F 3 "~" H 5375 1925 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 5375 1925 50  0001 C CNN "MPN"
	1    5375 1925
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5F1AFC53
P 5225 3125
AR Path="/5CA214F9/5F1AFC53" Ref="Y?"  Part="1" 
AR Path="/5F1AFC53" Ref="Y?"  Part="1" 
AR Path="/5F1751CC/5F1AFC53" Ref="Y?"  Part="1" 
F 0 "Y?" V 5175 2875 50  0000 L CNN
F 1 "Crystal" V 5275 2725 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 5225 3125 50  0001 C CNN
F 3 "~" H 5225 3125 50  0001 C CNN
F 4 "LFXTAL033206" H 5225 3125 50  0001 C CNN "MPN"
	1    5225 3125
	0    1    1    0   
$EndComp
Wire Wire Line
	5925 3075 5525 3075
Wire Wire Line
	5525 3075 5525 2975
Wire Wire Line
	5525 2975 5225 2975
Wire Wire Line
	5225 3275 5525 3275
Wire Wire Line
	5525 3275 5525 3175
Wire Wire Line
	5525 3175 5925 3175
$Comp
L Device:C_Small C?
U 1 1 5F1AFC60
P 5225 2875
AR Path="/5CA214F9/5F1AFC60" Ref="C?"  Part="1" 
AR Path="/5F1AFC60" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F1AFC60" Ref="C?"  Part="1" 
F 0 "C?" H 5317 2921 50  0000 L CNN
F 1 "10pF" H 5317 2830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5225 2875 50  0001 C CNN
F 3 "~" H 5225 2875 50  0001 C CNN
F 4 "C0805C100J5GAC" H 5225 2875 50  0001 C CNN "MPN"
	1    5225 2875
	1    0    0    -1  
$EndComp
Connection ~ 5225 2975
$Comp
L Device:C_Small C?
U 1 1 5F1AFC68
P 5225 3375
AR Path="/5CA214F9/5F1AFC68" Ref="C?"  Part="1" 
AR Path="/5F1AFC68" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F1AFC68" Ref="C?"  Part="1" 
F 0 "C?" H 5317 3421 50  0000 L CNN
F 1 "10pF" H 5317 3330 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5225 3375 50  0001 C CNN
F 3 "~" H 5225 3375 50  0001 C CNN
F 4 "C0805C100J5GAC" H 5225 3375 50  0001 C CNN "MPN"
	1    5225 3375
	1    0    0    -1  
$EndComp
Connection ~ 5225 3275
$Comp
L Switch:SW_Push SW?
U 1 1 5F1AFC7C
P 4700 1300
AR Path="/5CA214F9/5F1AFC7C" Ref="SW?"  Part="1" 
AR Path="/5F1AFC7C" Ref="SW?"  Part="1" 
AR Path="/5F1751CC/5F1AFC7C" Ref="SW?"  Part="1" 
F 0 "SW?" H 4700 1585 50  0000 C CNN
F 1 "RST" H 4700 1494 50  0000 C CNN
F 2 "footprints:LL3301NF065QG" H 4700 1500 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/140/P090002-267756.pdf" H 4700 1500 50  0001 C CNN
F 4 "LL3301NF065QG" H 4700 1300 50  0001 C CNN "MPN"
	1    4700 1300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F1AFC89
P 5050 1300
AR Path="/5CA214F9/5F1AFC89" Ref="R?"  Part="1" 
AR Path="/5F1AFC89" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F1AFC89" Ref="R?"  Part="1" 
F 0 "R?" V 4843 1300 50  0000 C CNN
F 1 "1k" V 4934 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 1300 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 5050 1300 50  0001 C CNN
F 4 "RT0805FRE071KL" H 5050 1300 50  0001 C CNN "MPN"
	1    5050 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 1300 5400 1300
$Comp
L Device:C_Small C?
U 1 1 5F1AFC91
P 5400 1400
AR Path="/5CA214F9/5F1AFC91" Ref="C?"  Part="1" 
AR Path="/5F1AFC91" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F1AFC91" Ref="C?"  Part="1" 
F 0 "C?" H 5492 1446 50  0000 L CNN
F 1 "10nF" H 5492 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5400 1400 50  0001 C CNN
F 3 "~" H 5400 1400 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 5400 1400 50  0001 C CNN "MPN"
	1    5400 1400
	1    0    0    -1  
$EndComp
Text Label 7325 2375 0    50   ~ 0
USART_TX
Text Label 7325 2475 0    50   ~ 0
USART_RX
Text Label 7325 2775 0    50   ~ 0
Display_RS
Text Label 5925 3375 2    50   ~ 0
Display_E
Text Label 7325 2875 0    50   ~ 0
Display_D4
Text Label 7325 2975 0    50   ~ 0
Display_D5
Text Label 7325 3475 0    50   ~ 0
Display_D6
Text Label 7325 3575 0    50   ~ 0
Display_D7
Text Label 5925 3275 2    50   ~ 0
Display_RW
NoConn ~ 5925 4275
NoConn ~ 5925 4075
NoConn ~ 5925 4175
Text Label 7325 4075 0    50   ~ 0
C_LIMIT_ON
NoConn ~ 5925 3875
NoConn ~ 7325 3375
Wire Wire Line
	6725 4475 6825 4475
$Comp
L power:GNDA #PWR?
U 1 1 5F1AFCAE
P 6825 4475
AR Path="/5CA214F9/5F1AFCAE" Ref="#PWR?"  Part="1" 
AR Path="/5F1AFCAE" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F1AFCAE" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 6825 4225 50  0001 C CNN
F 1 "GNDA" H 6830 4302 50  0000 C CNN
F 2 "" H 6825 4475 50  0001 C CNN
F 3 "" H 6825 4475 50  0001 C CNN
	1    6825 4475
	1    0    0    -1  
$EndComp
Connection ~ 6825 4475
Text Notes 4675 2525 0    50   ~ 0
Crystal Load Capacitance = 15pF\nPCB, MCU ~10pF
$Comp
L Switch:SW_Push SW?
U 1 1 5F1AFCB7
P 4550 1775
AR Path="/5CA214F9/5F1AFCB7" Ref="SW?"  Part="1" 
AR Path="/5F1AFCB7" Ref="SW?"  Part="1" 
AR Path="/5F1751CC/5F1AFCB7" Ref="SW?"  Part="1" 
F 0 "SW?" H 4550 2060 50  0000 C CNN
F 1 "BOOT" H 4550 1969 50  0000 C CNN
F 2 "footprints:LL3301NF065QG" H 4550 1975 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/140/P090002-267756.pdf" H 4550 1975 50  0001 C CNN
F 4 "LL3301NF065QG" H 4550 1775 50  0001 C CNN "MPN"
	1    4550 1775
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F1AFCBE
P 5000 1875
AR Path="/5CA214F9/5F1AFCBE" Ref="C?"  Part="1" 
AR Path="/5F1AFCBE" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F1AFCBE" Ref="C?"  Part="1" 
F 0 "C?" H 5092 1921 50  0000 L CNN
F 1 "10nF" H 5092 1830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5000 1875 50  0001 C CNN
F 3 "~" H 5000 1875 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 5000 1875 50  0001 C CNN "MPN"
	1    5000 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1775 4750 1775
$Comp
L power:+3V3 #PWR?
U 1 1 5F1AFCC5
P 4250 1725
AR Path="/5CA214F9/5F1AFCC5" Ref="#PWR?"  Part="1" 
AR Path="/5F1AFCC5" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F1AFCC5" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 4250 1575 50  0001 C CNN
F 1 "+3V3" H 4265 1898 50  0000 C CNN
F 2 "" H 4250 1725 50  0001 C CNN
F 3 "" H 4250 1725 50  0001 C CNN
	1    4250 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1725 4250 1775
Wire Wire Line
	4250 1775 4350 1775
Text Label 7325 4175 0    50   ~ 0
CAP_DISCHARGE
Text Label 5925 3675 2    50   ~ 0
Iread
Text Label 7325 3175 0    50   ~ 0
Iread
Text Label 5925 3575 2    50   ~ 0
Vread
Text Label 7325 3275 0    50   ~ 0
Vread
Text Label 7325 2075 0    50   ~ 0
Iset
Text Label 7325 2175 0    50   ~ 0
Vset
Wire Wire Line
	5375 2075 5375 2100
Wire Wire Line
	5000 2100 5000 1975
Wire Wire Line
	5000 1775 5375 1775
Connection ~ 5000 1775
Connection ~ 5375 1775
Wire Wire Line
	5400 1300 5775 1300
Wire Wire Line
	5775 1300 5775 1575
Wire Wire Line
	5775 1575 5925 1575
Connection ~ 5400 1300
NoConn ~ 7325 1975
Text Label 7325 4275 0    50   ~ 0
FAN_PWM
Text Label 7325 3675 0    50   ~ 0
FAN_RPM
$Comp
L power:GNDREF #PWR?
U 1 1 5F1E7AF5
P 3775 6925
AR Path="/5CA214F9/5F1E7AF5" Ref="#PWR?"  Part="1" 
AR Path="/5F1E7AF5" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F1E7AF5" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 3775 6675 50  0001 C CNN
F 1 "GNDREF" V 3780 6797 50  0001 R CNN
F 2 "" H 3775 6925 50  0001 C CNN
F 3 "" H 3775 6925 50  0001 C CNN
	1    3775 6925
	0    1    1    0   
$EndComp
Text Label 3625 6325 0    50   ~ 0
ENC1_A
Text Label 3625 7475 0    50   ~ 0
ENC1_B
Text Label 2350 6825 0    50   ~ 0
ENC0_SW
Text Label 4725 6825 0    50   ~ 0
ENC1_SW
$Comp
L Device:Rotary_Encoder_Switch SW?
U 1 1 5F1E7B13
P 4075 6925
AR Path="/5CA214F9/5F1E7B13" Ref="SW?"  Part="1" 
AR Path="/5F1E7B13" Ref="SW?"  Part="1" 
AR Path="/5F1751CC/5F1E7B13" Ref="SW?"  Part="1" 
F 0 "SW?" H 4075 7292 50  0000 C CNN
F 1 "ENC1 (Current)" H 4075 7201 50  0000 C CNN
F 2 "footprints:PEC12R-2xxxf-Sxxxx" H 3925 7085 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/54/EC12R-777795.pdf" H 4075 7185 50  0001 C CNN
F 4 "PEC12R-2220F-S0024" H 4075 6925 50  0001 C CNN "MPN"
	1    4075 6925
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6825 2350 6825
$Comp
L Device:C_Small C?
U 1 1 5F1E7B57
P 2350 6925
AR Path="/5CA214F9/5F1E7B57" Ref="C?"  Part="1" 
AR Path="/5F1E7B57" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F1E7B57" Ref="C?"  Part="1" 
F 0 "C?" H 2442 6971 50  0000 L CNN
F 1 "10nF" H 2442 6880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2350 6925 50  0001 C CNN
F 3 "~" H 2350 6925 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 2350 6925 50  0001 C CNN "MPN"
	1    2350 6925
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F1E7B5E
P 4525 6825
AR Path="/5CA214F9/5F1E7B5E" Ref="R?"  Part="1" 
AR Path="/5F1E7B5E" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F1E7B5E" Ref="R?"  Part="1" 
F 0 "R?" V 4318 6825 50  0000 C CNN
F 1 "1k" V 4409 6825 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4455 6825 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 4525 6825 50  0001 C CNN
F 4 "RT0805FRE071KL" H 4525 6825 50  0001 C CNN "MPN"
	1    4525 6825
	0    1    1    0   
$EndComp
Wire Wire Line
	4675 6825 4725 6825
$Comp
L Device:C_Small C?
U 1 1 5F1E7B66
P 4725 6925
AR Path="/5CA214F9/5F1E7B66" Ref="C?"  Part="1" 
AR Path="/5F1E7B66" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F1E7B66" Ref="C?"  Part="1" 
F 0 "C?" H 4817 6971 50  0000 L CNN
F 1 "10nF" H 4817 6880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4725 6925 50  0001 C CNN
F 3 "~" H 4725 6925 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 4725 6925 50  0001 C CNN "MPN"
	1    4725 6925
	1    0    0    -1  
$EndComp
Wire Wire Line
	4725 7025 4525 7025
$Comp
L Device:R R?
U 1 1 5F1E7B6E
P 3375 6825
AR Path="/5CA214F9/5F1E7B6E" Ref="R?"  Part="1" 
AR Path="/5F1E7B6E" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F1E7B6E" Ref="R?"  Part="1" 
F 0 "R?" V 3168 6825 50  0000 C CNN
F 1 "10k" V 3259 6825 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3305 6825 50  0001 C CNN
F 3 "~" H 3375 6825 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 3375 6825 50  0001 C CNN "MPN"
	1    3375 6825
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F1E7B75
P 3625 6525
AR Path="/5CA214F9/5F1E7B75" Ref="R?"  Part="1" 
AR Path="/5F1E7B75" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F1E7B75" Ref="R?"  Part="1" 
F 0 "R?" H 3555 6479 50  0000 R CNN
F 1 "10k" H 3555 6570 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3555 6525 50  0001 C CNN
F 3 "~" H 3625 6525 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 3625 6525 50  0001 C CNN "MPN"
	1    3625 6525
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F1E7B7C
P 3625 7275
AR Path="/5CA214F9/5F1E7B7C" Ref="R?"  Part="1" 
AR Path="/5F1E7B7C" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F1E7B7C" Ref="R?"  Part="1" 
F 0 "R?" H 3695 7321 50  0000 L CNN
F 1 "10k" H 3695 7230 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3555 7275 50  0001 C CNN
F 3 "~" H 3625 7275 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 3625 7275 50  0001 C CNN "MPN"
	1    3625 7275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F1E7B83
P 3375 7025
AR Path="/5CA214F9/5F1E7B83" Ref="R?"  Part="1" 
AR Path="/5F1E7B83" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F1E7B83" Ref="R?"  Part="1" 
F 0 "R?" V 3175 7025 50  0000 C CNN
F 1 "10k" V 3275 7025 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3305 7025 50  0001 C CNN
F 3 "~" H 3375 7025 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 3375 7025 50  0001 C CNN "MPN"
	1    3375 7025
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3625 7125 3625 7025
Wire Wire Line
	3625 7025 3525 7025
Wire Wire Line
	3625 7025 3775 7025
Connection ~ 3625 7025
Wire Wire Line
	3525 6825 3625 6825
Wire Wire Line
	3625 6825 3625 6675
Connection ~ 3625 6825
Wire Wire Line
	3625 6825 3775 6825
Wire Wire Line
	3225 7025 3225 6925
Connection ~ 3225 6925
Wire Wire Line
	3225 6925 3225 6825
$Comp
L Device:C_Small C?
U 1 1 5F1E7B9B
P 3475 7475
AR Path="/5CA214F9/5F1E7B9B" Ref="C?"  Part="1" 
AR Path="/5F1E7B9B" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F1E7B9B" Ref="C?"  Part="1" 
F 0 "C?" V 3575 7475 50  0000 C CNN
F 1 "10nF" V 3675 7475 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3475 7475 50  0001 C CNN
F 3 "~" H 3475 7475 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 3475 7475 50  0001 C CNN "MPN"
	1    3475 7475
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F1E7BA2
P 3475 6325
AR Path="/5CA214F9/5F1E7BA2" Ref="C?"  Part="1" 
AR Path="/5F1E7BA2" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F1E7BA2" Ref="C?"  Part="1" 
F 0 "C?" V 3246 6325 50  0000 C CNN
F 1 "10nF" V 3337 6325 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3475 6325 50  0001 C CNN
F 3 "~" H 3475 6325 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 3475 6325 50  0001 C CNN "MPN"
	1    3475 6325
	0    1    1    0   
$EndComp
Wire Wire Line
	3575 6325 3625 6325
Wire Wire Line
	3625 6325 3625 6375
Wire Wire Line
	3625 7425 3625 7475
Wire Wire Line
	3625 7475 3575 7475
Wire Wire Line
	1250 7475 1200 7475
Wire Wire Line
	1250 7425 1250 7475
Wire Wire Line
	1250 6325 1250 6375
Wire Wire Line
	1200 6325 1250 6325
$Comp
L Device:C_Small C?
U 1 1 5F1E7BB2
P 1100 6325
AR Path="/5CA214F9/5F1E7BB2" Ref="C?"  Part="1" 
AR Path="/5F1E7BB2" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F1E7BB2" Ref="C?"  Part="1" 
F 0 "C?" V 871 6325 50  0000 C CNN
F 1 "10nF" V 962 6325 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1100 6325 50  0001 C CNN
F 3 "~" H 1100 6325 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 1100 6325 50  0001 C CNN "MPN"
	1    1100 6325
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F1E7BB9
P 1100 7475
AR Path="/5CA214F9/5F1E7BB9" Ref="C?"  Part="1" 
AR Path="/5F1E7BB9" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F1E7BB9" Ref="C?"  Part="1" 
F 0 "C?" V 1200 7475 50  0000 C CNN
F 1 "10nF" V 1300 7475 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1100 7475 50  0001 C CNN
F 3 "~" H 1100 7475 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 1100 7475 50  0001 C CNN "MPN"
	1    1100 7475
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 6825 1400 6825
Connection ~ 1250 6825
Wire Wire Line
	1250 6825 1250 6675
Wire Wire Line
	1150 6825 1250 6825
Connection ~ 1250 7025
Wire Wire Line
	1250 7025 1400 7025
Wire Wire Line
	1250 7025 1150 7025
Wire Wire Line
	1250 7125 1250 7025
$Comp
L Device:R R?
U 1 1 5F1E7BC8
P 1000 7025
AR Path="/5CA214F9/5F1E7BC8" Ref="R?"  Part="1" 
AR Path="/5F1E7BC8" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F1E7BC8" Ref="R?"  Part="1" 
F 0 "R?" V 800 7025 50  0000 C CNN
F 1 "10k" V 900 7025 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 930 7025 50  0001 C CNN
F 3 "~" H 1000 7025 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 1000 7025 50  0001 C CNN "MPN"
	1    1000 7025
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F1E7BCF
P 1250 7275
AR Path="/5CA214F9/5F1E7BCF" Ref="R?"  Part="1" 
AR Path="/5F1E7BCF" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F1E7BCF" Ref="R?"  Part="1" 
F 0 "R?" H 1320 7321 50  0000 L CNN
F 1 "10k" H 1320 7230 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1180 7275 50  0001 C CNN
F 3 "~" H 1250 7275 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 1250 7275 50  0001 C CNN "MPN"
	1    1250 7275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F1E7BD6
P 1250 6525
AR Path="/5CA214F9/5F1E7BD6" Ref="R?"  Part="1" 
AR Path="/5F1E7BD6" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F1E7BD6" Ref="R?"  Part="1" 
F 0 "R?" H 1180 6479 50  0000 R CNN
F 1 "10k" H 1180 6570 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1180 6525 50  0001 C CNN
F 3 "~" H 1250 6525 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 1250 6525 50  0001 C CNN "MPN"
	1    1250 6525
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F1E7BDD
P 1000 6825
AR Path="/5CA214F9/5F1E7BDD" Ref="R?"  Part="1" 
AR Path="/5F1E7BDD" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F1E7BDD" Ref="R?"  Part="1" 
F 0 "R?" V 793 6825 50  0000 C CNN
F 1 "10k" V 884 6825 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 930 6825 50  0001 C CNN
F 3 "~" H 1000 6825 50  0001 C CNN
F 4 "CRCW080510K0FKEAC" H 1000 6825 50  0001 C CNN "MPN"
	1    1000 6825
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 7025 2000 7025
$Comp
L Device:R R?
U 1 1 5F1E7BE6
P 2150 6825
AR Path="/5CA214F9/5F1E7BE6" Ref="R?"  Part="1" 
AR Path="/5F1E7BE6" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F1E7BE6" Ref="R?"  Part="1" 
F 0 "R?" V 1943 6825 50  0000 C CNN
F 1 "1k" V 2034 6825 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2080 6825 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 2150 6825 50  0001 C CNN
F 4 "RT0805FRE071KL" H 2150 6825 50  0001 C CNN "MPN"
	1    2150 6825
	0    1    1    0   
$EndComp
Text Label 1250 7475 0    50   ~ 0
ENC0_B
Text Label 1250 6325 0    50   ~ 0
ENC0_A
$Comp
L Device:Rotary_Encoder_Switch SW?
U 1 1 5F1E7BFB
P 1700 6925
AR Path="/5CA214F9/5F1E7BFB" Ref="SW?"  Part="1" 
AR Path="/5F1E7BFB" Ref="SW?"  Part="1" 
AR Path="/5F1751CC/5F1E7BFB" Ref="SW?"  Part="1" 
F 0 "SW?" H 1700 7292 50  0000 C CNN
F 1 "ENC0 (Voltage)" H 1700 7201 50  0000 C CNN
F 2 "footprints:PEC12R-2xxxf-Sxxxx" H 1550 7085 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/54/EC12R-777795.pdf" H 1700 7185 50  0001 C CNN
F 4 "PEC12R-2220F-S0024" H 1700 6925 50  0001 C CNN "MPN"
	1    1700 6925
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  6825 850  6925
$Comp
L power:+3V3 #PWR?
U 1 1 5F1E7C0E
P 850 6925
AR Path="/5CA214F9/5F1E7C0E" Ref="#PWR?"  Part="1" 
AR Path="/5F1E7C0E" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F1E7C0E" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 850 6775 50  0001 C CNN
F 1 "+3V3" V 865 7053 50  0000 L CNN
F 2 "" H 850 6925 50  0001 C CNN
F 3 "" H 850 6925 50  0001 C CNN
	1    850  6925
	0    -1   -1   0   
$EndComp
Connection ~ 850  6925
Wire Wire Line
	850  6925 850  7025
$Comp
L power:+3V3 #PWR?
U 1 1 5F1E7C16
P 3225 6925
AR Path="/5CA214F9/5F1E7C16" Ref="#PWR?"  Part="1" 
AR Path="/5F1E7C16" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F1E7C16" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 3225 6775 50  0001 C CNN
F 1 "+3V3" V 3240 7053 50  0000 L CNN
F 2 "" H 3225 6925 50  0001 C CNN
F 3 "" H 3225 6925 50  0001 C CNN
	1    3225 6925
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F2135CD
P 1450 925
AR Path="/5CA214F9/5F2135CD" Ref="C?"  Part="1" 
AR Path="/5F2135CD" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F2135CD" Ref="C?"  Part="1" 
F 0 "C?" H 1542 971 50  0000 L CNN
F 1 "1µF" H 1542 880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1450 925 50  0001 C CNN
F 3 "~" H 1450 925 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 1450 925 50  0001 C CNN "MPN"
	1    1450 925 
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F2135D4
P 1050 925
AR Path="/5CA214F9/5F2135D4" Ref="C?"  Part="1" 
AR Path="/5F2135D4" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F2135D4" Ref="C?"  Part="1" 
F 0 "C?" H 1142 971 50  0000 L CNN
F 1 "100nF" H 1142 880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1050 925 50  0001 C CNN
F 3 "~" H 1050 925 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1050 925 50  0001 C CNN "MPN"
	1    1050 925 
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F2135DB
P 650 925
AR Path="/5CA214F9/5F2135DB" Ref="C?"  Part="1" 
AR Path="/5F2135DB" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F2135DB" Ref="C?"  Part="1" 
F 0 "C?" H 742 971 50  0000 L CNN
F 1 "10nF" H 742 880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 650 925 50  0001 C CNN
F 3 "~" H 650 925 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 650 925 50  0001 C CNN "MPN"
	1    650  925 
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F2135E2
P 1450 1575
AR Path="/5CA214F9/5F2135E2" Ref="C?"  Part="1" 
AR Path="/5F2135E2" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F2135E2" Ref="C?"  Part="1" 
F 0 "C?" H 1542 1621 50  0000 L CNN
F 1 "1µF" H 1542 1530 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1450 1575 50  0001 C CNN
F 3 "~" H 1450 1575 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 1450 1575 50  0001 C CNN "MPN"
	1    1450 1575
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F2135E9
P 1050 1575
AR Path="/5CA214F9/5F2135E9" Ref="C?"  Part="1" 
AR Path="/5F2135E9" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F2135E9" Ref="C?"  Part="1" 
F 0 "C?" H 1142 1621 50  0000 L CNN
F 1 "100nF" H 1142 1530 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1050 1575 50  0001 C CNN
F 3 "~" H 1050 1575 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1050 1575 50  0001 C CNN "MPN"
	1    1050 1575
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F2135F0
P 650 1575
AR Path="/5CA214F9/5F2135F0" Ref="C?"  Part="1" 
AR Path="/5F2135F0" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F2135F0" Ref="C?"  Part="1" 
F 0 "C?" H 742 1621 50  0000 L CNN
F 1 "10nF" H 742 1530 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 650 1575 50  0001 C CNN
F 3 "~" H 650 1575 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 650 1575 50  0001 C CNN "MPN"
	1    650  1575
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F2135F7
P 1450 2225
AR Path="/5CA214F9/5F2135F7" Ref="C?"  Part="1" 
AR Path="/5F2135F7" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F2135F7" Ref="C?"  Part="1" 
F 0 "C?" H 1542 2271 50  0000 L CNN
F 1 "1µF" H 1542 2180 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1450 2225 50  0001 C CNN
F 3 "~" H 1450 2225 50  0001 C CNN
F 4 "TMK212B7105KG-T" H 1450 2225 50  0001 C CNN "MPN"
	1    1450 2225
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F2135FE
P 1050 2225
AR Path="/5CA214F9/5F2135FE" Ref="C?"  Part="1" 
AR Path="/5F2135FE" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F2135FE" Ref="C?"  Part="1" 
F 0 "C?" H 1142 2271 50  0000 L CNN
F 1 "100nF" H 1142 2180 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1050 2225 50  0001 C CNN
F 3 "~" H 1050 2225 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1050 2225 50  0001 C CNN "MPN"
	1    1050 2225
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F213605
P 650 2225
AR Path="/5CA214F9/5F213605" Ref="C?"  Part="1" 
AR Path="/5F213605" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F213605" Ref="C?"  Part="1" 
F 0 "C?" H 742 2271 50  0000 L CNN
F 1 "10nF" H 742 2180 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 650 2225 50  0001 C CNN
F 3 "~" H 650 2225 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 650 2225 50  0001 C CNN "MPN"
	1    650  2225
	1    0    0    1   
$EndComp
Text Label 1950 825  0    50   ~ 0
VDDA
Wire Wire Line
	650  2125 1050 2125
Wire Wire Line
	650  2325 1050 2325
Connection ~ 1050 2325
Wire Wire Line
	1050 2325 1450 2325
Connection ~ 1050 2125
Wire Wire Line
	1050 2125 1450 2125
Connection ~ 1450 2125
Wire Wire Line
	1450 2125 1750 2125
Connection ~ 1450 1475
Wire Wire Line
	1450 1475 1750 1475
Wire Wire Line
	650  1475 1050 1475
Wire Wire Line
	650  1675 1050 1675
Connection ~ 1050 1675
Wire Wire Line
	1050 1675 1450 1675
Connection ~ 1050 1475
Wire Wire Line
	1050 1475 1450 1475
Connection ~ 1450 825 
Wire Wire Line
	1450 825  1750 825 
Wire Wire Line
	650  825  1050 825 
Wire Wire Line
	1050 1025 1450 1025
Connection ~ 1050 825 
Wire Wire Line
	1050 825  1450 825 
Text Label 1950 1475 0    50   ~ 0
VDDSD
Text Label 1950 2125 0    50   ~ 0
VREFSD
$Comp
L power:+3V3 #PWR?
U 1 1 5F213624
P 650 2775
AR Path="/5CA214F9/5F213624" Ref="#PWR?"  Part="1" 
AR Path="/5F213624" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F213624" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 650 2625 50  0001 C CNN
F 1 "+3V3" H 665 2948 50  0000 C CNN
F 2 "" H 650 2775 50  0001 C CNN
F 3 "" H 650 2775 50  0001 C CNN
	1    650  2775
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F213631
P 650 2875
AR Path="/5CA214F9/5F213631" Ref="C?"  Part="1" 
AR Path="/5F213631" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F213631" Ref="C?"  Part="1" 
F 0 "C?" H 742 2921 50  0000 L CNN
F 1 "4.7µF" H 742 2830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 650 2875 50  0001 C CNN
F 3 "~" H 650 2875 50  0001 C CNN
F 4 "GRM21BR71C475KE51L" H 650 2875 50  0001 C CNN "MPN"
	1    650  2875
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F213638
P 1050 2875
AR Path="/5CA214F9/5F213638" Ref="C?"  Part="1" 
AR Path="/5F213638" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F213638" Ref="C?"  Part="1" 
F 0 "C?" H 1142 2921 50  0000 L CNN
F 1 "100nF" H 1142 2830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1050 2875 50  0001 C CNN
F 3 "~" H 1050 2875 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1050 2875 50  0001 C CNN "MPN"
	1    1050 2875
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F21363F
P 1450 2875
AR Path="/5CA214F9/5F21363F" Ref="C?"  Part="1" 
AR Path="/5F21363F" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F21363F" Ref="C?"  Part="1" 
F 0 "C?" H 1542 2921 50  0000 L CNN
F 1 "100nF" H 1542 2830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1450 2875 50  0001 C CNN
F 3 "~" H 1450 2875 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1450 2875 50  0001 C CNN "MPN"
	1    1450 2875
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F213646
P 1850 2875
AR Path="/5CA214F9/5F213646" Ref="C?"  Part="1" 
AR Path="/5F213646" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F213646" Ref="C?"  Part="1" 
F 0 "C?" H 1942 2921 50  0000 L CNN
F 1 "100nF" H 1942 2830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1850 2875 50  0001 C CNN
F 3 "~" H 1850 2875 50  0001 C CNN
F 4 "CC0805KRX7R9BB104" H 1850 2875 50  0001 C CNN "MPN"
	1    1850 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  2775 1050 2775
Connection ~ 650  2775
Connection ~ 1050 2775
Wire Wire Line
	1050 2775 1450 2775
Connection ~ 1450 2775
Wire Wire Line
	1450 2775 1850 2775
Wire Wire Line
	650  2975 1050 2975
Connection ~ 1050 2975
Wire Wire Line
	1050 2975 1450 2975
Connection ~ 1450 2975
Wire Wire Line
	1450 2975 1850 2975
$Comp
L Device:C_Small C?
U 1 1 5F213659
P 2250 2875
AR Path="/5CA214F9/5F213659" Ref="C?"  Part="1" 
AR Path="/5F213659" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F213659" Ref="C?"  Part="1" 
F 0 "C?" H 2342 2921 50  0000 L CNN
F 1 "10nF" H 2342 2830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2250 2875 50  0001 C CNN
F 3 "~" H 2250 2875 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 2250 2875 50  0001 C CNN "MPN"
	1    2250 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2775 2250 2775
Connection ~ 1850 2775
Wire Wire Line
	2250 2975 1850 2975
Connection ~ 1850 2975
Wire Wire Line
	2250 2775 2550 2775
Connection ~ 2250 2775
Text Label 2750 2775 0    50   ~ 0
VDD1
$Comp
L power:+3V3 #PWR?
U 1 1 5F213666
P 650 2125
AR Path="/5CA214F9/5F213666" Ref="#PWR?"  Part="1" 
AR Path="/5F213666" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F213666" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 650 1975 50  0001 C CNN
F 1 "+3V3" H 665 2298 50  0000 C CNN
F 2 "" H 650 2125 50  0001 C CNN
F 3 "" H 650 2125 50  0001 C CNN
	1    650  2125
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5F21366C
P 650 1475
AR Path="/5CA214F9/5F21366C" Ref="#PWR?"  Part="1" 
AR Path="/5F21366C" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F21366C" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 650 1325 50  0001 C CNN
F 1 "+3V3" H 665 1648 50  0000 C CNN
F 2 "" H 650 1475 50  0001 C CNN
F 3 "" H 650 1475 50  0001 C CNN
	1    650  1475
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5F213672
P 650 825
AR Path="/5CA214F9/5F213672" Ref="#PWR?"  Part="1" 
AR Path="/5F213672" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F213672" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 650 675 50  0001 C CNN
F 1 "+3V3" H 665 998 50  0000 C CNN
F 2 "" H 650 825 50  0001 C CNN
F 3 "" H 650 825 50  0001 C CNN
	1    650  825 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5F213678
P 650 2325
AR Path="/5CA214F9/5F213678" Ref="#PWR?"  Part="1" 
AR Path="/5F213678" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F213678" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 650 2075 50  0001 C CNN
F 1 "GNDA" H 655 2152 50  0000 C CNN
F 2 "" H 650 2325 50  0001 C CNN
F 3 "" H 650 2325 50  0001 C CNN
	1    650  2325
	1    0    0    -1  
$EndComp
Connection ~ 650  2325
$Comp
L power:GNDA #PWR?
U 1 1 5F21367F
P 650 1675
AR Path="/5CA214F9/5F21367F" Ref="#PWR?"  Part="1" 
AR Path="/5F21367F" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F21367F" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 650 1425 50  0001 C CNN
F 1 "GNDA" H 655 1502 50  0000 C CNN
F 2 "" H 650 1675 50  0001 C CNN
F 3 "" H 650 1675 50  0001 C CNN
	1    650  1675
	1    0    0    -1  
$EndComp
Connection ~ 650  1675
$Comp
L power:GNDA #PWR?
U 1 1 5F213686
P 650 1025
AR Path="/5CA214F9/5F213686" Ref="#PWR?"  Part="1" 
AR Path="/5F213686" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F213686" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 650 775 50  0001 C CNN
F 1 "GNDA" H 655 852 50  0000 C CNN
F 2 "" H 650 1025 50  0001 C CNN
F 3 "" H 650 1025 50  0001 C CNN
	1    650  1025
	1    0    0    -1  
$EndComp
Connection ~ 650  2125
Connection ~ 650  1475
Wire Wire Line
	1050 1025 650  1025
Connection ~ 1050 1025
Connection ~ 650  1025
$Comp
L Device:Net-Tie_2 NT?
U 1 1 5F213691
P 1850 825
AR Path="/5CA214F9/5F213691" Ref="NT?"  Part="1" 
AR Path="/5F213691" Ref="NT?"  Part="1" 
AR Path="/5F1751CC/5F213691" Ref="NT?"  Part="1" 
F 0 "NT?" H 1850 914 50  0000 C CNN
F 1 "Net-Tie_2" H 1850 915 50  0001 C CNN
F 2 "" H 1850 825 50  0001 C CNN
F 3 "~" H 1850 825 50  0001 C CNN
	1    1850 825 
	1    0    0    -1  
$EndComp
$Comp
L Device:Net-Tie_2 NT?
U 1 1 5F213697
P 1850 1475
AR Path="/5CA214F9/5F213697" Ref="NT?"  Part="1" 
AR Path="/5F213697" Ref="NT?"  Part="1" 
AR Path="/5F1751CC/5F213697" Ref="NT?"  Part="1" 
F 0 "NT?" H 1850 1564 50  0000 C CNN
F 1 "Net-Tie_2" H 1850 1565 50  0001 C CNN
F 2 "" H 1850 1475 50  0001 C CNN
F 3 "~" H 1850 1475 50  0001 C CNN
	1    1850 1475
	1    0    0    -1  
$EndComp
$Comp
L Device:Net-Tie_2 NT?
U 1 1 5F21369D
P 1850 2125
AR Path="/5CA214F9/5F21369D" Ref="NT?"  Part="1" 
AR Path="/5F21369D" Ref="NT?"  Part="1" 
AR Path="/5F1751CC/5F21369D" Ref="NT?"  Part="1" 
F 0 "NT?" H 1850 2214 50  0000 C CNN
F 1 "Net-Tie_2" H 1850 2215 50  0001 C CNN
F 2 "" H 1850 2125 50  0001 C CNN
F 3 "~" H 1850 2125 50  0001 C CNN
	1    1850 2125
	1    0    0    -1  
$EndComp
$Comp
L Device:Net-Tie_2 NT?
U 1 1 5F2136A3
P 2650 2775
AR Path="/5CA214F9/5F2136A3" Ref="NT?"  Part="1" 
AR Path="/5F2136A3" Ref="NT?"  Part="1" 
AR Path="/5F1751CC/5F2136A3" Ref="NT?"  Part="1" 
F 0 "NT?" H 2650 2864 50  0000 C CNN
F 1 "Net-Tie_2" H 2650 2865 50  0001 C CNN
F 2 "" H 2650 2775 50  0001 C CNN
F 3 "~" H 2650 2775 50  0001 C CNN
	1    2650 2775
	1    0    0    -1  
$EndComp
Connection ~ 650  825 
Wire Notes Line width 10
	5150 7725 5150 5950
Wire Notes Line width 10
	5150 5950 525  5950
Wire Notes Line width 10
	525  5950 525  7725
Text Notes 525  5900 0    50   ~ 10
Encoders
Wire Notes Line width 10
	525  7725 5150 7725
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5F2DCBF9
P 1700 4950
AR Path="/5F2DCBF9" Ref="J?"  Part="1" 
AR Path="/5F1751CC/5F2DCBF9" Ref="J?"  Part="1" 
F 0 "J?" H 1672 4832 50  0000 R CNN
F 1 "FAN" H 1672 4923 50  0000 R CNN
F 2 "" H 1700 4950 50  0001 C CNN
F 3 "~" H 1700 4950 50  0001 C CNN
	1    1700 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 5050 1400 5050
Wire Wire Line
	1400 5050 1400 5325
Wire Wire Line
	775  4950 775  4850
$Comp
L power:+12V #PWR?
U 1 1 5F2DCC08
P 775 4625
AR Path="/5F2DCC08" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F2DCC08" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 775 4475 50  0001 C CNN
F 1 "+12V" H 790 4798 50  0000 C CNN
F 2 "" H 775 4625 50  0001 C CNN
F 3 "" H 775 4625 50  0001 C CNN
	1    775  4625
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F2DCC0E
P 925 4850
AR Path="/5F2DCC0E" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F2DCC0E" Ref="R?"  Part="1" 
F 0 "R?" V 750 4850 50  0000 C CNN
F 1 "10K" V 825 4850 50  0000 C CNN
F 2 "" V 855 4850 50  0001 C CNN
F 3 "~" H 925 4850 50  0001 C CNN
	1    925  4850
	0    1    1    0   
$EndComp
Connection ~ 775  4850
Wire Wire Line
	775  4850 775  4625
Wire Wire Line
	1500 4950 775  4950
Wire Wire Line
	1075 4850 1075 5000
Connection ~ 1075 4850
Wire Wire Line
	1075 4850 1500 4850
$Comp
L Device:R R?
U 1 1 5F2DCC1A
P 1075 5150
AR Path="/5F2DCC1A" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F2DCC1A" Ref="R?"  Part="1" 
F 0 "R?" H 1000 5200 50  0000 R CNN
F 1 "10K" H 1000 5100 50  0000 R CNN
F 2 "" V 1005 5150 50  0001 C CNN
F 3 "~" H 1075 5150 50  0001 C CNN
	1    1075 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F2DCC20
P 1250 5325
AR Path="/5F2DCC20" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F2DCC20" Ref="R?"  Part="1" 
F 0 "R?" V 1075 5325 50  0000 C CNN
F 1 "5K" V 1150 5325 50  0000 C CNN
F 2 "" V 1180 5325 50  0001 C CNN
F 3 "~" H 1250 5325 50  0001 C CNN
	1    1250 5325
	0    1    1    0   
$EndComp
Connection ~ 1400 5325
Wire Wire Line
	1400 5325 1400 5600
Wire Wire Line
	1100 5325 1075 5325
Wire Wire Line
	1075 5325 1075 5300
Wire Wire Line
	1075 5325 650  5325
Connection ~ 1075 5325
Text Label 650  5325 0    50   ~ 0
FAN_RPM
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5F2DCC2E
P 1500 4325
AR Path="/5CA214F9/5F2DCC2E" Ref="Q?"  Part="1" 
AR Path="/5F2DCC2E" Ref="Q?"  Part="1" 
AR Path="/5F1751CC/5F2DCC2E" Ref="Q?"  Part="1" 
F 0 "Q?" H 1725 4225 50  0000 C CNN
F 1 "2N7002NXAK" H 1925 4325 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1700 4425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/2N7002NXAK.pdf" H 1500 4325 50  0001 C CNN
F 4 "2N7002NXAK" V 1500 4325 50  0001 C CNN "MPN"
	1    1500 4325
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 4525 1400 4750
Wire Wire Line
	1400 4750 1500 4750
$Comp
L power:GNDREF #PWR?
U 1 1 5F2DCC36
P 1400 4125
AR Path="/5F2DCC36" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F2DCC36" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 1400 3875 50  0001 C CNN
F 1 "GNDREF" H 1405 3952 50  0001 C CNN
F 2 "" H 1400 4125 50  0001 C CNN
F 3 "" H 1400 4125 50  0001 C CNN
	1    1400 4125
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 4325 1975 4325
Text Label 1975 4325 2    50   ~ 0
FAN_PWM
Text Label 6375 6650 2    50   ~ 0
Display_RW
Text Label 6375 6750 2    50   ~ 0
Display_E
Text Label 6375 7150 2    50   ~ 0
Display_D7
Text Label 6375 7050 2    50   ~ 0
Display_D6
Text Label 6375 6850 2    50   ~ 0
Display_D4
Text Label 6375 6950 2    50   ~ 0
Display_D5
Text Label 6375 6550 2    50   ~ 0
Display_RS
$Comp
L power:+3.3V #PWR?
U 1 1 5F1E7B4A
P 6025 6400
AR Path="/5CA214F9/5F1E7B4A" Ref="#PWR?"  Part="1" 
AR Path="/5F1E7B4A" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F1E7B4A" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 6025 6250 50  0001 C CNN
F 1 "+3.3V" H 6040 6573 50  0000 C CNN
F 2 "" H 6025 6400 50  0001 C CNN
F 3 "" H 6025 6400 50  0001 C CNN
	1    6025 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6375 7350 6325 7350
Wire Wire Line
	6375 6225 6375 6350
$Comp
L Connector:Conn_01x11_Male J?
U 1 1 5F1E7B38
P 6575 6850
AR Path="/5CA214F9/5F1E7B38" Ref="J?"  Part="1" 
AR Path="/5F1E7B38" Ref="J?"  Part="1" 
AR Path="/5F1751CC/5F1E7B38" Ref="J?"  Part="1" 
F 0 "J?" H 6450 6900 50  0000 L CNN
F 1 "Display" H 6300 6800 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x11_P2.54mm_Vertical" H 6575 6850 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/276/0022284150_PCB_HEADERS-159054.pdf" H 6575 6850 50  0001 C CNN
F 4 "M20-9991646" H 6575 6850 50  0001 C CNN "MPN"
	1    6575 6850
	-1   0    0    -1  
$EndComp
Connection ~ 5725 7250
Wire Wire Line
	5725 7250 5525 7250
Connection ~ 6025 7250
Wire Wire Line
	6025 7250 6375 7250
Wire Wire Line
	5725 7250 5725 7400
Wire Wire Line
	6025 7400 6025 7250
$Comp
L Device:R R?
U 1 1 5F1E7B2B
P 5875 7250
AR Path="/5CA214F9/5F1E7B2B" Ref="R?"  Part="1" 
AR Path="/5F1E7B2B" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F1E7B2B" Ref="R?"  Part="1" 
F 0 "R?" V 5925 7500 50  0000 C CNN
F 1 "1k" V 5925 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5805 7250 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 5875 7250 50  0001 C CNN
F 4 "RT0805FRE071KL" H 5875 7250 50  0001 C CNN "MPN"
	1    5875 7250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6025 6450 6025 6400
Wire Wire Line
	6375 6225 6575 6225
$Comp
L power:+3V3 #PWR?
U 1 1 5F1E7B0C
P 5525 7250
AR Path="/5CA214F9/5F1E7B0C" Ref="#PWR?"  Part="1" 
AR Path="/5F1E7B0C" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F1E7B0C" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 5525 7100 50  0001 C CNN
F 1 "+3V3" V 5540 7378 50  0000 L CNN
F 2 "" H 5525 7250 50  0001 C CNN
F 3 "" H 5525 7250 50  0001 C CNN
	1    5525 7250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F1E7B06
P 5875 7400
AR Path="/5CA214F9/5F1E7B06" Ref="R?"  Part="1" 
AR Path="/5F1E7B06" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F1E7B06" Ref="R?"  Part="1" 
F 0 "R?" V 5925 7650 50  0000 C CNN
F 1 "1k" V 5925 7200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5805 7400 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 5875 7400 50  0001 C CNN
F 4 "RT0805FRE071KL" H 5875 7400 50  0001 C CNN "MPN"
	1    5875 7400
	0    -1   -1   0   
$EndComp
Connection ~ 3275 4650
Wire Wire Line
	3475 4650 3275 4650
$Comp
L Device:C_Small C?
U 1 1 5F2B97F5
P 3575 4650
AR Path="/5CA214F9/5F2B97F5" Ref="C?"  Part="1" 
AR Path="/5F2B97F5" Ref="C?"  Part="1" 
AR Path="/5F1751CC/5F2B97F5" Ref="C?"  Part="1" 
F 0 "C?" V 3346 4650 50  0000 C CNN
F 1 "10nF" V 3437 4650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3575 4650 50  0001 C CNN
F 3 "~" H 3575 4650 50  0001 C CNN
F 4 "CC0805KRX7R0BB103" H 3575 4650 50  0001 C CNN "MPN"
	1    3575 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	3125 4650 3275 4650
Connection ~ 3125 4650
Wire Wire Line
	2975 4650 3125 4650
Wire Wire Line
	3125 4950 2975 4950
Connection ~ 3125 4950
Wire Wire Line
	3275 4950 3125 4950
$Comp
L Device:R R?
U 1 1 5F2B97E8
P 3275 4800
AR Path="/5CA214F9/5F2B97E8" Ref="R?"  Part="1" 
AR Path="/5F2B97E8" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F2B97E8" Ref="R?"  Part="1" 
F 0 "R?" H 3345 4846 50  0000 L CNN
F 1 "1k" H 3345 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3205 4800 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 3275 4800 50  0001 C CNN
F 4 "RT0805FRE071KL" H 3275 4800 50  0001 C CNN "MPN"
	1    3275 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F2B97E1
P 2975 4800
AR Path="/5CA214F9/5F2B97E1" Ref="R?"  Part="1" 
AR Path="/5F2B97E1" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F2B97E1" Ref="R?"  Part="1" 
F 0 "R?" H 3045 4846 50  0000 L CNN
F 1 "1k" H 3045 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2905 4800 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 2975 4800 50  0001 C CNN
F 4 "RT0805FRE071KL" H 2975 4800 50  0001 C CNN "MPN"
	1    2975 4800
	1    0    0    -1  
$EndComp
NoConn ~ 2675 5050
$Comp
L power:+3V3 #PWR?
U 1 1 5F2B97D9
P 3125 4650
AR Path="/5CA214F9/5F2B97D9" Ref="#PWR?"  Part="1" 
AR Path="/5F2B97D9" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F2B97D9" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 3125 4500 50  0001 C CNN
F 1 "+3V3" H 3140 4823 50  0000 C CNN
F 2 "" H 3125 4650 50  0001 C CNN
F 3 "" H 3125 4650 50  0001 C CNN
	1    3125 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F2B97D3
P 3125 5100
AR Path="/5CA214F9/5F2B97D3" Ref="R?"  Part="1" 
AR Path="/5F2B97D3" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F2B97D3" Ref="R?"  Part="1" 
F 0 "R?" H 3195 5146 50  0000 L CNN
F 1 "1k" H 3195 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3055 5100 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/447/PYu-RT_1-to-0.01_RoHS_L_9-1222720.pdf" H 3125 5100 50  0001 C CNN
F 4 "RT0805FRE071KL" H 3125 5100 50  0001 C CNN "MPN"
	1    3125 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2675 5250 3125 5250
Wire Wire Line
	2275 5650 2375 5650
Text Label 2675 5350 0    50   ~ 0
USB_D-
Text Label 2675 5250 0    50   ~ 0
USB_D+
$Comp
L Connector:USB_A J?
U 1 1 5F2B97C1
P 2375 5250
AR Path="/5CA214F9/5F2B97C1" Ref="J?"  Part="1" 
AR Path="/5F2B97C1" Ref="J?"  Part="1" 
AR Path="/5F1751CC/5F2B97C1" Ref="J?"  Part="1" 
F 0 "J?" H 2430 5717 50  0000 C CNN
F 1 "USB_A" H 2430 5626 50  0000 C CNN
F 2 "footprints:USBA" H 2525 5200 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/643/bel_SS-52100-001-1216592.pdf" H 2525 5200 50  0001 C CNN
F 4 "SS-52100-001" H 2375 5250 50  0001 C CNN "MPN"
	1    2375 5250
	1    0    0    -1  
$EndComp
Wire Notes Line width 10
	525  5800 2000 5800
Wire Notes Line width 10
	2000 5800 2000 3975
Wire Notes Line width 10
	2000 3975 525  3975
Wire Notes Line width 10
	525  3975 525  5800
Text Notes 525  3950 0    50   ~ 10
FAN Header
Wire Wire Line
	6025 6450 6375 6450
Wire Notes Line width 10
	5200 7725 6950 7725
Wire Notes Line width 10
	6950 7725 6950 6100
Wire Notes Line width 10
	6950 6100 5200 6100
Wire Notes Line width 10
	5200 6100 5200 7725
Text Notes 5200 6075 0    50   ~ 10
Display Header
Wire Notes Line width 10
	525  600  525  3125
Wire Notes Line width 10
	525  3125 2975 3125
Wire Notes Line width 10
	2975 3125 2975 600 
Wire Notes Line width 10
	2975 600  525  600 
Text Notes 525  575  0    50   ~ 10
MCU Caps
Text Label 925  3525 2    50   ~ 0
USART_TX
Text Label 925  3425 2    50   ~ 0
USART_RX
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5F36173D
P 1125 3525
F 0 "J?" H 1097 3499 50  0000 R CNN
F 1 "USART" H 1097 3408 50  0000 R CNN
F 2 "" H 1125 3525 50  0001 C CNN
F 3 "~" H 1125 3525 50  0001 C CNN
	1    1125 3525
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0143
U 1 1 5F36BD81
P 925 3625
F 0 "#PWR0143" H 925 3475 50  0001 C CNN
F 1 "+3V3" V 940 3753 50  0000 L CNN
F 2 "" H 925 3625 50  0001 C CNN
F 3 "" H 925 3625 50  0001 C CNN
	1    925  3625
	0    -1   -1   0   
$EndComp
Wire Notes Line width 10
	525  3825 1425 3825
Wire Notes Line width 10
	1425 3825 1425 3300
Wire Notes Line width 10
	1425 3300 525  3300
Text Notes 525  3275 0    50   ~ 10
USART Header
Wire Notes Line width 10
	525  3300 525  3825
Wire Notes Line width 10
	2100 5800 2100 4350
Wire Notes Line width 10
	2100 4350 3825 4350
Wire Notes Line width 10
	3825 4350 3825 5800
Wire Notes Line width 10
	3825 5800 2100 5800
Text Notes 2075 4325 0    50   ~ 10
USB Connector
$Comp
L power:GNDREF #PWR?
U 1 1 5F433E13
P 10575 925
AR Path="/5CA214F9/5F433E13" Ref="#PWR?"  Part="1" 
AR Path="/5F433E13" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F433E13" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 10575 675 50  0001 C CNN
F 1 "GNDREF" V 10580 797 50  0001 R CNN
F 2 "" H 10575 925 50  0001 C CNN
F 3 "" H 10575 925 50  0001 C CNN
	1    10575 925 
	0    -1   -1   0   
$EndComp
Text Label 10725 1275 0    50   ~ 0
OUTPUT_ON
$Comp
L Device:LED D?
U 1 1 5F433E1B
P 9825 925
AR Path="/5CA214F9/5F433E1B" Ref="D?"  Part="1" 
AR Path="/5F433E1B" Ref="D?"  Part="1" 
AR Path="/5F1751CC/5F433E1B" Ref="D?"  Part="1" 
F 0 "D?" H 9818 670 50  0000 C CNN
F 1 "GREEN" H 9818 761 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9825 925 50  0001 C CNN
F 3 "~" H 9825 925 50  0001 C CNN
F 4 "APTD3216LZGCK" H 9825 925 50  0001 C CNN "MPN"
	1    9825 925 
	-1   0    0    1   
$EndComp
Text Label 10725 2225 0    50   ~ 0
C_LIMIT_ON
$Comp
L Device:LED D?
U 1 1 5F433E23
P 9825 1875
AR Path="/5CA214F9/5F433E23" Ref="D?"  Part="1" 
AR Path="/5F433E23" Ref="D?"  Part="1" 
AR Path="/5F1751CC/5F433E23" Ref="D?"  Part="1" 
F 0 "D?" H 9818 1620 50  0000 C CNN
F 1 "BLUE" H 9818 1711 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9825 1875 50  0001 C CNN
F 3 "~" H 9825 1875 50  0001 C CNN
F 4 "APTD3216LVBCD" H 9825 1875 50  0001 C CNN "MPN"
	1    9825 1875
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5F433E29
P 9175 925
AR Path="/5CA214F9/5F433E29" Ref="#PWR?"  Part="1" 
AR Path="/5F433E29" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F433E29" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 9175 775 50  0001 C CNN
F 1 "VDD" H 9192 1098 50  0000 C CNN
F 2 "" H 9175 925 50  0001 C CNN
F 3 "" H 9175 925 50  0001 C CNN
	1    9175 925 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9175 925  9375 925 
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5F433E31
P 10375 1025
AR Path="/5CA214F9/5F433E31" Ref="Q?"  Part="1" 
AR Path="/5F433E31" Ref="Q?"  Part="1" 
AR Path="/5F1751CC/5F433E31" Ref="Q?"  Part="1" 
F 0 "Q?" V 10718 1025 50  0000 C CNN
F 1 "2N7002NXAK" V 10627 1025 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10575 1125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/2N7002NXAK.pdf" H 10375 1025 50  0001 C CNN
F 4 "2N7002NXAK" V 10375 1025 50  0001 C CNN "MPN"
	1    10375 1025
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10175 925  9975 925 
$Comp
L power:GNDREF #PWR?
U 1 1 5F433E38
P 10575 1875
AR Path="/5CA214F9/5F433E38" Ref="#PWR?"  Part="1" 
AR Path="/5F433E38" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F433E38" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0146" H 10575 1625 50  0001 C CNN
F 1 "GNDREF" V 10580 1747 50  0001 R CNN
F 2 "" H 10575 1875 50  0001 C CNN
F 3 "" H 10575 1875 50  0001 C CNN
	1    10575 1875
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5F433E3E
P 9175 1875
AR Path="/5CA214F9/5F433E3E" Ref="#PWR?"  Part="1" 
AR Path="/5F433E3E" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F433E3E" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 9175 1725 50  0001 C CNN
F 1 "VDD" H 9192 2048 50  0000 C CNN
F 2 "" H 9175 1875 50  0001 C CNN
F 3 "" H 9175 1875 50  0001 C CNN
	1    9175 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	9175 1875 9375 1875
Wire Wire Line
	10175 1875 9975 1875
$Comp
L Device:R R?
U 1 1 5F433E46
P 9525 1800
AR Path="/5CA214F9/5F433E46" Ref="R?"  Part="1" 
AR Path="/5F433E46" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F433E46" Ref="R?"  Part="1" 
F 0 "R?" V 9318 1800 50  0000 C CNN
F 1 "10k" V 9409 1800 50  0000 C CNN
F 2 "" V 9455 1800 50  0001 C CNN
F 3 "~" H 9525 1800 50  0001 C CNN
	1    9525 1800
	0    1    1    0   
$EndComp
Text Notes 9275 1375 0    50   ~ 0
20V / 4mA = 5000Ω
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5F433E54
P 10375 1975
AR Path="/5CA214F9/5F433E54" Ref="Q?"  Part="1" 
AR Path="/5F433E54" Ref="Q?"  Part="1" 
AR Path="/5F1751CC/5F433E54" Ref="Q?"  Part="1" 
F 0 "Q?" V 10718 1975 50  0000 C CNN
F 1 "2N7002NXAK" V 10627 1975 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10575 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/2N7002NXAK.pdf" H 10375 1975 50  0001 C CNN
F 4 "2N7002NXAK" V 10375 1975 50  0001 C CNN "MPN"
	1    10375 1975
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F433E5A
P 10575 1275
AR Path="/5CA214F9/5F433E5A" Ref="R?"  Part="1" 
AR Path="/5F433E5A" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F433E5A" Ref="R?"  Part="1" 
F 0 "R?" V 10368 1275 50  0000 C CNN
F 1 "10K" V 10459 1275 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10505 1275 50  0001 C CNN
F 3 "~" H 10575 1275 50  0001 C CNN
	1    10575 1275
	0    1    1    0   
$EndComp
Wire Wire Line
	10375 1225 10375 1275
Wire Wire Line
	10375 1275 10425 1275
$Comp
L Device:R R?
U 1 1 5F433E62
P 10575 2225
AR Path="/5CA214F9/5F433E62" Ref="R?"  Part="1" 
AR Path="/5F433E62" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F433E62" Ref="R?"  Part="1" 
F 0 "R?" V 10368 2225 50  0000 C CNN
F 1 "10K" V 10459 2225 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10505 2225 50  0001 C CNN
F 3 "~" H 10575 2225 50  0001 C CNN
	1    10575 2225
	0    1    1    0   
$EndComp
Wire Wire Line
	10375 2175 10375 2225
Wire Wire Line
	10375 2225 10425 2225
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5F4582BA
P 10175 2775
AR Path="/5CA214F9/5F4582BA" Ref="Q?"  Part="1" 
AR Path="/5F4582BA" Ref="Q?"  Part="1" 
AR Path="/5F1751CC/5F4582BA" Ref="Q?"  Part="1" 
F 0 "Q?" V 10518 2775 50  0000 C CNN
F 1 "2N7002NXAK" V 10427 2775 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10375 2875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/2N7002NXAK.pdf" H 10175 2775 50  0001 C CNN
F 4 "2N7002NXAK" V 10175 2775 50  0001 C CNN "MPN"
	1    10175 2775
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F4582C0
P 10375 3025
AR Path="/5CA214F9/5F4582C0" Ref="R?"  Part="1" 
AR Path="/5F4582C0" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F4582C0" Ref="R?"  Part="1" 
F 0 "R?" V 10168 3025 50  0000 C CNN
F 1 "1K" V 10259 3025 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10305 3025 50  0001 C CNN
F 3 "~" H 10375 3025 50  0001 C CNN
	1    10375 3025
	0    1    1    0   
$EndComp
Wire Wire Line
	10175 2975 10175 3025
Wire Wire Line
	10175 3025 10225 3025
$Comp
L power:GNDREF #PWR?
U 1 1 5F4582C8
P 10375 2675
AR Path="/5CA214F9/5F4582C8" Ref="#PWR?"  Part="1" 
AR Path="/5F4582C8" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4582C8" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0148" H 10375 2425 50  0001 C CNN
F 1 "GNDREF" V 10380 2547 50  0001 R CNN
F 2 "" H 10375 2675 50  0001 C CNN
F 3 "" H 10375 2675 50  0001 C CNN
	1    10375 2675
	0    -1   -1   0   
$EndComp
Text Label 10525 3025 0    50   ~ 0
CAP_DISCHARGE
$Comp
L Device:R R?
U 1 1 5F4582CF
P 9775 2675
AR Path="/5CA214F9/5F4582CF" Ref="R?"  Part="1" 
AR Path="/5F4582CF" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F4582CF" Ref="R?"  Part="1" 
F 0 "R?" V 9568 2675 50  0000 C CNN
F 1 "100R" V 9659 2675 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9705 2675 50  0001 C CNN
F 3 "~" H 9775 2675 50  0001 C CNN
	1    9775 2675
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F4582D5
P 9475 2675
AR Path="/5CA214F9/5F4582D5" Ref="R?"  Part="1" 
AR Path="/5F4582D5" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5F4582D5" Ref="R?"  Part="1" 
F 0 "R?" V 9268 2675 50  0000 C CNN
F 1 "100R" V 9359 2675 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9405 2675 50  0001 C CNN
F 3 "~" H 9475 2675 50  0001 C CNN
	1    9475 2675
	0    1    1    0   
$EndComp
Wire Wire Line
	9925 2675 9975 2675
$Comp
L power:GND #PWR?
U 1 1 5F49ADD0
P 1400 5600
AR Path="/5F3D442D/5F49ADD0" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F49ADD0" Ref="#PWR0149"  Part="1" 
F 0 "#PWR0149" H 1400 5350 50  0001 C CNN
F 1 "GND" H 1405 5427 50  0000 C CNN
F 2 "" H 1400 5600 50  0001 C CNN
F 3 "" H 1400 5600 50  0001 C CNN
	1    1400 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F49FACB
P 2375 5650
AR Path="/5F3D442D/5F49FACB" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F49FACB" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0150" H 2375 5400 50  0001 C CNN
F 1 "GND" H 2380 5477 50  0000 C CNN
F 2 "" H 2375 5650 50  0001 C CNN
F 3 "" H 2375 5650 50  0001 C CNN
	1    2375 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4A460A
P 3675 4650
AR Path="/5F3D442D/5F4A460A" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4A460A" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0151" H 3675 4400 50  0001 C CNN
F 1 "GND" H 3675 4525 50  0000 C CNN
F 2 "" H 3675 4650 50  0001 C CNN
F 3 "" H 3675 4650 50  0001 C CNN
	1    3675 4650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4A9227
P 1000 7475
AR Path="/5F3D442D/5F4A9227" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4A9227" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0152" H 1000 7225 50  0001 C CNN
F 1 "GND" H 1005 7302 50  0000 C CNN
F 2 "" H 1000 7475 50  0001 C CNN
F 3 "" H 1000 7475 50  0001 C CNN
	1    1000 7475
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4AE009
P 1000 6325
AR Path="/5F3D442D/5F4AE009" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4AE009" Ref="#PWR0153"  Part="1" 
F 0 "#PWR0153" H 1000 6075 50  0001 C CNN
F 1 "GND" H 1005 6152 50  0000 C CNN
F 2 "" H 1000 6325 50  0001 C CNN
F 3 "" H 1000 6325 50  0001 C CNN
	1    1000 6325
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4B319C
P 3375 6325
AR Path="/5F3D442D/5F4B319C" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4B319C" Ref="#PWR0154"  Part="1" 
F 0 "#PWR0154" H 3375 6075 50  0001 C CNN
F 1 "GND" H 3380 6152 50  0000 C CNN
F 2 "" H 3375 6325 50  0001 C CNN
F 3 "" H 3375 6325 50  0001 C CNN
	1    3375 6325
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4B7CBE
P 3375 7475
AR Path="/5F3D442D/5F4B7CBE" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4B7CBE" Ref="#PWR0155"  Part="1" 
F 0 "#PWR0155" H 3375 7225 50  0001 C CNN
F 1 "GND" H 3380 7302 50  0000 C CNN
F 2 "" H 3375 7475 50  0001 C CNN
F 3 "" H 3375 7475 50  0001 C CNN
	1    3375 7475
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4BC728
P 1400 6925
AR Path="/5F3D442D/5F4BC728" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4BC728" Ref="#PWR0156"  Part="1" 
F 0 "#PWR0156" H 1400 6675 50  0001 C CNN
F 1 "GND" H 1405 6752 50  0000 C CNN
F 2 "" H 1400 6925 50  0001 C CNN
F 3 "" H 1400 6925 50  0001 C CNN
	1    1400 6925
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4C164E
P 2150 7025
AR Path="/5F3D442D/5F4C164E" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4C164E" Ref="#PWR0157"  Part="1" 
F 0 "#PWR0157" H 2150 6775 50  0001 C CNN
F 1 "GND" H 2155 6852 50  0000 C CNN
F 2 "" H 2150 7025 50  0001 C CNN
F 3 "" H 2150 7025 50  0001 C CNN
	1    2150 7025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4C6A86
P 4525 7025
AR Path="/5F3D442D/5F4C6A86" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4C6A86" Ref="#PWR0158"  Part="1" 
F 0 "#PWR0158" H 4525 6775 50  0001 C CNN
F 1 "GND" H 4530 6852 50  0000 C CNN
F 2 "" H 4525 7025 50  0001 C CNN
F 3 "" H 4525 7025 50  0001 C CNN
	1    4525 7025
	1    0    0    -1  
$EndComp
Connection ~ 4525 7025
Wire Wire Line
	4525 7025 4375 7025
$Comp
L power:GND #PWR?
U 1 1 5F4CCB15
P 6575 6225
AR Path="/5F3D442D/5F4CCB15" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4CCB15" Ref="#PWR0159"  Part="1" 
F 0 "#PWR0159" H 6575 5975 50  0001 C CNN
F 1 "GND" H 6580 6052 50  0000 C CNN
F 2 "" H 6575 6225 50  0001 C CNN
F 3 "" H 6575 6225 50  0001 C CNN
	1    6575 6225
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4D681E
P 6325 7425
AR Path="/5F3D442D/5F4D681E" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4D681E" Ref="#PWR0160"  Part="1" 
F 0 "#PWR0160" H 6325 7175 50  0001 C CNN
F 1 "GND" H 6330 7252 50  0000 C CNN
F 2 "" H 6325 7425 50  0001 C CNN
F 3 "" H 6325 7425 50  0001 C CNN
	1    6325 7425
	1    0    0    -1  
$EndComp
Wire Wire Line
	6325 7350 6325 7425
$Comp
L power:GND #PWR?
U 1 1 5F4EA743
P 6625 4475
AR Path="/5F3D442D/5F4EA743" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4EA743" Ref="#PWR0161"  Part="1" 
F 0 "#PWR0161" H 6625 4225 50  0001 C CNN
F 1 "GND" H 6630 4302 50  0000 C CNN
F 2 "" H 6625 4475 50  0001 C CNN
F 3 "" H 6625 4475 50  0001 C CNN
	1    6625 4475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4F0132
P 4500 1300
AR Path="/5F3D442D/5F4F0132" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4F0132" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 4500 1050 50  0001 C CNN
F 1 "GND" H 4505 1127 50  0000 C CNN
F 2 "" H 4500 1300 50  0001 C CNN
F 3 "" H 4500 1300 50  0001 C CNN
	1    4500 1300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4F4DEC
P 5400 1500
AR Path="/5F3D442D/5F4F4DEC" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4F4DEC" Ref="#PWR0163"  Part="1" 
F 0 "#PWR0163" H 5400 1250 50  0001 C CNN
F 1 "GND" H 5405 1327 50  0000 C CNN
F 2 "" H 5400 1500 50  0001 C CNN
F 3 "" H 5400 1500 50  0001 C CNN
	1    5400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2100 5200 2100
$Comp
L power:GND #PWR?
U 1 1 5F4F9D93
P 5200 2100
AR Path="/5F3D442D/5F4F9D93" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4F9D93" Ref="#PWR0164"  Part="1" 
F 0 "#PWR0164" H 5200 1850 50  0001 C CNN
F 1 "GND" H 5205 1927 50  0000 C CNN
F 2 "" H 5200 2100 50  0001 C CNN
F 3 "" H 5200 2100 50  0001 C CNN
	1    5200 2100
	1    0    0    -1  
$EndComp
Connection ~ 5200 2100
Wire Wire Line
	5200 2100 5375 2100
$Comp
L power:GND #PWR?
U 1 1 5F4FF532
P 5225 2775
AR Path="/5F3D442D/5F4FF532" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F4FF532" Ref="#PWR0165"  Part="1" 
F 0 "#PWR0165" H 5225 2525 50  0001 C CNN
F 1 "GND" H 5230 2602 50  0000 C CNN
F 2 "" H 5225 2775 50  0001 C CNN
F 3 "" H 5225 2775 50  0001 C CNN
	1    5225 2775
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F50898D
P 5225 3475
AR Path="/5F3D442D/5F50898D" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F50898D" Ref="#PWR0166"  Part="1" 
F 0 "#PWR0166" H 5225 3225 50  0001 C CNN
F 1 "GND" H 5230 3302 50  0000 C CNN
F 2 "" H 5225 3475 50  0001 C CNN
F 3 "" H 5225 3475 50  0001 C CNN
	1    5225 3475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F50DCD3
P 925 3725
AR Path="/5F3D442D/5F50DCD3" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F50DCD3" Ref="#PWR0167"  Part="1" 
F 0 "#PWR0167" H 925 3475 50  0001 C CNN
F 1 "GND" H 930 3552 50  0000 C CNN
F 2 "" H 925 3725 50  0001 C CNN
F 3 "" H 925 3725 50  0001 C CNN
	1    925  3725
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F512F51
P 650 2975
AR Path="/5F3D442D/5F512F51" Ref="#PWR?"  Part="1" 
AR Path="/5F1751CC/5F512F51" Ref="#PWR0168"  Part="1" 
F 0 "#PWR0168" H 650 2725 50  0001 C CNN
F 1 "GND" H 650 2850 50  0000 C CNN
F 2 "" H 650 2975 50  0001 C CNN
F 3 "" H 650 2975 50  0001 C CNN
	1    650  2975
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA65641
P 9525 1950
AR Path="/5CA214F9/5EA65641" Ref="R?"  Part="1" 
AR Path="/5EA65641" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5EA65641" Ref="R?"  Part="1" 
F 0 "R?" V 9318 1950 50  0000 C CNN
F 1 "10k" V 9409 1950 50  0000 C CNN
F 2 "" V 9455 1950 50  0001 C CNN
F 3 "~" H 9525 1950 50  0001 C CNN
	1    9525 1950
	0    1    -1   0   
$EndComp
Wire Wire Line
	9675 1800 9675 1875
Connection ~ 9675 1875
Wire Wire Line
	9675 1875 9675 1950
Wire Wire Line
	9375 1800 9375 1875
Connection ~ 9375 1875
Wire Wire Line
	9375 1875 9375 1950
$Comp
L Device:R R?
U 1 1 5EA73971
P 9525 850
AR Path="/5CA214F9/5EA73971" Ref="R?"  Part="1" 
AR Path="/5EA73971" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5EA73971" Ref="R?"  Part="1" 
F 0 "R?" V 9318 850 50  0000 C CNN
F 1 "10k" V 9409 850 50  0000 C CNN
F 2 "" V 9455 850 50  0001 C CNN
F 3 "~" H 9525 850 50  0001 C CNN
	1    9525 850 
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA73977
P 9525 1000
AR Path="/5CA214F9/5EA73977" Ref="R?"  Part="1" 
AR Path="/5EA73977" Ref="R?"  Part="1" 
AR Path="/5F1751CC/5EA73977" Ref="R?"  Part="1" 
F 0 "R?" V 9318 1000 50  0000 C CNN
F 1 "10k" V 9409 1000 50  0000 C CNN
F 2 "" V 9455 1000 50  0001 C CNN
F 3 "~" H 9525 1000 50  0001 C CNN
	1    9525 1000
	0    1    -1   0   
$EndComp
Wire Wire Line
	9675 850  9675 925 
Connection ~ 9675 925 
Wire Wire Line
	9675 925  9675 1000
Wire Wire Line
	9375 850  9375 925 
Connection ~ 9375 925 
Wire Wire Line
	9375 925  9375 1000
Wire Wire Line
	7325 3175 7575 3175
Wire Wire Line
	7325 3275 7575 3275
Text GLabel 7575 3175 2    50   UnSpc ~ 0
Iread
Text GLabel 7575 3275 2    50   UnSpc ~ 0
Vread
Text GLabel 7325 2275 2    50   UnSpc ~ 0
CLIMIT
$EndSCHEMATC
