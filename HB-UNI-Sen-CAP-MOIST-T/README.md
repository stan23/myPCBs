# HB-UNI-Sen-CAP-MOIST-T     [![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

Eine Platine für bis zu 3 [Bodenfeuchtigkeitssensoren](https://www.dfrobot.com/product-1385.html) und einen Temperatursensor.

Die Idee und die Software stammt wieder mal von [Jérôme](https://github.com/jp112sdl/HB-UNI-Sen-CAP-MOIST). Weiterer Dank geht an [pa-pa für AskSinPP](https://github.com/pa-pa/AskSinPP), sowie an [Alex](https://github.com/alexreinert) und [Tom](https://github.com/TomMajor) für Ideen zur Schaltung.

Die Spannungsversorgung kann mit einer oder zwei AAA oder AA Zellen realisiert werden, die über einen Step-Up-Regler auf 3,3 V stabiliert wird.
Der Step-Up-Regler wird entweder auf der Platine diskret mit einem MAX1724 (_Option 2_)aufgebaut, oder ein Modul mit einem BL8530 verwendet (_Option 1_).

### Unbestückte Platinen gebe ich gerne zum Selbstkostenpreis ab.

# Hardware

### Bauteile

#### Reichelt

[Bestellliste](https://www.reichelt.de/my/1591480)

Bauteil                  | Bestellnummer    | Anzahl | Kommentar
------------------------ | ---------------- | ------ | ---------
C1, C10                  | X5R-G0805 10/6   |   1    | -
C2..C5                   | X7R-G0805 100N   |   4    | -
C6                       | X7R-G0805 1,0/16 |   1    | -
C7, C8                   | NPO 0805 BF 10P  |   2    | -
C10, C12                 | X5R-G0805 10/6   |   2    | Step-Up Wandler Option 2 (mit MAX1724)
C11                      | X7R-G0805 100N   |   1    | Step-Up Wandler Option 2 (mit MAX1724)
C13                      | T494C 22U 16     |   1    | Step-Up Wandler Option 2 (mit MAX1724)
D1                       | SMD-LED 0805 GN  |   1    | -
L2                       | BLM21AG 601      |   1    | Step-Up Wandler Option 2 (mit MAX1724)
Q1                       | IRLML 6344       |   1    | -
Q2                       | IRLML 5203       |   1    | -
R1                       | RND 0805 1 10K   |   1    | -
R2, R3                   | RND 155HP05 AF   |   2    | -
R4, R6                   | RND 0805 1 4,7K  |   2    | -
R5                       | RND 0805 1 1,5K  |   1    | -
R7                       | RND 0805 1 100K  |   1    | -
SW1                      | TASTER 3301      |   1    | -
U1                       | ATMEGA 328P-AU   |   1    | -
U4                       | DS 18B20         |   1    | optional: falls Temperaturmessung gewünscht
Y1                       | 32,768 MS3V-12,5 |   1    | -
Stiftleiste              | SL 1X32G 2,00    |   1    | -
Stiftleiste              | SL 1X40G 2,54    |   1    | -


#### [Mouser](https://www.mouser.de/)

Bauteil                  | Bestellnummer     | Anzahl | Kommentar
------------------------ | ----------------- | ------ | ---------
F1                       | 652-MF-NSMF035-2  |   1    | alternativ [AliExpress](https://www.aliexpress.com/item/50pcs-1206-SMD-PTC-Resettable-fuse-0-25A-6V-250mA-MF-NSMF025X-2/)
L1                       | 81-LQH43CN100K03L |   1    | Step-Up Wandler Option 2 (mit MAX1724)
U3                       | 700-MAX1724EZK33T |   1    | Step-Up Wandler Option 2 (mit MAX1724)


#### Sonstiges

Bauteil | Bestellnummer              | Anzahl | Kommentar
------- | -------------------------- | ------ | ---------
U2      | CC1101 Funkmodul 868 MHz   |   1    | z.B. [eBay](https://www.ebay.de/itm/272455136087)
J3      | BL8530 3,3 V Step-Up-Modul |   1    | Step-Up Wandler Option 1, z.B. [eBay](https://www.ebay.de/itm/382058974507)

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

Alle Bauteile sind in SMD Bauform 805 gewählt, um das Löten per Hand zu erleichtern.

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



Anschließend kann das Funkmodul aufgelötet werden. Dabei gibt es verschiedene Möglichkeiten:
- direkt
- mit Stiftleiste

An den Antennenanschluss muss noch das 8,3 cm Drahtstück angelötet werden.

Mit einem FTDI USB-seriell-Adapter an den Lötpunkten RX, TX, 3.3 V und GND und mit einem Terminalprogramm kann man die Ausgabe beobachten. 


# Kalibrierung, Anlernen

Hat Jérôme [detailiert beschrieben](https://github.com/jp112sdl/HB-UNI-Sen-CAP-MOIST#kalibrierung).


# Bilder

![Platine](https://github.com/stan23/myPCBs/blob/master/HB-UNI-Sen-CAP-MOIST-T/Images/HB-UNI-Sen-CAP-MOIST.png)
![Platine unbestückt](https://github.com/stan23/myPCBs/blob/master/HB-UNI-Sen-CAP-MOIST-T/Images/Platine_unbest%C3%BCckt.jpg)
![Platine bestückt](https://github.com/stan23/myPCBs/blob/master/HB-UNI-Sen-CAP-MOIST-T/Images/Platine_best%C3%BCckt.jpg)




[![Creative Commons Lizenzvertrag](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0/)

Dieses Werk ist lizenziert unter einer [Creative Commons Namensnennung - Nicht-kommerziell - Weitergabe unter gleichen Bedingungen 4.0 International Lizenz](http://creativecommons.org/licenses/by-nc-sa/4.0/).
