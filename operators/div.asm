section .data
    num1 dd 50   
    num2 dd 10      
    cociente dd 0   
    residuo dd 0  

section .text
    global _start

_start:
    mov eax, [num1]  
    mov edx, 0   
    mov ebx, [num2]   
    div ebx  ; Divide edx:eax / ebx
    
    mov [cociente], eax ; Guarda el cociente
    mov [residuo], edx  ; Guarda el residuo

    ; Terminar el programa
    mov eax, 1
    int 0x80