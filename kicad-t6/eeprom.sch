EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "1MBIT EEPROM PMOD"
Date "2021-09-05"
Rev "V1.0"
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
P 3950 3400
F 0 "R1" H 4000 3400 50  0000 L CNN
F 1 "4.7K" V 3950 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3880 3400 50  0001 C CNN
F 3 "~" H 3950 3400 50  0001 C CNN
	1    3950 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E5E607C
P 4150 3400
F 0 "R2" H 4200 3400 50  0000 L CNN
F 1 "4.7K" V 4150 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4080 3400 50  0001 C CNN
F 3 "~" H 4150 3400 50  0001 C CNN
	1    4150 3400
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
$Comp
L power:GND #PWR0104
U 1 1 6114783F
P 7850 3650
F 0 "#PWR0104" H 7850 3400 50  0001 C CNN
F 1 "GND" H 7855 3474 50  0000 C CNN
F 2 "" H 7850 3650 50  0001 C CNN
F 3 "" H 7850 3650 50  0001 C CNN
	1    7850 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 61147845
P 8000 3350
F 0 "C2" V 8200 3350 50  0000 C CNN
F 1 "0.1uF" V 8100 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8000 3350 50  0001 C CNN
F 3 "~" H 8000 3350 50  0001 C CNN
	1    8000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3050 7850 3050
Wire Wire Line
	8200 3150 8000 3150
$Comp
L power:+3V3 #PWR0106
U 1 1 6114AB14
P 8000 2450
F 0 "#PWR0106" H 8000 2300 50  0001 C CNN
F 1 "+3V3" H 8015 2626 50  0000 C CNN
F 2 "" H 8000 2450 50  0001 C CNN
F 3 "" H 8000 2450 50  0001 C CNN
	1    8000 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3550 4150 3650
$Comp
L power:+3V3 #PWR0101
U 1 1 5AED6787
P 3350 2450
F 0 "#PWR0101" H 3350 2300 50  0001 C CNN
F 1 "+3V3" H 3365 2626 50  0000 C CNN
F 2 "" H 3350 2450 50  0001 C CNN
F 3 "" H 3350 2450 50  0001 C CNN
	1    3350 2450
	1    0    0    -1  
$EndComp
$Comp
L FM4DD:M24M01-R U1
U 1 1 6115B5DA
P 5600 3850
F 0 "U1" H 5350 3500 50  0000 C CNN
F 1 "M24M01-R" H 5700 3500 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5700 3500 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/m24m01-df.pdf" H 5600 3850 50  0001 C CNN
	1    5600 3850
	1    0    0    -1  
$EndComp
Text Notes 3250 5500 0    50   ~ 0
1-Mbit serial I²C bus EEPROM (128KBytes)\ndefault I2C address is 0xA0 (0b1010000) when Pins A1 and A2 are not connected (or GND)\n\nPins A1 and A2 are at address position 2 and 3 (7 - 6 - 5 - 4 - 3 - A2 - A1 - 1 - 0).\n\nMax 4 chips on one bus (128KB x 4 = 512KB).
Wire Wire Line
	6000 3750 6150 3750
Wire Wire Line
	6000 3850 6250 3850
Wire Wire Line
	5200 4050 5000 4050
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
	3750 3950 3750 3850
Connection ~ 3750 3850
Wire Wire Line
	6000 4050 6400 4050
Wire Wire Line
	6400 4050 6400 3350
$Comp
L power:+3V3 #PWR0110
U 1 1 611A350E
P 6400 3350
F 0 "#PWR0110" H 6400 3200 50  0001 C CNN
F 1 "+3V3" H 6415 3526 50  0000 C CNN
F 2 "" H 6400 3350 50  0001 C CNN
F 3 "" H 6400 3350 50  0001 C CNN
	1    6400 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 611BFD6D
P 6400 4250
F 0 "C3" H 6200 4250 50  0000 C CNN
F 1 "0.1uF" V 6300 4250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6400 4250 50  0001 C CNN
F 3 "~" H 6400 4250 50  0001 C CNN
	1    6400 4250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 611DC81E
P 6150 4250
F 0 "R3" H 6200 4250 50  0000 L CNN
F 1 "10K" V 6150 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6080 4250 50  0001 C CNN
F 3 "~" H 6150 4250 50  0001 C CNN
	1    6150 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3650 5000 3650
Wire Wire Line
	4850 3750 5100 3750
Wire Wire Line
	4850 3850 5200 3850
Wire Wire Line
	4850 3950 5200 3950
Wire Wire Line
	4250 3650 4150 3650
Wire Wire Line
	4250 3750 3950 3750
Wire Wire Line
	3950 3550 3950 3750
Wire Wire Line
	3750 3850 4250 3850
Wire Wire Line
	3750 3950 4250 3950
Wire Wire Line
	3950 3250 3950 3150
Wire Wire Line
	4150 3250 4150 3150
Wire Wire Line
	4150 3150 3950 3150
Wire Wire Line
	3750 3150 3750 3850
Wire Wire Line
	6400 4050 6400 4150
Wire Wire Line
	6150 4100 6150 3950
Wire Wire Line
	6000 3950 6150 3950
Wire Wire Line
	6150 4500 6150 4550
Wire Wire Line
	6400 4350 6400 4500
Wire Wire Line
	5000 4050 5000 4500
Wire Wire Line
	6150 4400 6150 4500
Connection ~ 6150 4500
Connection ~ 6400 4050
Wire Wire Line
	6150 4500 6400 4500
Connection ~ 3950 3150
Wire Wire Line
	3750 3150 3950 3150
$Comp
L power:GND #PWR0108
U 1 1 611CA655
P 6150 4550
F 0 "#PWR0108" H 6150 4300 50  0001 C CNN
F 1 "GND" H 6155 4374 50  0000 C CNN
F 2 "" H 6150 4550 50  0001 C CNN
F 3 "" H 6150 4550 50  0001 C CNN
	1    6150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4500 5000 4500
Text Label 8050 3050 0    50   ~ 0
GND
Text Label 8050 2950 0    50   ~ 0
SDA
Text Label 8050 2850 0    50   ~ 0
SCL
Text Label 8050 3150 0    50   ~ 0
3V3
Text Label 3150 2650 0    50   ~ 0
IO1
Text Label 3150 2750 0    50   ~ 0
IO2
Text Label 8050 2650 0    50   ~ 0
IO1
Text Label 8050 2750 0    50   ~ 0
IO2
$Comp
L FM4DD:Logo_KiCad_5mm L1
U 1 1 61191823
P 6700 6350
F 0 "L1" H 6700 6350 50  0001 C CNN
F 1 "Logo_KiCad_5mm" H 6700 6350 50  0001 C CNN
F 2 "FM4DD:KiCad-Logo2_5mm_SilkScreen" H 6928 6350 50  0000 L CNN
F 3 "" H 6700 6350 50  0001 C CNN
	1    6700 6350
	1    0    0    -1  
$EndComp
Text Label 4950 3850 0    50   ~ 0
A1
Text Label 4950 3950 0    50   ~ 0
A2
Wire Wire Line
	7500 3250 7850 3250
$Comp
L Connector:TestPoint TP1
U 1 1 6124641F
P 7500 3250
F 0 "TP1" V 7600 2900 50  0000 L CNN
F 1 "TestPoint" V 7600 3050 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 7700 3250 50  0001 C CNN
F 3 "~" H 7700 3250 50  0001 C CNN
	1    7500 3250
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 61242FA4
P 6900 3350
F 0 "TP2" V 7000 3650 50  0000 L CNN
F 1 "TestPoint" V 7000 3300 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 7100 3350 50  0001 C CNN
F 3 "~" H 7100 3350 50  0001 C CNN
	1    6900 3350
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 61235F2F
P 6900 3150
F 0 "TP3" V 6800 3450 50  0000 L CNN
F 1 "TestPoint" V 6800 3100 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 7100 3150 50  0001 C CNN
F 3 "~" H 7100 3150 50  0001 C CNN
	1    6900 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 3150 6750 2950
Wire Wire Line
	6900 3150 6750 3150
$Comp
L Device:C_Small C1
U 1 1 61140C31
P 3350 3350
F 0 "C1" V 3100 3350 50  0000 C CNN
F 1 "0.1uF" V 3200 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3350 3350 50  0001 C CNN
F 3 "~" H 3350 3350 50  0001 C CNN
	1    3350 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 612394A7
P 8400 2850
F 0 "J1" H 8350 3200 50  0000 L CNN
F 1 "PMOD_01x06" V 8500 2600 50  0000 L CNN
F 2 "FM4DD:PMOD_Header_1x06_P2.54mm_Horizontal" H 8400 2850 50  0001 C CNN
F 3 "~" H 8400 2850 50  0001 C CNN
	1    8400 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 612378A2
P 2950 2850
F 0 "J2" H 2900 3150 50  0000 L CNN
F 1 "PMOD_01x06" V 3050 2600 50  0000 L CNN
F 2 "FM4DD:PMODPinSocket_1x06_P2.54mm_Horizontal" H 2950 2850 50  0001 C CNN
F 3 "~" H 2950 2850 50  0001 C CNN
	1    2950 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3350 3150 3350 3250
Wire Wire Line
	3350 3450 3350 3550
Wire Wire Line
	3350 3550 3500 3550
Wire Wire Line
	3500 3050 3500 3550
Connection ~ 3500 3550
Wire Wire Line
	3500 3550 3500 3650
Wire Wire Line
	3350 3150 3350 2450
Connection ~ 3350 3150
Wire Wire Line
	8000 3150 8000 2450
Wire Wire Line
	8000 3150 8000 3250
Connection ~ 8000 3150
Wire Wire Line
	8000 3450 8000 3550
Wire Wire Line
	8000 3550 7850 3550
Connection ~ 7850 3550
Wire Wire Line
	7850 3550 7850 3650
Wire Wire Line
	3350 3150 3750 3150
Connection ~ 3750 3150
Connection ~ 7850 3250
Wire Wire Line
	7850 3250 7850 3550
Wire Wire Line
	7850 3050 7850 3250
Wire Wire Line
	6650 2850 6650 3350
Wire Wire Line
	6650 3350 6900 3350
Wire Wire Line
	8200 2650 3150 2650
Wire Wire Line
	3150 2750 8200 2750
Wire Wire Line
	6650 2850 8200 2850
Connection ~ 6650 2850
Wire Wire Line
	6750 2950 8200 2950
Connection ~ 6750 2950
Wire Wire Line
	6150 3750 6150 2950
Connection ~ 6150 2950
Wire Wire Line
	6150 2950 6750 2950
Wire Wire Line
	6250 3850 6250 2850
Connection ~ 6250 2850
Wire Wire Line
	6250 2850 6650 2850
Wire Wire Line
	3150 2950 5000 2950
Wire Wire Line
	3150 2850 5100 2850
Wire Wire Line
	5000 3650 5000 2950
Connection ~ 5000 2950
Wire Wire Line
	5000 2950 6150 2950
Wire Wire Line
	5100 3750 5100 2850
Connection ~ 5100 2850
Wire Wire Line
	5100 2850 6250 2850
$Comp
L FM4DD:GND_Label L3
U 1 1 612CD8CB
P 6900 6250
F 0 "L3" H 6900 6250 50  0001 C CNN
F 1 "GND_Label" H 6900 6250 50  0001 C CNN
F 2 "FM4DD:GND_Label" H 6925 6250 50  0000 L CNN
F 3 "" H 6900 6250 50  0001 C CNN
	1    6900 6250
	1    0    0    -1  
$EndComp
$Comp
L FM4DD:3V3_Label L2
U 1 1 612CDD3C
P 6900 6150
F 0 "L2" H 6900 6150 50  0001 C CNN
F 1 "3V3_Label" H 6900 6150 50  0001 C CNN
F 2 "FM4DD:3V3_Label" H 6925 6150 50  0000 L CNN
F 3 "" H 6900 6150 50  0001 C CNN
	1    6900 6150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x04 SW1
U 1 1 611E9685
P 4550 3750
F 0 "SW1" H 4550 3500 50  0000 C CNN
F 1 "SW_DIP_x04" H 4550 4126 50  0001 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx04_Slide_6.7x11.72mm_W7.62mm_P2.54mm_LowProfile" H 4550 3750 50  0001 C CNN
F 3 "~" H 4550 3750 50  0001 C CNN
	1    4550 3750
	1    0    0    1   
$EndComp
$EndSCHEMATC
