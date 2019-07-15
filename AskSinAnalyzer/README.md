# AskSin Analyzer PCB     [![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

Eine Platine für den [AskSinAnalyzer von Jérôme](https://github.com/jp112sdl/AskSinAnalyzer). 

### Unbestückte Platinen gebe ich gerne zum Selbstkostenpreis ab.

# Hardware

### Bauteile

#### Reichelt

[Bestellliste](https://www.reichelt.de/my/1602822)

Bauteil                           | Bestellnummer    | Anzahl | Kommentar
--------------------------------- | ---------------- | ------ | ---------
C1, C2                            | T491B 22U 16     |   2    | -
C11, C13, C21                     | X5R-G0805 10/16  |   3    | -
C12, C14, C15, C22, C23, C25, C26 | X7R-G0805 100N   |   7    | -
C24                               | X7R-G0805 1,0/25 |   1    | -
J2                                | MIC USB BBU      |   1    | optional, falls nicht direkt über J1 versorgt wird
J23                               | SMA BU P         |   1    | optional für eine externe Antenne
LED11                             | LED 3MM GE       |   1    | -
LED21                             | LED 3MM GN       |   1    | -
Q1                                | IRLML 5203       |   1    | -
R1                                | RND 0805 1 100K  |   1    | -
R2                                | RND 0805 1 200   |   1    | -
R11, R21, R23                     | RND 0805 1 10K   |   3    | -
R12, R24                          | RND 0805 1 330   |   2    | -
R22                               | RND 0805 1 1,0M  |   1    | -
SW11                              | NT 04            |   1    | -
SW12, SW13                        | TASTER 3301      |   2    | -
U1                                | LM 1117 IMP3.3   |   1    | -
U22                               | ATMEGA 328P-AU   |   1    | -
Y21                               | CSTCC 8,00       |   1    | -


#### Sonstiges

Bauteil | Bestellnummer              | Anzahl | Kommentar
------- | -------------------------- | ------ | ---------
U11     | TJCTM24028-SPI             |   1    |
U12     | ESP-WROOM-32               |   1    |
U21     | CC1101 Funkmodul 868 MHz   |   1    | z.B. [eBay](https://www.ebay.de/itm/272455136087)

~8,3 cm Draht oder eine externe Antenne


### Programmieradapter
- 1x ISP (z.B. [diesen hier](https://www.diamex.de/dxshop/USB-ISP-Programmer-fuer-Atmel-AVR-Rev2))


# Software

### Fuses

Fuse | Wert
---- | ---
Ext  | 0xFF
High | 0xD2
Low  | 0xE2


### Firmware

Projektverzeichnis: [AskSinAnalyzer](https://github.com/jp112sdl/AskSinAnalyzer)




# Bauanleitung

Alle Bauteile sind in SMD Bauform 805 gewählt, um das Löten per Hand zu erleichtern.

Zuerst den ESP und den ATmega auflöten, die Markierung (kleiner Punkt) muss zur Beschriftung U22 zeigen.
Danach die anderen Bauteile (Kondensatoren, Widerstände, etc.) auflöten.

Mit einem Multimeter messen ob kein Kurzschluss zwischen VCC und GND besteht (mehrere 10 k Widerstand sind okay).

Mit dem ISP kann entweder direkt die Software aufgespielt werden, oder nur der Bootloader.
Durch die Verwendug des Bootloaders kann die Software bequem über den FTDI-Adapter geändert werden.

Pin am ISP-Kabel | Bedeutung
---------------- | ----------
1                | MISO
2                | VCC
3                | SCK
4                | MOSI
5                | Reset
6                | GND



Anschließend kann das Funkmodul aufgelötet werden. Dabei gibt es verschiedene Möglichkeiten:


Mit einem FTDI USB-seriell-Adapter an den Lötpunkten RX, TX, 3.3 V und GND und mit einem Terminalprogramm kann man die Ausgabe beobachten. 




# Bilder
![3D-Ansicht](https://github.com/stan23/myPCBs/blob/master/AskSinAnalyzer/AskSinAnalyzer_V0.1_Board_top_rendered.png)



[![Creative Commons Lizenzvertrag](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0/)

Dieses Werk ist lizenziert unter einer [Creative Commons Namensnennung - Nicht-kommerziell - Weitergabe unter gleichen Bedingungen 4.0 International Lizenz](http://creativecommons.org/licenses/by-nc-sa/4.0/).
