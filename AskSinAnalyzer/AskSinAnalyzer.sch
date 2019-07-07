EESchema Schematic File Version 4
LIBS:AskSinAnalyzer-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "AskSin Analyzer"
Date "2019-07-07"
Rev "0.1"
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
F2 "ESP_RX" I R 5700 4000 50 
F3 "ESP_TX" I R 5700 3725 50 
$EndSheet
$Sheet
S 7375 3150 1925 1975
U 5D4E1EE1
F0 "sheetAtmega" 100
F1 "AskSinAnalyzer_sheetAtmega.sch" 100
F2 "ATmega_RX" I L 7375 3725 50 
F3 "ATmega_TX" I L 7375 4000 50 
$EndSheet
Wire Wire Line
	5700 3725 7375 3725
Wire Wire Line
	7375 4000 5700 4000
$Sheet
S 975  3150 1600 1875
U 5D5AE549
F0 "sheetSupply" 100
F1 "AskSinAnalyzer_sheet_Supply.sch" 100
$EndSheet
$EndSCHEMATC
