;Push and pop all the elements of the stack 
.MODEL small
.STACK 100h
.DATA

    array db 1, 2, 3, 4, 5, 6, 7, 8, 9, 5 
.CODE


MAIN PROC
    
    MOV AX, @data
    MOV DS, AX
    
    LEA SI, array
    MOV CX, 10
    
    START:
        MOV AX, 0000H
        MOV AL, [SI]
        PUSH AX
        INC SI
        
    LOOP START
    
    MOV CX, 10
    DO_POP:
        POP BX
        ADD BX, 30H
        MOV DX, BX
        MOV AH, 02
        INT 21H
    LOOP DO_POP    
    
END
END MAINMAIN