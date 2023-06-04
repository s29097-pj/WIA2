org 100h

; a / b + c
; a b / c +

push word [a]
push word [b]
mov DX, 0000
pop BX
pop AX
div BX		; a / b

mov BX, [c]
add AX, BX

mov AX, 00h
int 21h

a dw 03h
b dw 01h
c dw 05h