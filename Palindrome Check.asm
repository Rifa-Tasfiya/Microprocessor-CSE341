;Check Palindrome
.MODEL SMALL
 
.STACK 100H

.DATA
a db "ABBB$"
b db "Palindrome$"
c db "Not Palindrome$"
.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX

LEA SI, a
MOV CX, 4
 
; enter your code here
    INPUT:
    MOV AX, 0000H
    MOV AL,  [SI]
    PUSH AX
    INC SI
    LOOP INPUT
    
    SUB SI, 5
    MOV CX, 4
    CHECK:
        POP BX
        INC SI
        CMP BL, [SI]
        
        
        JE RETURN
        
        LEA DX, c
        MOV AH, 09H
        INT 21H
        JMP EXIT_CODE
        
        
        RETURN:
        LOOP CHECK
        
    LEA DX, b
    MOV AH, 09H
    INT 21H
    
    
    
  
EXIT_CODE:
;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN