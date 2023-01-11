; Print string through macro


.MODEL SMALL
 
.STACK 100H

.DATA
str1 db "Hello$"
str2 db "it is test program$"

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
print macro p1
    MOV dx, offset p1
    MOV AH, 9
    INT 21h
endm

print str1

MOV AH, 02
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21h
print str2


 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN