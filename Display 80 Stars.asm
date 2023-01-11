;a count-controlled loop to display a row of 80 stars.

.MODEL SMALL
 
.STACK 100H

.DATA

star db '*$'

.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here 

MOV CX, 80

start:
 
 LEA DX, star
 MOV AH, 09
 INT 21h
 
 Loop start
 
 
;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN