ORG 100h        ; Entorno .COM

; Almacenar "FIN" en 0300h
MOV SI, 0300h
MOV BYTE [SI], 'F'    ; 'F' = 46h
MOV BYTE [SI+1], 'I'  ; 'I' = 49h
MOV BYTE [SI+2], 'N'  ; 'N' = 4Eh

; Leer valor de 0200h
MOV AL, [0200h]

; Comparar y ejecutar operación
CMP AL, 1
JE suma
CMP AL, 2
JE multiplicacion
JMP fin

suma:
MOV AX, 10
ADD AX, 5
JMP fin

multiplicacion:
MOV BL, 5  

bucle_multi:
MOV AL, 8      
MUL BL          ; AX = 8 * BL
CMP AX, 60      ; Comparar resultado con 60
JG copiar_fin   ; Si > 60, copiar "FIN"
INC BL          ; Incrementar BL
JMP bucle_multi ;

copiar_fin:

MOV SI, 0300h   ; Fuente
MOV DI, 0220h   ; Destino
MOV CX, 3       ; 3 bytes
rep MOVSB       ; Copiar

fin:
INT 20h     