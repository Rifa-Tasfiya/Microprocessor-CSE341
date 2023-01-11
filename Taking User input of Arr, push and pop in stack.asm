;Push and pop all the elements of the stack and take input from user
.MODEL small
.STACK 100h
.DATA

    array db 5 dup(?)
    a db "Enter the array: $" 
.CODE


MAIN PROC
    
    MOV AX, @data
    MOV DS, AX
    MOV CX, 5
    
    LEA DX, a
    MOV AH, 09H
    INT 21H
    
    INPUT:
        MOV AH, 01H
        INT 21H
        MOV [SI], AL
        INC SI
    LOOP INPUT
        
    
    
    
    
    SUB SI, 6
    ;LEA SI, array
    MOV CX, 6
    
    START:
        MOV AX, 0000H
        MOV AL, [SI]
        PUSH AX
        INC SI
        
    LOOP START
    
    MOV AH, 02H
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    MOV CX, 5
    DO_POP:
        POP BX
        ;ADD BX, 30H
        MOV DX, BX
        MOV AH, 02H
        INT 21H
    LOOP DO_POP
         
    
    
    
    
    
END
END MAIN