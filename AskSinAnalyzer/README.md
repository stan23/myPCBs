# AskSin Analyzer PCB     [![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

Eine Platine für den [AskSinAnalyzer von Jérôme](https://github.com/jp112sdl/AskSinAnalyzer). 

### Unbestückte Platinen gebe ich gerne zum Selbstkostenpreis ab.

## Hardware

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
Q1                                | IRLML 5203       |   1    | optional, falls über J1 versorgt wird (Verpolschutz)
R1                                | RND 0805 1 100K  |   1    | -
R2                                | RND 0805 1 200   |   1    | -
R11, R21, R23                     | RND 0805 1 10K   |   3    | -
R12, R24                          | RND 0805 1 330   |   2    | -
R22                               | RND 0805 1 1,0M  |   1    | -
SW11                              | NT 04            |   1    | -
SW12, SW13                        | TASTER 3301      |   2    | -
U1                                | LM 1117 IMP3.3   |   1    | -
U22                               | ATMEGA 328P-AU   |   1    | -
Y21                               | CSTCE 8,00       |   1    | -
Verbindung zu U11                 | BL 1X20G 2,54    |   1    | optionale Buchsenleiste um das Display steckbar zu machen



#### Sonstiges

Bauteil | Bestellnummer              | Anzahl | Kommentar
------- | -------------------------- | ------ | ---------
U11     | 2,8 Zoll 240 x 320 SPI TFT |   1    | mit ILI9341 Interface-Chip
U12     | ESP-WROOM-32               |   1    |
U21     | CC1101 Funkmodul 868 MHz   |   1    | z.B. [eBay](https://www.ebay.de/itm/272455136087)

~8,3 cm Draht oder eine externe Antenne


### Programmieradapter
- 1x ISP (z.B. [diesen hier](https://www.diamex.de/dxshop/USB-ISP-Programmer-fuer-Atmel-AVR-Rev2))
- 1x FTDI Adatper (z.B. [diesen hier](https://www.amazon.de/dp/B01N9RZK6I/))


### Spannungsversorung

Die Platine kann entweder über die Micro-USB-Buchse oder über J1 mit 5 Volt versorgt werden. Die Stromaufnahme liegt bei etwa 150 mA mit Display.
An J1 ist ein Verpolschutz vorhanden.

## Bauanleitung

Alle Bauteile sind in SMD Bauform 805 gewählt, um das Löten per Hand zu erleichtern.

Zuerst den ESP und den ATmega auflöten, die Markierung (kleiner Punkt) muss zur Beschriftung U22 zeigen.
Danach die anderen Bauteile (Kondensatoren, Widerstände, etc.) auflöten.
Das große Pad unter dem ESP32-Modul muss nicht angelötet werden!

Mit einem Multimeter messen ob kein Kurzschluss zwischen VCC und GND besteht (mehrere 10 k Widerstand sind okay).

Das Auflöten des Funkmoduls kann vor oder nach dem Programmieren des ATmegas erfolgen, wichtig ist jedoch dass der Programmieradapter nur 3,3 V Versorgungsspannung bereitstellt.

Die Lötbrücke JP22 muss geschlossen werden, sie ist die Verbindung zwischen dem TX-Ausgang des ATmega328p und dem RX2-Eingang des ESP32.
JP21 kann offen bleiben, da diese Richtung momentan nicht benutzt wird.

Der DIP-Schalter SW11 und der Taster SW13 sind im [Wiki beschrieben](https://github.com/jp112sdl/AskSinAnalyzer/wiki/Elektronik_Verdrahtung).
Der Taster SW12 schließt den Pin IO0 des ESP32 nach Masse kurz und wird nur benötigt, um den ESP32 in den Programmiermodus zu versetzen.

Das Display wird mit etwas Abstand auf der Platinenrückseite angelötet.



## Software

### Fuses

Fuse | Wert
---- | ---
Ext  | 0xFF
High | 0xD2
Low  | 0xFF


### Firmware

Projektverzeichnis: [AskSinAnalyzer](https://github.com/jp112sdl/AskSinAnalyzer)


### Programmierung

Hierbei sollte die Platine entweder über den USB-Stecker bzw. J1 *oder* über den FTDI-Adapter versorgt werden.

#### ESP32
Beim Anschließen der Versorgungsspannung muss der Taster SW12 gehalten werden, damit der ESP32 in den Programmiermodus wechselt.
Dann kann die Firmware über die Arduino IDE (oder ein anderes Tool) über den Verbinder J11 mit einem FTDI-Adapter geladen werden.

#### ATmega328p
Mit dem ISP kann entweder direkt die Software aufgespielt werden, oder nur der Bootloader.
Durch die Verwendung des Bootloaders kann die Software bequem über den FTDI-Adapter geändert werden.

Pin am ISP-Kabel | Bedeutung
---------------- | ----------
1                | MISO
2                | VCC
3                | SCK
4                | MOSI
5                | Reset
6                | GND

Der FTDI-Adapter kann über den Verbinder J21 an der ATmega328p angeschlossen werden. Das funktioniert wie beim Arduino Pro Mini gewohnt ohne weitere Tastendrücke.


## Gehäuse
[Ein Gehäuse gibt es auf Thingiverse](https://www.thingiverse.com/thing:3788587)


## Bilder
![3D-Ansicht](https://github.com/stan23/myPCBs/blob/master/AskSinAnalyzer/Bilder/AskSinAnalyzer_V0.1_Board_top_rendered.png)
![bestückte Platine](https://github.com/stan23/myPCBs/blob/master/AskSinAnalyzer/Bilder/Platine_bestückt.jpg)
![Display mit Platine](https://github.com/stan23/myPCBs/blob/master/AskSinAnalyzer/Bilder/Platine_Display.jpg)



[![Creative Commons Lizenzvertrag](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0/)

Dieses Werk ist lizenziert unter einer [Creative Commons Namensnennung - Nicht-kommerziell - Weitergabe unter gleichen Bedingungen 4.0 International Lizenz](http://creativecommons.org/licenses/by-nc-sa/4.0/).
