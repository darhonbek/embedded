; Part 1 - Bonus 1
LDI R16, HIGH(RAMEND)
OUT SPH, R16
LDI R16, LOW(RAMEND)
OUT SPL, R16

LDI R17, 0xFF
OUT DDRB, R17

NEXT:
LDI R16, 255
OUT PORTB, R16
RCALL DELAY

LDI R16, 219
OUT PORTB, R16
RCALL DELAY
RCALL DELAY
RCALL DELAY

LDI R16, 255
OUT PORTB, R16
RCALL DELAY

LDI R16, 126
OUT PORTB, R16
RCALL DELAY

LDI R16, 189
OUT PORTB, R16
RCALL DELAY

LDI R16, 195
OUT PORTB, R16
RCALL DELAY

RJMP NEXT

END: 
RJMP END

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

