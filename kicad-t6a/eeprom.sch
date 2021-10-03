EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "1MBIT EEPROM PMOD"
Date "2021-08-14"
Rev "V1.1"
Comp "FM4DD"
Comment1 "2021 (C) FM4DD"
Comment2 "STMicroelectronics M24M01-R"
Comment3 "License: CC-BY-SA 4.0"
Comment4 ""
$EndDescr
Text Label 3150 2850 0    50   ~ 0
SCL
Text Label 3150 2950 0    50   ~ 0
SDA
$Comp
L Device:R R1
U 1 1 5E5E59B2
P 3850 3400
F 0 "R1" H 3900 3400 50  0000 L CNN
F 1 "4.7K" V 3850 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3780 3400 50  0001 C CNN
F 3 "~" H 3850 3400 50  0001 C CNN
	1    3850 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E5E607C
P 4050 3400
F 0 "R2" H 4100 3400 50  0000 L CNN
F 1 "4.7K" V 4050 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3980 3400 50  0001 C CNN
F 3 "~" H 4050 3400 50  0001 C CNN
	1    4050 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3150 3350 3150
Text Label 3150 3050 0    50   ~ 0
GND
Text Label 3150 3150 0    50   ~ 0
3V3
Wire Wire Line
	3150 3050 3500 3050
Wire Wire Line
	3500 3050 3500 3500
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J2
U 1 1 61131E16
P 2950 2850
F 0 "J2" H 3000 3267 50  0000 C CNN
F 1 "PMOD_02x06" H 3000 3176 50  0000 C CNN
F 2 "FM4DD:PMODHeader_2x06_P2.54mm_Horizontal" H 2950 2850 50  0001 C CNN
F 3 "~" H 2950 2850 50  0001 C CNN
	1    2950 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3350 3150 3350 3300
Wire Wire Line
	3350 3300 2900 3300
Wire Wire Line
	2450 3300 2450 3150
Wire Wire Line
	2450 3150 2650 3150
Connection ~ 3350 3150
Wire Wire Line
	2650 3050 2300 3050
Wire Wire Line
	2300 3050 2300 3650
$Comp
L power:GND #PWR0102
U 1 1 61140407
P 2300 3650
F 0 "#PWR0102" H 2300 3400 50  0001 C CNN
F 1 "GND" H 2305 3474 50  0000 C CNN
F 2 "" H 2300 3650 50  0001 C CNN
F 3 "" H 2300 3650 50  0001 C CNN
	1    2300 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 61140C31
P 3200 3500
F 0 "C1" V 2950 3500 50  0000 C CNN
F 1 "0.1uF" V 3050 3500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3200 3500 50  0001 C CNN
F 3 "~" H 3200 3500 50  0001 C CNN
	1    3200 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 3500 3500 3500
Connection ~ 3500 3500
Wire Wire Line
	3500 3500 3500 3650
Wire Wire Line
	3100 3500 2900 3500
Wire Wire Line
	2900 3500 2900 3300
Connection ~ 2900 3300
Wire Wire Line
	2900 3300 2450 3300
Wire Wire Line
	4050 3550 4050 3650
$Comp
L FM4DD:M24M01-R U1
U 1 1 6115B5DA
P 5500 3850
F 0 "U1" H 5250 3500 50  0000 C CNN
F 1 "M24M01-R" H 5600 3500 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5600 3500 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/m24m01-df.pdf" H 5500 3850 50  0001 C CNN
	1    5500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3750 6050 3750
Wire Wire Line
	5900 3850 6150 3850
Wire Wire Line
	5100 4050 4900 4050
$Comp
L power:GND #PWR0105
U 1 1 5EB63741
P 3500 3650
F 0 "#PWR0105" H 3500 3400 50  0001 C CNN
F 1 "GND" H 3505 3474 50  0000 C CNN
F 2 "" H 3500 3650 50  0001 C CNN
F 3 "" H 3500 3650 50  0001 C CNN
	1    3500 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4050 6300 4050
Wire Wire Line
	6300 4050 6300 3350
$Comp
L power:+3V3 #PWR0110
U 1 1 611A350E
P 6300 3350
F 0 "#PWR0110" H 6300 3200 50  0001 C CNN
F 1 "+3V3" H 6315 3526 50  0000 C CNN
F 2 "" H 6300 3350 50  0001 C CNN
F 3 "" H 6300 3350 50  0001 C CNN
	1    6300 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 611BFD6D
P 6300 4250
F 0 "C3" V 6050 4250 50  0000 C CNN
F 1 "0.1uF" V 6150 4250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6300 4250 50  0001 C CNN
F 3 "~" H 6300 4250 50  0001 C CNN
	1    6300 4250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 611DC81E
P 6050 4250
F 0 "R3" H 6100 4250 50  0000 L CNN
F 1 "10K" V 6050 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5980 4250 50  0001 C CNN
F 3 "~" H 6050 4250 50  0001 C CNN
	1    6050 4250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x04 SW1
U 1 1 611E9685
P 4450 3750
F 0 "SW1" H 4450 3500 50  0000 C CNN
F 1 "SW_DIP_x04" H 4450 4126 50  0001 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx04_Slide_6.7x11.72mm_W7.62mm_P2.54mm_LowProfile" H 4450 3750 50  0001 C CNN
F 3 "~" H 4450 3750 50  0001 C CNN
	1    4450 3750
	1    0    0    1   
$EndComp
Wire Wire Line
	4750 3650 4900 3650
Wire Wire Line
	4750 3750 5000 3750
Wire Wire Line
	4750 3850 5100 3850
Wire Wire Line
	4750 3950 5100 3950
Wire Wire Line
	4150 3650 4050 3650
Wire Wire Line
	4150 3750 3850 3750
Wire Wire Line
	3850 3550 3850 3750
Wire Wire Line
	6300 4050 6300 4150
Wire Wire Line
	6050 4100 6050 3950
Wire Wire Line
	5900 3950 6050 3950
Wire Wire Line
	6050 4500 6050 4550
Wire Wire Line
	6300 4350 6300 4500
Wire Wire Line
	4900 4050 4900 4500
Wire Wire Line
	6050 4400 6050 4500
Connection ~ 6050 4500
Connection ~ 6300 4050
Wire Wire Line
	6050 4500 6300 4500
$Comp
L power:GND #PWR0108
U 1 1 611CA655
P 6050 4550
F 0 "#PWR0108" H 6050 4300 50  0001 C CNN
F 1 "GND" H 6055 4374 50  0000 C CNN
F 2 "" H 6050 4550 50  0001 C CNN
F 3 "" H 6050 4550 50  0001 C CNN
	1    6050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4500 4900 4500
Text Label 3150 2650 0    50   ~ 0
INT
Text Label 3150 2750 0    50   ~ 0
RESET
Text Label 5550 2350 0    50   ~ 0
IO1
Text Label 5550 2250 0    50   ~ 0
IO2
Text Label 5550 2150 0    50   ~ 0
IO3
Text Label 5550 2050 0    50   ~ 0
IO4
$Comp
L FM4DD:Logo_KiCad_5mm L1
U 1 1 61191823
P 8300 6300
F 0 "L1" H 8300 6300 50  0001 C CNN
F 1 "Logo_KiCad_5mm" H 8300 6300 50  0001 C CNN
F 2 "FM4DD:KiCad-Logo2_5mm_SilkScreen" H 8528 6300 50  0000 L CNN
F 3 "" H 8300 6300 50  0001 C CNN
	1    8300 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3150 6600 3150
Wire Wire Line
	6600 3150 6600 2950
Wire Wire Line
	6750 3400 6500 3400
Text Label 4850 3850 0    50   ~ 0
A1
Text Label 4850 3950 0    50   ~ 0
A2
$Comp
L Connector:TestPoint TP1
U 1 1 6146C65D
P 6750 3150
F 0 "TP1" V 6650 3450 50  0000 L CNN
F 1 "TestPoint" V 6650 3050 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 6950 3150 50  0001 C CNN
F 3 "~" H 6950 3150 50  0001 C CNN
	1    6750 3150
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 6146CE60
P 6750 3400
F 0 "TP2" V 6650 3700 50  0000 L CNN
F 1 "TestPoint" V 6650 3300 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 6950 3400 50  0001 C CNN
F 3 "~" H 6950 3400 50  0001 C CNN
	1    6750 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 3850 3700 3850
Wire Wire Line
	3700 3850 3700 3150
Wire Wire Line
	3850 3250 3850 3150
Wire Wire Line
	3850 3150 3700 3150
Connection ~ 3700 3150
Wire Wire Line
	3700 3150 3350 3150
Wire Wire Line
	4050 3250 4050 3150
Wire Wire Line
	4050 3150 3850 3150
Connection ~ 3850 3150
Wire Wire Line
	4150 3950 3700 3950
Wire Wire Line
	3700 3950 3700 3850
Connection ~ 3700 3850
Wire Wire Line
	9000 3050 9000 3650
Wire Wire Line
	7800 3500 7800 3650
Connection ~ 7800 3500
Text Label 7900 2750 0    50   ~ 0
RESET
Text Label 8000 2650 0    50   ~ 0
INT
Text Label 8000 3150 0    50   ~ 0
3V3
Text Label 8000 2850 0    50   ~ 0
SCL
Text Label 8000 2950 0    50   ~ 0
SDA
Text Label 8000 3050 0    50   ~ 0
GND
$Comp
L power:+3V3 #PWR0106
U 1 1 6114AB14
P 3350 1950
F 0 "#PWR0106" H 3350 1800 50  0001 C CNN
F 1 "+3V3" H 3365 2126 50  0000 C CNN
F 2 "" H 3350 1950 50  0001 C CNN
F 3 "" H 3350 1950 50  0001 C CNN
	1    3350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3300 8850 3300
Connection ~ 8400 3300
Wire Wire Line
	8850 3150 8650 3150
Wire Wire Line
	8850 3300 8850 3150
Wire Wire Line
	7950 3300 8400 3300
Wire Wire Line
	7950 3150 7950 3300
Wire Wire Line
	8150 3150 7950 3150
Wire Wire Line
	8650 3050 9000 3050
Wire Wire Line
	8150 3050 7800 3050
Wire Wire Line
	8400 3500 8400 3300
Wire Wire Line
	8000 3500 7800 3500
Wire Wire Line
	8200 3500 8400 3500
$Comp
L Device:C_Small C2
U 1 1 61147845
P 8100 3500
F 0 "C2" V 8350 3500 50  0000 C CNN
F 1 "0.1uF" V 8250 3500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8100 3500 50  0001 C CNN
F 3 "~" H 8100 3500 50  0001 C CNN
	1    8100 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6114783F
P 7800 3650
F 0 "#PWR0104" H 7800 3400 50  0001 C CNN
F 1 "GND" H 7805 3474 50  0000 C CNN
F 2 "" H 7800 3650 50  0001 C CNN
F 3 "" H 7800 3650 50  0001 C CNN
	1    7800 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 61147837
P 9000 3650
F 0 "#PWR0103" H 9000 3400 50  0001 C CNN
F 1 "GND" H 9005 3474 50  0000 C CNN
F 2 "" H 9000 3650 50  0001 C CNN
F 3 "" H 9000 3650 50  0001 C CNN
	1    9000 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J1
U 1 1 61134033
P 8350 2850
F 0 "J1" H 8400 3267 50  0000 C CNN
F 1 "PMOD_02x06" H 8400 3176 50  0000 C CNN
F 2 "FM4DD:PMODPinSocket_2x06_P2.54mm_Horizontal" H 8350 2850 50  0001 C CNN
F 3 "~" H 8350 2850 50  0001 C CNN
	1    8350 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2850 6500 3400
$Comp
L power:+3V3 #PWR0101
U 1 1 5AED6787
P 7950 1950
F 0 "#PWR0101" H 7950 1800 50  0001 C CNN
F 1 "+3V3" H 7965 2126 50  0000 C CNN
F 2 "" H 7950 1950 50  0001 C CNN
F 3 "" H 7950 1950 50  0001 C CNN
	1    7950 1950
	1    0    0    -1  
$EndComp
Connection ~ 7800 3250
Wire Wire Line
	7800 3250 7800 3500
Wire Wire Line
	7800 3050 7800 3250
Wire Wire Line
	7450 3250 7800 3250
$Comp
L Connector:TestPoint TP3
U 1 1 6146D657
P 7450 3250
F 0 "TP3" V 7550 3100 50  0000 R CNN
F 1 "TestPoint" V 7550 3500 50  0000 R CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 7650 3250 50  0001 C CNN
F 3 "~" H 7650 3250 50  0001 C CNN
	1    7450 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 2650 3150 2650
Wire Wire Line
	3150 2750 8150 2750
Wire Wire Line
	8150 2850 6500 2850
Connection ~ 6500 2850
Wire Wire Line
	8150 2950 6600 2950
Connection ~ 6600 2950
Wire Wire Line
	8650 2650 8700 2650
Wire Wire Line
	8700 2650 8700 2350
Wire Wire Line
	2600 2350 2600 2650
Wire Wire Line
	8650 2750 8800 2750
Wire Wire Line
	8800 2750 8800 2250
Wire Wire Line
	2500 2250 2500 2750
Wire Wire Line
	8650 2850 8900 2850
Wire Wire Line
	2400 2150 2400 2850
Wire Wire Line
	8650 2950 9000 2950
Wire Wire Line
	9000 2950 9000 2050
Wire Wire Line
	2300 2050 2300 2950
Wire Wire Line
	2600 2650 2650 2650
Wire Wire Line
	2500 2750 2650 2750
Wire Wire Line
	2400 2850 2650 2850
Wire Wire Line
	2300 2950 2650 2950
Wire Wire Line
	8700 2350 2600 2350
Wire Wire Line
	8800 2250 2500 2250
Wire Wire Line
	8900 2850 8900 2150
Wire Wire Line
	8900 2150 2400 2150
Wire Wire Line
	9000 2050 2300 2050
Wire Wire Line
	3350 3150 3350 1950
Wire Wire Line
	7950 3150 7950 1950
Connection ~ 7950 3150
Wire Wire Line
	6050 3750 6050 2950
Connection ~ 6050 2950
Wire Wire Line
	6050 2950 6600 2950
Wire Wire Line
	6150 3850 6150 2850
Connection ~ 6150 2850
Wire Wire Line
	6150 2850 6500 2850
Wire Wire Line
	3150 2950 4900 2950
Wire Wire Line
	3150 2850 5000 2850
Wire Wire Line
	4900 3650 4900 2950
Connection ~ 4900 2950
Wire Wire Line
	4900 2950 6050 2950
Wire Wire Line
	5000 3750 5000 2850
Connection ~ 5000 2850
Wire Wire Line
	5000 2850 6150 2850
$EndSCHEMATC
