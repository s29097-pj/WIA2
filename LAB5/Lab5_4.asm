org 100h

MOV AX, [a]
MOV BL, [b]
DIV BL

ADD AL, [c]
MOV [y], AL

mov AH, 00h
int 21h

a dw 0Ah
b dw 02h
c dw 02h
y dw 00h