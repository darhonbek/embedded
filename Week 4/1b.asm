LDI R16, 1
LDI R18, 2
LDI R17, 30
L2:
OUT PORTC, R16
CALL DELAY
ADD R16, R18
DEC R17
BRNE L2
CALL DELAY
OUT PORTC, R16
END:
RJMP END

DELAY:
LDI R18, 6
LDI R19, 19
LDI R20, 173
L1:
DEC R20
BRNE L1
DEC R19
BRNE L1
DEC R18
BRNE L1
NOP
RET