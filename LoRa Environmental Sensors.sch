EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "LoRa Environmental Sensors"
Date ""
Rev "01"
Comp ""
Comment1 ""
Comment2 "creativecommons.org/licenses/by/4.0/"
Comment3 "License CC BY 4.0"
Comment4 "Author: Spielhuus"
$EndDescr
$Comp
L RF_AM_FM:RFM95W-868S2 U3
U 1 1 5BE4AF31
P 8050 3950
F 0 "U3" H 8150 4550 50  0000 C CNN
F 1 "RFM95W-868S2" H 8400 4450 50  0000 C CNN
F 2 "RF_Module:HOPERF_RFM9XW_SMD" H 4750 5600 50  0001 C CNN
F 3 "http://www.hoperf.com/upload/rf/RFM95_96_97_98W.pdf" H 4750 5600 50  0001 C CNN
	1    8050 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5BE4B68A
P 2700 5050
F 0 "#PWR07" H 2700 4800 50  0001 C CNN
F 1 "GND" H 2705 4877 50  0000 C CNN
F 2 "" H 2700 5050 50  0001 C CNN
F 3 "" H 2700 5050 50  0001 C CNN
	1    2700 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5BE4B6A4
P 2600 5050
F 0 "#PWR03" H 2600 4800 50  0001 C CNN
F 1 "GND" H 2605 4877 50  0000 C CNN
F 2 "" H 2600 5050 50  0001 C CNN
F 3 "" H 2600 5050 50  0001 C CNN
	1    2600 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5BE4B974
P 8050 4950
F 0 "#PWR011" H 8050 4700 50  0001 C CNN
F 1 "GND" H 8055 4777 50  0000 C CNN
F 2 "" H 8050 4950 50  0001 C CNN
F 3 "" H 8050 4950 50  0001 C CNN
	1    8050 4950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 5BE4C840
P 2700 3050
F 0 "#PWR06" H 2700 2900 50  0001 C CNN
F 1 "VCC" H 2715 3223 50  0000 C CNN
F 2 "" H 2700 3050 50  0001 C CNN
F 3 "" H 2700 3050 50  0001 C CNN
	1    2700 3050
	1    0    0    -1  
$EndComp
NoConn ~ 8550 3650
Text Label 7550 3950 2    50   ~ 0
NSS
Text Label 7550 3850 2    50   ~ 0
MISO
Text Label 7550 3750 2    50   ~ 0
MOSI
Text Label 7550 3650 2    50   ~ 0
SCK
$Comp
L power:VCC #PWR010
U 1 1 5BE4D73F
P 8050 2950
F 0 "#PWR010" H 8050 2800 50  0001 C CNN
F 1 "VCC" H 8065 3123 50  0000 C CNN
F 2 "" H 8050 2950 50  0001 C CNN
F 3 "" H 8050 2950 50  0001 C CNN
	1    8050 2950
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny85V-10PU U2
U 1 1 5BE763EE
P 5050 4050
F 0 "U2" H 5350 4750 50  0000 R CNN
F 1 "ATtiny85-20SU" H 5850 4650 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5050 4050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 5050 4050 50  0001 C CNN
	1    5050 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5BE7664B
P 5050 5050
F 0 "#PWR09" H 5050 4800 50  0001 C CNN
F 1 "GND" H 5055 4877 50  0000 C CNN
F 2 "" H 5050 5050 50  0001 C CNN
F 3 "" H 5050 5050 50  0001 C CNN
	1    5050 5050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 5BE766B9
P 5050 2900
F 0 "#PWR08" H 5050 2750 50  0001 C CNN
F 1 "VCC" H 5065 3073 50  0000 C CNN
F 2 "" H 5050 2900 50  0001 C CNN
F 3 "" H 5050 2900 50  0001 C CNN
	1    5050 2900
	1    0    0    -1  
$EndComp
NoConn ~ 8550 4250
NoConn ~ 8550 4150
NoConn ~ 8550 4050
NoConn ~ 8550 3950
NoConn ~ 8550 3850
Text Label 5650 4150 0    50   ~ 0
NSS
Text Label 5650 3950 0    50   ~ 0
SCK
Text Label 5650 3850 0    50   ~ 0
MOSI
Text Label 5650 3750 0    50   ~ 0
MISO
Text Label 5650 4050 0    50   ~ 0
CS
$Comp
L Device:Battery_Cell BT1
U 1 1 5BE78F9D
P 2850 1400
F 0 "BT1" H 2968 1496 50  0000 L CNN
F 1 "Battery_Cell" H 2968 1405 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3034_1x20mm" V 2850 1460 50  0001 C CNN
F 3 "~" V 2850 1460 50  0001 C CNN
	1    2850 1400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5BE790C5
P 1450 1350
F 0 "#FLG01" H 1450 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 1450 1524 50  0000 C CNN
F 2 "" H 1450 1350 50  0001 C CNN
F 3 "~" H 1450 1350 50  0001 C CNN
	1    1450 1350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5BE790E7
P 1450 1350
F 0 "#PWR01" H 1450 1200 50  0001 C CNN
F 1 "VCC" H 1465 1523 50  0000 C CNN
F 2 "" H 1450 1350 50  0001 C CNN
F 3 "" H 1450 1350 50  0001 C CNN
	1    1450 1350
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5BE7914C
P 1850 1350
F 0 "#FLG02" H 1850 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 1850 1524 50  0000 C CNN
F 2 "" H 1850 1350 50  0001 C CNN
F 3 "~" H 1850 1350 50  0001 C CNN
	1    1850 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5BE7916E
P 1850 1350
F 0 "#PWR02" H 1850 1100 50  0001 C CNN
F 1 "GND" H 1855 1177 50  0000 C CNN
F 2 "" H 1850 1350 50  0001 C CNN
F 3 "" H 1850 1350 50  0001 C CNN
	1    1850 1350
	1    0    0    -1  
$EndComp
NoConn ~ 7550 4150
$Comp
L power:VCC #PWR04
U 1 1 5BE79E9B
P 2850 1200
F 0 "#PWR04" H 2850 1050 50  0001 C CNN
F 1 "VCC" H 2865 1373 50  0000 C CNN
F 2 "" H 2850 1200 50  0001 C CNN
F 3 "" H 2850 1200 50  0001 C CNN
	1    2850 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5BE79EB6
P 2850 1500
F 0 "#PWR05" H 2850 1250 50  0001 C CNN
F 1 "GND" H 2855 1327 50  0000 C CNN
F 2 "" H 2850 1500 50  0001 C CNN
F 3 "" H 2850 1500 50  0001 C CNN
	1    2850 1500
	1    0    0    -1  
$EndComp
NoConn ~ 8550 4350
Wire Wire Line
	5050 4650 5050 5050
Wire Wire Line
	8050 4950 8050 4700
Wire Wire Line
	7950 4550 7950 4700
Wire Wire Line
	7950 4700 8050 4700
Connection ~ 8050 4700
Wire Wire Line
	8050 4700 8050 4550
Wire Wire Line
	8150 4550 8150 4700
Wire Wire Line
	8150 4700 8050 4700
Text Notes 1300 950  0    50   ~ 0
Power
Wire Wire Line
	8050 3450 8050 2950
Wire Wire Line
	5050 3450 5050 2900
$Comp
L Sparkfun_BME280:BME280BreakoutBoard U1
U 1 1 5BF9703C
P 2650 3850
F 0 "U1" H 2200 4250 50  0000 C CNN
F 1 "BME280BreakoutBoard" H 2650 3250 50  0000 C CNN
F 2 "Sparkfun BME280:Sparkfun bme280" H 2650 3850 50  0001 C CNN
F 3 "" H 2650 3850 50  0001 C CNN
	1    2650 3850
	1    0    0    -1  
$EndComp
Text Label 3300 3950 0    50   ~ 0
SCK
Text Label 3300 4050 0    50   ~ 0
MISO
Text Label 3300 4150 0    50   ~ 0
MOSI
Text Label 3300 4250 0    50   ~ 0
CS
Wire Wire Line
	2600 4900 2600 5050
Wire Wire Line
	2700 4900 2700 5050
Wire Wire Line
	2700 3050 2700 3250
Wire Wire Line
	2900 3400 2900 3250
Wire Wire Line
	2900 3250 2700 3250
Connection ~ 2700 3250
Wire Wire Line
	2700 3250 2700 3400
NoConn ~ 2050 3900
NoConn ~ 2050 4000
NoConn ~ 5650 4250
$EndSCHEMATC
