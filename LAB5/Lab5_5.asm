org 100h

mov DX, [b]
add DX, [c]
mov [y], DX

mov AX, [a]
mov BL, [y]
div BL

mov AH, 00h
int 21h

a dw 20h
b dw 02h
c dw 03h
y dw 00h