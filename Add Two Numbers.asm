;Add Two Numbers

.MODEL SMALL
 
.STACK 100H

.DATA
a db 0ah,0dh,"Enter 1st no:$"
b db 0ah, 0dh,"Enter 2nd no:$"
c db 0ah, 0dh,"Your result is: $"

.CODE
MAIN PROC

;iniitialize DS
MOV AX,@DATA
MOV DS,AX

; enter your code here

    LEA DX, a
    MOV AH, 09h
    INT 21h
    MOV AH, 01
    INT 21h
    
    MOV BL, AL
    SUB BL, 30h
    
    LEA DX, b
    MOV AH, 09h
    INT 21h
    MOV AH, 01
    INT 21h
    
    MOV BH, AL
    SUB BH, 30h
    
    LEA DX, c
    MOV AH, 09h
    INT 21h

    ADD BH, BL
    ADD BH, 30h
    
    MOV DL, BH
    MOV AH, 02
    INT 21h
    
;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
