EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4600 4500 0    50   Input ~ 0
InVCA2
Text HLabel 4600 4850 0    50   Input ~ 0
FBVCA2
Text HLabel 6850 4950 2    50   Input ~ 0
Output2
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5E3B42AD
P 5900 4950
F 0 "U?" H 5900 4583 50  0000 C CNN
F 1 "TL072" H 5900 4674 50  0000 C CNN
F 2 "" H 5900 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5900 4950 50  0001 C CNN
	1    5900 4950
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5E3B5D53
P 5900 4150
F 0 "R?" V 5695 4150 50  0000 C CNN
F 1 "800" V 5786 4150 50  0000 C CNN
F 2 "" V 5940 4140 50  0001 C CNN
F 3 "~" H 5900 4150 50  0001 C CNN
	1    5900 4150
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5E3B6089
P 4950 4850
F 0 "R?" V 4850 4850 50  0000 C CNN
F 1 "1k" V 4750 4850 50  0000 C CNN
F 2 "" V 4990 4840 50  0001 C CNN
F 3 "~" H 4950 4850 50  0001 C CNN
	1    4950 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5E3B62AE
P 4950 4500
F 0 "R?" V 4745 4500 50  0000 C CNN
F 1 "1k" V 4836 4500 50  0000 C CNN
F 2 "" V 4990 4490 50  0001 C CNN
F 3 "~" H 4950 4500 50  0001 C CNN
	1    4950 4500
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5E3B6B0C
P 5450 5200
F 0 "#PWR?" H 5450 4950 50  0001 C CNN
F 1 "Earth" H 5450 5050 50  0001 C CNN
F 2 "" H 5450 5200 50  0001 C CNN
F 3 "~" H 5450 5200 50  0001 C CNN
	1    5450 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5200 5450 5050
Wire Wire Line
	5450 5050 5600 5050
Wire Wire Line
	4800 4850 4600 4850
Wire Wire Line
	4600 4500 4800 4500
Wire Wire Line
	5600 4850 5350 4850
Wire Wire Line
	5100 4500 5350 4500
Wire Wire Line
	5350 4500 5350 4850
Connection ~ 5350 4850
Wire Wire Line
	5350 4850 5100 4850
Wire Wire Line
	5750 4150 5350 4150
Wire Wire Line
	5350 4150 5350 4500
Connection ~ 5350 4500
Wire Wire Line
	6200 4950 6450 4950
Wire Wire Line
	6450 4950 6450 4150
Wire Wire Line
	6450 4150 6050 4150
Wire Wire Line
	6850 4950 6450 4950
Connection ~ 6450 4950
Text HLabel 4600 2400 0    50   Input ~ 0
InVCA1
Text HLabel 4600 2750 0    50   Input ~ 0
FBVCA1
Text HLabel 6850 2850 2    50   Input ~ 0
Output1
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5E3D0E50
P 5900 2850
F 0 "U?" H 5900 2483 50  0000 C CNN
F 1 "TL072" H 5900 2574 50  0000 C CNN
F 2 "" H 5900 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5900 2850 50  0001 C CNN
	1    5900 2850
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5E3D0E5A
P 5900 2050
F 0 "R?" V 5695 2050 50  0000 C CNN
F 1 "800" V 5786 2050 50  0000 C CNN
F 2 "" V 5940 2040 50  0001 C CNN
F 3 "~" H 5900 2050 50  0001 C CNN
	1    5900 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5E3D0E64
P 4950 2750
F 0 "R?" V 4850 2750 50  0000 C CNN
F 1 "1k" V 4750 2750 50  0000 C CNN
F 2 "" V 4990 2740 50  0001 C CNN
F 3 "~" H 4950 2750 50  0001 C CNN
	1    4950 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5E3D0E6E
P 4950 2400
F 0 "R?" V 4745 2400 50  0000 C CNN
F 1 "1k" V 4836 2400 50  0000 C CNN
F 2 "" V 4990 2390 50  0001 C CNN
F 3 "~" H 4950 2400 50  0001 C CNN
	1    4950 2400
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5E3D0E78
P 5450 3100
F 0 "#PWR?" H 5450 2850 50  0001 C CNN
F 1 "Earth" H 5450 2950 50  0001 C CNN
F 2 "" H 5450 3100 50  0001 C CNN
F 3 "~" H 5450 3100 50  0001 C CNN
	1    5450 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3100 5450 2950
Wire Wire Line
	5450 2950 5600 2950
Wire Wire Line
	4800 2750 4600 2750
Wire Wire Line
	4600 2400 4800 2400
Wire Wire Line
	5600 2750 5350 2750
Wire Wire Line
	5100 2400 5350 2400
Wire Wire Line
	5350 2400 5350 2750
Connection ~ 5350 2750
Wire Wire Line
	5350 2750 5100 2750
Wire Wire Line
	5750 2050 5350 2050
Wire Wire Line
	5350 2050 5350 2400
Connection ~ 5350 2400
Wire Wire Line
	6200 2850 6450 2850
Wire Wire Line
	6450 2850 6450 2050
Wire Wire Line
	6450 2050 6050 2050
Wire Wire Line
	6850 2850 6450 2850
Connection ~ 6450 2850
$EndSCHEMATC
