ORG 100h

MOV AX, [a]
MOV BL, 02h     
DIV BL			; a / 2

MOV [y], AX

MOV AX, [b]
MOV BL, 03h		
DIV BL     		; b / 3

ADD [y], AX		

MOV AX, [c]
MOV BL, 04h
DIV BL			; c / 4

ADD [y], AX

MOV AX, [y]    ; zapisanie sumy wyników dzielenia ze zmiennej y do rejestru AX

MOV AH, 00h
INT 21h

a dw 0Ah
b dw 09h
c dw 0Ch
y dw 00h         