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
L WYW_Library:GP2S60 U1
U 1 1 615C5AAE
P 5200 2950
F 0 "U1" H 5200 3065 50  0000 C CNN
F 1 "GP2S60" H 5200 2974 50  0000 C CNN
F 2 "WYW_Package:GP2S60_3217" H 5200 2950 50  0001 C CNN
F 3 "" H 5200 2950 50  0001 C CNN
	1    5200 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 615C6477
P 5650 2900
F 0 "R1" H 5709 2946 50  0000 L CNN
F 1 "R_Small" H 5709 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5650 2900 50  0001 C CNN
F 3 "~" H 5650 2900 50  0001 C CNN
	1    5650 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J4
U 1 1 615C726C
P 6250 2850
F 0 "J4" H 6300 3067 50  0000 C CNN
F 1 "Conn_02x02_Top_Bottom" H 6300 2976 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 6250 2850 50  0001 C CNN
F 3 "~" H 6250 2850 50  0001 C CNN
	1    6250 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J1
U 1 1 615C8E25
P 4400 2800
F 0 "J1" H 4450 3017 50  0000 C CNN
F 1 "Conn_02x02_Top_Bottom" H 4450 2926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 4400 2800 50  0001 C CNN
F 3 "~" H 4400 2800 50  0001 C CNN
	1    4400 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J2
U 1 1 615C94D7
P 4400 3450
F 0 "J2" H 4450 3667 50  0000 C CNN
F 1 "Conn_02x02_Top_Bottom" H 4450 3576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 4400 3450 50  0001 C CNN
F 3 "~" H 4400 3450 50  0001 C CNN
	1    4400 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J3
U 1 1 615CA141
P 6000 3450
F 0 "J3" H 6050 3667 50  0000 C CNN
F 1 "Conn_02x02_Top_Bottom" H 6050 3576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 6000 3450 50  0001 C CNN
F 3 "~" H 6000 3450 50  0001 C CNN
	1    6000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3100 5650 3100
Wire Wire Line
	5650 3100 5650 3000
Wire Wire Line
	6050 2950 6050 3100
Wire Wire Line
	6050 3100 5650 3100
Connection ~ 5650 3100
Wire Wire Line
	5650 2800 5650 2700
Wire Wire Line
	5650 2700 6050 2700
Wire Wire Line
	6550 2700 6550 2850
Wire Wire Line
	6050 2850 6050 2700
Connection ~ 6050 2700
Wire Wire Line
	6050 2700 6550 2700
Wire Wire Line
	6550 2950 6550 3100
Wire Wire Line
	6550 3100 6050 3100
Connection ~ 6050 3100
Wire Wire Line
	5550 3200 5550 3450
Wire Wire Line
	5550 3450 5800 3450
Wire Wire Line
	5550 3450 5550 3550
Wire Wire Line
	5550 3550 5800 3550
Connection ~ 5550 3450
Wire Wire Line
	4850 3200 4800 3200
Wire Wire Line
	4800 3200 4800 3450
Wire Wire Line
	4800 3550 4700 3550
Wire Wire Line
	4700 3450 4800 3450
Connection ~ 4800 3450
Wire Wire Line
	4800 3450 4800 3550
Wire Wire Line
	4850 3100 4850 2900
Wire Wire Line
	4850 2800 4700 2800
Wire Wire Line
	4700 2900 4850 2900
Connection ~ 4850 2900
Wire Wire Line
	4850 2900 4850 2800
NoConn ~ 6300 3550
NoConn ~ 4200 3550
NoConn ~ 4200 2900
NoConn ~ 4200 2800
$Comp
L power:GND #PWR?
U 1 1 615D48F9
P 6300 3450
F 0 "#PWR?" H 6300 3200 50  0001 C CNN
F 1 "GND" H 6305 3277 50  0000 C CNN
F 2 "" H 6300 3450 50  0001 C CNN
F 3 "" H 6300 3450 50  0001 C CNN
	1    6300 3450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 615D6665
P 4200 3450
F 0 "#PWR?" H 4200 3200 50  0001 C CNN
F 1 "GND" H 4205 3277 50  0000 C CNN
F 2 "" H 4200 3450 50  0001 C CNN
F 3 "" H 4200 3450 50  0001 C CNN
	1    4200 3450
	0    1    1    0   
$EndComp
$EndSCHEMATC