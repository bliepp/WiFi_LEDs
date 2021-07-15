EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2250 2400 550  550 
U 60EF9F72
F0 "Components" 50
F1 "../Components.sch" 50
F2 "RED" I R 2800 2750 50 
F3 "GREEN" I R 2800 2650 50 
F4 "BLUE" I R 2800 2550 50 
F5 "3V3" O R 2800 2450 50 
F6 "GND" O R 2800 2850 50 
F7 "VIN" I L 2250 2450 50 
$EndSheet
$Comp
L power:GND #PWR01
U 1 1 60F14A50
P 1650 2650
F 0 "#PWR01" H 1650 2400 50  0001 C CNN
F 1 "GND" V 1655 2522 50  0000 R CNN
F 2 "" H 1650 2650 50  0001 C CNN
F 3 "" H 1650 2650 50  0001 C CNN
	1    1650 2650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Barrel_Jack J1
U 1 1 60F12523
P 1350 2550
F 0 "J1" H 1250 2550 50  0000 C CNN
F 1 "Barrel_Jack" H 1350 2350 50  0000 C CNN
F 2 "" H 1400 2510 50  0001 C CNN
F 3 "~" H 1400 2510 50  0001 C CNN
	1    1350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2450 2100 2450
$Comp
L power:+12V #PWR02
U 1 1 60F0705D
P 2100 2700
F 0 "#PWR02" H 2100 2550 50  0001 C CNN
F 1 "+12V" H 2115 2873 50  0000 C CNN
F 2 "" H 2100 2700 50  0001 C CNN
F 3 "" H 2100 2700 50  0001 C CNN
	1    2100 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 2450 2100 2700
Connection ~ 2100 2450
Wire Wire Line
	2100 2450 2250 2450
$Comp
L Custom:NodeMCUv2 U1
U 1 1 60EFAF8C
P 3750 2650
F 0 "U1" H 3550 2450 50  0000 L CNN
F 1 "NodeMCUv2" H 3550 2350 50  0000 L CNN
F 2 "" H 3600 1700 50  0001 C CNN
F 3 "" H 3600 1700 50  0001 C CNN
	1    3750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2650 3200 2650
Wire Wire Line
	3200 2750 2800 2750
Wire Wire Line
	2800 2550 2900 2550
Wire Wire Line
	2900 2550 2900 2350
Wire Wire Line
	2900 2350 3200 2350
Wire Wire Line
	2800 2450 2850 2450
Wire Wire Line
	2850 2450 2850 1900
Wire Wire Line
	2850 1900 3600 1900
Wire Wire Line
	3600 1900 3600 1950
$Comp
L power:GND #PWR03
U 1 1 60F0509E
P 2800 2850
F 0 "#PWR03" H 2800 2600 50  0001 C CNN
F 1 "GND" V 2805 2722 50  0000 R CNN
F 2 "" H 2800 2850 50  0001 C CNN
F 3 "" H 2800 2850 50  0001 C CNN
	1    2800 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60F057E2
P 3600 3350
F 0 "#PWR04" H 3600 3100 50  0001 C CNN
F 1 "GND" H 3605 3177 50  0000 C CNN
F 2 "" H 3600 3350 50  0001 C CNN
F 3 "" H 3600 3350 50  0001 C CNN
	1    3600 3350
	1    0    0    -1  
$EndComp
$EndSCHEMATC