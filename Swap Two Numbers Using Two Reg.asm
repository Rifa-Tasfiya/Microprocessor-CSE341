; Swap two numbers, using a maximum of 3 registers.

.MODEL SMALL
 
.STACK 100H

.DATA
a db 'Enter the fisrt number:$ '
b db 0dh, 0ah, 'Enter the second number:$ '
.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

LEA DX, a
MOV AH, 09
INT 21h

MOV AH, 01
INT 21h

MOV BX, AX   

LEA DX, b
MOV AH, 09
INT 21h

MOV AH, 01
INT 21h

MOV DX, AX
MOV AX, BX
MOV BX, DX  

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
