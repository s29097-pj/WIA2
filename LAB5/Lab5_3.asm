org 100h

MOV AX, [a]
ADD AX, [b]
ADD AX, [c]
MOV BX, [dwa]
MUL BX

MOV [y], AX

mov AH, 00h
int 21h

a dw 05h
b dw 03h
c dw 02h
y dw 00h
dwa dw 02h