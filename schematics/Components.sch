EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 8268 5827
encoding utf-8
Sheet 2 2
Title "Generic RGB LED strip controller"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U2
U 1 1 60EFA784
P 2500 2500
F 0 "U2" V 2546 2605 50  0000 L CNN
F 1 "LD1117_3V3" V 2455 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabUp" H 2500 2700 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 2600 2250 50  0001 C CNN
	1    2500 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 3600 3000 3600
Wire Wire Line
	3000 3400 3250 3400
Wire Wire Line
	3250 3400 3250 3050
Wire Wire Line
	3250 3050 3650 3050
Wire Wire Line
	2500 3400 2600 3400
Wire Wire Line
	2500 3400 2500 2800
Wire Wire Line
	2500 2200 2500 1950
Wire Wire Line
	2500 1950 2800 1950
$Comp
L Device:C_Small C1
U 1 1 60F33F39
P 2800 2300
F 0 "C1" H 2892 2346 50  0000 L CNN
F 1 "10mu" H 2892 2255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2800 2300 50  0001 C CNN
F 3 "~" H 2800 2300 50  0001 C CNN
	1    2800 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 60F35104
P 2800 2700
F 0 "C2" H 2700 2650 50  0000 R CNN
F 1 "100n" H 2700 2750 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 2800 2700 50  0001 C CNN
F 3 "~" H 2800 2700 50  0001 C CNN
	1    2800 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 2200 2800 1950
Connection ~ 2800 1950
Wire Wire Line
	2800 2800 2500 2800
Connection ~ 2500 2800
Wire Wire Line
	2800 2400 2800 2500
Wire Wire Line
	2800 2500 2800 2600
Connection ~ 2800 2500
Text HLabel 4400 3400 2    50   Input ~ 0
RED
Text HLabel 4400 2850 2    50   Input ~ 0
GREEN
Text HLabel 4400 2300 2    50   Input ~ 0
BLUE
Text HLabel 2900 2500 2    50   Output ~ 0
GND
Wire Wire Line
	2900 2500 2800 2500
Text HLabel 4200 3200 2    50   Output ~ 0
GND
Text HLabel 4200 2650 2    50   Output ~ 0
GND
Text HLabel 4200 2100 2    50   Output ~ 0
GND
Text HLabel 2500 3550 3    50   Input ~ 0
VIN
Wire Wire Line
	2500 3550 2500 3400
Connection ~ 2500 3400
Text Notes 2350 1800 0    50   ~ 0
Maybe RFD3055LE needed bc of threshold value
Text Notes 2350 1700 0    50   ~ 0
Initially IRF520N were used with TO-220 3 Pins:\nhttps://www.infineon.com/dgdl/Infineon-IRF520N-DataSheet-v01_01-EN.pdf?fileId=5546d462533600a4015355e340711985
Wire Wire Line
	3150 2500 3650 2500
Wire Wire Line
	3000 3200 3150 3200
Wire Wire Line
	3150 3200 3150 2500
$Comp
L Device:R_Small R1
U 1 1 60F1E580
P 3950 2200
F 0 "R1" H 4009 2246 50  0000 L CNN
F 1 "10k" H 4009 2155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3950 2200 50  0001 C CNN
F 3 "~" H 3950 2200 50  0001 C CNN
	1    3950 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 60F1ED74
P 3950 2750
F 0 "R2" H 4009 2796 50  0000 L CNN
F 1 "10k" H 4009 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3950 2750 50  0001 C CNN
F 3 "~" H 3950 2750 50  0001 C CNN
	1    3950 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 60F1F2AA
P 3950 3300
F 0 "R3" H 4009 3346 50  0000 L CNN
F 1 "10k" H 4009 3255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3950 3300 50  0001 C CNN
F 3 "~" H 3950 3300 50  0001 C CNN
	1    3950 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3200 3950 3200
Connection ~ 3950 3200
Wire Wire Line
	3950 3200 4200 3200
Wire Wire Line
	4400 3400 3950 3400
Connection ~ 3950 3400
Wire Wire Line
	4400 2850 3950 2850
Connection ~ 3950 2850
Wire Wire Line
	3650 2650 3950 2650
Connection ~ 3950 2650
Wire Wire Line
	3950 2650 4200 2650
Wire Wire Line
	4400 2300 3950 2300
Connection ~ 3950 2300
Wire Wire Line
	3650 2100 3950 2100
Connection ~ 3950 2100
Wire Wire Line
	3950 2100 4200 2100
Wire Wire Line
	2800 1950 3150 1950
Text HLabel 3150 1950 2    50   Output ~ 0
3V3
$Comp
L Transistor_FET:IRLB8721PBF Q1
U 1 1 60FA2BCA
P 3750 2300
F 0 "Q1" H 3950 2350 50  0000 L CNN
F 1 "IRLB8721PBF" H 3950 2250 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4000 2225 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irlb8721pbf.pdf?fileId=5546d462533600a40153566056732591" H 3750 2300 50  0001 L CNN
	1    3750 2300
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRLB8721PBF Q2
U 1 1 60FA8D3E
P 3750 2850
F 0 "Q2" H 3950 2800 50  0000 L CNN
F 1 "IRLB8721PBF" H 3950 2900 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4000 2775 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irlb8721pbf.pdf?fileId=5546d462533600a40153566056732591" H 3750 2850 50  0001 L CNN
	1    3750 2850
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRLB8721PBF Q3
U 1 1 60FA9F10
P 3750 3400
F 0 "Q3" H 3955 3354 50  0000 L CNN
F 1 "IRLB8721PBF" H 3955 3445 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4000 3325 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irlb8721pbf.pdf?fileId=5546d462533600a40153566056732591" H 3750 3400 50  0001 L CNN
	1    3750 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_AGRB D1
U 1 1 60FB361C
P 2800 3400
F 0 "D1" H 2800 2933 50  0000 C CNN
F 1 "LED_AGRB" H 2800 3024 50  0000 C CNN
F 2 "" H 2800 3350 50  0001 C CNN
F 3 "~" H 2800 3350 50  0001 C CNN
	1    2800 3400
	-1   0    0    1   
$EndComp
$EndSCHEMATC
