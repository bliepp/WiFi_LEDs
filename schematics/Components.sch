EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Regulator_Linear:LD1117S33TR_SOT223 U?
U 1 1 60EFA784
P 4150 2850
F 0 "U?" V 4196 2955 50  0000 L CNN
F 1 "LD1117_3V3" V 4105 2955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabUp" H 4150 3050 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 4250 2600 50  0001 C CNN
	1    4150 2850
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRF540N Q?
U 1 1 60F024FB
P 5400 3750
F 0 "Q?" H 5605 3704 50  0000 L CNN
F 1 "IRF520" H 5605 3795 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5650 3675 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 5400 3750 50  0001 L CNN
	1    5400 3750
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF540N Q?
U 1 1 60F03EB6
P 5400 3200
F 0 "Q?" H 5605 3154 50  0000 L CNN
F 1 "IRF520" H 5605 3245 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5650 3125 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 5400 3200 50  0001 L CNN
	1    5400 3200
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF540N Q?
U 1 1 60F0615A
P 5400 2650
F 0 "Q?" H 5605 2604 50  0000 L CNN
F 1 "IRF520" H 5605 2695 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5650 2575 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 5400 2650 50  0001 L CNN
	1    5400 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 3950 4650 3950
Wire Wire Line
	4650 3750 4900 3750
Wire Wire Line
	4900 3750 4900 3400
Wire Wire Line
	4900 3400 5300 3400
Wire Wire Line
	4650 3550 4800 3550
Wire Wire Line
	4800 3550 4800 2850
Wire Wire Line
	4800 2850 5300 2850
Wire Wire Line
	4150 3750 4250 3750
Wire Wire Line
	4150 3750 4150 3150
Wire Wire Line
	4150 2550 4150 2300
Wire Wire Line
	4150 2300 4450 2300
$Comp
L Device:C_Small C?
U 1 1 60F33F39
P 4450 2650
F 0 "C?" H 4542 2696 50  0000 L CNN
F 1 "10mu" H 4542 2605 50  0000 L CNN
F 2 "" H 4450 2650 50  0001 C CNN
F 3 "~" H 4450 2650 50  0001 C CNN
	1    4450 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60F35104
P 4450 3050
F 0 "C?" H 4542 3096 50  0000 L CNN
F 1 "100n" H 4542 3005 50  0000 L CNN
F 2 "" H 4450 3050 50  0001 C CNN
F 3 "~" H 4450 3050 50  0001 C CNN
	1    4450 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2550 4450 2300
Connection ~ 4450 2300
Wire Wire Line
	4450 2300 5600 2300
Wire Wire Line
	4450 3150 4150 3150
Connection ~ 4150 3150
Wire Wire Line
	4450 2750 4450 2850
Wire Wire Line
	4450 2850 4450 2950
Connection ~ 4450 2850
$Comp
L Device:LED_ARGB D?
U 1 1 60F08554
P 4450 3750
F 0 "D?" H 4450 3283 50  0000 C CNN
F 1 "LED_ARGB" H 4450 3374 50  0000 C CNN
F 2 "" H 4450 3700 50  0001 C CNN
F 3 "~" H 4450 3700 50  0001 C CNN
	1    4450 3750
	-1   0    0    1   
$EndComp
Text HLabel 5600 3750 2    50   Input ~ 0
RED
Text HLabel 5600 3200 2    50   Input ~ 0
GREEN
Text HLabel 5600 2650 2    50   Input ~ 0
BLUE
Text HLabel 5600 2300 2    50   Output ~ 0
3V3
Text HLabel 4550 2850 2    50   Output ~ 0
GND
Wire Wire Line
	4550 2850 4450 2850
Text HLabel 5400 3550 2    50   Output ~ 0
GND
Text HLabel 5450 3000 2    50   Output ~ 0
GND
Text HLabel 5450 2450 2    50   Output ~ 0
GND
Wire Wire Line
	5300 3550 5400 3550
Wire Wire Line
	5450 3000 5300 3000
Wire Wire Line
	5450 2450 5300 2450
Text HLabel 4150 3900 3    50   Input ~ 0
VIN
Wire Wire Line
	4150 3900 4150 3750
Connection ~ 4150 3750
$EndSCHEMATC
