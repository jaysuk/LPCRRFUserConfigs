; Configuration file for Fly-CDYv2 (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.2.1-LPC+10 on Mon Apr 26 2021 16:39:38 GMT+0200 (Mitteleuropäische Sommerzeit)

; General preferences
G90                                                ; send absolute coordinates...
M83                                                ; ...but relative extruder moves
M550 P"SpaceSovol"                                 ; set printer name

; Network
M552 S1                                            ; enable network
M586 P0 S1                                         ; enable HTTP
M586 P1 S0                                         ; disable FTP
M586 P2 S0                                         ; disable Telnet

; Drives
M569 P0 S0 D3 V10                                    ; physical drive 0 goes forwards using default driver timings
M569 P1 S0                                           ; physical drive 1 goes forwards using default driver timings
M569 P2 S1 D2                                        ; physical drive 2 goes backwards using default driver timings
M569 P3 S1 D2                                        ; physical drive 3 goes backwards using default driver timings
M569 P4 S1                                           ; physical drive 4 goes backwards using default driver timings
M584 X0 Y1 Z2:3 E4                                   ; set drive mapping
M350 X16 Y16 Z16 E16 I1                              ; configure microstepping with interpolation
M92 X80.00 Y80.00 Z800.00 E396.00                    ; set steps per mm
M566 X900.00 Y900.00 Z120.00 E640.00                 ; set maximum instantaneous speed changes (mm/min)
M203 X6000.00 Y6000.00 Z600.00 E20000.00             ; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z120.00 E6400.00                ; set accelerations (mm/s^2)
M906 X900 Y1000 Z800 E940 I25                        ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                              ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                                   ; set axis minima
M208 X296 Y231 Z300 S0                             ; set axis maxima

; Endstops
M574 X1 S1 P"xstop"                                ; configure active-high endstop for low end on X via pin xstop
M574 Y1 S1 P"ystop"                                ; configure active-high endstop for low end on Y via pin ystop
;M574 Z1 S2                                        ; disabled Z-Probe-Endstop
M574 Z1 S1 P"zmin+zmax"                            ; optical endstops for each Z stepper 

; Z-Probe
M950 S0 C"servo0"                                  ; create servo pin 0 for BLTouch
M558 P9 C"^probe" H5 F120 T6000                    ; set Z probe type to bltouch and the dive height + speeds
G31 P500 X-35 Y16 Z0.930                           ; set Z probe trigger value, offset and trigger height
M557 X15:261 Y31:230 P5                            ; define mesh grid

; Heaters
M308 S0 P"bedtemp" Y"thermistor" T100000  B4138            ; configure sensor 0 as thermistor on pin bedtemp
M950 H0 C"bed" T1                                          ; create bed heater output on bed and map it to sensor 1
M307 H0 B0 S1.00                                           ; disable bang-bang mode for the bed heater and set PWM limit
M140 H0                                                    ; map heated bed to heater 0
M143 H0 S120                                               ; set temperature limit for heater 0 to 120C
M308 S1 P"e1temp" Y"thermistor" T100000 B4725 C7.06e-8     ; configure sensor 1 as thermistor on pin e0temp
M950 H1 C"e1heat" T0                                       ; create nozzle heater output on e0heat and map it to sensor 0
M307 H1 B0 S1.00                                           ; disable bang-bang mode for heater  and set PWM limit
M143 H1 S280                                               ; set temperature limit for heater 1 to 280C

; Fans
M950 F0 C"fan1" Q500                                       ; create fan 0 on pin fan0 and set its frequency
M106 P0 S0 H-1 C"Bauteil"                                  ; set fan 0 value. Thermostatic control is turned off
M950 F1 C"fan2" Q250                                       ; create fan 1 on pin fan1 and set its frequency
M106 P1 S1 H0 T45 C"Hemera"                                ; set fan 1 value. Thermostatic control is turned off

; Extra fan ports
M950 F2 C"e2heat" Q500                                     ; create fan 2 on pin fan2 and set its frequency
M106 P2 S1.0 H-1 C"Board"                                  ; set fan 2 value. Thermostatic control is turned off

; Tools
M563 P0 D0 H1 F0                                           ; define tool 0
G10 P0 X0 Y0 Z0                                            ; set tool 0 axis offsets
G10 P0 R0 S0                                               ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined

; Miscellaneous
M575 P1 S0 B57600                                  ; enable support for Flymaker 4.3/7" screen
M501                                               ; load saved parameters from non-volatile memory
;M911 S10 R11 P"M913 X0 Y0 G91 M83 G1 Z3 E-5 F1000" ; set voltage thresholds and actions to run on power loss
T0                                                 ; select first tool

