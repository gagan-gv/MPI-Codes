; GAGAN CHORDIA - 19BCE0788
; SQ(5H) = 19H
; CU(5H) = 7DH
DATA SEGMENT
    NUM DW 05H
    SQ DW ?
    CU DW ?
    DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE DS:DATA
    START:
    MOV AX, DATA
    MOV DS, AX
    MOV AX, NUM  ; LOAD THE NUMBER
    MUL AX       ; SQUARE THE NUMBER
    MOV SQ, AX   ; STORE THE SQUARE
    MUL NUM      ; CUBE THE NUMBER
    MOV CU, AX   ; STORE THE CUBE
    MOV AH, 4CH
    INT 21H
    CODE ENDS
END START