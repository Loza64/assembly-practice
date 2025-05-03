org 100h

SECTION .text

 xor ax, ax
 xor bx, bx

 mov si , 0200h ;registro inmediato
 
 ; 1. Primeros 4 bytes: 00 00 00 00 (registro absoluto)
 mov [0200h], ax
 mov [0202h], ax   

    ; 2. Primer bloque: 02 05 02 02 (registro indirecto)
 mov byte [si+4], 02h
 mov byte [si+5], 05h
 mov byte [si+6], 02h
 mov byte [si+7], 02h

 ; 2. Segundo bloque: 00
 mov [si+8], ax

;nasm -f bin practice_two.asm -o result.com
;dosbox result.com