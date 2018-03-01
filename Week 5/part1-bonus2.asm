; Part 1 - BONUS 2
LDI R16, HIGH(RAMEND)
OUT SPH, R16
LDI R16, LOW(RAMEND)
OUT SPL, R16

LDI R17, 0xFF
OUT DDRB, R17

NEXT:
RCALL DOUBLE_FULL_LINE
RCALL HALF_FULL_LINE
RCALL DOUBLE_FULL_LINE
RCALL HALF_FULL_LINE
RCALL DOUBLE_FULL_LINE
RJMP NEXT

DOUBLE_FULL_LINE:
LDI R16, 0
OUT PORTB, R16
RCALL DELAY
RCALL DELAY
RET

HALF_FULL_LINE:
LDI R16, 63
OUT PORTB, R16
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

