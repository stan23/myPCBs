# HB-UNI-Sen-CAP-MOIST-T     [![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

Eine Platine für bis zu 3 [Bodenfeuchtigkeitssensoren](https://www.dfrobot.com/product-1385.html) und einen Temperatursensor.

Die Idee und die Software stammt wieder mal von [Jérôme](https://github.com/jp112sdl/HB-UNI-Sen-CAP-MOIST). Weiterer Dank geht an [pa-pa für AskSinPP](https://github.com/pa-pa/AskSinPP), sowie an [Alex](https://github.com/alexreinert) und [Tom](https://github.com/TomMajor) für Ideen zur Schaltung.

Die Spannungsversorgung kann mit einer oder zwei AAA oder AA Zellen realisiert werden, die über einen Step-Up-Regler auf 3,3 V stabiliert wird.
Der Step-Up-Regler wird entweder auf der Platine diskret mit einem MAX1724 aufgebaut, oder ein Modul mit einem BL8530 verwendet.


# Hardware

### Bauteile

#### Reichelt

##### TODO
[Bestellliste](https://www.reichelt.de/my/)

Bauteil                  | Bestellnummer   | Anzahl | Kommentar
------------------------ | --------------- | ------ | ---------
C1                       | X5R-G0603 10/6  |   1    | -
R1                       | RND 0603 1 10K  |   1    | -
U1                       | ATMEGA 328P-AU  |   1    | -
Verbinder zu U2          | MPE 156-1-032   |   1    | muss per Hand umgebogen werden


#### Sonstiges

Bauteil | Bestellnummer            | Anzahl | Kommentar
------- | ------------------------ | ------ | ---------
U2      | CC1101 Funkmodul 868 MHz |   1    | z.B. [eBay](https://www.ebay.de/itm/272455136087)

~8,3 cm Draht als Antenne


### Programmieradapter
- 1x ISP (z.B. [diesen hier](https://www.diamex.de/dxshop/USB-ISP-Programmer-fuer-Atmel-AVR-Rev2))


# Software

### Fuses
Ext:  0xFF
High: 0xD2
Low:  0xFF (für den internen Takt: 0xE2)

`C:\Program Files (x86)\Arduino\hardware\tools\avr\bin> .\avrdude -C ..\etc\avrdude.conf -p m328p -P com1 -c stk500 -U lfuse:w:0xFF:m -U hfuse:w:0xD2:m -U efuse:w:0xFF:m`


### Firmware

Projektverzeichnis: [HB-UNI-Sen-CAP-MOIST](https://github.com/jp112sdl/HB-UNI-Sen-CAP-MOIST)




# Bauanleitung

Alle Bauteile sind in SMD Bauform 805 gewählt, um das Löten per HAnd zu erleichtern.

Zuerst den ATmega auflöten, die Markierung (kleiner Punkt) muss zur Beschriftung U1 zeigen.
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



Anschließend kann das Funkmodul auf der Rückseite aufgelötet werden. Dabei gibt es verschiedene Möglichkeiten:
- mit Stift- und Buchsenleiste (abnehmbar)
- mit Stiftleiste

An den Antennenanschluss muss noch das 8,3 cm Drahtstück angelötet werden.

Mit einem FTDI USB-seriell-Adapter an den Lötpunkten RX, TX, 3.3 V und GND und mit einem Terminalprogramm kann man die Ausgabe beobachten. Es sollten schon *Ignore...*-Meldungen empfangen und angezeigt werden.


# Kalibrierung, Anlernen

Hat Jérôme [detailiert beschrieben](https://github.com/jp112sdl/HB-UNI-Sen-CAP-MOIST#kalibrierung).


# Bilder

![Platine](https://github.com/stan23/myPCBs/blob/master/HB-UNI-Sen-CAP-MOIST-T/Images/HB-UNI-Sen-CAP-MOIST.png)
![Platine unbestückt](https://github.com/stan23/myPCBs/blob/master/HB-UNI-Sen-CAP-MOIST-T/Images/Platine_unbest%C3%BCckt.jpg)
![Platine bestückt](https://github.com/stan23/myPCBs/blob/master/HB-UNI-Sen-CAP-MOIST-T/Images/Platine_best%C3%BCckt.jpg)




[![Creative Commons Lizenzvertrag](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0/)

Dieses Werk ist lizenziert unter einer [Creative Commons Namensnennung - Nicht-kommerziell - Weitergabe unter gleichen Bedingungen 4.0 International Lizenz](http://creativecommons.org/licenses/by-nc-sa/4.0/).
