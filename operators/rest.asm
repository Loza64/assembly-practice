section .data
    num1 dd 30    
    num2 dd 15  
    resultado dd 0  

section .text
    global _start

_start:
    mov eax, [num1]
    sub eax, [num2]   ;resta
    mov [resultado], eax 

    mov eax, 1
    int 0x80