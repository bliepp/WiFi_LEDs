EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Transistor_FET:IRF540N Q?
U 1 1 60E68731
P 5100 3100
F 0 "Q?" H 5304 3146 50  0000 L CNN
F 1 "IRF520" H 5304 3055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5350 3025 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 5100 3100 50  0001 L CNN
	1    5100 3100
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 60E6F443
P 3950 3700
F 0 "#PWR?" H 3950 3550 50  0001 C CNN
F 1 "+12V" H 3965 3873 50  0000 C CNN
F 2 "" H 3950 3700 50  0001 C CNN
F 3 "" H 3950 3700 50  0001 C CNN
	1    3950 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 3450 5000 3450
Wire Wire Line
	5000 3450 5000 3500
Wire Wire Line
	4950 2850 5000 2850
Wire Wire Line
	5000 2850 5000 2900
$Comp
L Transistor_FET:IRF540N Q?
U 1 1 60E690B3
P 5100 2500
F 0 "Q?" H 5304 2546 50  0000 L CNN
F 1 "IRF520" H 5304 2455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5350 2425 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 5100 2500 50  0001 L CNN
	1    5100 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 2250 5000 2300
Wire Wire Line
	3800 3300 4150 3300
Wire Wire Line
	4550 3100 4550 2700
Wire Wire Line
	4550 3500 4550 3900
Wire Wire Line
	4550 3900 5000 3900
Wire Wire Line
	4550 3300 5000 3300
$Comp
L Device:LED_ARGB D?
U 1 1 61009E65
P 4350 3300
F 0 "D?" H 4350 3797 50  0000 C CNN
F 1 "LED_ARGB" H 4350 3706 50  0000 C CNN
F 2 "" H 4350 3250 50  0001 C CNN
F 3 "~" H 4350 3250 50  0001 C CNN
	1    4350 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4550 2700 5000 2700
Wire Wire Line
	5300 3100 5450 3100
Wire Wire Line
	5450 3300 5350 3300
Wire Wire Line
	5300 2500 5350 2500
Wire Wire Line
	5350 2500 5350 3000
Wire Wire Line
	5350 3000 5450 3000
$Comp
L Transistor_FET:IRF540N Q?
U 1 1 60E65B91
P 5100 3700
F 0 "Q?" H 5304 3746 50  0000 L CNN
F 1 "IRF520" H 5304 3655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5350 3625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 5100 3700 50  0001 L CNN
	1    5100 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 3300 5350 3450
Wire Wire Line
	5350 3700 5300 3700
$Comp
L Device:R_Small R?
U 1 1 61097AD3
P 5200 3450
F 0 "R?" V 5100 3400 50  0000 L CNN
F 1 "PULLDOWN" V 5150 3200 50  0001 L CNN
F 2 "" H 5200 3450 50  0001 C CNN
F 3 "~" H 5200 3450 50  0001 C CNN
	1    5200 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3450 5000 3450
Connection ~ 5000 3450
Wire Wire Line
	5300 3450 5350 3450
Connection ~ 5350 3450
Wire Wire Line
	5350 3450 5350 3700
$Comp
L Device:R_Small R?
U 1 1 6109ED31
P 5200 2850
F 0 "R?" V 5100 2800 50  0000 L CNN
F 1 "PULLDOWN" V 5150 2600 50  0001 L CNN
F 2 "" H 5200 2850 50  0001 C CNN
F 3 "~" H 5200 2850 50  0001 C CNN
	1    5200 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 2850 5300 3100
Connection ~ 5300 3100
Wire Wire Line
	5100 2850 5000 2850
Connection ~ 5000 2850
$Comp
L Device:R_Small R?
U 1 1 610A4161
P 5200 2250
F 0 "R?" V 5100 2200 50  0000 L CNN
F 1 "PULLDOWN" V 5150 2000 50  0001 L CNN
F 2 "" H 5200 2250 50  0001 C CNN
F 3 "~" H 5200 2250 50  0001 C CNN
	1    5200 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 2250 5350 2250
Wire Wire Line
	5350 2250 5350 2500
Connection ~ 5350 2500
Wire Wire Line
	5100 2250 5000 2250
Wire Wire Line
	6150 3600 6150 3650
$Comp
L WiFi_LEDs:NodeMCUv2 U?
U 1 1 60EA9EFB
P 6000 2900
F 0 "U?" H 6000 2700 50  0000 C CNN
F 1 "NodeMCUv2" H 6000 2600 50  0000 C CNN
F 2 "" H 5850 1950 50  0001 C CNN
F 3 "" H 5850 1950 50  0001 C CNN
	1    6000 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60EB2A98
P 4950 2850
F 0 "#PWR?" H 4950 2600 50  0001 C CNN
F 1 "GND" V 4955 2722 50  0000 R CNN
F 2 "" H 4950 2850 50  0001 C CNN
F 3 "" H 4950 2850 50  0001 C CNN
	1    4950 2850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60EB2FC7
P 4950 3450
F 0 "#PWR?" H 4950 3200 50  0001 C CNN
F 1 "GND" V 4955 3322 50  0000 R CNN
F 2 "" H 4950 3450 50  0001 C CNN
F 3 "" H 4950 3450 50  0001 C CNN
	1    4950 3450
	0    1    1    0   
$EndComp
$Comp
L Connector:Barrel_Jack J?
U 1 1 60EC6BDF
P 3400 3400
F 0 "J?" H 3400 3700 50  0000 C CNN
F 1 "Barrel_Jack" H 3400 3600 50  0000 C CNN
F 2 "" H 3450 3360 50  0001 C CNN
F 3 "~" H 3450 3360 50  0001 C CNN
	1    3400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3300 3800 3300
$Comp
L power:GND #PWR?
U 1 1 60ECA6D3
P 3700 3700
F 0 "#PWR?" H 3700 3450 50  0001 C CNN
F 1 "GND" H 3705 3527 50  0000 C CNN
F 2 "" H 3700 3700 50  0001 C CNN
F 3 "" H 3700 3700 50  0001 C CNN
	1    3700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3500 3700 3700
Connection ~ 3800 3300
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U?
U 1 1 60ED508A
P 3800 2450
F 0 "U?" V 3846 2555 50  0000 L CNN
F 1 "LD1117S33TR_SOT223" V 3755 2555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3800 2650 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 3900 2200 50  0001 C CNN
	1    3800 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3800 2750 3800 2800
Wire Wire Line
	3800 2150 3800 2100
Wire Wire Line
	3800 2100 4150 2100
Wire Wire Line
	6150 2100 6150 2200
$Comp
L power:GND #PWR?
U 1 1 60EE74C2
P 4450 2500
F 0 "#PWR?" H 4450 2250 50  0001 C CNN
F 1 "GND" H 4650 2400 50  0000 R CNN
F 2 "" H 4450 2500 50  0001 C CNN
F 3 "" H 4450 2500 50  0001 C CNN
	1    4450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3600 5850 3650
Wire Wire Line
	5850 3650 5950 3650
Wire Wire Line
	5950 3600 5950 3650
Connection ~ 5950 3650
Wire Wire Line
	6050 3600 6050 3650
Connection ~ 6050 3650
Wire Wire Line
	6050 3650 6150 3650
Wire Wire Line
	5950 3650 6050 3650
Connection ~ 6150 3650
Wire Wire Line
	6150 3650 6150 3700
$Comp
L power:GND #PWR?
U 1 1 60EB09D8
P 6150 3700
F 0 "#PWR?" H 6150 3450 50  0001 C CNN
F 1 "GND" H 6155 3527 50  0000 C CNN
F 2 "" H 6150 3700 50  0001 C CNN
F 3 "" H 6150 3700 50  0001 C CNN
	1    6150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2250 4450 2250
Connection ~ 5000 2250
Wire Wire Line
	4450 2250 4450 2450
Wire Wire Line
	4100 2450 4150 2450
Connection ~ 4450 2450
Wire Wire Line
	4450 2450 4450 2500
Wire Wire Line
	3800 3300 3800 3700
Wire Wire Line
	3800 3700 3950 3700
$Comp
L Device:C_Small C?
U 1 1 60F0098A
P 4150 2250
F 0 "C?" H 4050 2350 50  0000 L CNN
F 1 "10mu" H 4150 2350 50  0000 L CNN
F 2 "" H 4150 2250 50  0001 C CNN
F 3 "~" H 4150 2250 50  0001 C CNN
	1    4150 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60F01DCD
P 4150 2650
F 0 "C?" H 4050 2750 50  0000 L CNN
F 1 "100n" H 4150 2750 50  0000 L CNN
F 2 "" H 4150 2650 50  0001 C CNN
F 3 "~" H 4150 2650 50  0001 C CNN
	1    4150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2750 4150 2800
Wire Wire Line
	4150 2800 3800 2800
Connection ~ 3800 2800
Wire Wire Line
	3800 2800 3800 3300
Wire Wire Line
	4150 2550 4150 2450
Connection ~ 4150 2450
Wire Wire Line
	4150 2450 4450 2450
Wire Wire Line
	4150 2450 4150 2350
Wire Wire Line
	4150 2150 4150 2100
Connection ~ 4150 2100
Wire Wire Line
	4150 2100 6150 2100
Text Notes 1500 2150 0    50   ~ 0
LD1117 Tab is Vout, so copper\narea to Vout or floating
$EndSCHEMATC
