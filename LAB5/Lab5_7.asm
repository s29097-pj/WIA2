org 100h

mov AX, [a]
mul AX

mov BX, [b]
add BX, BX

mov CX, [c]

add AX, BX
add AX, CX

mov [y], AX

mov AH, 00h
int 21h

a dw 04h
b dw 0Ah
c dw 02h
y dw 00h