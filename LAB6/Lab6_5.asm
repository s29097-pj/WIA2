org 100h

; 2a * b + 2c
; 2a b * 2c+

push 2
push word [a]
pop AX
pop BX
mul BX

mov BX, [b]
mul BX
push AX

push 2
push word [c]
pop AX
pop BX
mul BX

pop BX

add AX, BX 

mov AX, 00h
int 21h

a dw 01h
b dw 03h
c dw 05h