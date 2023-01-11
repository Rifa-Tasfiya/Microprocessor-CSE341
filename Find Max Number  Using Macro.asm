;to identify the maximum number between 3 numbers.
.MODEL SMALL

macro find_max num1, num2, num3

    MOV BL, num1
    CMP BL, num2
    JL label1
    CMP BL, num3
    JL label2
    JMP return
    
    label2:
    MOV BL, num3
    JMP return
    
    label1:
    MOV BL, num2
    CMP BL, num3
    JL label2
    JMP return
    
    
    return:
    MOV AH, 02
    MOV DL, BL
    ADD DL, 30h
    INT 21h    

    
    
endm

 
.STACK 100H

.DATA
num1 db 4
num2 db 8
num3 db 7

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here



find_max num1, num2, num3
 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN