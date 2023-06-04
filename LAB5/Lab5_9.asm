ORG 100h

MOV AX, [a]
MOV BL, [c]     ; a / c
DIV BL			; b / 2c

ADD AX, [b]		; b + a / c
MOV BL, [a]
MUL BL		

MOV [y], AX    ; zapisanie wyniku do zmiennej y

MOV AH, 00h
INT 21h

a dw 04h
b dw 08h
c dw 01h
y dw 00h         