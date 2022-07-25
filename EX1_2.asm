DATA SEGMENT
    NUM1 DW 0019H, 0788H
    NUM2 DW 2106H, 2001H
    SUM DW 3 DUP(0)
DATA ENDS
CODE SEGMENT
    ASSUME CS: CODE, DS: DATA
START: MOV AX, DATA    
    MOV DS, AX
    MOV AX, NUM1
    ADD AX, NUM2
    MOV SUM, AX
    MOV AX, NUM1 + 2
    ADC AX, NUM2 + 2
    MOV SUM+2, AX
    JNC DOWN    
    MOV SUM + 4, 01H
DOWN: MOV SUM + 2, AX
    MOV AX, 4CH
    INT 21H                                                                                              
CODE ENDS
END START