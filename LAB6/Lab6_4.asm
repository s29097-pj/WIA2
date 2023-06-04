org 100h

; a / (b + c)
; a b c + /

push word [b]
push word [c]
pop BX
pop AX
ADD AX, BX
push AX

mov AX, [a]
mov DX, 0000
pop BX
DIV BX

mov AX, 00h
int 21h

a dw 0Ch
b dw 03h
c dw 01h