org 100h

; 2a + 2b - 2c
; 2 a * 2 b * + 2 c * -

push 2
push word [c]
pop AX
pop BX
mul BX			; 2c
push AX

push 2
push word [a]
pop AX
pop BX
mul BX			; 2a
push AX

push 2
push word [b]
pop AX
pop BX
mul BX			; 2b
push AX

pop AX
pop BX
ADD AX, BX 		; 2a + 2b

pop BX
SUB AX, BX

mov AH, 00h
int 21h

a dw 01h
b dw 03h
c dw 05h