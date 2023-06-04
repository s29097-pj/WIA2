ORG 100h

MOV AX, [b]
MOV BL, [c]     
ADD BL, BL		; 2c
DIV BL			; b / 2c

MOV BL, [a]
ADD BL, BL		; 2a
MUL BL     		; *2a

MOV [y], AX    ; zapisanie wyniku do zmiennej y

MOV AH, 00h
INT 21h

a dw 04h
b dw 08h
c dw 01h
y dw 00h         