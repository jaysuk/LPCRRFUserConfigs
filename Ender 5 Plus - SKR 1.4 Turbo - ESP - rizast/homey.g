; homey.g
; called to home the Y axis
;
; generated by RepRapFirmware Configuration Tool v3.2.1-LPC on Mon Mar 01 2021 13:22:52 GMT-0500 (Eastern Standard Time)
G91               ; relative positioning
G1 H2 Z-5 F6000   ; lift Z relative to current position
G1 H1 Y350 F1800  ; move quickly to Y axis endstop and stop there (first pass)
G1 H2 Y-5 F6000    ; go back a few mm
G1 H1 Y350 F360   ; move slowly to Y axis endstop once more (second pass)
G1 H2 Z5 F6000    ; lower Z again
G90               ; absolute positioning

