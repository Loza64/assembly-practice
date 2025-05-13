section .data
    num1 db 5      
    num2 db 4   
    msg db "resultado = "
    len_msg equ $ - msg
    newline db 0xA 

section .bss
    resultado resb 3 ;

section .text
    global _start

_start:
   
    mov al, [num1]  
    mov bl, [num2]  
    mul bl      


    mov bl, 10     
    div bl  

    add al, '0'   
    add ah, '0'    

    mov [resultado], al    
    mov [resultado+1], ah  
    mov byte [resultado+2], 0xA 


    mov eax, 4      
    mov ebx, 1     
    mov ecx, msg
    mov edx, len_msg
    int 0x80


    mov eax, 4
    mov ecx, resultado
    mov edx, 3     
    int 0x80


    mov eax, 1   
    mov ebx, 0
    int 0x80