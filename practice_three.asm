;nasm -f bin practice_three.asm -o result.com

section .data
  variable dw 10
  variable2 dw 10
  result dw 0

section .text
  mov bx , variable;
  mov ax, [bx];
  add ax, [variable2];
  mov [result], ax;