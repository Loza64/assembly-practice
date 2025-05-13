section .data
    num1 dd 5 
    num2 dd 3  
    msg db "El resultado es: ", 0xA 
    len equ $ - msg  

section .bss
    resultado resb 2

section .text
    global _start

_start:

    mov eax, [num1] 
    sub eax, [num2]  
    
 
    add eax, '0'   
    mov [resultado], eax 
    mov byte [resultado+1], 0xA
    ; Mostrar mensaje
    mov eax, 4      
    mov ebx, 1   
    mov ecx, msg   
    mov edx, len    
    int 0x80

    ; Mostrar resultado
    mov eax, 4
    mov ecx, resultado 
    mov edx, 2     
    int 0x80

    ; Salir
    mov eax, 1  
    mov ebx, 0      
    int 0x80


;nasm -f elf32 -g sum.asm -o build/result.o
;ld -m elf_i386 -g build/result.o -o build/result
;build/result