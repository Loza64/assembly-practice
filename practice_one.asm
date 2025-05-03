ORG 100h

SECTION .text
    XOR AX, AX
    XOR BX, BX

    ; 1. Primeros 4 bytes: 00 00 00 00
    MOV [0200h], AX       ; Escribe 0000h en 0200h-0201h (AX = 0000h)
    MOV [0202h], AX       ; Escribe 0000h en 0202h-0203h

    MOV BYTE [0204h], 02h ; Escribe 02h en 0204h
    MOV BYTE [0205h], 05h ; Escribe 05h en 0205h
    MOV BYTE [0206h], 02h ; Escribe 02h en 0206h
    MOV BYTE [0207h], 02h ; Escribe 02h en 0207h

    ;finish program
    MOV AX, 4C00h
    INT 21h