# HB-Mower-Fence     [![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

Ein Signalgeber für den Begrenzungsdraht für Mähroboter, gesteuert über ein Homebrew HomeMatic-Gerät.

### Unbestückte Platinen gebe ich gerne zum Selbstkostenpreis ab.

# Hardware

### Bauteile

#### Reichelt

[Bestellliste](https://www.reichelt.de/my/1605116)

Bauteil         | Bestellnummer    | Anzahl | Kommentar
--------------- | ---------------- | ------ | ---------
C1              | X5R-G0805 10/16  |   1    | - 
C2, C3, C5, C6  | X7R-G0805 100N   |   4    | - 
C4              | X7R-G0805 1,0/25 |   1    | - 
C7, C8          | T491B 22U 16     |   2    | -
C9              | FC-A 2,2M 25     |   1    | -
D1              | 1N 4001          |   1    | -
J5              | WAGO 250-204     |   1    | -
LED1            | SMD-LED 0805 GE  |   1    | -
Q1              | IRLZ 44N         |   1    | -
Q2              | IRLML 5203       |   1    | -
R1, R3, R8      | RND 0805 1 10K   |   3    | - 
R2              | RND 0805 1 1,0M  |   1    | - 
R4              | RND 0805 1 330   |   1    | - 
R5, R6          | 11W AXIAL 18     |   2    | -
R7              | RND 0805 1 220   |   1    | - 
R9              | RND 0805 1 100K  |   1    | - 
SW1             | TASTER 3301      |   1    | -
U2              | ATMEGA 328P-AU   |   1    | - 
U3              | LM 1117 IMP3.3   |   1    | - 
Y1              | CSTCC 8,00       |   1    | -


#### Sonstiges

Bauteil | Bestellnummer              | Anzahl | Kommentar
------- | -------------------------- | ------ | ---------
U1      | CC1101 Funkmodul 868 MHz   |   1    | z.B. [eBay](https://www.ebay.de/itm/272455136087)

~8,3 cm Draht als Antenne


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


# Bauanleitung

Alle Bauteile sind in SMD Bauform 805 gewählt, um das Löten per Hand zu erleichtern.

Zuerst den ESP und den ATmega auflöten, die Markierung (kleiner Punkt) muss zur Beschriftung U2 zeigen.
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
![3D-Ansicht oben](https://github.com/stan23/myPCBs/blob/master/HB-Mower-Fence/HB-Mower-Fence_rendered_top.png)
![3D-Ansicht unten](https://github.com/stan23/myPCBs/blob/master/HB-Mower-Fence/HB-Mower-Fence_rendered_bot.png)



[![Creative Commons Lizenzvertrag](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0/)

Dieses Werk ist lizenziert unter einer [Creative Commons Namensnennung - Nicht-kommerziell - Weitergabe unter gleichen Bedingungen 4.0 International Lizenz](http://creativecommons.org/licenses/by-nc-sa/4.0/).
