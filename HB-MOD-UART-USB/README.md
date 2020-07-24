## HB-MOD-UART-USB Platine
Ein USB-Stick mit HM-MOD-UART Funkmodul und FT232R, basierend auf @alexreinert's [HB-RF-USB](https://github.com/alexreinert/PCB/#hb-rf-usb). 

[Reichelt Teileliste](https://www.reichelt.de/my/1657385)

![Platine gerendert](https://github.com/stan23/myPCBs/blob/master/HB-MOD-UART-USB/Bilder/HB-MOD-UART-USB%20rendered%20top.png)
![Platine gerendert](https://github.com/stan23/myPCBs/blob/master/HB-MOD-UART-USB/Bilder/HB-MOD-UART-USB%20rendered%20bot.png)

### Parts

|Reference   |Quantity|Value       |Footprint                                                  |Datasheet                                                                             |
|------------|--------|------------|-----------------------------------------------------------|--------------------------------------------------------------------------------------|
|C2 C3 C4 C1 |4       |100nF       |Capacitors_SMD:C_0603_HandSoldering                        |~                                                                                     |
|C5          |1       |100u / 10V  |Capacitors_Tantalum_SMD:CP_Tantalum_Case-B_EIA-3528-21_Wave|~                                                                                     |
|C7          |1       |10nF        |Capacitors_SMD:C_0603_HandSoldering                        |~                                                                                     |
|C8          |1       |4.7uF       |Capacitors_SMD:C_0603_HandSoldering                        |~                                                                                     |
|C9          |1       |4.7nF       |Capacitors_SMD:C_0603_HandSoldering                        |~                                                                                     |
|D1          |1       |RX/TX       |LEDs:LED_0603_HandSoldering                                |~                                                                                     |
|J1          |1       |USB         |myConnectors:USB_A                                         |https://www.reichelt.de/usb-einbaustecker-typ-a-gew-pcb-lum-2410-08-p116154.html      |
|L1          |1       |Ferrite Bead|Inductors_SMD:L_0805_HandSoldering                         |~                                                                                     |
|Q1          |1       |IRLML6402   |TO_SOT_Packages_SMD:SOT-23                                 |https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c|
|R1          |1       |10K         |Resistors_SMD:R_0603_HandSoldering                         |~                                                                                     |
|R2          |1       |1K          |Resistors_SMD:R_0603_HandSoldering                         |~                                                                                     |
|R3 R5       |2       |1k          |Resistors_SMD:R_0603_HandSoldering                         |~                                                                                     |
|R4          |1       |1M          |Resistors_SMD:R_0603_HandSoldering                         |~                                                                                     |
|R6          |1       |270         |Resistors_SMD:R_0603_HandSoldering                         |~                                                                                     |
|U1          |1       |FT232RL     |myHousings:SSOP-28_5.3x10.2mm_Pitch0.65mm_Handsoldering    |http://www.ftdichip.com/Products/ICs/FT232RL.htm                                      |
