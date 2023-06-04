org 100h

; a * b + c
; a b * c +

push word [a]
push word [b]
pop AX
pop BX
mul BX
push AX			; a * b

push word [c]
pop AX
pop BX
add AX, BX		; a * b + c

mov AH, 00h
int 21h

a dw 01h
b dw 03h
c dw 05h