LDI R16, 12
LDI R17, 3
L1:
SUB R16, R17
BRLT END
INC R18
JMP L1
END:
STS 0X0200, R18