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
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 613389D8
P 3450 2600
F 0 "J1" H 3500 3017 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 3500 2926 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Horizontal" H 3450 2600 50  0001 C CNN
F 3 "~" H 3450 2600 50  0001 C CNN
	1    3450 2600
	1    0    0    -1  
$EndComp
Text GLabel 3250 2800 0    50   BiDi ~ 0
SWEN
Text GLabel 3250 2700 0    50   BiDi ~ 0
3V3
Text GLabel 3250 2500 0    50   BiDi ~ 0
GND
Text GLabel 3250 2400 0    50   BiDi ~ 0
SWDIO
Text GLabel 3250 2600 0    50   BiDi ~ 0
SWCLK
Text GLabel 3750 2400 2    50   BiDi ~ 0
SWEN
Text GLabel 3750 2500 2    50   BiDi ~ 0
3V3
Text GLabel 3750 2700 2    50   BiDi ~ 0
GND
Text GLabel 3750 2800 2    50   BiDi ~ 0
SWDIO
Text GLabel 3750 2600 2    50   BiDi ~ 0
SWCLK
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 61339EB4
P 4900 2550
F 0 "J2" H 4928 2526 50  0000 L CNN
F 1 "Conn_01x04_Female" H 4928 2435 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Horizontal" H 4900 2550 50  0001 C CNN
F 3 "~" H 4900 2550 50  0001 C CNN
	1    4900 2550
	1    0    0    -1  
$EndComp
Text GLabel 4700 2750 0    50   BiDi ~ 0
3V3
Text GLabel 4700 2650 0    50   BiDi ~ 0
SWCLK
Text GLabel 4700 2550 0    50   BiDi ~ 0
GND
Text GLabel 4700 2450 0    50   BiDi ~ 0
SWDIO
Text GLabel 4000 3000 0    50   BiDi ~ 0
3V3
Text GLabel 4400 3000 2    50   BiDi ~ 0
SWEN
Wire Wire Line
	4000 3000 4400 3000
Text GLabel 4000 2100 0    50   BiDi ~ 0
GND
$Comp
L power:GND #PWR?
U 1 1 6133BDE9
P 4400 2100
F 0 "#PWR?" H 4400 1850 50  0001 C CNN
F 1 "GND" V 4405 1972 50  0000 R CNN
F 2 "" H 4400 2100 50  0001 C CNN
F 3 "" H 4400 2100 50  0001 C CNN
	1    4400 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 2100 4400 2100
$EndSCHEMATC
