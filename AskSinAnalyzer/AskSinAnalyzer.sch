EESchema Schematic File Version 4
LIBS:AskSinAnalyzer-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "AskSin Analyzer"
Date "2019-07-07"
Rev "2.0 RC1"
Comp "stan23 CC BY-NC-SA"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3975 3150 1725 1875
U 5D4B4DC0
F0 "sheetEsp" 100
F1 "AskSinAnalyzer_sheetEsp.sch" 100
F2 "ESP_DTR" I L 3975 4250 50 
F3 "ESP_RX2" I R 5700 3900 50 
F4 "ESP_TX2" I R 5700 3725 50 
F5 "ESP_RX" I L 3975 3725 50 
F6 "ESP_TX" I L 3975 3900 50 
F7 "ESP_RTS" I L 3975 4450 50 
$EndSheet
$Sheet
S 7375 3150 1925 1975
U 5D4E1EE1
F0 "sheetAtmega" 100
F1 "AskSinAnalyzer_sheetAtmega.sch" 100
F2 "ATmega_RX" I L 7375 3725 50 
F3 "ATmega_TX" I L 7375 3900 50 
$EndSheet
Wire Wire Line
	5700 3725 6400 3725
$Sheet
S 975  3150 1600 1875
U 5D5AE549
F0 "sheetSupply" 100
F1 "AskSinAnalyzer_sheet_Supply.sch" 100
F2 "FT_DTR" I R 2575 4250 50 
F3 "FT_TX_A" I R 2575 3275 50 
F4 "FT_TX_B" I R 2575 3725 50 
F5 "FT_RX_A" I R 2575 3425 50 
F6 "FT_RX_B" I R 2575 3900 50 
F7 "FT_RTS" I R 2575 4450 50 
$EndSheet
Wire Wire Line
	3975 3725 2575 3725
Wire Wire Line
	2575 3275 3050 3275
Wire Wire Line
	3050 3275 3050 2550
Wire Wire Line
	3050 2550 7050 2550
Wire Wire Line
	7050 2550 7050 3725
Connection ~ 7050 3725
Wire Wire Line
	7050 3725 7375 3725
Wire Wire Line
	3125 2625 6975 2625
Wire Wire Line
	6975 2625 6975 3900
Wire Wire Line
	3975 3900 2575 3900
Wire Wire Line
	2575 3425 3125 3425
Wire Wire Line
	3125 3425 3125 2625
Wire Wire Line
	7375 3900 6975 3900
Wire Wire Line
	2575 4250 3975 4250
Wire Wire Line
	2575 4450 3975 4450
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5D7A89F0
P 6550 3725
F 0 "JP1" H 6550 3838 50  0000 C CNN
F 1 "~" H 6550 3839 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6550 3725 50  0001 C CNN
F 3 "~" H 6550 3725 50  0001 C CNN
	1    6550 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3725 7050 3725
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5D7B24A6
P 6550 3900
F 0 "JP2" H 6550 3775 50  0000 C CNN
F 1 "~" H 6550 4014 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6550 3900 50  0001 C CNN
F 3 "~" H 6550 3900 50  0001 C CNN
	1    6550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3900 5700 3900
Wire Wire Line
	6700 3900 6975 3900
Connection ~ 6975 3900
$EndSCHEMATC
