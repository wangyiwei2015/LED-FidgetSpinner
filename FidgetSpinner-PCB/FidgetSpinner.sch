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
L power:VCC #PWR02
U 1 1 612C1BE2
P 2500 4900
F 0 "#PWR02" H 2500 4750 50  0001 C CNN
F 1 "VCC" H 2500 5050 50  0000 C CNN
F 2 "" H 2500 4900 50  0001 C CNN
F 3 "" H 2500 4900 50  0001 C CNN
	1    2500 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 612C34AE
P 2350 6150
F 0 "#PWR01" H 2350 5900 50  0001 C CNN
F 1 "GND" H 2350 6000 50  0000 C CNN
F 2 "" H 2350 6150 50  0001 C CNN
F 3 "" H 2350 6150 50  0001 C CNN
	1    2350 6150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink_Pad_3Pin HS1
U 1 1 612C4893
P 2200 2450
F 0 "HS1" H 2400 2450 50  0000 C CNN
F 1 "BL8530-30" H 2200 2600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3_Handsoldering" H 2212 2400 50  0001 C CNN
F 3 "~" H 2212 2400 50  0001 C CNN
	1    2200 2450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 612C6A35
P 4550 1850
F 0 "#PWR0101" H 4550 1600 50  0001 C CNN
F 1 "GND" H 4555 1677 50  0000 C CNN
F 2 "" H 4550 1850 50  0001 C CNN
F 3 "" H 4550 1850 50  0001 C CNN
	1    4550 1850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 612C72CB
P 2850 2050
F 0 "#PWR0102" H 2850 1900 50  0001 C CNN
F 1 "VCC" V 2865 2178 50  0000 L CNN
F 2 "" H 2850 2050 50  0001 C CNN
F 3 "" H 2850 2050 50  0001 C CNN
	1    2850 2050
	0    1    1    0   
$EndComp
$Comp
L pspice:INDUCTOR L1
U 1 1 612C88B1
P 2100 1750
F 0 "L1" V 2200 1650 50  0000 C CNN
F 1 "47uH" V 2100 1600 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2100 1750 50  0001 C CNN
F 3 "~" H 2100 1750 50  0001 C CNN
	1    2100 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 612C9518
P 3050 1600
F 0 "C3" H 3142 1646 50  0000 L CNN
F 1 "47uF" H 3142 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3050 1600 50  0001 C CNN
F 3 "~" H 3050 1600 50  0001 C CNN
	1    3050 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1400 3050 1500
$Comp
L Device:Battery_Cell BT1
U 1 1 612CD20C
P 3550 1650
F 0 "BT1" H 3668 1746 50  0000 L CNN
F 1 "CR2450" H 3668 1655 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3009_1x2450" V 3550 1710 50  0001 C CNN
F 3 "~" V 3550 1710 50  0001 C CNN
	1    3550 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1750 3550 1800
Wire Wire Line
	3050 1700 3050 1800
Wire Wire Line
	3550 1400 3550 1450
$Comp
L power:VCC #PWR0103
U 1 1 612D1736
P 3550 2200
F 0 "#PWR0103" H 3550 2050 50  0001 C CNN
F 1 "VCC" H 3565 2373 50  0000 C CNN
F 2 "" H 3550 2200 50  0001 C CNN
F 3 "" H 3550 2200 50  0001 C CNN
	1    3550 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 612D1F2F
P 3550 2600
F 0 "#PWR0104" H 3550 2350 50  0001 C CNN
F 1 "GND" H 3555 2427 50  0000 C CNN
F 2 "" H 3550 2600 50  0001 C CNN
F 3 "" H 3550 2600 50  0001 C CNN
	1    3550 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 612D2237
P 3550 2400
F 0 "C4" H 3642 2446 50  0000 L CNN
F 1 "1uF" H 3642 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3550 2400 50  0001 C CNN
F 3 "~" H 3550 2400 50  0001 C CNN
	1    3550 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 612D2FA1
P 3950 2400
F 0 "C5" H 4042 2446 50  0000 L CNN
F 1 "100nF" H 4042 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3950 2400 50  0001 C CNN
F 3 "~" H 3950 2400 50  0001 C CNN
	1    3950 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 612D3376
P 4350 2400
F 0 "C6" H 4442 2446 50  0000 L CNN
F 1 "100nF" H 4442 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4350 2400 50  0001 C CNN
F 3 "~" H 4350 2400 50  0001 C CNN
	1    4350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2200 3550 2250
Wire Wire Line
	3950 2300 3950 2250
Wire Wire Line
	3950 2250 3550 2250
Connection ~ 3550 2250
Wire Wire Line
	3550 2250 3550 2300
Wire Wire Line
	4350 2300 4350 2250
Wire Wire Line
	4350 2250 3950 2250
Connection ~ 3950 2250
Wire Wire Line
	3550 2500 3550 2550
Wire Wire Line
	3950 2500 3950 2550
Wire Wire Line
	3950 2550 3550 2550
Connection ~ 3550 2550
Wire Wire Line
	3550 2550 3550 2600
Wire Wire Line
	4350 2500 4350 2550
Wire Wire Line
	4350 2550 3950 2550
Connection ~ 3950 2550
$Comp
L Device:Battery_Cell BT2
U 1 1 612D615A
P 4050 1650
F 0 "BT2" H 4168 1746 50  0000 L CNN
F 1 "CR2450" H 4168 1655 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3009_1x2450" V 4050 1710 50  0001 C CNN
F 3 "~" V 4050 1710 50  0001 C CNN
	1    4050 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT3
U 1 1 612D66FF
P 4550 1650
F 0 "BT3" H 4668 1746 50  0000 L CNN
F 1 "CR2450" H 4668 1655 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3009_1x2450" V 4550 1710 50  0001 C CNN
F 3 "~" V 4550 1710 50  0001 C CNN
	1    4550 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1450 4550 1400
Wire Wire Line
	4550 1400 4050 1400
Wire Wire Line
	4550 1750 4550 1800
Wire Wire Line
	4550 1800 4050 1800
Connection ~ 3550 1800
Wire Wire Line
	4050 1750 4050 1800
Connection ~ 4050 1800
Wire Wire Line
	4050 1800 3550 1800
Wire Wire Line
	4050 1450 4050 1400
Connection ~ 4050 1400
Wire Wire Line
	4050 1400 3550 1400
$Comp
L Switch:SW_SPST SW1
U 1 1 612D9AA8
P 3300 1400
F 0 "SW1" H 3300 1635 50  0000 C CNN
F 1 "SW_POWER" H 3300 1544 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_PCM12" H 3300 1400 50  0001 C CNN
F 3 "~" H 3300 1400 50  0001 C CNN
	1    3300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1800 3550 1800
Wire Wire Line
	3100 1400 3050 1400
Wire Wire Line
	3500 1400 3550 1400
Connection ~ 3550 1400
$Comp
L power:GND #PWR0105
U 1 1 612E12E2
P 2450 2300
F 0 "#PWR0105" H 2450 2050 50  0001 C CNN
F 1 "GND" V 2455 2127 50  0000 C CNN
F 2 "" H 2450 2300 50  0001 C CNN
F 3 "" H 2450 2300 50  0001 C CNN
	1    2450 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 2350 2300 2300
Wire Wire Line
	2300 2300 2450 2300
$Comp
L Device:D D1
U 1 1 612E43C6
P 2300 2050
F 0 "D1" H 2400 1950 50  0000 R CNN
F 1 "D" H 2250 1950 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2300 2050 50  0001 C CNN
F 3 "~" H 2300 2050 50  0001 C CNN
	1    2300 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 1850 4550 1800
Connection ~ 4550 1800
Connection ~ 3050 1400
Wire Wire Line
	2100 2350 2100 2050
Wire Wire Line
	2150 2050 2100 2050
Connection ~ 2100 2050
Wire Wire Line
	2100 2050 2100 2000
Wire Wire Line
	2200 2350 2200 2150
$Comp
L power:GND #PWR0106
U 1 1 612F9E23
P 7750 4850
F 0 "#PWR0106" H 7750 4600 50  0001 C CNN
F 1 "GND" V 7750 4650 50  0000 C CNN
F 2 "" H 7750 4850 50  0001 C CNN
F 3 "" H 7750 4850 50  0001 C CNN
	1    7750 4850
	0    1    1    0   
$EndComp
Text GLabel 7750 4750 0    50   BiDi ~ 0
SWDIO
$Comp
L power:VCC #PWR0107
U 1 1 612FDAD6
P 7750 5050
F 0 "#PWR0107" H 7750 4900 50  0001 C CNN
F 1 "VCC" V 7750 5250 50  0000 C CNN
F 2 "" H 7750 5050 50  0001 C CNN
F 3 "" H 7750 5050 50  0001 C CNN
	1    7750 5050
	0    -1   -1   0   
$EndComp
Text GLabel 7750 4950 0    50   BiDi ~ 0
SWCLK
Wire Notes Line
	1750 1050 5050 1050
Wire Notes Line
	5050 1050 5050 2950
Wire Notes Line
	5050 2950 1750 2950
Wire Notes Line
	1750 2950 1750 1050
Text Notes 1750 1050 0    50   ~ 0
Power
Wire Notes Line
	7200 4550 8650 4550
Wire Notes Line
	8650 4550 8650 5350
Wire Notes Line
	8650 5350 7200 5350
Wire Notes Line
	7200 5350 7200 4550
Text Notes 7200 4550 0    50   ~ 0
SWD Interface
Text GLabel 4050 4850 2    50   BiDi ~ 0
INT_C
Text GLabel 4050 4950 2    50   BiDi ~ 0
INT_B
$Comp
L Switch:SW_Push SW2
U 1 1 61348271
P 6250 5200
F 0 "SW2" H 6350 5400 50  0000 C CNN
F 1 "button" H 6400 5300 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_SKQG_WithStem" H 6250 5400 50  0001 C CNN
F 3 "~" H 6250 5400 50  0001 C CNN
	1    6250 5200
	1    0    0    -1  
$EndComp
Text GLabel 5850 5200 0    50   BiDi ~ 0
INT_B
$Comp
L power:GND #PWR07
U 1 1 6134BE68
P 6500 5500
F 0 "#PWR07" H 6500 5250 50  0001 C CNN
F 1 "GND" H 6505 5327 50  0000 C CNN
F 2 "" H 6500 5500 50  0001 C CNN
F 3 "" H 6500 5500 50  0001 C CNN
	1    6500 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5200 6050 5200
Wire Wire Line
	6450 5200 6500 5200
$Comp
L Device:C_Small C8
U 1 1 61358309
P 6250 5350
F 0 "C8" V 6400 5350 50  0000 C CNN
F 1 "100nF" V 6500 5350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6250 5350 50  0001 C CNN
F 3 "~" H 6250 5350 50  0001 C CNN
	1    6250 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 5350 6000 5350
Wire Wire Line
	6000 5350 6000 5200
Wire Wire Line
	6500 5200 6500 5350
Wire Wire Line
	6350 5350 6500 5350
Connection ~ 6500 5350
Wire Wire Line
	6500 5350 6500 5500
Text Notes 5450 4550 0    50   ~ 0
Button
$Comp
L power:VCC #PWR05
U 1 1 6136EBD5
P 6150 1300
F 0 "#PWR05" H 6150 1150 50  0001 C CNN
F 1 "VCC" H 6165 1473 50  0000 C CNN
F 2 "" H 6150 1300 50  0001 C CNN
F 3 "" H 6150 1300 50  0001 C CNN
	1    6150 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 61370063
P 6600 1600
F 0 "R10" H 6450 1650 50  0000 C CNN
F 1 "33k" H 6450 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6600 1600 50  0001 C CNN
F 3 "~" H 6600 1600 50  0001 C CNN
	1    6600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5200 6000 5200
Connection ~ 6000 5200
Wire Notes Line
	5450 4550 6750 4550
Text Notes 5450 1050 0    50   ~ 0
IR Sensor
$Comp
L Device:LED D10
U 1 1 613C3A96
P 7950 1400
F 0 "D10" H 8100 1300 50  0000 C CNN
F 1 "LED" H 7900 1300 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7950 1400 50  0001 C CNN
F 3 "~" H 7950 1400 50  0001 C CNN
	1    7950 1400
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 613C3E3F
P 8300 1400
F 0 "R1" V 8150 1400 50  0000 C CNN
F 1 "4k7" V 8250 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8300 1400 50  0001 C CNN
F 3 "~" H 8300 1400 50  0001 C CNN
	1    8300 1400
	0    1    1    0   
$EndComp
Text GLabel 7700 1400 0    50   BiDi ~ 0
L0
$Comp
L Device:LED D11
U 1 1 613C64D8
P 7950 1650
F 0 "D11" H 8100 1550 50  0000 C CNN
F 1 "LED" H 7900 1550 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7950 1650 50  0001 C CNN
F 3 "~" H 7950 1650 50  0001 C CNN
	1    7950 1650
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 613C64DE
P 8300 1650
F 0 "R2" V 8150 1650 50  0000 C CNN
F 1 "4k7" V 8250 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8300 1650 50  0001 C CNN
F 3 "~" H 8300 1650 50  0001 C CNN
	1    8300 1650
	0    1    1    0   
$EndComp
Text GLabel 7700 1650 0    50   BiDi ~ 0
L1
$Comp
L Device:LED D12
U 1 1 613CA46F
P 7950 1900
F 0 "D12" H 8100 1800 50  0000 C CNN
F 1 "LED" H 7900 1800 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7950 1900 50  0001 C CNN
F 3 "~" H 7950 1900 50  0001 C CNN
	1    7950 1900
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 613CA475
P 8300 1900
F 0 "R3" V 8150 1900 50  0000 C CNN
F 1 "4k7" V 8250 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8300 1900 50  0001 C CNN
F 3 "~" H 8300 1900 50  0001 C CNN
	1    8300 1900
	0    1    1    0   
$EndComp
Text GLabel 7700 1900 0    50   BiDi ~ 0
L2
$Comp
L Device:LED D13
U 1 1 613CD35E
P 7950 2150
F 0 "D13" H 8100 2050 50  0000 C CNN
F 1 "LED" H 7900 2050 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7950 2150 50  0001 C CNN
F 3 "~" H 7950 2150 50  0001 C CNN
	1    7950 2150
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 613CD364
P 8300 2150
F 0 "R4" V 8150 2150 50  0000 C CNN
F 1 "4k7" V 8250 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8300 2150 50  0001 C CNN
F 3 "~" H 8300 2150 50  0001 C CNN
	1    8300 2150
	0    1    1    0   
$EndComp
Text GLabel 7700 2150 0    50   BiDi ~ 0
L3
$Comp
L Device:LED D14
U 1 1 613D4806
P 7950 2400
F 0 "D14" H 8100 2300 50  0000 C CNN
F 1 "LED" H 7900 2300 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7950 2400 50  0001 C CNN
F 3 "~" H 7950 2400 50  0001 C CNN
	1    7950 2400
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 613D480C
P 8300 2400
F 0 "R5" V 8150 2400 50  0000 C CNN
F 1 "4k7" V 8250 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8300 2400 50  0001 C CNN
F 3 "~" H 8300 2400 50  0001 C CNN
	1    8300 2400
	0    1    1    0   
$EndComp
Text GLabel 7700 2400 0    50   BiDi ~ 0
L4
$Comp
L Device:LED D15
U 1 1 613D4813
P 7950 2650
F 0 "D15" H 8100 2550 50  0000 C CNN
F 1 "LED" H 7900 2550 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7950 2650 50  0001 C CNN
F 3 "~" H 7950 2650 50  0001 C CNN
	1    7950 2650
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 613D4819
P 8300 2650
F 0 "R6" V 8150 2650 50  0000 C CNN
F 1 "4k7" V 8250 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8300 2650 50  0001 C CNN
F 3 "~" H 8300 2650 50  0001 C CNN
	1    8300 2650
	0    1    1    0   
$EndComp
Text GLabel 7700 2650 0    50   BiDi ~ 0
L5
$Comp
L Device:LED D16
U 1 1 613D4820
P 7950 2900
F 0 "D16" H 8100 2800 50  0000 C CNN
F 1 "LED" H 7900 2800 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7950 2900 50  0001 C CNN
F 3 "~" H 7950 2900 50  0001 C CNN
	1    7950 2900
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 613D4826
P 8300 2900
F 0 "R7" V 8150 2900 50  0000 C CNN
F 1 "4k7" V 8250 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8300 2900 50  0001 C CNN
F 3 "~" H 8300 2900 50  0001 C CNN
	1    8300 2900
	0    1    1    0   
$EndComp
Text GLabel 7700 2900 0    50   BiDi ~ 0
L6
$Comp
L Device:LED D17
U 1 1 613D482D
P 7950 3150
F 0 "D17" H 8100 3050 50  0000 C CNN
F 1 "LED" H 7900 3050 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7950 3150 50  0001 C CNN
F 3 "~" H 7950 3150 50  0001 C CNN
	1    7950 3150
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 613D4833
P 8300 3150
F 0 "R8" V 8150 3150 50  0000 C CNN
F 1 "4k7" V 8250 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8300 3150 50  0001 C CNN
F 3 "~" H 8300 3150 50  0001 C CNN
	1    8300 3150
	0    1    1    0   
$EndComp
Text GLabel 7700 3150 0    50   BiDi ~ 0
L7
Wire Notes Line
	7350 1050 8650 1050
Wire Notes Line
	8650 1050 8650 3350
Text Notes 7350 1050 0    50   ~ 0
LEDs
Wire Wire Line
	7700 1400 7800 1400
Wire Wire Line
	8100 1400 8200 1400
Wire Wire Line
	7700 1650 7800 1650
Wire Wire Line
	8100 1650 8200 1650
Wire Wire Line
	7700 1900 7800 1900
Wire Wire Line
	8100 1900 8200 1900
Wire Wire Line
	7700 2150 7800 2150
Wire Wire Line
	8100 2150 8200 2150
Wire Wire Line
	7700 2400 7800 2400
Wire Wire Line
	8100 2400 8200 2400
Wire Wire Line
	7700 2650 7800 2650
Wire Wire Line
	8100 2650 8200 2650
Wire Wire Line
	7700 2900 7800 2900
Wire Wire Line
	8100 2900 8200 2900
Wire Wire Line
	7700 3150 7800 3150
Wire Wire Line
	8100 3150 8200 3150
Wire Wire Line
	8400 3150 8500 3150
Wire Wire Line
	8400 1400 8500 1400
Wire Wire Line
	8500 1400 8500 1650
Wire Wire Line
	8400 2900 8500 2900
Connection ~ 8500 2900
Wire Wire Line
	8500 2900 8500 3150
Wire Wire Line
	8400 2650 8500 2650
Connection ~ 8500 2650
Wire Wire Line
	8500 2650 8500 2900
Wire Wire Line
	8400 2400 8500 2400
Connection ~ 8500 2400
Wire Wire Line
	8500 2400 8500 2650
Wire Wire Line
	8400 2150 8500 2150
Connection ~ 8500 2150
Wire Wire Line
	8500 2150 8500 2400
Wire Wire Line
	8400 1900 8500 1900
Connection ~ 8500 1900
Wire Wire Line
	8500 1900 8500 2150
Wire Wire Line
	8400 1650 8500 1650
Connection ~ 8500 1650
Wire Wire Line
	8500 1650 8500 1900
Text GLabel 4050 6050 2    50   BiDi ~ 0
L0
Text GLabel 4050 5950 2    50   BiDi ~ 0
L1
Text GLabel 4050 5850 2    50   BiDi ~ 0
L2
Text GLabel 4050 5750 2    50   BiDi ~ 0
L3
Text GLabel 4050 5650 2    50   BiDi ~ 0
L4
Text GLabel 4050 5550 2    50   BiDi ~ 0
L5
Text GLabel 4050 5450 2    50   BiDi ~ 0
L6
Text GLabel 4050 5350 2    50   BiDi ~ 0
L7
Wire Notes Line
	1750 3800 4550 3800
Wire Notes Line
	4550 6550 1750 6550
Text Notes 1750 3800 0    50   ~ 0
Microcontroller
$Comp
L Device:R_Small R9
U 1 1 61682058
P 6000 5000
F 0 "R9" H 5900 5000 50  0000 C CNN
F 1 "10k" H 6100 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6000 5000 50  0001 C CNN
F 3 "~" H 6000 5000 50  0001 C CNN
	1    6000 5000
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 61682393
P 6000 4800
F 0 "#PWR08" H 6000 4650 50  0001 C CNN
F 1 "VCC" H 6015 4973 50  0000 C CNN
F 2 "" H 6000 4800 50  0001 C CNN
F 3 "" H 6000 4800 50  0001 C CNN
	1    6000 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5200 6000 5100
Wire Wire Line
	6000 4800 6000 4900
Wire Notes Line
	6750 4550 6750 5800
Wire Notes Line
	6750 5800 5450 5800
Wire Notes Line
	5450 5800 5450 4550
Wire Notes Line
	7350 3350 7350 1050
Wire Notes Line
	8650 3350 7350 3350
$Comp
L WYW_Library:STM32L010K8T6 U1
U 1 1 6133D8CA
P 3400 6150
F 0 "U1" H 3400 8315 50  0000 C CNN
F 1 "STM32L010K8T6" H 3400 8224 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 3400 6150 50  0001 C CNN
F 3 "" H 3400 6150 50  0001 C CNN
	1    3400 6150
	1    0    0    -1  
$EndComp
Text GLabel 7750 5250 0    50   BiDi ~ 0
SWEN
Text GLabel 4050 4750 2    50   BiDi ~ 0
SWDIO
Text GLabel 4050 4650 2    50   BiDi ~ 0
SWCLK
Text GLabel 2250 5600 0    50   BiDi ~ 0
SWEN
$Comp
L Device:R_Small R11
U 1 1 61379FFC
P 2350 5850
F 0 "R11" H 2250 5850 50  0000 C CNN
F 1 "10k" H 2500 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2350 5850 50  0001 C CNN
F 3 "~" H 2350 5850 50  0001 C CNN
	1    2350 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 613D0429
P 2700 5550
F 0 "R12" V 2600 5550 50  0000 C CNN
F 1 "10k" V 2800 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2700 5550 50  0001 C CNN
F 3 "~" H 2700 5550 50  0001 C CNN
	1    2700 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 5600 2350 5750
Wire Wire Line
	2500 5550 2600 5550
Wire Wire Line
	2800 5550 2900 5550
Wire Wire Line
	3900 4650 4050 4650
Wire Wire Line
	3900 4750 4050 4750
NoConn ~ 2900 5250
NoConn ~ 2900 5350
Wire Wire Line
	2500 4900 2500 4950
Wire Wire Line
	2500 5550 2500 4950
Connection ~ 2500 4950
Wire Wire Line
	2250 5600 2350 5600
Wire Wire Line
	2350 5950 2350 6050
Wire Wire Line
	2900 5750 2350 5750
Connection ~ 2350 5750
Wire Wire Line
	2900 5950 2350 5950
Connection ~ 2350 5950
Wire Wire Line
	2900 6050 2350 6050
Connection ~ 2350 6050
Wire Wire Line
	2350 6050 2350 6150
Wire Wire Line
	2500 4950 2800 4950
Wire Wire Line
	2900 4850 2800 4850
Wire Wire Line
	2800 4850 2800 4950
Connection ~ 2800 4950
Wire Wire Line
	2800 4950 2900 4950
Wire Wire Line
	2900 5050 2800 5050
Wire Wire Line
	2800 5050 2800 4950
Wire Notes Line
	4550 3800 4550 6550
Wire Notes Line
	1750 3800 1750 6550
Wire Wire Line
	3900 4850 4050 4850
Wire Wire Line
	3900 4950 4050 4950
Wire Wire Line
	3900 5350 4050 5350
Wire Wire Line
	3900 5450 4050 5450
Wire Wire Line
	3900 5550 4050 5550
Wire Wire Line
	3900 5650 4050 5650
Wire Wire Line
	3900 5750 4050 5750
Wire Wire Line
	3900 5850 4050 5850
Wire Wire Line
	3900 5950 4050 5950
Wire Wire Line
	3900 6050 4050 6050
NoConn ~ 3900 5250
NoConn ~ 3900 5150
NoConn ~ 3900 5050
NoConn ~ 2900 4250
NoConn ~ 2900 4350
NoConn ~ 2900 4450
NoConn ~ 2900 4550
NoConn ~ 2900 4650
NoConn ~ 3900 4550
NoConn ~ 3900 4350
Text GLabel 2600 1700 2    50   BiDi ~ 0
VBAT
$Comp
L Device:D D3
U 1 1 6137F251
P 2500 2150
F 0 "D3" H 2400 2200 50  0000 R CNN
F 1 "D" H 2400 2100 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2500 2150 50  0001 C CNN
F 3 "~" H 2500 2150 50  0001 C CNN
	1    2500 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 2150 2350 2150
Wire Wire Line
	2450 2050 2750 2050
Wire Wire Line
	2650 2150 2750 2150
Wire Wire Line
	2750 2150 2750 2050
Connection ~ 2750 2050
Wire Wire Line
	2750 2050 2850 2050
$Comp
L power:VCC #PWR0108
U 1 1 6140C001
P 8500 1300
F 0 "#PWR0108" H 8500 1150 50  0001 C CNN
F 1 "VCC" H 8500 1450 50  0000 C CNN
F 2 "" H 8500 1300 50  0001 C CNN
F 3 "" H 8500 1300 50  0001 C CNN
	1    8500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1400 8500 1300
Connection ~ 8500 1400
Text GLabel 4050 4250 2    50   BiDi ~ 0
VBAT
Wire Wire Line
	3900 4250 4050 4250
$Comp
L power:GND #PWR0110
U 1 1 614AB14B
P 6150 2200
F 0 "#PWR0110" H 6150 1950 50  0001 C CNN
F 1 "GND" H 6150 2050 50  0000 C CNN
F 2 "" H 6150 2200 50  0001 C CNN
F 3 "" H 6150 2200 50  0001 C CNN
	1    6150 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 61518390
P 8100 4950
F 0 "J1" H 8072 4924 50  0000 R CNN
F 1 "DBG_CONN" H 8072 4833 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 8100 4950 50  0001 C CNN
F 3 "~" H 8100 4950 50  0001 C CNN
	1    8100 4950
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0111
U 1 1 615233D8
P 7750 5150
F 0 "#PWR0111" H 7750 5000 50  0001 C CNN
F 1 "VCC" V 7750 5350 50  0000 C CNN
F 2 "" H 7750 5150 50  0001 C CNN
F 3 "" H 7750 5150 50  0001 C CNN
	1    7750 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7750 4750 7900 4750
Wire Wire Line
	7750 4850 7900 4850
Wire Wire Line
	7750 4950 7900 4950
Wire Wire Line
	7750 5050 7900 5050
Wire Wire Line
	7750 5150 7900 5150
Wire Wire Line
	7750 5250 7900 5250
Text GLabel 5750 2450 2    50   BiDi ~ 0
IR_OUT
$Comp
L Device:R_Small R15
U 1 1 6163B50B
P 5700 1600
F 0 "R15" H 5550 1550 50  0000 C CNN
F 1 "?M" H 5550 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5700 1600 50  0001 C CNN
F 3 "~" H 5700 1600 50  0001 C CNN
	1    5700 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 1400 2100 1500
Wire Wire Line
	2100 1400 2500 1400
Wire Wire Line
	2600 1700 2500 1700
Wire Wire Line
	2500 1700 2500 1400
Connection ~ 2500 1400
Wire Wire Line
	2500 1400 3050 1400
$Comp
L WYW_Library:GP2S60 U2
U 1 1 6169ABE5
P 6150 1750
F 0 "U2" H 6150 1865 50  0000 C CNN
F 1 "GP2S60" H 6150 1774 50  0000 C CNN
F 2 "WYW_Package:GP2S60_3217" H 6150 1750 50  0001 C CNN
F 3 "" H 6150 1750 50  0001 C CNN
	1    6150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1900 6600 1900
Wire Wire Line
	6600 1400 6600 1500
Wire Wire Line
	6600 1700 6600 1900
Wire Wire Line
	5700 1700 5700 1900
Wire Wire Line
	5700 1900 5800 1900
Wire Wire Line
	5700 1500 5700 1400
Wire Wire Line
	5700 1400 6150 1400
Wire Wire Line
	6150 1300 6150 1400
Connection ~ 6150 1400
Wire Wire Line
	6150 1400 6600 1400
Wire Wire Line
	5700 1900 5700 2450
Wire Wire Line
	5700 2450 5750 2450
Connection ~ 5700 1900
Wire Wire Line
	5800 2000 5800 2150
Wire Wire Line
	5800 2150 6150 2150
Wire Wire Line
	6500 2150 6500 2000
Wire Wire Line
	6150 2200 6150 2150
Connection ~ 6150 2150
Wire Wire Line
	6150 2150 6500 2150
$Comp
L Amplifier_Operational:TS881xCx U3
U 1 1 6170A209
P 6300 3000
F 0 "U3" H 6300 3000 50  0000 L CNN
F 1 "TS881" H 6350 2850 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 6200 2800 50  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/a2/60/3e/5d/b2/c1/4a/e9/DM00057901.pdf/files/DM00057901.pdf/jcr:content/translations/en.DM00057901.pdf" H 6300 3000 50  0001 C CNN
	1    6300 3000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 6170A850
P 6400 2600
F 0 "#PWR03" H 6400 2450 50  0001 C CNN
F 1 "VCC" H 6415 2773 50  0000 C CNN
F 2 "" H 6400 2600 50  0001 C CNN
F 3 "" H 6400 2600 50  0001 C CNN
	1    6400 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6170ADBE
P 6400 3450
F 0 "#PWR04" H 6400 3200 50  0001 C CNN
F 1 "GND" H 6400 3300 50  0000 C CNN
F 2 "" H 6400 3450 50  0001 C CNN
F 3 "" H 6400 3450 50  0001 C CNN
	1    6400 3450
	1    0    0    -1  
$EndComp
Text GLabel 6600 3000 2    50   BiDi ~ 0
INT_C
Text GLabel 5950 2800 0    50   BiDi ~ 0
IR_OUT
$Comp
L Device:R_Small R14
U 1 1 61711D94
P 5900 3250
F 0 "R14" H 6000 3350 50  0000 C CNN
F 1 "?M" H 5800 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5900 3250 50  0001 C CNN
F 3 "~" H 5900 3250 50  0001 C CNN
	1    5900 3250
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R13
U 1 1 61713551
P 5700 3100
F 0 "R13" V 5600 3100 50  0000 C CNN
F 1 "?M" V 5800 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5700 3100 50  0001 C CNN
F 3 "~" H 5700 3100 50  0001 C CNN
	1    5700 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 3100 5550 3100
Wire Wire Line
	5550 3100 5550 2650
Wire Wire Line
	6200 2650 6200 2700
Wire Wire Line
	5900 3350 5900 3400
Wire Wire Line
	6200 3400 6200 3300
Wire Wire Line
	5800 3100 5900 3100
Wire Wire Line
	5900 3150 5900 3100
Connection ~ 5900 3100
Wire Wire Line
	5900 3100 6000 3100
Wire Wire Line
	5950 2800 6000 2800
Wire Wire Line
	6000 2800 6000 2900
Wire Wire Line
	5550 2650 6200 2650
Wire Wire Line
	6200 2650 6400 2650
Wire Wire Line
	6400 2650 6400 2600
Connection ~ 6200 2650
Wire Wire Line
	6200 3400 6400 3400
Wire Wire Line
	6400 3400 6400 3450
Connection ~ 6200 3400
Wire Wire Line
	5900 3400 6200 3400
Wire Notes Line
	6950 1050 6950 3700
Wire Notes Line
	6950 3700 5450 3700
Wire Notes Line
	5450 3700 5450 1050
Wire Notes Line
	5450 1050 6950 1050
$EndSCHEMATC
