# HM-LC-Bl1-FM-DC     [![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)     
Nachbau HM-LC-Bl1-FM Rollladenaktor für Gleichstrommotoren (z.B. Plissee)

Er verhält sich wie ein Rolloaktor, treibt aber einen 12 V bzw. 24 V Gleichstrommotor. Dieser wird je nach Fahrtrichtung umgepolt.

Diese Seite beschreibt Version 3.0 der Platine. Version 2.x ist [hier zu finden](https://github.com/stan23/HM-LC-Bl1-FM-DC).


## Hardware

### Bauteile

#### Reichelt

[Bestellliste](https://www.reichelt.de/my/)

Bauteil                  | Bestellnummer   | Anzahl | Kommentar
------------------------ | --------------- | ------ | ---------
C1, C2, C4, C8, C21, C22 | X7R-G0603 100N  |   6    | -
C3                       | 1u  |   1    | -
C6                       | X5R-G0603 10/6  |   1    | -
C7                       | TAJ 3528 3,3/35 |   1    |  -
R1, R3, R21, R23         | RND 0603 1 10K  |   4    | -
R2                       | RND 0603 1 1,5K |   2    | -
R11, R12                 | RND 0603 1 2,7K |   2    | -
R22, R24                 | RND 0603 1 47   |   1    | -
D1                       | SLO SMD-Y0603-0 |   1    | -
D2, D11, D12             | 1N 4148 WS      |   3    | -
Q1, Q2                   | BC 817 NXP      |   2    | -
U1                       | ATMEGA 328P-AU  |   1    | -
U3                       | SIM1-1203 SIL4  |   1    | alternativ für 12 V
U3                       | SIM1-2403 SIL4  |   1    | alternativ für 24 V
K1, K2                   | G6S-2 12V       |   2    | alternativ für 12 V
K1, K2                   | G6S-2 24V       |   2    | alternativ für 24 V
X1                       | WAGO 250-204    |   1    | -
X2                       | WAGO 250-404    |   1    |
SW2                      |                 |   1    | Taster
 
#### Sonstiges

Bauteil | Bestellnummer            | Anzahl | Kommentar
------- | ------------------------ | ------ | ---------
U2      | CC1101 Funkmodul 868MHz  |   1    | z.B. [eBay](https://www.ebay.de/itm/272455136087)


### Programmieradapter
- 1x ISP (um den Bootloader zu brennen)
- 1x FTDI Adapter (falls nicht schon vorhanden, gibts bei [Amazon](https://www.amazon.de/FT232RL-FTDI-USB-auf-TTL-Serienadapter-Arduino/dp/B00HSXDGOE))


## Software

### Fuses

Low:  0xE2
High: 0xD2
Ext:  0xFF

### Bootloader

Aus der Arduino IDE, für ATmega328P, 3,3 V, 8 MHz


### Firmware

https://github.com/pa-pa/AskSinPP/tree/master/examples/HM-LC-Bl1-FM


## Bilder

![nackte Platine](https://github.com/stan23/HM-LC-Bl1-FM-DC/blob/master/Bilder/IMG_20180723_180027.jpg)



[![Creative Commons Lizenzvertrag](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0/)

Dieses Werk ist lizenziert unter einer [Creative Commons Namensnennung - Nicht-kommerziell - Weitergabe unter gleichen Bedingungen 4.0 International Lizenz](http://creativecommons.org/licenses/by-nc-sa/4.0/).

