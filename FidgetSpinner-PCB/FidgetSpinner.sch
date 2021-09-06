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
F 1 "CR2032" H 3668 1655 50  0000 L CNN
F 2 "WYW_Package:CR2450_Centered" V 3550 1710 50  0001 C CNN
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
F 1 "CR2032" H 4168 1655 50  0000 L CNN
F 2 "WYW_Package:CR2450_Centered" V 4050 1710 50  0001 C CNN
F 3 "~" V 4050 1710 50  0001 C CNN
	1    4050 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT3
U 1 1 612D66FF
P 4550 1650
F 0 "BT3" H 4668 1746 50  0000 L CNN
F 1 "CR2032" H 4668 1655 50  0000 L CNN
F 2 "WYW_Package:CR2450_Centered" V 4550 1710 50  0001 C CNN
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
P 7350 5250
F 0 "#PWR0106" H 7350 5000 50  0001 C CNN
F 1 "GND" V 7350 5050 50  0000 C CNN
F 2 "" H 7350 5250 50  0001 C CNN
F 3 "" H 7350 5250 50  0001 C CNN
	1    7350 5250
	0    1    1    0   
$EndComp
Text GLabel 7350 5150 0    50   BiDi ~ 0
SWDIO
$Comp
L power:VCC #PWR0107
U 1 1 612FDAD6
P 7350 5450
F 0 "#PWR0107" H 7350 5300 50  0001 C CNN
F 1 "VCC" V 7350 5650 50  0000 C CNN
F 2 "" H 7350 5450 50  0001 C CNN
F 3 "" H 7350 5450 50  0001 C CNN
	1    7350 5450
	0    -1   -1   0   
$EndComp
Text GLabel 7350 5350 0    50   BiDi ~ 0
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
	6800 4950 8250 4950
Wire Notes Line
	8250 4950 8250 5750
Wire Notes Line
	8250 5750 6800 5750
Wire Notes Line
	6800 5750 6800 4950
Text Notes 6800 4950 0    50   ~ 0
SWD Interface
Text GLabel 4050 4850 2    50   BiDi ~ 0
~INT_C
Text GLabel 4050 4950 2    50   BiDi ~ 0
INT_B
$Comp
L Device:LED D2
U 1 1 613466D1
P 7200 1450
F 0 "D2" H 7193 1195 50  0000 C CNN
F 1 "LED_IR" H 7193 1286 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7200 1450 50  0001 C CNN
F 3 "~" H 7200 1450 50  0001 C CNN
	1    7200 1450
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 61348271
P 7600 3500
F 0 "SW2" H 7700 3700 50  0000 C CNN
F 1 "button" H 7750 3600 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_SKQG_WithStem" H 7600 3700 50  0001 C CNN
F 3 "~" H 7600 3700 50  0001 C CNN
	1    7600 3500
	1    0    0    -1  
$EndComp
Text GLabel 7200 3500 0    50   BiDi ~ 0
INT_B
$Comp
L power:GND #PWR07
U 1 1 6134BE68
P 7850 3800
F 0 "#PWR07" H 7850 3550 50  0001 C CNN
F 1 "GND" H 7855 3627 50  0000 C CNN
F 2 "" H 7850 3800 50  0001 C CNN
F 3 "" H 7850 3800 50  0001 C CNN
	1    7850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3500 7400 3500
Wire Wire Line
	7800 3500 7850 3500
$Comp
L Device:C_Small C8
U 1 1 61358309
P 7600 3650
F 0 "C8" V 7750 3650 50  0000 C CNN
F 1 "100nF" V 7850 3650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7600 3650 50  0001 C CNN
F 3 "~" H 7600 3650 50  0001 C CNN
	1    7600 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 3650 7350 3650
Wire Wire Line
	7350 3650 7350 3500
Wire Wire Line
	7850 3500 7850 3650
Wire Wire Line
	7700 3650 7850 3650
Connection ~ 7850 3650
Wire Wire Line
	7850 3650 7850 3800
Text Notes 6800 2850 0    50   ~ 0
Human Interface
$Comp
L power:VCC #PWR05
U 1 1 6136EBD5
P 6950 1350
F 0 "#PWR05" H 6950 1200 50  0001 C CNN
F 1 "VCC" H 6965 1523 50  0000 C CNN
F 2 "" H 6950 1350 50  0001 C CNN
F 3 "" H 6950 1350 50  0001 C CNN
	1    6950 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 61370063
P 7550 1450
F 0 "R10" V 7354 1450 50  0000 C CNN
F 1 "R_IR" V 7445 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7550 1450 50  0001 C CNN
F 3 "~" H 7550 1450 50  0001 C CNN
	1    7550 1450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6137064F
P 7750 2250
F 0 "#PWR06" H 7750 2000 50  0001 C CNN
F 1 "GND" H 7755 2077 50  0000 C CNN
F 2 "" H 7750 2250 50  0001 C CNN
F 3 "" H 7750 2250 50  0001 C CNN
	1    7750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1350 6950 1450
Wire Wire Line
	6950 1450 7050 1450
Wire Wire Line
	7350 1450 7450 1450
Wire Wire Line
	7650 1450 7750 1450
Text GLabel 7150 1900 0    50   BiDi ~ 0
~INT_C
Wire Wire Line
	7200 3500 7350 3500
Connection ~ 7350 3500
Wire Notes Line
	6800 2850 8100 2850
Wire Notes Line
	6800 1050 7950 1050
Wire Notes Line
	7950 1050 7950 2550
Wire Notes Line
	7950 2550 6800 2550
Wire Notes Line
	6800 2550 6800 1050
Text Notes 6800 1050 0    50   ~ 0
IR Sensor
$Comp
L Device:LED D10
U 1 1 613C3A96
P 9000 1250
F 0 "D10" H 9150 1150 50  0000 C CNN
F 1 "LED" H 8950 1150 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9000 1250 50  0001 C CNN
F 3 "~" H 9000 1250 50  0001 C CNN
	1    9000 1250
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 613C3E3F
P 9350 1250
F 0 "R1" V 9200 1250 50  0000 C CNN
F 1 "4k7" V 9300 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9350 1250 50  0001 C CNN
F 3 "~" H 9350 1250 50  0001 C CNN
	1    9350 1250
	0    1    1    0   
$EndComp
Text GLabel 8750 1250 0    50   BiDi ~ 0
L0
$Comp
L power:GND #PWR04
U 1 1 613C454B
P 9550 3100
F 0 "#PWR04" H 9550 2850 50  0001 C CNN
F 1 "GND" H 9555 2927 50  0000 C CNN
F 2 "" H 9550 3100 50  0001 C CNN
F 3 "" H 9550 3100 50  0001 C CNN
	1    9550 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D11
U 1 1 613C64D8
P 9000 1500
F 0 "D11" H 9150 1400 50  0000 C CNN
F 1 "LED" H 8950 1400 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9000 1500 50  0001 C CNN
F 3 "~" H 9000 1500 50  0001 C CNN
	1    9000 1500
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 613C64DE
P 9350 1500
F 0 "R2" V 9200 1500 50  0000 C CNN
F 1 "4k7" V 9300 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9350 1500 50  0001 C CNN
F 3 "~" H 9350 1500 50  0001 C CNN
	1    9350 1500
	0    1    1    0   
$EndComp
Text GLabel 8750 1500 0    50   BiDi ~ 0
L1
$Comp
L Device:LED D12
U 1 1 613CA46F
P 9000 1750
F 0 "D12" H 9150 1650 50  0000 C CNN
F 1 "LED" H 8950 1650 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9000 1750 50  0001 C CNN
F 3 "~" H 9000 1750 50  0001 C CNN
	1    9000 1750
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 613CA475
P 9350 1750
F 0 "R3" V 9200 1750 50  0000 C CNN
F 1 "4k7" V 9300 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9350 1750 50  0001 C CNN
F 3 "~" H 9350 1750 50  0001 C CNN
	1    9350 1750
	0    1    1    0   
$EndComp
Text GLabel 8750 1750 0    50   BiDi ~ 0
L2
$Comp
L Device:LED D13
U 1 1 613CD35E
P 9000 2000
F 0 "D13" H 9150 1900 50  0000 C CNN
F 1 "LED" H 8950 1900 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9000 2000 50  0001 C CNN
F 3 "~" H 9000 2000 50  0001 C CNN
	1    9000 2000
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 613CD364
P 9350 2000
F 0 "R4" V 9200 2000 50  0000 C CNN
F 1 "4k7" V 9300 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9350 2000 50  0001 C CNN
F 3 "~" H 9350 2000 50  0001 C CNN
	1    9350 2000
	0    1    1    0   
$EndComp
Text GLabel 8750 2000 0    50   BiDi ~ 0
L3
$Comp
L Device:LED D14
U 1 1 613D4806
P 9000 2250
F 0 "D14" H 9150 2150 50  0000 C CNN
F 1 "LED" H 8950 2150 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9000 2250 50  0001 C CNN
F 3 "~" H 9000 2250 50  0001 C CNN
	1    9000 2250
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 613D480C
P 9350 2250
F 0 "R5" V 9200 2250 50  0000 C CNN
F 1 "4k7" V 9300 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9350 2250 50  0001 C CNN
F 3 "~" H 9350 2250 50  0001 C CNN
	1    9350 2250
	0    1    1    0   
$EndComp
Text GLabel 8750 2250 0    50   BiDi ~ 0
L4
$Comp
L Device:LED D15
U 1 1 613D4813
P 9000 2500
F 0 "D15" H 9150 2400 50  0000 C CNN
F 1 "LED" H 8950 2400 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9000 2500 50  0001 C CNN
F 3 "~" H 9000 2500 50  0001 C CNN
	1    9000 2500
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 613D4819
P 9350 2500
F 0 "R6" V 9200 2500 50  0000 C CNN
F 1 "4k7" V 9300 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9350 2500 50  0001 C CNN
F 3 "~" H 9350 2500 50  0001 C CNN
	1    9350 2500
	0    1    1    0   
$EndComp
Text GLabel 8750 2500 0    50   BiDi ~ 0
L5
$Comp
L Device:LED D16
U 1 1 613D4820
P 9000 2750
F 0 "D16" H 9150 2650 50  0000 C CNN
F 1 "LED" H 8950 2650 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9000 2750 50  0001 C CNN
F 3 "~" H 9000 2750 50  0001 C CNN
	1    9000 2750
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 613D4826
P 9350 2750
F 0 "R7" V 9200 2750 50  0000 C CNN
F 1 "4k7" V 9300 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9350 2750 50  0001 C CNN
F 3 "~" H 9350 2750 50  0001 C CNN
	1    9350 2750
	0    1    1    0   
$EndComp
Text GLabel 8750 2750 0    50   BiDi ~ 0
L6
$Comp
L Device:LED D17
U 1 1 613D482D
P 9000 3000
F 0 "D17" H 9150 2900 50  0000 C CNN
F 1 "LED" H 8950 2900 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9000 3000 50  0001 C CNN
F 3 "~" H 9000 3000 50  0001 C CNN
	1    9000 3000
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 613D4833
P 9350 3000
F 0 "R8" V 9200 3000 50  0000 C CNN
F 1 "4k7" V 9300 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9350 3000 50  0001 C CNN
F 3 "~" H 9350 3000 50  0001 C CNN
	1    9350 3000
	0    1    1    0   
$EndComp
Text GLabel 8750 3000 0    50   BiDi ~ 0
L7
Wire Notes Line
	8400 1050 9700 1050
Wire Notes Line
	9700 1050 9700 3350
Text Notes 8400 1050 0    50   ~ 0
LEDs
Wire Wire Line
	8750 1250 8850 1250
Wire Wire Line
	9150 1250 9250 1250
Wire Wire Line
	8750 1500 8850 1500
Wire Wire Line
	9150 1500 9250 1500
Wire Wire Line
	8750 1750 8850 1750
Wire Wire Line
	9150 1750 9250 1750
Wire Wire Line
	8750 2000 8850 2000
Wire Wire Line
	9150 2000 9250 2000
Wire Wire Line
	8750 2250 8850 2250
Wire Wire Line
	9150 2250 9250 2250
Wire Wire Line
	8750 2500 8850 2500
Wire Wire Line
	9150 2500 9250 2500
Wire Wire Line
	8750 2750 8850 2750
Wire Wire Line
	9150 2750 9250 2750
Wire Wire Line
	8750 3000 8850 3000
Wire Wire Line
	9150 3000 9250 3000
Wire Wire Line
	9450 3000 9550 3000
Wire Wire Line
	9550 3000 9550 3100
Wire Wire Line
	9450 1250 9550 1250
Wire Wire Line
	9550 1250 9550 1500
Connection ~ 9550 3000
Wire Wire Line
	9450 2750 9550 2750
Connection ~ 9550 2750
Wire Wire Line
	9550 2750 9550 3000
Wire Wire Line
	9450 2500 9550 2500
Connection ~ 9550 2500
Wire Wire Line
	9550 2500 9550 2750
Wire Wire Line
	9450 2250 9550 2250
Connection ~ 9550 2250
Wire Wire Line
	9550 2250 9550 2500
Wire Wire Line
	9450 2000 9550 2000
Connection ~ 9550 2000
Wire Wire Line
	9550 2000 9550 2250
Wire Wire Line
	9450 1750 9550 1750
Connection ~ 9550 1750
Wire Wire Line
	9550 1750 9550 2000
Wire Wire Line
	9450 1500 9550 1500
Connection ~ 9550 1500
Wire Wire Line
	9550 1500 9550 1750
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
L Device:Q_Photo_NPN Q1
U 1 1 6163779A
P 7450 1800
F 0 "Q1" V 7350 1650 50  0000 C CNN
F 1 "Q_Photo_NPN" V 7700 1800 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7650 1900 50  0001 C CNN
F 3 "~" H 7450 1800 50  0001 C CNN
	1    7450 1800
	0    -1   1    0   
$EndComp
Wire Wire Line
	7750 1450 7750 1900
Wire Wire Line
	7650 1900 7750 1900
Connection ~ 7750 1900
Wire Wire Line
	7150 1900 7250 1900
Wire Wire Line
	7750 1900 7750 2250
$Comp
L Device:R_Small R9
U 1 1 61682058
P 7350 3300
F 0 "R9" H 7250 3300 50  0000 C CNN
F 1 "10k" H 7450 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7350 3300 50  0001 C CNN
F 3 "~" H 7350 3300 50  0001 C CNN
	1    7350 3300
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 61682393
P 7350 3100
F 0 "#PWR08" H 7350 2950 50  0001 C CNN
F 1 "VCC" H 7365 3273 50  0000 C CNN
F 2 "" H 7350 3100 50  0001 C CNN
F 3 "" H 7350 3100 50  0001 C CNN
	1    7350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3500 7350 3400
Wire Wire Line
	7350 3100 7350 3200
Wire Notes Line
	8100 2850 8100 4100
Wire Notes Line
	8100 4100 6800 4100
Wire Notes Line
	6800 4100 6800 2850
Wire Notes Line
	8400 3350 8400 1050
Wire Notes Line
	9700 3350 8400 3350
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
Text GLabel 7350 5550 0    50   BiDi ~ 0
SWEN
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 6136C921
P 7550 5350
F 0 "J1" H 7630 5392 50  0000 L CNN
F 1 "EdgeConnector" H 7630 5301 50  0000 L CNN
F 2 "WYW_Package:Edge_2x05_2.54" H 7550 5350 50  0001 C CNN
F 3 "~" H 7550 5350 50  0001 C CNN
	1    7550 5350
	1    0    0    -1  
$EndComp
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
NoConn ~ 3900 4250
Text GLabel 2900 1400 0    50   BiDi ~ 0
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
Text GLabel 2150 1350 2    50   BiDi ~ 0
VBAT
Wire Wire Line
	2150 1350 2100 1350
Wire Wire Line
	2100 1350 2100 1500
Wire Wire Line
	2900 1400 3050 1400
$EndSCHEMATC
