EESchema Schematic File Version 4
LIBS:Preset Manager-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1550 1100 0    50   Input ~ 0
Out1
$Comp
L Device:R_US R?
U 1 1 5DA71C40
P 1950 1100
F 0 "R?" V 1745 1100 50  0000 C CNN
F 1 "1k" V 1836 1100 50  0000 C CNN
F 2 "" V 1990 1090 50  0001 C CNN
F 3 "~" H 1950 1100 50  0001 C CNN
	1    1950 1100
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5DA7283F
P 2350 1350
F 0 "C?" H 2465 1396 50  0000 L CNN
F 1 ".1u" H 2465 1305 50  0000 L CNN
F 2 "" H 2350 1350 50  0001 C CNN
F 3 "~" H 2350 1350 50  0001 C CNN
	1    2350 1350
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5DA73179
P 2350 1600
F 0 "#PWR?" H 2350 1350 50  0001 C CNN
F 1 "Earth" H 2350 1450 50  0001 C CNN
F 2 "" H 2350 1600 50  0001 C CNN
F 3 "~" H 2350 1600 50  0001 C CNN
	1    2350 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1600 2350 1500
Wire Wire Line
	2350 1200 2350 1100
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5DA73BD8
P 3200 1200
F 0 "U?" H 3250 1500 50  0000 C CNN
F 1 "TL072" H 3250 1400 50  0000 C CNN
F 2 "" H 3200 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3200 1200 50  0001 C CNN
	1    3200 1200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5DA756CB
P 3200 2900
F 0 "U?" H 3250 3200 50  0000 C CNN
F 1 "TL072" H 3250 3100 50  0000 C CNN
F 2 "" H 3200 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3200 2900 50  0001 C CNN
	2    3200 2900
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5DA78444
P 3200 1200
F 0 "U?" H 3158 1246 50  0001 L CNN
F 1 "TL072" H 3158 1155 50  0001 L CNN
F 2 "" H 3200 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3200 1200 50  0001 C CNN
	3    3200 1200
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5DA9C926
P 3100 1500
F 0 "#PWR?" H 3100 1250 50  0001 C CNN
F 1 "Earth" H 3100 1350 50  0001 C CNN
F 2 "" H 3100 1500 50  0001 C CNN
F 3 "~" H 3100 1500 50  0001 C CNN
	1    3100 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5DA9D83C
P 3100 900
F 0 "#PWR?" H 3100 750 50  0001 C CNN
F 1 "+12V" H 3115 1073 50  0000 C CNN
F 2 "" H 3100 900 50  0001 C CNN
F 3 "" H 3100 900 50  0001 C CNN
	1    3100 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DA9E17C
P 3200 1800
F 0 "R?" V 3300 1800 50  0000 C CNN
F 1 "10k" V 3400 1800 50  0000 C CNN
F 2 "" V 3240 1790 50  0001 C CNN
F 3 "~" H 3200 1800 50  0001 C CNN
	1    3200 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DA9ED28
P 2750 2100
F 0 "R?" H 2818 2146 50  0000 L CNN
F 1 "10k" H 2818 2055 50  0000 L CNN
F 2 "" V 2790 2090 50  0001 C CNN
F 3 "~" H 2750 2100 50  0001 C CNN
	1    2750 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 5DAA0989
P 4300 1200
F 0 "J?" H 4120 1133 50  0000 R CNN
F 1 "AudioJack2_SwitchT" H 4120 1224 50  0000 R CNN
F 2 "" H 4300 1200 50  0001 C CNN
F 3 "~" H 4300 1200 50  0001 C CNN
	1    4300 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 1200 3800 1200
Wire Wire Line
	3800 1200 3800 1800
Wire Wire Line
	3800 1800 3350 1800
Connection ~ 3800 1200
Wire Wire Line
	3800 1200 3500 1200
$Comp
L power:Earth #PWR?
U 1 1 5DAA5696
P 4000 1450
F 0 "#PWR?" H 4000 1200 50  0001 C CNN
F 1 "Earth" H 4000 1300 50  0001 C CNN
F 2 "" H 4000 1450 50  0001 C CNN
F 3 "~" H 4000 1450 50  0001 C CNN
	1    4000 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1450 4000 1300
Wire Wire Line
	4000 1300 4100 1300
$Comp
L power:Earth #PWR?
U 1 1 5DAAE3FA
P 2750 2350
F 0 "#PWR?" H 2750 2100 50  0001 C CNN
F 1 "Earth" H 2750 2200 50  0001 C CNN
F 2 "" H 2750 2350 50  0001 C CNN
F 3 "~" H 2750 2350 50  0001 C CNN
	1    2750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2350 2750 2250
Wire Wire Line
	1800 1100 1550 1100
Wire Wire Line
	2350 1100 2100 1100
Wire Wire Line
	2750 1950 2750 1800
Wire Wire Line
	2750 1300 2900 1300
Wire Wire Line
	3050 1800 2750 1800
Connection ~ 2750 1800
Wire Wire Line
	2750 1800 2750 1300
Wire Wire Line
	2350 1100 2900 1100
Connection ~ 2350 1100
Text HLabel 1550 2800 0    50   Input ~ 0
Out2
$Comp
L Device:R_US R?
U 1 1 5DB1C281
P 1950 2800
F 0 "R?" V 1745 2800 50  0000 C CNN
F 1 "1k" V 1836 2800 50  0000 C CNN
F 2 "" V 1990 2790 50  0001 C CNN
F 3 "~" H 1950 2800 50  0001 C CNN
	1    1950 2800
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5DB1C28B
P 2350 3050
F 0 "C?" H 2465 3096 50  0000 L CNN
F 1 ".1u" H 2465 3005 50  0000 L CNN
F 2 "" H 2350 3050 50  0001 C CNN
F 3 "~" H 2350 3050 50  0001 C CNN
	1    2350 3050
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5DB1C295
P 2350 3300
F 0 "#PWR?" H 2350 3050 50  0001 C CNN
F 1 "Earth" H 2350 3150 50  0001 C CNN
F 2 "" H 2350 3300 50  0001 C CNN
F 3 "~" H 2350 3300 50  0001 C CNN
	1    2350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3300 2350 3200
Wire Wire Line
	2350 2900 2350 2800
$Comp
L Device:R_US R?
U 1 1 5DB1C2C9
P 3200 3500
F 0 "R?" V 3300 3500 50  0000 C CNN
F 1 "10k" V 3400 3500 50  0000 C CNN
F 2 "" V 3240 3490 50  0001 C CNN
F 3 "~" H 3200 3500 50  0001 C CNN
	1    3200 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DB1C2D3
P 2750 3800
F 0 "R?" H 2818 3846 50  0000 L CNN
F 1 "10k" H 2818 3755 50  0000 L CNN
F 2 "" V 2790 3790 50  0001 C CNN
F 3 "~" H 2750 3800 50  0001 C CNN
	1    2750 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 5DB1C2DD
P 4300 2900
F 0 "J?" H 4120 2833 50  0000 R CNN
F 1 "AudioJack2_SwitchT" H 4120 2924 50  0000 R CNN
F 2 "" H 4300 2900 50  0001 C CNN
F 3 "~" H 4300 2900 50  0001 C CNN
	1    4300 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 2900 3800 2900
Wire Wire Line
	3800 2900 3800 3500
Wire Wire Line
	3800 3500 3350 3500
Connection ~ 3800 2900
Wire Wire Line
	3800 2900 3500 2900
$Comp
L power:Earth #PWR?
U 1 1 5DB1C2EC
P 4000 3150
F 0 "#PWR?" H 4000 2900 50  0001 C CNN
F 1 "Earth" H 4000 3000 50  0001 C CNN
F 2 "" H 4000 3150 50  0001 C CNN
F 3 "~" H 4000 3150 50  0001 C CNN
	1    4000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3150 4000 3000
Wire Wire Line
	4000 3000 4100 3000
$Comp
L power:Earth #PWR?
U 1 1 5DB1C2F8
P 2750 4050
F 0 "#PWR?" H 2750 3800 50  0001 C CNN
F 1 "Earth" H 2750 3900 50  0001 C CNN
F 2 "" H 2750 4050 50  0001 C CNN
F 3 "~" H 2750 4050 50  0001 C CNN
	1    2750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4050 2750 3950
Wire Wire Line
	1800 2800 1550 2800
Wire Wire Line
	2350 2800 2100 2800
Wire Wire Line
	2750 3650 2750 3500
Wire Wire Line
	2750 3000 2900 3000
Wire Wire Line
	3050 3500 2750 3500
Connection ~ 2750 3500
Wire Wire Line
	2750 3500 2750 3000
Wire Wire Line
	2350 2800 2900 2800
Connection ~ 2350 2800
Text HLabel 1550 4500 0    50   Input ~ 0
Out3
$Comp
L Device:R_US R?
U 1 1 5DB5360E
P 1950 4500
F 0 "R?" V 1745 4500 50  0000 C CNN
F 1 "1k" V 1836 4500 50  0000 C CNN
F 2 "" V 1990 4490 50  0001 C CNN
F 3 "~" H 1950 4500 50  0001 C CNN
	1    1950 4500
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5DB53618
P 2350 4750
F 0 "C?" H 2465 4796 50  0000 L CNN
F 1 ".1u" H 2465 4705 50  0000 L CNN
F 2 "" H 2350 4750 50  0001 C CNN
F 3 "~" H 2350 4750 50  0001 C CNN
	1    2350 4750
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5DB53622
P 2350 5000
F 0 "#PWR?" H 2350 4750 50  0001 C CNN
F 1 "Earth" H 2350 4850 50  0001 C CNN
F 2 "" H 2350 5000 50  0001 C CNN
F 3 "~" H 2350 5000 50  0001 C CNN
	1    2350 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 5000 2350 4900
Wire Wire Line
	2350 4600 2350 4500
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5DB5362E
P 3200 4600
F 0 "U?" H 3250 4900 50  0000 C CNN
F 1 "TL072" H 3250 4800 50  0000 C CNN
F 2 "" H 3200 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3200 4600 50  0001 C CNN
	1    3200 4600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5DB53638
P 3200 6300
F 0 "U?" H 3250 6600 50  0000 C CNN
F 1 "TL072" H 3250 6500 50  0000 C CNN
F 2 "" H 3200 6300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3200 6300 50  0001 C CNN
	2    3200 6300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5DB53642
P 3200 4600
F 0 "U?" H 3158 4646 50  0001 L CNN
F 1 "TL072" H 3158 4555 50  0001 L CNN
F 2 "" H 3200 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3200 4600 50  0001 C CNN
	3    3200 4600
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5DB5364C
P 3100 4900
F 0 "#PWR?" H 3100 4650 50  0001 C CNN
F 1 "Earth" H 3100 4750 50  0001 C CNN
F 2 "" H 3100 4900 50  0001 C CNN
F 3 "~" H 3100 4900 50  0001 C CNN
	1    3100 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5DB53656
P 3100 4300
F 0 "#PWR?" H 3100 4150 50  0001 C CNN
F 1 "+12V" H 3115 4473 50  0000 C CNN
F 2 "" H 3100 4300 50  0001 C CNN
F 3 "" H 3100 4300 50  0001 C CNN
	1    3100 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DB53660
P 3200 5200
F 0 "R?" V 3300 5200 50  0000 C CNN
F 1 "10k" V 3400 5200 50  0000 C CNN
F 2 "" V 3240 5190 50  0001 C CNN
F 3 "~" H 3200 5200 50  0001 C CNN
	1    3200 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DB5366A
P 2750 5500
F 0 "R?" H 2818 5546 50  0000 L CNN
F 1 "10k" H 2818 5455 50  0000 L CNN
F 2 "" V 2790 5490 50  0001 C CNN
F 3 "~" H 2750 5500 50  0001 C CNN
	1    2750 5500
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 5DB53674
P 4300 4600
F 0 "J?" H 4120 4533 50  0000 R CNN
F 1 "AudioJack2_SwitchT" H 4120 4624 50  0000 R CNN
F 2 "" H 4300 4600 50  0001 C CNN
F 3 "~" H 4300 4600 50  0001 C CNN
	1    4300 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 4600 3800 4600
Wire Wire Line
	3800 4600 3800 5200
Wire Wire Line
	3800 5200 3350 5200
Connection ~ 3800 4600
Wire Wire Line
	3800 4600 3500 4600
$Comp
L power:Earth #PWR?
U 1 1 5DB53683
P 4000 4850
F 0 "#PWR?" H 4000 4600 50  0001 C CNN
F 1 "Earth" H 4000 4700 50  0001 C CNN
F 2 "" H 4000 4850 50  0001 C CNN
F 3 "~" H 4000 4850 50  0001 C CNN
	1    4000 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4850 4000 4700
Wire Wire Line
	4000 4700 4100 4700
$Comp
L power:Earth #PWR?
U 1 1 5DB5368F
P 2750 5750
F 0 "#PWR?" H 2750 5500 50  0001 C CNN
F 1 "Earth" H 2750 5600 50  0001 C CNN
F 2 "" H 2750 5750 50  0001 C CNN
F 3 "~" H 2750 5750 50  0001 C CNN
	1    2750 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5750 2750 5650
Wire Wire Line
	1800 4500 1550 4500
Wire Wire Line
	2350 4500 2100 4500
Wire Wire Line
	2750 5350 2750 5200
Wire Wire Line
	2750 4700 2900 4700
Wire Wire Line
	3050 5200 2750 5200
Connection ~ 2750 5200
Wire Wire Line
	2750 5200 2750 4700
Wire Wire Line
	2350 4500 2900 4500
Connection ~ 2350 4500
Text HLabel 1550 6200 0    50   Input ~ 0
Out4
$Comp
L Device:R_US R?
U 1 1 5DB536A4
P 1950 6200
F 0 "R?" V 1745 6200 50  0000 C CNN
F 1 "1k" V 1836 6200 50  0000 C CNN
F 2 "" V 1990 6190 50  0001 C CNN
F 3 "~" H 1950 6200 50  0001 C CNN
	1    1950 6200
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5DB536AE
P 2350 6450
F 0 "C?" H 2465 6496 50  0000 L CNN
F 1 ".1u" H 2465 6405 50  0000 L CNN
F 2 "" H 2350 6450 50  0001 C CNN
F 3 "~" H 2350 6450 50  0001 C CNN
	1    2350 6450
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5DB536B8
P 2350 6700
F 0 "#PWR?" H 2350 6450 50  0001 C CNN
F 1 "Earth" H 2350 6550 50  0001 C CNN
F 2 "" H 2350 6700 50  0001 C CNN
F 3 "~" H 2350 6700 50  0001 C CNN
	1    2350 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6700 2350 6600
Wire Wire Line
	2350 6300 2350 6200
$Comp
L Device:R_US R?
U 1 1 5DB536C4
P 3200 6900
F 0 "R?" V 3300 6900 50  0000 C CNN
F 1 "10k" V 3400 6900 50  0000 C CNN
F 2 "" V 3240 6890 50  0001 C CNN
F 3 "~" H 3200 6900 50  0001 C CNN
	1    3200 6900
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DB536CE
P 2750 7200
F 0 "R?" H 2818 7246 50  0000 L CNN
F 1 "10k" H 2818 7155 50  0000 L CNN
F 2 "" V 2790 7190 50  0001 C CNN
F 3 "~" H 2750 7200 50  0001 C CNN
	1    2750 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 5DB536D8
P 4300 6300
F 0 "J?" H 4120 6233 50  0000 R CNN
F 1 "AudioJack2_SwitchT" H 4120 6324 50  0000 R CNN
F 2 "" H 4300 6300 50  0001 C CNN
F 3 "~" H 4300 6300 50  0001 C CNN
	1    4300 6300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 6300 3800 6300
Wire Wire Line
	3800 6300 3800 6900
Wire Wire Line
	3800 6900 3350 6900
Connection ~ 3800 6300
Wire Wire Line
	3800 6300 3500 6300
$Comp
L power:Earth #PWR?
U 1 1 5DB536E7
P 4000 6550
F 0 "#PWR?" H 4000 6300 50  0001 C CNN
F 1 "Earth" H 4000 6400 50  0001 C CNN
F 2 "" H 4000 6550 50  0001 C CNN
F 3 "~" H 4000 6550 50  0001 C CNN
	1    4000 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6550 4000 6400
Wire Wire Line
	4000 6400 4100 6400
$Comp
L power:Earth #PWR?
U 1 1 5DB536F3
P 2750 7450
F 0 "#PWR?" H 2750 7200 50  0001 C CNN
F 1 "Earth" H 2750 7300 50  0001 C CNN
F 2 "" H 2750 7450 50  0001 C CNN
F 3 "~" H 2750 7450 50  0001 C CNN
	1    2750 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 7450 2750 7350
Wire Wire Line
	1800 6200 1550 6200
Wire Wire Line
	2350 6200 2100 6200
Wire Wire Line
	2750 7050 2750 6900
Wire Wire Line
	2750 6400 2900 6400
Wire Wire Line
	3050 6900 2750 6900
Connection ~ 2750 6900
Wire Wire Line
	2750 6900 2750 6400
Wire Wire Line
	2350 6200 2900 6200
Connection ~ 2350 6200
Text HLabel 7100 1100 0    50   Input ~ 0
Out5
$Comp
L Device:R_US R?
U 1 1 5DBB8B61
P 7500 1100
F 0 "R?" V 7295 1100 50  0000 C CNN
F 1 "1k" V 7386 1100 50  0000 C CNN
F 2 "" V 7540 1090 50  0001 C CNN
F 3 "~" H 7500 1100 50  0001 C CNN
	1    7500 1100
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5DBB8B6B
P 7900 1350
F 0 "C?" H 8015 1396 50  0000 L CNN
F 1 ".1u" H 8015 1305 50  0000 L CNN
F 2 "" H 7900 1350 50  0001 C CNN
F 3 "~" H 7900 1350 50  0001 C CNN
	1    7900 1350
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5DBB8B75
P 7900 1600
F 0 "#PWR?" H 7900 1350 50  0001 C CNN
F 1 "Earth" H 7900 1450 50  0001 C CNN
F 2 "" H 7900 1600 50  0001 C CNN
F 3 "~" H 7900 1600 50  0001 C CNN
	1    7900 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1600 7900 1500
Wire Wire Line
	7900 1200 7900 1100
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5DBB8B81
P 8750 1200
F 0 "U?" H 8800 1500 50  0000 C CNN
F 1 "TL072" H 8800 1400 50  0000 C CNN
F 2 "" H 8750 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8750 1200 50  0001 C CNN
	1    8750 1200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5DBB8B8B
P 8750 2900
F 0 "U?" H 8800 3200 50  0000 C CNN
F 1 "TL072" H 8800 3100 50  0000 C CNN
F 2 "" H 8750 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8750 2900 50  0001 C CNN
	2    8750 2900
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5DBB8B95
P 8750 1200
F 0 "U?" H 8708 1246 50  0001 L CNN
F 1 "TL072" H 8708 1155 50  0001 L CNN
F 2 "" H 8750 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8750 1200 50  0001 C CNN
	3    8750 1200
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5DBB8B9F
P 8650 1500
F 0 "#PWR?" H 8650 1250 50  0001 C CNN
F 1 "Earth" H 8650 1350 50  0001 C CNN
F 2 "" H 8650 1500 50  0001 C CNN
F 3 "~" H 8650 1500 50  0001 C CNN
	1    8650 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5DBB8BA9
P 8650 900
F 0 "#PWR?" H 8650 750 50  0001 C CNN
F 1 "+12V" H 8665 1073 50  0000 C CNN
F 2 "" H 8650 900 50  0001 C CNN
F 3 "" H 8650 900 50  0001 C CNN
	1    8650 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DBB8BB3
P 8750 1800
F 0 "R?" V 8850 1800 50  0000 C CNN
F 1 "10k" V 8950 1800 50  0000 C CNN
F 2 "" V 8790 1790 50  0001 C CNN
F 3 "~" H 8750 1800 50  0001 C CNN
	1    8750 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DBB8BBD
P 8300 2100
F 0 "R?" H 8368 2146 50  0000 L CNN
F 1 "10k" H 8368 2055 50  0000 L CNN
F 2 "" V 8340 2090 50  0001 C CNN
F 3 "~" H 8300 2100 50  0001 C CNN
	1    8300 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 5DBB8BC7
P 9850 1200
F 0 "J?" H 9670 1133 50  0000 R CNN
F 1 "AudioJack2_SwitchT" H 9670 1224 50  0000 R CNN
F 2 "" H 9850 1200 50  0001 C CNN
F 3 "~" H 9850 1200 50  0001 C CNN
	1    9850 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 1200 9350 1200
Wire Wire Line
	9350 1200 9350 1800
Wire Wire Line
	9350 1800 8900 1800
Connection ~ 9350 1200
Wire Wire Line
	9350 1200 9050 1200
$Comp
L power:Earth #PWR?
U 1 1 5DBB8BD6
P 9550 1450
F 0 "#PWR?" H 9550 1200 50  0001 C CNN
F 1 "Earth" H 9550 1300 50  0001 C CNN
F 2 "" H 9550 1450 50  0001 C CNN
F 3 "~" H 9550 1450 50  0001 C CNN
	1    9550 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1450 9550 1300
Wire Wire Line
	9550 1300 9650 1300
$Comp
L power:Earth #PWR?
U 1 1 5DBB8BE2
P 8300 2350
F 0 "#PWR?" H 8300 2100 50  0001 C CNN
F 1 "Earth" H 8300 2200 50  0001 C CNN
F 2 "" H 8300 2350 50  0001 C CNN
F 3 "~" H 8300 2350 50  0001 C CNN
	1    8300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2350 8300 2250
Wire Wire Line
	7350 1100 7100 1100
Wire Wire Line
	7900 1100 7650 1100
Wire Wire Line
	8300 1950 8300 1800
Wire Wire Line
	8300 1300 8450 1300
Wire Wire Line
	8600 1800 8300 1800
Connection ~ 8300 1800
Wire Wire Line
	8300 1800 8300 1300
Wire Wire Line
	7900 1100 8450 1100
Connection ~ 7900 1100
Text HLabel 7100 2800 0    50   Input ~ 0
Out6
$Comp
L Device:R_US R?
U 1 1 5DBB8BF7
P 7500 2800
F 0 "R?" V 7295 2800 50  0000 C CNN
F 1 "1k" V 7386 2800 50  0000 C CNN
F 2 "" V 7540 2790 50  0001 C CNN
F 3 "~" H 7500 2800 50  0001 C CNN
	1    7500 2800
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5DBB8C01
P 7900 3050
F 0 "C?" H 8015 3096 50  0000 L CNN
F 1 ".1u" H 8015 3005 50  0000 L CNN
F 2 "" H 7900 3050 50  0001 C CNN
F 3 "~" H 7900 3050 50  0001 C CNN
	1    7900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5DBB8C0B
P 7900 3300
F 0 "#PWR?" H 7900 3050 50  0001 C CNN
F 1 "Earth" H 7900 3150 50  0001 C CNN
F 2 "" H 7900 3300 50  0001 C CNN
F 3 "~" H 7900 3300 50  0001 C CNN
	1    7900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3300 7900 3200
Wire Wire Line
	7900 2900 7900 2800
$Comp
L Device:R_US R?
U 1 1 5DBB8C17
P 8750 3500
F 0 "R?" V 8850 3500 50  0000 C CNN
F 1 "10k" V 8950 3500 50  0000 C CNN
F 2 "" V 8790 3490 50  0001 C CNN
F 3 "~" H 8750 3500 50  0001 C CNN
	1    8750 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DBB8C21
P 8300 3800
F 0 "R?" H 8368 3846 50  0000 L CNN
F 1 "10k" H 8368 3755 50  0000 L CNN
F 2 "" V 8340 3790 50  0001 C CNN
F 3 "~" H 8300 3800 50  0001 C CNN
	1    8300 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 5DBB8C2B
P 9850 2900
F 0 "J?" H 9670 2833 50  0000 R CNN
F 1 "AudioJack2_SwitchT" H 9670 2924 50  0000 R CNN
F 2 "" H 9850 2900 50  0001 C CNN
F 3 "~" H 9850 2900 50  0001 C CNN
	1    9850 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 2900 9350 2900
Wire Wire Line
	9350 2900 9350 3500
Wire Wire Line
	9350 3500 8900 3500
Connection ~ 9350 2900
Wire Wire Line
	9350 2900 9050 2900
$Comp
L power:Earth #PWR?
U 1 1 5DBB8C3A
P 9550 3150
F 0 "#PWR?" H 9550 2900 50  0001 C CNN
F 1 "Earth" H 9550 3000 50  0001 C CNN
F 2 "" H 9550 3150 50  0001 C CNN
F 3 "~" H 9550 3150 50  0001 C CNN
	1    9550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 3150 9550 3000
Wire Wire Line
	9550 3000 9650 3000
$Comp
L power:Earth #PWR?
U 1 1 5DBB8C46
P 8300 4050
F 0 "#PWR?" H 8300 3800 50  0001 C CNN
F 1 "Earth" H 8300 3900 50  0001 C CNN
F 2 "" H 8300 4050 50  0001 C CNN
F 3 "~" H 8300 4050 50  0001 C CNN
	1    8300 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4050 8300 3950
Wire Wire Line
	7350 2800 7100 2800
Wire Wire Line
	7900 2800 7650 2800
Wire Wire Line
	8300 3650 8300 3500
Wire Wire Line
	8300 3000 8450 3000
Wire Wire Line
	8600 3500 8300 3500
Connection ~ 8300 3500
Wire Wire Line
	8300 3500 8300 3000
Wire Wire Line
	7900 2800 8450 2800
Connection ~ 7900 2800
Text HLabel 7100 4500 0    50   Input ~ 0
Out7
$Comp
L Device:R_US R?
U 1 1 5DBB8C5B
P 7500 4500
F 0 "R?" V 7295 4500 50  0000 C CNN
F 1 "1k" V 7386 4500 50  0000 C CNN
F 2 "" V 7540 4490 50  0001 C CNN
F 3 "~" H 7500 4500 50  0001 C CNN
	1    7500 4500
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 5DBB8C65
P 7900 4750
F 0 "C?" H 8015 4796 50  0000 L CNN
F 1 ".1u" H 8015 4705 50  0000 L CNN
F 2 "" H 7900 4750 50  0001 C CNN
F 3 "~" H 7900 4750 50  0001 C CNN
	1    7900 4750
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5DBB8C6F
P 7900 5000
F 0 "#PWR?" H 7900 4750 50  0001 C CNN
F 1 "Earth" H 7900 4850 50  0001 C CNN
F 2 "" H 7900 5000 50  0001 C CNN
F 3 "~" H 7900 5000 50  0001 C CNN
	1    7900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5000 7900 4900
Wire Wire Line
	7900 4600 7900 4500
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5DBB8C7B
P 8750 4600
F 0 "U?" H 8800 4900 50  0000 C CNN
F 1 "TL072" H 8800 4800 50  0000 C CNN
F 2 "" H 8750 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8750 4600 50  0001 C CNN
	1    8750 4600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5DBB8C85
P 8750 4600
F 0 "U?" H 8708 4646 50  0001 L CNN
F 1 "TL072" H 8708 4555 50  0001 L CNN
F 2 "" H 8750 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8750 4600 50  0001 C CNN
	3    8750 4600
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5DBB8C8F
P 8650 4900
F 0 "#PWR?" H 8650 4650 50  0001 C CNN
F 1 "Earth" H 8650 4750 50  0001 C CNN
F 2 "" H 8650 4900 50  0001 C CNN
F 3 "~" H 8650 4900 50  0001 C CNN
	1    8650 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5DBB8C99
P 8650 4300
F 0 "#PWR?" H 8650 4150 50  0001 C CNN
F 1 "+12V" H 8665 4473 50  0000 C CNN
F 2 "" H 8650 4300 50  0001 C CNN
F 3 "" H 8650 4300 50  0001 C CNN
	1    8650 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DBB8CA3
P 8750 5200
F 0 "R?" V 8850 5200 50  0000 C CNN
F 1 "10k" V 8950 5200 50  0000 C CNN
F 2 "" V 8790 5190 50  0001 C CNN
F 3 "~" H 8750 5200 50  0001 C CNN
	1    8750 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DBB8CAD
P 8300 5500
F 0 "R?" H 8368 5546 50  0000 L CNN
F 1 "10k" H 8368 5455 50  0000 L CNN
F 2 "" V 8340 5490 50  0001 C CNN
F 3 "~" H 8300 5500 50  0001 C CNN
	1    8300 5500
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 5DBB8CB7
P 9850 4600
F 0 "J?" H 9670 4533 50  0000 R CNN
F 1 "AudioJack2_SwitchT" H 9670 4624 50  0000 R CNN
F 2 "" H 9850 4600 50  0001 C CNN
F 3 "~" H 9850 4600 50  0001 C CNN
	1    9850 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 4600 9350 4600
Wire Wire Line
	9350 4600 9350 5200
Wire Wire Line
	9350 5200 8900 5200
Connection ~ 9350 4600
Wire Wire Line
	9350 4600 9050 4600
$Comp
L power:Earth #PWR?
U 1 1 5DBB8CC6
P 9550 4850
F 0 "#PWR?" H 9550 4600 50  0001 C CNN
F 1 "Earth" H 9550 4700 50  0001 C CNN
F 2 "" H 9550 4850 50  0001 C CNN
F 3 "~" H 9550 4850 50  0001 C CNN
	1    9550 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 4850 9550 4700
Wire Wire Line
	9550 4700 9650 4700
$Comp
L power:Earth #PWR?
U 1 1 5DBB8CD2
P 8300 5750
F 0 "#PWR?" H 8300 5500 50  0001 C CNN
F 1 "Earth" H 8300 5600 50  0001 C CNN
F 2 "" H 8300 5750 50  0001 C CNN
F 3 "~" H 8300 5750 50  0001 C CNN
	1    8300 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5750 8300 5650
Wire Wire Line
	7350 4500 7100 4500
Wire Wire Line
	7900 4500 7650 4500
Wire Wire Line
	8300 5350 8300 5200
Wire Wire Line
	8300 4700 8450 4700
Wire Wire Line
	8600 5200 8300 5200
Connection ~ 8300 5200
Wire Wire Line
	8300 5200 8300 4700
Wire Wire Line
	7900 4500 8450 4500
Connection ~ 7900 4500
$EndSCHEMATC
