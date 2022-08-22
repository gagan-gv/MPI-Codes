; GAGAN CHORDIA - 19BCE0788
DATA SEGMENT
    STR DB 'GAGAN'
    REV DB 0FH DUP(?)
    DATA ENDS
CODE SEGMENT
    ASSUME CS: CODE, DS: DATA
    START:
    MOV AX, DATA
    MOV DS, AX
    
    LEA SI, STR
    MOV CX, 5
    L1: MOV BX, [SI]
    PUSH BX
    INC SI
    LOOP L1
    
    MOV CX, 5
    
    L2: POP DX 
    MOV AH, 02H
    INT 21H
    LOOP L2
    
    CODE ENDS
END START