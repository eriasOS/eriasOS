; Originate from specified address as the BIOS will load the bootloader into that address
ORG 0x7c00
; As we are starting with "real-mode", we are using 16 bits only and hence want the compiler to convert correcctly
BITS 16

start:
    mov ah, 0eh
    ; Move the capital A letter to the al register
    mov al, 'A'
    ; Calling the BIOS routine interrupt
    int 0x10
