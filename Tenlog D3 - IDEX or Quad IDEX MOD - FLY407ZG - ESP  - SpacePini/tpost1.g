; tpost1.g
; called after tool 1 has been selected
;
; scripted by Marac

M106 R2         	; restore print cooling fan speed
M116 P1 		; wait for tool 1 heaters to reach operating temperature
;M83 			; relative extruder movement
;G1 E3 F3600 		; extrude 3mm

