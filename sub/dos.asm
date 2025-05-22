ORG 100h        

MOV CX, 9       
MOV DI, 0200h   
MOV AL, '9'     

bucle:
MOV [DI], AL    
INC DI          
DEC AL          
LOOP bucle      

INT 20h         