; Originate from specified address as the BIOS will load the bootloader into that address
ORG 0x7c00
; As we are starting with "real-mode", we are using 16 bits only and hence want the compiler to convert correcctly
BITS 16

start:
    ; Move 0eh to the ah register which tells the machine to output the register al to the terminal
    ; For more interrupts, see https://www.ctyme.com/intr/int-10.htm
    mov ah, 0eh
    ; Move the capital A letter to the al register to output the letter to the terminal
    mov al, 'A'
    ; Set the page number and background as per docs on ctyme
    mov bx, 0
    ; Calling the BIOS routine interrupt
    int 0x10

    ; Jump to itself in order to not execute the next filler bytes and boot signature
    jmp $

; The Boot signature 0x55AA needs to be on the last bytes, hence
; times 510 fills the file with at least 510 bytes of data
times 510-($ - $$) db 0

; Intel machine flips the bytes when working with words
; dw assembles the words after itself and put 0xAA55 in binary straight into the file
; dw is for two bytes
dw 0xAA55
