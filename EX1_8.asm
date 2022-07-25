DATA SEGMENT
    NUM2 DW 0788H
    NUM1 DW 2001H
    RES1 DW ?   
    RES2 DW ?
    DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE DS:DATA
    START:
    MOV AX, DATA
    MOV DS, AX
    XOR AX, AX
    MOV AX, NUM1
    MOV BX, NUM2
    DIV BX
    MOV RES1, AX
    MOV RES2, DX
    MOV AH, 4CH                           
    INT 21H
    CODE ENDS
END START