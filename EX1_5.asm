DATA SEGMENT
    NUM1 DB 19H
    NUM2 DB 02H
    RES DW ?
    DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE DS:DATA
    START:
    MOV AX, DATA
    MOV DS, AX
    MOV AX, 00H
    MOV BX, 00H
    MOV AL, NUM1
    MOV BL, NUM2
    MUL NUM2
    MOV RES, AX
    MOV AH, 4CH                           
    INT 21H
    CODE ENDS
END START