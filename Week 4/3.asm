.MACRO LOADIO
IN R20, @1
OUT @0, R20
.ENDMACRO

;Part A
LDI R16, 0XFF
OUT PORTC, R16
LOADIO PORTD, PORTC

;Part B
LDI R16, 0XFF
OUT PORTB, R16
LOADIO PORTE, PORTB

;Part C
LOADIO PORTD, SREG

;Part D

;Macro size = 4 bytes
;Macro called 3 times => total_macro_size = 3*4 = 12 bytes
;Additional opetations = 8 bytes
;Total program size = 8 + 12 = 20 bytes
;Answer: 20 bytes