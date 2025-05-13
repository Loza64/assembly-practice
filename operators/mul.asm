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
    ; Multiplicación (eax = num1 * num2)
    mov eax, [num1] 
    mov ebx, [num2]
    mul ebx          ; Multiplica eax por ebx, resultado en eax
    
    ; Convertir resultado a ASCII
    add eax, '0'   
    mov [resultado], eax 
    mov byte [resultado+1], 0xA  ; Salto de línea
    
    ; Mostrar mensaje
    mov eax, 4      ; sys_write
    mov ebx, 1      ; stdout
    mov ecx, msg    ; mensaje
    mov edx, len    ; longitud
    int 0x80

    ; Mostrar resultado
    mov eax, 4
    mov ecx, resultado 
    mov edx, 2      ; 1 byte para el dígito + 1 para el salto de línea
    int 0x80

    ; Salir
    mov eax, 1      ; sys_exit
    mov ebx, 0      ; código de salida
    int 0x80