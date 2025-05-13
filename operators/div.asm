section .data
    num1 dd 60
    num2 dd 10
    cociente dd 0
    residuo dd 0
    msg db 'Cociente: ', 0
    len equ $ - msg

section .text
    global _start

_start:
    mov eax, [num1]
    mov edx, 0
    mov ebx, [num2]
    div ebx          
    mov [cociente], eax    
    add byte [cociente], '0'


; nasm -f elf32 -g div.asm -o build/division.o
; ld -m elf_i386 -g build/division.o -o build/division
; gdb ./build/division

;------------------en gbd---------------

;(gdb) break _start

;(gdb) run 
;(gdb) nexti (ni)        # Avanzar 1 instrucción (sin entrar en llamadas)

;(gdb) info registers
;(gdb) print/d $eax
;(gdb) print/x $edx