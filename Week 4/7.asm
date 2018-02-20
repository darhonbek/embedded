LDI R16, HIGH(RAMEND)
LDI R17, LOW(RAMEND)
; Highest accessible memory location will be stored in R16, R17 which is 0x10FF
; Total size of data memory space:
; (0x10FF - 0x0000) + 1byte = 4352 bytes

; Size of SRAM
; SRAM = Data Memory - 32 GPRegs + 64 I/O Regs + 160 Extended I/O Regs
; SRAM = (4352 - 32 - 64 - 160) bytes
; Ans: SRAM = 4096 bytes