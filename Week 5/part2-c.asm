; Part 2 - C
LDI R16, HIGH(RAMEND)
OUT SPH, R16
LDI R16, LOW(RAMEND)
OUT SPL, R16

LDI R17, 0xFF
OUT DDRB, R17

; RESET COUNTER
LDI R16, 0XFF

WAIT:
; WAIT UNTIL PD7 IS PRESSED
SBIS PORTD, 7
RJMP WAIT

CONTINUE:
; PD7 PRESSED - START COUNTING
RCALL COUNT
; REACHED 0XFF, FINISH COUNTING 
BREQ END

; CHECK IF PD7 IS STILL PRESSED
; YES - CONTINNUE COUNTING
; NO - WAIT UNTIL IS IT PRESSED AGAIN
WAIT2:
SBIC PORTD, 7
RJMP CONTINUE
RJMP WAIT2

END:
RJMP END

COUNT:
OUT PORTB, R16
DEC R16
RCALL DELAY
RET

DELAY:
LDI R20, 76       
D1:
LDI R21, 101     
D2:
LDI R22, 113     
D3:
DEC R22            
NOP            
NOP            
NOP            
NOP            
NOP            
NOP            
NOP            
NOP            
NOP            
NOP            
NOP            
NOP            
NOP                     
BRNE D3          
DEC R21            
BRNE D2          
DEC R20            
BRNE D1

RET
