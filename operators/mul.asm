section .data
    num1 dd 5  
    num2 dd 6 
    resultado dd 0 
section .text
    global _start

_start:
    mov eax, [num1]
    mov ebx, [num2] 
    mul ebx           ; Multiplica eax * ebx (resultado en eax)
    mov [resultado], eax 

    mov eax, 1
    int 0x80