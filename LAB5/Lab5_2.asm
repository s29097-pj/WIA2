org 100h

MOV AX, [a]
MOV BX, [b]
MUL BX
ADD AX, [c]

MOV [y], AX

mov AH, 00h
int 21h

a dw 05h
b dw 03h
c dw 02h
y dw 00h