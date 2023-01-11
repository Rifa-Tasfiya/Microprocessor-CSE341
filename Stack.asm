;Using Stack
.MODEL small
.STACK 100h
.DATA

.CODE
MAIN PROC
    
    MOV AX, 122d
    
    PUSH AX ; push z to stack
    MOV AX, 49d ; move 1 to AX
    PUSH AX ; push 1 to stack
    
    POP BX
    MOV DX, BX
    MOV AH, 02
    INT 21H
    POP BX
    MOV DX, BX
    INT 21H
    
    
END
END MAIN