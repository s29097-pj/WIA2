org 100h

mov AX, [b]
mov BL, [c]
div BL

mov BL, [a]
mul BL

mov AH, 00h
int 21h

a dw 04h
b dw 0Ah
c dw 02h
y dw 00h