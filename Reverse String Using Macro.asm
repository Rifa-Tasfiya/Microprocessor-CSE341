;a macro to reverse a string.
.MODEL SMALL

macro reverse str
    LEA DX, str
    MOV CX, 4 
    MOV SI, offset str
    start:
    MOV AX, 0000H
    MOV AL, [SI]
    PUSH AX
    INC SI
    loop start
    
    MOV CX, 4
    Do_pop:
    POP BX
    MOV DX, BX
    MOV AH, 02
    INT 21h 
    loop DO_pop
    
    
endm

 
.STACK 100H

.DATA
str1 db "Rifa&"

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here


reverse str1
 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN