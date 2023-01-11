; Find the average of three numbers
.MODEL SMALL
 
.STACK 100H

.DATA
a db 'Enter the first number:$'
b db 0dh, 0ah, 'Enter the second number:$'
c db 0dh, 0ah, 'Enter the third number:$'
d db 0dh, 0ah, 'The average is $'


.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
LEA DX,a
MOV AH, 09
INT 21h

MOV AH, 01
INT 21h

MOV BL, AL
SUB BL, 30h

LEA DX,b
MOV AH, 09
INT 21h

MOV AH, 01
INT 21h

SUB AL, 30h
ADD BL, AL 

LEA DX,c
MOV AH, 09
INT 21h

MOV AH, 01
INT 21h

SUB AL, 30h
ADD BL, AL

MOV AL, BL
MOV AH, 00h
MOV BL, 3
DIV BL
MOV BL, AL

MOV AH, 02
MOV DL, 0DH
INT 21h
MOV DL, 0AH
INT 21h

MOV DL, BL
ADD DL, 30h
MOV AH, 02
INT 21h 
       
       
;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAINMAIN